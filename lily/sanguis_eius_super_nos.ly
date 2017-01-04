\include "base/inicio.ly"

global = {
  \key f \major
  \time 4/4
  \mark #15
}

tiefix = { \shape #'((0 . 0) (0 . 0) (1.6 . 0) (1.6 . 0)) Tie }

voz_i = \relative c'' {
  \global
  d4. e8 f4 d |
  d f f2 |
  r4 f f f |
  d2 d4 d |
  d2 \tiefix d2~ |
  d1\fermata |
  \bar "||"
}

voz_i_texto = \lyricmode {
  San -- guis e -- ius su -- per nos et su -- per fí -- li -- os no -- stros. __
}

voz_ii = \relative c'' {
  \global
  a4. g8 f4 f |
  g a bes2 |
  r4 bes bes bes |
  bes f g a~ |
  a g2 \mFicta fis8[ e] |
  fis1\fermata |
}

voz_ii_texto = \lyricmode {
  San -- guis e -- ius su -- per nos et su -- per fí -- li -- os no -- _ _ stros.
}

voz_iii = \relative c' {
  \clef "treble_8"
  \global
  f4. e8 d4. c8 |
  bes4 c d2 |
  r4 d d d |
  d4. c8 bes4 c~ |
  c bes a2~ |
  a1\fermata
}

voz_iii_texto = \lyricmode {
  San -- guis e -- ius su -- per nos et su -- per fí -- li -- os no -- _ stros. __
}

voz_iv = \relative c {
  \clef bass
  \global
  d4 d d d |
  g f bes2 |
  r4 bes bes bes |
  bes2 g4 fis |
  g2 d~ |
  d1\fermata |
}

voz_iv_texto = \lyricmode {
 San -- guis e -- ius su -- per nos et su -- per fí -- li -- os no -- stros. __
}

\include "base/instrumentos.ly"
\SATB