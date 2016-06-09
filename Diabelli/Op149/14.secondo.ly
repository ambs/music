\version "2.19.30"


secondoAllegrettoDynamics =  {
    s2.\p s2. s2. s2.\f s2.\p
    s2. s2.\f s2.
    s2.\p s2.
    s2. s2. s2.-\markup\italic{cresc.} s2. s2.\f s4 s8\fz s8\> s8\! s8_\markup{Fine}
}

secondoAllegrettoUp =  {
	\tempo "Polonaise. Allegretto"
    \time 3/4
    \clef bass
    \key f \major
    \relative c' {
	\accidentalStyle modern
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    r8 <a-1 c-2 f-5> r <a c f> r <a c f>
	    r <g-1 bes-2 c-3 e-5>[ <g bes c e> <g bes c e>] r <g bes c e>
 	    r <a c f> r <a c f> r <a c f>
	    r <g c e-4>[ <g d' f-5> <g d' f>] <g c e> r			     

\break %5

	    r8 <a-1 c-2 f-5> r <a c f> r <a c f>
	    r <g-1 bes-2 c-3 e-5>[ <g bes c e> <g bes c e>] r <g bes c e>
            r <a-1 c-2 f-5> r <bes-1 d-3> r <bes-1 c-2 e-4>
            <a c f-5>[ <bes c e-4>]	<bes c e>4(-> <a c f>8) r
        } 

\break %9

	\repeat volta 2 {
	    r8 <g-1 a-2 e'-5> r <g a e'> r <g a e'>
	    r <f-1 a-2 d-5>[ <f a d> <f a d> <f a d> <f a d>]

       	    r8 <g-1 a-2 e'-5> r <g a e'> r <g a e'>
	    r <f-1 a-2 d-5>[ <f a d> <f a d> <f a d> <f a d>]

\break %13
            r <bes-1 c-2 g'-5> r <bes c g'> r <bes c g'>
            r <a-1 c-2 f-5>[ <a c f> <a c f> <a c f> <a c f>]
	    r <g-1 bes-2 c-3 e-5> r <g bes c e> r <g bes c e>
            <a-1 c-2 f-5>[ <bes c e-4>] <bes c e>4( <a c f>8) r
	}
   }
}

secondoAllegrettoDown =  {
    \time 3/4
    \clef bass   
    \key f \major
    \relative c, {
	\accidentalStyle modern
	\repeat volta 2 {
	    f8 r f' r f, r
	    c'-2 r r4 <c, c'>8 r
	    f r f' r f, r
	    g-4 r <g, g'>[ <g g'>] <c c'> r
	    f r f' r f, r
			 
            c'-2 r r4 <c, c'>8 r
            <f f'> r <bes, bes'> r <c c'> r
            <f f'>[ <c c'>] <c c'>4(-> f8)-3 r			   
	}
	\repeat volta 2 {
            <cis cis'>8 r <a a'> r <cis cis'> r
	    <d d'>4 r r

            <cis cis'>8 r <a a'> r <cis cis'> r
	    <d d'>4 r r
	    <e e'>8 r <c c'> r <e e'> r
	    <f f'>4 r r
	    <c c'>8 r <c c'> r <c c'> r
	    <f c'>[ <c c'>] <c c'>4( <f c'>8) r
	}
    }
}


secondoTrioDynamics =  {
    s2.\p s2. s2. s2. s2.\f
    s2. s2. s2.
    s2.\p s2. s2.
    s2. s2.\ff s2. s2 s1_\markup{Polonaise da Capo al Fine.}
}

secondoTrioUp =  {
	\tempo "Trio"
    \time 3/4
    \clef bass
    \key aes \major
    \relative c {
	\accidentalStyle modern
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    r8 <f-1 aes-3 c-5>16 <f aes c> <f aes c>8 <f aes c> r <f aes c>
	    r8 <g-2 bes-4 c-5>16 <g bes c> <g bes c>8 <g bes c> r <g bes c>
	    r8 <e-1 g-2 bes-4 c-5>16 <e g bes c> <e g bes c>8 <e g bes c> r <e g bes c>
	    r8 <f-1 aes-3 c-5>16 <f aes c> <f aes c>8 <f aes c> r <f-1 aes-2 c-4>
	    r <ees g bes-3 des-5> r <ees g bes des> r <ees g bes des>

	    r <ees aes c-4> r <ees aes c> r <ees aes c>
	    r <f bes-3 des-5> r <f bes des> r <ees bes' des>
	    <ees aes-3 c-5> <ees g-2 des'-5> <ees g des'>4(-> <aes c>8) r
	}
	\repeat volta 2 {
	    c8(-5 b16 c) g4.-2 g8
	    aes(-3 g16 aes) f4-1 r8 aes-3
	    c8(-5 b16 c) g4.-2 g8

	    bes16(-4 aes g aes) f4-1 r8 f
	    ees'8-5 f,16 f ees'8-5-. des-4-. c-5-. bes-.
	    aes[-3-. g]-. f[-1-. f16( g] aes8[ g16 f)]
	    bes8-4 <f g-2 des'-5>16-. <f g des'>-. <f g des'>8-. <f g des'>-. r <e bes'-4 c-5>
	    <f aes-3 c-5> <e bes'-4 c-5> <e bes' c>4(-> <f aes c>8) r
	}
   }
}

secondoTrioDown =  {
    \time 3/4
    \clef bass   
    \key aes \major
    \relative c, {
	\accidentalStyle modern
	\repeat volta 2 {
	    f8-2 r r4 f8 r
	    e-3 r r4 e8 r
	    <c c'> r r4 <c c'>8 r
	    f-3 r r4 f8 r
	    ees-4 r ees r ees r

	    aes-2 r aes r aes r
	    des,-5 r des r ees-4 r
	    aes-2 ees-4 ees4(-> aes8) r
	}
	\repeat volta 2 {
	    \set fingeringOrientations = #'(left)
	    << { e8[-5 <bes'-2 c-1> <bes c> <bes c>] e,[ <bes' c>] } \\ { e,2 e4 } >>
	    << { f8[-5 <aes-3 c-1> <aes c> <aes c>] f[ <aes c>] } \\ { f2 f4 } >>
	    << { e8[-5 <bes'-2 c-1> <bes c> <bes c>] e,[ <bes' c>] } \\ { e,2 e4 } >>

	    << { f8[-5 <aes-3 c-1> <aes c> <aes c>] f[ <aes-3 c-2>] } \\ { f2 f4 } >>
            <ees-5 ees'-1>4. des'8[-2-. c-1-. bes]-.
	    aes[-3-. g]-4-. f[-5-. f16( g] aes8[ g16 f)]
	    bes8-2 r <bes, bes'> r <c c'> r
	    <f-3 c'> <c c'> <c c'>4(-> <f c'>8) r
	}
    }
}

  
\score{
    \new PianoStaff  <<
	\new Staff = "up"   { \secondoAllegrettoUp }
	\new Dynamics = "dynamics" { \secondoAllegrettoDynamics  }
	\new Staff = "down" { \secondoAllegrettoDown  }
    >>
}
\score{
    \new PianoStaff  <<
        \set Score.currentBarNumber = #17
	\new Staff = "up"   {  \secondoTrioUp }
	\new Dynamics = "dynamics" {  \secondoTrioDynamics }
	\new Staff = "down" { \secondoTrioDown }
    >>
}