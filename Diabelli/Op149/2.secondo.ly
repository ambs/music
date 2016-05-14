\version "2.19.30"

secondoDynamics =  {
    s1\p s4\< s2 s4\!
    s1\p s1
    s4\< s2 s4\!
    s4\> s2 s4\!
    s4\< s2 s4\!
    s1\f
    s4\f s2.\p s1
    s4\f s2.\p s1
    s1 s1
    s1\f s1 s1\p
    s4\< s2 s4\! s1\p s1
    s4\< s2 s4\! s4\> s2 s4\! s1\p s1
}

secondoUp =  {
    \time 4/4
    \clef bass
    \relative c' {
	\repeat volta 2 {
	    g'4( g, g' g,)
	    g'( g, b-2 c)
	    d-4( g, c-3 g)
	    c-4( g b-3 g)
	    c-4( g-1) g-.-2 g-.-1
	    b-3( g b g)

\break

	    c-4( g b c)
	    c-3( g b-2 g)
	}
	\repeat volta 2 {
	    d'-4( g, c d)
	    b-3( g c-3 d)
	    e-5( g, d' e)
	    c-3( g d-4 e)

	    \break 

	    d-4( g c-4 b)
	    c-4( g-1 f-3 e-2)
	    g-1( d'-5 c-4 g-1)
	    b1-2
	    \clef treble
	    g'4( g, g' g,)
	    g'( g,) <g g'> <g g'>

	    \break 
	    <d'-3 g> g, <c-2 g'> g
	    \clef bass
	    c-4( g b-3 g)
	    c-4( g b-3 bes-2)
	    a-1( cis-2 d-3 f)
	    e-4( g, <b-2 f'-5> g)
	}
	\alternative{
	    {
		\set fingeringOrientations = #'(left)
		<g-1 c-3 e-5>1
	    }
	    { <g c e>1 } 
	}
	\bar "|."
    }
}

secondoDown =  {
    \time 4/4
    \clef bass
    \relative c, {
	\set fingeringOrientations = #'(down)
	\repeat volta 2 {
	    c2-4( f-1
	    e-2 d4 c)
	    b2( c4-4 e-2
	    g1)
	    c,2-5( d4 e f1-2)
	    e2-1( d4-2 c-3 g2 g')
	}
	\repeat volta 2 {
	    g,( g')
	    g,( g')
	    g,( g')
	    g,( g')

	    <g, g'>1
	    <g g'>1

	    <b b'>2( <c c'>4) <e e'>
	    <g-. g'> <f-. f'> <e-. e'> <d-. d'>

	    <c c'>2( <f f'>
	    <e e'> <d d'>4 <c c'>)
	    <b b'>2( <c c'>4 e-3 g1-1)

	    c,-2( <f, f'>)
	    <g g'>2 <g g'>
	}
	\alternative {
	    { <c c'>4( g'-2 e-1 c-2) }
	    { <c c'>1 }
	}
	\bar "|."
    }
    
}
\score{
    \new PianoStaff <<
	\new Staff = "up"    \secondoUp 
	\new Dynamics = "dynamics" \secondoDynamics
	\new Staff = "down"  \secondoDown 
    >>
  }
