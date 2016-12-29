\include "base/inicio.ly"

global = {
  \key f \major
  \time 4/4
  \mark #5
}

voz_i = \relative c'' {
  \global
  d2 c |
  c c4 bes |
  a4. a8 a2\fermata |
  \bar "||"
}

voz_i_texto = \lyricmode {
  Núm -- quid é -- go sum, Dó -- mi -- ne?
}

voz_ii = \relative c'' {
  \global
  a2 a |
  a4. a8 a4 g |
  e4. e8 \mFicta fis2\fermata |
}

voz_ii_texto = \lyricmode {
  Núm -- quid é -- go sum, __ _ Dó -- mi -- ne?
}

voz_iii = \relative c' {
  \clef "treble_8"
  \global
  f2 e |
  f4. f8 f4 d~ |
  d cis d2\fermata |
}

voz_iii_texto = \voz_i_texto

voz_iv = \relative c' {
  \clef bass
  \global
  d2 a |
  f4. f8 f4 g |
  a4. a8 d,2\fermata |
}

voz_iv_texto = \voz_ii_texto

\include "base/instrumentos.ly"
\SATB