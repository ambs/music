fourthValseUpper = \relative c'' {
  \clef treble
  \key g \major
  \time 3/4
 
  b4( c d) | d2( g,4) | g( b e) | e2( d4) | c4( d e)| e2( fis,4) |

  fis'4( e c) | b2. | b4( c d) | d2( g,4)| g'( fis e) | e2( d4) | d( e eis) |
}

fourthValseLower = \relative c' {
  \clef bass
  \key g \major
  \time 3/4

  R1*3/4 | g4 <b d> q| d, <b' d> q|fis <c' d> q|d, <c' d> q|a <c d> q|

  d, <c' d> q|g <b d> q|d, <b' d> q|g <b d> q|g <b d e> q|a <d fis> q| b <d gis> q|
}



%%%% DYNAMICS

fourthValseDynamics = {
  s2.\p s2.\> s2.\! s2.\> s2.\! s2.\>
  s2.\! s2. s2. s2.\>
  \set crescendoSpanner = #'text 
  \set crescendoText = \markup \italic "cre"
  s2.\< s2 
  \set crescendoText = \markup \italic "scen"
  s4\< s2.
  s2 s4\do s2.\f s2. s2.\ff s2.\> s2.\! s2.\>
  s2.\! s2.\> s2.\! s2. s2. s2.\>
  \set crescendoText = \markup \italic "cresc"
  s2.\<

}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = "Valse 4"
    \new Staff = "upper" \fourthValseUpper
    \new Dynamics = "Dynamics_pf" \fourthValseDynamics
    \new Staff = "lower" \fourthValseLower
  >>
  \layout { 
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/12)
    }
    \set Score.doubleRepeatType = #":|.|:"
  }
}

