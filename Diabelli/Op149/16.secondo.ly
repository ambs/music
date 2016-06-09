\version "2.19.30"

secondoDynamics =  {
    s4.\p s4. s4. s4. s4. s4. s4. s4. s4.
    s4. s4. s4. s8\< s4 s4 s8\! s4.\f s4.
    s4.\pp s4.
    s4. s4. s4. s4. s4. s4. s4. s4. s4. s4.
    s4. s8 s8\< s8\! s4.\f s8\> s8 s8\! s4.\p s4. s4. s4. s4. s4.
    s4. s4. s4. s4. s8\< s4 s4 s8\! s4.\f s4. s4. s4. s4
}

secondoUp =  {
	\tempo "Scherzo. Allegro vivace"
    \time 3/8
    \clef treble
    \key d \major
    \relative c' {
	\accidentalStyle modern
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    <d fis a>16[-5-. <d fis a>]-.  <d fis a>8-. <d eis gis>-4-.
	    <d fis a>-.-5 <d g b>-.-5 <d fis a>-.-5
	    r <cis-2 g'-4 a-5> <cis g' a>
	    r <cis g' a> <cis g' a>
	    <e-1 g-4 a-5>16[-. <e g a>] <e g a>8-. <dis-2 fis-3 a-5>-.
            <e-1 g-4 a-5>-. <fis-3 a-5>-. <e-2 g-4 a-5>-.
	    r <a, fis'-4 a-5> <a fis' a>
            r <a fis' a> <a fis' a>


\break %9

            <d fis-3 a-5>16[-. <d fis a>]-. <d fis a>8-. <d eis gis-4>-.

            <d fis a-5>-. <d g b-5>-. <d fis a-5>-.
            r <cis e-2 a-5> <cis e a>
            r <cis e a> <cis e a>
            r <b d-2 gis-5> <b d gis>
            r <b d-2 e-3 gis-5> <b d e gis>
            r <cis e-2 a-5> <cis e a>
            << { a'4.-5 } \\ { <cis,-1 e-2>8( <d-1 fis-3> <e-2 g-4>) } >>
         }

         \break %17
	\repeat volta 2 {
	    <c f-3 a-5>16[-. <c f a>]-. <c f a>8-. <b f'-3 g-4>-.
            <c f-2 a-4>-. <d f bes-5>-. <c f a-4>-.

	    r8 <bes e-2 a-5> <bes e a>
	    r8 <bes e-2 g-4> <bes e g>
            <bes c-2 g'-5>16[-. <bes c g'>]-.  <bes c g'>8-. <a c fis-4>-.
	    <bes c g'-5>-. <c a'-5>-. <bes c g'-5>-.

	    
            r8 <a c-2 g'-5> <a c g'>
            \break %24
            r8 <a c-2 f-4> <a c f>
            <c f-3 a>16[-. <c f a>]-. <c f a>8-. <b f'-3 gis-4>-.
            <c f-2 a-4>-. <d f bes-5>-. <c f a-4>-.
            r8 <a cis-2 g'-5> <a cis g'>
            r8 <a cis g'> <a cis g'>

            

            r8 <a d-3 f-5> <a d f>
	    r8 <d-1 g-4> <d g>

	    \break %31
            <cis-2 e-3 a-5>-. <d-1 f-3 a-5>-. <dis-2 fis-3 a-5>-.
            <e-1 g-4 a-5>4.
	    <d fis-3 a-5>16[-. <d fis a>]-.  <d fis a>8-. <d eis gis-4>-.
            <d fis a-5>-. <d g b-5>-. <d fis a-5>-.


            r8 <cis-2 g'-4 a-5> <cis g' a>
            r8 <cis g' a> <cis g' a>

            \break %37
            <e-1 g-4 a-5>16[-. <e g a>]-.  <e g a>8-. <dis-2 fis-3 a-5>-.
            <e-1 g-4 a-5>-. <fis-3 a-5>-. <e-2 g-4 a-5>-.

	    r8 <a, fis'-4 a-5> <a fis' a>
            r8 <a fis' a> <a fis' a>
            <d-1 fis-3 a-5>16[-. <d fis a>]-. <d fis a>8-. <d eis gis-4>-.
            <d fis a-5>-. <d g b-5>-. <d fis a-5>-.
            \break %43
            r8 <d e gis-4> <d e gis>
            r8 <d e gis> <d e gis>
            r8 <a cis-2 g'-5>16[ <a cis g'>] <a cis g'>8
            r8 <a cis g'> <a cis g'>
            r8 <a d fis-4> <a d fis>
        }
	\alternative {
	    { <a d fis>8[ <a a'> <a a'>] }
	    { \partial 2*8 <a d fis>4-- \bar "|."}
	}
    }	
}	

secondoDown =  {
    \time 3/8
    \clef bass   
    \key d \major
    \relative c, {
	\accidentalStyle modern
	\repeat volta 2 {
	    <d d'>4 r8
	    <d d'>4 r8
	    <a' a'>4 r8
            <a a'>4 r8
	    <a, a'>4 r8
            <a a'>4 r8
	    <d d'>4 r8
	    <d d'>4 r8
	    <d d'>4 r8
	    <d d'>4 r8
	    <e e'>4 r8
	    <e e'>4 r8
	    <e e'>4 r8
	    <e e'>4 r8
	    <a, a'>8[ r <a a'>]
            <a a'>4 r8
	}
	\repeat volta 2 {
	    <f' f'>4 r8
	    <f  f'>4 r8
	    
	    <c c'>4 r8
	    <c c'>4 r8
	    <c c'>4 r8
	    <c c'>4 r8
	    <f f'>4 r8
	    <f f'>4 r8
	    <f f'>4 r8 
	    <f f'>4 r8
	    <e e'>4 r8
	    <e e'>4 r8

	    <d d'>4 r8
	    <bes bes'>4 r8
	    <a a'>8 <a a'> <a a'>
	    <a a'>4.
	    <d d'>4 r8
	    <d d'>4 r8
	    <a' a'>4 r8
	    <a a'>4 r8
	    <a, a'>4 r8
	    <a a'>4 r8

            <d d'>4 r8
            <d d'>4 r8
            <d d'>4 r8
            <d d'>4 r8
            <b b'>4 r8
            <b b'>4 r8
            <a a'>4 r8
            <a a'>4 r8
	    <d d'>8[ r <d d'>]
        }
	\alternative {
	    { <d d'>4 r8 }
	    { \partial 2*8 <d d'>4 \bar "|."}
	}
    }
}

%%%% TRIO %%%%



secondoTrioDynamics =  {
    s8 s4.\p s4. s4. s4. s4. s4. s4. s4. s4. s4.
    s4. s8\< s8 s4\! s4.\f s4. s4. s4
    s8 s4.\p s4. s4. s4. s4.
    s4. s4. s4. s4.-\markup\italic{cresc.} s4. s4. s4. s4\f
    s4 s4_\markup{Scherzo da Capo senza replica.} s1
}

secondoTrioUp =  {
	\tempo "Trio"
    \time 3/8
    \clef bass
    \key g \major
    \relative c' {
	\accidentalStyle modern
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    \partial 8 r8
	    <g-1 b-3>-. <a c>-. <b d>-.
	    <a-1 c-3>-. <b d>-. <c e>-.
	    r8 <g b d-5> <g b d>
	    r8 <g b d> <g b d>
	    <fis-1 a-2>-. <g-1 b-3>-. <a c>-.
	    <g-1 b-3>-. <fis-2 a-4>-. <e g>-.
	    r8 <fis-2 a-3 d-5> <fis a d>
\break %57

	    r8 <fis-2 a-3 c-4 d> <fis a c d>
	    <g-1 b-3>-. <a c>-. <b d>-.
	    <a-1 c-3>-. <b d>-. <c e>-.

	    r8 <g b d-5> <g b d>
	    \clef treble
	    <b-1 d-2>-. <d-2 g-4>-. <g-4 b-5>
	    <fis-3 a-5>-. <e g-4>-. <d fis-3>-.
	    \clef bass
	    <g,-1 e'-5> <a-1 fis'-5> <g-1 e'-5>

\break %63
	    
	    <fis-2 a-3 d-5>[ <fis a d> <fis a d>]
	     <fis a d> r8
	}
	
        \repeat volta 2 {
        	\partial 8
	     r8
	    <fis-2 a-3>-. <g-1 b-4>-. <a-3 c-5>-.
	    <fis a>-. <g b>-. <a c>-.
	    r8 <g b-3 d-5> <g b d>
	    r8 <g-1 b-4 d-5> <g b d>


	    <fis-2 a-3>-. <g-1 b-4>-. <a-3 c-5>-.
\break %70


	    <fis a>-. <g b>-. <a c>-.
	    r8 <g-1 b-3 d-5> <g b d>
	    r8 <g-2 b-4 d> <g b d>
	    r8 <g c-3 e-5> <g c e>
	    r8 <gis-2 d'-4 e-5> <gis d' e>
	    r8 <a c-3 e-5> <a c e>

  \break %76
	    r8 <a c e> <a c e>
	    r8 <b-3 d-5> <b d>
	    r8 <a-2 c-4 d-5> <a c d>
	    <g-1 b-3 d-5>[ <g b d> <g b d>]
	}
        \alternative { 
	    {\partial 4 <g b d>8 r8 }
	    { <g b d>8 r8 r8 }
	}
   }
}

secondoTrioDown =  {
    \time 3/8
    \clef bass   
    \key g \major
    \relative c {
	\accidentalStyle modern
	\repeat volta 2 {
	    \partial 8 r8
	    g4-3 r8
	    g4 r8
	    g4 r8
	    g4 r8
	    d'4 r8
	    d4 r8
	    <d, d'>4 r8
	    <d d'>4 r8
	    g4-3 r8
	    g4 r8

	    g4 r8
	    g4 r8
	    a4-2 r8
	    a4 r8
	    d8[-. a-.-2 fis]-.-3
	     d8 r8
	}
	\repeat volta 2 {
\partial 8	     r8
	    d'4 r8
	    d4 r8
	    g,4-2 r8
	    g4 r8
	    d'4 r8
	    d4 r8
	    g,4-2 r8
	    g4 r8
	    <c, c'>4 r8
	    <b d'>4 r8
	    <a a'>4 r8
	    <c c'>4 r8
	    <d d'>4 r8
	    <d d'>4 r8
	    g[-1-. d-2-. b]-4-.
	}
	\alternative {
	    { \partial 4 g8 r8 }
	    { g8 r8 r8 \bar "|."}
	}
    }
}




\score{
    \new PianoStaff  <<
	\new Staff = "up"   \secondoUp
	\new Dynamics = "dynamics" \secondoDynamics
	\new Staff = "down" \secondoDown
    >>
}

\score{

    \new PianoStaff  <<
    \set Score.currentBarNumber = #50  
	\new Staff = "up"   \secondoTrioUp
	\new Dynamics = "dynamics" \secondoTrioDynamics
	\new Staff = "down" \secondoTrioDown
    >>
}