\version "2.19.30"


secondoDynamics =  {
    s2.\p s2. s2. s2. s2.\f s2. s2. s2.
    s2.\p s2. s2. s8\< s2 s8\! s2.\f s2. s2. s2. s4. s4.\p
    s2. s2. s2. s4. s8\< s8 s8\! s2.\mf s2. s2. s4.\f s8\> s8 s8\! s4. s8\> s8 s8\! s2. s2. s2.
}

secondoUp =  {
	\tempo "Allegretto"
    \time 6/8
    \clef bass
    \relative c' {
	\accidentalStyle modern
	\repeat volta 2 {
	    \clef treble
	    c8-1( e-3 g-5) c,( e g)
	    b,-1( f'-4 g-5)	b,( f' g)
	    c,-1( e-3 g) c,( e g)
	    c,( e g) b,-1( d-2 g)
	    c,-1( e-3 g) bes,-1( e-3 g-5)
	    f-4( d-2 a-1) aes-2( d-4 f-5)

\break %7

	    e-4( g, g'-5) << {f8-4( g f)}\\{b,4.-1} >>

	    <c-2 e-3>8( g' e c4) r8
	}
	\repeat volta 2 {
	    b8-1( d-2 g-5) c,-1( e-3 g-5)
	    b,( d g) b,( d g)
	    d( d g) c,( e g)
	    b,( d g) f-4( b, g')

\break %13
	    c,-1( e-3 g) bes,-1( e-3 g)
	    f-4( d-2 a) aes-2( d-4 f)
	    e-4( g, g') << {f8-4( g f)}\\{b,4.-1} >>
	}
	\alternative {
	    { <c-2 e-3>4. ~ <c e>4 r8 }
	    { <c-2 e-3>8 <c e> <c e> <c-1 e-3 g-5> <c e g> <c e g> }
	}
	<c-1 f-4> <c f> <c f> <c f> <c f> <c f>

\break %19	
	<c-1 e-3> <c e> <c e> <c e> <c e> <c e>
	<a-2 c-4 d-5> <a c d> <a c d> <g-1 b-3 d-5> <g b d> <g b d>
	g-1( c-3 e-5) <c g'-2 bes-4> <c g' bes> <c g' bes>
	<c f-3 a-5> <c f a> <c f a> <c f-2 aes> <c f aes> <c f aes>
	<c-1 e-3 g-5> <c e g> <c e g> <c e g> <c e g> <c e g>
	<a c-2 fis-4> <a c fis> <a c fis> <g b f'> <g b f'> <g b f'>
	<g c-3 e-5>( c g)  <g b-2 f'-5> <g b f'> <g b f'>
	<g c e>( c g)  <g b f'> <g b f'> <g b f'>
	<g c-3 e-5>4 r8 <g e'-4 g-5>4 r8
	<g c-3 e-5>4 r8 <g e'-4 g-5>4 r8
	<g c-3 e-5>2.\fermata
	\bar "|."
    }
}

secondoDown =  {
    \time 6/8
    \clef bass
    \relative c {
	\accidentalStyle modern
	\repeat volta 2 {
	    c4-3 r8 e4-2 r8
	    g4-1 r8 g,4 r8
	    c4-1 r8 c,4 r8
	    g4-2 r8 g'4 r8
	    <c, c'>4 r8 <cis cis'>4 r8
	    <d d'>4 r8 <b b'>4 r8
	    <c c'>4 r8 <g g'>4 r8
	    <c c'>4. ~ <c c'>4 r8
	}
	\repeat volta 2 {
	    g'4 r8 g'4 r8
	    g,4 r8 r4 r8
	    g4 r8 g'4 r8
	    g,2.
	    <c, c'>4 r8 <cis cis'>4 r8
	    <d d'>4 r8 <b b'>4 r8
	    <c c'>4 r8 <g g'>4 r8
	}
	\alternative {
	    {<c c'>8( e g c4) r8}
	    {<c, c'>4 r8 << {bes''4.-2( } \\ {c,4.(}>>}
	}
	<<{a'4.-4 aes4.-2)}\\{c,2.)} >>
	<<{g'2.-1( fis4.-2 f4.-1)} \\ {c2. c2.}>>
	<c-5 e-3>4 r8 <c, c'>4 r8
	<c c'>4 r8 <c c'>4 r8
	<c c'>4 r8 <c c'>4 r8
	<c c'>4 r8 <c c'>4 r8
	<c c'>4 r8 <g g'>8 <g g'> <g g'>
	<c c'>4 r8 <g g'>8 <g g'> <g g'>
	<c c'>8( g'-2 e-4 c-5 e g)
	c( g-2 e-4 c-5 e g)
	c2.\fermata
	\bar "|."
    }
}

\score{
    \new PianoStaff  <<
	\new Staff = "up"   \secondoUp
	\new Dynamics = "dynamics" \secondoDynamics
	\new Staff = "down" \secondoDown
    >>
}