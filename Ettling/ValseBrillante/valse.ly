\version "2.20.0"

upper = \relative c'' {
  \clef treble
  \key d \major
  \time 3/4

  <d fis a d>8[ r16 d,] d4 \tuplet 3/2 { fis8[ e d] } | 
  << { \voiceOne \stemUp \tieUp  a'2. ~ | a2. ~ | a2. \fermata }
     \new Voice { \voiceTwo s4. <d, fis>8[ <cis e> <d fis>] |
      <e g>4. 
      \autoBeamOff 
      \crossStaff { e8 fis d | e2. }\oneVoice
      \autoBeamOn }>>
  |    
  <b' d fis b>8[ r16 b,] b4 \tuplet 3/2 { d8 cis b} |
  fis'2.  ~ |

  fis2. ~ | fis2. \fermata |
  e'8.[ b16] g'8[ b16 a] g[ fis g e] |
  d8.[ a16] fis'8[ g16 fis] e[ d cis b] |
  a8[ a16 b] cis8[ d e fis] |
  e16[( d cis d] a'4.) fis8 |
  e8.[ b16] g'8[ cis16 b] a[ g fis e] |

  d8.[ a16] fis'8[ b16 a] g[ fis e d] |
  cis8[( a] a'[ g b,8. cis16]) |
  d4. <d fis>8[( <cis e> <d fis>] |
  <e g>[ <d fis> <cis e> <b d> <a cis> <g e'>] |
  <fis d'>4.) <d fis>8[( <cis e> <d fis>] |
  <e g>[ <dis fis> <e g> <d fis> <cis e> <bis dis>]) |
  <cis e>2\fermata \bar "||" 
}

lower = \relative c, {
  \clef bass
  \key d \major
  \time 3/4

  <d fis a d>8[ r16 d'] d4 \tuplet 3/2 {fis8[ e d]} |
  a'4. s4. |
  s4. 
  \voiceTwo
  { a8[ \change Staff="upper" d8 \change Staff="lower" fis,8] | a2. } |
  \oneVoice
  <b, d fis b>8[ r16 b] b4 \tuplet 3/2 {d8[ cis b]} |
  fis'4. <b d>8[ <ais cis!> <b d>] |

  <cis e>4. <ais cis>8[ <b d> <d, b'>] |
  <fis cis'>2.\fermata |
  g,4 <g' b e> q | a, <fis' a d> q | a, <g' a cis> q | d, <fis' a d> q | g, <g' b e> q |

  a, <fis' a d> q | a, <g' a cis> <e g a> | <d fis a>4. r8 r4 |
  a'4 a a | <d, d'>4. r8 r4 | a4 a a | a2\fermata

}

\score {
  \new PianoStaff \with { instrumentName = "Introduction." }
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { 
    \context {
      \PianoStaff
      \consists "Span_stem_engraver"
    }
  }
  \midi { }
}