% Voces:
% =====================================================

s_voz_i = {
  \new Staff \with { instrumentName = \voz_i_n } <<
    \new Voice = "voz_i" \voz_i
    \addlyrics \voz_i_texto
    \new Voice = "voz_i_aux" \aux_i
    \addlyrics \aux_i_texto
  >>
}

s_voz_ii = {
  \new Staff \with { instrumentName = \voz_ii_n } <<
    \new Voice = "voz_ii" \voz_ii
    \addlyrics \voz_ii_texto
    \new Voice = "voz_ii_aux" \aux_ii
    \addlyrics \aux_ii_texto
  >>
}

s_voz_iii = {
  \new Staff \with { instrumentName = \voz_iii_n } <<
    \new Voice = "voz_iii" \voz_iii
    \addlyrics \voz_iii_texto
    \new Voice = "voz_iii_aux" \aux_iii
    \addlyrics \aux_iii_texto
  >>
}

s_voz_iv = {
  \new Staff \with { instrumentName = \voz_iv_n } <<
    \new Voice = "voz_iv" \voz_iv
    \addlyrics \voz_iv_texto
    \new Voice = "voz_iv_aux" \aux_iv
    \addlyrics \aux_iv_texto
  >>
}

s_voz_v = {
  \new Staff \with { instrumentName = \voz_v_n } <<
    \new Voice = "voz_v" \voz_v
    \addlyrics \voz_v_texto
    \new Voice = "voz_v_aux" \aux_v
    \addlyrics \aux_v_texto
  >>
}

s_voz_vi = {
  \new Staff \with { instrumentName = \voz_vi_n } <<
    \new Voice = "voz_vi" \voz_vi
    \addlyrics \voz_vi_texto
    \new Voice = "voz_vi_aux" \aux_vi
    \addlyrics \aux_vi_texto
  >>
}


% Plantillas:
% =====================================================

SATB = \score {
  \new ChoirStaff <<
    \s_voz_i
    \s_voz_ii
    \s_voz_iii
    \s_voz_iv
  >>
}

SSAT = \score {
  \new ChoirStaff <<
    \new ChoirStaff \with { systemStartDelimiter = #'SystemStartSquare } <<
      \s_voz_i
      \s_voz_ii
    >>
    \s_voz_iii
    \s_voz_iv
  >>
}

SATTB = \score {
  \new ChoirStaff <<
    \s_voz_i
    \s_voz_ii
    \new ChoirStaff \with { systemStartDelimiter = #'SystemStartSquare } <<
      \s_voz_iii
      \s_voz_iv
    >>
    \s_voz_v
  >>
}
