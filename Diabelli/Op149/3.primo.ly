\version "2.19.30"

primoDynamics =  {

    s2\p s2 s2 s4\> s4\! s2 s2 s2 s2
    s2\f s2 s2 s2 s2 s2 s2 s2
    s2\p s8\> s8\! s4 s2 s8\> s8\! s4 s2 s8\< s4 s8\! s4\sf s4 s2\p s2\mf s2
    s2 s2 s2\f s2 s2 s2 s2\p s2 s2 s2
    s2\p s2 s2 s2 s2 s2 s8 s8\< s4 s4 s8 s8\! s2\f s4 s2
    s2 s2\p s8\> s8\! s4 s2 s8\> s8\! s4 s2 s2 s4 s2\f s2

}

primoUp =  {
    \time 2/4
    \clef treble
    \relative c''' {
	\ottava #1
	\repeat volta 2 {
	    c4-1( e-3	g-5 e	f-4 d	g2)
	    e4-3( c   f-4 e     d e     d2)

	    r8 c-1 r e-3
	    r g-5 r e
	    r f-4 r d
	    r g-5 r f
	    r e-3 r g
	    r d-2 r g
	    r c,-1 r e-3
	    c4 r
	}
	\repeat volta 2 {
	    e-3 e
	    f-4( e8 d)
	    c4-1( d
	    e2)
	    d4-2 d
	    e8-3( d c d)
	    e2-3(
	    f4 d)

	    r8 c-1 r e-3
	    r g-5 r e
	    r f-4 r d
	    r g-5 r f
	    r e-3 r g
	    r d-2 r g
	    r c,-1 r e-3
	    c4 r
	}

	f-4( e f g)
	g-5( e8) r
	e4-3( c8) r
	d4-2-. d-.
	\grace{d16[( e])} f4-4^^( e8) d-.
	c-1-. d-. e-. f-.
	g4-5-- r

	r8 f4->-4( e8)
	r f4->( g8)
	r e4-3->(  g8)
	r c,4-1->( e8) 

	d4-2 d8. d16(
	e4) e
	g4-5( f8.) d16-2
	c4( e8.-3) f16
	g4( f8.) d16-1
	c4-1( e8.-3) f16
	g4-5( f8.-4) d16-2
	c4-1-. e-3-.
	c-. e-.
	c-1 r
	c-3 r
	c2-2\fermata
	\bar "|."
    }
}

primoDown =  {
    \time 2/4
    \clef treble
    \relative c'' {
	\repeat volta 2 {
	    c4-5( e-3	g-1 e	f-2 d	g2)
	    e4-3( c   f-2 e     d e     d2)

	    c8-5 r e-3 r
	    g-1 r e r
	    f-2 r d r
	    g-1 r f r
	    e-3 r g r
	    d-4 r g r
	    c,-5 r e-3 r
	    c4 r
	}
	\repeat volta 2 {
	    e-3 e
	    f-2( e8 d)
	    c4-3( d
	    e2)
	    d4-4 d
	    e8-3( d c d)
	    e2-3(
	    f4 d)

	    c8-5 r e-3 r
	    g-1 r e r
	    f-2 r d r
	    g-1 r f r
	    e-3 r g r
	    d-4 r g r
	    c,-5 r e-3 r
	    c4 r
	}

	f-2( e f g)
	g-1( e8) r
	e4-3( c8) r
	d4-4-. d-.
	\grace{d16[( e])} f4-2^^( e8) d-.
	c-5-. d-. e-. f-.
	g4-1-- r

	f4-2( e f g e-3 g c,-5 e)

	d4-4 d8. d16(
	e4) e
	g4-1( f8.) d16-4
	c4-4( e8.-3) f16
	g4( f8.) d16-4
	c4-5( e8.) f16
	g4-1( f8.-2) d16-4
	c4-5-. e-3-.
	c-. e-.
	c r
	\set fingeringOrientations = #'(left)
	<c-1 e-3 g-5> r
	<c e g>2\fermata
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