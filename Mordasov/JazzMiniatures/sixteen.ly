
upperSixteen = \relative c'' {
  \clef treble
  \key f \major
  \time 4/4

  % 1
  \myT aes^\markup{\italic{Moderato}} g  \myT f c_> ~ c2 |
  r8 d \myT f g \myT aes g ~ g4 |
  <<
    \new Voice { \voiceOne \myT aes8 g \myT f c' ~ c2 
                % 2
                b4\rest <c g d>4 \myT a8 <c g d>_> ~ q4 |
                \myT aes8 g \myT f c_> ~ c2 |
                b'8\rest f \myT aes8 bes \myT ces bes ~ bes4 |
                % 3
                \myT aes g \myT f c ~ c4 \myT <ees bes g> <d a fis>8 ~ | q2 b'2\rest |
                \myT d, f \myT g aes \myT g f ~ f4 |
                % 4
                \myT d f \myT g aes \myT g c, \myT d f ~ |
                f4 b4\rest ees,4. d8 ~ d2 b'2\rest\bar "|."
    }
    \new Voice \relative { \voiceTwo a!1 | s1 | aes | s1 | a! | s1 bes | bes2 bes4. a8 ~ a4 s4 bes4. a8~ | a2 s2 \bar "|."
    }
  >>
  
  
 }


lowerSixteen = \relative c {
  \clef bass
  \key f \major
  \time 4/4

  <<
    \new Voice \relative { \voiceOne
        ees1 | aes | ees | s1 | f | aes |
        % 3
        ees2. \myT des8 c ~ |
        \myT c d, \myT ces' d, \myT bes' a ~ a4 | g'1 |
        % 4 
        e2 r4 r4 s1 s1
    }
    \new Voice \relative { \voiceTwo
        f,4 g a f | bes d f bes, | f g a g |
        \oneVoice
        f4 <ees' a> r8 q4.^>
        \voiceTwo
        bes4 c d c | bes d f d
        % 3
        f, g a s4 | s1 | g4 bes d bes |
        % 4 
        c g c,4. f8 ~ | f4 \oneVoice r4 <ges des'>4. <f c'>8 ~ | q2 f,4 r \bar "|."
    }
  >>
}



\bookpart {
  \header {
    subtitle = "Only For You (Blues)"
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" 
      <<
      \new Staff = "upper" << \upperSixteen >>
      \new Staff = "lower" << \lowerSixteen >>
    >>
    \layout { }
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" <<
      \new Staff = "upper"  \upperSixteen
      \new Staff = "lower"  \lowerSixteen
    >>
    \midi { 
      \tempo 4 = 90
    }
  }
}
