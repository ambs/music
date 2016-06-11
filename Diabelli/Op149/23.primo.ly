\version "2.19.30"

primoDynamics =  {
    s2.\p s2. s2. s4 s8\> s4 s8\! s2.\f
    s2. s2. s2. s2.\p s2. s2. s2.
    s4. s4.-\markup\italic{cresc.} s2. s2. s2.\f s2.\p s2.
    s2. s4 s8\> s4 s8\! s2.\f s2. s2. s2.
}

primoUp =  {
	\tempo "Polonaise"
    \time 3/4
    \clef treble
    \key a \major
    \relative c''' {
    \ottava #1
	\accidentalStyle modern
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    a8-1-. a4->-1 cis16(-3 b a b cis d)
	    e8-5-. cis-3-. e4.(-5-> cis8)
	    \acciaccatura e8 d-4-. b-2-. d4.(-4-> b8)
	    \acciaccatura d8 cis8-3-. a-1-. cis2-3

	    \break %5

	    a8-1-. a4-> cis16(-3 b a b cis d)-4

	    e8-5-. cis-3-. e4.(-> cis8)
	    b8-2-. b4-> d16(-4 cis) b8-. cis16(-3 b)
	    a8(-1-. cis16-3 b) b4(-2-> a8) r
	}
	\break %9
	\repeat volta 2 {
	    cis8-3 cis4-> cis8[ d cis]
	    cis4( b) r
	    b8-2 b4-> b8[ cis b]
	    b4( a) r

	    \break %13

	    b8-2 b4-> b8[ cis cis]
	    e(-5 d) d4.(-> cis8
	    b8)-2 b4-> b8[ cis b]
	    b4. e8[(-5-> d-4 b])-2

	    \break %17

	    a8-1-. a4-> cis16(-3 b a-1 b cis d)
	    e8-5-. cis-3-. e4.(->-5 cis8)

	    \acciaccatura e8 d-4-. b-2-. d4.(-> b8)
	    \acciaccatura d8 cis-3-. a-. cis2

\break %21

	    a8-1-. a4-> cis16(-3 b a-1 b cis d)
	    e8-.-5 cis-. e4.(-> cis8)
	    b8-2-. b4-> d16(-4 cis) b8-. cis16(-3 b)
	    a8-1-. cis16(-3 b) b4(-> a8) r
	}
    }
}

primoDown =  {
    \time 3/4
    \clef treble
    \key a \major
    \relative c'' {
	\accidentalStyle modern
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    <a-5 cis-3>8( e'-1 <a, cis> e' <a, cis> e')
	    <a, cis>8( e' <a, cis> e' <a, cis> e')
	    <b-4 d-2>( e <b d> e <b d> e)
	    <a,-5 cis-3>8( e' <a, cis> e' <a, cis> e')
	    a,8-5-. a4-> cis16(-3 b a-5 b cis d)

	    e8-1-. cis-3-. e4.(-> cis8)
	    b8-4-. b4-> d16(-2 cis) b8-. cis16(-3 b)
	    a8(-5-. cis16-3 b) b4(-4-> a8) r
	}

	\repeat volta 2 {
	    cis8-3 cis4-> cis8[ d cis]
	    cis4( b) r
	    b8-4 b4-> b8[ cis b]
	    b4( a) r

	    b8-4 b4-> b8[ cis cis]
	    e(-1 d) d4.(-> cis8
	    b8)-4 b4-> b8[ cis b]
	    b4. e8[(-1-> d-2 b])-4
	    <a-5 cis-3>( e' <a, cis> e' <a, cis> e')
	    <a, cis>( e' <a, cis> e' <a, cis> e')

	    <b-4 d-2>( e <b d> e <b d> e)
	    <a,-5 cis-3>( e' <a, cis> e' <a, cis> e')
	    a,8-5-. a4-> cis16(-3 b a-5 b cis d)
	    e8-.-1 cis-. e4.(-> cis8)
	    b8-4-. b4-> d16(-2 cis) b8-. cis16(-3 b)
	    a8-5-. cis16(-3 b) b4(-> a8) r
	}
    }
}



\score{
    \new PianoStaff  <<
	\new Staff = "up"   \primoUp
	\new Dynamics = "dynamics" \primoDynamics
	\new Staff = "down" \primoDown
    >>
}