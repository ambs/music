\version "2.19.30"

primoAllegroDynamics =  {
    s2.\p s4\< s4 s4\! s4\> s4 s4\! s2. s2. s2. s4\> s4 s4\! s2.\f s2.
    s4\> s4 s4\! s4\> s4 s4\! s2. s2. s2. s2. 
    s2.\p s8\> s2 s8\! s2. s8\> s2 s8\! s2.
    s2. s2. s4\< s4 s4\! s2.\f s2. s4\> s4 s4\! s4\> s4 s4\! s2. s2. s2. s2. s2._\markup{Fine}
}

primoAllegroUp =  {
	\tempo "Allegro"
    \time 3/4
    \clef treble
    \relative c''' {
      
      	\ottava #1

	\repeat volta 2 {
	    e8-3( f g4-.) g-.
	    g-. g-. g-.
	    g2( e4)
	    e2-3( c4)
	    d8-2( e f4-.) f-.
	    f-. e-. d-.
	    c8-1( d e4-.) e-.
	    e2( c4)

\break %9

	    e8-3( f g4-.) g-.
	    g-. g-. g-.
	    g2( f4)
	    f2-4( e4)
	    d8-2( e) d4-. d-.
	    \grace{ d16[ e]} f4-. e-. d-.
	    c4.-1 c8 c4
	    c2 r4
	}

\break %17

	\repeat volta 2 {
	    d8-2( e) d4-. d-.
	    g2.-5-.
	    ees8-3( f) ees4-. ees-.
	    g2.-5-.
	    f8( g) f4 r
	    ees8-3( f) ees4-. r
	    d-2( g) g-.
	    g( f d)

\break %25

	    e8-3( f g4-.) g-.
	    g-. g-. g-.
	    g2( f4)
	    f2-4( e4)
	    d8-2( e) d4-. d-.
	    \grace{ d16[ e]} f4-. e-. d-.
	    c4.-1 c8 c4
	    c2 r4
	}
    }
}

primoAllegroDown =  {
    \time 3/4
    \clef treble
    \relative c'' {
	\repeat volta 2 {
	    e8-3( f g4-.) g-.
	    g-. g-. g-.
	    g2( e4)
	    e2-3( c4)
	    d8-4( e f4-.) f-.
	    f-. e-. d-.
	    c8-5( d e4-.) e-.
	    e2( c4)

	    e8-3( f g4-.) g-.
	    g-. g-. g-.
	    g2( f4)
	    f2-2( e4)
	    d8-4( e) d4-. d-.
	    \grace{ d16[ e]} f4-. e-. d-.
	    c4.-5 c8 c4
	    c2 r4
	}
	\repeat volta 2 {
	    d8-4( e) d4-. d-.
	    g2.-1-.
	    ees8-3( f) ees4-. ees-.
	    g2.-1-.
	    f8( g) f4 r
	    ees8-3( f) ees4-. r
	    d-4( g) g-.
	    g( f d)
	    e8-3( f g4-.) g-.
	    g-. g-. g-.
	    g2( f4)
	    f2-2( e4)
	    d8-4( e) d4-. d-.
	    \grace{ d16[ e]} f4-. e-. d-.
	    c4.-5 c8 c4
	    c2 r4
	}
    }
}


primoTrioDynamics =  {
    s2.\p s2. s2. s2. s2.\f s2. s2. s2.
    s2.\p s2. s2. \cresc s2. s2 \endcresc s4 s2\f s2 s2_\markup{Da Capo al fine}
}

primoTrioUp =  {
	\tempo "Trio"
    \time 3/4
    \clef treble
    \key ees \major
    \relative c''' {
    
      	\ottava #1


	\repeat volta 2 {
	    ees2-3( f8-4 ees-3)
	    d2-2( ees8-3 d-2)
	    c2-1 ees8-3( f)
	    g2.-5
	    g2 fis4^^
	    g2 fis4^^
	    g2 fis4^^
	    g2 r4
	    ees2-3( d8 ees)
	    f2-4( ees8 f)
	    g2.-5
	    f4-.-4 ees-. d-.
	    ees-.-3 d-. c-.
	    d4.-2 g8 g4
	    c,2.-1 ~ c4 r r
	}
    }
}

primoTrioDown =  {
    \time 3/4
    \clef treble
    \key ees \major
    \relative c'' {
	\repeat volta 2 {
	    ees2-3( f8-2 ees-3)
	    d2-4( ees8-3 d-4)
	    c2-5 ees8-3( f)
	    g2.-1
	    g2 fis4^^
	    g2 fis4^^
	    g2 fis4^^
	    g2 r4
	    ees2-3( d8 ees)
	    f2-2( ees8 f)
	    g2.-1
	    f4-.-2 ees-. d-.
	    ees-.-3 d-. c-.
	    d4.-4 g8 g4
	    c,2.-5 ~ c4 r r
	}
    }
}

  

\score{    
    \new PianoStaff <<
	\new Staff = "up"   {\primoAllegroUp }
	\new Dynamics = "dynamics" {\primoAllegroDynamics }
	\new Staff = "down" {\primoAllegroDown }
    >>
  }

  \score{    
    \new PianoStaff <<
	\new Staff = "up"   { \primoTrioUp}
	\new Dynamics = "dynamics" {\primoTrioDynamics}
	\new Staff = "down" { \primoTrioDown}
    >>
  }