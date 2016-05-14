\version "2.19.30"

primoDynamics =  {
    s1\p s1 s1 s1 s1\f
    s1 s1 s1 s1\f s1 s1\p s1
    s1\f s1 s1 s8\> s2 s8\! s4 s1\p s1
    s1 s1 s1\f s1 s1 s1
}

primoUp =  {
    \time 4/4
    \clef treble
    \relative c''' {
	\ottava #1
	\accidentalStyle modern
	
	c8-1[( d e d] c-1[ d e f-4])
	g4-.-5 e-.-3 c-. e-.
	f8-4[( e d f]) e-3[( d c e])
	d4-.-2 g-5-. d-. g-.
	c,8-1[( d e d] c-1[ d e f-4)]

	g4-.-5 e-.-3 c-. e-.
	d-.-2 g-.-5 f8-4([ e f-4 d-2)]
	c4-1-. e-3-. c-. r

	\repeat volta 2 {
	    d8-2( e fis g-5) r2
	    d8-2( e fis g) r2
	    fis4-4-. d-2-. e-. fis-.
	    g2( d2)

	    d8-2( e fis g) r2
	    d8-2( e fis g) r2
	    fis4-4-. d-2-. e-. fis-.
	    g2.-5( f8-4 d-2)
	    
	    c8-1[( d e d] c-1[ d e f-4])
	    g4-.-5 e-.-3 c-. e-.
	    f8-4[( e d f]) e-3[( d c e])
	    d4-.-2 g-5-. d-. g-.
	    c,8-1[( d e d] c-1[ d e f-4)]
	    
	    g4-.-5 e-.-3 c-. e-.
	    d-.-2 g-.-5 f8-4([ e f-4 d-2)]
	    c4-1-. e-3-. c-. r
	}
    }
}

primoDown =  {
    \time 4/4
    \clef treble
    \relative c'' {
	<c-5 e-3>1
	<c e>2 <c e>
	<d-4 f-2> <c e>
	d4-.-4 g-.-1 d-. g-.

	<c,-5 e-3>1
	<c e>2 <c e>
	<d-4 f-2> <d f>
	<c-5 e-3>4-. <c-5 e-3>-. <c-5 e-3>-. r
	\repeat volta 2 {
	    r2 d8-4( e fis g)
	    r2 d8-4( e fis g)
	    fis4-2-. d-4-. e-. fis-.
	    g2-1( d-4)

	    r2 d8-4( e fis g)
	    r2 d8-4( e fis g)
	    fis4-2-. d-4-. e-. fis-.
	    g2.-1( f8-2 d-4)
	    
	    <c-5 e-3>1
	    <c e>2 <c e>
	    <d-4 f-2> <c e>
	    d4-.-4 g-.-1 d-. g-.

	    <c,-5 e-3>1
	    <c e>2 <c e>
	    <d-4 f-2> <d f>
	    <c-5 e-3>4-. <c e>-. <c e>-. r
	}
    }
}

\score{
    
    \new PianoStaff <<
	\new Staff = "up"   \primoUp
	\new Dynamics = "dynamics" \primoDynamics
	\new Staff = "down" \primoDown
    >>
}