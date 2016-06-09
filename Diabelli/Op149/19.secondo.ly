\version "2.19.30"


secondoDynamics =  {
    s8\p s2 s2\sf s2\sf s4\f s8 s8\p s2 s2\sf
    s2 s2 s2\p s2 s2 s2 s2
    s8\< s4 s8\! s2\f s8 s4 s2\p s2\sf s2\p
    s2\sf s2\p s4-\markup\italic{cresc.} s8\< s8 s4 s8 s8\! s2\ff s2
}

secondoUp =  {
	\tempo "Allegretto"
    \time 2/4
    \clef treeble
    \key f \major
    \relative c'' {
	\accidentalStyle modern
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    \partial 8 a8-5-.
	    a[-. a-. a-. a]-.
	    <cis,-2 g'-4 a-5> <cis g' a> <d-1 f-3 a-5> r
	    <cis g' a> <cis g' a> <d f a> r
	    <cis-2 e-3 a-5>[ <cis e a> <cis e a>] a'-.
	    a[-. a-. a-. a]-.
	    <cis,-2 g'-4 a-5> <cis g' a> <d-1 f-3 a-5> r

	    \break %8

            r8 <d e-2 bes'-5> r <cis-2 e-3 g-4 a-5>
            \partial 8*3 <d-1 f-3>[-. <f-3 a-5>-. <d-1 f-3>]-.
	}
	\repeat volta 2 {
	    \partial 8 r8
	    r <c g'-3 bes-5> r <c g' bes>
	    r <c f-2 a-4> r <c f a>
	    r <c e-2 bes'-5> r <c e bes'>
	    r <c f-3 a-5> r <c f a>
	    \break
	    r <e-2 g-4 a-5> r <e g a>

	    r <d-1 f-3 a-5> r <d f a>
	    r <d-1 e-2 bes'-5> r <cis-2 g'-4 a-5>
	}
        \alternative {
	    { \partial 8*3 <d-1 f-3>[-. <f a>-. <d f>]-. }
	    { d16(-1 f-3 a-5 f d f a f) }
	}
	\break
        d(-1 f-3 gis-4 f d f gis f)
        d( f-3 a-5 f d f a f)      

	d( f-3 gis-4 f d f gis f)
        d( f-3 a-5 f d f a f)
        \break
      	d( f-3 gis-4 f d f gis f)
        d( f-3 a-5 f d f a f)
        <d-1 e-2 a-5>8-. <d e a>16-. <d e a>-. <cis-2 e-3 a-5>8-. <cis e a>-.
	<d-1 f-3 a-5>4-- r \bar "|."
    }	
}	

secondoDown =  {
    \time 2/4
    \clef bass   
    \key f \major
    \relative c {
	\accidentalStyle modern
	\repeat volta 2 {
	    \partial 8 r8
	    r2
	    <a-5 e'-1>8 <a e'> d8-2 r
	    <a e'>8 <a e'> d8 r
	    <a e'>8 <a e'> <a e'> r
	    r2
	    <a e'>8 <a e'> d8 r

	    g,8-5 r a r
	    \partial 8*3 d8[ d d]
	}
	\repeat volta 2 {
	    \partial 8 r8
	    c-2 r c r
	    c r c r
	    c r c r
	    f r f r
	    cis r cis r
	    d r d r
	    g,-5 r a r
	}
	\alternative {
	    { \partial 8*3 d[ d d] }
	    { d2 }
	}
	\set fingeringOrientations = #'(left)
	<d-5 f-3 gis-2 b-1>2
	<d-5 f-3 a-1>2

        <d-5 f-3 gis-2 b-1>2
	<d-4 f-3 a-1>2
	<b-4 d-2 f-1>2
        <a-5 d-2 f-1>2
	<a, a'>8-. <a a'>-. <a a'>-. <a a'>-.
	<d a' d>4-- r \bar "|."
    }
}

\score{
    \new PianoStaff  <<
	\new Staff = "up"   \secondoUp
	\new Dynamics = "dynamics" \secondoDynamics
	\new Staff = "down" \secondoDown
    >>
 
 }

