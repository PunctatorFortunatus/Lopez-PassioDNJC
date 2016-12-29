\include "base/inicio.ly"

global = {
  \key f \major
  \time 4/4
  \mark #9
}

voz_i = \relative c'' {
  \global
  f4 f e2 |
  r4 f g e |
  f d d8 d \mFictaP c! c |
  c4 c r c~ |
  c bes a a8 a |
  a2 a\fermata |
  \bar "||"
}

voz_i_texto = \lyricmode {
  Vé -- re tu ex íl -- lis es, nam et lo -- qué -- la tú -- a ma -- ni -- fé -- stum te fá -- cit.
}

voz_ii = \relative c'' {
  \global
  a4 a a2 |
  r4 a bes a |
  a a bes8 bes g a |
  g4 a r a~ |
  a g e f8 f |
  e2 \mFicta fis\fermata |
}

voz_ii_texto = \voz_i_texto

voz_iii = \relative c' {
  \clef "treble_8"
  \global
  d4 d cis2 |
  r4 d d cis |
  d f f8 f e f |
  e4 f r f~ |
  f d cis d8 d |
  cis2 d\fermata |
}

voz_iii_texto = \voz_i_texto

voz_iv = \relative c {
  \clef bass
  \global
  d4 d a'2 |
  r4 d, g a |
  d, d' bes8 bes \mFictaP c! f, |
  c'4 f, r f~ |
  f g a d,8 d |
  a'2 d,\fermata |
}

voz_iv_texto = \voz_i_texto

\include "base/instrumentos.ly"
\SATB