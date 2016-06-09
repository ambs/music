\version "2.19.30"

primoAllegrettoDynamics =  {
    s2.\p s2. s2. s2.\f s2.\p
    s2. s2.\f s2.
    s2.\p s2. s2.
    s2. s2.-\markup\italic{cresc.} s2. s2.\f s4 s8\fz s8\> s8\! s8_\markup{Fine}
}

primoAllegrettoUp =  {
	\tempo "Polonaise. Allegretto"
    \time 3/4
    \clef treble
    \key f \major
    \relative c'' {
	\accidentalStyle modern
	\repeat volta 2 {
	    f8-1-. f4-> a-3-> c8(-5-> ~
	    c[ bes a bes] g4)-2
	    f8-1-. f4-> a-3-> c8->
	    g[-2-. c]-.  b[(-4 a16 b]) c8(-> bes16-4 g-2)

\break %5

	    f8-. f4-> a-3-> c8(-> ~

	    c[ bes-4 a bes] g4)
	    a8([-3-. c-. g-2-. bes-. a-3-. g-.)]
	    f-1-. a16(-3 g) g4(-2-> f8) r
	}

\break %9

	\repeat volta 2 {
	    a8-3-. a4-> a4-> g8
            f-1-. a16(-3 g) f8-. g-. a4
	    a8-3-. a4-> a4-> g8

	    f-1-. a16(-3 g) f8-. g-. a4

\break %13

	    g8-2 c4-5-^ bes-4-^ g8-2-^
	    f8-1-. a16(-3 g) f8-. a16( g) f8-. a-.
	    g8-2 c4-5-^ bes-4-^ g8-2-^
            f-1-. a16(-3 g) g4( f8) r
	}
    }
}

primoAllegrettoDown =  {
    \time 3/4
    \clef treble
    \key f \major
    \relative c'' {
	\accidentalStyle modern
	\repeat volta 2 {
	    a8([-3 c-1 a c a c)]
	    bes([-2 c bes c bes c)]
	    a8([-3 c a c a c)]
	    <g-4 c-1>[ <g c> <g-4 b-2> <g b>] <g-4 c-1> r
	    a8([-3 c-1 a c a c)]
	       
	    bes([-2 c bes c bes c)]
	    a8([-3-. c-1-. g-4-. bes-. a-3-. g-.)]
	    a-3-. bes-. bes4(-> a8) r
        }
	\repeat volta 2 {
	    g8(-4 a-3 g a g a)
	    f(-5 a-3 f a f a)
	    g(-4 a-3 g a g a)

	    f(-5 a-3 f a f a)
	    bes(-2 c-1 bes c bes c)
	    a(-3 c-1 a c a c)
	    bes(-2 c-1 bes c bes c)
	    a-3-. c16(-1 bes) bes4(-2 a8) r
	}
    }
}




primoTrioDynamics =  {
    s2.\p s2. s2. s2. s2.\f
    s2. s2. s2.
    s4 s2\p s2. s2.
    s2. s2.\ff s2. s2 s1_\markup{Polonaise da Capo al Fine.}
}


primoTrioUp =  {
	\tempo "Trio"
    \time 3/4
    \clef treble
    \key aes \major
    \relative c''' {
	\accidentalStyle modern
	\repeat volta 2 {
	    c8-5-. aes-3-. f4.(-1 aes8)-3
            g8-2-. bes16(-4 aes-3 g8) bes16( aes g8) r
            c8-5-. bes-. g4.(-2 bes8)
	    aes8-3-. c16(-5 bes-4 aes8)-3 c16( bes) aes8 r
	    bes-4-. bes16( aes g4. aes16 bes)

	    c8-5-. c16( bes aes4. c8)
	    bes8-4-. bes4(-> f8)-1 aes16(-3 g f g)
	    aes8-. c16( bes) bes4(-> aes8) r
	}
	\repeat volta 2 {
	    r4 c8(-5 b16-4 c-5 g8)-2 r
	    r4 aes8(-3 g16 aes f8) r
	    r4 c'8(-5 b16 c g8) r

	    r4 bes16(-4 aes g aes) f8-1 r
	    f4.-1 f8[-. f-. f]-.
	    f8-. f16(-1 g aes8)-. aes16(-3 bes c8)-. r
	    g8-2-. g4-> bes8[-4-. aes-. g]-.
	    f8-1-. aes16( g) g4(-2-> f8) r
	}
    }
}

primoTrioDown =  {
    \time 3/4
    \clef treble
    \key aes \major
    \relative c'' {
	\accidentalStyle modern
	\repeat volta 2 {
	    c8-1-. aes-3-. f4.(-5 aes8)
            g8-4-. bes16(-2 aes-3 g8)-4 bes16( aes g8) r
            c8-1-. bes-. g4.(-4 bes8)
	    aes8-3-. c16(-1 bes-2 aes8)-3 c16( bes) aes8 r
	    bes-2-. bes16( aes g4. aes16 bes)

	    c8-1-. c16( bes aes4. c8)
	    bes8-2-. bes4(-> f8)-5 aes16(-3 g f g)
	    aes8-. c16( bes) bes4(-> aes8) r
	}
	\repeat volta 2 {
	    r4 c8(-1 b16-2 c-1 g8)-4 r
	    r4 aes8(-3 g16 aes f8) r
	    r4 c'8(-1 b16 c g8) r

	    r4 bes16(-2 aes g aes) f8-5 r
	    f4.-5 f8[-. f-. f]-.
	    f8-. f16(-5 g aes8)-. aes16(-3 bes c8)-. r
	    g8-4-. g4-> bes8[-2-. aes-. g]-.
	    f8-5-. aes16( g) g4(-4-> f8) r
        }
    }
}






\score{
    \new PianoStaff  <<
	\new Staff = "up"   { \primoAllegrettoUp }
	\new Dynamics = "dynamics" { \primoAllegrettoDynamics  }
	\new Staff = "down" { \primoAllegrettoDown  }
    >>
}
\score{
    \new PianoStaff  <<
        \set Score.currentBarNumber = #17
	\new Staff = "up"   {  \primoTrioUp }
	\new Dynamics = "dynamics" {  \primoTrioDynamics }
	\new Staff = "down" { \primoTrioDown }
    >>
}