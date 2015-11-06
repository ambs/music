

secondValseUpper = \relative c'' {
  \clef treble
  \key g \major
  \time 3/4
  <g b>2._> | q_> | q_> ~ | b8[( c d g fis e)] | 
  <<
    { \voiceOne d2. | d2 e4 | e2. ~ | e8[( d c b a d)]}
    \new Voice {
      \voiceTwo a2. | g | fis2. | s2. 
    }
  >> \oneVoice <g b>2._> | q_> | q_> ~ | b8[( ais b cis d e)] | fis2 d4 |

  % P 1 L 3
  \acciaccatura { cis16[ d] } cis4. b8 cis4 | d2. ~ | d4( cis c!) |
  <g b>2._>|q_>|q_>~|b8[( c d g fis e)] |

}

secondValseLower = \relative c' {
  \clef bass
  \key g \major
  \time 3/4

  % P 1 L 1
  g4 <b d> q|d, <b' d> q|g <b d> q|d, <b' d> q|fis <a c d> q|e <a c d> q|

  % P 1 L 2
  d, <a' c d> q|fis <a c d> q|g <b d> q|d, <b' d> q|g <b d> q|gis <b d e> q|a <d fis> q|

  % P 1 L 3
  a <e' g> q|<d fis> a fis|d r r|g <b d> q|d, <b' d> q|g <b d> q|d, <b' d> q|

}



%%%% DYNAMICS

secondValseDynamics = {
  s2.\p s2. s2. s2. s2. s8\< s2 s8\! 
  s2. s2.\> s2.\p s2. s2. s2. s2
  \set crescendoSpanner = #'text
  \set decrescendoSpanner = #'text
  \set crescendoText = \markup \italic "cresc."
  \set decrescendoText = \markup \italic "dim."
  s4\< s2. s2.\f s4 s4\> s4 s2.\p s2. s2. s2.
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = "Valse"
    \new Staff = "upper" \secondValseUpper
    \new Dynamics = "Dynamics_pf" \secondValseDynamics
    \new Staff = "lower" \secondValseLower
  >>
  \layout { 
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/12)
    }
    \set Score.doubleRepeatType = #":|.|:"
  }
  \header {
    piece = "Nº 2"
  }
}

