
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

  }
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
    <a, e'>8 r <a' cis e>4 r | r q r |
    <a, e'>8 r <a' cis e>4 r | r q r |
    <e, e'>8 r <gis' d' e>4 r |
  }
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