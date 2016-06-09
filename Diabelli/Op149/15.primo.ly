\version "2.19.30"

primoDynamics =  {
    s4\p-\markup\italic{dol} s1 s1 s2 s8 s8\< s8 s8\! s8\> s4 s8\! s4 s4\p
    s4 s4 s8 s16\< s4 s16\! s4\> s4\! s8 s16\< s4 s16\! s2 s4 s16\< s8 s16\! s2.\f
    s4\p s1 s1 s1 s1-\markup\italic{cresc. poco a poco}
    s1 s1 s1\f s2 s4 s4\p
    s2 s8 s16\< s4 s16\! s8\> s4 s8\! s8 s16\< s4 s16\! s2 s4 s16\< s8 s16\! s2.\f
    s4 s4 s2.\f s1 s1 s1\ff s1\p-\markup\italic{dolce} s1 s2 s2\pp s1
}

primoUp =  {
	\tempo "Andante cantabile"
    \time 4/4
    \clef treble
    \key d \major
    \relative c''' {
    	\ottava #1
	\accidentalStyle modern
	\repeat volta 2 {
	    \partial 4 fis8.(-3 e16)-2
	    e4( d) r8 fis8(-3 a8. g16)
	    fis4( e) r8 e(-2 g8. fis16)
	    e4( d) r8 e(-2 fis8. g16)
	    fis4.(-3 g16 fis) e8 r fis8.(-3 e16)

	    e4(-2 d) r8 d16([-1 e] fis[ g a-5 g)]
	    fis4(-3 e) r8 e16([-2 fis] a[-5 g fis e)]
	    d8[-1-. e16\(-2 fis] \grace{a16-5(} g8)[-4-> fis16 e\)]
	    \grace{g16-4(} fis8[)(-3-> e16 d]) e(-2 a)-5 a-. a-.
	    \partial 4*3 a2( d,8-5) r
	}
	\repeat volta 2 {
	    \partial 4 fis8.(-3 e16)
	    e8.( fis16) e4 r8 e8(-2 fis8.[ e16)]
	    e8.( fis16) e4 r4 g8.(-4 fis16)
	    fis8.(-3 g16) fis4 r8 fis8( g8.[ fis16)]
	    fis8.(-3 g16) fis4 r fis8.(-3 fis16)

	    fis8([ e)] e8.([-2 fis16)] a8.([-5 g16)] fis8.([-3 e16)]
	    fis8.([-3 g16] fis4) r8 d8-1 d8.([ e16)]
	    fis4-- d8.( e16) fis4-- d8.( e16)
	    fis2.\fermata fis8.(-3 e16)

	    e4(-2 d) r8 d16[(-1 e] fis[ g a-5 g)]
	    fis4(-3 e) r8 e16[(-2 fis] a[-5 g fis e)]
	    d8[-1-. e16\(-2 fis] \grace{a16-5(} g8)[-4-> fis16 e\)]
	    \grace{g16-4(} fis8[)(-3-> e16 d]) e(-2 a)-5 a-. a-.
	    \partial 4*3 a2( d,8)-1 r
	}
	\partial 4 r4
	r4 d8.(-1 e16 fis4) r
	r d8.(-1 fis16-3 g4)-4 r
	r d8.( fis16 g4) r
	g8.([-4 a32 g)] fis8-. r e-2-. r a-. r
	d,4-1 fis8.(-3 g16) a4 e8.(-2 fis16)
	d4-1 fis8.(-3 g16) a4 e8.(-2 fis16)
	d4-1 r d d
	d2 r2\fermata \bar "|."
    }
}

primoDown =  {
    \time 4/4
    \clef treble
    \key d \major
    \relative c'' {
	\accidentalStyle modern
	\repeat volta 2 {
	    \partial 4 fis8.(-3 e16)-2
	    e4( d) r8 fis8(-3 a8. g16)
	    fis4( e) r8 e(-4 g8. fis16)

\break %4

	    e4( d) r8 e(-4 fis8. g16)



	    fis4.(-3 g16 fis) e8 r fis8.(-3 e16)

	    e4(-4 d) r8 d16([-5 e] fis[ g a-1 g)]
	    fis4(-3 e) r8 e16([-4 fis] a[-1 g fis e)]
	    d8[-5-. e16\(-4 fis] \grace{a16-1(} g8)[-2-> fis16 e\)]
	    \grace{g16-2(} fis8[)(-3-> e16 d]) e(-4 a)-1 a-. a-.
	    \partial 4*3 a2( d,8-5) r
	}
	\break
	\repeat volta 2 {
	    \partial 4 fis8.(-3 e16)
	    e8.( fis16) e4 r8 e8(-4 fis8.[ e16)]
	    e8.( fis16) e4 r4 g8.(-2 fis16)
	    fis8.(-3 g16) fis4 r8 fis8( g8.[ fis16)]

	    \break 

	    fis8.(-3 g16) fis4 r fis8.(-3 fis16)

	    fis8([ e)] e8.([-4 fis16)] a8.([-1 g16)] fis8.([-3 e16)]
	    fis8.([-3 g16] fis4) r8 d8-5 d8.([ e16)]

	    \break 
	    fis4-- d8.( e16) fis4-- d8.( e16)
	    fis2.\fermata fis8.(-3 e16)

	    e4(-4 d) r8 d16[(-5 e] fis[ g a-1 g)]

	    \break
	    fis4(-3 e) r8 e16[(-4 fis] a[-1 g fis e)]
	    d8[-5-. e16\(-4 fis] \grace{a16-1(} g8)[-2-> fis16 e\)]
	    \grace{g16-2(} fis8[)(-3-> e16 d]) e(-4 a)-1 a-. a-.
	    \partial 4*3 a2( d,8)-5 r
	}
	\break 
	\partial 4 r4
	r4 d8.(-5 e16 fis4) r
	r d8.(-5 fis16-3 g4)-2 r
	\break
	r d8.( fis16 g4) r
	g8.([-2 a32 g)] fis8-. r e-4-. r a-. r
	d,4-5 fis8.(-3 g16) a4 e8.(-4 fis16)
	d4-5 fis8.(-3 g16) a4 e8.(-4 fis16)
	d4-5 r d d
	d2 r2\fermata \bar "|."
    }
}




\score{
    \new PianoStaff  <<
	\new Staff = "up"   \primoUp
	\new Dynamics = "dynamics" \primoDynamics
	\new Staff = "down" \primoDown
    >>
}