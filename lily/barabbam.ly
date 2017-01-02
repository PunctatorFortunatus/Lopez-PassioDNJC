\include "base/inicio.ly"

global = {
  \key f \major
  \time 4/4
  \mark #12
}

voz_i = \relative c'' {
  \global
  f4. f8 e2\fermata \bar "||" |
}

voz_i_texto = \lyricmode {
  Ba -- ráb -- bam!
}

voz_ii = \relative c'' {
  \global
  a4. a8 a2\fermata |
}

voz_ii_texto = \voz_i_texto

voz_iii = \relative c' {
  \clef "treble_8"
  \global
  d4. d8 \mFicta cis2\fermata |
}

voz_iii_texto = \voz_i_texto

voz_iv = \relative c {
  \clef bass
  \global
  d4. d8 a'2\fermata |
}

voz_iv_texto = \voz_i_texto

\include "base/instrumentos.ly"
\SATB