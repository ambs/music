

introUpper = \relative c'' {
  \clef treble
  \key d \major
  \time 4/4

  \tempo "Large"
  %% page 1, line 1

  \partial 16 <cis e a>16 | 
  q2 r4 r8. <e a cis>16 |
  q2 r4 r8. <g a cis e>16 |
  q4 ~ q8 r <cis,, e a>2\( |
  <d a' b>2 <g a cis>4\) a8.[^\markup{Piston.} a16] |
  d2 e4 d8.[ cis16] |

  %% page 1, line 2
  fis4. d8 a4 r |
  e' e,8.[ cis'16] b8[ cis d e] |
  <<
    { \voiceOne a,2 ~ a8 r a8.[ a16] }
    \new Voice {
      \voiceTwo r4 <fis d> <g! b,> <e cis> 
    } >> \oneVoice
  fis'2 ~ fis8[ e d cis] |
  %%%%% MEASURE 10
  e[ d cis b] d[ c! b a] |

  %% page 1, line 3
  g8 r b[ d] a[ d g, d'] |
  fis,[ a d fis] e[ d cis b] |
  a2~   
  \magnifyMusic #(magstep -2) {
    \cadenzaOn
    \omit Score.MetronomeMark
    \tempo 4=180
  a8[^\markup{Cadenza ad lib.} a, bes a d cis fis e]
  g4 ~ g8[ cis, d cis fis e a g] bes4 ~ bes8[ a b a cis a e' cis]
  g'4 ~ g16[ fis e dis fis e d cis b a g fis e d]
  cis4 \acciaccatura { d16[ cis \once \omit Accidental b] }
      \omit Score.MetronomeMark   \tempo 4=120
   } \tuplet 3/2 { cis8[ e g]} \cadenzaOff
  
  \tuplet 3/2 { b4 cis,8 } \tuplet 3/2 { bes'4 cis,8 }  \bar "||"

  %% page 1, remaining line 4
  \time 3/4
  \stemUp
  a'4^\markup{\concat{Mouv\super t}. de valse} cis,8[( e] cis'4)-. | b2_>( a4) | r d,8[( e] b'4)-. | a2_>( gis4) |
  %% page 1, line 5
  \stemNeutral
  g!4 e8[( g] cis4) | g8[( cis] e4) cis8[( e] | 
  g8[) fis e d cis b] | a[ gis g fis e d] | cis2 d4 | e f fis | g2. | gis2 \bar "|."

}

introLower = \relative c {
  \clef bass
  \key d \major
  \time 4/4

  %% page 1, line 1
  \partial 16 <a a'>16 |
  q2 r4 r8. q16 |
  q2 r4 r8. q16 |
  <<
    { \voiceTwo q4 r g'2\( | fis e4 \) r }
    \new Voice {
      \voiceOne r4 a2-> a4-> ~ | a4 a4-> ~ a4 r 
    }
  >> \oneVoice
  <d,, d'>4 <fis' a d> <g a cis> r |

  %% page 1, line 2
  <d d,>4 <fis a d> <a d fis> <fis a d> |
  <e e,> <e a cis> <e gis b d> r |
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  << { \voiceOne <cis e a>4 a8.[ fis'16] e8[ fis g! a] }
   \new Voice { \voiceTwo a,4 a a a } >>
  \oneVoice
  <d fis a d>4 <fis a d> d, <fis' ais e'> |
  %%%%% MEASURE 10
  b,4 <fis' b d> d, <d' fis a c!> |

  %% page 1, line 3
  <g, b d g>4 <g b d> <a d fis> <b d g> |
  <a d fis a> r r2 |
  <a cis e g>2 s1 s1 s1 s1 s1 s8 r2\fermata \bar "||"
  %% page 1, remaining line 4
  \time 3/4
  <a cis>2. ~ | q | <b d>2. ~ | q |
  %% page 1, line 5
  \stemUp
  <cis e>2. ~ | <cis e>4 r r \repeat unfold 5 { | R1*3/4 } 
  | R1*1/2 \bar "|."
}



%%%% DYNAMICS

introDynamics = {

  %% page 1, line 1
  \partial 16 s16\ff | s1 | s1 |
  s4. s8\p s8\< s4 s8 | s8 s8\> s8 s8 s8\! s8 s4\p | s1 |
  %% page 1, line 2
  s1 | s1 | s8\< s4. s8\> s4 s8\! | s1 | s1 |
  %% page 1, line 3
  \set crescendoSpanner = #'text
  \set crescendoText = \markup \italic "cre"
  s4 s4\< s2
  \set crescendoText = \markup \italic "scen"
  s4\< s2 s8 s8\do 
  \set crescendoSpanner = #'hairpin
  s2\f s1 s1 s1 s1 s1 s8 s2^\markup{\italic dim.} 
  %% page 1, remaining line 4
  s2.\p s2. s2. s2.
  %% page 1, line 5
  \set crescendoSpanner = #'text
  \set decrescendoSpanner = #'text
  \set crescendoText = \markup \italic "cresc."
  \set decrescendoText = \markup \italic "dim."
  s4 s2\< s2. s2.\sf s2.\> s2\p s4\>
  \set decrescendoText = \markup \italic "e"
  s4 s4\> s4
  \set decrescendoText = \markup \italic "rall."
  s2.\> s2\! \bar "|."

}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = "Piano"
    \new Staff = "upper" \introUpper
    \new Dynamics = "Dynamics_pf" \introDynamics
    \new Staff = "lower" \introLower
  >>
  \layout { 
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/12)
    }
    \set Score.doubleRepeatType = #":|.|:"
  }
  \header {
    piece = "Introduction"
  }
}
