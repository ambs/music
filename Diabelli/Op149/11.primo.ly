\version "2.19.30"

primoDynamics =  {
    s2.\p s2. s4 s8\< s4 s8\! s4\> s8 s4\! s8 s2.\p s4 s8\< s4 s16 s16\!
    s2.\f s2. s2 s4\p s2. s2. s2.-\markup\italic{cresc.} s2.\f s2.\p
    s2. s2. s4 s4 s8 s8\p s4. s4.\sf s4. s4.\sf s8\< s8 s8\! s8\> s8 s8\! s4. s4.\pp s2.
}

primoUp =  {
	\tempo "Romanze. Andantino"
    \time 6/8
    \clef treble
    \key bes \major
    \relative c''' {
		\accidentalStyle modern
			\repeat volta 2 {
	    g4-1 g8( bes-3 a-2 g)-1
	    d'4.(-5 a)-2
	    bes4-3 bes8 \acciaccatura{c8} bes( a g)
	    a4(-2 c16 bes a4) r8
	    bes4-3 bes8 bes( c bes)

\break %6	    
	    bes4( g8 bes4) bes16(-3 c)

	    d4-5 d8 c(-4 d c)
	}
	\alternative {
	    { bes4 r8 r4 r8 }
	    { bes4.~bes8 r d }
	}
	\repeat volta 2 {
	    d4(-5 g,8)-1 g4 g8
	    g4( c8)-4 c4.--
	    bes4-3 bes8 bes( a) g
	    a4.~ a4 r8
	    g4-1 g8( bes-3 a g)

	    d'4.(-5 a)-2
	    bes4-3 bes8 a( bes a)
	}
	\alternative {
	    { g4.~g8 r d' }
	    { g,4. a8(-2 bes a) }
	}
	g4. a8( bes a)
	g4(-1 bes8-3 d4-5 bes8-3)
	g4-1 r8 g4 r8
	g2. \fermata \bar "|."
    }
}

primoDown =  {
    \time 6/8
    \clef treble
    \key bes \major
    \relative c'' {
			\accidentalStyle modern
	\repeat volta 2 {
	    g4-5 g8( bes-3 a g)
	    d'4.(-1 a)-4
	    bes4-3 bes8 \acciaccatura{c8} bes( a g)
	    a4(-4 c16 bes a4) r8
	    bes4-3 bes8 bes( c bes)
	    bes4( g8 bes4) bes16(-3 c)
	    
	    d4-1 d8 c(-2 d c)
	}
	\alternative {
	    { bes4 r8 r4 r8 }
	    { bes4.~bes8 r d }
	}
	\repeat volta 2 {
	    d4(-1 g,8)-5 g4 g8
	    g4( c8)-2 c4.--
	    bes4-3 bes8 bes( a) g
	    a4.~ a4 r8
	    g4-5 g8( bes-3 a g)

	    d'4.(-1 a)-4
	    bes4-3 bes8 a( bes a)
	}
	\alternative {
	    { g4.~g8 r d' }
	    { g,4.-5 a8(-4 bes a) }
	}
	g4. a8( bes a)
	g4(-5 bes8-3 d4-1 bes8-3)
	g4-5 r8 <g-5 bes-3>4 r8
	<g bes>2. \fermata \bar "|."
    }
}



\score{    
    \new PianoStaff <<
	
	\new Staff = "up"   \primoUp
	\new Dynamics = "dynamics" \primoDynamics
	\new Staff = "down" \primoDown
    >>

}


