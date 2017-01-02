\layout {
  indent = 0\pt
  \override LyricText.font-size = #-1
  \override Staff.InstrumentName.self-alignment-X = #RIGHT
  \set Staff.autoBeaming = ##f
  \set Score.markFormatter = #format-mark-numbers

  \context {
    \Score
    
    % Tamaño general de tipografías
    fontSize = -1
    
    % Ancho de líneas
    \override StaffSymbol.thickness = #0.8				% Pentagrama y líneas
    \override StaffSymbol.ledger-line-thickness = #'(0.2 . 0.1)		% Líneas adicionales
    \override BarLine.hair-thickness = #1.2				% Barra de compás (delgada)
    \override BarLine.thick-thickness = #4				% Barra de compás (gruesa)
    \override SystemStartBar.thickness = #0.9				% Primera barra de sistema
    \override SystemStartBracket.thickness = #0.4				% Corchete de sistema
    \override Stem.thickness = #1.2					% Plicas
    \override LigatureBracket.thickness = #1.2				% Ligaduras cuadradas
    \override LyricExtender.thickness = #0.7				% Extensor de texto
    \override LyricHyphen.thickness = #0.7				% Divisor de sílabas
     
    % Inclinación de barras de corchea
    \override Beam.damping = #0						% Inclinación
    \override Stem.no-stem-extend = ##t					% No extender plicas en líneas adicionales
    \override Stem.details.beamed-lengths = #'(3.5 4 4.5)			% Extensión de las plicas
    
    % Tamaño y posición de ligaduras de corchete
    \override LigatureBracket.shorten-pair = #'(-0.8 . -0.8)		% Extensión de la ligadura
    \override LigatureBracket.staff-padding = #0				% Distancia del pentagrama
    \override LigatureBracket.padding = #1.5				% Distancia general
    
    % Separación de las notas
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
    
    % Acomodo de semitonía y fermatas:
    \override Script.outside-staff-priority = #-1
    
    % Notas centradas
    \override PaperColumn.after-line-breaking = #center-column
  }
}