\version "2.19.30"


secondoDynamics =  {
    s8\f s8\p s4 s2 s1 s1
    s2 s8\< s4 s8\! s8\f s8\p s4 s2 s8\< s4 s8\! s8\> s4 s8\!
    s8\f s8\p s4 s4 s16\< s8 s16\! s16\> s8 s16\! s4 s16\< s8 s8 s8 s16\! 
    s8\f s8\p s4 s4 s16\< s8 s16\!
    s8\f s8\p s4 s4 s16\< s8 s16\! s16\> s8 s16\! s4 s16\< s8 s8 s8 s16\!
    s8\f s8\p s4 s4 s16\< s8 s16\!
    s16\> s8 s16\! s4 s4 s4 s1-\markup\italic{cresc.} s2 s4 s16\p\< s8 s16\!
    s1 s1\f s1\p s1 s8 s8\sf s4 s8 s8\sf s4 s1\pp s4 s8 s16 s16\ff s2
}

secondoUp =  {
	\tempo "Andante amoroso"
    \time 4/4
    \clef bass
    \key a \major
    \relative c' {
	\accidentalStyle modern
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    a16(-1 cis-3 e-5 cis) a( cis e cis) a( cis e cis) a( cis e cis)
	    ais(-2 cis-3 e-5 cis) b(-1 d-4 e-5 d) b( d e d) gis,(-2 d'-4 e-4 d)
	    
\break %3

	    b(-1 d-4 e-5 d) a(-1 cis-3 e-5 cis) a( cis e cis) a( cis e cis)

	    gis(-2 b-3 e-5 b) gis(-2 e' a,-1 e')

	    \break %5
	    gis,(-2 e' <gis,-2 b-3> e' <a,-1 cis-3> e' <gis,-2 d'-4> e')
	    a,(-1 cis-3 e-5 cis) a( cis e cis) a( cis e cis) a( cis e cis)


	    ais(-2 cis-3 e-5 cis) b(-2 d-4 b d) b( d b d) a(-1 cis-3 a cis)
    \break %7
	    a(-1 b-2 fis'-5 b,) a( b fis' b,) a( b fis' b,) fis(-1 fis' fis, fis')
	}
	\alternative {
	    { gis,(-1 cis-3 eis-5 cis) gis( cis eis cis) gis( d'-3 e-4 d) gis,( d' e d)  \break }%9	
	    
	    { gis,( cis-3 eis-5 cis)  gis( cis eis cis) <gis cis eis>8 r r4}
	}
	\repeat volta 2 {
	    fis16(-1 b-2 d-4 b) fis( b d b) gis(-1 b-2 e-5 b) gis( b e b)
	    \break %11
	    a(-1 cis-3 e-5 cis) a( cis e cis) a( e' cis-3 e b-2 e a,-1 e')
	    fis,( b-2 d-3 fis-5) fis,( b d fis) gis,(-1 b-2 d-3 e)-4 gis,( b d e)
\break %13	
	    a,(-1 cis-2 e-4 cis) a( cis e cis) a( cis e cis) a( cis e cis)
	    
	   a( e'-3 g-5 e) a,( e' g e) a,( e' g e) a,( e' g e)
   \break %15	
	    ais,(-1-> e'-3 g-5 e) b( d-2 fis-4 d) b( fis'-4 d-2 fis cis-2 fis b,-1 fis')

	    fis4(->-3 e8[) r16 e] gis8.(-4-> fis16 e fis d e)-4
	}
	\alternative {
	    { cis(-2 a-1 e'-4 cis)-2 a8 r8 r2 \break }
	    { cis16(-2 a-1 e'-5 cis-4 a-2 e a cis) e( e, e' e, e' e, e' e,)}
	}
	cis'16(-4 a-2 e'-5 cis-4 a-2 e a cis) e( e, e' e, e' e, e' e,)
	\break
	a(-2 e' e, e' e, e' e, e') a,(-2 e' e, e' e, e' e, e')

	a,(-2 cis-4 e-5 cis) a( cis e cis) a(-1 cis-3 e-5 cis) a( cis e cis)
	a4 r8. <a cis e>16 <a cis e>2\fermata\bar"|."
    }	
}	

secondoDown =  {
    \time 4/4
    \clef bass   
    \key a \major
    \relative c {
	\accidentalStyle modern
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    a8-5 r cis-3 r e-1 r r4
	    e,8 r e'4-> r e,8 r8
	    a,8 r a'4-> r cis-2
	    
	    e4 e, e'8(-1 <d-2 e> <cis-3 e> <b-4 e>)
	    a8-5 r cis r e r r4
	    e,8 r <e e'>4 <eis eis'> <fis fis'>

	    <d d'>8 <d'-3 fis-2>[(-. <d fis>-. <d fis>])-. <d fis> r <d, d'> <d d'>
	}
        \alternative {
	    { <cis cis'>2 <b b'>8 r <e e'> r }
	    { <cis cis'>8 r cis' r cis, r r4 }
	}
        \repeat volta 2 {
	    d8 r d' r e,-2 r r4
	    a8-5 r cis-3 r e r r4
	    b,8 r b' r e, r r4

	    a8-5 r cis-3 r e r r4
	    a,,8 r a' r a r a r
	    d,8 r d' r d, r r4

	    r8 e8 e' e <e, b' e>2
	}		
        \alternative{
	    { a4-3 r16 a(-1 e-2 cis-3 a8) r8 r4}
	    { a'8-3 r r4 r4 e4->-5 }
	}
	a4-2 r r  e
        a8 r e4 a8 r e4
        a8 r r4 a8 r r4
        a4 r8. <a, a'>16 <a a'>2\fermata\bar"|."
    }
}

\score{
    \new PianoStaff  <<
	\new Staff = "up"   \secondoUp
	\new Dynamics = "dynamics" \secondoDynamics
	\new Staff = "down" \secondoDown
    >>
  }