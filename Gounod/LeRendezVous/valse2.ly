

secondValseUpper = \relative c'' {
  \clef treble
  \key g \major
  \time 3/4
  <g b>2._> | q_> | q(_> ^~ | b8[ c d g fis e)] | 
  <<
    { \voiceOne d2. | d2 e4 | e2.( ~ }
    \new Voice {
      \voiceTwo a,2. | g | fis2. }
  >> \oneVoice 
  e'8[ d c b a d)] | <g, b>2._> | q_> | q(_> ^~ | b8[ ais b cis d e)] | fis2 d4 |

  % P 1 L 3
  \acciaccatura { cis16[ d] } cis!4. b8 cis4 | d2.( ~ | d4 cis c!) |
  \oneVoice <g b>2._>|q_>|q(_>~|b8[ c d g fis e)] |

  % P 1 L 4
  <<
  { \voiceOne d2. | d2 e4 | e2.( ~  }
    \new Voice {
      \voiceTwo a,2. | g | fis2. 
    }
  >> \oneVoice e'8[ d c b a d)] | <g, b>2._> | q_> | q(_> ^~ |

  % P 1 L 5
  b8[ c d g fis e)] |
  <<
    {\voiceOne d2 e4 | \acciaccatura {fis16[ g]} fis4. e8 fis4 | g2. ~| g4 }
    \new Voice {
      \voiceTwo a,2.|c2. | b2. ~ |b4 
    }
  >> \oneVoice r4 r

  \repeat volta 2 {
    <<
      {\voiceOne g'2.\( | fis |d2.\)(~|}
      \new Voice {
        \voiceTwo r4 <b e> q|r <a c> q|r <g b> q|
      }
    >>\oneVoice
    d'8[ b c d e fis] | g4)-. g8([ b,] g'4 | fis)-. fis8[( ais,] fis'4 | d2.)(~|
    d8[ d e fis g a] | b4)-. b8([ d,] b'4-> ~ |

    %P2L1
    b4)-. a8[( c,] a'4^> ~ | a4)-. g8[( b,] g'4^> ~ |
    g8)[ b,( c d e b] | c4) e2(^> ~ | 
    e8[ fis g a b fis] |
  }
  \alternative {
    { g2. ~ | g8)[ b,( c d e fis)] }
    % L2 P 2
    { g2.( ~ | g4 g, a)}
  }
  \bar "||"
 \oneVoice <g b>2._> | q_> | q(_> ^~ | b8[ c d g fis e)] | 
  <<
    { \voiceOne d2. | d2 e4 | e2.( ~ }
    \new Voice {
      \voiceTwo a,2. | g | fis2. 
    }
  >> \oneVoice
  e'8[ d c b a d)] | <g, b>2._> | q_> | q(_> ^~ | b8[ ais b cis d e)] | fis2 d4 |

  % P 1 L 3
  \acciaccatura { cis16[ d] } cis!4. b8 cis4 | d2.( ~ | d4 cis c!) |
 \oneVoice <g b>2._>|q_>|q(_>^~|b8[ c d g fis e)] |

  % P 1 L 4
  <<
  { \voiceOne d2. | d2 e4 | e2.( ~ }
    \new Voice {
      \voiceTwo a,2. | g | fis2. 
    }
  >> \oneVoice | e'8[ d c b a d)] | <g, b>2._> | q_> | q(_> ^~ |

  % P 1 L 5
  b8[ c d g fis e)] |
  <<
    {\voiceOne d2 e4 | \acciaccatura {fis16[ g]} fis4. e8 fis4 | g2. ~| g4 }
    \new Voice {
      \voiceTwo a,2.|c2. | b2. ~ |b4 
    }
  >> \oneVoice r4 r

  \bar "|."

}

secondValseLower = \relative c' {
  \clef bass
  \key g \major
  \time 3/4

  % P 1 L 1
  g4 <b d> q|d, <b' d> q|g <b d> q|d, <b' d> q|fis <a c d> q|e <a c d> q|

  % P 1 L 2
  d, <a' c d> q|fis <a c d> q|g <b d> q|d, <b' d> q|g <b d> q|gis <b d e> q|a <d fis> q|

  % P 1 L 3
  a <e' g> q|<d fis> a fis|d r r|g <b d> q|d, <b' d> q|g <b d> q|d, <b' d> q|

  % P 1 L 4 
  fis <a c d> q|e <a c d> q|d, <a' c d> q|fis <a c d> q|g <b d> q|d, <b' d> q|g <b d> q|

  % P 1 L 5
  d, <b' d> q|fis <a c d> q|d, <a' c d> q|g <b d> q|g, r r
  \repeat volta 2 {
    <<
      { \voiceOne r4 <g' b> q|r <a c d> q|
          r <b d> q|r q q|r <g b e> q|r <cis e> q}
      \new Voice {
        \voiceTwo e,2.|fis|g|g|e|fis
      }
    >>\oneVoice 
    | b,4 <fis' b d> q|b, <fis' b d> q|g, <d' g b> q|

    % L1 P2
    a <d fis c'> q|b <d g b> q|e <g b> q|a, <e' g c> q|d <d fis a c> q|
  }
  \alternative {
    { g, <d' g b> q | g, r r }
    { g <d' g b> q | g, r r }
  }
  \bar "||"
  g' <b d> q| d, <b' d> q|g <b d> q|d, <b' d> q|fis <a c d> q|e <a c d> q|

  % P 1 L 2
  d, <a' c d> q|fis <a c d> q|g <b d> q|d, <b' d> q|g <b d> q|gis <b d e> q|a <d fis> q|

  % P 1 L 3
  a <e' g> q|<d fis> a fis|d r r|g <b d> q|d, <b' d> q|g <b d> q|d, <b' d> q|

  % P 1 L 4 
  fis <a c d> q|e <a c d> q|d, <a' c d> q|fis <a c d> q|g <b d> q|d, <b' d> q|g <b d> q|

  % P 1 L 5
  d, <b' d> q|fis <a c d> q|d, <a' c d> q|g <b d> q|g, r r
}



%%%% DYNAMICS

secondValseDynamics = {
  s2.\p s2. s2. s2. s2. s8\< s2 s8\! 
  s2. s2.\> s2.\p s2. s2. s2. s2
  \set crescendoSpanner = #'text
  \set crescendoText = \markup \whiteout\italic "cresc."
  \set decrescendoSpanner = #'text
  \set decrescendoText = \markup \italic "dim."
  s4\< s2. s2.\f s4 s4\> s4 s2.\p s2. s2. s2.
  \set crescendoSpanner = #'hairpin
  \set decrescendoSpanner = #'hairpin
  s2. s8\< s2 s8\! s2. s2.\> s2.\p s2. s2.
  \set crescendoSpanner = #'text
  \set crescendoText = \markup \italic "cresc."
  s2. s2. s4 s4\< s s2.\f s2.
  \repeat volta 2 {
    s2.\p s2.
    s2. s2. s2. s2. s2. s8 s2\< s8 s2.\f 
    s2. s2. s2. s2. s2.
    \set decrescendoSpanner = #'text
    \set decrescendoText = \markup \italic "dim."
  }
  \alternative {
    { s2. | s8 s2\> s8\! }
    { s2. | s4 s4\> s4 }
  }

  s2.\p s2. s2. s2. s2.
  \set decrescendoSpanner = #'hairpin
  \set crescendoSpanner = #'hairpin
  s8\< s2 s8\! s2. s8\> s2 s8 s2.\p s2. s2. s2.
  \set crescendoSpanner = #'text
  \set crescendoText = \markup \whiteout\italic "cresc."
  s2 s4\< s2. s2.\f
  \set decrescendoSpanner = #'text
  \set decrescendoText = \markup \italic "dim."
  s8 s2\> s8 s2.\p s2. s2.
  \set decrescendoSpanner = #'hairpin
  \set crescendoSpanner = #'hairpin
  s2. s2.   
  s8\< s2 s8\! s2. s8\> s2 s8 s2.\p s2. s2. s2.
  \set crescendoSpanner = #'text
  \set crescendoText = \markup \italic "cresc."
  s4 s4 s4 s2.\<  s2.\f

}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = "Valse 2"
    \new Staff = "upper" \secondValseUpper
    \new Dynamics = "Dynamics_pf" \secondValseDynamics
    \new Staff = "lower" \secondValseLower
  >>
  \layout { 
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/9)
    }
    \set Score.doubleRepeatType = #":|.|:"
  }
}

