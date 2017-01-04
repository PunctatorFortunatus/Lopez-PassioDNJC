\include "base/inicio.ly"

global = {
  \key f \major
  \time 4/4
  \mark #6
}

voz_i = \relative c'' {
  \global
  r4 f f2 |
  e2 f4 \mFictaP c!8 c |
  c4 c8 c c4 a | 
  c2 c |
  r4 c2 c4|
  d4 d c2 |
  r4 c8 c c4 c |
  a bes a2~ |
  a a\fermata |
  \bar "||"
}

voz_i_texto = \lyricmode {
  Hic di -- xit: Pos -- sum de -- strú -- e -- re tem -- plum De -- i
  et in trí -- du -- um re -- æ -- di -- fi -- cá -- re il -- lud.
}

voz_ii = \relative c'' {
  \global
  r4 a a2 |
  a a4 a8 a |
  a4 a8 a g4 f |
  g2 a |
  r4 g2 a4 |
  a4 a a2 |
  r4 a8 a a4 g |
  fis g2 \mFicta f4 |
  e2 \mFicta fis\fermata |
}

voz_ii_texto = \lyricmode {
  Hic di -- xit: Pos -- sum de -- strú -- e -- re tem -- plum De -- i
  et in trí -- du -- um re -- æ -- di -- fi -- cá -- _ re il -- lud.
}

voz_iii = \relative c' {
  \clef "treble_8"
  \global
  r4 d d2 |
  cis \mFicta c4 f8 f |
  f4 f8 f e4 f~ |
  f e f2 |
  r4 e2 c4 |
  f4 f e2 |
  r4 f8 f f4 e |
  d d8[ e] cis4 d~ |
  d cis d2\fermata |
}

voz_iii_texto = \lyricmode {
  Hi di -- xit: Pos -- sum de -- strú -- e -- re tem -- plum __ De -- i
  et in trí -- du -- um re -- æ -- di -- fi -- cá -- re __ il -- _ _ lud.
}

voz_iv = \relative c {
  \clef bass
  \global
  r4 d d2 |
  a' f4 f8 f |
  f4 f8 f c'4 d |
  c2 f, |
  r4 c'2 a4 |
  d4 d a2 |
  r4 f8 f f4 c |
  d g a2~ |
  a d,\fermata |
}

voz_iv_texto = \voz_i_texto

\include "base/instrumentos.ly"
\SATB