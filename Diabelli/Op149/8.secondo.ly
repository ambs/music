\version "2.19.30"


secondoDynamics =  {
    s2.\p s2. s2. s2.
    s4\< s4 s4\!
    s4\> s4 s4\!
    s2.\p s2.
    s2.\f s2.
    s2.\p s2.
    s2.\f s2.
    s2.\ff s4\> s4 s4\!
    s2.\p s2. s2. s2.
    s4\< s4 s4\! s4\> s4 s4\!
    s2.\p s2. s2.
    s2. s2. s2. s2. s2. s2. s2. s2  s4_\markup\bold\italic{dim.}
    s2. s2. s2.\f s2.
}

secondoUp =  {
	\tempo "Moderato"
    \time 3/4
    \clef bass
    \key g \major
    \relative c' {
	\accidentalStyle modern
	\repeat volta 2 {
	    g8-1( d'-5 a-2 d b-3 d)
	    fis,-2( c'-4 d-5 c fis,-2 c'-4)
	    b-3( d-5 a-2 d g,-1 d')
	    g,-1( d' cis d fis,-2 d'-5)
	    g,-1( d' fis,-2 d'-5 f,-1 g-2)
	    e-1( g-2 gis-3 e-1 a-4 e)

\break %7	    
	    g-2( d'-5 a-2 d-5 <fis,-2 c'-4> d'-5)
	    <g,-1 b-3>2 r4
	}
	\clef treble
	\repeat volta 2 {
	    <d'-2 fis-4>8( a <d fis> a <e'-3 g-5> a,)
	    <d-2 fis-4>( a <d fis> a <d fis> a)
	    <cis-2 e-4>( a <d-2 fis-4> a <e'-3 g-5> a,)
	    <cis-2 eis-4>( a <cis eis> a <d-2 fis-4>4)

\break %13	    

	    <d-2 fis-4>8( a <d fis> a <e'-3 g-5> a,)
	    <d-2 fis-4>( a <d fis> a <d fis> a)
	    <cis-2 g'-5>( a <d-2 g-5> a <e'-3 g-5> a,)
	    <a d-2 fis-4> d-5([ cis-4 d-5 c-4 a-2)]

	    \clef bass
	    g-1( d' a-2 d b-3 d)
	    fis,-2( c'-4 d-5 c fis, c')

\break %19
	    b-2( d a d g, d')
	    g,-1( d' cis d fis,-2 d')
	    g,-1( d' fis,-2 d' f,-1 g-2)
	    e-1( g-2 gis-3 e-1 a-4 e)
	    g-2( d'-5 a-2 d <fis,-2 c'-5> d')
	}
	\alternative {
	    { <g,-1 b-3>2 r4 }
	    { <g-1 b-3>8( d' <g, b> d' <g, b> d') }
	}
\break %26
	<fis,-1 a-2>8( d' <g,-1 b-2> d' <a-2 c-4> d)
	<g,-1 b-2>( d' <g, b> d' <g, b> d')
	<fis,-1 c'-4>( d' <fis, c'> d' <fis, c'> d')
	<g,-1 b-3>( d' <g, b> d' <g, b> d')
	<fis,-1 a-2>8( d' <g,-1 b-2> d' <a-2 c-4> d)
	<g,-1 b-2>( d' <g, b> d' <g, b> d')
\break %32
	<fis,-1 c'-4>( d' <fis, c'> d' <fis, c'> d')
	<g,-1 b-3>4 r <fis-2 a-3>8( c')
	<g-1 b-4>4 r <fis-2 a-3>8( c')
	<g-1 b-4>2.
	\set fingeringOrientations = #'(left)
	<d-1 g-2 b-4 d-5>4^^ <d g b d>^^ <d g b d>^^
	<d g b d>2.\fermata
	\bar "|."
    }
}

secondoDown =  {
    \time 3/4
    \clef bass   
    \key g \major
    \relative c {
	\accidentalStyle modern
	\repeat volta 2 {
	    g4-3 r r
	    <d d'> r r
	    <d d'>2.
	    <d d'>2.
	    g4-4 a b
	    c-1 c, c'
	    d, d' d,
	    r8 g-1([ d-2 b-1] g-5) r
	}
	\repeat volta 2 {
	    d'4-5 fis-3 a-2
	    <d, d'>2.
	    a'4-2 r a
	    <d, d'>2.
	    d4-5 fis-3 a-2
	    <d, d'>2.
	    <a a'>4 r <a a'>(
	    <d d'>) r r
	    g-3 r r
	    <d d'> r r
	    <d d'>2.
	    <d d'>2.
	    g4-4 a b
	    c c, c'
	    d, d' d,
	}
	\alternative {
	    { r8 g-1([ d-2 b-4] g-5) r }
	    { g'4-3 b-2 g-3 }
	}
	d-5 r r
	g-3 b-2 g
	<d d'> r <d d'>
	g-3 b-2 g
	d r r
	g-3 b-2 g
	<d d'> r <d d'>
	g8-3( b-2 d4-1) <d, d'>
	g8( b d4) <d, d'>
	g-1 d-2 b-4
	g-5^^ b-4^^ d-2^^
	<g, g'>2.\fermata
	\bar "|."
    }
}

\score{
    \new PianoStaff  <<
    	\new Staff = "up"   \secondoUp
    	\new Dynamics = "dynamics" \secondoDynamics
    	\new Staff = "down" \secondoDown
    	>>
  }
