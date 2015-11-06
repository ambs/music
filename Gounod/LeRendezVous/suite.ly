
\version "2.19.30"

\paper {
   max-systems-per-page = 6
}

\header {
  title = "Le Rendez-Vous"
  subtitle = "Suite de Valses"
  composer = "Charles GOUNOD"

%  meter = "Tempo di Walz"
  % copyright = \markup \left-align \center-column {
  %   \line {
	 %  	"© 2015 Alberto Simões"}
  % 	\line {
  % 		\epsfile #Y #2 #"cc-by-sa.eps" "Licensed under a Creative Commons Attribution-ShareAlike 4.0 International License."
  % 	}
  % }
  % tagline = \markup \left-align \center-column {
  %   \line { "Thank you to Michael Gerdau, Abraham Lee and Brian Barker for proofreading."}
  % 	\line { "Original document from IMSLP (http://imslp.org)." }
  % 	\line { "Typeset with GNU LilyPond (http://lilypond.org)." }
  % }
}

do = #(make-dynamic-script (markup #:normal-text #:italic "do"))


%\include "intro.ly"
%\include "valse1.ly"
\include "valse2.ly"

\score {
  \new PianoStaff <<
    \new Staff = "upper" {
 %     \introUpper
%      \firstValseUpper
      \secondValseUpper
    }
    \new Dynamics = "Dynamics_pf" {
%      \introDynamics
 %     \firstValseDynamics
 \secondValseDynamics
    }
    \new Staff = "lower" {
%      \introLower
 %     \firstValseLower
      \secondValseLower
    }
  >>
  \midi {
    \tempo 4 = 120
  }
}