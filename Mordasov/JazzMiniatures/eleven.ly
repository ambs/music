
% agile

upperEleven = \relative c' {
  \clef treble
  \key g \major
  \time 4/4

  % 1
  <b_. e g^^>4 r q8.([ a'16 ais8. b16)]  |
  <g e b_->8. q16_. r8. q16_> ~ q2 |
  q4^^ r q8.[ a16 ais8. b16] |

  % 2
  <g f b,>1 |
  <g^^ e bes_.>4 r q8.([ gis16 a8. bes16)] |
  <g e bes_->8 q_. r8. q16_- ~ q2 |

  % 3
  <b,!_. e g^^>4 r q8.([ a'16 ais8. b16)] |
  <e, d gis,>1 |
  <c e b'>8.[ g'16 <e c>8. <g e c_> >16] ~ q2 |

  % 4
  <b e, c>8.([ g16 e8. <b' fis c_.>16]) r8 d,( e4_.) |
  <e_. g>8 r r4 r2 |
  r4 r8 <e b f_> >8 ~ q2 \bar "|."
 }


lowerEleven = \relative c {
  \clef bass
  \key g \major
  \time 4/4

  % 1
  \slurDown
  g8.[(-5 d'16-1 e8.-2 d16]-1 d,8.[ d'16 e8. d16]) |
  g,8.[( d'16 e8. d16] d,8.[ d'16 e8. d16]) |
  g,8.[( d'16 e8. d16] d,8.[ d'16 e8. d16]) |

  % 2
  g,8.[( g'16 f8. g,16]) e'8.[ d16] \tuplet 3/2 {g,8[ a b]} |
  \slurUp
  c8.[( g'16 a8. g16] g,8.[ g'16 a8. g16]) |
  c,8.[( g'16 a8. g16]) \slurDown c,8.[( bes16 a8. aes16]) |

  % 3
  \slurDown
  g8.[( d'16 e8. e16] d,8.[ d'16 e8. d16]) |
  e,8.[( e'16 d8. e,16] c'8.[ e,16 b'8. bes16]) |
  \slurUp
  a8.[( e'16 g8. e16]) \slurDown a,8.[( b16 c8. cis16]) |

  % 4
  d4 a8.[ d,16] r4 <fis' c'>4^> |
  <g b>8 r d8.[ cis16] c8.[ d,16 b'8. g16] ~ | g8 r r g,_> ~ g2 \bar "|."
}



\bookpart {
  \header {
    subtitle = "I WIll Dance"
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" 
      <<
      \new Staff = "upper" << \upperEleven >>
      \new Staff = "lower" <<  \lowerEleven >>
    >>
    \layout { }
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" <<
      \new Staff = "upper"  \upperEleven
      \new Staff = "lower"  \lowerEleven
    >>
    \midi { 
      \tempo 4 = 105
    }
  }
}
