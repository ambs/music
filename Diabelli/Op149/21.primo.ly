\version "2.19.30"

primoDynamics =  {
    s4\f s4\p s4 s4  s4\> s4\! s2 s4\> s4\! s2 s1
    s4\f s4\p s2 s1 s2 s8\< s4 s8\!   s2\f s8\> s4 s8\! s2\f s8 s8\> s8 s8\!
    s4\f s4\p s8 s8\< s8 s8\! s2 s8 s8\< s8 s8\! s4\f s4\p s8 s8\< s8 s8\! s1
    s1-\markup\italic{cresc.} s2 s8 s8\p\< s8 s8\! s1 s1\f
    s2\p s2-\markup\italic{dolce} s1 s1 s1\pp s4 s8 s16 s16\ff s2
}

primoUp =  {

	\tempo "Andante amoroso"
	    \time 4/4
    \clef treble
    \key a \major
    \relative c''' {
    	\ottava #1
	\accidentalStyle modern
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    <cis-3 e-5>4.( <b d>8 <a cis>) <a cis> <a cis> <a cis>
	    <cis e>4( <b d>) r b8.(-2 d16)-4

	    \break %3

	    <b d>4( <a cis>) r a8.( cis16)
	    b4.(-2 d16 cis b8) r r4

	    \break %5

	    <cis-3 e-5>4.( <b d>8 <a cis>) <a cis> <a cis> <a cis>
	    <cis-3 e-5>4( <b d>2) <a-1 cis-3>4(

	    	\break %7
            b4.)-2 b8 b( cis16 b) a8. b16
	}
	\alternative {
	    { cis2 e8(-5 d b-2 e) \break } %9 
	    
	    { cis2~cis8 cis-.( cis-. cis-.)}
	}
	\repeat volta 2 {
	    d4.-4 d16( cis) b8 <b-2 d-4 e-5>(-. <b d e>-. <b d e>)-.
	    \break %11
	    <cis-3 e-5>4.-> <b d>16( <a cis>) <a cis>8 a(-.-1 b-. cis)-.
	    d4.-4 d16( cis) b8 <b-2 d-4 e-5>(-. <b d e>-. <b d e>)-.
	    \break %13
	    <cis-3 e-5>4.-> <b d>16( <a cis>) <a cis>8 r <a-1 cis-3>-. <b d>-.

	    <cis e>4( <b d>8. <a cis>16) <a cis>8 <a cis> <b d> <cis e>
	    \break %15
	    <cis e>4(-> <b d>4) r8 b-2 cis d
	    d4(-4-> cis8[) r16 cis] e8.(-5-> d16 cis16-3 d b-2 cis)
	}
	\alternative {
	    { a2-1 r8 a8(-. b-. cis)-. \break }
	    { a2   r8 <b-2 d-4>( <cis e> <b d>) }
	}
	<a cis>2 r8 b(-2 cis-3 b)-2
	\break
	a-1-. b(-> cis b) a-. b(-> cis b)

	a8 r cis8.(-3-> a16)-1 a8 r8 cis8.(-> a16)
	a4 r8. a16-1 a2\fermata \bar"|."
    }
}

primoDown =  {
    \time 4/4
    \clef treble
    \key a \major
    \relative c'' {
	\accidentalStyle modern
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    <cis-1 e-3>4.( <b d>8 <a cis>) <a cis> <a cis> <a cis>
	    <cis e>4( <b d>) r b8.(-4 d16)-2
	    <b d>4( <a cis>) r a8.( cis16)
	    b4.(-4 d16 cis b8) r r4

	    <cis-1 e-3>4.( <b d>8 <a cis>) <a cis> <a cis> <a cis>
	    <cis-1 e-3>4( <b d>2) <a-3 cis-5>4(
            b4.)-4 b8 b( cis16 b) a8. b16
	}
	\alternative {
	    { cis2 e8(-1 d b-4 e) }
	    { cis2~cis8 cis-.( cis-. cis-.)}
	}
	\repeat volta 2 {
	    d4.-2 d16( cis) b8 <b-4 d-2 e-1>(-. <b d e>-. <b d e>)-.
	    <cis-3 e-1>4.-> <b d>16( <a cis>) <a cis>8 a(-.-5 b-. cis)-.
	    d4.-2 d16( cis) b8 <b-4 d-2 e-1>(-. <b d e>-. <b d e>)-.
	    <cis-3 e-1>4.-> <b d>16( <a cis>) <a cis>8 r <a-5 cis-2>-. <b d>-.

	    <cis e>4( <b d>8. <a cis>16) <a cis>8 <a cis> <b d> <cis e>
	    <cis e>4(-> <b d>4) r8 b-4 cis d
	    d4(-2-> cis8[) r16 cis] e8.(-1-> d16 cis16-3 d b-4 cis)
	}
	\alternative {
	    { a2-5 r8 a8(-. b-. cis)-. }
	    { a2   r8 <b-4 d-2>( <cis e> <b d>) }
	}
	<a cis>2 r8 b(-2 cis-1 b)-2
	a-3-. b(-> cis b) a-. b(-> cis b)
	a8 r <cis-3 e-1>8.(-> <a-5 cis-3>16) <a cis>8 r8 <cis e>8.(-> <a cis>16)
	<a cis>4 r8. <a cis e>16-1 <a cis e>2\fermata \bar"|."
    }
}



\score{
    \new PianoStaff  <<
	\new Staff = "up"   \primoUp
	\new Dynamics = "dynamics" \primoDynamics
	\new Staff = "down" \primoDown
    >>
  }