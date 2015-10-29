
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

  % line 1
  r4 a fis | r cis' a | r e' cis | r g' e | 
  b' a g | e' d cis | g' fis e | d cis b |

  % line 2
  a gis a | g! a fis | a f a | e a r\fermata
  \repeat volta 2 {
    d,2 e4 | fis2 g4 | a2 b4 | a2 fis4 | d2 e4 |
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

  }
}

dynamics = {
  % line 1
  s2.\p s4 s2-\markup{\italic Cre-} s2.-\markup{\italic{scen-}}
  s2.-\markup{\italic{do.}} s2.\f s2. s2. s2.-\markup{\italic{Di-}}

  % line 2
  s2.-\markup{\italic{mi-}} s2.-\markup{\italic{nuen-}} s2.-\markup{\italic{do.}}
  s2.\p s2.\p s2. s2. s2. s2.

}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Dynamics = "Dynamics_pf" \dynamics
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}