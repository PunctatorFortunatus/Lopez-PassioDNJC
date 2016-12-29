\include "base/inicio.ly"

global = {
  \key f \major
  \time 4/4
  \mark #2
}

voz_i = \relative c'' {
  \global
  d4. d8 d4 cis		|
  d2 \mFictaP c!4 c	|
  c2 c4 a		|
  c2 c4 c~		|
  c bes a a		|
  a4. a8 a2\fermata
  \bar "||"
}

voz_i_texto = \lyricmode {
  Non in dí -- e fé -- sto, ne fór -- te tu -- múl -- tus fí -- e -- ret in pó -- pu -- lo.
}

voz_ii = \relative c'' {
  \global
  a4. a8 a4 a	|
  a2 a4 a	|
  a2 g4 f	|
  g2 a4 a~	|
  a g8[ f] e4 f	|
  e4. e8 fis2\fermata
}

voz_ii_texto = \lyricmode {
  Non in dí -- e fé -- sto, ne fór -- te tu -- múl -- tus fí -- e -- ret in pó -- pu -- lo.
}

voz_iii = \relative c' {
  \global
  \clef "treble_8"
  f4. f8 f4 e		|
  f2 e4 e		|
  f2 e4 f~		|
  f e f f~		|
  f d \mFicta cis d	|
  d \mFicta cis d2\fermata
}

voz_iii_texto = \lyricmode {
  Non in dí -- e fé -- sto, ne fór -- te tu -- múl -- tus fí -- e -- ret in pó -- pu -- lo.
}

voz_iv = \relative c' {
  \global
  \clef bass
  d4. d8 d4 a	|
  d2 a4 a	|
  f2 c'4 d	|
  c2 f,4 f~	|
  f g a d,	|
  a'4. a8 d,2\fermata
}

voz_iv_texto = \lyricmode {
 Non in dí -- e fé -- sto, ne fór -- te tu -- múl -- tus fí -- e -- ret in pó -- pu -- lo.
}

\include "base/instrumentos.ly"
\SATB