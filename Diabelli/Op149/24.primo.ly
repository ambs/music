\version "2.19.30"

primoDynamics =  {
    s4\p s1 s4\> s4\! s2 s2 s4\> s4\! s1 s4\> s4\! s2 s4\> s4\! s2
    s4\< s4 s4 s4\! s4\> s4 s4\!   s4\p s1 s1 s2 s8\< s4 s8\! s4\f s2 s4\p
    s1 s4\> s4\! s2 s4 s4 s4 s16\> s16\! s8 s4 s2 s4 s4\sf s4 s4\sf s2 s2\pp s1
}

primoUp =  {
	\tempo "Andante Cantabile"
    \time 4/4
    \clef treble
    \key c \major
    \relative c''' {
        \ottava #1
	\accidentalStyle modern
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    \partial 4  e8.(-5 c16)-3
	    b4(-2 a)-1 r8 a[-. b-. c]-.
	    c4( b) r8 b[-2-. b-. c]-.
	    d4( b-2 e4.-5 d8)
	    d4( c) r8 c[-3-. b-. c]-.
	    d4.( c8 b[) d-.-4 c-. d]-.
	    e4.(-5 d8 c[) c-. b-. c]-.

	    a8[-.-1 b-. c-. d]-. d[(-4 c) c(-3 b)]
	    \partial 4*3 d2(-4 c8) r
	}
	\repeat volta 2 {
	    \partial 4 c8.-3 c16
	    d4( c) r8 c[-. c-. c]-.
	    c4(-3 a) r8 a[-.-1 a-. b]-.
	    c4.( b8 a8[)-. a-. a( b)]
	    b4(-2 e)-5 r e8.( c16)-3

	    b4(-2 a) r8 a[-1-. b-. c]-.
	    c4( b) r8 d[-4-. c-. b]-.
	    a[-1-. b-. c-. d]-. e([-5 b]-2 d8.-4 c16)
	}
	\alternative{
	    { \partial 4*3 a2(-1 a8) r }
	    { a8-1 r   \acciaccatura{b16[-2 c-3]} d8(-4 c16 b a8) r \acciaccatura{b16[ c]} d8( c16 b }
	} 
	a4)-1 r a a a2 r\fermata \bar "|."
    }
}

primoDown =  {
    \time 4/4
    \clef treble
    \key c \major
    \relative c'' {
	\accidentalStyle modern
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    \partial 4  e8.(-1 c16)-3
	    b4(-4 a)-5 r8 a[-. b-. c]-.
	    c4( b) r8 b[-4-. b-. c]-.
	    d4( b-4 e4.-1 d8)
	    d4( c) r8 c[-3-. b-. c]-.
	    d4.( c8 b[) d-.-2 c-. d]-.
	    e4.(-1 d8 c[) c-. b-. c]-.

	    a8[-.-5 b-. c-. d]-. d[(-2 c) c(-3 b)]
	    \partial 4*3 d2(-2 c8) r
	}
	\repeat volta 2 {
	    \partial 4 c8.-3 c16
	    d4( c) r8 c[-. c-. c]-.
	    c4(-3 a) r8 a[-.-5 a-. b]-.
	    c4.( b8 a8[)-. a-. a( b)]
	    b4(-4 e)-1 r e8.( c16)-3

	    b4(-4 a) r8 a[-5-. b-. c]-.
	    c4( b) r8 d[-2-. c-. b]-.
	    a[-5-. b-. c-. d]-. e([-1 b]-4 d8.-2 c16)
	}
	\alternative{
	    { \partial 4*3 a2(-5 a8) r }
	    { a8-5 r   \acciaccatura{b16[-4 c-3]} d8(-2 c16 b a8) r \acciaccatura{b16[ c]} d8( c16 b }
	} 
	a4)-5 r <a-5 c-3> <a c> <a c>2 r\fermata \bar "|."
    }
}



\score{
    \new PianoStaff  <<
	
	\new Staff = "up"   \primoUp
	\new Dynamics = "dynamics" \primoDynamics
	\new Staff = "down" \primoDown
    >>

}