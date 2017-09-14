
\version "2.18.2"

\paper {
%   max-systems-per-page = 6
%   page-count = 4
}

\header {
  title = "Dodelinette"
  subtitle = "Lullaby"
  composer = "Charles GOUNOD"
  copyright = \markup \left-align \center-column {
     \line {
	   	"© 2017 Alberto Simões"}
   	\line {
   		\epsfile #Y #2 #"cc-by-sa.eps" "Licensed under a Creative Commons Attribution-ShareAlike 4.0 International License."
   	}
  }
   tagline = \markup \left-align \center-column {
   	\line { "Original document from IMSLP (http://imslp.org)." }
   	\line { "Typeset with GNU LilyPond (http://lilypond.org)." }
   }
}

upperA = \relative c' {
  \tempo "Allegretto" 4=80
  \clef treble
  \key g \major
  \time 4/4
%  \set fingeringOrientations = #'(left)
  \voiceOne
  
  % M1
  <b g'-3>4\(
    <b a'-4> <b b'-5> a'8[-4 b]-5 |

  % M2
  g8[-3 a-4 <d, g b-5>\) d'](-4  e[-5 d-4 b-5 g])-4 |

  % M3
  <d-3 c fis,>4\( <e-4 c g> <fis-5 c a> <e-4 c g>8[ <fis-5 a,>] |
						      
  % M4  
  <d-3 c fis,>[ <e-4 g,> <fis-5 c a>\) <b-4 d, b>]( a[-5 d,-3 d-3 g-5]) 

  % M5	      
  <g-3 b,>4\( <a-4 b,> <b-5 b,> a8[-4 b]-5 |

  % M6	      
  g8[-3 a-4 <b-5 g d>\) d](-4 e[-5 d-4 b-5 g-4]) |

  % M7
  <a-3 g cis,>4 <b-4 g d>8[\( <cis-5 e,>] <d-5 fis,-2>[ <e-5 g,-1> <fis-5 a,-2> <g-5 b,-1>]

  % M8							
  <fis-5 a,-2>[ <e-5 g,-1>\) <e-5 g,-2>( <a,-3 g e>]) a[-3( d-5]) <d fis, d>4 |

  % M9
  <b, g'-3>\( <b a'-4> <b b'-5> a'8[-4 b]-5 |

  % M10
  g[-3 a-4 <b-5 g d>\) d](-4 e[-5 d-4 b-5 g-4]) |

  % M11
  <d-3 c fis,>4\( <e-4 c g> <fis-5 c a> <e-4 c g>8[ <fis-5 a,>] |

  % M12						  
  <d-3 c fis,>8[ <e-4 g,> <fis-5 c a>\) <b-5 d, b>]( a8[-5 d,-3 d-3 g])-5 |

  % M13
  <g-3 b,>4\( <a-4 b,> <b-5 b,> a8[-4 b]-5 |

  % M14	      
  g8[-3 a-4 <b-5 g d>\) d](-4 e[-5 d-4 b-5 g-4]) |

  % M15
  <a-3 g cis,>4 <b-4 g d>8[\( <cis-5 e,>] <d-5 fis,-2>[ <e-5 g,-1> <fis-5 a,-2> <g-5 b,-1>]

  % M16							
  <fis-5 a,-2>[ <e-5 g,-1>\) <e-5 g,-2>( <a,-3 g e>]) a[-3( d-5]) <d fis, d>4 |

  % M17
  <b, d g-4>\( <c e a-5> <d f b-4> <e g c-5> |

  % M18	      
  <f g d'-5>\) e'8[(-5 c])-4 b[(-4 d)-5 c(-5 a])-4 |

  % M19
  <b, d g-4>4\( <c e a-5> <d f b-4> <e g c-5>\) |
 
  % M20
  d'8[(-3 g-5 e-5 c]-4 b[-3 g-2 c-4 e])-5 |

  % M21
  <fis, a d-4>4\( <g b e-5> <a c fis-4> <b d g-5> |		

  % M22
  <c d a'-5>\) b'8[(-5 g-4]) fis[(-4 a)-5 g-5( e)-4] |

  % M23
  <fis, a d-4>4\( <g b e-5> <a c fis-4> <b d g-5>\) |

  % M24		 
  a'8[(-3 d-5 b-5 g]-4 e[-5 c-4 a-3 fis])-2 |
		 
		}
   
upperB = \relative c' {
  \clef treble
  \key g \major
  \time 4/4
  \voiceTwo

  % M1-M4
  s2. b4 | b s4 <g' b> b, | s1 | s2 <a c>4 <b g> |

  % M5-M8
  s2. b4 | b s4 <g' b> b, | s1 | s2 <e g>4 s4 |

  % M9-M12
  s2. b4 | b s4 <g' b> b, | s1 | s2 <a c>4 <b g> |

  % M13-M16
  s2. b4 | b s4 <g' b> b, | s1 | s2 <e g>4 s4 |

  % M17-M20
  s1 | s4 <e g>4 \once \override Accidental #'stencil = ##f <d  f> <c e> |
  s1 | <f\finger \markup \tied-lyric #"1~1" g>4 <e g> d e |

  % M21-M24
  s1 | s4 <b' d>4 <a c> <g b> | s1 | <c\finger \markup \tied-lyric #"1-1" d>4 <b d> e, d |
  
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% LOWER VOICE
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


lower = \relative c {
  \clef bass
  \key g \major
  \time 4/4
%  \set fingeringOrientations = #'(left)
  % M1
  <d g,-3>4 <d d,> <d g,> <d d,> |
  % M2
  <d g,> <d d,> <d g,> <d d,> |
  % M3
  <d a-2> <d d,> <d a> <d d,> |
  % M4
  <d a> <d d,> <d g,-3> <d d,> |

  % M5
  <d g,> <d d,> <d g,> <d d,> |
  % M6
  <d g,> <d d,> <d g,> <d d,> |
  % M7
  <e-2 a> <a, a'> <d-3 a'> <a a'> |
  % M8
  <cis-4 a'> <a a'> <d-3 a'> <d a'> |

  % M9
  <d g,-3>4 <d d,> <d g,> <d d,> |
  % M10
  <d g,> <d d,> <d g,> <d d,> |
  % M11
  <d a-2> <d d,> <d a> <d d,> |
  % M12
  <d a> <d d,> <d g,> <d d,> |

  % M13
  <d g,> <d d,> <d g,> <d d,> |
  % M14
  <d g,> <d d,> <d g,> <d d,> |
  % M15
  <e-2 a> <a, a'> <d-3 a'> <a a'> |
  % M16
  <cis-4 a'> <a a'> <d-3 a'> <d a'> |

  % M17
  <g-1 f-2 d-3 g,-5>4 <g-1 e-2 c-3 g-5> <g-1 d-2 b-4 g-5> <g-1 c,-2 a-4 g-5>
  % M18
  <g-1 d-2 b-4 g-5> <g-1 e-2 c-3 g-5> <g-1 f-2 d-3 g,-5> <g-1 e-2 g,>
  % M19
  <g f d g,>4 <g e c g> <g d b g> <g c, a g>
  % M20
  <g d b g> <g e c g> <g f d g,> <g e g,>


  % M21 
  <d'-1 c-2 a-3 d,-5>4 <d-1 b-2 g-3 d-5> <d-1 a-2 fis-4 d-5> <d-1 g,-2 e-4 d-5> |
  % M22
  <d-1 a-2 fis-4 d-5> <d-1 b-2 g-3 d-5> <d-1 c-2 a-3 d,-5> <d-1 b-2 d,-5> |
  % M23
  <d c a d,> <d b g d> <d a fis d> <d g, fis d> |
  % M24
  <d a fis d> <d b g d> <c a g d> <c a fis d> |
  
}

%%%% DYNAMICS
do = #(make-dynamic-script (markup #:normal-text #:italic "do"))
dynamics = {
  % M1-M4
  s1\p
  s8\< s4 s8\! s8\> s4 s8\!
  s1
  s8\< s4 s8\! s8\> s4 s8\!

  % M5-M8
  s1
  s8\< s4 s8\! s8\> s4 s8\!
  s4 s8\< s2 s8\!
  s8\> s4 s8\! s4 s4

  % M9-M12
  s1\p
  s8\< s4 s8\! s8\> s4 s8\!
  s1
  s8\< s4 s8\! s8\> s4 s8\!

  % M13-M16
  s1
  s8\< s4 s8\! s8\> s4 s8\!
  s4 s8\< s2 s8\!
  s8\> s4 s8\! s4 s4

  % M17-M20
  s8\p s8\< s2 s8 s8\! |
  s4 s8\> s4. s4\! |
  s8\< s2 s4 s8 |
  s8\! s8 s8\> s2 s8\! |

  % M21-M24
  s4 s4\< s4 s4 s4 s4\! s4\> s4 s4\!
  s4\< s4 s4 s8 s8\! s8 s8\> s4 s8 s8\! |

  
  % % M10-13
  % \set crescendoSpanner = #'text
  % \set crescendoText = \markup \italic "cres"
  % s4 s2.\< 
  % \set crescendoText = \markup \italic "cen"
  % s1\< s4\do s2. s4 s4\> s4\! s4

  % % M14-18
  % s1\p s1 s1 s1
  % \set crescendoText = \markup \italic "cres"
  % s4 s2.\<

  % % M19-22
  % \set crescendoText = \markup \italic "cen"
  % s8 s2.\< s8 s2\do s4\> s4\! s1\p s1\p

  % % M23-25
  % s1\p s1 
  % \set crescendoText = \markup \italic "cres"
  % s4\< s2
  % \set crescendoText = \markup \italic "cen"
  % s4\<

  % % M26-28
  % s4\do s2. s1\f s1
  % % M29-31
  % s1 s2 s4\> s4\! s1\p
  % % M32-34
  % \set crescendoText = \markup \italic "cres"
  % s1
  % s8 s2\< s8
  % \set crescendoText = \markup \italic "cen"
  % s4\< s2 s2\do
  % % M35-36
  % s1\f s1

  % % Page 3
  % % M37-38
  % s2 s4\> s4\! 
  % \set crescendoSpanner = #'hairpin
  % \set decrescendoSpanner = #'hairpin
  % s8\p s4.\< s2\>
  % % M39-40
  % s2\p\< s2\> s8\p
  % \set crescendoSpanner = #'text
  % \set crescendoText = \markup \italic "cres"
  % s4\< s8\! s2\f 
  % % M41-43
  % \set decrescendoSpanner = #'hairpin
  % s2\>
  % \set decrescendoSpanner = #'text
  % \set decrescendoText = \markup \italic "dim"
  % s4\> s4\! s1\p s1
  % % M44-46
  % \set crescendoText = \markup \italic "cres"
  % s1 s1 s4 s2.\<
  % % M47-49
  % \set crescendoText = \markup \italic "cen"
  % s1\< s2\do s4\> s4\! s1\p
  % % M50-52
  % \set crescendoText = \markup \italic "cres"
  % s1\p s8\< s8\! s2. s8\< s8\! s2.
  % % M53-55
  % s8 s8\> s4\! s2 s1\p s8\< s8\! s2. |
  % % M56-58
  % s1\f s8 s8\> s4\! s2 s1\p |
  % % M59-60
  % s1 | s1
  % % M60-62
  % \set crescendoSpanner = #'hairpin
  % \set decrescendoSpanner = #'hairpin
  
  % s8\< s8 s8 s8\! s8\> s8 s8 s8\! s1\p

}

\score {
  \new PianoStaff <<
    \new Staff = "upper" <<
      \new Voice \upperA
      \new Voice \upperB
    >>
    \new Dynamics = "Dynamics_pf" \dynamics
    \new Staff  = "lower" <<
      \new Voice \lower
    >>
  >>
  \layout { 
    \context {
      \PianoStaff
      \consists #Span_stem_engraver
    }
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/12)
    }
    \set Score.doubleRepeatType = #":|.|:"
  }
  \midi { 
    \tempo 4 = 80
  }
}