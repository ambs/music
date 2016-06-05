\version "2.19.30"

primoMarciaDynamics =  {
    s1\f s1 s1 s1 s16\p s16_\markup\bold\italic{dolce} s8 s2.
    s1 s1\f s1
    s16\p s16_\markup\bold\italic{dolce} s8 s2.
    s1 s1 s1 s1 s1 s2 s8\< s4 s8\! s1\f
    s1\ff s1 s1 s2 s2_\markup{fine}
}

primoMarciaUp =  {
	\tempo "Marcia"
    \time 4/4
    \clef treble
    \relative c''' {
        
              	\ottava #1

	\set tupletSpannerDuration = #(ly:make-moment 1 4)

	\repeat volta 2 {
	    e4-3 f16( e d e) g4-5( c,)
	    d8.-2[ e16 d8. e16] c8.-1 e16-3 g4-5
	    d8.-2^^ e16 c4d8.^^ e16 c4
	    f8.-4[ g16 e8.-3 g16] d4-2 r

\break %5

	    \times 2/3 { d8-2( fis e) d( e fis) g-5( fis e) } d r
	    \times 2/3 { d8-2( fis e) d( e fis) g-5( fis e) } d r
	    e4-3 e8. e16 d4 fis-4
	    g-5 g8. g16 g4 r
	}

\break %9
	\repeat volta 2 {
	    d4-2 g8.-5 f16 e8.[ f16 d8. e16]
	    c16-1( d e d c-1 d e f) g4-5 r
	    d4-2 g8.-5 f16 e8.[ f16 d8. e16]

\break %12
	    c16-1( d e d c-1 d e f) g4-5 r
	    f8-4 r d-2 r g2->
	    e8-3 r c-1 r g'2->

\break %15
	    f8-4 r d r e-3 r c r
	    d8.-2 g16-5 g8. g16 g4 r
	    \times 2/3 { e8-3( g f) e( d c) d-2( f g) d( f g)

\break %18
			 e-3( g f) e( d c) d-2( f g) d( f g)
			 c,-1( e-3 g-5) d-2( f-4 g-5) c,-1( e g) d-2( f g) }
	    c,4-1 c8. c16 c4 r
	}
    }
}

primoMarciaDown =  {
    \time 4/4
    \clef treble
    \relative c'' {
	\set tupletSpannerDuration = #(ly:make-moment 1 4)
	\set fingeringOrientations = #'(left)
	\repeat volta 2 { 
	    <e-3 g-1>2 <e g>
	    <f-2 g-1>4 <f g> <e-3 g-1> <e g>
	    <f g> <e g> <f g> <e g>
	    f8-2 r e-3 r d4-4 r
	
	    <d-4 fis-2> <d fis> <d-4 g-1> <d g>
	    <d fis> <d fis> <d g> <d g>
	    e-3 e8. e16 d4 fis-2
	    g-1 g8. g16 g4 r
	}
	\repeat volta 2 {
	    <f-2 g-1>4 <f g> <f g> <f g>
	    <e-3 g-1> <e g> <e g> <e g>
	    <f-2 g-1>4 <f g> <f g> <f g>
	    <e-3 g-1> <e g> <e g> <e g>
	    \times 2/3 {
		d8-4( f-2 g-1) d( f g) d( f g) d( f g)
		c,-5( e-3 g-1) c,( e g) c,( e g) c,( e g)
		d8-4( f-2 g-1) d( f g) c,-5( e-3 g-1) c,( e g)
	    }
	    d8.-4 g16 g8. g16 g4 r

	    <c,-5 e-3 g-1> <c e g> <d-4 f-2 g-1>2->
	    <c-5 e-3 g-1>4 <c e g> <d-4 f-2 g-1>2->
	    <c e g>4 <d f g> <c e g> <d f g>
	    <c-5 e-3 g-1> <c e g>8. <c e g>16 <c e g>4 r4
	}
    }
}



%%%% TRIO %%%%

primoTrioDynamics =  {
    s1\p s1 s1 s4 s8\< s2 s8\! s1\f
    s1 s1 s1
    s16\p s16_\markup\bold\italic{dolce} s8 s2.
    s1 s1 s1 \cresc s1 s4 \endcresc s8\< s2 s8\! s1\f s1_\markup{Da Capo al fine}
}

primoTrioUp =  {
	\tempo "Trio"
    \time 4/4
    \clef treble
    \key ees \major
    \relative c''' {
        
                      	\ottava #1

	\repeat volta 2 {
	    c8-1 r ees-3 r g-5 r f-.-4 ees-.-3
	    d-2 r f r g r f-.-4 d-.
	    ees-3 r d r c r d-. ees-.
	    d-2 r g8. g16 g4 g4 
	    c,8-1 r ees8.-3 ees16 g4-5-> f8-. ees-.
	    
	    d r f8. f16 g4-> f8-.-4 d-.
	    ees4-3 c8. c16 d4-2 g
	    c,-1 c8. c16 c4 r
	}
	\repeat volta 2 {
	    ees4-3 ees8. ees16 ees8.( f32 ees) d8-. ees-.
	    f4.-4->( g8) f4 r8 ees-3
	    d-2-. ees-. f-. ees-. d-. ees-. f-. d-.
	    ees4.-3->( f8) g4 r
	    g-5 f8. f16 f4 ees8. ees16
	    ees4-3 d8. d16 c4 d
	    ees-3 d8. c16 d4-2 g8. g16
	    c,4-1 c8. c16 c4 r
	}
    }
}

primoTrioDown =  {
    \time 4/4
    \clef treble
    \key ees \major
    \relative c'' {
	\repeat volta 2 {
	    c8-5 r ees-3 r g-1 r f-.-2 ees-.-3
	    d-4 r f r g r f-.-2 d-.
	    ees-3 r d r c r d-. ees-.
	    d-4 r g8. g16 g4 g4 
	    \break
	    c,8-5 r ees8.-3 ees16 g4-1-> f8-. ees-.
	    
	    d r f8. f16 g4-> f8-.-2 d-.
	    ees4-3 c8. c16 d4-4 g
	    c,-5 c8. c16 c4 r
	}
	\break
	\repeat volta 2 {
	    ees4-3 ees8. ees16 ees8.( f32 ees) d8-. ees-.
	    f4.-2->( g8) f4 r8 ees-3
	    d-4-. ees-. f-. ees-. d-. ees-. f-. d-.
	    ees4.-3->( f8) g4 r
	    \break
	    g-1 f8. f16 f4 ees8. ees16
	    ees4-3 d8. d16 c4 d
	    ees-3 d8. c16 d4-4 g8. g16
	    c,4-5 c8. c16 c4 r
	}
    }
}


\score{    
    \new PianoStaff <<
	\new Staff = "up"   {\primoMarciaUp }
	\new Dynamics = "dynamics" {\primoMarciaDynamics }
	\new Staff = "down" {\primoMarciaDown }
    >>
}

\score{    
    \new PianoStaff <<
        \set Score.currentBarNumber = #21
	\new Staff = "up"   { \primoTrioUp}
	\new Dynamics = "dynamics" { \primoTrioDynamics}
	\new Staff = "down" { \primoTrioDown}
    >>
}
