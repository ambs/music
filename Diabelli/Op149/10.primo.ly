\version "2.19.30"


primoDynamics =  {
    s1\f s1 s1 s1 s1 s1
    s1 s1 s1 s1 s1 s1
    s1\p-\markup\italic{dolce} s1 s1 s1 s1 s1 s1
    s1 s1 s1 s1 s1 s1 s1 s1 s1 s1
    s1 s1 s1 s1 s1 s1 s1 s1-\markup\italic{cresc.}
    s1 s2 s2\sf s2 s2\sf s1\f s1 s1 s1
}

primoUp =  {
	\tempo "Allegro"
    \time 2/2
    \clef treble
    \key g \major
    \relative c''' {
	\accidentalStyle modern
		\repeat volta 2 {
	    b2-3^^ d-5^^
	    g,2.(-1^^ a8 b
	    c4-4) c8( b a4) d
	    d2(-5 b)-3
	    a4-2( b8 a g4) d'-.
	    a4-2( b8 a g4) d'-.

\break %7

	    c8(-4 b a c b-3 a g b)
	    a4-2-. d4.(-5 cis8 b cis)
	    d8(-5 a-2 b cis d a b cis

	    d a b cis d a b cis
\break %11
	    d2) d4. d8 d1
	}

	\repeat volta 2 {
	    a2(-2 b4 a
	    d-5 c b a)
	    g2-1 c8(-4 b a b)
	    g2 c8( b a b)

\break %17

	    a2(-2 b4 a
	    d c b a)
	    g2-1 c8(-4 b a b)

	    g1-1
	    b2(-3 c4. b8)
	    b2.( a4)

\break %23 
	    g2.( a4)
	    b2 r
	    g2(-1 \acciaccatura{b8-3} a4.-2 g8)
	    g2 g
	    g2.( c4-4)
	    c1

\break %29
	    b2(-3 c4 b

	    a2.) a4
	    b2(-3 c4 b
	    a2.) a4
	    a2.(-2 b4)
	    c(-4 d)-5 d-. d-.
	    b8(-3 c d c b c a-2 b)
	    g4-1-. a-. b-. g-.
	    a2.(-2 b4)

	    c4(-4 d)-5 d-. d-.
	    g,-1-. b-3-. d2-5
	    g,4-. b-. d2
	    g,8(-1 d' a-2 d g, d' a d
	    g, d' a d g, d' a d)
	    g,2-1 g4. g8
	    g1
	}
    }
}

primoDown =  {
    \time 2/2
    \clef treble
    \key g \major
    \relative c'' {
		\accidentalStyle modern
	\repeat volta 2 {
	    s1
	    b2-3^^ d^^
	    c4-2 c8( b a4) d4
	    d2(-1 b-3)
	    \set fingeringOrientations = #'(left)
	    <c-2 d-1>4 <c d> <b-3 d-1> <b d>
	    <c d> <c d> <b d> <b d>
	    <a-4 d>2 <g-5 d>
	    <a-4 d>4-. d4.(-1^^ cis8 b cis)
	    d(-1 a-4 b cis d a b cis
	    d a b cis d a b cis
	    d2) d4. d8 d1
	}
	\repeat volta 2 {
	    c4(-2 d-1 c d)
	    c( d c d)
	    b(-3 d-1 b d)
	    b( d b d)
	    c(-2 d-1 c d)
	    c( d c d)
	    b(-3 d-1 b d)

	    b(-3 d b-3 g)-5
	    b2(-3 c4. b8)
	    b2.( a4)
	    g2.( a4)
	    b2 r
	    g2(-1 \acciaccatura{b8-3} a4.-2 g8)
	    g2 g
	    g2.( c4-2)
	    c1
	    b2(-3 c4 b 

	    a2.) a4
	    b2(-3 c4 b
	    a2.) a4
	    <a-4 c-2>( d <a c> d)
	    <a c>( d <a c> d)
	    <g,-5 b>( d' <g, b> d')
	    <g, b>( d' <g, b> d')
	    <a-4 c-2>( d <a c> d)

	    <a c>( d <a c> d)
	    g,-5-. b-3-. d2-1
	    g,4-. b-. d2
	    <b-3 d-1>4 <c-2 d-1> <b d> <c d>
	    <b d> <c d> <b d> <c d>
	    <b d>2 <b d>4. <b d>8
	    <b d>1
	}
    }
}



\score{    
    \new PianoStaff <<

	\new Staff = "up"   \primoUp
	\new Dynamics = "dynamics" \primoDynamics
	\new Staff = "down" \primoDown
    >>

}


