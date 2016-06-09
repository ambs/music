\version "2.19.30"


secondoDynamics =  {
    s4 s1\p s1 s2 s8\< s4 s8\! s8\> s4 s8 s8\! s8\p s4
    s2 s8\< s4 s8\! s8\> s4 s8\! s2 s2 s8 s8\< s8 s8\! s16 s2\f s8 s16
    s4 s1\p s1 s1 s1-\markup\italic{cresc. poco a poco}
    s1 s1 s1\f s1
    s4\p s8 s8\< s4 s8 s8\! s8\> s4 s8 s8\! s8 s4 s4 s8 s8\< s8 s8\! s16 s2\f s4 s8 s16
    s4\f s1 s1 s1 s1\ff
    s1\p s1 s1\pp s1
}

secondoUp =  {
	\tempo "Andante cantabile"
    \time 4/4
    \clef bass
    \key d \major
    \relative c {
	\accidentalStyle modern
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    \partial 4 r4
	    fis8(-1 a-2 d-5 a) fis( a d a)
	    g(-1 a-2 cis-4 a) g( a cis a)

\break %4

	    fis(-1 b-3 d-5 b) g(-1 b-2 e-5 b)-2
	    d([-4 a] d[-3 e16 d)] cis8-2 \clef treble a([-1 a'8.-5 g16)]

	    g8(-5 a, fis'-4 a,) <d-2 fis-4>( a <d fis> a)
	    <cis-2 g'-5>( a <cis g'> a) <cis g'>( a <cis g'> a)
	    r8 <b d fis-4> r <b e g-5> r <a d fis-4> r <a cis g'-5>
	    \partial 4*3 r16 <a cis-2 g'>(-. <a cis g'>-. <a cis g'>-.
	    <a cis g'>-. <a cis g'>-. <a cis g'>-. <a cis g'>)-. <a d-2 fis-4>8 r
        }

\break
	\repeat volta 2 {
	    \partial 4 r4
	    r4 e'8.([-2-> fis16] e8) r r4
	    r4 e8.([-2-> fis16] e8) r r4
	    r4 fis8.([-2-> g16] fis8) r r4
	    r4 fis8.([-2-> g16] fis8) r r4

	    r8 <b, e-3> r <b dis fis-4> r <b e g-5> r <b e-3>
	    ais16(-1 cis-2 fis-5 cis) ais( cis fis cis) b( d fis d) b( d fis d)
	    ais(-1 cis-2 fis cis) b(-1 d-3 fis d) ais(-1 cis-2 fis cis) b(-1 d-3 fis d)
	    <ais-1 cis-2 fis-5>2.\fermata r4

	    \clef bass
	    fis8(-1 a-2 d-5 a) fis( a d a)
	    g(-1 a-2 cis-4 a) g( a cis a)
	    r8 <fis-1 d'-5> r <g b-2 e-5> r <a d-3 fis-5> r <a cis-2 g'-5>
	    \clef treble
	    r16 <a cis-2 g'>([-. <a cis g'>-. <a cis g'>]-. 
            <a cis g'>[-. <a cis g'>-. <a cis g'>-. <a cis g'>)]-. <a d-2 fis-4>8 r
         }
         \partial 4 d8.(-3 c16)
         c16-2 <a-1 d-3 fis-5> <a d fis> <a d fis> <a d fis> <a d fis> <a d fis> <a d fis>
	 <a d fis>8 r c8.(-3 b16)  b16[-2 <g-1 d'-3 g-5> <g d' g> <g d' g>]
	 <g d' g>[ <g d' g> <g d' g> <g d' g>] <g d' g>8 r b8.(-3 bes16)
         bes16[-2 <g-1 d'-3 g-5> <g d' g> <g d' g>]
         <g d' g>[ <g d' g> <g d' g> <g d' g>]
         <g d' g>8 r b8.(-3 a16)-2
         a8-1 <a-1 cis-2 e-4 g-5> r <b-1 d-3 fis-5> r <b-1 d-3 e-4> r <a-1 cis-2 e-5>

         \clef bass
         fis16(-1 a-2 d-5 a) fis( a d a) g(-1 a-2 cis-4 a) g( a cis a)
         fis16(-1 a-2 d-5 a) fis( a d a) g(-1 a-2 cis-4 a) g( a cis a)
         fis16(-1 a-2 d-5 a) fis( a d a) fis( a d a) fis( a d a)
         <fis a d>2-. r\fermata \bar "|."
    }	
}	

secondoDown =  {
    \time 4/4
    \clef bass   
    \key d \major
    \relative c, {
	\accidentalStyle modern
	\repeat volta 2 {
	    \partial 4 r4
	    d r d' r
	    a, r a' r
	    b,8 r b' r g, r g' r
	    a, r a' r a, r r4

	    d4 r d' r
	    a, r a' r
	    b8-2 r g-4 r a-3 r a r
	    \partial 4*3 r16 <a-1 e'-5>(-. <a e'>-. <a e'>-.
	    <a e'>-. <a e'>-. <a e'>-. <a e'>)-. <d-3 fis-2>8 r
	}
	\repeat volta 2 {
	    \partial 4 r4
	    << {gis,8-4 <b-3 d-2 e-1> <b d e> <b d e> gis <b d e> <b d e> <b d e>} \\
	       {gis2 gis2} >>
	    << {a8-5 <cis-3 e-1> <cis e> <cis e> a <cis e> <cis e> <cis e>} \\
	       {a2 a2} >>
	    << {ais8-5 <cis-4 e-2 fis-1> <cis e fis> <cis e fis> ais <cis e fis> <cis e fis> <cis e fis>} \\
	       {ais2 ais2} >>
	    << {b8-5 <d-3 fis-2> <d fis> <d fis> b <d fis> <d fis> <d fis>}\\
	       {b2 b2} >>

	    <g g'>8 r <fis fis'> r <e e'> r <g g'> r
	    <fis fis'> r <fis fis'> r <fis fis'> r <fis fis'> r
	    <fis fis'> r <b-3 fis'> r <fis fis'> r <b fis'> r
	    <fis fis'>2.\fermata r4

	    d4 r d' r
	    a, r a' r
	    b8-2 r a-4 r a-3 r a r
	    r16 <a-5 e'-1>([-. <a e'>-.  <a e'>]-.
 	    <a e'>[-.  <a e'>-.  <a e'>-.  <a e'>)]-. <d-3 fis-2>8 r
	}
        \partial 4 <d, d'>8.( <c c'>16)
        <c c'>2( <c c'>8) r <c c'>8.( <b b'>16)
        <b b'>2( <b b'>8) r <b b'>8.( <bes bes'>16)
        <bes bes'>2( <bes bes'>8) r <bes bes'>8.( <a a'>16)
        <a a'>8 r <b b'> r <g g'> r <a a'> r

        <d d'>4 <d a' d> <d a' d> <d a' d>
        <d a' d> <d a' d> <d a' d> <d a' d>
        <d a' d> a'-2 fis-3 a-2
        <d a' d>2 r\fermata \bar "|."
    }
}

\score{
    \new PianoStaff  <<
	
	\new Staff = "up"   \secondoUp
	\new Dynamics = "dynamics" \secondoDynamics
	\new Staff = "down" \secondoDown
    >>
}