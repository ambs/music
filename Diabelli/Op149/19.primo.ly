\version "2.19.30"

primoDynamics =  {
    s8\p s2 s2\sf s4\sf s16\< s8 s16\! s4\f s8 s8\p s2 s2\sf s2 s4 s8
    s8\p s2 s2 s2 s2 s8\< s4 s4 s4 s8\! s2\f s4 s8
    s8\p s2\sf s2\p s2\sf s2\p s2-\markup\italic{cresc.} s8\< s4 s8\! s2\ff s2
}

primoUp =  {
	\tempo "Allegretto"
    \time 2/4
    \clef treble
    \key f \major
    \relative c'''' {
	\ottava #1

	\accidentalStyle modern
	\repeat volta 2 {
	    \partial 8 a8-5-.
	    g[-4-. f-3-. e-2-. d]-1-.
	    e8.(-2 f16)-3 d8-1-. f-.
	    e8.(-2 f16 d-1 e f g)
	    a4---5 r8 a-5-.
	    g[-. f-. e-. e]-.-1
	    e8.(-2 f16) d8-. f-.
	    \break %8
	    e8(-2 g16-4 f e8[ f16 e])
	    \partial 8*3 d4-- r8
	}
	\repeat volta 2 {
	    \partial 8 d8-1-.
	    e8[-2-. e-. d-. e]-.
	    f8.(-3 g16 f8) f-.
	    g8[-4-. g-. f-. g]-.
	    a4---5 r8 a-.
	    \break
	    g8[-4-. g-. a-. e]-.-2
	    f8.(-3 e16 d8) d-.
	    e[-2-. g-4-. f-. e]-.
	    \partial 8*3 d4-- r8
	}
	\partial 8 d8-.

	\break
	f8.(-3 e16 d8) d-.
	a'4(-5 d,8) d-.
	f8.(-3 e16 d8) d-.
	a'4.-- d,8-.
	\break
	f8.(-3 e16 d8) d-.
	d8-. d16( e) f8-. f16(-3 g)
	a8.-> a16-. a8-. a-.
	d,4---1 r \bar "|."
    }
}

primoDown =  {
    \time 2/4
    \clef treble
    \key f \major
    \relative c''' {
	\accidentalStyle modern
	\repeat volta 2 {
	    \partial 8 r8
	    r8 a[-1-. g-2-. f]-3-.
	    g8[-2-. a-.-1 f-.-3 a]-.
	    g8[-. a-. f-.-3 d]-.
	    e16(-4 f g f e8) r


	    r8 a[-1-. g-. f]-.
	    g8[-2-. a-. f-.-3 a]-.
	    g8.(-2 f16 e8[-4 f16 e])
	    \partial 8*3 d4-- r8
	}
	\repeat volta 2 {
	    \partial 8 d8-5-.
	    e8[-4-. e-. d-. e]-.
	    f8.(-3 g16 f8) f-.
	    g8[-2-. g-. f-. g]-.
	    a4---1 r8 a-.

	    g8[-2-. g-. a-. e]-.-4
	    f8.(-3 e16 d8) d-.
	    e[-4-. g-2-. f-. e]-.
	    \partial 8*3 d4-- r8
	}
	\partial 8 d8-.
	f8.(-3 e16 d8) d-.
	a'4(-1 d,8) d-.
	f8.(-3 e16 d8) d-.
	a'4.-- d,8-.
	f8.(-3 e16 d8) d-.
	d8-. d16( e) f8-. f16(-3 g)
	a8.-> a16-. a8-. a-.
	d,4---5 r \bar "|."
    }
}



\score{
    \new PianoStaff  <<
	\new Staff = "up"   \primoUp
	\new Dynamics = "dynamics" \primoDynamics
	\new Staff = "down" \primoDown
    >>
 
 }

