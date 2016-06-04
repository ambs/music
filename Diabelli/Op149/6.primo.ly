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
	\repeat volta 2 {
	    d8-2( e) d4-. d-.
	    g2.-5-.
	    ees8-3( f) ees4-. ees-.
	    g2.-5-.
	    f8( g) f4 r
	    ees8-3( f) ees4-. r
	    d-2( g) g-.
	    g( f d)
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



  

\score{    
    \new PianoStaff <<
	\new Staff = "up"   \primoAllegroUp
	\new Dynamics = "dynamics" \primoAllegroDynamics
	\new Staff = "down" \primoAllegroDown
    >>

  }