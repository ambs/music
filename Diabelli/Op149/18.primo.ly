\version "2.19.30"

primoDynamics =  {
    s16\p s16_\markup\italic{dolce} s8 s4 s2 s1 s1 s1 s4\< s2 s2 s4 s4\! s4
    s1\p s2 s2\sf s1 s1\p s1
    s1 s1 s4\< s2 s4\! s1\sf s2\f s8\> s4 s8\! s1\p
    s1\p s1 s1 s2 s2\pp s1
}

primoUp =  {
	\tempo "Andante cantabile"
    \time 4/4
    \clef treble
    \key f \major
    \relative c''' {
        	\ottava #1
	\accidentalStyle modern
	\repeat volta 2 {
	    d2(-1 f4.-3 e8)-2
	    d4.(-1 f16 e d4) r
	    e4.-2 e8( g[-4 f e d])
	    e4.(-2 g16 f e4) r
            f2-3 f4 f4
            \break %6

	    f4.( g8 f4) r
	    f8( g16 f e8 f) a4.(-5 g8)
	}
	\alternative {
	    {f4 r a4.( g16-4 e)-2 }
	    {f4 r r2}
	}
\break %10
	\repeat volta 2 {
	    e2(-2 g4.-> f8)
	    e4.( f8 e4) r

	    a4.(->-5 g8) g(-4 f e d)
	    e2 r
\break %14
	    d(-1 f4.-3 e8)
	    d4.( e8 d4) r
	    a'2-5~a8 g-. f-. e-.
	}
	\alternative {
	    { d2-1 r }
	    { 
	    	\break %18
	    	d4 r e8(-2-> g-4 f e) }
	}
	d4.(-1 f8) e(-2-> g-4 f e)
	d4 e8.(-2-> f16) d4 e8.(-> f16)
	d4 r d-1 d
	d1\fermata\bar"|."
    }
}

primoDown =  {
    \time 4/4
    \clef treble
    \key f \major
    \relative c'' {
	\accidentalStyle modern
	\repeat volta 2 {
	    d2(-5 f4.-3 e8)-4
	    d4.(-5 f16 e d4) r
	    e4.-4 e8( g[-2 f e d])
	    e4.(-4 g16 f e4) r
            f2-3 f4 f4

	    f4.( g8 f4) r
	    f8( g16 f e8 f) a4.(-1 g8)
	}
	\alternative {
	    {f4 r a4.( g16-2 e)-4 }
	    {f4 r r2}
	}
	\repeat volta 2 {
	    e2(-4 g4.-> f8)
	    e4.( f8 e4) r

	    a4.(->-1 g8) g(-2 f e d)
	    e2 r
	    d(-5 f4.-3 e8)
	    d4.( e8 d4) r
	    a'2-1~a8 g-. f-. e-.
	}
	\alternative {
	    { d2-5 r }
	    { d4 r e8(-4-> g-2 f e) }
	}
	d4.(-5 f8) e(-4-> g-2 f e)
	d4 e8.(-4-> f16) d4 e8.(-> f16)
	d4 r <d-5 f-3> <d f>
	<d f>1\fermata\bar"|."
    }
}


\score{
    \new PianoStaff  <<
	\new Staff = "up"   \primoUp
	\new Dynamics = "dynamics" \primoDynamics
	\new Staff = "down" \primoDown
    >>
 }

