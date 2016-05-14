\version "2.19.30"

% \header {
%     title = "28 melodische Übungsstücke"
%     subtitle = "1."
%     composer = "Anton Diabelli"
%     opus = "Op 149"
% }

dynamics =  {
    s1\f
    s1 s1 s1 s1 s1 
    s1 s1 s1
    s1 s1 s1 s1 s1 s1 s1 s1
    s1 s1 s1 s1 s1 s1 s1 s1
}


secondoUp =  {
	\tempo "Andante"
    \time 4/4
    \clef bass
    \relative c' {
	\accidentalStyle modern
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    <g e'-4 g>2   <g b-2 g'>
	    <g c-2 g'>    <g e'-4 g>
	    <g g'>      <g g'>
	    <g g'>      <g g'>
	    <g c-2 g'>    <g b-2 g'>
	    <g c-2 g'>(   <a-1 d-3 f-5>
	    <g-1 c-2 e-4>  \break    <g-1 b-2 f'-5>
	}
	\alternative {
	    { <g-1 c-2 e-4>1) } {  <g-1 c-2 e-4>1 }
	}
	\repeat volta 2 {
	    <g-1 b-2 d-3>2( <g c-2 e-4>
	    <g d'-3 f-5> <g-1 b-2>)

	    
	    <g c-2 e-4>( <g b-2 f'-5>
	    <g c-2 g'-5> <g c-2 e-4>)
	    
\break

	    <g d'-3 f-5>( <g c-3 e-5>
	    <g b-2 d-4>   <g-1 c-3>
	    <b-2 d-4>     <c-3 e-5>
	    <b-2 d-4>1)
	    
	    <g c-3 e-5>2( <g b-2 f'-5>
	    <bes c-2 g'-5> <bes c-2 e-4>

	    \break
	    <c-2 f-5> <a-1 d-3>
	    <gis b-2 e-5> <a c-3 e-5>)
	    
	    <a-2 d-5>( <g-1 a-2 cis-4>
	    <f-1 a-2 d-5> <a-1 d-3 f-5>
	    <g-1 c-2 e-4> <g-1 b-2 f'-5>
	}
	\alternative {
	    { <g-1 c-3 e-5>1) } { <g-1 c-3 e-5>1 }
	}
    }
}

secondoDown =  {
    \time 4/4
    \clef bass
    \relative c, {
	\set fingeringOrientations = #'(down)
	\repeat volta 2 {
	    c4-.-3 e-.-2  g-.-1 g,-.
	    c-.-3  e-.-2  g-.-1 c-.-2
	    b-.-3  g-.    c-.-2 g-.
	    d'-.-1 g,-.-5 b-.-1 g-.-2
	    c,-.-5 c'-.-2 d-.-1 d,-.-5
	    e-.-4  e'-.-2 f-.-1 f,-.-2
	    g-.-1  g,-.   g-.   g'-.
	}
	\alternative {
	    { c,-.-5 c'-.-2 g-.-1 e-.-2 }
	    { c-.-3  g'-.-1 e-.-2 c-.-3 }
	}
	\repeat volta 2 {
	    g-.-5  g'-.-1 e-.-4  g-.-2
	    d-.-5  d'-.   g,-.-5 g'-.
	    c,,-.  c'-.-1 d-.-2  d,-.-5
	    e-.-4  e'-.-1 c-.-2  c,-.
	    b'-.-1 b,-.-5 c-.-4  c'-.-1
	    f-.-2  f,-.-4 e-.-5  e'-.-1
	    g,-.-5 g'-.-1 e-.-2  c-.-3
	    g-.-1  d-.-2  b-.    g-.
	    c-.-5  c'-.-1 d-.-2  d,-.-5
	    e-.-4  e'-.-1 g-.-2  g,-.-5
	    a-.-4  a'-.-1 f-.-2  f,-.-4
	    e-.-5  e'-.-1 a,-.-2 a,-.-5
	    f'-.-2 f'-.-1 e-.-2  e,-.-4
	    d-.-5  d'-.-1 f,-.-2 f,-.-5
	    g-.-4  g'-.-1 g-.    g,-.-5
	}
	\alternative {
	    { c-.-3 g'-.-1 e-.-2 c-.-3 }
	    { 
		\set fingeringOrientations = #'(left)
		<c-5 c'-1>1
	    }
	}
	\bar "|."
    }
}

\score{
	\new PianoStaff 
    <<
		\new Staff = "up" \secondoUp
		\new Dynamics = "dynamics" \dynamics
		\new Staff = "down" \secondoDown
    >>
}

