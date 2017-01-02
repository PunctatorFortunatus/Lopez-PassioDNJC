\include "base/inicio.ly"

global = {
  \key f \major
  \time 4/4
  \mark #20
}

voz_i = \relative c'' {
  \global
  d4. d8 d4 d |
  d2 cis |
  r4 \mFicta cis d4. d8 |
  b4 b \mFictaP c!2 |
  c4 c bes bes |
  a1 |
  a\fermata |
  \bar "||"
}

voz_i_texto = \lyricmode {
  Sí -- ne, vi -- de -- á -- mus an vé -- ni -- at E -- lí -- as lí -- be -- rans é -- um.
}

voz_ii = \relative c'' {
  \global
  a4. a8 a4 a~ |
  a g a2 |
  r4 a a4. a8 |
  g4 g g2 |
  a4 a g g~ |
  g f e2 |
  fis1\fermata |
}

voz_ii_texto = \lyricmode {
  Sí -- ne, vi -- de -- á -- mus an vé -- ni -- at E -- lí -- as lí -- be -- rans __ _ é -- um.
}

voz_iii = \relative c' {
  \clef "treble_8"
  \global
  f4. f8 f4 f |
  d2 e |
  r4 e f4. f8 |
  d4 d e2 |
  f4 f d e |
  \mFicta cis d2 cis!4 |
  d1\fermata |
}

voz_iii_texto = \lyricmode {
  Sí -- ne, vi -- de -- á -- mus an vé -- ni -- at E -- lí -- as lí -- be -- rans é -- _ _ um.
}

voz_iv = \relative c' {
  \clef bass
  \global
  d4. d8 d4 d |
  bes2 a |
  r4 a d4. d8 |
  g,4 g \mFictaP c!2 |
  f,4 f g g |
  a1 |
  d,1\fermata |
}

voz_iv_texto = \voz_i_texto

\include "base/instrumentos.ly"
\SATB