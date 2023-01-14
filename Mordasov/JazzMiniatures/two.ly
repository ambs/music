
upperThree = \relative c'' {
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

  % 3
  <<
    \new Voice { \voiceOne
      g2. ~ g8[ g ] |
      c8 d4 c8 b cis4 b8 |
      bes8 c!4 bes8 a4 r8 e |

      % 4
      \tuplet 3/2 { g4 f g } 
    } \\
    \new Voice { \voiceThree
      d4 des c b | 
      g'2 fis |
      f! e |

      % 4
      c2
    }
  >>
  \oneVoice
  <ees a>4 <d g> |
  e!2. r8 c |
  e a4 e8 ees aes4 ees8 |

  % 5
  \tuplet 3/2 { d4 g b} <fis a>2 |
  \tuplet 3/2 {c!4 f! a} <e g>4 <ees g>8[ <d g c>] ~ | q1 \bar "|."

}

lowerThree = \relative c' {
  \clef bass
  \key c \major
  \time 4/4

  % 1
  \partial 8  r8 |
  <bes e>2 <a dis> |
  <aes d!> <g cis> |
  <d a'> g |

  % 2
  << a1 \\ \new Voice { \voiceThree   \override Slur.positions = #'(5 . 0) r4^( aes g2) } >> \oneVoice
  <fis c'>2 <f! b> |
  <e g b> <g cis>4 a, |
  <d f a>2 <f b>4 g, |

  % 3
  <e' b'>4 <ees bes'> <d a'> g |
  <bes e>2 <a dis> |
  <aes d!> <g cis> |

  % 4
  <d a'> <f b> |
  <<
    \new Voice { \voiceOne c'2. r4 } \\ \new Voice { \voiceThree a4 gis g!2}
  >> |
  <fis c'>2 <f! b> |

  % 5
  <e g b>2 <g cis>4 a, |
  << { \stemDown <d f a>2 <f b>4 <des f b>8[ <c e bes'>] ~ | q1 } \\ \new Voice {\voiceThree s1 | c,4\rest c\rest c2}>> \bar "|."
}



\bookpart {
  \header {
    subtitle = "Twilight"
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" 
      <<
      \new Staff = "upper" << \upperThree >>
      \new Staff = "lower" <<  \lowerThree >>
    >>
    \layout { }
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" <<
      \new Staff = "upper"  \upperThree
      \new Staff = "lower"  \lowerThree
    >>
    \midi { 
      \tempo 4 = 60
    }
  }
}
