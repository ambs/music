
upperThree = \relative c'' {
  \clef treble
  \key f \major
  \time 4/4

  % 1
  a2^\markup{\italic{Moderato}} c8( a4-.) d8->( |
  d2.) r4 | 
  r8 a4._- c8( a4-.) e'8->( |
  e4) ees8[ d] ~ d4 r |

  % 2
  r4 c8.[\( d16] c8.[ <a e'-> >16] ~ q4\) |
  a8.[ bes16 a8. <e c'>16] ~ q4 f |
  g2 d'8.[ c16 g8. a16] ~ |

  % 3
  a2. r4 |
  <<
    \new Voice {\voiceOne bes2 c8( bes4_.) }
    \\
    \new Voice {\voiceTwo r4 <d, f>2  }
  >>
  \oneVoice <des f des'^> >8 ~ | q2 f8.[ g16 a8. bes16] |

  % 4
  <<
    \new Voice {\voiceOne \stemNeutral <g c>4 <aes d> <bes e>8( <c f>4) \tieNeutral <b e g^> >8 ~ | <b g'>1 }
    \\
    \new Voice {\voiceTwo s2 s4. \once   \hide Stem e8 ~ | \stemUp     \once \override NoteColumn.force-hshift = #0.3 e4 ees d2 }
  >>
  \oneVoice f8.[ d16 bes8. d16] ~ d8 r d8.([ bes16] |

  g8. bes16 ~ bes8) r a8.[ aes16 g8. f16] ~ | f8 r r4 <ees bes>2( | <a d>1\fermata)
}

lowerThree = \relative c' {
  \clef bass
  \key f \major
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
  g8.[~ f'16~] <g, f' bes>2 <f' bes>4 |
  g,8.[ f'16] bes4 <g bes des>2 |

  % 4
  <a e'>4 <b! f'> <cis g'>8( <d a'>4) <g, f'^> >8 ~ |
  q2. g,4 |
  <<
    \new Voice { \voiceOne <bes' d f>1 ~ q s1 s1}
    \\
    \new Voice { \voiceTwo r4 r4 a2 <g bes>2 <e bes' des>4. <f a c>8 ~ | q r r4 \stemUp  \slurUp <ges, des'>2( <f c'>1_\fermata)}
  >>
  \bar "|."
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
