\version "2.19.30"

primoDynamics =  {
    s2\p s2 s2 s2 s8\< s4 s8\! s2\f s2 s2
    s2\p s2 s2 s2 s8 s4-\markup\italic{cresc.} s8 s2 s2\f s2 s2
    s2\f s2 s2 s2 s2 s2 s2 s2
}

primoUp =  {
	\tempo "Allegretto"
    \time 2/4
    \clef treble
    \key a \major
    \relative c''' {
    	\ottava #1
	\accidentalStyle modern
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    a8[(-1 cis-3 e-5 d]-4	    cis4 b)
	    a8[( cis-3 e-5 d]	    cis4 b)
	    a8[(-1 b cis e]-5 b[-2 e cis-3 e] b[ e cis e] b[-2 e-5 d-4 b])
	}\break
	\repeat volta 2 {
	    cis8([-3 a b cis]  e4-5 d~-> d8) a[-1-. a-. b]-.
	    d4(-4 cis~-> cis8[) b(-2 cis b] e4)-5 e
	    e8\([ cis-3 \acciaccatura e8-5 d8-4 b]\)
	}
	\alternative{
	    { a2\break }
	    { a4 r }
	}
	b8([-2 e-5 d-4 b)]   a2-1
	b8([-2 e-5 d-4 b)]   a[-1-. cis-3-. e-5-. cis]-.
	a[-. cis-. e-. cis]-.    a4  r   cis-3   r    a2-1\fermata \bar"|."
    }
}

primoDown =  {
    \time 2/4
    \clef treble
    \key a \major
    \relative c'' {
	\accidentalStyle modern
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    r2 a8([-5 cis-3 e-1 d]-2  cis4 b)
            a8([-5 cis-3 e-1 d] cis[-3 b a cis])
            e4-1 <cis-3 e-1> <b-4 e-1> <cis e> <b e> r
	}
	\repeat volta 2 {
	    cis8([-3 a b cis]  e4-1 d~-> d8) a[-5-. a-. b]-.
	    d4(-2 cis~-> cis8[) b(-4 cis b] e4)-1 e
	    e8\([ cis-3 \acciaccatura e8-1  d8-2 b\)] 
	}
	\alternative {
	    { a2  }
	    { a8([-5 e'-1 cis-3 e)] }
	}
	<b-4 d e>4 r
	a8[(-5 e'-1 cis-3 e])
	<b-4 d e>4 r
	a8[-5-. cis-3-. e-1-. cis]-.
	a8[-. cis-. e-. cis]-.
	a4 r <cis-3 e-1> r <a-5 cis-3>2 \fermata \bar "|."
    }
}


\score{
    \new PianoStaff  <<
	\new Staff = "up"   \primoUp
	\new Dynamics = "dynamics" \primoDynamics
	\new Staff = "down" \primoDown
    >>
}

