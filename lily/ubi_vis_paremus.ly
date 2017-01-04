\include "base/inicio.ly"

global = {
  \key f \major
  \time 4/4
  \mark #4
}

voz_i = \relative c'' {
  \global
  d4. d8 d d d d |
  c2 c |
  r4 d g g~ |
  g f e2 |
  d1\fermata |
  \bar "||"
}

voz_i_texto = \lyricmode {
  U -- bi vis pa -- ré -- mus ti -- bi co -- mé -- de -- re Pa -- scha?
}

voz_ii = \relative c'' {
  \global
  a4. a8 a a bes bes |
  g2 a4 a |
  f2 bes4 bes |
  a1 |
  fis\fermata |
}

voz_ii_texto = \voz_i_texto

voz_iii = \relative c' {
  \clef "treble_8"
  \global
  f4. f8 f f f f |
  e2 f4 f |
  d2 d4. e8 |
  \mFicta cis4 d2 cis!4 |
  d1\fermata
}

voz_iii_texto = \lyricmode {
  U -- bi vis pa -- ré -- mus ti -- bi co -- mé -- de -- re Pa -- _ _ scha?
}

voz_iv = \relative c' {
  \clef bass
  \global
  d4. d8 d d bes bes |
  c2 f,4 f |
  bes2 g4 g |
  a1 |
  d,\fermata |
}

voz_iv_texto = \voz_i_texto

\include "base/instrumentos.ly"
\SATB