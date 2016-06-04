\version "2.19.30"

secondoDynamics =  {
    s2\p s2 s2 s2 s2 s2 s2 s2
    s2\f s2 s2 s2 s2 s2 s2 s2
    s2\p s2 s2 s2 s2 s8\< s4 s8\! s8\sf\> s4 s8\!
    s2\p s2\mf s2 s2 s2 s2\f s2 s2 s2
    s2\p s2 s2 s2 s2\p
    s2 s2 s2 s2 s2 s2 s8\< s4 s8\! s2\f s2 s2
    s2\p s2 s2 s2 s2 s2 s2 s2\f s2
}

secondoUp =  {
	\tempo "Moderato"
    \time 2/4
    \clef bass
    \relative c {
	\accidentalStyle modern
	\repeat volta 2 {
	    e8-2([ g-3 c-5 g-1)]
	    e'-5([ g,-1 c-3 g)]
	    d'-4([ g, b-2 g)]
	    d'-4([ g, d' g,)]
	    c-3([ g e'-5 g,)]
	    g'-4([ g, c-3 g)]
	    b-2([ g c-3 g)]
	    b-2([ g g'-5 f-4)]

\break

	    \clef treble
	    e-3([ g-5 c,-1 g')]
	    e-3([ g c,-1 g')]
	    d-2([ g b,-1 g')]
	    d-2([ g d  g)]
	    c,-1([ g' c, g')]
	    <b,-1 f'-4>([ g' <b, d f> g')]
	    <c,-1 e-3>([ g' <c, e> g')]
	    <c, e>4 r
	    \clef bass
	}

\break

	\repeat volta 2 {
	    c8-3([ e-5 c-3 a)]
	    b-2([ d-4 b-2 e-5)]
	    a,-1([ e' b-2 e)]
	    c-3([ e a,-1 e')]
	    \clef treble
	    a,([ d-2 a'-5 d,)]
	    a([ a' a, a')]
	    gis-4([ b, e-2 gis-4)]


	    g-5([ b, f'-4 b,)]
	    \break

	    e-3([ g c,-1 g')]
	    e([ g c, g')]
	    d-2([ g b,-1 g')]
	    d-2([ g d g)]
	    c,-1([ g' c, g')]
	    <b,-1 f'-4>([ g' <b, d f> g')]


	    <c,-1 e-3>([ g' <c, e> g')]
	    <c, e>4 r

\break


	    \clef bass
	}
	d8-4([ g, cis-3 g)]
	d'-4([ g, b-2 g)]
	e'_>-4([ g, c-2 g)]
	g'_>-5([ g, e'-4 g,)]

	<b-2 f'-5>([ g <b f'> g)]



	<b f'>([ g <b f'> g)]
	<c-3 e-5>([ g <c e> g)]
	<c e>([ g <c e> g)]

\break

	d'-4([ g, cis g)]
	d'-4([ g, b-2 g)]

	r g-1([ <c-3 e-5> g)]
	r a-1([ <c-3 e-5> a)]



	\set fingeringOrientations = #'(left)
	r <a-1 c-2 d-4> r <a c d>
	r <g-1 c-3 e-5> r <g c e>
	r <g-1 b-2 f'-5> r <g b f'> 

	r <g-1 c-3 e-5>-.([ <g c e>-. <g c e>-.)]

	\break
	r <g-1 b-2 f'-5>-.([ <g b f'>-. <g b f'>-.)]
	r <g c e>-.([ <g c e>-. <g c e>)-.]
	r <g b f'>-.([ <g b f'>-. <g b f'>-.)]



	<c-2 e-4>([ g g'-5 g,)]
	e'-4([ g, g'-5 g,)]
	e'4-4 r
	<g,-1 c-3 e-5> r
	<g  c e>2\fermata
	\bar "|."
    }
}

secondoDown =  {
    \time 2/4
    \clef bass
    \relative c, {
	\repeat volta 2 {
	    c4 r
	    c'-1 r
	    g-2 r
	    b-1 g-2
	    c,( c' b-2 c g-4) g-3 g-2 r

	    c, r c' r g-2 r b-1 g-2
	    <c, c'>( <e e'> <g g'> <g, g'> <c c'>)
	    <c c'> <c c'> r
	}
	\repeat volta 2 {
	    a'2-2( gis a4) r
	    a-3 c-2
	    <f, f'>2
	    <f f'>4 <f f'>
	    <e e'>2(
	    <d d'>4) <g, g'>
	    <c c'> r
	    <c c'> r
	    <g g'> r
	    <b b'> <g g'>
	    <c c'>( <e e'>
	    <g g'> <g, g'>
	    <c c'>) <c c'>
	    <c c'> r
	}
	g'-2 r
	g r
	c r
	<c, c'> r
	g g'
	g, g'-2
	<c, c'> r
	c-3 e-2
	<g, g'> r
	<g  g'> r
	<c  c'> r
	<a  a'> r
	<f f'>8 r <fis fis'>8 r
	<g g'>  r <g g'> r
	<g g'>  r <g g'> r
	<c c'>4 r
	<g g'> r
	<c c'> r
	<g g'> r
	c8 r c' r
	c, r c' r
	c,4 r
	\set fingeringOrientations = #'(left)
	<c-1 g'-2 c> r
	<c g' c>2\fermata
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