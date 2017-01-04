\include "base/inicio.ly"

global = {
  \key f \major
  \time 4/4
  \mark #21
}

voz_i = \relative c'' {
  \global
  d2. d4 |
  d2 c4 c |
  c1 |
  c4 c2 c4 |
  a2 a4 a~ |
  a bes a2~ |
  a a\fermata |
  \bar "||"
}

voz_i_texto = \lyricmode {
  Ve -- re fí -- li -- us De -- i e -- rat i -- ste, e -- rat i -- ste!
}

voz_ii = \relative c'' {
  \global
  a2. a4 |
  bes2 a4 a |
  g a2 g4 |
  a a2 g4 |
  f2 e4 e~ |
  e e e2~ |
  e fis\fermata |
}

voz_ii_texto = \lyricmode {
  Ve -- re fí -- li -- us De -- _ _ i e -- rat i -- ste, e -- rat i -- ste!
}

voz_iii = \relative c' {
  \clef "treble_8"
  \global
  f2. f4 |
  g4. f8 e4 f |
  e f2 e4 |
  f4 f2 e4 |
  d2 c4 c~ |
  c d2 \mFicta cis8[ \mFicta b] |
  cis2 d\fermata |
}

voz_iii_texto = \lyricmode {
  Ve -- re fí -- _ li -- us De -- _ _ i e -- rat i -- ste, e -- _ rat __ is -- ste!
}

voz_iv = \relative c' {
  \clef bass
  \global
  d2. d4 |
  g,2 a4 f |
  c'1 |
  f,4 f2 c4 |
  d2 a'4 a~ |
  a g a2~ |
  a d,\fermata |
}

voz_iv_texto = \voz_i_texto

\include "base/instrumentos.ly"
\SATB