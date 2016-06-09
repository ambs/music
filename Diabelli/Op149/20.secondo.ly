\version "2.19.30"


secondoDynamics =  {
    s2\f s2 s2 s2 s2 s2 s2 s2
    s2\f s8\p s8\> s8 s8\! s2\f s8\p s8\> s8 s8\! s2\f s8\> s4 s8\! s2 s2
}


secondoUp =  {
		\tempo "Hongroise"

    \time 2/4
    \clef treeble
    \key f \major
    \relative c' {
	\accidentalStyle modern
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    r8 <a d-2 f-4>4 <a d f>8
	    r8 <a d f>4 <a d f>8
	    r8 <a e'-3 g-5>4 <a e' g>8
	    r8 <a e' g>4 <a e' g>8
	    r8 <a d-2 f-4>4 <a d f>8
	    r8 <a d f>4 <a d f>8
	    r8 <bes e-3 g-5>4 <bes e g>8
	    <a-1 f'-5>8[ <a c f> <a c f>] r8
	}
	\repeat volta 2 {
	    bes16(-1 e-4 c-2 e-4 bes e c e
	    bes8) <bes c e>4 <bes c e>8
	    a16(-1 f'-5 c-2 f-5 a, f' c f
	    a,8) <a c f>4 <a c f>8
	    r8 <a e'-4 g-5>4 <a e' g>8
	    r8 <a d-3 f-5>4 <a d f>8
	    r8 <bes-2 d-3 e-4> r <a cis-2 e-4 g-5>
	    <a d-3 f-5>8 \grace{e'16(-4} d16[)(-3 cis])-2 d8-3-. r
	}
    }	
}	

secondoDown =  {
    \time 2/4
    \clef bass   
    \key f \major
    \relative c, {
	\accidentalStyle modern
	\repeat volta 2 {
	    <d d'>8 r <d d'> r
	    <d d'>8 r <d d'> r
	    <cis cis'> r <a a'> r
	    <cis cis'> r <a a'> r
	    <d d'>8 r <d d'> r
	    <d d'>8 r <d d'> r
	    <c c'> r <c c'> r
	    <f f'>[ <f f'> <f f'>] r
	}
        \repeat volta 2 {
	    c8 r c' r
	    c, <c c'>4 <c c'>8
	    f r f' r
	    f, <f f'>4 <f f'>8
	    cis'-2 r a r
	    d r f,-4 r
	    g r a r
	    d,-. <d f a d>-. <d f a d> r
	}
    }
}



\score{
    \new PianoStaff  <<
	\new Staff = "up"   \secondoUp
	\new Dynamics = "dynamics" \secondoDynamics
	\new Staff = "down" \secondoDown
    >>}