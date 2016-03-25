
\version "2.18.2"

\paper {
   max-systems-per-page = 6
%   page-count = 4
}

\header {
  title = "Choral et Musette"
  composer = "Charles GOUNOD"
  copyright = \markup \left-align \center-column {
     \line {
	   	"© 2016 Alberto Simões"}
   	\line {
   		\epsfile #Y #2 #"cc-by-sa.eps" "Licensed under a Creative Commons Attribution-ShareAlike 4.0 International License."
   	}
  }
   tagline = \markup \left-align \center-column {
    \line { "Thanks to Ana Iriarte for proofreading"}
   	\line { "Original document from IMSLP (http://imslp.org)." }
   	\line { "Typeset with GNU LilyPond (http://lilypond.org)." }
   }
}

upper = \relative c' {
  \tempo "Moderato e maestoso"
  \clef treble
  \key f \major
  \time 4/4

  % M1-M2
  <c f>2 <d a'> | <e c'> q |
  % M3-M5
  << { \voiceOne f'2 e4 c | d1 | c2\fermata ~ c4 } 
    \new Voice { \voiceTwo f,2 g | a g4 f | e2 ~ e4 } >> \oneVoice r4
  % M6-M7
  <f f'>2 <f d'> | <e c'> <d f> |


  % M8-M9
  << { \voiceOne bes'2 a4 f | g1 } 
    \new Voice { \voiceTwo d4 e f2 | f e } >> \oneVoice
  % M10
  \tieUp
  <c f>2\fermata ~ q4 r4  |
  % M11-M12
  <f a>2 <g c> | <f d'> <a e'> |
  % M13-14
  << { \voiceOne f'4 e d f | e1 } 
    \new Voice { \voiceTwo a,2 bes | <bes d,> a4 g } >> \oneVoice
  % M15
  <f d'>2\fermata ~ q4 r

  % M16-M17
  \stemUp
  <a c!>2 <a d> | <gis e'> <e c'> |
  \stemNeutral
  % M18-19
  << { \voiceOne a4 d c a | b1 } \new Voice { \voiceTwo f2 e f e4 d } >> \oneVoice
  % M20-22
  <c a'>2\fermata ~ q4 r |
  \stemDown
   <f c'>2 <f f'> | <g e'> <c a'> |
   \stemNeutral
  % M23
  << { \voiceOne g'4 f e c } \new Voice { \voiceTwo b2 e, } >> \oneVoice

  % M24-25
  << {\voiceOne d'1 | c2\fermata ~ c4 } \new Voice { \voiceTwo a2 g4 f | e2 ~ e4 } >> \oneVoice r4 |
  % M26
  \stemUp
  <f f'>2 <f d'> |
  \stemNeutral
  % M27-29
  << {\voiceOne c'2 f, | bes a4 f | g1 }
    \new Voice { \voiceTwo e2 d4 c | d e f2 | f e } >> \oneVoice
  % M30
  \tieUp  <c f>2^\fermata  ~ q4 r4

  %% PAGE 2
  \break

  \time 3/4
  \repeat volta 2 {
    \tempo "Allegro (a 1º Tempo mouvt. de Scherzo)" 2=76
    %%% M31-36 - 41...
    << { \voiceOne R1*3/4 | R1*3/4 | r4 r \(c'8[ d] | e4 g bes | a f d | e f8[ e d e] |
         c4 d f | e g bes | a f d | e d8[ f e c] | f4\) r4 }
         \new Voice { \voiceTwo a,2. | bes | a | bes | a | bes |
           a | bes | a | bes | a2} >> 
    %%% M41-42 - 54... 59
    << { \voiceOne c8[\( d] | e4 g bes | a f d | e f8[ e d e] | c4 d f|e g bes|a f d|
         e d8[ f e c] | f4\) r4 c8[\( d] | ees4 c a | bes d g | f ees8[ d c ees] | d4 bes' g | ees c a |
         bes d g a8[ g f e! d e] | f4\) r c8[\( d] | ees4 c a | bes d g | 
         % page 3
         % M60-64...65
         f4 ees8[ d c ees] | d4 bes' g | ees c a | bes d g | a8[ g f e! d e] | f4\)
       }  
      \new Voice { \voiceTwo s4 | bes,2. | a | bes | a | bes | a | bes | a f g f g f g bes a f g 
        % tbc
        % M60-64..65
        f2.  g f g g | a4
        } >> \oneVoice
    r4 r |

    %M66-67
    <c, e c'>8 r <c e g>2 | <e g e'>8 r <c e g>2 |
    % M68-69
    <c e c'>8 r <e g>2 | <e g e'>8 r <c e g>2 |

    % M70-71
    g'8[( a b! c d f)] | e[( g c a g e)] |
    % M72-73
    d8[( e fis g a b!)] | a[( g f! d a b!)] |

    % M74-75
    <c e, c>8 r <g e c>2 | <e g e'>8 r <g e c>2 |
    % M76-77
    <e c c'>8 r <e g>2 | <e g e'>8 r <g e c>2 |
    % M78
    g8[( a b! c d f)] |


    % M79-80
    e[( g c a g e)] | d[( f a, c b! g)] 
  }
  \alternative {
    % M81-82
    { c4 r r }
    { c r \stemUp  c8[^\( d]}
  }

  %% PAGE 4
  % M83-M88
  <<
    { 
      % M83-M88
      \voiceOne  e4 g bes | a f d | e f8[ e d e] | c4 d f | e g bes| a f d |
      % M89-94
      e d8[ f e c] | f4\) r c8[\( d] | e4 g bes | a f d | e f8[ e d e] | c4 d f |
      % M95-100
      e4 g bes | a f d | e d8[ f e c] | f4\) r c8[\( d] | ees4 c a | bes d g |
      % M101-106
      f4 ees8[ d c ees] | d4 bes' g | ees c a | bes d g | a8[ g f e! d e] | f4\) r c8[\( d] |
      % M107-112
      ees4 c a | bes d g | f ees8[ d c ees] | d4 bes' g | ees c a | bes d g |

      %% Pge 5
      % M113-114
      a8[ g f e! d e] | f4\)
    } 
    \new Voice {
      % M83-M88
      \voiceTwo bes,2. | a | bes | a | bes | a |
      % M89-94
      bes | a | bes | a | bes | a |
      % M95-100
      bes | a | bes | a | f | g |
      % M101-106
      f | g | f | g | bes| a |
      % M107-112
      f g f g f g |

      %% Pge 5
      % M113-114
      bes2. ( | a4)
    }
  >> \oneVoice r4 r

  % M115-118
  <f a c f>2. | <f bes d> | <e g c> | <f a> |
  % M119-120
  g8[( b! d f e d)] | c[( d e f g a)] |

  %% M121-122
  bes8[( g e c d bes] |  a4) r r |
  % M123-126
  <f a c f>2. <f bes d> <ees g c> <fis a> |
  % M127
  g8[( a bes c e d)]


  % M128-129
  c[( c' a f c a)] | bes[( c d bes g e)] |
  % M130
  << {\voiceOne f4 b\rest b\rest } \new Voice { \voiceTwo f2. } >> \oneVoice
  % M131-132
  f8[( g a bes c d)] | ees[( f g a bes c)] |


  % M133-134
  \afterGrace e,!2.\startTrillSpan { d16[\stopTrillSpan e]} | f4 r r |
  % M135-136
  f,8[( g a bes c d)] | ees[( f g a bes c)] |
  % M138-138
  \afterGrace e,!2.\startTrillSpan { d16[\stopTrillSpan e]} | f4 r r |
  % 139
  <f c a>2. |


  % 140-148
  <f, a d f>2. | q | <f bes d f> ~ | q | <g bes e g> ~ | q | <a c f a>~ | q ~| q4 r r \bar "|."


}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% LOWER VOICE
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


lower = \relative c {
  \clef bass
  \key f \major
  \time 4/4

  % M1-M2
  <f a>2 <f d> | <g c,> <a a,> |
  % M3-M4
  <<
    { \voiceOne a4 b c2 | c b } 
    \new Voice { \voiceTwo d,2 c | f g }
  >> \oneVoice
  % M5
  <g c c,>2^\fermata ~ q4 r |
  % M6
  <c a,>2\arpeggio << {\voiceOne bes!4 a } \new Voice {\voiceTwo bes,!2} >> \oneVoice
  % M7
  <g' c,>2 <f d> |


  % M8-M9
  <g g,>2 <c a,>\arpeggio | <d bes,>\arpeggio
  << { \voiceOne c4 bes | \crossStaff{ a2 ~  a4 }} \new Voice {\voiceTwo c,2 | f2_\fermata ( f,4)} >> \oneVoice
  % M10
   r4
  % M11-12
  <f' c'>2 <e c'> | <d a'> <a cis'>\arpeggio |
  % M13-15
  <d d'> <bes d'>\arpeggio | <g g'> <a cis'>\arpeggio |
  <d a' d>\fermata ~ q4 r | 

  % M16-M17
  <a' e'>2 <f d'> | <e b'> <a c> |
  % M18-19
  << { \voiceOne c4 b a2 | a gis } \new Voice { \voiceTwo f2 c d e } >> \oneVoice
  % M20
  <e a a,>2^\fermata ~ q4 r |
  % M21-23
  <f a>2 <a c> |
  << {\voiceOne s2 f'4 e } \new Voice { \voiceTwo c2 f, } >> \oneVoice |
  <g d'>2 <a c> |


  % M24-25
  <f c'>2 <g b> | <g c c,>\fermata ~ q4 r |
  % M26-30
  <c a,>2 \arpeggio
    \set Staff.connectArpeggios = ##t
  << { \voiceOne bes4 a | g bes a2 | f4 g f c' | d2\arpeggio c4 bes | \crossStaff { a2 ~ a4 }}
    \new Voice {\voiceTwo bes,2 c d g, a bes\arpeggio c f_\fermata( f,4) } >> \oneVoice r4

  \time 3/4
  \repeat volta 2 {
    %%% M31-36
    <f' c' f>2. | <f c' g'> | <f c' f> | <f c' g'> | <f c' f> | <f c' g'> |
    %%% M37-42
    <f c' f>| <f c' g'> | <f c' f> | <f c' g'> | <f c' f> | <f c' g'> |
    %%% M43-48
    <f c' f> <f c' g'> <f c' f> <f c' g'> <f c' f> <f c' g'> |
    %%% M49-54
    <f c' f> <f a c> <f bes d> <f a c> <f bes d> <f a c> |
    %%% M55-59
    <f bes d> 
    << { \voiceOne e'!4 f g } \new Voice {\voiceTwo <c, f,>2.} >> \oneVoice
    <f, c' f>2. <f a c> <f bes d>

    %% Pge 3
    %% M60-64
    <f a c>2. <f bes d> <f a c> <f bes d>
    << { \voiceOne e'!4 f g | f } \new Voice {\voiceTwo <c f,>2. <c f,>4} >> \oneVoice
    % M65...
    r4 r4 |

    % M66-67
    <c, c,>2 <b! b,!>8[ <a a,>] | <g g,>2 <c c,>8[ <d d,>] |
    % M68-69
    <e e,>4 <c' c,> <a a,> | <g g,> <e e,> <c c,> |

    % M70-71
    <g' b! d f>8 r q r r4 | <g e c c'>8 r q r r4 |
    % M72-73
    <a c d,>8 r q r r4 | << { \voiceOne d g f } \new Voice { \voiceTwo <b,! g>2. } >> \oneVoice

    % M74-75
    <c, c,>2 <b! b,!>8[ <a a,>] | <g g,>2 <c c,>8[ <d d,>] |
    % M76-77
    <e e,>4 <c' c,> <a a,> | <g g,> <e e,> <c c,> |
    % M78
    <g' b! d f>8 r q r r4 |

    % M79-80
    <c g e c>8 r q r r4 | <f b,! g>8 r <f c g> r <f d g,> r 
  }
  % 81-82
  \alternative {
    { | <e c>4 r r }
    { | <e c>4 r r }
  }

  % M83-88
  <f, c' g'>2. <f c' f> <f c' g'> <f c' f> <f c' g'> <f c' f> |

  % M89-94
  <f c' g'> <f c' f> <f c' g'> <f c' f> <f c' g'> <f c' f> |

  % M95-100
  <f c' g'> <f c' f> <f c' g'> <f c' f> <f a c> <f bes d> |

  % M101-106
  <f a c> <f bes d> <f a c> <f bes d> 
  << { \voiceOne e'!4 f g | f2. }
    \new Voice { \voiceTwo <c f,>2. | q }
    >> \oneVoice
  % M107-112
  <f, a c> | <f bes d> | <f a c> | <f bes d> | <f a c> | <f bes d> |


  %% Page 5
  % M113
  << {\voiceOne e'!4 f g } \new Voice { \voiceTwo <c, f,>2 } >> \oneVoice
  % M114
  <c f f,>4 r r | 
  % M115-118
 \stemDown
  <f, f,>2. | <bes bes,> | <c c,> | <d d,> |
  \stemNeutral
  % M119-120
  <g,, g,>8 r <g' b d f>2 | <c, c,>8 r <a' c f>2 |


  % M121-122
  <c, c,>8 r <g' c e> r q r |
  <f c' f>[ <d d'> <c c'> <bes bes'> <a a'> <g g'>] |
  % M123-126
  \stemDown
  <f f'>2. | <bes bes'> | <c c'> | <d d'> |
  \stemNeutral
  % M127
  <g, g,>8 r <g' bes d>2

  % M128-129
  <c, c,>8 r <a' c f>2 | c,8 r <g' bes e> r <c, bes' c> r |
  % M130-132
  <f a c>2. | <f bes d> | <f a c> |

  % M133-139
  <f g bes c>|<f a c>|<f bes d> | <f a c>|<f g bes c>|<f a c>4 r r |<f f'>2.|

  % M140-145
  <d d'> | <c c'>|<bes bes'>~|q | <g g'>~|q |
  % M146-148
  \stemDown
  \repeat tremolo 12 { <f c'>32 f' }
  \repeat tremolo 12 { <f, c'>32 f'( } |
    <f c f,>4)  r  r \bar "|."
}




%%%% DYNAMICS
do = #(make-dynamic-script (markup #:normal-text #:italic "do"))
dynamics = {
  s1\ff s1 s1 s1 s1 s1 s1 |

  s1 s1 s1 s1 s1 s1 s1 s1 |

  s1 s1 s1 s1 s1 s1 s1 s1 |

  s1 s1 s1 s1 s1 s1 s1 \bar "||"

  %% 2 page-count

  s2.\f s2. s2. s2. s2. s2. |
  s2. s2. s2. s2. s2\>  s4\pp_\markup{\italic{una corda}} s2. 
  s2. s2. s2. s2. s2. s2.
  s2 s4\f_\markup{\italic{tre corde}} s2. s2. s2. s2. s2.
  s2. s2. s2 s4\pp_\markup{\italic{una corda}} s2. s2.

  %% page 3
  s2. s2. s2. s2. s2. |
  s2. s2.\f_\markup{\italic{tre corde}} s2. s2. s2. |
  s2.\p s2. s2. s2. |
  s2. s2. s2. s2. s2.
  s2. s2. s2. s2 s4\f

  %% page 4
  s2. s2. s2. s2. s2. s2. 
  s2. s2 s4\pp_\markup{\italic{una corda}} s2. s2. s2. s2.
  s2. s2. s2. s2 s4\f_\markup{\italic{tre corde}} s2. s2. 
  s2. s2. s2. s2. s2. s2\> s4\pp_\markup{\italic{una corda}}
  s2. s2. s2. s2. s2. s2. 

  %% Page 5
  s2. s2. s2.\f s2. s2. s2. s2.\p s2. 
  s2. s2.\< s2.\f s2. s2. s2. s2.\p
  s2. s2. s2. s2.\f s2.
  s2. s2. s2.\pp_\markup{\italic una corda} s2. s2. s2. s2.\ff_\markup{\italic{tre corde}}
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Dynamics = "Dynamics_pf" \dynamics
    \new Staff  = "lower" \with {
            \consists "Span_arpeggio_engraver"
      }\lower
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