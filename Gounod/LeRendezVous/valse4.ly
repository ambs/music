
sm = \tweak #'font-size #-3 \etc 

fourthValseUpper = \relative c'' {
  \clef treble
  \key g \major
  \time 3/4
 
  b4( c d) | d2( g,4) | g( b e) | e2( d4) | c4( d e)| e2( fis,4) |

  fis'4( e c) | b2. | b4( c d) | d2( g,4)| g'( fis e) | e2( d4) | d( e eis) |

  fis2( a,4) | e'!( b cis | d2.) | %\smallerOctaves { 
    <b \sm b'>4( <c! \sm c'!> <d \sm d'>) | q2( <g, \sm g'>4) |
  q( <b \sm b'> <e \sm e'>) | <e \sm e'>2( <d \sm d'>4) |

  <c \sm c'>4( <d \sm d'> <e \sm e'>) | q2( <fis, \sm fis'>4) | <fis' \sm fis'>4( 
    <e \sm e'> <c \sm c'>) |
  <b \sm b'>2. | q4( <c \sm c'> <d \sm d'>) | q2( <g, \sm g'>4) | <g' \sm g'>( 
    <fis \sm fis'> <e \sm e'>) |

  <e \sm e'>2( <d \sm d'>4) | <c \sm c'>4( <d \sm d'> <e \sm e'>) | q2^>( <fis, \sm fis'>4) |
  <c' \sm c'>4( <b \sm b'> <a \sm a'>) | <g \sm g'> 
    %}
     \acciaccatura a'8 g4-. \acciaccatura a8 g4-. |
  \acciaccatura a8 g4-. \acciaccatura a8 g4-. \acciaccatura a8 g4-. | d'2^> d4^> ~ |

  %%% ---

  d4 c8[( b c a)] | g2^> g4^> ~ | g a8[( g a c)] | d2^> d4^> ~ | d4 c8[( b c a)] | g2^> g4^> ~|

  g4 b8[( a g f)]| \acciaccatura {e16[ f]} e4( dis e) |
  <b b'>2 <a a'>4| <g g'> <fis fis'> <g g'> | <e' e'>2 <ees ees'>4 |
  <d d'> <cis cis'> <c c'>

  <b b'> <c c'> <fis, fis'> | <g g'> \acciaccatura a'8 g4-. \acciaccatura a8 g4-. |
  \acciaccatura a8 g4-. \acciaccatura a8 g4-. \acciaccatura a8 g4-. |
  d'2^> d4^> ~ | d4 c8[( b c a)] | g2^> g4^> ~ |

  g4 a8[( g a c)] | d2^> d4^> ~ | d4 c8[( b c a)] | g2^> g4^> ~| g4 b8[( a g f)] |
  \acciaccatura { e16[ f]} e4( dis e) |

  <b b'>2 <a a'>4|<g g'> <fis fis'> <g g'> | <e' e'>2 <ees ees'>4 |
  <d d'>4 <cis cis'> <c c'> | <b b'> <c c'> <fis, fis'> |
  <g g'> <b d g>8[ q] q4 | q4 r \bar "|."
}

fourthValseLower = \relative c' {
  \clef bass
  \key g \major
  \time 3/4

  R1*3/4 | g4 <b d> q| d, <b' d> q|fis <c' d> q|d, <c' d> q|a <c d> q|

  d, <c' d> q|g <b d> q|d, <b' d> q|g <b d> q|g <b d e> q|a <d fis> q| b <d gis> q|

  a <d fis a> <d fis> | a <e' g> q | <d fis> d, r | R1*3/4  |
  g4 <b d> q | d, <b' d> q | fis <c' d> q |

  d,4 <c' d> q|a <c d> q|d, <c' d> q|g <b d> q|d, <b' d> q|g <b d> q| d, <b' d> q|

  fis <c' d> q|d, <c' d> q|a <c d> q|d, <c' d> q|<d b g> r r |R1*3/4|g,4 <b f'> q|

  %% --

  a <c f> q|b <d f> q|a <c f> q|g <b f'> q|a <c f> q|b <d f> q|

  g, <b d f> q|a, <g' c e> q|a, <a' c e> q|d, <b' d> q|d, <g b> q|d <fis c'> q|

  d <a' c> q|<g b> r r|R1*3/4|g4 <b f'> q|a <c f> q|b <d f> q|

  a <c f> q|g <b f'> q|a <c f> q|b <d f> q|g, <b d f> q|c, <g' c e> q|

  a, <a' c e> q|d, <b' d> q|d, <g b> q|d <fis c'> q|d <a' c> q|<g b> d b | g r \bar "|."
}



%%%% DYNAMICS

fourthValseDynamics = {
  s2.\p s2.\> s2.\! s2.\> s2.\! s2.\>
  s2.\! s2. s2. s2.\>
  \set crescendoSpanner = #'text 
  \set crescendoText = \markup \italic "cre"
  s2.\< s4.
  \set crescendoText = \markup \italic "scen"
  s4.\< s2.
  s2 s4\do s2.\f s2. s8 s2\ff s8 s2.\> s2.\! s2.\>
  s2.\! s2.\> s2.\! s2. s2. s2.\>
  \set crescendoText = \markup \italic "cresc"
  s2.\<
  \set decrescendoSpanner = #'hairpin
  s2.\> s2.\! 
  \set decrescendoSpanner = #'text
  \set decrescendoText = \markup \italic "dim."
  s2 s4\> s2. s4 s2\pp s2. s2.

  %%% ----
  \set crescendoSpanner = #'text
  \set crescendoText = \markup \italic "cre"
  s2. s2. s2. s2. s2. s2 s4\< 
  \set crescendoText = \markup \italic "scen"  
  s8 s8\< s4 s8 s8\do s2.\f s2.
  \set crescendoText = \markup \italic "cre"
  s2.\< s4. 
  \set crescendoText = \markup \italic "scen"
  s4.\<  s2. 
  s4 s4\do s4 s4 s2\pp s2. s2. s2. s2.

  s2. s2. s2. s2 
  \set crescendoText = \markup \whiteout\italic "cresc."
  s4\< s2. s2.\f

  s2.
  \set crescendoText = \markup \italic "cre"
  s2.\< s4.
  \set crescendoText = \markup \italic "scen"
  s4.\< s2. s4\do s2 s8 s2\ff s8 s2
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
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/14)
    }
    \set Score.doubleRepeatType = #":|.|:"
  }
}

