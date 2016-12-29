\include "base/inicio.ly"

global = {
  \key f \major
  \time 4/4
  \mark #8
}

voz_i = \relative c'' {
  \global
  d4. d8 d4 c |
  c8 c c c c4 c |
  c2 c |
  r4 c c4. a8 |
  a4 a a2 |
  a1\fermata |
  \bar "||"
}

voz_i_texto = \lyricmode {
  Pro -- phe -- tí -- za, pro -- phe -- tí -- za nó -- bis, Chrí -- ste: quis est qui te per -- cús -- sit?
}

voz_ii = \relative c'' {
  \global
  a4. a8 a4 a |
  a8 a a a g4 a |
  g2 a |
  r4 a g4. f8 |
  e4 f e2 |
  \mFicta fis1\fermata
}

voz_ii_texto = \voz_i_texto

voz_iii = \relative c' {
  \clef "treble_8"
  \global
  f4. f8 f4 e |
  e8 e f f e4 f~ |
  f e f2	 |
  r4 f e4. d8 |
  cis4 d2 cis4 |
  d1\fermata
}

voz_iii_texto = \voz_i_texto

voz_iv = \relative c' {
  \clef bass
  \global
  d4. d8 d4 a |
  a8 a f f c'4 f, |
  c2 f |
  r4 f c'4. d8 |
  a4 d, a'2 |
  d,1\fermata
}

voz_iv_texto = \voz_i_texto

\include "base/instrumentos.ly"
\SATB