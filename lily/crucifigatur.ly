\include "base/inicio.ly"

global = {
  \key f \major
  \time 4/4
  \mark #13
}

voz_i = \relative c'' {
  \global
  d4 d8 d d4 cis |
  r8 a a a a4 a\fermata |
  \bar "||"
}

voz_i_texto = \lyricmode {
  Cru -- ci -- fi -- gá -- tur! Cru -- ci -- fi -- gá -- tur!
}

voz_ii = \relative c'' {
  \global
  a4 a8 a a4 a |
  r8 f f f e4 fis\fermata |
}

voz_ii_texto = \voz_i_texto

voz_iii = \relative c' {
  \clef "treble_8"
  \global
  f4 f8 f f4 e |
  r8 d d d cis4 d\fermata |
}

voz_iii_texto = \voz_i_texto

voz_iv = \relative c' {
  \clef bass
  \global
  d4 d8 d d4 a |
  r8 d, d d a'4 d,\fermata |
}

voz_iv_texto = \voz_i_texto

\include "base/instrumentos.ly"
\SATB