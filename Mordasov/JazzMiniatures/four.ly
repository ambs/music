
upperFour = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

  % 1
  r4^\segno^\markup{\italic{Agile}} \acciaccatura dis8 e8.[ a16] dis,4. c8 |
  d!4 c8[ d] r c4._> |
  r4 \tuplet 3/2 { dis8[ e a] } dis,4 c8[ d!] ~ |
  d4 c8[ e] ~ e4 r |
 
  % 2
  r4 \acciaccatura dis8 <e a>8.[ c16] <dis a'>8.[ d16] c4 |
  r4 \acciaccatura d8 <ees a>8.[ c16] <d gis>8.[ c16] ~ c4 | 
  r4 a8.[( b16] c8.[ d16 dis8. e16] \bar "||"

  % 3
  g8.[^\coda e16 gis8. a16]) r4 r4 |
  <c f, c>8.([ a16 f8.) <d f b>16]_> ~ q2 |
  <c e b'>8.[( g'16 e8.) <c e a>16]_> ~ q2 |

  % 4
  <a d a'>8.[ f'16 d8. <b d gis>16_>] ~ q8 r <d b'>[ <c e>_>] ~ |
  q2. r4 |
  <c f c'>8.[( a'16 f8.) <d b'>16] ~ <d f b>2 |
  <c e b'>8.[( g'16 e8.) <c e a>16_>] ~ q2 |

  % 5
  <b d fis a>4 q <b d fis> <b d fis a>8[ <b d gis>_>] ~ |
  q2 r2  \mark \markup { \abs-fontsize #8 \musicglyph "scripts.segno" } \bar "||"
  g'8.[(^\coda e16 gis8. a16]) r8 <c fis b>8^.^^_\sf r4 \bar "|."
}

lowerFour = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  % 1
  a4 r g_- r |
  f_- r e_- e' |
  a,_- r g_- r |
  f_- r e8.[_- ais16] b8.[ e16] |

  % 2
  a,4_- r g_- r |
  f_- r e_- r |
  a,8_.^^ r a'8.[( b16] c8.[ d16 dis8. e16] \bar "||"

  % 3
  g8.[ e16 gis8. a16]) r4 r |
  d,,4._- g8_._> r cis( d4) |
  c,4._- f8_._> r b( c4) |

  % 4
  b,4._- e8_> ~ e r e'[ a,~_>] |
  a4 a8.[( b16] c8.[ d16] e4) |
  d,4._- g8_._> r cis( d4) |
  c,4._- f8_._> r e' d8.[ c16] |

  % 5
  b4._- fis'8 a[ fis] b,[ e_>] ~ |
  e[ e(] d4) c_- b_- \bar "||"
  
  g'8.([ e16 gis8. a16]) r8 a,,^^_. r4 \bar "|."
}




\bookpart {
  \header {
    subtitle = "A Long Time Ago"
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" 
      <<
      \new Staff = "upper" << \upperFour >>
      \new Staff = "lower" <<  \lowerFour >>
    >>
    \layout { }
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" <<
      \new Staff = "upper"  \upperFour
      \new Staff = "lower"  \lowerFour
    >>
    \midi { 
      \tempo 4 = 90
    }
  }
}
