incipit = #(define-music-function (parser location incipit-musica incipit-texto) (ly:music? ly:music?) #{
  \once \override Staff.InstrumentName.self-alignment-X = #RIGHT
  \once \override Staff.InstrumentName.self-alignment-Y = ##f
  \once \override Staff.InstrumentName.padding = #1
  \once \override Staff.InstrumentName.stencil =
    #(lambda (grob)
       (let* ((instrument-name (ly:grob-property grob 'long-text)))
        (set! (ly:grob-property grob 'long-text)
         #{ \markup
            \score
            {
              { 
                \context MensuralStaff  \with {
                  \override InstrumentName.Y-offset = 0.5
                  \override InstrumentName.direction = 1
                  instrumentName = \markup\italic\teeny #instrument-name
                } <<
                \new MensuralVoice {
                  \override Voice.NoteHead.style = #'petrucci
                  \set Score.timing = ##f
                  \relative c' $incipit-musica
                }
                \addlyrics {
                  \override Lyrics.LyricText #'font-family = #'sans
                  \override Lyrics.LyricText #'font-shape = #'italic
                  $incipit-texto
                }
                >>
              }
              \layout { 
                $(ly:grob-layout grob)
                line-width = \indent
                indent = 1
                ragged-right = ##f
                ragged-last = ##f
                system-count = #1 
                \override Score.SpacingSpanner.shortest-duration-space = #16
              }
            }
	#})
        (system-start-text::print grob)))
#})

mFicta = {
%  \once\override Staff.AccidentalSuggestion.stencil = #(lambda (grob) (bracketify-stencil (ly:accidental-interface::print grob) Y 0.1 0.2 0.1))
  \once\set suggestAccidentals = ##t
}
mFictaP = { 
  \once\override AccidentalSuggestion.parenthesized = ##t
  \once\set suggestAccidentals = ##t
}

mFictaOn = {
%  \override Staff.AccidentalSuggestion.stencil = #(lambda (grob) (bracketify-stencil (ly:accidental-interface::print grob) Y 0.1 0.2 0.1))
  \set suggestAccidentals = ##t
}
mFictaOff = {
  \revert Staff.AccidentalSuggestion.stencil
  \set suggestAccidentals = ##f
}

#(define center-column
   (lambda (col)
     (let* ((sys (ly:grob-system col))
            (all-cols
             (ly:grob-array->list
              (ly:grob-object sys 'columns)))
            (measure-no
             (car (ly:grob-property col 'rhythmic-location)))
            ; we need to find out if there is another
            ; PaperColumn in the measure.  If there is,
            ; we make no adjustments.
            (in-company?
             ; is there a column...
             (any
              (lambda (c)
                (and
                 ; which is NOT our column...
                 (not (eq? col c))
                 ; which is a PaperColumn...
                 (not (eq? #t (ly:grob-property c 'non-musical)))
                 ; which is in the same measure
                 (eq?
                  (car (ly:grob-property c 'rhythmic-location))
                  measure-no)))
              all-cols))
            (alone? (not in-company?))) ; 
       (if alone?
           (let* ((left-col (ly:grob-object col 'left-neighbor))
                  (right-col (ly:grob-object col 'right-neighbor))
                  (elts-list
                   (ly:grob-array->list (ly:grob-object col 'elements)))
                  (note-cols
                   (filter
                    (lambda (elt)
                      (grob::has-interface elt 'note-column-interface))
                    elts-list))
                  (all-rests
                   (map (lambda (c)
                          (ly:grob-object c 'rest))
                     note-cols))
                  (all-rests (filter ly:grob? all-rests))
                  (all-notes
                   (map
                    (lambda (c)
                      (ly:grob-object c 'note-heads))
                    note-cols))
                  (all 
                   (map (lambda (ga) 
                          (if (ly:grob-array? ga)
                              (ly:grob-array->list ga)
                              '()))
                     all-notes))
                  (all (flatten-list all))
                  (all (append all all-rests))
                  (same-dur?
                   (every (lambda (o) 
                            (equal?
                             (ly:grob-property o 'duration-log)
                             (ly:grob-property (car all)
                               'duration-log)))
                     all)))
             (if same-dur?
                 (let* ((col-center (interval-center
                                     (ly:grob-extent col sys X)))
                        (left-right-X
                         (cdr (ly:grob-extent left-col sys X)))
                        (right-left-X
                         (car (ly:grob-extent right-col sys X)))
                        (middle-X
                         (- (average left-right-X right-left-X)
                           col-center)))
                   (ly:grob-translate-axis! col middle-X X))))))))
