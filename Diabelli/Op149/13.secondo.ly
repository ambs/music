\version "2.19.30"

secondoDynamics =  {
    s2\p s2 s2 s2 s2\p s2 s2\f s2 s2\mf s2 s2 s2
    s2-\markup\italic{cresc.} s2 s2\f s2 s2\p s2 s2 s2 s2\p s2 s2\f s2
    s2\p s2 s2\f s2 s2\p s2 s2\f s2 s2 s2 s2 s2
}

secondoUp =  {
	\tempo "Allegro"
    \time 2/4
    \clef bass
    \key f \major
    \relative c' {
				\accidentalStyle modern

	\repeat volta 2 {
	    c4(-2 e-4
	    f-5 c)-2
	    e(-4 c-2
	    g c)
	    c(-2 e-4
	    f-5 c)-2
	    <bes-1 c-2 e-4> <bes c e>
	    <a-1 c-2 f-5> r
	}
	\break %9
	\repeat volta 2 {
	    <c-2 e-4>8([ g-1 <c e> g)]
	    <c e>8([ g <c e> g)]
	    <d'-3 f-5>([ g,-1 <d' f> g,)]
	    <c-2 e-4>8([ g-1 <c e> g)]
	    
	    <c e>([ g <c e> g)]
	    <c e>([ g <c e> g)]
	    <d'-3 f-5>([ g, <d' f> g,)]
	    <g c-2 e-4>[-. c(-3 b-2 c])-3

\break %17
	     c4(-2 e-4
	     f c)
	     e(-4 c-2
	     g c)
	     c(-2 e-4
	     f c)
	     <bes c e-4> <bes c e>
	     <a-1 c-2 f-5> r
	 }
\break %25
	    e'8([-5 c-3 bes-2 c)]
	    a([-1 c-3 f c)]
	    \set fingeringOrientations = #'(left)
	    <g-1 bes-2 c-3 e-5> r <g bes c e> r
	    <a-1 c-3 f-5> r <a c f> r
	    \set fingeringOrientations = #'(top)
	    e'([-5 c-3 bes c)]
	    a([-1 c-3 f c)]

\break %31
	    \set fingeringOrientations = #'(left)
	    <g-1 bes-2 c-3 e-5> r <g bes c e> r
	    \set fingeringOrientations = #'(top)
	    f'([-5 c-2 a-1 c)]
	    f([ c a c)]
	    f4 r
	    <f, a c-4> r
	    <f a c>2 \fermata \bar "|."

    }
}

secondoDown =  {
    \time 2/4
    \clef bass   
    \key f \major
    \relative c, {
				\accidentalStyle modern

	\repeat volta 2 {
	    <f c' f>2 ~
	    <f c' f>
	    <f c' f>2 ~
	    <f c' f>
	    <f c' f>2 ~
	    <f c' f>
	    <c c'>4 <c c'>
	    <f f'> r
	}
	\repeat volta 2 {
	    <c g' c>4 r
	    <c g' c> r
	    <c g' c> r
	    <c g' c> r

	    <c g' c> r
	    <c g' c> r
	    <g g'> <g g'>
	    <c c'> r
	    <f c' f>2 ~
	    <f c' f>
	    <f c' f>2 ~
	    <f c' f>
	    <f c' f>2 ~
	    <f c' f>
	    <c c'>4 <c c'>
	    <f f'> r
	}
	<c c'> r
	<f f'> r
	c8 r c' r
	f, r f' r
	<c, c'>4 r
	<f f'> r
	<c c'>8 r <c c'> r
	<f c' f> r <f c' f> r
	<f c' f> r <f c' f> r
	<f c' f>4 r
	<f, f'>4 r
	<f f'>2\fermata \bar "|."
    }
}

\score{
    \new PianoStaff  <<
	\new Staff = "up"   \secondoUp
	\new Dynamics = "dynamics" \secondoDynamics
	\new Staff = "down" \secondoDown
    >>
}