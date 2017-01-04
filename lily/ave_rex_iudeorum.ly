\include "base/inicio.ly"
\layout { ragged-last = ##t }

global = {
  \key f \major
  \time 4/4
  \mark #16
}

voz_i = \relative c'' {
  \global
  d1 |
  g4 c, c2 |
  c4 c2 c4 |
  d1 |
  c2 r4 g~ |
  g g d'2~ |
  d d4 e~ |
  e8 e d2 cis4 |
  d1\fermata |
  \bar "||"
}

voz_i_texto = \lyricmode {
  A -- ve, a -- ve, Rex Iu -- dæ -- ó -- rum! A --
  ve, Rex __ Iu -- _ dæ -- ó -- _ rum!
}

voz_ii = \relative c'' {
  \global
  a2. bes4 |
  c bes8[ a g f] g4 |
  a2 a~ |
  a4 g8[ f] g2 |
  a r4 c~ |
  c c c bes8 bes |
  a2 bes4 bes8 bes |
  a1 |
  a\fermata |
}

voz_ii_texto = \lyricmode {
  A -- ve, a -- _ ve, Rex Iu -- dæ -- ó -- rum! A --
  ve, Rex Iu -- dæ -- ó -- rum, Iu -- dæ -- ó -- rum!
}

voz_iii = \relative c' {
  \clef "treble_8"
  \global
  f2. f4	 |
  e f2 e4 |
  f f2 f4 |
  d1 |
  e2 e~ |
  e4 e f g~ |
  g f g g~ |
  g f e2 |
  d1\fermata |
}

voz_iii_texto = \lyricmode {
  A -- ve, a -- _ ve, Rex Iu -- dæ -- ó -- rum! A --
  ve, a -- _ ve, Rex Iu -- dæ -- ó -- rum!
}


voz_iv = \relative c' {
  \clef bass
  \global
  d2. d4	 |
  c1 |
  f,4 f2 f4 |
  bes1 |
  a2 c~ |
  c4 c d2~ |
  d g,4 g |
  a1 |
  d,\fermata |
}

voz_iv_texto = \lyricmode {
 A -- ve, Rex, Rex Iu -- dæ -- ó -- rum! A --
 ve, Rex __ Iu -- dæ -- ó -- rum!
}

\include "base/instrumentos.ly"
\SATB