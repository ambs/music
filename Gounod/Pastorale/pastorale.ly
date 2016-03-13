
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

  % Page 2
  % M29-32
  <g, d'>2.^^ | q^^ | q^^ | q^^ |
  % M33-35
  q8 r \clef treble d''8 e4 g8 | fis4 e8 d[ e fis] | g4 a8 b4 g8 |

  % M36-38
  a4 b8 c4 a8 | d4 d8 e4 g8 | fis4 e8 d[ e fis] |
  % M39-41
  g4 a8 b4 g8 | a4 b8 c4 a8 | d4 g,,8 a[ g fis] |

  % M42-44
  e4. fis | d8 r g' a[ g fis] | e4. fis4. |
  % M45-48
  d8 r <b g> <a c>4 <b d>8 | <c e>4.^^ <a fis'>^^ |
  <b d>^^ <g e'>^^ | <a c>4 <g b>8 <fis a>4 <a c>8 |

  % M49-50
  <g b>8 r <fis' a> <g b>[ <a c> <b d>] | <c e>4 <b d>8 <c e>4 <a fis'>8 |
  % M51-52
  <b d>4 <a c>8 <b d>4 <g e'>8 | <a c>4 <g b>8 <a c>4 <fis d'>8 |
  % M53-55
  <g b>4. <a c>8[ <g b> <fis a>] | <e g>4. <fis a> | <g b>4. <a, c>8[ <g b> <fis a>] |

  % M56-57
  <e g>4. <fis a> | <g b>2. |
  % M58-64
  <d' fis d'>^> | <a e' a>^> | <d fis e'>^> | <a e' a>^> | <d fis d'>^> | <a e' a>^> | <d fis d'>^> |


  % Pge 3
  % M65-66
  <g, b g'>2. ~ | q4. ~ q8 r r |
  % M67-68
  <e c>4.^^ <e g> | <d b>^^ <d f> |
  % M69-71
  <a c>4^^ <c e>8 <c e>[ <d b> <c a>] | <b d>4 <c e>8 <d f>4 <d b>8 | <c e>4. ^^ <e g> |

  % M72-78
  <b d>4.^^ <d f>|<c a>4^^ <c e>8 <c e>[ <b d> <a c>] |
  <b d>4^^ <c e>8 <d f>4 <e g>8 | <f a>4.^^ <b d,> |
  <a f>4.^^ <b d,> | <a f>4^^ <b d,>8 <g e>4 <a c,>8 | 
  <f d>4^^ <g b,>8 <e c>[ <d f> <e g>] |

  % M79-85
  <f a>4.^^ <b d,> | <f a>^^ <b d,> | <f a>4^^ <b d,>8 <e, g>4 <a c,>8 |
  <d, f>4^^ <e g>8 <c e>8[ <d f> <e g>] |
  << { \voiceOne <f a>2. ^^ | <e c'>^^ | <d b'>^^ } 
    \new Voice { \voiceTwo
      r4 r8 g4._> | s2. | r4 r8 g4._> |
      }>>\oneVoice

  % M89-95
  <f g>2. | <e c'>4.^^ g^> | e^> g^> | <f d'>4. <g g'> |
  <f d'>4. a8[ b c] | <d f,>4. <g g,> | <d f,> a8[ b c] |

  % M96-100
  <d f,>4. g, | <g b g'>2. | <g c e> | <e c g> | <e c g> |
  \change Staff = "lower" \stemUp \tieUp
  <e, c>2. | q\fermata ~ | q8 \change Staff="upper" r8 r8 r4 r8 \bar "|."

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

  % Page 2
  % M29-32
  <g'' b d>2.^^ <g a c d>^^ <g b d>^^ <g a c d>^^ |
  % M33-35
  <g b d>^^ <g a c d>^^ <g b d>^^ |

  % M36-38
  <g a c d>^^ | <d g,>^^ | <g a c d>^^ |
  % M39-41
  <g b d>^^ <g a c d>^^ | <d g,>^^ |

  % M42-44
  <g a c d>^^ <g b d>^^ <g a c d>^^ |
  % M45-48
  <d g,>^^ <g a c d>^^ <g b d>^^ <g a c d>^^ |

  % M49-55
  <d g,>^^ <g a c d>^^ <g b d>^^ <g a c d>^^ <d g,>^^ <g a c d>^^ <g b d>^^ |

  % M56-57
  <g a c d>^^ <d g,>^^ |
  % M58
  << { \voiceOne <g a c d>2.^> } 
    \new Voice { \voiceTwo r4 r8 g,4._> } >> \oneVoice
  % M59
  <g' a c e>2.^>
  % M60
  << { \voiceOne <g a c d>2.^> } 
    \new Voice { \voiceTwo r4 r8 g,4._> } >> \oneVoice
  % M61
  <g' a c e>2.^>
  % M62
  << { \voiceOne <g a c d>2.^> } 
    \new Voice { \voiceTwo r4 r8 g,4._> } >> \oneVoice
  % M63
  <g' a c e>2.^>
  % M64
  << { \voiceOne <g a c d>2.^> } 
    \new Voice { \voiceTwo r4 r8 g,4._> } >> \oneVoice

  %% Page 3

  % M65-66
  <g' d' f!>4. <f f'> | <e e'> <d d'> |
  % M67-71
  <c g'>2.^> | q^> | q^> | q^> | q^> |

  % M72-78
  q^> | q^> | q^> | q^> | q^> | q^> | q^> | 

  % M79-85
  q^> | q^> | q^> | q^> | q^> | 
  << { \voiceOne g'4.^> g^> } \new Voice { \voiceTwo c,2. } >> \oneVoice
  <g' c,>2.^>

  % M86-92
  << { \voiceOne g4.^> g^> } \new Voice { \voiceTwo c,2. } >> \oneVoice
  <c c'>4. g'^> | c^> g^> | <b g c,>4. <a e'> | <b g c,>4. <a e'>4. |
  <c, g' b> <a' e'> | <b g c,> <a e'> |

  % M93-100
  <b g c,>4. g | <d' f> g, | <c c,> g | <c, c,>  g | <c c,>2. | \stemDown <g c,> |
  \tieDown q2._\fermata ~ | q8 r r r4 r8 \bar "|."
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

  % Page 2
  % M29-35
  s2.\f s2. s2. s2. s4 s2\f s2. s2. 

  % M36-41
  s2. s2. s2. s2. s2. s2.

  % M42-48
  s2. s2. s2. s2. s2. s2. s2.

  % M49-55
  s2. s2. s2. s2. s2. s2. s2.

  % M56-64
  s2. s2. s2.\f s2. s2. s2. s2. s2. s2.

  % M65-71
  \set decrescendoSpanner = #'text
  \set decrescendoText = \markup \italic "dim."
  s2. s2.\> s2.\p s2. s2. s2. s2.

  % M72-78
  s2. s2. s2. s2. s2. s2. s2. 

  % M79-85
  \set crescendoText = \markup \italic "cres"
  s4. s4.\< s2. 
  \set crescendoText = \markup \italic "cen"
  s4 s2\< s2. s4\do s2 s2. s2.\f

  % M86-92
  s2. s2.\f s2. s2.\ff s2. s2. s2.
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
    \tempo 4 = 120
  }
}