\include "base/inicio.ly"

global = {
  \key f \major
  \time 4/4
  \mark #19
}

voz_i = \relative c'' {
  \global
  r4 f f f |
  g f e2 |
  d1\fermata |
  \bar "||"
}

voz_i_texto = \lyricmode {
  E -- lí -- am vó -- cat í -- ste.
}

voz_ii = \relative c'' {
  \global
  r4 a a a |
  bes a a2 |
  fis1\fermata |
}

voz_ii_texto = \voz_i_texto

voz_iii = \relative c' {
  \clef "treble_8"
  \global
  r4 d d d |
  d d2 \mFicta cis4 |
  d1\fermata |
}

voz_iii_texto = \voz_i_texto

voz_iv = \relative c {
  \clef bass
  \global
  r4 d d d |
  g d a'2 |
  d,1\fermata |
}

voz_iv_texto = \voz_i_texto

\include "base/instrumentos.ly"
\SATB