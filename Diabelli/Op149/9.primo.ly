\version "2.19.30"

primoDynamics =  {
    s2.\p s2. s2. s2. s2. s8\< s2 s8\! s2.\f s2.
    s2.\p s4.\> s4. s2. s2. s2. s4.\> s4. s2.\f s2.
    s2.\p s2. s2.\sf s2. s4 s8\< s4 s8\!
    s2.\f s4 s8\< s4 s8\! s4.\p s8\> s4 s4 s8 s8\> s4 s4.\pp
    s4._\markup\italic{rall.} s2. s2.
}

primoUp =  {
	\tempo "Allegretto"
    \time 6/8
    \clef treble
    \key g \major
    \relative c''' {
	\repeat volta 2 {
	    g4-1( a8-2 b4-3 c8-4)
	    d4.-5( b)
	    c4(-4 d8 b4 d8)
	    a4.( d4) r8
	    g,4-1( a8 b4 c8)
	    d4.( b)

\break %7

	    a4-2 a8 a([ b) cis]-.
	    d4 d8 d4 r8
	}
	\repeat volta 2 {
	    c4(-4 b8 c4 a8-2)
	    d4.(-5 b)-3
	    a4(-2 b8 c4 a8)
	    g4.(-1 b)

\break %13

	    c4(-4 b8 c4 a8)
	    d4.(-5 b)-3
	    a8([-2 b a] d[-5 c a)]
	    g4-1 b8 g4 r8
	}
	g4-1 g8 g([ a) b-.]

\break %18

	c4.-4 c8([ d c)]
	b4.-3 b8([ c b)]
	a4.-2 a8([ b) c-.]
	d4-5 d8 d([ c a)]
	b4-3 b8 d([ b-3 g-1])

	\break %23 
	a4-2 a8 d([ c-4 a-2])
	g4( d'8) a8([-2 b a)]
	g4( d'8) a8([ b a)]
	g4.(-1 b)-3
	g4.( b)
	g2. \fermata
	\bar "|."
    }
}


primoDown =  {
    \time 6/8
    \clef treble
    \key g \major
    \relative c'' {
	\repeat volta 2 {
	    g4-5( a8-4 b4-3 c8-2)
	    d4.-1( b)
	    \set fingeringOrientations = #'(left)
	    <c-2 d>4. <b-3 d>
	    <a-4 d>~ <a d>4 r8
	    g4-5( a8 b4 c8)
	    d4.( b)
	    a4-4 a8 a[( b) cis]
	    d4 d8 d4 r8
	}
	\repeat volta 2 {
	    c4(-2 b8 c4 a8)
	    d4.(-1 b)-3
	    \set fingeringOrientations = #'(left)
	    <c-2 d-1>4. <c d>
	    <b-3 d-1>4. <b d>
	    c4(-2 b8 c4 a8)
	    d4.(-1 b-3)
	    <c-2 d-1>4. <c d>
	    <b-3 d-1>4 <b d>8 <b d>4 r8
	}
	g4-5 g8 g([ a) b-.]
	c4.-2 c8([ d c)]
	b4.-3 b8([ c b)]
	a4.-4 a8([ b) c-.]
	d4-1 d8 d([ c a)]
	b4-3 b8 d([ b-3 g-5])
	a4-4 a8 d([ c-2 a-4])
	g4( d'8) a8([-4 b a)]
	g4( d'8) a8([ b a)]
	g4.(-5 b)-3
	g4.( b)
	g2. \fermata
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