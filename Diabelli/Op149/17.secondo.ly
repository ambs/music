\version "2.19.30"


secondoDynamics =  {
    s2\p s2 s2 s2 s2 s2 s2 s2
    s2\f s2 s2 s2 s2 s2 s2 s2 s2\p
    s2 s2 s2 s2-\markup\italic{cresc.} s8 s8\< s8 s8\! s2\f s2 s2
    s2\p s2 s2\f s2 s2\p s2
    s2\f s2 s2 s2 s2 s2
}

secondoUp =  {
	\tempo "Rondino. Allegro"
    \time 2/4
    \clef treble
    \key d \major
    \relative c' {
	\accidentalStyle modern
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    <d-1 fis-3>8[-. a'-5-. <d, fis>-. a']-.
	    <d, fis>[-. a' <d, fis>-. a']-.
	    <cis,-2 g'-4>[-. a'-5-. <cis, g'>-. a']-.
	    <d,-1 fis-3>[-. a'-5-. <d, fis>-. a']-.
	    <d, fis>[-. a' <d, fis>-. a']-.

	    \break %6

	    <d, fis>[-. a' <d, fis>-. a']-.
	    <cis,-2 g'-4>[-. a'-5-. <cis, g'>-. a']-.
	    <d,-1 fis-3>[-. <d a'-5>-. <d fis-3>]-. r
        }
	\repeat volta 2 {
            r8 <a e'-3 g-5>[ <a e' g> <a e' g>]
            r8 <a d-3 fis-5>[ <a d fis> <a d fis>]

\break %11
            r8 <ais e'-4 fis-5> r <b d-3 fis-5>
            <ais cis-2 fis-5>[ <ais cis fis> <ais cis fis>] r
            r <a e' g-5>[ <a e' g> <a e' g>]
            r <a d fis-4>[ <a d fis> <a d fis>]
            r <d e gis-4> r <d e gis>
\break %16

            <cis e-2 a-5>4 r
            <d-1 fis-3>8[-. a'-5-. <d, fis>-. a']-.

	    <d, fis>[-. a'-. <d, fis>-. a']-.
            <cis,-2 g'-4>[-. a'-.-5 <cis, g'>-. a']-.
	    <d,-1 fis-3>[-. a'-. <d, fis>-. a']-.
	    \break %21

	    <c,-1 d-2 fis-4>[-. a'-5-. <c, d fis>-. a']-.
            <b, d-2>[-. g'-5-. <b, e-3>-. g']-.
            <d-2 e-3> r <a cis e-3 g-5> r
	}
	\alternative {
	    { <a d-2 fis-1>[-. <a d fis>-. <a d fis>]-. r }
	    { <d fis>-. a'16(-5 fis-4 d-2 fis-4 d-2 a)-1 \bar "||"}
	}

	\break %26
	r8 <a cis-2 g'-5> r <a cis g'>
	r  <a d-2 fis-4> r <a d fis>
	a16(-1 b cis d-1 e fis g a)-5
        <d,-1 fis-3>8[ a'-5 <d, fis> a']
        r8 <a, cis-2 g'-5> r <a cis g'>
        r8 <a d-2 fis-4> r <a d fis>

        a16(-1 b cis d-1 e fis g a)-5
        d,(-1 a'-5 fis-3 d-1 cis-2 a'-5 g-5 e)-2
        d(-1 a'-5 fis-3 d-1 cis-2 a'-5 gis-4 e)-2
        d4-1 r
        <a d-2 fis-4> <a d fis>
        <a d fis>2 \fermata \bar "|."
    }	
}	

secondoDown =  {
    \time 2/4
    \clef bass   
    \key d \major
    \relative c {
	\accidentalStyle modern
	\repeat volta 2 {
	    d4-2 r
	    d r
	    a8 r a' r
	    d,, r d' r
	    <d, d'>4 r
	    <d d'>4 r
	    a8 r a' r
	    <d, d'>8[-. <d d'> <d d'>] r
	}
	\repeat volta 2 {
	    <cis cis'>2
	    <d d'>2
	    <cis cis'>8 r <b b'> r
	    <fis' fis'>8[ <fis fis'> <fis fis'>] r
            <cis cis'>2
            <d d'>2
            <b b'>8 r <b b'> r
            <a a'>4 r
            d'-2 r

            d4 r
            a8 r a' r
            d,, r d' r
            <d, d'>2
            <g g'>8 r <e e'> r
            <a a'> r <a, a'> r
        }
	\alternative {
            { <d d'>[-. <d d'>-. <d d'>]-. r }
	    { <d d'>8 r r4 \bar "||"}
	}
	a'8-5 r a r
	a r a r 
        << { a[ <e'-2 g-1> <e g> <e g>] } \\ { a,2 } >>
        <d-3 fis-2>8 r d r
        a r a r
        a r a r

        << { a[ <e'-2 g-1> <e g> <e g>] } \\ { a,2 } >>
        <d-3 fis-2>8 r <a-5 e'-1> r
        <d fis> r <a e'> r
        <d fis>4 r
        <d, a' d>4 <d a' d>
        <d a' d>2 \fermata \bar "|."
    }
}


\score{    
    \new PianoStaff <<
	\new Staff = "up"   \secondoUp
	\new Dynamics = "dynamics" \secondoDynamics
	\new Staff = "down" \secondoDown
    >>
}