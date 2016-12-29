\include "base/inicio.ly"
\layout { indent = 4\cm }

voz_i_n = "Superius"
voz_i = \relative c'' {
  \incipit {
    \clef "petrucci-g"
    \time 4/4
    \key f \major
    d'1. d2 d1 d d2 d
  }
  \lyricmode {
    Pa ſsi o Do mi ni
  }
  
  \clef "treble"
  \time 4/4
  \key f \major
  
  d2. d4	|
  d2 d |
  d4 d g2~ |
  g4 f e e~ |
  e d cis d~ |
  d cis d d~ |
  d bes c c |
  \[d2 g\] |
  c,4 c f2 |
  d4 g2 f4 |
  e2 \mFicta fis\fermata |
  \bar "||"
}

voz_i_texto = \lyricmode {
  Pás -- si -- o Dó -- mi -- ni nó -- _ stri Jé -- su Chrí -- _
  _ sti se -- cún -- dum Mat -- thǽ -- _ um, se -- cún -- dum Mat -- _ thǽ -- um.
}

voz_ii_n = "Altus"
voz_ii = \relative c'' {
  \incipit {
    \clef "petrucci-c2"
    \time 4/4
    \key f \major
    a'1. a2 bes1. bes2 a4 bes
  }
  \lyricmode {
    PAß i o Do mi ni
  }
  
  \clef "treble"
  \time 4/4
  \key f \major
  
  \mFictaOn
  a2. a4	 |
  bes2. bes4 |
  a8 b c2 b8[ a] |
  b2 c4 g~ |
  g g a2~ |
  a fis4 fis! |
  g2 a4 a |
  bes1 |
  a4 a a2 |
  bes4 bes a2~ |
  a a\fermata |
}

voz_ii_texto = \lyricmode {
  Pás -- si -- o Dó -- mi -- ni nó -- _ _ stri Jé -- su Chrí --
  sti se -- cún -- dum Mat -- thǽ -- um, se -- cún -- dum Mat -- thǽ -- um.
}

voz_iii_n = "Tenor"
voz_iii = \relative c' {
  \incipit {
    \clef "petrucci-c3"
    \time 4/4
    \key f \major
    f1 f2 g g d d
  }
  \lyricmode {
    PAß i o Do mi ni
  }
  
  \clef "treble_8"
  \time 4/4
  \key f \major
  f2. f4	|
  g g d d |
  d1~ |
  d2 c |
  g'2. f4 |
  e2 d4 d |
  d e f4. e8 |
  d2. e4 |
  f c2 d4~ |
  d e4. d8 d4~ |
  d cis d2\fermata |
}

voz_iii_texto = \lyricmode {
  Pás -- si -- o Dó -- mi -- ni nó -- stri Jé -- su
  Chrí -- sti se -- cún -- dum Mat -- _ thǽ -- _ um, se -- cún -- dum Mat -- tǽ -- _ um.
}

voz_iv_n = "Baſsus"
voz_iv = \relative c' {
  \incipit {
    \clef "petrucci-c4"
    \time 4/4
    \key f \major
    d1. d2 g,1. g2 f f
  }
  \lyricmode {
    PAß i o Do mi ni
  }
  
  \clef bass
  \time 4/4
  \key f \major
  d2. d4 |
  g,2. g4 |
  fis fis g2~ |
  g c,4 c'~ |
  c \mFictaP bes! a2~ |
  a d,4 d |
  g2 f4 f |
  bes4. a8 g2 |
  f4 f f2 |
  g4 g a2~ |
  a d,\fermata |
}

voz_iv_texto = \lyricmode {
  Pás -- si -- o Dó -- mi -- ni nó -- stri Jé -- su Chrí --
  sti se -- cún -- dum Mat -- thǽ -- _ _ um, se -- cún -- dum Mat -- thǽ -- um.
}

\include "base/instrumentos.ly"
\SATB
