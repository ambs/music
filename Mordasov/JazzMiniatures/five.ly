% agile
upperFive = \relative c'' {
  \clef treble
  \key f \major
  \time 2/2

  % 1
  r8^\markup{\italic{Agile}} a4_.^^ a8( gis8.[ a16] ~ a4) |
  \acciaccatura cis8 d4 cis8.[ c16] ~ c4 r |
  r8 bes4^.^^ bes8( a8.[ bes16] ~ bes4) |

  % 2
  \acciaccatura dis8 e4 dis8.[ d16] ~ d4 r |
  c8.[( d16 e8. d16] c8.[ a16] ~ a4) |
  g_- f_- e8([ f] ~ f4) |
  \acciaccatura gis8 a2 a8_-( g!_.) r a_>( |

  % 3
  a2) \acciaccatura gis8( a8. aes16 g8. ges16 |
  f4.) f8( e8. f16 ~ f4) |
  g4_- f_- gis8.( b16 e8. d16 |

  % 4
  c4.)  c8( b8. c16 ~ c4) |
  \acciaccatura cis8 d4^- c^- ees8.( fis16 bes8. a16) |
  a8.( f16 d8. a16) r8 d4^^^. des8 |

  % 5
  c8.( a16 e8. c16) r8 gis'8( a4) |
  f8_.^^ r8 f,8.( g16 a8. c16 d8. f16) ~ |
  f8 r r4 r2 \bar "|."
}

lowerFive = \relative c {
  \clef bass
  \key f \major
  \time 2/2

  % 1
  <f a c e>1 | 
  <fis a c ees>2 r8 q4.^> |
  <g bes d f>1 |

  % 2
  <gis b! d! f>2 r8 q4.^> |
  <a c e g>1 |
  <d, f a c> |
  <e g b d> |


  % 3
  <a, cis g'>2 r |
  r8 <bes d f a>8^> ~ q2. |
  <b d f aes>1 |

  % 4
  r8 <c d f a>^> ~ q2. |
  <d fis c'>1 |
  r8 <g b d f>^> ~ q2. |

  % 5
  r8 <c, e bes'>^> ~ q2. |
  <f a c>8^.^^ r8 f,8.[( g16] a8. c16 d8. f16 ~ |
  f8)    r \ottava #-1 r4    f,,4_> r4 \bar "|."

}




\bookpart {
  \header {
    subtitle = "Walk"
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" 
      <<
      \new Staff = "upper" << \upperFive >>
      \new Staff = "lower" <<  \lowerFive >>
    >>
    \layout { }
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" <<
      \new Staff = "upper"  \upperFive
      \new Staff = "lower"  \lowerFive
    >>
    \midi { 
      \tempo 4 = 105
    }
  }
}
