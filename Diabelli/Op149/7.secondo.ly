\version "2.19.30"

secondoMarciaDynamics =  {
    s1\f s1 s1 s1
    s1\p s1 s1\f s1
    s1\p s1s1 s1
    s1 s1 s2 s8\< s4 s8\! s1\f
    s1\ff s1 s1 s2 s2_\markup{fine}
}

secondoMarciaUp =  {
	\tempo "Marcia"
    \time 4/4
    \clef bass
    \relative c' {
	\set fingeringOrientations = #'(left)
	\accidentalStyle modern
	\set tupletSpannerDuration = #(ly:make-moment 1 4)
	\repeat volta 2 {
	    <g c-3 e-5>4 <g c e>8. <g c e>16 <g c e>4 <g c e>
	    <g b-2 f'-5> <g b f'> <g c e> <g c e>
	    <g b f'>^^ <g c e> <g b f'>^^ <g c e>
	    \clef treble
	    <g g'>8 <g g'>16 <g g'> <g g'>8 <g g'> <g g'> d'-.-3 b-.-2 g-1-.

\break %5

	    \clef bass
	    <c-4 d-5> <c d> <c d> <c d> <b-3 d-5> <b d> <b d> <b d>
	    <c d> <c d> <c d> <c d> <b d> <b d> <b d> <b d>
	    \times 2/3 { c-4( b c a-2 b c) b-3( d b a-2 d c)}
	    b4 \clef treble	<b-1 d-2 g-5>8. <b d g>16 <b d g>4 r
	}

\break %9

	\repeat volta 2 {
	    \clef treble
	    <b-2 f'-5>8( g-1 <b d f> g)  <b d f>( g <b d f> g)
	    <c-3 e-5>( g <c e> g)        <c e>( g <c e> g)
	    <b-2 d-4 f-5>( g <b d f> g)  <b d f>( g <b d f> g)

\break %12

	    <c-3 e-5>( g <c e> g)        <c e>( g <c e> g)
	    \times 2/3 {
		f'-5( d-3 g,) f'( d g,)  f'( d g,)  f'( d g,)
		e'-4( c-2 g) e'( c g) e'( c g) e'( c g)

\break %15
		f'-5( d-3 g,) f'( d g,) e'-4( c-2 g) e'( c g)
	    }


	    <b-2 d-3 g-5>8.[ g'16 g8. g16] g8.[ f16 e8. d16]
	    c4 <g c e-4 g-5>8. <g c e g>16 <g d' f-4 g-5>2->

\break %18
	    <g c e g>4 <g c e g>8. <g c e g>16 <g d' f g>2->

	    <g c e g>8 r <g d' f g> r <g c e g>8 r <g d' f g> r
	    <g c e g>4 <g c e g>8. <g c e g>16 <g c e g>4 r
	}
    }
}

secondoMarciaDown =  {
    \time 4/4
    \clef bass
    \relative c, {
	\accidentalStyle modern
	\set tupletSpannerDuration = #(ly:make-moment 1 4)
	\repeat volta 2 {
	    <c c'>4 <c c'>8. <c c'>16 <c c'>4 <c c'>
	    <g g'> <g g'> <c c'> <c c'>
	    <g g'> <c c'> <g g'> <c c'>
	    <b b'>8 r <c c'> r <g g'> r r4

	    <d' d'> r g8-3 r b-2 r
	    <d, d'>4 r g8-3 r b-2 r
	    \times 2/3 { c-1( b c a-4 b c) } d4 d,
	    g-3 <g d' g>8. <g d' g>16 <g d' g>4 r
	}
	\repeat volta 2 {
	    g4-1 r g, r
	    c-3 r c-3^^ e-2^^
	    g r g, r
	    c-3 r c-3^^ e-2^^
	    g r <g, g'> <g g'>8. <g g'>16
	    <g g'>4 r <g g'> <g g'>8. <g g'>16
	    <g g'>8 r <b b'> r <c c'> r <e e'> r
	    <g g'>8.[ <g g'>16 <g g'>8. <g g'>16] <g g'>8.[ <f f'>16 <e e'>8. <d d'>16]
	    <c c'>4 c'8.-3 c16-2 c8-1( b a b)
	    c4-1 c8.-3 c16-2 c8-1( b a b)
	    c-1-. g-4-. b-2-. g-4-.  c-. g-. b-. g-.
	    c4-1 <c, c'>8. <c c'>16 <c c'>4 r
	}
    }
}



secondoTrioDynamics =  {
    s1\p s1 s1 s4 s8\< s2 s8\! s1\f
    s1 s1 s1 s1\p s1
    s1 s1 \cresc s1 s2 \endcresc s8\< s4 s8\! s1\f s1_\markup{Da Capo al fine}
}

secondoTrioUp =  {
	\tempo "Trio"
    \time 4/4
    \key ees \major
    \clef treble
    \relative c' {
	\set fingeringOrientations = #'(left)
	#(set-accidental-style 'modern)
	\repeat volta 2 {
	    <c-1 ees-3>8-. g'-. g-. g-. c,-1-. g'-. g-. g-.
	    <b,-1 d-2> g' g g <d-2 f-4> g g g
	    r <c,-1 ees-3 g> r <b-1 d-2 g> r <c-1 ees-3 g> r <c ees g>
	    <b-1 d-2 g> r <g g'>8. <g g'>16 <g g'>4 <g g'>

\break 

	    <c-1 ees-3>8.[ g'16 g8. g16] c,8.-1[ g'16 g8. g16]

	    <b,-1 d-2>8.[ g'16 g8. g16] <d-2 f-4>8.[ g16 g8. g16]
	    r8 <c,-1 ees-3> r <c e> r <c-2 d-3> r <b-1 d-3 g-5>
	    <c-2 ees-4>4 <c ees>8. <c ees>16 <c ees>4 r
	}
	\break
	\repeat volta 2 {
	    g8-1( bes-2 ees-4 bes) g8( bes ees bes) 
	    aes-1( bes-2 f' bes,) aes( bes f' bes,)
	    aes-1( bes-2 d-4 bes) aes( bes d bes)
	    g8-1( bes-2 ees-4 bes) g8( bes ees bes) 
	    \break
	    g8-1( d'-3 f-5 d) g,8( c-2 ees-4 c)
	    g( b-2 d-4 b) r c r <aes-1 c-2 d-3>
	    <g c-2 ees-4>8.[ <g g'>16 <g g'>8. <g g'>16] r8 <g c-2 d-3 g> r <g b-2 d-3 g>
	    <g c-2 ees-4>4 c8.-3 c16-2 c4-1 r
	}
    }
}

secondoTrioDown =  {
    \time 4/4
    \key ees \major
    \clef bass
    \relative c, {
	#(set-accidental-style 'modern)
	\repeat volta 2 {
	    c4-5 r ees-3 r
	    g-1 r b-3 r
	    c8-2 r f-1 r ees-2 r c-3 r
	    g-5 r <g, g'>8. <g g'>16 <g g'>4 <g g'>4
	    <c c'>4 r <ees ees'> r
	    <g g'> r <b, b'> r
	    <c c'>8 r <a a'> r <f f'> r <g g'> r
	    <c c'>4 <c c'>8. <c c'>16 <c c'>4 r
	}
	\repeat volta 2 {
	    e4-. bes'-2-. ees-1-. bes-.-4
	    d-.-2 bes-.-4 d-. bes-.
	    f'-.-1 bes,-.-4 f'-. bes,-.
	    ees-2-. bes-4-. ees-. bes-.
	    b-3-. g-.-5 c-2-. g-.
	    f'-1-. g,-5-. <aes-4 ees'-2>8 r f-5 r
	    g4-4 r g8-2 r <g, g'> r
	    <c c'>4 <c c'>8. <c c'>16 <c c'>4 r	   
	}
    }
}

\score{
    \new PianoStaff  <<
		\new Staff = "up"   \secondoMarciaUp
		\new Dynamics = "dynamics" \secondoMarciaDynamics
		\new Staff = "down" \secondoMarciaDown
    >>
}
\score{
    \new PianoStaff  <<
    \set Score.currentBarNumber = #21
		\new Staff = "up"   \secondoTrioUp
		\new Dynamics = "dynamics" \secondoTrioDynamics
		\new Staff = "down" \secondoTrioDown
    >>
}