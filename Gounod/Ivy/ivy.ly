
\version "2.18.2"

\paper {
%   max-systems-per-page = 6
%   page-count = 4
}

\header {
  title = "Ivy"
  composer = "Charles GOUNOD"
  copyright = \markup \left-align \center-column {
     \line {
	   	"© 2016 Alberto Simões"}
   	\line {
   		\epsfile #Y #2 #"cc-by-sa.eps" "Licensed under a Creative Commons Attribution-ShareAlike 4.0 International License."
   	}
  }
   tagline = \markup \left-align \center-column {
   	\line { "Original document from IMSLP (http://imslp.org)." }
   	\line { "Typeset with GNU LilyPond (http://lilypond.org)." }
   }
}

upperA = \relative c'' {
  \tempo "Allegretto agitato"
  \clef treble
  \key bes \major
  \time 2/2

  % M1-M5
  \partial 8 * 3 d8[ ees e!] |
  \voiceOne f4 b,! ees4. d8 | d4( c) b8\rest d,8[ ees e!] | f4 b,! ees4. d8 | d4( c) b'8\rest\fermata d,8[ ees e!] 
}

upperB = \relative c'' {
  \clef treble
  \key bes \major
  \time 2/2
  \voiceTwo
  % M1-M5
  \partial 8 * 3 s4. | s2 gis2 | a s s gis, | a s |
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% LOWER VOICE
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


lowerA = \relative c' {
  \clef bass
  \key bes \major
  \time 2/2
  % M1-M5
  \partial 8 * 3 s4. | s1 | s1 | s1 | s1 |

}
lowerB = \relative c' {
  \clef bass
  \key bes \major
  \time 2/2
  % M1-M5
  \oneVoice \stemDown
  \partial 8 * 3 s4. | r2 f | <ees f,> r | r f, | <ees f,> r8\fermata r8 r4

}



%%%% DYNAMICS
do = #(make-dynamic-script (markup #:normal-text #:italic "do"))
dynamics = {
  \set decrescendoSpanner = #'text
  \set decrescendoText = \markup \italic "dim."
  s4.\f s4. s8\f s2 s2 s8 s4.\f s2 s8 s4.\> s2\p s8 s4.\p

}

\score {
  \new PianoStaff <<
    \new Staff = "upper" <<
      \new Voice \upperA
      \new Voice \upperB
    >>
    \new Dynamics = "Dynamics_pf" \dynamics
    \new Staff  = "lower" <<
      \new Voice \lowerA
      \new Voice \lowerB
    >>
  >>
  \layout { 
    \context {
      \PianoStaff
      \consists #Span_stem_engraver
    }
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/12)
    }
    \set Score.doubleRepeatType = #":|.|:"
  }
  \midi { 
    \tempo 4 = 120
  }
}