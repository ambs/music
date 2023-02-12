
upperFourteen = \relative c'' {
  \clef treble
  \key g \major
  \time 4/4

  \acciaccatura ais8 b8.[^\markup{\italic{Moderato}} g16 g8. g16]_> ~ g2 |
  r8 g8( bes8.[ g16] des'8 c4.) |
  \acciaccatura ais8 b8.[ g16 g8. g16]_> ~ g2 |

  % 2
  r8 g( des'8.[ c16] bes8.[ g16] ~ g4) |
  \acciaccatura a8 b8.[ g16 g8. g16]_> ~ g2 |
  r8 g( bes8.[ g16] des'8 c4.) |

  % 3
  \acciaccatura ais8 b8.[ g16 g8. g16]_> ~ g2 |
  r8 g des'8.[ c16] bes8.[ g16] ~ g4 |
  ais8.[ b16 ais8. b16] g8.[ e16] ~ e4 |

  % 4
  r8. ais16[ b8. d16] b8.[ d,16 e8. g16] ~ |
  g4 r <f c a>2 | <d b fis>2. r4 \bar "|."
 }


lowerFourteen = \relative c' {
  \clef bass
  \key g \major
  \time 4/4

  \acciaccatura s8
  <g b d>2 <f b d> | 
  <e bes' d>1 | 
  <g b d>2 <fis b d> |

  % 2
  <f b d>2 g, | 
  <e' bes' d> r8 c4._> |
  c,2 <e' bes' d> |

  % 3
  <g b d>2 <fis b d> |
  <f b d> <e gis d'> |
  <g cis, a>2. q4 |

  % 4
  <<
    \new Voice \relative { \voiceOne r4 r4 c'2 ( | \stemDown <b g>4) } \\
    \new Voice \relative { \voiceTwo <d fis>1 | s4 }
  >>
  \oneVoice r4 d,2 | g,2. r4 
}



\bookpart {
  \header {
    subtitle = "Morning (Blues)"
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" 
      <<
      \new Staff = "upper" << \upperFourteen >>
      \new Staff = "lower" << \lowerFourteen >>
    >>
    \layout { }
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" <<
      \new Staff = "upper"  \upperFourteen
      \new Staff = "lower"  \lowerFourteen
    >>
    \midi { 
      \tempo 4 = 90
    }
  }
}
