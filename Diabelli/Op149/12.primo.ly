\version "2.19.30"

primoDynamics =  {
    s2.\p s4 s2\f s2.\p s2. s2. s2. 
    s2 s16\< s8 s16\! s4\> s4\! s4 s2.\p s2. s2. s2. s2.
    s2. s2.\f s2. s2.\ff s2. s2 s4\pp s2.
}

primoUp =  {
	\tempo "Andante"
    \time 3/4
    \clef treble
    \key f \major
    \relative c'' {
	#(set-accidental-style 'modern)
	\repeat volta 2 {
	    f4(-1 a-3 g)-2
	    g8( f) f4 r
	    g(-2 bes-4 a)
	    a8( g) g4 r
	    a8.(-3 bes16 c4 f,)-3
	    bes8(-4 a) g4 r

\break %7
	    a8.([ bes32 a)] g8([ c)] c16([ b a b)]
	    b4( c) r 
	}
	\repeat volta 2 {
	    a4(-3 bes a)
	    a8( g f4) r
	    f(-1 g f)

\break %12

	    f8( bes)-4 bes4 r
	    bes8.(-4 a16 g4 c)

	    a16(-3 bes g a) f4 r
	    c'8-5-. b-. c-. bes-. a-. g-.
	    g4( f) r
	}
\break %17
	bes8.-4 bes16 a4 r
	g8.-2 g16 f4 r
	g8-2-. r bes-4-. r a(-3 g)
	g4( f) r \fermata \bar "|."
    }
}

primoDown =  {
    \time 3/4
    \clef treble
    \key f \major
    \relative c'' {
	#(set-accidental-style 'modern)
	\repeat volta 2 {
	    a8(-3 c-1 a c bes-2 c)-1
	    bes( a) a(-3 c-1 a-3 f)-5
	    g(-4 c bes-2 c a-3 c)
	    a(-3 g) g(-4 c bes g)
	    a(-3 c a c a c)
	    g(-4 c bes-2 c bes c)

	    a4-3 g8([-4 c)] c16(-1 b a b)
	    b4(-2 c) r
	}
	\repeat volta 2 {
	    a4(-3 bes a)
	    a8(-3 g f4) r
	    f(-5 g f)
	    f8(-5 bes)-2 bes4 r
	    bes8.(-2 a16 g4 c)-1

	    <a-3 c-1>2 r4
	    c8-1-. b-. c-. bes-. a-. g-4-.
	    g4(-4 f) r
	}
	bes8.-2 bes16 a4 r
	g8.-4 g16 f4 r
	g8-4-. r bes-2-. r a(-3 g)
	g4(-4 f)-5 r \fermata \bar "|."
    }
}


\score{    
    \new PianoStaff <<
	
	\new Staff = "up"   \primoUp
	\new Dynamics = "dynamics" \primoDynamics
	\new Staff = "down" \primoDown
    >>
}
