\include "base/inicio.ly"

global = {
  \key f \major
  \time 4/4
  \mark #17
}

voz_i = \relative c'' {
  \global
  d2 r4	d |
  d4. c8 bes4 d8 d |
  d4 \mFicta cis d d~ |
  d f f4. e8 |
  d4 d8 d f2 |  
  f4. e8 d2 |
  \mFicta cis r4 cis~ | 
  \once \hide Accidental
  cis d e \mFictaP c! |
  c2 c4 c |
  c2 c4 c | \break
  a a a2	 |
  r4 d d8[ c bes a] |
  g2 a |
  r4 \mFicta b c4. \mFictaP bes8 |
  a2 a\fermata |
  \bar "||"
}

voz_i_texto = \lyricmode {
  Vah, qui dé -- stru -- is tem -- plum De -- _ i, 
  et __ in trí -- du -- o re -- æ -- dí -- fi -- cas il -- lud: 
  Sal -- va te -- met -- í -- psum! 
  Si fí -- li -- us De -- i es, de -- scén -- _ de de cru -- _ _ ce!
}

voz_ii = \relative c'' {
  \global
  a2 r4 bes |
  a4. a8 g4 \mFictaP f!8 g |
  a2 a4 g~ |
  g a bes bes |
  a a8 a bes2 |
  bes4 bes a2 |
  a r4 a4~ |
  a bes \mFictaP c! a |
  g2 a4 a |
  a2 g4 g |
  f e f2	 |
  r2 r4 g |
  g8[ f e d] c4 c' |
  bes8[ a g f] e4 f~ |
  f e fis2\fermata |
}

voz_ii_texto = \lyricmode {
  Vah, qui dé -- stru -- is tem -- plum De -- i, 
  et __ in trí -- du -- o re -- æ -- dí -- fi -- cas il -- lud: 
  Sal -- va te -- met -- í -- psum! 
  Si fí -- li -- us De -- i es, 
  de -- scén -- de, de -- scén -- de de __ cru -- ce!
}

voz_iii = \relative c' {
  \clef "treble_8"
  \global
  fis2 r4 d |
  d4. d8 d4 d8 d |
  e2 d4 bes~ |
  bes c d4. e8 |
  f4 f8 f d2 |
  d4. e8 f2 |
  e r4 e~ |
  e f e f~ |
  f e f f |
  f2 e4 e |
  d \mFicta cis d f |
  f8[ e d \mFictaP c!] bes4 d |
  e2 e4 a |
  g8[ f e d] c \mFicta b16[ \mFicta cis] d4~ |
  d \mFicta cis d2\fermata |
}

voz_iii_texto = \lyricmode {
  Vah, qui dé -- stru -- is tem -- plum De -- i, 
  et __ in trí -- du -- o re -- æ -- dí -- fi -- cas il -- lud: 
  Sal -- va te -- met -- í -- psum! 
  Si fí -- li -- us De -- i es, 
  de -- scén -- de de cru -- ce, de -- scén -- de de cru -- _ ce!
}

voz_iv = \relative c' {
  \clef bass
  \global
  d2 r4 g, |
  fis4. fis8 g4 bes8 bes |
  a2 d,4 g~ |
  g f bes4. c8 |
  d4 d8 d bes2 |
  bes4. c8 d2 |
  a r4 a~ |
  a d \mFictaP c! f, |
  c'2 f,4 f |
  f2 c4 c |
  d a' d, d' |
  d8[ \mFictaP c! bes a] g4 g |
  c4. bes8[ a g] f4 |
  g g a2~ |
  a d,\fermata |
}

voz_iv_texto = \lyricmode {
  Vah, qui dé -- stru -- is tém -- plum De -- i, 
  et __ in trí -- du -- o re -- æ -- dí -- fi -- cas il -- lud: 
  Sal -- va te -- met -- í -- psum!
  Si fí -- li -- us De -- i es, 
  de -- scén -- _ de, de -- scén -- _ de de cru -- ce!
}

\include "base/instrumentos.ly"
\SATB