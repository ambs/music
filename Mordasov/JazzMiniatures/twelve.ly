
upperTwelve = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

  % 1
  c8.[^\markup{\italic{Lento}} fis16( g8.) c16_>] ~ c4 r  |
  c8.[ fis,16 g8. c,16_>] ~ c4 r |
  c8.[ fis16 g8. c16_>] ~ c8.[ g16 a8. bes16_>] ~ |

  % 2
  bes2. r4 |
  f8.[ b16] c8.[ f16]^> ~ f4 r |
  ees8.[ b16] c8.[ f,16] ~ f4 r |

  % 3
  e8.[ g16 a8. bes16] ~ bes4 e,8.[ a16] ~ |
  a2. r4 |
  c8.[ a16 f8. a16] ~ a8 r r4 |

  % 4
  c8.[ aes16 f8. aes16] ~ aes8 r r4 |
  c8 r \tuplet 3/2 {g,8[( c g]} \tuplet 3/2 {fis[ c' fis,]} \tuplet 3/2 {f[ c' f,]} |
  e4) r8 <e_> ais d>8 ~ q4 r \bar "|."
 }


lowerTwelve = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  % 1
  <e bes'>2 r8 q4.^> |
  <ees a>2 r8 q4.^> |
  <e! bes'>2 <dis a'>2 |

  % 2
  c8.^^[ c'16]( d,4) dis^- e^- |
  <f a ees'>2 r8 q4.^> |
  <ees a>2 r8 q4.^> |

  % 3
  <c e g>2 <bes d g> |
  a8.[ a'16]( b,4) c_- cis_- |
  <d f a c>2 r8 q8^.^^ r4 |

  % 4
  <des f aes c>2 r8 q8^^^. r4 |
  <c e g c>8 r e,4_- dis_- d_- |
  c g'8[ c,]_> ~ c4 r 
}



\bookpart {
  \header {
    subtitle = "Far Blue (Blues)"
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" 
      <<
      \new Staff = "upper" << \upperTwelve >>
      \new Staff = "lower" <<  \lowerTwelve >>
    >>
    \layout { }
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" <<
      \new Staff = "upper"  \upperTwelve
      \new Staff = "lower"  \lowerTwelve
    >>
    \midi { 
      \tempo 4 = 90
    }
  }
}
