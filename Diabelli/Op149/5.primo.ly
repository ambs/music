\version "2.19.30"

primoDynamics =  {
    s2.\p s2. s2. s2. s2.\f s2. s2. s2.
    s2.\p s2. s2. s8\< s2 s8\! s2.\f s2. s2. s2. s4. s4.\p s2. s2.
    s2. s4. s8\< s8 s8\! s2.\mf s2. s2. s4.\f s8\> s8 s8\! s4. s8\> s8 s8\! s2. s2. s2.
}

primoUp =  {
	\tempo "Allegretto"
    \time 6/8
    \clef treble
    \relative c''' {
	\ottava #1

	\repeat volta 2 {
	    e4.-3( g8-5[) f e]
	    d4.-2( f8[) e d]
	    c4-1 c8 c[( d e)]
	    e4.-3( d)
	    e-3( g8-5[) f e]


	    d4.-2( f8[) e d]

\break %7

	    c4-1( e8) d4-2( g8-5)
	    c,4-1 r8 r4 r8
	}
	\repeat volta 2 {
	    d4.-2( e8[) d c]
	    d4.-2( g4.)
	    d4-2( f8) [e d c]
	    d2.---2

\break %13
	    e4.-3( g8[) f e]
	    d4.-2( f8[) e d]
	    c4-1( e8) d4-2( g8)
	}
	\alternative {
	    {c,4.-1( c4) r8}
	    {c4-1 r8 c([ d e)]}
	}
	f4-4( c8-1) f4( c8)

\break %19

	e4.---3 c8-1([ d e)]

	d4-2 d8 d([ e d)]
	c4.---1 c8([ d e)]
	f4-4( c8) f4( c8)
	e4.---3 c8-1([ d e)]
	d4-2 d8 d([ e d)]
	c4-1( e8-3) g-.-5[ d-.-2 e-.-3]
	c4( e8) g-.[ d-. e-.]
	c4-1 r8 e4^^-3 r8
	c4^^ r8 e4^^   r8
	c2.\fermata
	\bar "|."
    }
}

primoDown =  {
    \time 6/8
    \clef treble
    \relative c'' {
	\repeat volta 2 {
	    e4.-3( g8-1[) f e]
	    d4.-4( f8[) e d]
	    c4-5 c8 c[( d e)]
	    e4.-3( d)
	    e-3( g8-1[) f e]
	    d4.-4( f8-2[) e d]
	    c4-5( e8-3) d4-4( g8)
	    c,4-5 r8 r4 r8
	}
	\repeat volta 2 {
	    d4.-4( e8[) d c]
	    d4.-4( g4.)
	    d4-4( f8) [e d c]
	    d2.---4
	    e4.-3( g8[) f e]
	    d4.-( f8[) e d]
	    c4-5( e8) d4-4( g8)
	}
	\alternative {
	    {c,4.-5( c4) r8}
	    {c4-5 r8 c([ d e)]}
	}
	f4-2( c8-5) f4( c8)
	e4.---3 c8-5([ d e)]

	d4-4 d8 d([ e d)]
	c4.---5 c8([ d e)]
	f4-2( c8-5) f4( c8)
	e4.---3 c8-5([ d e)]
	d4-4 d8 d([ e d)]
	c4-5( e8-3) g-.-1[ d-.-4 e-.-3]
	c4( e8) g-.[ d-. e-.]
	c4-5 r8 e4^^-3 r8
	c4^^ r8 e4^^   r8
	c2.\fermata
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