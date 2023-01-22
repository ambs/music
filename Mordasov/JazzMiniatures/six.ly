% Moderato
upperSix = \relative c' {
  \clef treble
  \key g \major
  \time 4/4

  \partial 2
  <<
    \new Voice \relative {
      \voiceOne

      % 1
      d'8.[^\markup{\italic{Moderato}} e16 g8. a16]_> ~ |
      a2. \acciaccatura ais8 b g ~ | \oneVoice
      g r r b d8.[ c16 b8. b16]^> ~ | \voiceOne

      % 2
      b2 a8 b4 d8^> ~ | \oneVoice
      d4 r g,8.[ a16 b8. d16] ~ | \voiceOne 
      d2. \acciaccatura dis8 e c ~ |

      % 3
      c4 \oneVoice r4 d8(^- c4^.) <b fis dis>8 ~ |
      q2 \voiceOne c8^-( b4^.) a8^> ~ |
      a2 b8^- a4^. g8^> ~ | 

      % 4
      g8. a16 b4 fis e8 a ~ | \oneVoice 
      a2 d,8.[( e16 g8.) a16] ~ | \voiceOne
      a2. \acciaccatura ais8 b g ~ |

      % 5
      g8 \oneVoice r r b d8.[( c16] b8.)[ b16^>] ~ | \voiceOne  
      b2 a8^- b4^. d8^> ~ |
      d8 \oneVoice r r4 g,8.[( a16 b8.) d16_>] ~ | \voiceOne
      
      % 6
      d2. \acciaccatura dis8 e[ c] ~ |
      c4 \oneVoice r g \acciaccatura gis8 a4 |
      b8[ d,] ~ d4 \acciaccatura gis8 a4 d,8[ <e g!>] ~ |
      q8 r8 r4 \bar "|." 

    } \\
    \new Voice \relative {
      \voiceTwo

      % 1
      s2 |
      r8 <c' e>4. <c ees> <b d>8 ~ |
      q s8 s4 s2 |

      % 2
      r8 <c e>4. <c ees> <d fis>8 ~ |
      q4 s4 s2 |
      r8 <f a>4. <f aes> <e g>8 ~ |

      % 3
      <e g>4 s2 s4 | s2 <d f>4. <c e>8 ~ | q2 <ees c>4. <b d>8 ~ |

      % 4
      q2 cis4. <c e>8 ~ | q2 s2 | r8 <c e>4. <c ees>4. <b d>8 ~ |

      % 5
      q s8 s4 s2 | r8 <c e>4. <c ees> <d fis>8 ~ | q8 s8 s4 s2 |

      % 6
      r8 <f a>4. <f aes> <e g>8 ~ | q4 s4 s2 | s1 | s2 \bar "|."
    }

  >>


}

lowerSix = \relative c' {
  \clef bass
  \key g \major
  \time 4/4

  % 1
  \partial 2 r2 |
  r8 <g a,>4. <fis d>4. <e g,>8 ~ |
  q r r4 r2 |

  % 2
  r8 <g a,>4. <fis d> <g b>8^> ~ |
  q4 r4 r2 |
  r8 <c d,>4. <b g> <a c,>8 ~ |

  % 3
  q4 r r r8 <<
    \new Voice \relative {
      a8 ~ | \stemUp a2 \stemNeutral \oneVoice <gis e>4. g8^> ~ |
      \stemUp g2 \stemNeutral <a f>4. <g e>8 ~ |
    } \\
    \new Voice \relative {
      \voiceTwo s8 | r b,4. s2 | r8 a4. s2 |
    }
  >>

  % 4
  <e g>2 <g a,>4. <g d>8 ~ |
  q[ d,_>] ~ d4 r2 |
  r8 <a' g'>4. <d fis> <e g,>8 ~ |

  % 5
  q8 r r4 r2 | 
  r8 <g a,>4. <fis d> <g b>8 ~|
  q r r4 r2 |

  % 6
  r8 <d c'>4. <g b> <a c,>8 ~ |
  q4 r <ees g c>2 |
  <d g b>2 <d fis c'>4. <g b>8 ~ |
    \autoBeamOff q g,,_._^ r4 \bar "|."
}




\bookpart {
  \header {
    subtitle = "Seller, Apple"
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" 
      <<
      \new Staff = "upper" << \upperSix >>
      \new Staff = "lower" <<  \lowerSix >>
    >>
    \layout { }
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" <<
      \new Staff = "upper"  \upperSix
      \new Staff = "lower"  \lowerSix
    >>
    \midi { 
      \tempo 4 = 100
    }
  }
}
