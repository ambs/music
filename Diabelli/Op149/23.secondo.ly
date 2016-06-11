\version "2.19.30"

secondoDynamics =  {
    s2.\p s2. s2. s2. s2.\f s2.
    s2. s4 s8\> s8\! s4   s2.\p s2. s2. s2.
    s2. s2.-\markup\italic{cresc.} s2. s2.\f s2.\p s2.
    s2. s2. s2.\f s2. s2. s4 s8\> s8\! s4
}

secondoUp =  {
	\tempo "Polonaise"
    \time 3/4
    \clef bass
    \key a \major
    \relative c' {
	\accidentalStyle modern
	\set fingeringOrientations = #'(left)
	\set doubleSlurs = ##t
	\repeat volta 2 {
	    r8 <a-1 cis-3 e-5>16 <a cis e> <a cis e>8 <a cis e> r <a cis e>
	    r8 <a cis e>16 <a cis e> <a cis e>8 <a cis e> r <a cis e>
	    r8 <gis-2 d'-4 e-5>16 <gis d' e> <gis d' e>8 <gis d' e> r <gis d' e>
	    r8 <a-1 cis-3 e-5>16 <a cis e> <a cis e>8 <a cis e> r <a cis e>

	    \break %5
	    r8 <a-1 cis-3 e-5>16 <a cis e> <a cis e>8 <a cis e> <a cis e> <a cis e>
	    r8 <a-1 cis-3 e-5>16 <a cis e> <a cis e>8 <a cis e> <a cis e> <a cis e>

	    r8 <a-1 b-2 fis'-5>16 <a b fis'> <a b fis'>8 <a b fis'> r <gis-1 b-2 d-4 e-5>
	    <a cis-3 e-5> <gis d'-4 e-5> <gis d' e>4( <a-1 cis-3>8) r
	}
	\break %9
	\repeat volta 2 {
	    r8 <a cis-2 fis-4>[ r <a cis fis> r <a cis fis>]
  	    r8 <b cis-2 gis'-5>[ r <b cis gis'> r <b cis gis'>]
            r8 <b cis-2 eis-4>[ r <b cis eis> r <b cis eis>]
            r8 <a cis-2 fis-4>[ r <a cis fis> r <a cis fis>]

\break %13

            r8 <fis b-2 fis'-5>[ r <fis b fis'> r <ais-2 e'-4 fis-5>]
            r8 <b d-3 fis-5>[ r <b d fis> r <a cis-3 fis-5>]
            r8 <a b-2 fis'-5>[ r <a b fis'> r <a b fis'>]
            <gis b e-5>8. <gis b e>16 <gis b e>8 r8 r4
          
\break %17

            r8 <a cis-3 e-5>16 <a cis e> <a cis e>8 <a cis e> r <a cis e>
            r8 <a cis-3 e-5>16 <a cis e> <a cis e>8 <a cis e> r <a cis e>

            r8 <gis-2 d'-4 e-5>16 <gis d' e> <gis d' e>8 <gis d' e> r <gis d' e>
            r8 <a cis-3 e-5>16 <a cis e> <a cis e>8 <a cis e> r <a cis e>
            
\break %21

            r8 <a cis e>16 <a cis e> <a cis e>8 <a cis e> <a cis e> <a cis e>
            r8 <a cis e>16 <a cis e> <a cis e>8 <a cis e> <a cis e> <a cis e>
            r8 <a b-2 fis'-5>16 <a b fis'> <a b fis'>8 <a b fis'> r <gis b d-4 e-5>
            <a cis e> <gis d' e> <gis d' e>4( <a-1 cis-3>8) r
	}
    }	
}	

secondoDown =  {
    \time 3/4
    \clef bass   
    \key a \major
    \relative c {
	\accidentalStyle modern
	\set fingeringOrientations = #'(left)
	\set doubleSlurs = ##t
	\repeat volta 2 {
	    a8-2 r r4 a8 r a r r4 a8 r
	    <e e'>8 r r4 <e e'>8 r
	    a-2 r r4 a8-1 r
	    a,4 a' a a, a'-1 a-2

	    <d, d'>4 r <e e'>
	    <a-3 e'>8 <e e'> <e e'>4( <a e'>8) r
	}
	\repeat volta 2 {
	    <fis fis'>8[ r <fis fis'> r <fis fis'>] r
	    <eis eis'>8[ r <eis eis'> r <eis eis'>] r
            <cis cis'>8[ r <cis cis'> r <cis cis'>] r
            <fis fis'>8[ r <fis fis'> r <fis fis'>] r
           
            <d d'>8[ r <d d'> r <cis cis'>] r
            <b b'>8[ r <b b'> r <cis cis'>] r
            <d d'>8[ r <d d'> r <dis dis'>] r
            <e e'>8. <e e'>16 <e e'>8 r r4
            a8-2 r r4 a8 r
            a8 r r4 a8 r

            <e e'>8 r r4 <e e'>8 r
            a8-2 r r4 a8-1 r
            a,4 a' a
            a, a'-1 a-2
            <d, d'>4 r <e e'>
            <a-3 e'>8 <e e'> <e e'>4( <a e'>8) r
	}
    }
}


\score{
    \new PianoStaff  <<
	\new Staff = "up"   \secondoUp
	\new Dynamics = "dynamics" \secondoDynamics
	\new Staff = "down" \secondoDown
    >>
}