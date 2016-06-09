\version "2.19.30"

primoDynamics =  {
    s8 s8-\markup\bold{1} s8 s8 s8 s8\p
    s4. s4. s8 s8-\markup\bold{1} s8 s4. s4. s4. s8 s8-\markup\bold{1} s8
    s4. s4. s4. s8\< s4 s4 s8\! s4.\f s4.

    s8 s8-\markup\bold{1} s8 s8 s8 s8\pp s4.
    s4.  s8 s8-\markup\bold{1} s8 s4. s4. 
    s4.  s8 s8-\markup\bold{1} s8 s4. s4. s4. s4.

    s8\< s8 s8\! s4.\f s8 s8\> s8\! s8 s8-\markup\bold{1} s8
    s4 s8\p s4. s4. s8 s8-\markup\bold{1} s8 s4. s4.

    s4.  s8 s8-\markup\bold{1} s8 s4. s8\< s4 s4 s8\! s4.\f
    s4. s4. s4. s4
}

primoUp =  {
	\tempo "Scherzo. Allegro vivace"
    \time 3/8
    \clef treble
    \key d \major
    \relative c''' {
	\ottava #1
	\accidentalStyle modern
	\repeat volta 2 {
	    R4. 
	    r8 r8 fis-3-.
	    fis4.(->
	    e8)-2 r r
	    R4.
	    r8 r8 e8-.
	    e4.(-2->
	    d8) r8 r

\break %9

	    R4.

	    r8 r8 fis-3
	    fis4 e8
	    a4-5 e8-2
	    f4 e8
	    gis4-4 e8
	    a4.~ a4 r8
	}
	\break %17
	\repeat volta 2 {
	    R4.
	    r8 r a-.-5
	    a4.(->

	    g8) r r
	    R4.
	    r8 r g-.-4

	   
	    g4.(->

	    	\break %24
	    f8) r r
	    R4.
	    r8 r a-.-5
	    a4.(->
	    g8) r r

    
	    f-.-3 r f-.

	    g8[-4-. f-. g]-.

	    \break %31
	    a4.(-5
	    a8[) g-4 e-2]
	    R4.
	    r8 r fis-.-3
    
	    fis4.(->
	    e8) r r

	    \break %37

	    R4.
	    r8 r e-2-.
	    e4.(->

	    d8) r r
	    R4.
	    r8 r8 fis-3

	    \break %43
	    fis4-> e8
	    e4 e8
	    a4.(-5
	    a8[) e-2 fis]
	    d4.-1 ~
	}
	\alternative {
	    { d4 r8}
	    { \partial 2*8 d4 \repeatTie \bar "|."}
	}
    }
}

primoDown =  {
    \time 3/8
    \clef treble
    \key d \major
    \relative c'' {
	\accidentalStyle modern
	\repeat volta 2 {
	    R4.
	    r8 r8 fis-3-.
	    fis4.(->
	    e8)-4 r r
	    R4.
	    r8 r8 e8-.
	    e4.(-4->
	    d8) r8 r
	    R4.

	    r8 r8 fis-3
	    fis4 e8
	    a4-1 e8-4
	    f4 e8
	    gis4-2 e8
	    a4.~ a4 r8
	}
	\repeat volta 2 {
	    R4.
	    r8 r a-.-1
	    a4.(->

	    g8) r r
	    R4.
	    r8 r g-.-2
	    g4.(->
	    f8) r r
	    R4.
	    r8 r a-.-1
	    a4.(->
	    g8) r r
	    f-.-3 r f-.

	    g8[-2-. f-. g]-.
	    a4.(-1
	    a8[) g-2 e-4]
	    R4.
	    r8 r fis-.-3
	    fis4.(->
	    e8) r r
	    R4.
	    r8 r e-4-.
	    e4.(->

	    d8) r r
	    R4.
	    r8 r8 fis-3
	    fis4-> e8
	    e4 e8
	    a4.(-1
	    a8[) e-4 fis]
	    d4.-5 ~
	}
	\alternative {
	    { d4 r8}
	    { \partial 2*8 d4\repeatTie \bar "|."} 
	}
    }
}




%%%% TRIO %%%%


primoTrioDynamics =  {
    s8\p s4. s4. s4. s4. s4. s4. s4. s4. s4. s4. 
    s4. s8\< s8 s8\! s4.\f s4. s4. s4
    s8\p s4. s4. s4. s4. s4.
    s4. s4. s4. s4 s4.-\markup\italic{cresc.} s8 s8\< s8 s8\! s4. s4\f 
    s4 s4_\markup{Scherzo da Capo senza replica.} s1
}


primoTrioUp =  {
	\tempo "Trio"
    \time 3/8
    \clef treble
    \key g \major
    \relative c''' {
	\ottava #1
	\accidentalStyle modern
	\repeat volta 2 {
	    \partial 8 d8-1-.
	    g-4-. g-. g-.
	    g-. g-. g-.
	    g(-. fis g)
	    d4.
	    d8-. d-. d-.
	    d-. d-. d-. 
	    d(-1 fis-3 g)

\break %57

	    a4 d,8-1-.
	    g8-4-. g-. g-.
	    g-. g-. g-. 

	    g( fis g)
	    d4.
	    a'8-5-. a-. a-.
	    a-. a-. a-.

\break %63
	    
	    d,4.( d8) r
	}
	\repeat volta 2 {
	    \partial 8 d8-.
	    a'4-5-> d,8-.
	    a'4-> d,8-.
	    d-. e-. fis-.
	    g-.-4 fis-. g-.
	    a-.-5 d,4-1->

\break %70

	    a'8-. d,4->
	    d8-1-. e-. fis-.
	    g-.-4 fis-. g-.
	    e4-2 e8
	    e4 e8
	    e4( a8)

	    \break %76
	    a4.-5
	    g8-4 fis g
	    a e-2 fis
	    g4.(
	}
	\alternative{
	    { \partial 4 g8) r8 }
	    { g8 \repeatTie r8 r8 \bar "|."}
	}
    }
}

primoTrioDown =  {
    \time 3/8
    \clef treble
    \key g \major
    \relative c'' {
	\accidentalStyle modern
	\repeat volta 2 {
	    \partial 8 d8-5-.
	    g-2-. g-. g-.
	    g-. g-. g-.
	    g(-. fis g)
	    d4.
	    d8-. d-. d-.
	    d-. d-. d-. 
	    d(-5 fis-3 g)
	    a4 d,8-5-.
	    g8-2-. g-. g-.
	    g-. g-. g-.

	    g( fis g)
	    d4.
	    a'8-1-. a-. a-.
	    a-. a-. a-.
	    d,4.( d8) r 
        }
	\repeat volta 2 {
	    \partial 8 d8-.
	    a'4-1-> d,8-.
	    a'4-> d,8-.
	    d-. e-. fis-.
	    g-.-2 fis-. g-.
	    a-.-1 d,4-5->

	    a'8-. d,4->
	    d8-5-. e-. fis-.
	    g-.-2 fis-. g-.
	    e4-4 e8
	    e4 e8
	    e4( a8)
	    a4.-1
	    g8-2 fis g
	    a e-4 fis
	    g4.(
	}
	\alternative{
	    { \partial 4 g8) r8 }
	    { g8 \repeatTie r8 r8 \bar "|."}
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

\score{

    \new PianoStaff  <<
    \set Score.currentBarNumber = #50
	\new Staff = "up"   \primoTrioUp
	\new Dynamics = "dynamics" \primoTrioDynamics
	\new Staff = "down" \primoTrioDown
    >>
}