
upperFifteen = \relative c' {
  \clef treble
  \key d \major
  \time 4/4

  % 1
  \myT fis^\markup{\italic{Agile}} g  \myT a d,_> ~ d2 |
  \myT fis( g \myT a c_.) r8 b4.^> |
  \myT g a \myT b e,_> ~ e2 |

  % 2
  \myT g( a \myT b d_.) r8 cis4.^> |
  cis8( a4_.) a8_>~ a2 |
  c8( fis,4_.) fis8_> ~ fis2 | 
 
   % 3
   <<
    \new Voice \relative { \voiceOne b'1 ~ b2. b4\rest | \myT b ais \myT b d_> ~ d2 | } \\
    \new Voice \relative { \voiceTwo
      r8 dis'4 dis8 e4 e | 
      eis4 \myT eis fis ~ fis4 s4 |
      <d g>2 r8 q4.^>
    }
   >>
   
   % 4
   \oneVoice cis'4 b \myT ais b_> ~ b4 |
   <<
    \new Voice \relative { \voiceOne \myT a' gis \myT a c_> ~ c2 } \\
    \new Voice \relative { \voiceTwo <c' e>2 r8 q4. }
   >>
   \oneVoice b4 a \myT g fis_> ~ fis4 |
 
  % 5
  <<
    \new Voice \relative { \voiceOne e'4 fis g \myT b d ~ d2 cis | d1 ~ d2. b4\rest } \\
    \new Voice \relative { \voiceTwo b1 | r8 <e g>4. eis2 | fis1 ~ fis2. s4 }
  >>
  \bar "|."
 }


lowerFifteen = \relative c {
  \clef bass
  \key d \major
  \time 4/4

  % 1
  <d fis a b>2 r8 d( cis4)_. |
  <<
    \new Voice \relative {\voiceOne r4 <a e> r <a dis,> }\\
    \new Voice \relative {\voiceTwo c2 b }
  >>
  \oneVoice
  <e g b d>2 r8 g( fis4^.) |

  % 2
  <<
    \new Voice \relative {\voiceOne r4 <g b d> r <gis b d> }\\
    \new Voice \relative {\voiceTwo e2 f }
  >>
  \oneVoice 
  <fis a cis e>2 r8 q4.^> |
  <fis a c e>2 r8 q4.^> |

  % 3
  r8 b,4 b8 cis4 cis |
  d4 \myT d dis ~ dis4 r |
  e b \myT e, e'_> ~ e4 |

  % 4
  <cis eis b'>2 r8 q4.^> |
  a'4 e \myT a, a'^> ~ a4 |
  <a dis, b>2 r8 q4.^> |

  % 5
  <<
    \new Voice \relative { \voiceOne
      g1 r8 <g b>4. <g cis>2 | <d! fis! b>1 ~ | <d f! b>2. f4\rest 
    } \\
    \new Voice \relative {\voiceTwo
    e4 dis d \myT cis b ~ b2 dis | r4 r a2 | d,2. s4}
  >>
  \bar "|."
}



\bookpart {
  \header {
    subtitle = "Way Home"
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" 
      <<
      \new Staff = "upper" << \upperFifteen >>
      \new Staff = "lower" << \lowerFifteen >>
    >>
    \layout { }
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" <<
      \new Staff = "upper"  \upperFifteen
      \new Staff = "lower"  \lowerFifteen
    >>
    \midi { 
      \tempo 4 = 90
    }
  }
}
