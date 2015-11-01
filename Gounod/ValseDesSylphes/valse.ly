
\version "2.18.2"

\header {
  title = "La Valse des Sylphes"
  composer = "Charles GOUNOD"
  dedication = "à sa fille Jeanne GOUNOD"
  meter = "Tempo di Walz"
}

upper = \relative c'' {
  \tempo 2. = 69
  \clef treble
  \key d \major
  \time 3/4

  % line 1 ----
  r4 a fis | r cis' a | r e' cis | r g' e | 
  b' a g | e' d cis | g' fis e | d cis b |

  % line 2 ----
  a gis a | g! a fis | a f a | e a r\fermata
  \repeat volta 2 {
    d,2 e4 | fis2 g4 | a2 b4 | a2 fis4 | d2 e4 |

  % line 3 ----
    fis4 \acciaccatura a8 g4 fis | e a fis | e r a,
  }
  \repeat volta 2 {
    e'2 g4 | fis2 e4 | d2 fis4 | a2 b4 | a2 e4 | g fis e | fis e d |

  % line 4 ----
    b4 cis d | e2 g4 | fis2 e4 | d2 d'4 | cis2 b4 | cis a b | g e fis |
    d a e' | d r a |
  }

  % line 5 ------
  \key a \major
  \repeat volta 2 { 

    \acciaccatura a8 <a cis> r r4 \acciaccatura a'8 <a cis> r |
    \acciaccatura gis8 <gis b> r r4 \acciaccatura fis8 <fis a> r |
    \acciaccatura e8 <e gis> r r4 \acciaccatura d8 <d fis> r |
    \acciaccatura cis8 <cis e> r r4 \acciaccatura c8 <c dis> r |
    \acciaccatura b8 <b d!> r 
    \acciaccatura cis8 <cis e> r \acciaccatura e <e gis> r |

  % page 2 - line 1 --------
    \acciaccatura d8 <d fis> r \acciaccatura cis <cis e> r
    \acciaccatura c!8 <c dis> r |
    \acciaccatura b8 <b d!> r \acciaccatura cis <cis e> r
    \acciaccatura e <e gis> r |
    \acciaccatura d <d fis> r \acciaccatura cis <cis e> r 
    \acciaccatura b <b d> r |
    \acciaccatura a <a cis> r r4 \acciaccatura a'8 <a cis> r |
    \acciaccatura gis8 <gis b> r r4 \acciaccatura fis8 <fis a> r |

  % page 2 - line 2 --------
    \acciaccatura e8 <e gis> r r4 \acciaccatura d8 <d fis> r8 |
    \acciaccatura cis8 <cis e> r r4 \acciaccatura c!8 <c dis> r |
    \acciaccatura b <b d> r \acciaccatura cis <cis e> r 
    \acciaccatura e <e gis> r |
    \acciaccatura d8 <d fis> r \acciaccatura b <b d> r 
    \acciaccatura gis8 <gis b> r |
    \acciaccatura e8 <e a> r \acciaccatura a8 <a cis> r
    \acciaccatura cis8 <cis e> r |
    \acciaccatura e8 a r r4 r4 
  }

  % page 2 - line 3 -------
  \key d \major
  \repeat volta 2 { 
    d,2 e4 | fis2 g4 | a2 b4 | a2 fis4 | d2 e4 | fis \acciaccatura a8 g4 fis |
    e a fis | e r a,
  }

  % page 2 - line 4 ------
  e'2 g4 | fis2 e4 | d2 fis4 | a2 b4 | 
  a2 e4 | g fis e | fis e d | b cis d |

  % page 2 - line 5 ------
  e2 g4 | fis2 e4 | d2 d'4 | cis2 b4 | cis a b | g e fis | d a e' |
  d cis c! \bar "||"


  % page 3 - line 1 -----
  \key g \major 
  b2 c4 | d2 e4 | b2 c4 | d2 e4 | b2 g'4 | fis2 e4 | fis d e | c a ais |

  % page 3 - line 2 -----
  b2 c4 | d2 e4 | b2 c4 | d2 e4 | fis2 cis4 | e dis cis | dis b dis | d! a c! |
}

lower = \relative c' {
  \clef bass
  \key d \major
  \time 3/4

  % line 1
  a2 e4 | cis'2 a4 | e'2 cis4 | \clef treble g'2 e4 |
  b' a g | e' d cis | g' fis e | d cis b |
  
  % line 2
  a gis a | g! a fis | a f a | e a r\fermata
  \repeat volta 2 {
    \clef bass 
    <d,,, a'>4 <fis' a d>2 ~ | q4 q2 |
    <d, a'>4 <fis' a d>2 ~ | q4 q2 |
    <d, a'>4 <fis' a d>2 ~ 

  % line 3
    q4 q2 | <a,, a'>4 <g'' a cis>2 ~ | q4 q2
  }
  \repeat volta 2 {
    <a,, a'>4 <g'' a cis>2 ~ | q4 q2 |
    <d, a'>4 <fis' a d>2 ~ | q4 q2 |
    <a,, a'>4 <g'' a cis>2 ~ | q4 q2 |
    <d, a'>4 <fis' a d>2 ~

  % line 4 -------
    q4 q2 | <a,, a'>4 <g'' a cis>2 ~ | q4 q2 |
    <d, a'>4 <fis' a d>2 ~ | q4 q2 | <a,, a'>4 <g'' a cis>2 ~ | q4 q2 |
    <d, a'>4 <fis' a d>2 ~ | q4 q4 r4 |    
  }

  % line 5 --------
  \key a \major
  \repeat volta 2 {
    \grace s8
    <a, e'>8 r <a' cis e>4 r | r q r |
    <a, e'>8 r <a' cis e>4 r | r q r |
    <e, e'>8 r <gis' d' e>4 r |

  % page 2 - line 1 --------
    r4 q r | <e, e'>8 r <gis' d' e>4 r | r q r |
    <a, e'>8 r <a' cis e>4 r | r q r |

  % page 2 - line 2 --------
    <a, e'>8 r <a' cis e>4 r | r q r |
    <e, e'>8 r <gis' d' e>4 r | r q r |
    <a, e'>8 r <a' cis e>4 r | <a,, a'>8 r r4 r4
  }

  % page 2 - line 3 -------
  \key d \major
  \repeat volta 2 { 
    <a' d,>4 <fis' a d>2 ~ | q4 q2 |
    <a, d,>4 <fis' a d>2 ~ | q4 q2 | 
    <a, d,>4 <fis' a d>2 ~ | q4 q2 |
    <a, a,>4 <g' a cis>2 ~ | q4 q2 |
  }

  % page 2 - line 4 ------
  <a, a,>4 <g' a cis>2 ~ | q4 q2 |
  <a, d,>4 <fis' a d>2 ~ | q4 q2 |
  <a, a,>4 <g' a cis>2 ~ | q4 q2 |
  <a, d,>4 <fis' a d>2 ~ | q4 q2 |

  % page 2 - line 5 ------
  <a, a,>4 <g' a cis>2 ~ | q4 q2 |
  <a, d,>4 <fis' a d>2 ~ | q4 q2 |
  <a, a,>4 <g' a cis>2 ~ | q4 q2 |
  <a, d,>4 <fis' a d>2   | <d d,>4 r r 


  % page 3 - line 1 -----
  \key g \major
  g,8 r <d' g b>2 | d,8 r <d' g b>2 |
  g,8 r <d' g b>2 | d,8 r <d' g b>2 |
  g,8 r <d' g b>2 | d,8 r <d' g b>2 |
  a8 r <d fis c'>2 | d,8 r <d' fis c'>2 |

  % page 3 - line 2 -----
  g,8 r <d' g b>2 | d,8 r <d' g b>2 |
  g,8 r <d' g b>2 | b8 r <d g b>2 |
  fis,8 r <fis' ais e'>2 | fis,8 r <fis' ais e'>2 | 
  b,8 r <fis' b dis>2 | d,!8 r <d' fis a c!>2 |
}

dynamics = {
  % line 1
  s2.\p s4 s2-\markup{\italic Cre-} s2.-\markup{\italic{scen-}}
  s2.-\markup{\italic{do.}} s2.\f s2. s2. s2.-\markup{\italic{Di-}}

  % line 2
  s2.-\markup{\italic{mi-}} s2.-\markup{\italic{nuen-}} s2.-\markup{\italic{do.}}
  s2.\p s2.\p s2. s2. s2. s2.

  % line 3
  \repeat unfold 9 { s2. }

  % line 4
  \repeat unfold 9 { s2. }

  % line 5
  \repeat unfold 5 { s2. }

  % page 2, line 1
  \repeat unfold 5 { s2. }

  % page 2, line 2
  \repeat unfold 6 { s2. }

  % page 2, line 3
  s4\pp s2 \repeat unfold 6 { s2. }

  % page 2, line 4
  \repeat unfold 9 { s2. }

  % page 2, line 5
  \repeat unfold 9 { s2. }


  % page 3, line 1 --------
  s4\p s2 s2. s2. s2. s4\< s2 s2 s2\! s4\> s2.  s4\!

  % page 3, line 2 --------
  s4\p s2 s2. s2. s2. s4\< s2 s2 s2\! s4\> s2  s4\! s4

}

pedal = {
  % line 1
  \repeat unfold 8 { s2. }

  % line 2
  \repeat unfold 4 { s2. }
  s4\sustainOn s2 s2 s4\sustainOff
  s4\sustainOn s2 s2 s4\sustainOff
  s4\sustainOn s2 

  % line 3
  s2 s4\sustainOff s4\sustainOn s2 s2 s4\sustainOff
  s4\sustainOn s2 s2 s4\sustainOff s4\sustainOn s2 s2 s4\sustainOff
  s4\sustainOn s2 s2 s4\sustainOff s4\sustainOn s2

  % line 4
  s2 s4\sustainOff s4\sustainOn s2 s2 s4\sustainOff s4\sustainOn s2 s2 s4\sustainOff
  s4\sustainOn s2 s2 s4\sustainOff s4\sustainOn s2 s2 s4\sustainOff

  % line 5
  \repeat unfold 5 { s2. }

  % page 2, line 1
  \repeat unfold 5 { s2. }

  % page 2, line 2
  \repeat unfold 6 { s2. }

  % page 2, line 3
  \repeat unfold 4 { s4\sustainOn s2 s2 s4\sustainOff }

  % page 2, line 4
  \repeat unfold 4 { s4\sustainOn s2 s2 s4\sustainOff }

  % page 2, line 5
  \repeat unfold 4 { s4\sustainOn s2 s2 s4\sustainOff }


  % page 3, line 1
  \repeat unfold 8 { s2. }

  % page 3, line 2
  \repeat unfold 8 { s2. }
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Dynamics = "Dynamics_pf" \dynamics
    \new Staff = "lower" \lower
    \new Dynamics = "Dynamics_pedal" \pedal
  >>
  \layout { }
  \midi { }
}