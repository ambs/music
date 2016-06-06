\version "2.19.30"



secondoDynamics =  {
    s2.\p s4 s2\f s2.\p s2. s2. s2. s4 s8\< s4 s8\!
    s8\> s8 s8\! s4. s2.\p s2. s2. s2. s2. s4. s4.\f
    s2. s2. s2.\ff s2. s2 s4\pp s2.
}

secondoUp =  {
	\tempo "Andante"
    \time 3/4
    \clef bass
    \key f \major
    \relative c' {
	#(set-accidental-style 'modern)
	\repeat volta 2 {
	    f8(-5 c-2 f c e-4 c)
	    <c-2 e-4>( f)-5 f(-5 c-3 a-2 f)
	    e'(-5 c-3 g-1 c-5 f,-2 c'-5)
	    << { c4-5 } \\ { f,8[(-2 e])-1 } >> <e c'>8 e([-2 g-1 c)]-2
	    f8(-4 c-2 f c f c)
	    e(-4 c-2 e c e c)

\break %7
	    c(-2 d <c e-4>4 <d f-5>)

	    << { <d f-5>4( <c e-4>8) } \\ { g4.} >> c8([-2 <b-1 d-3> <bes-2 e-4>)]
	}
	\repeat volta 2 {
	    \set fingeringOrientations = #'(left)
	    <a-1 e'-5>8( g-2 e-1 g-2 e g)
	    f(-1 a-2 d-5 a-2 <f d'> a)
	    <a-2 ees'-5>( f <a ees'> f <a ees'> f)

\break %12
	    <bes-3 d-5>( f <bes d> f <bes d> f)
	    e'(-5 c-3 bes c <bes-2 e-5> c)
	    <a-1 f'-5>( c-3 <a f'> c-3 a-2 f)

	    <e g bes-4 c-5>8 r <e g bes c> r <e bes' c>4
	    << { c'4.-5 } \\ { <e,-1 bes'-3>4( <f-1 a-3>8) } >> a8([-2 c-3 f-5)]
	}
\break %17
	\clef treble
	<c g'-4>8.[ <c g'>16] <c f-3>8[ c16-2-. c-2-.] b(-2 c-3 d-4 c)-3
	\clef bass
	<g-1 bes-2 e-5>8.[ bes16] a8[ a16-2-. a-1-.] gis(-2 a-3 bes-4 a)-3
	d8-5-. r <bes d>-. r <e,-1 bes'-3 c-4>4
	<< {c'2} \\ {<e, bes'>4( <f-1 a-2>) } >> r4 \fermata \bar "|."
    }
}

secondoDown =  {
    \time 3/4
    \clef bass   
    \key f \major
    \relative c, {
	#(set-accidental-style 'modern)
	\repeat volta 2 {
	    <f f'>4 r c'-2
	    f,2-5 r4
	    c4-2 e-3 f-2
	    c c' r
	    f,-3 a-2 c-1
	    c, c' c,
	    f8-2 d-4 g(-1 fis g g,)

	    c([ c' c,)] << {e'([-2 f-1 g)]-2} \\ {c,4.-4} >>
	}
	\repeat volta 2 {
	    <cis, cis'>4 r <cis cis'>
	    <d d'> d8(-5 f-4 a-2 d)
	    <c, c'>4 r <c c'>
	    <bes bes'> bes8(-5 d-3 f-2 bes)-1
	    <c, c'>4 r <c c'>
	    f-3 r8 c'8([-1 a-2 f]-3

	    c)-. r <c c'> r <c c'>4
	    f,8[ f' f,] r r4	    
	}
	<e' e'>8. <e e'>16 <f f'>4 r
	<cis cis'>8. <cis cis'>16 <d d'>4 r
	<bes bes'>8-. r <g g'> r <c c'>4
	<f, f'>2 r4 \fermata \bar "|."
    }
}

\score{
    \new PianoStaff  <<
	
	\new Staff = "up"   \secondoUp
	\new Dynamics = "dynamics" \secondoDynamics
	\new Staff = "down" \secondoDown
    >>
    }