
upperseventeen = \relative c' {
  \clef treble
  \key g \major
  \time 4/4
  \partial 4.
  d8(^\markup{\italic{Vivace}} e4_.) |
  <<
    \new Voice \relative {
        \voiceOne
        g'2^> r8 d8( e4_.) | g2^> r8 d8( e4_.) | <g b,>4 <b d,> <c e,>8[ <b d,>] r <g b,>_> ~ |
        % 2
        \oneVoice g4. g8 r ees( f4_.)

    }
    \new Voice \relative {
        \voiceTwo
        r8 <e' d b> r4 q8 r r4 | r8 <e d bes> r4 q8 r r4 | s1 |
        % 2
        c2 s2
    }
  >>
  \oneVoice <g b,>8 r r4 r2 | r2 <e b>2^\fermata \bar "|."
  
  
 }


lowerseventeen = \relative c {
  \clef bass
  \key g \major
  \time 4/4
    \partial 4. r4 r8 |
    g4 b d g, | c, e g c, | g' fis e d |
    % 2 
    <<
        \new Voice \relative {
            \voiceOne
            ees2. r4 
        }
        \new Voice \relative {
            \voiceTwo
            aes,4 bes c aes 
        }
    >> | <g d'>8 b,4._> c4 cis  8[ d] ~ | d r r4 <g f'>2^\fermata \bar "|."
}



\bookpart {
  \header {
    subtitle = "See you tomorrow"
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" 
      <<
      \new Staff = "upper" << \upperseventeen >>
      \new Staff = "lower" << \lowerseventeen >>
    >>
    \layout { }
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" <<
      \new Staff = "upper"  \upperseventeen
      \new Staff = "lower"  \lowerseventeen
    >>
    \midi { 
      \tempo 4 = 110
    }
  }
}
