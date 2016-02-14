
\version "2.18.2"

%\paper {
%   max-systems-per-page = 6
%   page-count = 4
%}

\header {
  title = "Pastorale"
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

upper = \relative c' {
  \tempo "Allegretto"
  \clef treble
  \key c \major
  \time 6/8

  % M 1-4
  R1*3/4 | R1*3/4 | R1*3/4 |  R1*3/4 | 
  % M 5-7
  <c e>4.^^ <e g>4. | <b d>^^ <d f>| <a c>4^^ <c e>8 q[ <b d> <a c>] |

  % M8-M10
  <b d>4 <c e>8 <d f>4 <b d>8 | <c e>4.^^ <e g> | <b d>^^ <d f> |
  % M11-12
  <a c>4^^ <c e>8 q[ <b d> <a c>] | <b d>4^^ <c e>8 <d f>4 <e g>8 |
  % M8-13
  <f a>4.^^ <d b'>4. |

  % M14-M15
  <f a>4.^^ <d b'>4. | <f a>4^^ <d b'>8 <e g>4 <c a'>8 |
  % M16-17
  <d f>4^^ <b g'>8 <c e>[ <d f> <e g>] | <f a>4.^^ <d b'> |
  % M18-19
  <f a>4.^^ <d b'> | <f a>4^^ <d b'>8 <e g>4 <c a'>8 | 
  % M20
  <d f>4^^ <e g>8 <c e>[ <d f> <e g>] |

  % M21
  << { \voiceOne <f a>2.^^ } \new Voice {\voiceTwo r4 r8 g4._>} >> \oneVoice |
  % M22
  <e c'>2.^^ |
  % M23
  << { \voiceOne <d b'>2.^^ } \new Voice {\voiceTwo r4 r8 g4._>} >> \oneVoice |  
  % M24
  <f g>2.^^ |
  % M25
  << { \voiceOne <e c'>2.^^ } \new Voice {\voiceTwo r4 r8 g4._>} >> \oneVoice |  
  % M26
  \clef bass
  << { \voiceOne <e, c'>2.^^ } \new Voice {\voiceTwo r4 r8 g4.^>} >> \oneVoice |    
  % M27-28
  <e c'>2.^^~ | <e c'>8 r r r4 r8 |

}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% LOWER VOICE
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

lower = \relative c {
  \clef bass
  \key c \major
  \time 6/8

  % M1-7
  \repeat unfold 7 { <c g'>2.^> }
  % M8-13
  \repeat unfold 6 { <c g'>2.^> }
  % M14-20
  \repeat unfold 7 { <c g'>2.^> }

  % M21-22-23-24
  \repeat unfold 2 {
    <c g'>2.^> << { \voiceOne g'4.^> g4.^>} \new Voice { \voiceTwo c,2. } >> \oneVoice
  }
  % M25-26
  <c g'>2.^> << { \voiceOne g'4. r4 r8 } \new Voice { \voiceTwo c,2. } >> \oneVoice
  % M27-28
  c4._> g_> | c,8 r r r4 r8 |
}


%%%% DYNAMICS
do = #(make-dynamic-script (markup #:normal-text #:italic "do"))
dynamics = {

  % M1-7
  s2.\p-\markup{\italic lower}
  s2. s2. s2.
  s2.\p s2. s2.
  % M8-13
  \repeat unfold 6 { s2. }
  % M14-m16
  \repeat unfold 3 { s2. }
  % M17-20
  \set crescendoSpanner = #'text
  \set crescendoText = \markup \italic "cres"
  s2.\< s2. 
  \set crescendoText = \markup \italic "cen"  
  s2.\< s2. 
  % M21-M28
  s2.\do s2. s2.\f \repeat unfold 5 { s2. }
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
  \midi { 
    \tempo 4 = 100
  }
}