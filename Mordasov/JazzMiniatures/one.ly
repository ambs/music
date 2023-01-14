
dynamicsOne = {
  \partial 4. s8 s4 | s1\mf | s1 | s1     % 1
  s1 | s1 | s1                            % 2
  s1 | s1 | s1                            % 3
  s1 | s1 | s2.                           % 4
}



upperOne = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

  % 1
  \partial 4. g8(^\markup{\italic{Agile}} a8.[ g16] |
  c2) r8. e16([ f8. e16] |
  c2) r8. g'16[( a8. g16] |
  e8.)[ e16( f8. e16] c8.)[ g16( a8. g16] |

  % 2
  bes2) r8. c16[( d8. c16] | 
  f2) r8. a16[( bes8. a16] |
  f2) r8. c16[( d8. c16] |

  % 3
  e8.)[ e16( f8. e16] g8.)[ g16( a8. g16] |
  e2) r8. e16([ f8. e16] |
  g4_> ~ g8.)[ g16]_^ r8. d16( e8. d16

  % 4
  f4 ~ f8.)[ f16_^] r8. c16[( d8. c16] |
  e4) c ees d8[ c]~ |
  c2 r4 \bar "|." 
}

lowerOne = \relative c, {
  \clef bass
  \key c \major
  \time 4/4

  %1 
  \partial 4. r8 r4 |
  c8.[ g'16 a8. g16] c,8.[ g'16 a8. g16] |
  c,8.[ g'16 a8. g16] c,8.[ g'16 a8. g16] |
  c,8.[ g'16 a8. g16] c,8.[ g'16 a8. g16] |

  %2
  c,8.[ c'16]( bes8.)[ bes16]( a8.)[ a16( g8.) g16]( |
  f8.)[ c'16 d8. c16] f,8.[c'16 d8. c16] |
  f,8.[c'16 d8. c16] f,8.[c'16 d8. c16] |
  
  %3 
  c,8.[ g'16 a8. g16] c,8.[ g'16 a8. g16] |
  c,8.[ g'16 a8. g16] c,8.[ g'16 a8. g16] |
  g8.[ d'16 e8. d16] g,8.[ d'16 e8. d16] |

  %4
  f,8.[ c'16 d8. c16] f,8.[ c'16 d8. c16] |
  c,4 e f g8[ c] ~ |
  c8.[ fis,16( g8.) c,16] ~ c4 \bar "|."
}



\bookpart {
  \header {
    subtitle = "Boogie Woogie"
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" 
      <<
      \new Staff = "upper" << \upperOne >>
      \new Dynamics = "dynamics" \dynamicsOne
      \new Staff = "lower" <<  \lowerOne >>
    >>
    \layout { }
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" <<
      \new Staff = "upper" <<  \upperOne \dynamicsOne >>
      \new Staff = "lower" <<  \lowerOne \dynamicsOne >>
    >>
    \midi { 
      \tempo 4 = 120
    }
  }
}
