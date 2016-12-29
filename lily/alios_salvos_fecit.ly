\include "base/inicio.ly"

global = {
  \key f \major
  \time 4/4
  \mark #18
}

voz_i = \relative c'' {
  \global
  d2 d4 d |
  d d d2 |
  d4 bes bes2 |
  c4 c bes bes |
  a c c4. c8 |
  c2 r4 a |
  a a bes bes |
  c c d e8 e |
  c2 c4 g' |
  \mFictaOn
  f g8 g fis2 |
  g r4 g	 |
  g2 fis4 fis! |
  g2 fis |
  r4 e4. e8 d4~ |
  d cis d d	|
  e2 e |
  e4. e8 d4 cis | \mFictaOff
  r \mFictaP c!2 c4 |
  c2 bes4 bes |
  a a a2~ |
  a1\fermata
  \bar "||"
}

voz_i_texto = \lyricmode {
  Á -- li -- os sál -- vos fé -- cit! Se -- í -- psum non pót -- est sál -- vum fá -- ce -- re! Si rex Í -- sra -- ël
  est, des -- cén -- dat de crú -- ce et cré -- di -- mus é -- i! Con -- fí -- dit in Dé -- o, lí -- be -- ret __
  nunc si vult é -- um. Dí -- xit é -- nim: “quí -- a fí -- li -- us Dé -- i sum”. __
}

voz_ii = \relative c'' {
  \global
  a2 a4 a |
  bes bes a2 |
  bes4 g g2 |
  g4 a \mFictaP f! g |
  e a g4. g8 |
  a2 r4 f |
  f f f4. g8 |
  a4 a a c8 c |
  a2 g4 c |
  a bes8 bes a2 |
  bes r4 bes |
  bes2 a4 a |
  bes2 a	 |
  r4 a4. a8 \mFictaP f![ g] |
  a2 a4 f |
  g2 a |
  a4. c8 g4 a |
  r a2 a4 |
  a2 g4. f8 |
  e4 f e2 |
  f1\fermata |
}

voz_ii_texto = \lyricmode {
  Á -- li -- os sál -- vos fé -- cit! Se -- í -- psum non pót -- est sál -- vum fá -- ce -- re! Si rex Í -- sra -- ël
  est, des -- cén -- dat de crú -- ce et cré -- di -- mus é -- i! Con -- fí -- dit in Dé -- o, lí -- be -- ret __
  nunc si vult é -- um. Dí -- xit é -- nim: “quí -- a fí -- li -- us Dé -- _ i sum”.
}

voz_iii = \relative c' {
  \clef "treble_8"
  \global
  f2 f4 f |
  f g2 \mFicta fis4 |
  g d d2	 |
  e4 c d bes |
  c \mFictaP f! e4. e8 |
  f2 r4 c |
  c c d d |
  e c f g8 g |
  f2 e4 e |
  f d8 d d2 |
  d r4 d |
  d2 d4 d |
  d2 d |
  r4 c4. c8 d4 |
  e2 d4 a |
  c2 c |
  c4. c8 d4 e |
  r f2 f4 |
  f2 d4 d |
  cis d2 cis4 |
  d1\fermata |
}

voz_iii_texto = \lyricmode {
  Á -- li -- os sál -- vos fé -- cit! Se -- í -- psum non pót -- est sál -- vum fá -- ce -- re! Si rex Í -- sra -- ël
  est, des -- cén -- dat de crú -- ce et cré -- di -- mus é -- i! Con -- fí -- dit in Dé -- o, lí -- be -- ret
  nunc si vult é -- um. Dí -- xit é -- nim: “quí -- a fí -- li -- us Dé -- _ i sum”.
}

voz_iv = \relative c' {
  \clef bass
  \global
  d2 d4 d |
  bes g d'2 |
  g,4 g g2 |
  c4 a bes g |
  a \mFictaP f! c'4. c8 |
  f,2 r4 f |
  f f bes bes |
  a a d c8 c |
  f,2 c'4 c |
  d g,8 g d2 |
  g r4 g |
  g2 d4 d |
  g2 d |
  r4 a'4. a8 bes4 |
  a2 d,4 d' |
  \mFictaP c!2 a |
  a4. a8 bes4 a |
  r f2 f4 |
  f2 g4 g |
  a d, a'2 |
  d,1\fermata |
}

voz_iv_texto = \voz_iii_texto

\include "base/instrumentos.ly"
\SATB