\include "base/inicio.ly"

global = {
  \key f \major
  \time 4/4
  \mark #14
}

voz_i = \relative c'' {
  \global
  r8 d d d cis4 d8 f |
  f f e4 \mFicta fis2\fermata |
  \bar "||"
}

voz_i_texto = \lyricmode {
  Cru -- ci -- fi -- gá -- tur! Cru -- ci -- fi -- gá -- tur!
}

voz_ii = \relative c'' {
  \global
  r8 a a a a4 a8 a |
  a a a4 a2\fermata |
}

voz_ii_texto = \voz_i_texto

voz_iii = \relative c' {
  \clef "treble_8"
  \global
  r8 f f f e4 f8 d |
  d d \mFicta cis4 d2\fermata |
}

voz_iii_texto = \voz_i_texto

voz_iv = \relative c' {
  \clef bass
  \global
  r8 d d d a4 d,8 d |
  d d a'4 d,2\fermata |
}

voz_iv_texto = \voz_i_texto

\include "base/instrumentos.ly"
\SATB