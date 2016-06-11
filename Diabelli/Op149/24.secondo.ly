\version "2.19.30"



secondoDynamics =  {
    s4 s1\p s1 s1 s1 s1  s1 s2 s8\< s4 s8\! s8 s8\> s4 s8\! s8
    s4 s8 s4\p s8 s2 s1 s8 s8\< s4 s8\! s8 s4
    s1\f s1\p s1 s2 s2\sf s4 s2
    s4 s4\sf s4 s4\sf s2 s2\pp s2 s2
}

secondoUp =  {
	\tempo "Andante Cantabile"
    \time 4/4
    \clef bass
    \key c \major
    \relative c' {
	\accidentalStyle modern
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    \partial 4 r4
	    r8 <a c-3 e-5>([-. <a c e>-. <a c e>]-. <a c e>)-. r r4
	    r8 <a b-2 f'-5>([-. <a b f'>-. <a b f'>]-. <a b f'>) r r4
            r8 <b-2 d-4 e-5>([-. <b d e>-. <b d e>]-. <b d e>)-. r r4
	    r8 <a c-3 e-5>([-. <a c e>-. <a c e>]-. <a c e>)-. r r4
            r8 <b-2 f'-5>([-. <b f'>-. <b f'>]-. <b f'>)-. r r4

            r8 <g c e-4>([-. <g c e>-. <g c e>]-. <g c e>)-. r r4
            <a d f-5>8 r r4 <g c e-4>8 r <g d' f-5> r
            \partial 4*3  r8 <g b-2 f'-5>[(-. <g b f'>-. <g b f'>]-. <g c e>) r
	}
        \repeat volta 2 {
	    \partial 4 r4
	    r8 <g-1 bes-2 c-3 e-5>[(-. <g bes c e>-. <g bes c e>]-. <g bes c e>)-. r r4
            r8 <a c-2 f-5>[(-. <a c f>-. <a c f>]-. <a c f>)-. r r4
            r8 <a-1 d-4>[(-. <a d>-. <a d>]-. <a d>)-. r r4
 
            r8 <gis-2 b-3 e-5>[(-. <gis b e>-. <gis b e>]-. <gis b e>)-. r r4
            r8 <a c-3 e-5>[(-. <a c e>-. <a c e>]-. <a c e>)-. r r4
            r8 <a b-2 f'-5>[(-. <a b f'>-. <a b f'>]-. <a b f'>)-. r r4
            <a c-3 e-5>8 r r4 <gis-2 d'-4 e-5>2
	}
	\alternative {
	    { \partial 4*3   r8 <a c-3 e-5>([-. <a c e>-. <a c e>]-. <a c e>)-. r }
	    { <a-1 c-3>(-. e')-.   <gis,-2 b-3 d-4 e-5>4 <a c>8(-. e') <gis, b d e>4 }
	}
        <a-1 c-3>4 r <a c e-5> <a c e>       <a c e>2  r \fermata\bar"|."
    }	
}	

secondoDown =  {
    \time 4/4
    \clef bass   
    \key c \major
    \relative c {
	\accidentalStyle modern
	\set fingeringOrientations = #'(left)
	\repeat volta 2 {
	    \partial 4 r4
	    r8 <a-5 c'-1>[(-. <a c'>-. <a c'>]-. <a c'>)-. r r4
            r8 <a-5 d-2 f-1>[(-. <a d f>-. <a d f>]-. <a d f>)-. r r4
            r8 <gis-5 b-3 e-1>[(-. <gis b e>-. <gis b e>]-. <gis b e>)-. r r4
            r8 <a-4 c-2 e-1>[(-. <a c e>-. <a c e>]-. <a c e>)-. r r4
            r8 <g d' g>[(-. <g d' g>-. <g d' g>]-. <g d' g>)-. r r4

            r8 <c, c'>[(-. <c c'>-. <c c'>]-. <c c'>)-. r r4
            f8-3 r r4 g8-2 r g r
            \partial 4*3   r8 <g, g'>([-. <g g'>-. <g g'>]-. <c c'>)-. r
	}
        \repeat volta 2 {
	    \partial 4 r4
	    r8 c'[(-.-2 c-. c]-. c)-. r r4
            r8 f[(-. f-. f]-. f)-. r r4
	    r8 <f, f'>[(-. <f f'>-. <f f'>]-. <f f'>)-. r r4

	    r8 <e e'>[(-. <e e'>-. <e e'>]-. <e e'>)-. r r4
            r8 <a c-4 e-2>[(-. <a c e>-. <a c e>]-. <a c e>)-. r r4
            r8 <d, d'>[(-. <d d'>-. <d d'>]-. <d d'>)-. r r4
            <e e'>8 r r4 <e b' e>2
        } 
        \alternative {
            { \partial 4*3   r8 <a c e>[(-. <a c e>-. <a c e>]-. <a c e>)-. r }
            { a8-2 r <e e'>4( <a e'>8) r <e e'>4( }
	}
        <a e'>4) r <a, a'>4 <a a'>      <a a'>2 r \fermata \bar"|."
    }
}

\score{
    \new PianoStaff  <<
	
	\new Staff = "up"   \secondoUp
	\new Dynamics = "dynamics" \secondoDynamics
	\new Staff = "down" \secondoDown
    >>

}