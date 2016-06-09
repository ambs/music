\version "2.19.30"

primoDynamics =  {
    s2\p s2 s2 s2 s2 s2 s2 s2
    s2\f s2 s2 s2 s2 s2 s2 s2
    s2\p s2 s2 s2 s2-\markup\italic{cresc.} s8\< s4 s8\! s2\f s2 s2
    s2\p s2 s2\f s2 s2\p s2
    s2\f s2 s2 s2 s2 s2
}

primoUp =  {
	\tempo "Rondino. Allegro"
    \time 2/4
    \clef treble
    \key d \major
    \relative c''' {
      
		\ottava #1
	\accidentalStyle modern
	\repeat volta 2 {
	    d8-1-. d16( e-2 fis8)-.-3 fis16( g-4
            a8)-5-. a fis4->-3
	    a8-. g-4-. e4->-2
	    a8-. fis-3-. d4->-1
	    d8-1-. d16( e fis8)-.-3 fis16( g-4

\break %6
            a8)-. a fis4->-3
	    a8-. g-4-. e(-2 g16-4 fis)-3
	    d8[-.-1 fis-. d]-. r
	}
	\repeat volta 2 {
	    a'8(-5 g16 fis e4)
	    g8(-4 fis16 e d4)

\break %11

	    fis8-3-. fis16( g) fis8-. fis16( g)
	    fis8-. fis16( g) fis4
	    a8(-5 g16 fis e4)
	    g8(-4 fis16 e d4)
	    e8-2-. e16( fis) e8-. e-.

\break %16

	    e-. a4(->-5 g16-4 e)-2

	    d8-1-. d16( e fis8)-3-. fis16( g
            a8)-.-5 a-. fis4-3->
            a8-. g-.-4 e4->
	    a8-.-5 fis-3-. d4-1->
\break %21
	    d8-. d16(-1 e-2 fis8)-. e16(-2 fis-3
	    a8)-. g-. g8.(-4 fis16
            e8)-2 fis16(-3 g a g-4 e-2 fis)
	}
	\alternative{
	    { d8[-.-1 fis-3-. d]-. r }
	    { d4 r \bar "||"}
	}
\break %26
	g8-4-. g16( fis e4)
	fis8-3-. fis16( e d4)
	<e-2 g-4 a-5>8[-. <e g a>-. <e g a>-. <e g a>]-.
	a16(-5 g fis e d4)-1
	g8-4-. g16( fis e4)
	fis8-3-. fis16( e d4)

	<e-2 g-4 a-5>8[-. <e g a>-. <e g a>-. <e g a>]-.
	<d-1 fis-3 a-5> r <e-2 g-4 a-5> r
	<d fis a> r <e g a> r
	<d-1 fis-3>4 r
	d-1 d
	d2\fermata \bar "|."
    }
}

primoDown =  {
    \time 2/4
    \clef treble
    \key d \major
    \relative c'' {
	\accidentalStyle modern
	\repeat volta 2 {
	    << { d8[-3 <fis-3 a-1>-. <fis a>-. <fis a>]-.} \\ { d2 } >>
	    << { d8[ <fis a>-. <fis a>-. <fis a>]-.} \\ { d2 } >>
	    << { e8[-4 <g-2 a-1>-. <g a>-. <g a>]-.} \\ { e2 } >>
	    << { d8[-3 <fis-3 a-1>-. <fis a>-. <fis a>]-.} \\ { d2 } >>
	    << { d8[ <fis a>-. <fis a>-. <fis a>]-.} \\ { d2 } >>
	    << { d8[ <fis a>-. <fis a>-. <fis a>]-.} \\ { d2 } >>
	    << { e8[-4 <g-2 a-1>-. <g a>-. <g a>]-.} \\ { e2 } >>
	    <d-5 fis-3 a-1>8[-. <d fis a> <d fis a>] r
	}
	\repeat volta 2 {
	    a'8(-1 g16 fis e4)
	    g8(-2 fis16 e d4)
	    fis8-3-. fis16( g) fis8-. fis16( g)
	    fis8-. fis16( g) fis4
	    a8(-1 g16 fis e4)
	    g8(-2 fis16 e d4)
	    e8-4-. e16( fis) e8-. e-.
	    e-. a4(->-1 g16-2 e)-4

	    << { d8[-3 <fis-3 a-1>-. <fis a>-. <fis a>]-.} \\ { d2 } >>
	    << { d8[ <fis a>-. <fis a>-. <fis a>]-.} \\ { d2 } >>
	    << { e8[-4 <g-2 a-1>-. <g a>-. <g a>]-.} \\ { e2 } >>
	    << { d8[-3 <fis-3 a-1>-. <fis a>-. <fis a>]-.} \\ { d2 } >>
	    d8-.-5 d16( e fis8)-.-3 e16(-4 fis
	    a8)-.-1 g-. g8.( fis16
            e8)-4 fis16( g a-1 g-2 e-4 fis)-3
	}
	\alternative{
	    { d8[-.-5 fis-3-. d]-.-5 r }
	    { d4 r \bar"||"}
	}


	g8-2-. g16( fis e4)
	fis8-3-. fis16( e d4)
	<e-1 g-2 a-4>8-. <e g a>-. <e g a>-. <e g a>-.
	a16(-1 g fis e d4)-5
	g8-2-. g16( fis e4)
	fis8-3-. fis16( e d4)


	<e-4 g-2 a-1>8[-. <e g a>-. <e g a>-. <e g a>]-.
	<d-5 fis-3 a-1> r <e-4 g-2 a-1> r
	<d fis a> r <e g a> r
	<d-5 fis-3>4 r
	<d-5 fis-3> <d fis>
	<d fis>2\fermata \bar "|."

    }
}




\score{    
    \new PianoStaff <<
	\new Staff = "up"   \primoUp
	\new Dynamics = "dynamics" \primoDynamics
	\new Staff = "down" \primoDown
    >>
}