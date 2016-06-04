\version "2.19.30"


secondoDynamics =  {
    s1\p s1 s1 s1 s1\f s1 s1 s1
    s1\f s1 s1\p s1 s1\f s1 s1 s1
    s1\p s1 s1 s1 s1\f s1 s1 s1
}

secondoUp =  {
	\tempo "Allegro"
    \time 4/4
    \clef bass
    \relative c' {
	<c-2 e-4>4( g-1 <c e> g)
	<c e>( g <c e> g)
	<d'-3 f-5>( g, <c-2 e-4> g)
	<b-2 d-3>( g <b d> g)
	<c-2 e-4>4( g <c e> g)
	<c e>( g <c e> g)

\break % 7

	<b-2 g'-5>( g <b g'> g)
	<g-1 c-3 e-5> <g c e> <g c e> r

	\repeat volta 2 {
	    <g-1 b-3 d-5>-.( <g b d>-. <g b d>-. <g b d>-.)
	    <g b d>-.( <g b d>-. <g b d>-. <g b d>-.)
	    <a-2 c-4 d-5>-.( <a c d>-. <a c d>-. <a c d>-.)
	    <g-1 b-3 d-5>-.( <g b d>-. <g b d>-. <g b d>-.)

\break % 13

	    <g b d>-.( <g b d>-. <g b d>-. <g b d>-.)
	    <g b d>-.( <g b d>-. <g b d>-. <g b d>-.)
	    <a-2 c-4 d-5>-. \clef treble <d-1 fis-3> <cis-2 g'-4> <c-1 a'-5>
	    << {b4-1 c-2 d-3 b-1} \\ {g'1-5}  >>

	    \clef bass
	    <c,-2 e-4>4( g-1 <c e> g)
	    <c e>( g <c e> g)

\break % 19

	    <d'-3 f-5>( g, <c-2 e-4> g)
	    <b-2 d-3>( g <b d> g)
	    <c-2 e-4>4( g <c e> g)
	    <c e>( g <c e> g)
	    <b-2 g'-5>( g <b g'> g)
	    <g-1 c-3 e-5> <g c e>-. <g c e>-. r
	}
    }
}

secondoDown =  {
    \time 4/4
    \clef bass
    \relative c {
	c4-1 r r2
	c,4 r c' r
	b-2 r c r
	g-4 r g-3 r
	c-1 r r2
	c,4 r c' r
	g-1 r g, r
	c-3 <c-5 c'> <c c'> r

	\repeat volta 2 {
	    g'-3 r b-2 r
	    g r b r
	    b, r d'-1 r
	    g,-3 r r2
	    g4-3 r b-2 r
	    g r b r
	    d r d, r
	    g-4( a-3 b-2 g-4)
	    c-1 r r2
	    c,4 r c' r
	    b-2 r c r
	    g-4 r g-3 r
	    c-1 r r2
	    c,4 r c' r
	    g-1 r g, r
	    c-3 <c-5 c'> <c c'> r
	}
    }
}

\score{
    \new PianoStaff  <<
	\new Staff = "up"   \secondoUp
	\new Dynamics = "dynamics" \secondoDynamics
	\new Staff = "down" \secondoDown
    >>
}