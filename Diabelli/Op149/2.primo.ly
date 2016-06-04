\version "2.19.30"

primoDynamics =  {
    s1\p s4\< s2 s4\!
    s1\p s1
    s4\< s2 s4\!
    s4\> s2 s4\!
    s4\< s2 s4\!
    s1\f
    s2\f s2\p s1
    s2\f s2\p s1
    s1 s1
    s1\f s1 s1\p
    s4\< s2 s4\! s1\p s1
    s4\< s2 s4\! s4\> s2 s4\! s1\p s1
}

primoUp =  {
	\tempo "Andante cantabile"
    \time 4/4
    \clef treble
    \relative c''' {
	\ottava #1
        
        \repeat volta 2 {
	    e2-3( d-2)      c-1( d4 e)
	    f2-4( e4 c)   e2-3( d)
	    e-3( f4 g)    g2-5( d-2) \pageBreak
	    c-1( d4 e)    e2-3( d)
        }
        \repeat volta 2 {
	    f-4( e4 f)    d2-2( e4 f)
	    g2-5( f4 g)   e2-3( f4 g)

	    \break 

	    f2-4( e4 d)   e2-3( d4 c)
	    d-2( g-5 e-3 c-1)   d1
	    
	    e2-3( d)      c-1( d4 e)

	    \break 
	    f2-4( e4 c)   e2-3( d)
	    e-3( f4 g)    g2-5( f4-4 d-2)
	    c2-1( e4-3 d)   c1
        }
	\bar "|."
    }
}

primoDown =  {
    \time 4/4
    \clef treble
    \relative c'' {
        \repeat volta 2 {
	    e2-3( d-4)      c-5( d4 e)
	    f2-2( e4 c)   e2-3( d)
	    e-3( f4 g)    g2-1( d-4)
	    c-5( d4 e)    e2-3( d)
        }
        \repeat volta 2 {
	    f-2( e4 f)    d2-4( e4 f)
	    g2-1( f4 g)   e2-3( f4 g)
	    f2-2( e4 d)   e2-3( d4 c)
	    d-4( g-1 e-3 c-5)   d1-4
	    
	    e2-3( d)      c-5( d4 e)
	    f2-2( e4 c)   e2-3( d)
	    e-3( f4 g)    g2-1( f4-2 d-4)
	    c2-5( e4-3 d)   c1
        }
	\bar "|."
    }
}


\score{
  \new PianoStaff <<
	\new Staff    = "up"       \primoUp 
	\new Dynamics = "dynamics" \primoDynamics
	\new Staff    = "down"     \primoDown 
  >>
  
  \layout {
  	\override NonMusicalPaperColumn #'page-break-permission = ##f
  }
}