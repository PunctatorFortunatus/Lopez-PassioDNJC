\include "base/inicio.ly"

global = {
  \key f \major
  \time 4/4
  \mark #10
}

voz_i = \relative c'' {
  \global
  d4 d cis2\fermata |
  bes4. bes8 a4 a\fermata |
  \bar "||"
}

voz_i_texto = \lyricmode {
  Quid ad nos? Tu vi -- dé -- ris!
}

voz_ii = \relative c'' {
  \global
  a4 a a2\fermata |
  f4. g8 e4 f\fermata |
}

voz_ii_texto = \voz_i_texto

voz_iii = \relative c' {
  \clef "treble_8"
  \global
  f4 f e2\fermata |
  d4. d8 \mFicta cis4 d\fermata |
}

voz_iii_texto = \voz_i_texto

voz_iv = \relative c' {
  \clef bass
  \global
  d4 d a2\fermata |
  bes4. g8 a4 d,\fermata |
}

voz_iv_texto = \voz_i_texto

\include "base/instrumentos.ly"
\SATB