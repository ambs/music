
\version "2.18.2"

% \paper {
%    max-systems-per-page = 6
% }

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

upper = \relative c'' {
  \clef treble
  \key d \major
  \time 4/4

  %% page 1, line 1

  \partial 16 <cis e a>16 | 
  q2 r4 r8. <e a cis>16 |
  q2 r4 r8. <g a cis e>16 |
  q4 ~ q8 r <cis,, e a>2\( |
  <d a' b>2 <g a cis>4\) a8.[ a16] |
  d2 e4 d8.[ cis16] |

  %% page 1, line 2

}

lower = \relative c {
  \clef bass
  \key d \major
  \time 4/4

  %% page 1, line 1
  \partial 16 <a a'>16 |
  q2 r4 r8. q16 |
  q2 r4 r8. q16 |
  <<
    { \voiceTwo q4 r g'2\( | fis e4 r \)}
    \new Voice {
      \voiceOne r4 a2-> a4-> ~ | a4 a4-> ~ a4 r 
    }
  >> \oneVoice
  <d,, d'>4 <fis' a d> <g a cis> r |

}



%%%% DYNAMICS

dynamics = {

  %% page 1, line 1
  \partial 16 s16\ff | s1 | s1 |
  s4. s8\p s8\< s4 s8 | s8\! s8 s8\> s8 s8\! s8 s4\p |
}


\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Dynamics = "Dynamics_pf" \dynamics
    \new Staff = "lower" \lower
  >>
  \layout { 
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/12)
    }
    \set Score.doubleRepeatType = #":|.|:"
  }
  \midi { }
}