\version "2.19.30"


secondoDynamics =  {
    s2.\p s2. s8\< s2 s8\! s8\> s2 s8\! s2.\p s8\< s2 s8\! s2.\f
    s4. s8\> s4 s2. s2.\p s2. s2.-\markup\italic{cresc.} s4.\f s8\> s8 s8\! s2.\p
    s2. s2. s2. s4. s4.\sf s4. s4.\sf s8\< s8 s8\! s8\> s8 s8\! s4. s4.\pp s2.
}

secondoUp =  {
	\tempo "Romanze. Andantino"
    \time 6/8
    \clef bass
    \key bes \major
    \relative c' {
			\accidentalStyle modern
	\repeat volta 2 {
	    g8(-1 bes-3 d-5) g,( bes d)
	    a(-2 c-4 d)-5 a( c d)
	    g,(-1 bes-3 d-5) g,(-1 a-2 c)-4
	    fis,(-1 a-2 d)-5 fis,( a d)
	    g,(-1  bes-2 d)-4 aes(-1 bes-2 d)

\break %6
	    g,(-1 bes-2 ees)-5 g,(-1 bes-2 des)-4
	    f,(-1 bes-3 d)-5 f,(-1 a-2 ees')-5
	}
	\alternative {
	    { f,(-1 bes-3 c)-4 <<  { d8(-5 c-4 a)-2 } \\ { fis4.-1 } >> }
	    { f8(-1 bes-3 d)-5 <d, bes'-4> r r }
	}
	\repeat volta 2 {
	    f(-1 g-2 d') f,( g d')
	    ees,(-1 g-2 ees') ees,( g ees')
	    g,(-1 bes-2 e)-5 g,( bes e)
	    <fis,-1 d'-4>4.(~ <fis d'>8 c'-3 a-2)
	    g(-1 bes-3 d-5) g,( bes d)

	    a(-2 c-4 d) a( c d)
	    g,(-1 bes-3 d) fis,(-2 c'-4 d)
	}
	\alternative {
	    { g,(-1 bes-3 d <g, bes>) r8 r8 }
	    { g(-1 bes-3 d) fis,(-2 c'-4 d) }
	}
	g,( bes d) fis,( c' d)
	g,(-1 bes-3 d)-5 g,( bes d)
	<g,-1 bes-3>4 r8 <g bes>4 r8
	<g bes>2. \fermata \bar "|."
    }
}

secondoDown =  {
    \time 6/8
    \clef bass   
    \key bes \major
    \relative c {
			\accidentalStyle modern
	\repeat volta 2 {
	    g,4 r8 g'4 r8
	    fis,4 r8 fis'4 r8
	    <g, g'>4 r8 <ees' ees'>4 r8
	    <d d'>4. ~ <d d'>4 r8
	    g4-2 r8 f4-3 r8
	    ees4-4 r8 e4 r8
	    f4 r8 <f, f'>4.
	}
	\alternative {
	    { <bes bes'>4 r8 <a a'>4 d8-2 }
	    { <bes bes'>4. ~ <bes bes'>8 r8 r8 }
	}
	\repeat volta 2 {
	    b4 r8 b'4 r8
	    c,4 r8 c'4 r8
	    cis,4 r8 cis'4 r8
	    d(-1 a-2 fis)-4 d4-5 r8
	    g,4 r8 g'4 r8
	    
	    fis,4 r8 fis'4 r8
	    <g, g'>4 r8 <d' d'>4 r8
	}
	\alternative {
	    { <g d>4. ~ <g d>8 r8 r8 }
	    { <g, g'>2. }
	}
	<g g'>2.
	<g g'>2.
	g8(-5 d'-2 g)-1 g,( d' g)
	<g, d' g>2. \fermata \bar "|."
    }
}

\score{
    \new PianoStaff  <<
	\new Staff = "up"   \secondoUp
	\new Dynamics = "dynamics" \secondoDynamics
	\new Staff = "down" \secondoDown
    >>
}