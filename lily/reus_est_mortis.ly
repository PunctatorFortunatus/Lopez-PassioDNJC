\include "base/inicio.ly"

global = {
  \key f \major
  \time 4/4
  \mark #7
}

tiefix = { \shape #'((0 . 0) (0 . 0) (1 . 0) (1 . 0)) Tie }

voz_i = \relative c'' {
  \global
  d2 d4 d |
  \mFicta es d d2 |
  r4 d g g |
  f1 |
  f2 r4 d~ |
  d8[ c] bes4 \[a2 |
  bes\] \tiefix a~ |
  a1\fermata |
  \bar "||"
}

voz_i_texto = \lyricmode {
  Re -- us est mor -- _ tis! Re -- us est mor -- tis! Re -- us est mor -- tis! __
}

voz_ii = \relative c'' {
  \global
  a2 a4 bes~ |
  bes a bes2 |
  r4 bes g g |
  a bes2 a4 |
  bes2 r4 bes |
  a g f8[ g a f] |
  g2. \mFicta fis8[ e] |
  fis1\fermata |
}

voz_ii_texto = \lyricmode {
  Re -- us est __ mor -- tis! Re -- us est mor -- _ _ tis! Re -- us est mor -- _ _ tis!
}

voz_iii = \relative c' {
  \clef "treble_8"
  \global
  f2 f4 g~ |
  g fis g2 |
  r4 d ees ees~ |
  ees d c2 |
  d1~ |
  d~ |
  d~ |
  d\fermata |
}

voz_iii_texto = \lyricmode {
  Re -- us est __ mor -- tis! Re -- us est __ _ mor -- tis! __
}

voz_iv = \relative c' {
  \clef bass
  \global
  d2 d4 bes|
  c d g,2 |
  r4 g ees ees |
  f1 |
  bes2 g |
  f4 g d8[ e f d] |
  g2 d~ |
  d1\fermata |
}

voz_iv_texto = \lyricmode {
 Re -- us est mor -- _ tis! Re -- us est mor -- tis! Re -- us est mor -- _ tis! __
}

\include "base/instrumentos.ly"
\SATB