

firstValseUpper = \relative c'' {
  \clef treble
  \key d \major
  \time 3/4

  %% page 1, line 1
  \partial 4 a4( | d-!) d,8[_( fis] d'4-> | cis4)-! d,8[_( fis] cis'4-> | b)-!
  e,8([ g] a4^> ~ | a8)[ a_( gis a gis a] | b4)-! e,8[( g!] a4^> ~ |

  %% page 1, line 2
  a8)[ a_( gis a gis a] | b4)-! d,8[_( fis] a4^> ~ | a8)[ a_( gis a b a] | d4)-!
  d,8[_( fis] d'4^> | cis)-! d,8[_( fis] cis'4^> | b4)-! e,8[_( g] a4^> ~ |
  a8)[ a_( gis a gis a] |

  %% page 1, line 3
  b4)-! e,8[_( g!] b4^> | cis4)-! e,8[_( g] cis4^> | d2.) |
  r8 a'8[^( gis a b a] | d4)-! d,8[^( fis] d'4^> | cis4)-!
  d,8[^( fis] cis'4^> | b)-! e,8[^( g] a4^> ~ 

  %% page 1, line 4
  a8)[ a^( gis a gis a] | b4)-! e,8[( g!] a4^> ~ | a8)[ a^( gis a gis a] | b4)-!
  d,8[ fis] a4^>~ | a8[ a^( gis a b a] | d4)-! d,8[( fis] d'4^> |

  % page 1, 5 line
  cis)-! d,8([ fis] cis'4^> | b)-! e,8[( g] a4^> ~ |
  a8)[ a( gis a gis a] | b4)-! e,8[( g!] b4^> | cis-!) 
  e,8[( g] cis4^> | d2. ~ | d4) r 

  % page 1, 6 line
  \repeat volta 2 {
    cis,8[( d] | b'4) b,8([ d] b'4) | gis2.^>( | a4) a,8[( cis] a'4)^> |
    e2.^>( | fis4) a,8([ b] fis'4^> | fis)-! a,8[( b] fis'4^> |

    % page 2, 1 line
    e4 gis,8[ b e d] | cis[ a b cis d e] | b'4) b,8[( d] b'4) | gis2.^>( | a4)
    a,8([ cis] a'4)^> | eis2.^>( | fis4) fis,8[( a] fis'4^>) |

    % page 2, 2 line
    fis8[( e)] e[( d)] d[( b)] | a2. ~ | a4 r
  }
  a( | d)-! d,8_([ fis] d'4^> | cis-!) d,8[_( fis] cis'4^>|b)-!
  e,8([ g] a4^> ~ | a8)[ a_( gis a gis a] |

  % page 2, line 3
  b4)-! e,8[( g!] a4^> ~ | a8)[ a_( gis a gis a] | b4)-! d,8[( fis] a4^> ~ |
  a8)[ a_( gis a b a] | d4)-! d,8[_( fis] d'4^> | cis-!) d,8[_( fis] cis'4 | b4)-!
  e,8[( g] a4^> ~ |

  %% page 2, line 4
  a8)[ a_( gis a gis a] |  
  b4)-! e,8[_( g!] b4^> | cis4)-! e,8[_( g] cis4^> | d2.) |
  r8 a'8[^( gis a b a] | d4)-! d,8[^( fis] d'4^> | cis4)-!
  d,8[^( fis] cis'4^> |

  %% page 2, line 5
  b)-! e,8[^( g] a4^> ~ 
  a8)[ a^( gis a gis a] | b4)-! e,8[( g!] a4^> ~ | a8)[ a^( gis a gis a] | b4)-!
  d,8[ fis] a4^>~ | a8[ a^( gis a b a] | d4)-! d,8[( fis] d'4^> |

  % page 2, line 6
  cis)-! d,8([ fis] cis'4^> | b)-! e,8[( g] a4^> ~ |
  a8)[ a( gis a gis a] | b4)-! e,8[( g!] b4^> | cis-!) 
  e,8[( g] cis4^> | d2. ~ | d4) r 


}

firstValseLower = \relative c {
  \clef bass
  \key d \major
  \time 3/4

  % 1 page, 1 line
  \partial 4 r4 |
  d4 <fis a> q | a, <fis' a> q | cis <e g a> q | a, <e' g a> q | cis <e g a> q |

  % 1 page, 2 line
  a, <e' g a> q | d <fis a> q | a, <fis' a> q | d <fis a> q | a, <fis' a> q |
  cis <e g a> q | a, <e' g a> q |

  % 1 page, 3 line
  cis <e g a> q | a, <e' g a> q | d < fis a> q | d, r r |
  d' <fis a> q | a, <fis' a> q | cis <e g a> q |

  % 1 page, 4 line
  a, <e' g a> q | cis <e g a> q | a, <e' g a> q | d <fis a> q | a, <fis' a> q |
  d <fis a> q |

  % 1 page, 5 line
  a, <fis' a> q|cis <e g a> q|a, <e' g a> q| cis <e g a> q|a, <e' g a> q|
  d <fis a> q | d, r 

  % 1 page, 6 line
  \repeat volta 2 {
    r | gis' <b d e> q | e, <b' d e> q | a <cis e> q |
    cis, <e a> q | d <fis a b> q | dis <fis a b> q |

    % page 2, line 1
    e4 <gis b e> q|a <cis e> q|gis <b d> q|eis, <b' d> q|fis <a cis> q|
    cis, <gis' b> q| d <fis a> q |

    % page 2, line 2
    e! <gis b d> q|<a cis> <cis e> q| a, r
  }
  r | d <fis a> q|a, <fis' a> q|cis <e g a> q|a, <e' g a> q |

  % page 2, line 3
  cis <e g a> q|a, <e' g a> q|d <fis a> q|a, <fis' a> q|d <fis a> q|
  a, <fis' a> q|cis <e g a> q |

  % page 2, line 4
  a, <e' g a> q | cis <e g a> q | a, <e' g a> q | d < fis a> q | d, r r |
  d' <fis a> q | a, <fis' a> q | 

  % page 2, line 5
  cis <e g a> q | a, <e' g a> q | cis <e g a> q | a, <e' g a> q | d <fis a> q |
   a, <fis' a> q | d <fis a> q |

  % page 2, line 6
  a, <fis' a> q|cis <e g a> q|a, <e' g a> q| cis <e g a> q|a, <e' g a> q|
  d <fis a> q | d, r  \bar "|."
}



%%%% DYNAMICS

firstValseDynamics = {
  s4\p | \repeat unfold 15 { s2. } s8 s2\mf s8
  \repeat unfold 15 { s2. } s2 

  \repeat volta 2 {
    s4\ff s2. s2. s2. s2. s2.\p s2.
    \set crescendoSpanner = #'text
    \set crescendoText = \markup \whiteout \italic "cresc."
    s4 s4 s4\< s2. s2.\ff s2. s2. s2. s2.\p
    s8 s8\< s2 s16 s2\ff s8. s2
  }
  s4\p \repeat unfold 15 { s2. } s16 s2\mf s8.
  \repeat unfold 15 { s2. } s2
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = "Valse 1"
    \new Staff = "upper" \firstValseUpper
    \new Dynamics = "Dynamics_pf" \firstValseDynamics
    \new Staff = "lower" \firstValseLower
  >>
  \layout { 
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/8)
    }
    \set Score.doubleRepeatType = #":|.|:"
  }
}



