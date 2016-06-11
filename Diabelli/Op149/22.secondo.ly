\version "2.19.30"



secondoDynamics =  {
    s2\p s2 s2 s2 s8\< s4 s8\! s2\f s2 s2
    s2\p s2 s2 s2 s2-\markup\italic{cresc.} s2 s2\f s2
    s2 s2\f s2 s2 s2 s2 s2 s2 s2
}

secondoUp =  {
	\tempo "Allegretto"
    \time 2/4
    \clef bass
    \key a \major
    \relative c' {
	\accidentalStyle modern
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    <a-1 cis-3>8[( e' <gis,-1 b-2> e'])
	    <a,-1 cis-3>8[( e' <gis,-1 d'-4> e'])
	    <a, cis>8[( e' <gis, d'-4> e'])
	    <a, cis>8[( e' <gis, d'-4> e'])
	    <a, cis-3>[( e'-5 cis a])
	    r8 <gis-1 b-2 e-5> r <a-1 cis-3 e-5>
	    r8 <gis b e> r <a cis e>
	    <gis b e>4 r
	}
        \repeat volta 2 {
	    g'8([-5 a, g' a,)]
	    fis'([-4 a, fis' a,)]
	    f'([-5 a, f' a,)]
	    e'([-4 a, e' a,)]
	    <dis-3 fis-5>([ a <dis fis> a)]
	    <b-2 d-4 e-5>([ gis <b d e> gis)]
	    <a-1 cis-3 e-5>8 r <gis b d e> r
	}
	\alternative {
	    { <cis-3 e-5>([ a-1 <cis e> a)] }
	    { r8 <a-1 cis-3>[-. <cis e>-. <a cis>]-. }
	}
	r8 <gis d'-4 e-5>[ <gis d' e> <gis d' e>]
        r8 <a cis>[-. <cis e>-. <a cis>]-.
	r8 <gis d' e>[ <gis d' e> <gis d' e>]
        <a-1 cis-3>[-. e'-. <a, cis>-. e']-.
        <a, cis>[-. e'-. <a, cis>-. e']-.
        <a, cis>4 r <a-1 cis-3 e-5> r <e a cis>2 \fermata \bar"|."
    }	
}	

secondoDown =  {
    \time 2/4
    \clef bass   
    \key a \major
    \relative c {
	\accidentalStyle modern
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    <a-3 e'>2 <a e'> <a e'> <a e'> <a e'>
	    <e e'>8 r <a e'> r	    <e e'>8 r <a e'> r
	    <e e'>4 r
	}
	\repeat volta 2 {
	    a4-3 r a-2 r a-3 r a-2 r <a, a'>2 <a a'> <a a'>8 r <e' e'> r 
	}
	\alternative {
	    {<a e'>2}
	    {a8-2 r r4}
	}
	<e e'>2    a8 r8 r4
	<e e'>2->  
	a4-2 r8 \times 2/3 { e16(-5 fis gis) }
	a4-2 r8 \times 2/3 { e16(-5 fis gis) }
	a4 r <a, a'> r <a a'>2 \fermata \bar "|."
    }
}

\score{
    \new PianoStaff  <<
	\new Staff = "up"   \secondoUp
	\new Dynamics = "dynamics" \secondoDynamics
	\new Staff = "down" \secondoDown
    >>
}

