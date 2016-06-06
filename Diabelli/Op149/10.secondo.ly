\version "2.19.30"



secondoDynamics =  {
    s1\f s1 s1 s1 s1 s1
    s1 s1 s1 s1 s1 s1
    s1\p-\markup\italic{dolce} s1 s1 s1 s1 s1 s1 s1 s1
    s1 s1 s1 s1 s1 s1 s1 s1 s1
    s1 s1 s1 s1 s1 s1 s1-\markup\italic{cresc.} s1
    s2 s2\sf s2 s2\sf s1\f s1 s1 s1
}

secondoUp =  {
	\tempo "Allegro"
    \time 2/2
    \clef treble
    \key g \major
    \relative c' {
	\accidentalStyle modern
	\repeat volta 2 {
	    g2-1^^ b-2^^
	    \set fingeringOrientations = #'(left)
	    d-3^^ <g, d'-3 f-5>
	    <g c e-4>4 <g c e> <a c d-3 fis-5> <a c d fis>
	    <b d-2 g-5> <b d g> <b d g> <b d g>
	    c8(-1 d-2 fis-4 d) b(-1 d-2 g-5 d)
	    c8(-1 d fis-4 d) b(-1 d g-5 d)

\break %7

	    a(-1 d-4 c d) g,( d'-4 b d)
	    a( fis'-4 d fis) a,( g'-5 e g)
	    <a, d fis-4>8 r <a e' g-5> r <a d fis> r <a e' g> r
	    <a d fis> r <a e' g> r <a d fis> r <a e' g> r
\break %11
	    <a d fis>2 <a d fis>4. <a d fis>8
	    <a d fis>1
	}


	\repeat volta 2 {
	    <fis'-3 a-5>4( d-1 <fis a> d)
	    <fis a>( d <fis a> d)
	    g(-4 d-1 g d)
	    g( d g d)

\break %17

	    <fis-3 a-5>( d <fis a> d)
	    <fis a>( d <fis a> d)
	    g(-4 d-1 g d)
	    g(-5 b,-2 d-3 b)-2
	    a(-1 b fis'-5 b,)

	    a(-1 b-2 dis-4 b)

\break %23 

	    g(-1 b-2 e-5 b)
	    g( b e b)
	    g(-1 b-2 f'-5 b,)
	    g( b f' b,)
	    g(-1 c-3 e-5 c)
	    g( c e c)

\break %29
	    gis(-1 d'-4 e-5 d)
	    c(-3 e a,-1 e')

	    gis,(-1 d'-4 e d)
	    c(-3 e a,-1 e')
	    \clef bass
	    r <fis,-2 c'-4 d-5> r <fis c' d>
	    r <fis c' d>  r <fis c' d>
	    r <g-1 b-3 d-5> r <g b d>
	    r <g b d> r <g b d>
	    r <fis-2 c' d>  r <fis c' d>
	    r <fis c' d>  r <fis c' d>

	    b8(-3 d g,-1 d' fis,-2 c'-4 d c)
	    b(-3 d g,-1 d' fis,-2 c'-4 d c)
	    <g-1 b-3 d-5> r \clef treble <c d fis-4> r <b d g-5> r <c d fis> r
	    <b d g> r <c d fis> r <b d g> r <c d fis> r
	    <b-1 d-2 g-5>2 <b d g>4. <b d g>8
	    <b d g>1
	}
    }
}

secondoDown =  {
    \time 2/2
    \clef bass   
    \key g \major
    \relative c {
	\accidentalStyle modern
	\repeat volta 2 { 
	    s1
	    <g, g'>
	    <g g'>
	    <g g'>
	    r4 d'4-5 g-2 r4
	    r4 d4 g r4

	    fis4-3 r4 g-2 r
	    d-5 fis-3 a2-1
	    \set fingeringOrientations = #'(left)
	    <d,-3 a'-1>8 r <a-5 a'-1> r <d a'>8 r <a a'> r
	    <d-3 a'-1>8 r <a-5 a'-1> r <d a'>8 r <a a'> r
	    d8(-5 d'-1 cis-2 d-1 a-2 d-1 fis,-4 a-2)
	    d,1-5
	}
	\repeat volta 2 {
	    <d d'>2 r
	    <d d'> r
	    <g d'-2 g> r
	    <g d' g> r
	    <d d'> r
	    <d d'> r
	    <g d' g> r
	    <g d' g> r
	    <dis dis'> r

	    <b b'> r
	    <e e'> r
	    <e e'> r
	    d'4-2 r g,-5 r
	    d' r g, r
	    c-1 r g-2 r
	    e-4 r c r
	    e r e' r
	    a,-3 r c-2 r
	    e r e, r
	    a-3 r c-2 r
	    d r d, r
	    d' r d, r
	    g-3 r d'-1 r
	    b-2 r g-3 r
	    d' r d, r
	    d' r d, r

	    g-3 r <d d'>2
	    <g-3 d'>4 r <d d'>2
	    <g d'>8 r <d d'> r <g d'> r <d d'> r
	    <g d'> r <d d'> r <g d'> r <d d'> r
	    g8( g'-1 fis-2 g d-2 g b,-4 d-2)
	    g,1
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