\version "2.19.30"



secondoDynamics =  {
    s1\p s1 s1 s1 s2 s8\< s4 s8 s2 s4 s8 s8\! s1\p s2 s2\sf s8\< s4 s4 s4 s8\! s1\p s1
    s1 s8\< s4 s8\! s8\> s4 s8\! s4\< s2 s4 s2 s4 s4\! s2\f s8\> s4 s8\!
    s1\p s1\p s1 s1 s1\pp s1
}

secondoUp =  {
	\tempo "Andante cantabile"
    \time 4/4
    \clef bass
    \key f \major
    \relative c {
	\accidentalStyle modern
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    f8(-1 a-2 d-5 a) g(-1 a-2 cis-4 a)
	    f8(-1 a-2 d-5 a) f( a d a)
	    g8(-1 a-2 e'-5 a,) f(-1 a-2 d-5 a)
	    e8(-1 a-2 cis-4 a) e( a cis a)
	    f8(-1 a-2 d-5 a) f(-1 a-2 ees'-5 a,)
\break %6
	    f8( bes-3 d-5 bes) f( aes-2 d-5 aes)
	    f( a-2 c-4 a) e( bes'-3 c-4 bes)
	}
	\alternative {
	    { f8( a-2 c-4 a) g(-1 a-2 cis-4 a) }
	    { f8( a-2 c-4 a) <g-1 cis-4>( a)-2 <f-1 d'-5>( a)-2 }
	}
\break %10
	\repeat volta 2 {
	    g( a-2 e'-5 a,) f( a-2 d a)
	    e( a-2 cis-4 a) e( a cis a)

	    g( a-2 e'-5 a,) f( a-2 d-4 a)
	    e( a-2 cis-4 a e'-5 cis-4 a-2 g)-1
\break %14
	    f(-2 a-3 d-5 a)-2 g(-1 a-2 cis-4 a)
	    f( gis-2 d' gis,) <f d'>( a)-2 <f d'>( b)-3
	    f( a-2 d-5 a) g( a-2 cis-4 a)	    
	}
	\alternative {
	    { <f-1 a-2 d-5>1 }

	    { \break %18 
	    	f8(-1 a-2 d-5 a) g(-1-> bes-3 cis-4 bes) }
	}
	f8(-1 a-2 d-5 a) g(-1-> bes-3 cis-4 bes)
	<f-1 d'-5>( a)-2 <g-1 cis-4>(-> bes)-3	<f d'>( a) <g cis>(-> bes)
	f(-1 a-2 d-5 a) f( a d a)
	<f a d>1\fermata\bar".|"
    }	
}	

secondoDown =  {
    \time 4/4
    \clef bass   
    \key f \major
    \relative c {
	\accidentalStyle modern
	\repeat volta 2 {
	    d4-1 r a-2 r
	    d-1-. a-2-. f-.-1 d-2-.
	    cis-3 a d-3 f-2
	    a-1 e-1 cis-3 a
	    d d' c, c'
	    bes,-4 bes'
	    b,-5 b'
	    c, c' c, c'
	}
	\alternative {
	    { f,-3 r e-4-. a-.-2 }
	    { f-2 r e-1 d }
	}
	\repeat volta 2 {
	    cis-3-. a-. d-3-. f-.-2
	    a-1 e-2 cis-3 a

	    cis-3 a d-3 f-2
	    a2 r
	    d4-1 r a-3 r
	    bes2-2 a4 gis
	    a2-1 a,
	}
	\alternative {
	    { d8( a' gis-2 a f-3 a d,-5 a') }
	    { <d,-5 a'-1>2 <d-5 bes'-2>-> }
	}
	<d a'>2 <d bes'>2->
	<d a'>4 <d bes'>-> <d a'> <d bes'>->
	<d-5 a'-1>2 a'4-1 f-3
	d1-5\fermata\bar"|."
    }
}

\score{
    \new PianoStaff  <<
	\new Staff = "up"   \secondoUp
	\new Dynamics = "dynamics" \secondoDynamics
	\new Staff = "down" \secondoDown
    >>
 }

