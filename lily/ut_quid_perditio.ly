\include "base/inicio.ly"

global = {
  \key f \major
  \time 4/4
  \mark #3
}

voz_i = \relative c'' {
  \global
  d2 d4 \mFicta cis |
  d \mFictaP c!8 c c2 |
  c4. d8 e4 f |
  e \mFicta cis d e |
  \mFictaP c!2 c4 c |
  c2 c4 c |
  d2 f |
  r4 f f2 |
  f4 e f2 |
  e d\fermata |
  \bar "||"
}

voz_i_texto = \lyricmode {
  Ut quid per -- dí -- ti -- o hæc? Pó -- tu -- it e -- nim un -- guén -- tum i -- stud ve --
  nun -- dá -- ri mul -- to et da -- ri pau -- pé -- ri -- bus.
}

voz_ii = \relative c'' {
  \global
  a2 a4 a |
  f a8 a g2 |
  a4. bes8 c4 a |
  a a f g |
  a2 g4 g |
  g2 a4 a |
  f g a2 |
  r4 a a2 |
  a4 a a2~ |
  a4 a fis2\fermata |
}

voz_ii_texto = \lyricmode {
  Ut quid per -- dí -- ti -- o hæc? Pó -- tu -- it e -- nim un -- guén -- tum i -- stud ve --
  nun -- dá -- ri mul -- _ to et da -- ri pau -- pé -- ri -- bus.
}

voz_iii = \relative c' {
  \clef "treble_8"
  \global
  f2 f4 e |
  d f8 f e2	 |
  f4. f8 e4 d |
  c e f e |
  f2 e4 e |
  e2 e4 e |
  d2 c |
  r4 c c2 |
  d4 e2 d4~ |
  d cis d2\fermata |
}

voz_iii_texto = \voz_i_texto

voz_iv = \relative c' {
  \clef bass
  \global
  d2 d4 a |
  bes f8 f c'2 |
  f,4. f8 c4 d |
  a' a d \mFictaP c! |
  f,2 c'4 c |
  c2 a4 a |
  bes2 f |
  r4 f f2 |
  d4 \mFicta cis d2 |
  a' d,\fermata |
}

voz_iv_texto = \voz_i_texto

\include "base/instrumentos.ly"
\SATB