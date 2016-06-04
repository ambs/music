\version "2.19.30"



secondoAllegroDynamics =  {
    s2.\p s2. s2. s2. s2. s2. s2. s2. s2.\f s2.
    s2. s2. s2. s2. s2. s2. s2.\p s2. s2. s2. s2.
    s2. s4\< s2 s2 s4\! s2.\f s2. s2. s2. s2. s2. s2. s2._\markup{Fine}
}

secondoAllegroUp =  {
    \time 3/4
    \tempo "Allegro"
    \clef treble
    \relative c' {
	\set fingeringOrientations = #'(left)
	\accidentalStyle modern

		\repeat volta 2 {
	    r4 <c-1 e-3 g-5> <c e g>
	    r <d-2 f-4 g-5> <d f g>
	    r <c-1 e-3 g-5> <c e g>
	    r <c e g> <c e g>
	    r <c-1 d-2 a'-5> <c d a'>
	    r <b-1 d-2 g-5> <b d g>
	    r <c-1 e-3 g-5> <c e g>
	    r <c e g> <c e g>

\break %9

	    r <c e g> <c e g>
	    r <d-2 g-5> <d g>
	    r <c f-2 c'-5> <c f c'>
	    r <c e-2 c'-5> <c e c'>
	    r <c-1 d-2 a'-5> <c d a'>
	    r <b-1 d-2 f-4 g-5> <b d f g>
	    r <c-1 e-2 g-5> <c e g>
	    <c e g>2 r4
	}
	\repeat volta 2 {
	    r <b-1 d-2 g-5> <b d g>
	    r <b d g> <b d g>
	    r <c-1 ees-3 g-5> <c ees g>
	    r <c ees g> <c ees g>
	    r <d-2 f-4 g-5> <d f g>
	    r <c-1 ees-3 g-5> <c ees g>
	    r <b-1 d-2 g-5> <c-1 ees-3 g-5>
	    <d-2 f-4 g-5>2.
	    r4 <c-1 e-3 g-5> <c e g>
	    r <d-2 g-5> <d g>
	    r <c f-2 c'-5> <c f c'>
	    r <c e-2 c'-5> <c e c'>
	    r <c-1 d-2 a'-5> <c d a'>
	    r <b-1 d-2 f-4 g-5> <b d f g>
	    r <c-1 e-3 g-5> <c e g>
	    <c e g>2 r4
	}
    }
}

secondoAllegroDown =  {
    \time 3/4
    \clef bass
    \relative c {

	\accidentalStyle modern

		\repeat volta 2 {
	    c4-2 r r
	    b r r
	    c-2 r r
	    c-1 r r
	    f,-4 r r
	    g-3 r r
	    c-1 r r
	    c r r
	    <c, c'> r r
	    <b b'> r r
	    <a a'> r r
	    <g g'> r r
	    <fis fis'> r r
	    <g g'> r r
	    <c c'> r <c c'>
	    <c c'>2 r4
	}
	\repeat volta 2 {
	    <g' g'>4 r r
	    <g g'> r r
	    <g g'> r r
	    <g g'> r r
	    b-3 r r
	    c-2 r r
	    <g g'>2. ~ <g g'>2.
	    <c, c'>4 r r
	    <b b'> r r
	    <a a'> r r
	    <g g'> r r
	    <fis fis'> r r
	    <g g'> r r
	    <c c'> r <c c'>
	    <c c'>2 r4
	}
    }
}

\score{
    \new PianoStaff  <<
	\new Staff = "up"   \secondoAllegroUp
	\new Dynamics = "dynamics" \secondoAllegroDynamics
	\new Staff = "down" \secondoAllegroDown
    >>
}