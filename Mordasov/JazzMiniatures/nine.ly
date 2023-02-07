
myT = #(define-music-function (pa pb) (ly:pitch? ly:pitch?)
        #{
            \tuplet 3/2 { $pa 4 $pb 8 }
        #})

upperNine = \relative c'' {
  \clef treble
  \key f \major
  \time 4/4

  \myT c gis a4_. f4_- r | d f \myT aes g ~ g4 | \myT c gis \myT a f_. r2 |
}

lowerNine = \relative c, {
  \clef bass
  \key f \major
  \time 4/4

  %1 
  f4 r a r | bes r c c, | f r d r | g4. c,8 ~ \myT c d \myT dis e 

}




\bookpart {
  \header {
    subtitle = "????"
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" 
      <<
      \new Staff = "upper" << \upperNine >>
      \new Staff = "lower" <<  \lowerNine >>
    >>
    \layout { }
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" <<
      \new Staff = "upper"  \upperNine
      \new Staff = "lower"  \lowerNine
    >>
    \midi { 
      \tempo 4 = 90
    }
  }
}
