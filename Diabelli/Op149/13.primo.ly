\version "2.19.30"



primoDynamics =  {
    s2\p s2 s2 s2 s2\p s2 s2\f s2    s2\mf s2 s2 s2
    s2-\markup\italic{cresc.} s2 s2\f s2 s2\p s2 s2 s2 s2\p s2 s2\f s2
    s2\p s2 s2\f s2 s2\p s2 s2\f s2 s2 s2 s2 s2
}

primoUp =  {
	\tempo "Allegro"
    \time 2/4
    \clef treble
    \key f \major
    \relative c''' {
		\accidentalStyle modern
			\repeat volta 2 {
	    a8([-3 bes-4 g-2 a]
	    f4-1 a)
	    g2-2->
	    c-5->
	    a8([-3 bes g a]
	    f4 a)
	    g8([-2 c-5 bes-4 g)]-2
	    f4-1 r
	}
	\break %9
	\repeat volta 2 {
	    g4(-2 a8 g)
	    c4-5-. g-2-.
	    b-4-. g-.
	    c(-5 g)

	    g4(-2 a8 g)
	    c4-5-. g-.
	    b8([-4 g-2 a b)]
	    c4 r

\break %17

	    a8([-3 bes g a]
	    f4-1 a)
	    g2-2->
	    c-5->
	    c8([-5 bes-4 g-2 a]
	    f4-1 a)
	    g8([-2 c bes-4 g)]
	    f4-1 r
	}
\break %25	
	g4(-2 a8 g)
	f4(-1 a)-3
	c(-5 bes8-4 g)-2
	c4( a8-3 f)-1
	g4(-2 a8 g)
	f4(-1 a)-3

\break %31

	c8([-5 bes-4 g-2 a)]
	f([-1 a-3 c-5 a)]
	f([-1 a c a)]
	f4-1 r
	a-2 r
	f2-1\fermata\bar "|."
    }
}

primoDown =  {
    \time 2/4
    \clef treble
    \key f \major
    \relative c'' {
			\accidentalStyle modern
	\repeat volta 2 {
	    c4(-1 bes-2
	    a-3 c)
	    bes(-2 c
	    bes g)-4
	    c(-1 bes
	    a c)
	    <bes-2 c-1> <bes c>
	    <a c> r
	}
	\repeat volta 2 {
	    g4(-4 a8 g)
	    c4-1-. g-.
	    b-2-. g-.
	    c(-1 g)

	    g4(-4 a8 g)
	    c4-1-. g-.
	    b8([-2 g-4 a b)]
	    c4 r
	    c(-1 bes
	    a-3 c)
	    bes(-2 c
	    bes g)
	    c(-1 bes
	    a c)
	    <bes-2 c-1> <bes c>
	    <a c> r
	}
	<bes-2 c-1>2
	<a-3 c-1>
	<bes c>4 <bes c>
	<a c> <a c>
	<bes c>2
	<a c>
	<bes c>4 <bes c>
	<a c> <a c>
	<a c> <a c>
	<a c> r
	<f-5 a-3 c-1> r
	<f a c>2 \fermata \bar "|."
    }
}


\score{    
    \new PianoStaff <<
	
	\new Staff = "up"   \primoUp
	\new Dynamics = "dynamics" \primoDynamics
	\new Staff = "down" \primoDown
    >>
}