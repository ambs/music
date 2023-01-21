\version "2.20.0"

\header {
  title = "Jazz Miniatures"
  composer = "Nikolai Mordasov"
  tagline = \markup \left-align \center-column {
  	\line { "Typeset with GNU LilyPond (http://lilypond.org)." }
  }    
}

\include "one.ly"
\include "two.ly"
\include "three.ly"
\include "four.ly"
\include "five.ly"
\include "six.ly"

\paper {
    max-systems-per-page = 6
    top-margin = 15\mm
    bottom-margin = 15\mm
    left-margin = 15\mm
    right-margin = 15\mm   
}

    

