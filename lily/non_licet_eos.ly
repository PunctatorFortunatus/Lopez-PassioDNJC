\include "base/inicio.ly"

global = {
  \key f \major
  \time 4/4
  \mark #11
}

voz_i = \relative c'' {
  \global
  r4 a bes c |
  d c d8 d c c |
  c c c4 r f~ |
  f f f2 |
  g4 g e f |
  e2 \mFicta fis\fermata |
  \bar "||"
}

voz_i_texto = \lyricmode {
  Non li -- cet e -- os mít -- te -- re in
  cór -- bo -- nam qui -- a pré -- ti -- um sán -- gui -- nis est.
}

voz_ii = \relative c' {
  \global
  r4 f g a |
  bes c bes8 bes a a |
  g g a4 r a~ |
  a a bes2 |
  bes4 bes a a |
  a2 a\fermata |
}

voz_ii_texto = \voz_i_texto

voz_iii = \relative c' {
  \clef "treble_8"
  \global
  r4 d d f |
  f f f8 f f f |
  e e f4 r c~ |
  c c d2 |
  d4 d cis d~ |
  d cis d2\fermata |
}

voz_iii_texto = \voz_i_texto

voz_iv = \relative c {
  \clef bass
  \global
  r4 d g f |
  bes a bes8 bes f f |
  c' c f,4 r f~ |
  f f bes2 |
  g4 g a d, |
  a'2 d,\fermata |
}

voz_iv_texto = \voz_i_texto

\include "base/instrumentos.ly"
\SATB