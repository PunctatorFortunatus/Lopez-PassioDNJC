\include "base/inicio.ly"

global = {
  \key f \major
  \time 4/4
  \mark #22
}

voz_i = \relative c''' {
  \global
  R1 |
  r2 g4 f8 f |
  e[ \mFicta fis] g2 fis!4 |
  g r8 g, a[ \mFicta b] c4 |
  \mFictaP bes!2 a |
  r4 d \mFictaP c!8 c \mFicta b[ \mFicta cis] |
  d4. \mFictaP c!8 \mFictaP bes!2 |
  a4 d \mFicta b2\fermata |
  \bar "|."
}

voz_i_texto = \lyricmode {
  Con -- tra se -- púl -- _ _ crum, con -- tra __ se -- púl -- crum,
  con -- tra se -- púl -- _ _ _ _ _ crum.
}

voz_ii = \relative c'' {
  \global
  \mFictaOn
  g4 f8 f e[ fis] g4~ |
  g fis g c~ |
  c g8 g a[ b] c4~ |
  c b c c, |
  d8 e f2 e4 |
  f f e8 e d4 |
  g4 a4. a8 g4~ |
  g fis g2\fermata |
}

voz_ii_texto = \lyricmode {
  Con -- tra se -- púl -- _ _ crum, con -- tra se púl -- _ _ crum, con -- tra se -- púl -- _ crum,
  con -- tra se -- púl -- crum, con -- tra se -- púl -- crum.
}

voz_iii = \relative c' {
  \clef "treble_8"
  \global
  g4 a8 \mFicta b c4 \mFictaP bes |
  a d r8 \mFicta b c d |
  e4 d c c |
  d8 e \mFictaP f!2 e4 |
  d2 a |
  r4 a g8 a bes4~ |
  bes a8 a \mFicta b c d4~ |
  d a g2\fermata |
}

voz_iii_texto = \lyricmode {
  Con -- tra se -- púl -- _ _ crum, con -- tra se -- púl -- _ crum, con -- tra se -- púl -- _ _ crum,
  con -- tra se -- púl -- crum, con -- tra se -- púl -- _ crum.
}

voz_iv = \relative c' {
  \clef bass
  \global
  R1 |
  r2 g4 a8 \mFicta b |
  c4 \mFictaP bes! a2 |
  g r4 a |
  \mFicta b8 c d2 \mFicta cis4 |
  d d, e8 \mFicta fis g4~ |
  g fis \[g2 |
  d\] g\fermata |
}

voz_iv_texto = \lyricmode {
  Con -- tra se púl -- _ _ crum, con -- tra se -- púl -- _ crum,
  con -- tra se -- púl -- _ _ _ crum.
}

\include "base/instrumentos.ly"
\SATB