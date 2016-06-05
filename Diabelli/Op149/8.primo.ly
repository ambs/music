\version "2.19.30"

primoDynamics =  {
    s2.\p s2. s2. s2.
    s4\< s4 s4\!
    s4\> s4 s4\!
    s2.\p s2.
    s2.\f s2. 
    s2.\p s2.
    s2.\f s2.
    s2.\ff s2.
    s2.\p s2. s2. s2.
    s4\< s4 s4\! s4\> s4 s4\!
    s2.\p s2. s2.
    s2._\markup\bold\italic{dolce}
    s2. s2. s2. s2. s2. s2. s2 s4_\markup\bold\italic{dim.}
    s2. s2. s2.\f s2.
}

primoUp =  {
	\tempo "Moderato"
    \time 3/4
    \clef treble
    \key g \major
    \relative c''' {

	\repeat volta 2 {
	    b4-3( c-4 d-5)
	    d2-5( a4-2)
	    g-1( a-2 b-3)
	    b2-3( a4-2)
	    b-3( c d)
	    d2-5( c4)

\break %7

	    b-3( c a)
	    g2 r4
	}
	\repeat volta 2 {
	    a4-2( d-5 cis
	    d2 a4)
	    a-. a-. a-.
	    a2.

\break %13
	    a4-2( d-5 cis
	    d2 a4)
	    a-.-2 b-. cis-. 
	    d2.

	    b4-3( c d)
	    d2-5( a4-2)

\break %19
	    g-1( a b)
	    b2-3( a4)
	    b-3( c d)
	    d2-5( c4)
	    b-3( c a)
	}
	\alternative {
	    { g2 r4}
	    { g4 r r}
	}

\break %26

	d'-5 d d
	d2 c8( b)
	a2-2 c8-4( b)
	g-1 r g( a b c)
	d4 d d
	d2 c8( b)

\break %32
	a2-2 c8-4( b)
	g4 r c8-4( a-2)
	g4-1 r c8( a)
	g4 r r
	g-4 g-3 g-2 g2.-1\fermata
	\bar "|."
    }
}

primoDown =  {
    \time 3/4
    \clef treble
    \key g \major
    \relative c'' {
	\repeat volta 2 {
	    b4-3( c-2 d-1)
	    d2-1( a4-4)
	    g-5( a-4 b-3)
	    b2-3( a4-4)
	    b-3( c d)
	    d2-1( c4)
	    b-3( c a)
	    g2 r4
	}
	\repeat volta 2 {
	    a4-4( d-1 cis
	    d2 a4)
	    a-. a-. a-.
	    a2.
	    a4-4( d-1 cis
	    d2 a4)
	    a-.-4 b-. cis-. 
	    d2.

	    b4-3( c d)
	    d2-1( a4-4)
	    g-5( a b)
	    b2-3( a4)
	    b-3( c d)
	    d2-1( c4)
	    b-3( c a)
	}
	\alternative {
	    { g2 r4}
	    { g4 r r}
	}
	d'-1 d d
	d2 c8( b)
	a2-4 c8-2( b)
	g-5 r g( a b c)
	d4 d d
	d2 c8( b)
	a2-4 c8-2( b)
	g4 r c8-2( a-4)
	g4-5 r c8( a)
	g4 r r
	\set fingeringOrientations = #'(left)
	<g-5 b-3 d-1>	<g b d>	<g b d>
	<g b d>2.\fermata
	\bar "|."
    }
}


\score{    
    \new PianoStaff <<
	
	\new Staff = "up"   \primoUp
	\new Dynamics = "dynamics" \primoDynamics
	\new Staff = "down" \primoDown
    >>
}