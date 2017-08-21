
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

  %  M2
  g8[-3 a-4 <d, g b-5>\) d'](-4  e[-5 d-4 b-5 g])-4 |

  % M3
  <d-3 c fis,>4\( <e-4 c g> <fis-5 c a> <e-4 c g>8[ <fis-5 a,>] |
						      
  % M4  
  <d-3 c fis,>[ <e-4 g,> <fis-5 c a>\) <b-4 d, b>]( a[-5 d,-3 d-3 g-5]) 
						    }

upperB = \relative c' {
  \clef treble
  \key g \major
  \time 4/4
  \voiceTwo

  % M1-M4
  s2. b4 | b s4 <g' b> b, | s1 | s2 <a c>4 <b g> |
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
}

%%%% DYNAMICS
do = #(make-dynamic-script (markup #:normal-text #:italic "do"))
dynamics = {
  % M1-M4
  s1\p
  s8\< s4 s8\! s8\> s4 s8\!
  s1
  s8\< s4 s8\! s8\> s4 s8\!


  % % M6-M9
  % s1\p s1 s1 s1

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