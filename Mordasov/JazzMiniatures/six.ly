% Moderato
upperSix = \relative c' {
  \clef treble
  \key g \major
  \time 4/4



}

lowerSix = \relative c {
  \clef bass
  \key g \major
  \time 4/4

}




\bookpart {
  \header {
    subtitle = "Seller, Apple"
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" 
      <<
      \new Staff = "upper" << \upperSix >>
      \new Staff = "lower" <<  \lowerSix >>
    >>
    \layout { }
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" <<
      \new Staff = "upper"  \upperSix
      \new Staff = "lower"  \lowerSix
    >>
    \midi { 
      \tempo 4 = 90
    }
  }
}
