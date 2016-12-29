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
  \once\override Staff.AccidentalSuggestion.stencil = #(lambda (grob) (bracketify-stencil (ly:accidental-interface::print grob) Y 0.1 0.2 0.1))
  \once\set suggestAccidentals = ##t
}
mFictaP = { 
  \once\override AccidentalSuggestion.parenthesized = ##t
  \once\set suggestAccidentals = ##t
}

mFictaOn = {
  \override Staff.AccidentalSuggestion.stencil = #(lambda (grob) (bracketify-stencil (ly:accidental-interface::print grob) Y 0.1 0.2 0.1))
  \set suggestAccidentals = ##t
}
mFictaOff = {
  \revert Staff.AccidentalSuggestion.stencil
  \set suggestAccidentals = ##f
}