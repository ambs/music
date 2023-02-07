
upperEight = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

  % 1
  e8.[^\markup{\italic{Vivace}} e16( f8.) f16]( g4) a8. bes16_> ~ |
  bes8. bes16( a4_.) g_- f_- |
  e8. c16 ~ c2. ~ | 

  % 2
  c2. r4 |
  a'8.[ a16( bes8.) bes16]( c4) d8. ees16^> ~ |
  ees8. ees16( d4^.) c^- bes^-

  % 3
  a8 f~ f2. ~ f2. r4 e4 f8. g16_>~g2 |

  % 4
  e4 f8. g16_> ~ g2 | r8 e4_._^ f8( g4) a | bes8(_- a)_. r8 g_> ~ g f_> ~ f4 | <c e>8_._^ r r q_> ~ q4 r |

  % 5
  <ces e>8 r r q_> ~ q4 r |
  <a c>8[ r16 g] c8.( g'16_- f8. dis16_- e8. c16_.) | r1 \bar "|."
}

lowerEight = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  % 1
  c8.[ c16( d8.) d16]( e4) f8.[ g16^>] ~ |
  g8. g16( f4^.) e^- d^- |
  <<
    \new Voice \relative {
        \voiceOne r4 r <e bes'^> >4 r |
        <e bes'^> > r8 q8^.^^ r4 r4 
    }
    \\
    \new Voice \relative {
        \voiceTwo c1 ~ c2. r4
    }
  >> 
  % 2
  \oneVoice
  f8.[ f16( g8.) g16]( a4) bes8. c16^> ~ |
  c8. c16( bes4^.) a^- g^-

  % 3
  <<
    \new Voice \relative { \voiceOne r4 r <a ees'>4 r | q r8 q8 r4 r } \\
    \new Voice \relative { \voiceTwo f1 ~ f2. r4 }
  >>
  <c, g'>2 r8 q4.^>

  % 4
  <b g'>2 r8 q4.^> |
  <bes g'>1 | <a cis g'> | <d f>8^.^^ r r q^>~q4 r |

  % 5
  <des f>8 r r q^> ~ q4 r | <c e>8^. r r4 r2 | r4 r8 c,_> r2 \bar "|."

}




\bookpart {
  \header {
    subtitle = "Drawing"
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" 
      <<
      \new Staff = "upper" << \upperEight >>
      \new Staff = "lower" <<  \lowerEight >>
    >>
    \layout { }
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" <<
      \new Staff = "upper"  \upperEight
      \new Staff = "lower"  \lowerEight
    >>
    \midi { 
      \tempo 4 = 90
    }
  }
}
