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
      \crossStaff { e8 fis d | e2. }
      \autoBeamOn }>>
  |    
  \oneVoice
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

  a'4
  \repeat volta 2 {
    \tuplet 3/2 {fis'8([ g fis]} e4) d-. |
    b'8 r a2 | 
    \tuplet 3/2 {fis8([ g fis]} e4) d |
    d8 r cis2 |
    g'8[( a] g4) e-. |
    g8[( a] g4) e-. |
    cis'8[ b a g fis e] |
    d[( e] fis4) a,


    \tuplet 3/2 {fis'8([ g fis]} e4) d | 
    b'8 r a2 |
    \tuplet 3/2 {fis8([ g fis]} e4) d |
    e'8 r d2 |
    e8[ d cis b a g] |
    fis[ b a fis] d4 |
    a fis'4.->( e8)
  }
  \alternative {
    { d4 r4 a }
    { d \acciaccatura e8 d8[( cis d e)]}
  }

  \repeat volta 2 {
    <d fis>4 r8 q8 q4 |
    q \acciaccatura g8 fis[( e fis g] |
    a4) r8 <fis a>8 q4 |
    q <g b> <fis a> |
    q r8 <e g>8 q4 |
    q <fis a> <e g> |
    q r8 <d fis>8 q4 |
    q \acciaccatura e8 d[( cis d e] |

    <d fis>4) r8 q q4 |
    q4 \acciaccatura g8 fis[( e fis g] |
    <fis a>4) r8 q q4 |
    q fis4 <d d'> |
    q4 r8 <cis cis'>8 q4 |
    q4 r8 <b b'>8 q4 |
    q4 r8 <a a'>8 q4 |
  }
  \alternative {
    { q4 \acciaccatura e'8 d[( cis d e]) |}
    { <a, a'>4 r4 a4 | }
  }

  %% Page 3

  \tuplet 3/2 {fis'8[( g fis]} e4) d-. |
  b'8 r a2 |
  \tuplet 3/2 {fis8[( g fis]} e4) d-. |
  d8 r cis2 |
  g'8[( a] g4) e |
  g8[( a] g4) e |
  cis'8[( b a g fis e]) |
  d[( e] fis4) a, |



  \tuplet 3/2 {fis'8[( g fis]} e4) d-. |
  b'8 r a2 |
  \tuplet 3/2 {fis8[( g fis]} e4) d-. |
  e'8 r d2 |
  e8[( d cis b a g)] |
  fis[( b a fis] d4) |
  a fis'4. e8 | 
  d4 \bar "||"


   \key g \major
   d d 
   \repeat volta 2 {
    \acciaccatura d8 b'4 r4 b |
    r4 \acciaccatura d,8 a'4. g8 |
    << {\voiceOne g2( fis4) }\\ \new Voice {\voiceTwo <a, c>2. }>> |
    \oneVoice
    r4 d d |
    \acciaccatura d8 c'4 r c  |
    r4 \acciaccatura b,8 b'4. a8 |
    << { \voiceOne a2( g4) } \\ \new Voice {\voiceTwo <d b>2. }>>
    \oneVoice
    r4 d d |

    \acciaccatura d8 d'4 r d |
    r <c c,>4. <b b,>8 |
    q2 <a a,>4 ~ |
    q <g g,> <e e,> |
    <d d,> <fis fis,> <g g,> |
    <b d, b>2 <a c, a>4 |
    <g b, g> \acciaccatura d8 d'[( c b a])
   }
   \alternative {
    { g4 d d} { g r b }
   }

  % Page 4

  c8[-. d-.] e4-. a,8[-. b-.] |
  c4-. fis,8[-. g-.] a4-. |
  d,( b') b-. |
  b-. a8[( g fis g]) |
  d4( c') c-. |
  c b8[( a gis a)] |
  g4-. e'-. d~ |
  d b-. b-. |


  c8[-. d-.] e4-. a,8[-. b-.] |
  c4-. fis,8[-. g-.] a4-. |
  d,( b') b-. |
  b-. a8[( g fis g]) |
  fis4-. b-. d-. |
  fis, ais cis | 
  b r r |
  <d a fis d>8 d,[ e fis g a] |

  \acciaccatura d,8 b'4 r b |
  r4 \acciaccatura  d,8 a'4. g8 |
  << { \voiceOne g2( fis4) } \\ \new Voice {\voiceTwo <c a>2. }>> |
  \oneVoice
  r4 d d |
  \acciaccatura d8 c'4 r c |
  r \acciaccatura b,8 b'4. a8 |
  << {\voiceOne a2( g4)} \\ \new Voice{\voiceTwo <d b>2.}>> |
  \oneVoice
  r4 d d |

  \acciaccatura d8 d'4 r d |
  r <c c,>4. <b b,>8 |
  q2 <a a,>4~ |
  q <g g,> <e e,> |
  <d d,> <fis fis,> <g g,> |
  <b b,>2 <a a,>4 |
  <g g,> \acciaccatura d8 d'[( c b a)] | 
  g4 r4 \bar "||"
  \key d \major 
  a4

  %% PAGE 5
 
  \repeat volta 2 {
    \tuplet 3/2 {fis8[( g fis]} e4) d-. |
    b'8 r a2 |
    \tuplet 3/2 {fis8[( g fis]} e4) d-. |
    d8 r cis2 |
    g'8[( a] g4) e-. |
    g8[( a] g4) e-. |
    cis'8[ b a g fis e] |
    d[( e] fis4) a, |

    \tuplet 3/2 {fis'8[( g fis]} e4) d-. |
    b'8 r a2 |
    \tuplet 3/2 {fis8[( g fis]} e4) d-. |
    e'8 r d2 |
    e8[( d cis b a g]) |
    fis[( b a fis)] d4 |
    a fis'4.(-> e8)
  }
  \alternative { { d4 r a } { d \acciaccatura e8 d[( cis d e)]}}


  \repeat volta 2 {
    <d fis>4 r8 q q4 |
    q4 \acciaccatura g8 fis[( e fis g] |
    a4) r8 <fis a>8 q4 |
    q <g b> <fis a> |
    q r8 <e g>8 q4 |
    q <fis a> <e g> |
    q r8 <d fis> q4 |
    q4 \acciaccatura e8 d[( cis d e] |


    <d fis>4) r8 q q4 |
    q4 \acciaccatura g8 fis[( e fis g] |
    <fis a>4) r8 q q4 |
    q fis4 <d d'> |
    q r8 <cis cis'>8 q4 |
    q r8 <b b'>8 q4 |
    q4 r8 <a a'>8 q4 |
  }
  \alternative {
    { q4 \acciaccatura e'8 d[( cis d e)] } {<a a,>4 r a,}
  }

  % PAGE 6
  \tuplet 3/2 {fis'8[( g fis]} e4) d-. |
  b'8 r a2 |
  \tuplet 3/2 {fis8[( g fis]} e4) d-. |
  d8 r cis2 |
  g'8[( a] g4) e |
  g8[( a] g4) e |
  cis'8[ b a g fis e] |
  d[( e] fis4) a, |

 \tuplet 3/2 {fis'8[( g fis]} e4) d-. |
  b'8 r a2 |
  \tuplet 3/2 {fis8[( g fis]} e4) d-. |
  e'8 r d2 |
  e8[( d cis b a g]) |
  fis[( b a fis)] d4 |
  a fis'4.(-> e8) |

  d4 r r 

 \bar "|."

 \key a \major
 \repeat volta 2 {
  e2. | cis4 a4. fis'8 | e2. cis4 a4. d8 | cis2( b4) | b e,4. cis'8 | b2( a4)~ | a8[ e cis e a cis] | e2. |

  cis4 a4. fis'8 | e2. ~ | e4 e fis | gis4. a8 gis4 | fis4. gis8 fis4 | 
 }
 \alternative {
    { e4 r8 <e e'>8 q4 | d'8[ cis b a gis fis]}
    { e4 r8 <e e'>8 q4 | q q <dis dis'>4 }
 }
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
  a'4 a a | <d, d'>4. r8 r4 | a4 a a | a2\fermata \bar "||"


  r4 |
  \repeat volta 2 {
    d4 <fis a d>4 q |
    d <fis a d> q |
    d <fis a d> q |
    e <g a cis> q |
    a, <g' a cis> q |
    a, <g' a cis> q |
    a, <g' a cis> q |
    d <fis a d> q |

    d <fis a d> q |
    d <fis a d> q |
    b, <fis' b d> q |
    g, <g' b e> q |
    g, <g' b e> q |
    a, <fis' a d> q |
    a, <g' a cis> q |    
  }
  \alternative {
    { <d fis a d>4 r r | }
    { <d fis a d>4 r r | }
  }

  \repeat volta 2 {
    <d d,>4 r <d fis a d> |
    q r r |
    <d d,>4 r <d fis a d> |
    q r r |
    a <e' g a cis> q |
    a, <e' g a cis> q |
    d <fis a d> q |
    d <fis a d> q |

    <d d,> r <d fis a d> |
    q r r |
    <d d,> r <d fis a d> |
    q r r |
    <e e,> <a cis e> q |
    <e e,> <e gis b d> q |
    a, <e' a cis> q |
   }
   \alternative {
    { <e a cis>4 r r | }
    { <e a cis>4 r r | }
   }

   % Page 3

   d4 <fis a d> q |
   d <fis a d> q |
   d <fis a d> q |
   e <g a cis> q |
   a, <g' a cis> q |
   a, <g' a cis> q |
   a, <g' a cis> q |
   d <fis a d> q |

   d <fis a d> q |
   d <fis a d> q |
   b, <fis' b d> q |
   g, <g' b e> q |
   g, <g' b e> q |
   a, <fis' a d> q |
   a, <g' a cis> q |
   <d fis a d>
   \bar "||"

  \key g \major
  r4 r 
  \repeat volta 2 {
    \grace s8
    g,4 <d' g b> q | 
    g,4 <d' g b> q |
    d <fis a c> q |
    d <fis a c> q |
    d, <fis' a c> q |
    d <fis a c> q |
    g, <d' g b> q |
    g, <d' g b> q |

    b <d g b> q |
    b <d g b> q |
    c <e a c> q |
    cis <e g bes> q |
    d <g b> q |
    d <fis a c> q |
    <g b> r <d fis a d> |
  }
  \alternative {
    { <g b d> r r } { <g b d> r r }
  }

  % Page 4
  d4 <fis a d> q |
  d <fis a d> q |
  g <b d> q |
  d, <b' d> q |
  fis <a c d> q |
  d, <a' c d> q |
  g <b d> q |
  g, <g' b d> q |

  d <fis a d> q |
  d <fis a d> q |
  g, <d' g b> q |
  e, <e' g b> q |
  fis, <d' fis b> q |
  fis, <e' fis ais> q |
  <b d fis b> r r |
  <d a fis d> r r |

  g, <d' g b> q |
  g, <d' g b> q |
  d <fis a c> q |
  d <fis a c> q |
  d, <fis' a c> q |
  d <fis a c> q |
  g, <d' g b> q |
  g, <d' g b> q |

  b <d g b> q |
  b <d g b> q |
  c <e a c> q |
  cis <e g bes> q |
  d <g b> q |
  d < fis a c> q |
  <g b> r <d fis a d> | 
  <g b d> r \bar "||"
  \key d \major r4


  % PAGE 5
  \repeat volta 2 {
    d4 <fis a d> q |
    d <fis a d> q |
    d <fis a d> q |
    e <g a cis> q |
    a, <g' a cis> q |
    a, <g' a cis> q |
    a, <g' a cis> q |
    d <fis a d> q |

    d <fis a d> q |
    d <fis a d> q |
    b, <fis' a d> q |
    g, <g' b e> q |
    g, <g' b e> q |
    a, <fis' a d> q |
    a, <g' a cis> q |
  }
  \alternative { {<d fis a d>4 r r } {q r r}}
  \repeat volta 2 {
    <d d,>4 r <d fis a d> |
    q r r |
    <d d,>4 r <d fis a d> |
    q r r |
    a <e' g a cis> q |
    a, <e' g a cis> q |
    d <fis a d> q |
    d <fis a d> q |

    <d d,>4 r <d fis a d> |
    q r r |
    <d d,> r <d fis a d> |
    q r r |
    <e e,> <a cis e> q |
    <e e,> <e gis b d> q |
    a, <e' a cis> q | 
  }  
  \alternative {{ q r r }{q r r}}


  d4 <fis a d> q | d <fis a d> q | d <fis a d> q | e <g a cis> q | a, <g' a cis> q |a, <g' a cis> q |a, <g' a cis> q |d <fis a d> q |

  d4 <fis a d> q | d <fis a d> q | b, <fis' b d> q | g, <g' b e> q|g, <g' b e> q|a, <fis' a d> q|a, <g' a cis> q| <d fis a d> r r
  
  \bar "|."

  \key a \major

  \repeat volta 2 {
    a <cis e a> q|a <cis e a> q|a <cis e a> q|a <cis e a> q|e, <d' e gis> q|e, <d' e gis> q|a <cis e a> q|a <cis e a> q|a <cis fis a> q|

    a <cis e a> q|a <cis e a> q|a <cis e a> q|b <e gis> q|b <dis fis b> q|   
  }
  \alternative { 
    {<e gis> r8 <e e,> q4 | r2.}
    {<e gis>4 r8 <e e,> q4 | q4 r r }
  }
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
  \midi {
    \tempo 4 = 80
  }
}