
\version "2.19.30"

\paper {
   max-systems-per-page = 7
}

\header {
  title = "Le Rendez-Vous"
  subtitle = "Suite de Valses"
  composer = "Charles GOUNOD"

  copyright = \markup \left-align \center-column {
     \line {
	   	"© 2015 Alberto Simões"}
     	\line {
    		\epsfile #Y #2 #"cc-by-sa.eps" "Licensed under a Creative Commons Attribution-ShareAlike 4.0 International License."
   	}
  }
  tagline = \markup \left-align \center-column {
     \line { "Thank you to Abraham Lee for proofreading and typesetting suggestions."}
   	\line { "Original document from IMSLP (http://imslp.org)." }
   	\line { "Typeset with GNU LilyPond (http://lilypond.org)." }
  }
}

do = #(make-dynamic-script (markup #:normal-text #:italic "do"))

to = #(make-dynamic-script (markup #:normal-text #:italic "to"))


\include "intro.ly"
\pageBreak

\include "valse1.ly"
\pageBreak

\include "valse2.ly"
\pageBreak

\include "valse3.ly"
\pageBreak

\include "valse4.ly"

\include "coda.ly"


\score {
  \new PianoStaff <<
    \new Staff = "upper" {
      \introUpper
      \firstValseUpper s4
      \secondValseUpper
      \thirdValseUpper
      \fourthValseUpper
      \codaUpper
    }
    \new Dynamics = "Dynamics_pf" {
      \introDynamics
      \firstValseDynamics s4
      \secondValseDynamics
      \thirdValseDynamics
      \fourthValseDynamics
      \codaDynamics
    }
    \new Staff = "lower" {
      \introLower
      \firstValseLower s4
      \secondValseLower
      \thirdValseLower
      \fourthValseLower
      \codaLower
    }
  >>
  \midi {
    \tempo 4 = 120
  }
}