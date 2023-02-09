% moderato
upperTen = \relative c'' {
  \clef treble
  \key g \major
  \time 4/4

  % 1
  b8.^\markup{\italic{Moderato}} c16 d8. g,16 ~ g2 ~ |
  g4 e8.( g16 bes8.[ a16 g8. e16] |
  d8. g16~ g4) r8 d e8. f16 ~ |

  % 2
  f2. r4 |
  bes8. c16 d8. g,16 ~ g2 ~ |
  g4 e8. g16 bes8.[ a16 g8. e16] |

  % 3
  g2 \tuplet 3/2 { g4 fis f} |
  e2. r4 |
  <<
    \new Voice \relative { \voiceOne 
        g'8.[ a16 b8. e,16] ~ e2 |
        % 4
        r8. d16([ e8. d16] bes'8.[ a16 g8. e16] |
        g1 ~ g2) 
    } \\
    \new Voice \relative { \voiceTwo
        c'2. c4 | 
        % 4
        c1 |
        b4 c d c8 b ~ | b2 
    }
  >>
  \oneVoice 
  r2 \bar "|."


}

lowerTen = \relative c' {
  \clef bass
  \key g \major
  \time 4/4

  <g b d e>2. <f b>8 <e bes'^> > ~ |
  q2 c_>
  <<
    \new Voice \relative { \voiceOne
        d4 e f e |
        % 2
        d8. g16( f4) e d | 
    } \\
    \new Voice \relative { \voiceTwo
        g,1 |
        % 2
        g4 r r2 |
    } 
  >>
  \oneVoice
  <e bes' d>2. <ees a>8 <e bes'!^> >~ |
  q2 c_> | 

  % 3
  g4_- d'^- \tuplet 3/2 { <b' d> <ais cis> <a c>} |
  <gis b>8. e16( d4) c_- b_- |
  <a e'>2. <a g'>4 |

  % 4
  <d fis>1
  <<
    \new Voice \relative { \voiceOne 
        d4 e f e8 d ~ | d2 s2
    } \\
    \new Voice \relative { \voiceTwo 
        g,1 ~ g8. cis,16( d4) g,_> d''  \rest
    }
  >>

}




\bookpart {
  \header {
    subtitle = "Muleteer (Blues)"
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" 
      <<
      \new Staff = "upper" << \upperTen >>
      \new Staff = "lower" <<  \lowerTen >>
    >>
    \layout { }
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" <<
      \new Staff = "upper"  \upperTen
      \new Staff = "lower"  \lowerTen
    >>
    \midi { 
      \tempo 4 = 90
    }
  }
}
