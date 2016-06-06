\version "2.19.30"


secondoDynamics =  {
    s2.\p s2. s2. s2. s2. s8\< s2 s8\! s2.\f s2.
    s2.\p s8\> s8 s8\! s4. s2. s2. s2. s8\> s8 s8\! s4. s2.\f s2.
    s2.\p s2. s2.\sf s2. s8\< s2 s8\! s2.\f s8\< s2 s8\! s4.\p s4.\>
    s4. s4.\> s4\pp s4._\markup\italic{rall.} s2. s2.
}

secondoUp =  {
	\tempo "Allegretto"
    \time 6/8
    \clef bass
    \key g \major
    \relative c' {
\accidentalStyle modern	
\repeat volta 2 {
	    b8-4( d-5 fis,-2 g-1 d' a-2)
	    b-3( d b g-1 d' g,)
	    a-2( d a g-1 d' g,)
	    fis-2( d' a-3 fis-2 a-3 d)
	    b(-4 d fis,-2 g-1 d' a-2)
	    b(-3 d b g-1 d' g,)

\break %7	    

	    fis(-2 d' fis, g-1 cis-4 g)
	    fis(-2 a-3 fis-2 <fis-2 a-3 d-5>4) r8
	}
	\repeat volta 2 {
	    a8(-3 d gis,-2 a-3 d fis,-2)
	    b-4( d b g-1 d' g,)
	    r8 <fis-2 c'-4 d-5> <fis c' d> r8 <fis c' d> <fis c' d>
	    r8 <g-1 b-4 d-5> <g b d> r8 <g b d> <g b d>

\break %13

	    a8(-3 d gis,-2 a-3 d fis,-2)
	    b-4( d b g-1 d' g,)
	    r8 <fis-2 c'-4 d-5> <fis c' d> r8 <fis c' d> <fis c' d>
	    r8 <g-1 b-4 d-5> <g b d> r8 <g b d> <g b d>
	}
	g8-1( d'-4 f-5) g,( d' f)

\break %18

	g,-1( c-3 e-5) g,( c e)
	gis,-2( d'-4 e-5) gis,( d' e)
	a,-1( c-3 e-5) a,( c e)

	a,-1( c-3 d-4) a( c d)
	g,-1( b-2 d-4) g,( b d)

\break %23 
	fis,-1( c'-3 d-4) fis,( c' d)
	<g,-1 b-2>( d' b) << { c8-3( d-4 c-3) } \\ { fis,4. } >>
	<g-1 b-2>8( d' b) << { c8-3( d c) } \\ { fis,4. } >>
	<g-1 b-2>8( d'-4 b g b d)
	b(-2 d-4 b g b d)
	<g, b d-4>2.  \fermata
	\bar "|."
    }
}

secondoDown =  {
    \time 6/8
    \clef bass   
    \key g \major
    \relative c {
	\accidentalStyle modern
	\repeat volta 2 {
	    g4 r8 r4 r8
	    g,4. g'
	    fis-4( g4)-3 b8
	    d4.-1 d,4 r8
	    g4 r8 r4 r8
	    g,4. g'4.

	    a4.-2 <a, a'>
	    d4-3 <d d'>8 <d d'>4 r8
	    d4. d'
	    g,, g'
	    <d d'>4 r8 <d d'>4 r8
	    g4-2 r8 g4 r8
	    d4. d'
	    g,, g'
	    <d d'>4 r8 <d d'>4 r8
	    g4-2 <g, g'>8 <g g'>4 r8
	}
	g4 r8 g'4 r8
	c,4 r8 c'4 r8
	e,4 r8 e'4 r8
	a,,4 r8 a'4 r8

	fis,4 r8 <fis fis'>4 r8
	<g g'>4 r8 <b b'>4 r8
	<d d'>4 r8 d4 r8
	g4-2 r8 <d d'>4.
	g4-2 r8 <d d'>4.
	<g, g'>2.
	<g g'>2.
	<g g'>2. \fermata
	\bar "|."
    }
}

\score{
    \new PianoStaff  <<
	
	\new Staff = "up"   \secondoUp
	\new Dynamics = "dynamics" \secondoDynamics
	\new Staff = "down" \secondoDown
    >>}