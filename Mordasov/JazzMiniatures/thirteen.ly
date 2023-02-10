
upperThirteen = \relative c'' {
  \clef treble
  \key g \major
  \time 4/4

  % 1
  b8[^\markup{\italic{Moderato}} d] ~ d2. |
  e8[ g] ~ g2. |
  b,8[ d] ~ d4 e d8[ f] ~ |

  % 2
  f2. r4 | 
  e8[ g]~ g2. |
  a8[ g] ~ g2. |

  % 3
  b,8[ d] ~ d4 e d8[ f] ~ |
  f2. r4 | 
  e8[ g] ~ g4 g,2 |

  % 4
  r8 d e8.[ d16] bes'8.[ a16 g8. e16] |
  <<
    \new Voice \relative { \voiceOne
      g'1 ~ g2 b\rest 
    } \\
    \new Voice \relative { \voiceTwo
      r4 d' cis c8[ b] ~ b2
    }
  >>
 }


lowerThirteen = \relative c' {
  \clef bass
  \key g \major
  \time 4/4

  <<
    \new Voice \relative { \voiceOne
      d'2( e8.[ ees16] d4) | bes2( a8.[ aes16] g4) 
    } \\
    \new Voice \relative { \voiceTwo
      <g b>1 | <e c>
    }
  >>
  \oneVoice <g b d>2 d |

  % 2
  <g b d>4 a^- ais^- b^- |
  <<
    \new Voice \relative { \voiceOne
      g2( a8.[ aes16] g4) | bes2( a8.[ aes16] g4) 
    } \\
    \new Voice \relative { \voiceTwo
      <c e>1 | <cis e>
    }
  >>

  <d, g b>1
<<
    \new Voice \relative { \voiceOne
      d'4 cis c b
    } \\
    \new Voice \relative { \voiceTwo
      <e gis>1 |
    }
  >>
  \oneVoice
  <a' c e>2. ees4 |

  % 4
  d2 <fis! c'> | r4 b, bes a8[ g] ~ | g2 g,4 r \bar "|."
  
}



\bookpart {
  \header {
    subtitle = "Little Blues"
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" 
      <<
      \new Staff = "upper" << \upperThirteen >>
      \new Staff = "lower" <<  \lowerThirteen >>
    >>
    \layout { }
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" <<
      \new Staff = "upper"  \upperThirteen
      \new Staff = "lower"  \lowerThirteen
    >>
    \midi { 
      \tempo 4 = 100
    }
  }
}
