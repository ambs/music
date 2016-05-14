\version "2.19.30"

% \header {
%     title = "28 melodische Übungsstücke"
%     subtitle = "1."
%     composer = "Anton Diabelli"
%     opus = "Op 149"
% }

dynamics =  {
    s1\f
    s1 s1 s1 s1 s1  s1 s1 s1
    s1 s1 s1 s1 s1 s1 s1 s1
    s1 s1 s1 s1 s1 s1 s1 
}

primoUp =  {
	\tempo "Andante"
    \time 4/4
    \clef treble
    \relative c''' {
	\ottava #1
	\repeat volta 2 {
	    c2-1( d-2   e-3 c-1)
	    d-2( e-3 f-4 d-2)
	    e-3( f-4 g-5 f-4 
\break
	    	e-3 d-2 c1-1)
	}
	\repeat volta 2 {
	    d2-2( e f-4 d) e-3( f g-5 e)\break
	    f-4( e d-2 c d-2 e d1)
	    
	    e2-3( f g-5 c,-1  \break f-4 d-2 e-3 c-1)
	    d-2( e f-4 d-2 e-3 d-2 c1-1)
	}
    }
    \bar "|."
}

primoDown =  {
    \time 4/4
    \clef treble
    \relative c'' {
	\repeat volta 2 {
	    c2-5( d-4   e-3 c-5)
	    d-4( e-3 f-2 d-4)
	    e-3( f-2 g-1 f-2 e-3 d-4 c1-5)
	}
	\repeat volta 2 {
	    d2-4( e f-2 d) e-3( f g e)
	    f( e d c d e d1)
	    
	    e2-3( f g-4 c,-5 f-2 d-4 e-3 c-5)
	    d-4( e f-2 d-4 e-3 d-4 c1-5)
	}
    }
}

\score{
   	\new PianoStaff %\with {
    	%instrumentName = #"Primo"
    %} 
    <<
		\new Staff = "up" \primoUp
		\new Dynamics = "dynamics" \dynamics
		\new Staff = "down" \primoDown
    >>    
}
  

