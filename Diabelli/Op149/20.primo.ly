\version "2.19.30"

primoDynamics =  {
    s2\f s2 s2 s2 s2
    s2 s2 s2 s2\f s8\p s8\> s8 s8\! s4\f
    s8\p s8\> s8 s8\! s2\f s8\> s4 s8\! s2 s2
}

primoUp =  {
	\tempo "Hongroise"
    \time 2/4
    \clef treble
    \key f \major
    \relative c''' {
    \ottava #1
	\accidentalStyle modern
	\repeat volta 2 {
	    d8-1 d4-> d8
	    \grace{g16(-4 } f16)-.-3 e-2-. d8-1-.  \grace{g16( } f16)-. e-. d8-.
	    e8-2 a4->-5 a8
	    e8 a4-> g16(-4 e)-2
	    d8-1 d4-> d8

	    \grace{g16(-4 } f16)-.-3 e-2-. d8-1-.  \grace{g16( } f16)-. e-. d8-.
	    e8-2-. e16( f g8-4 a16 g
	    f8[)-3 \grace{g16(} f16)-. e16]-. f8-. r
	}
	\repeat volta 2 {
	    e16-2-. f-. g4-> g8-4
	    e16-2-. f-. g-. f-. e-. f-. g-. f-.
	    f16-3-. g-. a4-> a8

	    f16-3-. g-. a-. g-. f-. g-. a-. g-.
	    g-4-. a-. f-3-. g-. e-2-. f-. g-. e-.
	    f-3-. g-. e-2-. f-. d-1-. e-. f-. d-.
	    e8-2 \grace{f16(} e16)( d e8 f16 e
	    d8)-1 r r4
	}
    }
}

primoDown =  {
    \time 2/4
    \clef treble
    \key f \major
    \relative c'' {
	\accidentalStyle modern
	\repeat volta 2 {
	    <d-5 f-3 a-1>4 <d f a>
	    <d f a> <d f a>
	    e8-4 a4->-1 a8
	    e8 a4-> g16(-2 e)-4
	    d4-5 <d-5 f-3 a-1>

	    <d f a> <d f a>
	    e8-4-. e16( f g8-2 a16 g
	    f8[)-3 \grace{g16(} f16)-. e16]-. f8-. r
	}
	\repeat volta 2 {
	    e16-4-. f-. g4-> g8-2
	    <e-4 g-2>8 r8 <e g> r
	    f16-3-. g-. a4-> a8

	    <f-3 a-1>8 r <f a> r
	    g8-2-. f-. e-. r8
	    f-3-. e-4-. d-5-. r8

	    e8-4 \grace{f16(} e16)( d e8 f16 e
	    d8)-5 r r4
	}
    }
}



\score{
    \new PianoStaff  <<
	\new Staff = "up"   \primoUp
	\new Dynamics = "dynamics" \primoDynamics
	\new Staff = "down" \primoDown
    >>}