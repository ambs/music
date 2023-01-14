
dynamicsTwo = {
  \partial 8 s8 | s1 | s1 | s1 |     % 1 
}

upperTwo = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4

  % 1
  \partial 8 g8^\markup{\italic{Lento}}   | % 1
  c8 c4 c8( b) b4 b8( |                     % 2
  bes8) bes4 bes 8( a4) r8 e |              % 3
  g g4 g8 e4 e |                            % 4

  % 2
  c2. r8 c8 |
  e e4 e8 ees ees4 ees8 |
  \tuplet 3/2 { d4 g b} <fis a> r8 cis |
  \tuplet 3/2 { c!4 f a} <e aes> r8 g |

}

lowerTwo = \relative c' {
  \clef bass
  \key c \major
  \time 4/4

  % 1
  \partial 8  r8 |
  <bes e>2 <a dis> |
  <aes d!> <g cis> |
  <d a'> g |

  % 2
  << a1 \\ \new Voice { \voiceTwo   \override Slur.positions = #'(5 . 0) r4^( aes g2) } >> \oneVoice
  <fis c'>2 <f! b> |
  <e g b> <g cis>4 a, |
  <d f a>2 <f b>4 g, |


}



\bookpart {
  \header {
    subtitle = "Twilight"
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" 
      <<
      \new Staff = "upper" << \upperTwo >>
      \new Dynamics = "dynamics" \dynamicsTwo
      \new Staff = "lower" <<  \lowerTwo >>
    >>
    \layout { }
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" <<
      \new Staff = "upper" <<  \upperTwo \dynamicsTwo >>
      \new Staff = "lower" <<  \lowerTwo \dynamicsTwo >>
    >>
    \midi { 
      \tempo 4 = 60
    }
  }
}
