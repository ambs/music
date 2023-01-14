
upperThree = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4

  % 1
  a2^\markup{\italic{Moderato}} c8( a4-.) d8->( |
  d2.) r4 | 
  r8 a4._- c8( a4-.) e'8->( |
  e4) ees8[ d] ~ d4 r |

  % 2
  r4 c8.[\( d16] c8.[ <a e'-> >16] ~ q4\) |
  a8.[ b16 a8. <e c'>16] ~ q4 f |
  g2 d'8.[ c16 g8. a16] ~ |

  % 3
  a2. r4 |
  <<
    \new Voice {\voiceOne b2 c8( b4_.) }
    \\
    \new Voice {\voiceTwo r4 <d, f>2  }
  >>
  \oneVoice <des f des'^> >8 ~ | q2 f8.[ g16 a8. b16] |
}

lowerThree = \relative c' {
  \clef bass
  \key c \major
  \time 4/4

  <<
    \new Voice {
        \voiceOne
        % 1
        r4 <a c e>2 q4 | <gis d' e>1 | r4 <a c e>2 q4 | <gis d' e>1 |

        % 2
        r4 <a c f>2. | r4 <f a c>2 <e a c>4 | r4 <ees g c>2 q4 |

        % 3
        r4 <d fis c'> ~ <e g c> ~ <fis a c> |
    }
    \\
    \new Voice {
        \voiceTwo
        % 1
        f,1 | r4 e'4 b! e, | f1 | r4 e' b! e, |
        % 2
        f2. c'4 | f,2. r4 | ees1 |
        % 3
        d1
    }
  >>
  \oneVoice
  \set tieWaitForNote = ##t
  g8.[~ f'16~] <g, f' b>2 <f' b>4 |
  g,8.[ f'16] b4 <g b des>2 |
}



\bookpart {
  \header {
    subtitle = "Last Summer"
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
      \tempo 4 = 90
    }
  }
}
