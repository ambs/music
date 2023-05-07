\version "2.24.0"

\header {
  title = "Jazz Miniatures"
  composer = "Nikolai Mordasov"
  tagline = \markup \left-align \center-column {
  	\line { "Typeset with GNU LilyPond (http://lilypond.org)." }
  }    
}

% cond vs when
#(define (set-note-or-chord-duration! note-or-chord duration)
   (if (music-is-of-type? note-or-chord 'event-chord)
       (for-each (lambda (ev)
                   (cond (music-is-of-type? ev 'rhythmic-event)  
                     (ly:music-set-property! ev 'duration duration)))
                 (ly:music-property note-or-chord 'elements))
       (ly:music-set-property! note-or-chord 'duration duration)))


myT = #(define-music-function (pa pb) (ly:music? ly:music?)
        (set-note-or-chord-duration! pa  #{ 4 #})
        (set-note-or-chord-duration! pb  #{ 8 #})
        #{    \tuplet 3/2 { #pa #pb  }
        #})
        
\include "one.ly"
\include "two.ly"
\include "three.ly"
\include "four.ly"
\include "five.ly"
\include "six.ly"
\include "seven.ly"
\include "eight.ly"
\include "nine.ly"
\include "ten.ly"
\include "eleven.ly"
\include "twelve.ly"
\include "thirteen.ly"
\include "fourteen.ly"
\include "fifteen.ly"
\include "sixteen.ly"

\paper {
    max-systems-per-page = 6
    top-margin = 15\mm
    bottom-margin = 15\mm
    left-margin = 15\mm
    right-margin = 15\mm   
}

    

