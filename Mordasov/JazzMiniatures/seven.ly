% Moderato
upperSeven = \relative c'' {
  \clef treble
  \key f \major
  \time 4/4

    % 1
    a8(_\mf^\markup{\italic{Moderatamente}} c^> ~ c2.) |
    d8( c^> ~ c2.) |
    a8( c^- a c^- a c^- ~ c4) |
    d8( c^> ~ c2.) 

    % 2
    d,8( f_> ~ f2.) |
    aes8( g_> ~ g2.) |
    r8 gis( a[ c] f4^.) d^- |
    c4 f,8( gis_> ~ gis2) |

    % 3
    a8( c^> ~ c2.) |
    d8( c^> ~ c2.) |
    a8( c^- a c^- a c^- ~ c4) |
    d8( c^> ~ c2.) | 

    % 4
    aes8_- g f g_> ~ g2 |
    aes8_- g f g_._^ r c( d4^.) |
    f8^. r c,4_- b_- bes8[ a_>] ~ a r r4 r2 \bar "|."

}

lowerSeven = \relative c' {
  \clef bass
  \key f \major
  \time 4/4

   <<
    \new Voice \relative {
        % 1
        \voiceOne <a c>4 q q q |
        <gis c> q q q |
        <a c> q q q |
        <g c> q <fis c'> q |

        % 2
        b! <b d> q q |
        <bes e,> q q q |
    }
    \\
    \new Voice \relative {
        %1
        \voiceTwo f4 r f r |
        e r e r|
        f r e r | 
        ees r d  r |

        % 2
        g r g r |
        c, r c r 
    } 
   >>
    \oneVoice
    <d^.^^ c a f>8 r r4 r2 |
    r2 r8 c,4._>

    <<
        \new Voice \relative {
            \voiceOne

            %3 
            <a c>4 q q q |
            <gis c> q q q|
            <g! c> q q q |
            <fis c'> q q q|

            %4
            <b! d> q q q |
            <bes! d> q q q 
        }
        \\
        \new Voice \relative {
            \voiceTwo

            %3
            f4 r f r |
            e r e r|
            ees r ees r |
            d r d r |

            %4 
            f r f r |
            e r e r 
        }
    >>
    \oneVoice
    <f a c>8^. r a,4_- gis_- g8[ f_>] ~ | f b,( c4) f,_> r \bar "|."
}




\bookpart {
  \header {
    subtitle = "Old Motive"
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" 
      <<
      \new Staff = "upper" << \upperSeven >>
      \new Staff = "lower" <<  \lowerSeven >>
    >>
    \layout { }
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" <<
      \new Staff = "upper"  \upperSeven
      \new Staff = "lower"  \lowerSeven
    >>
    \midi { 
      \tempo 4 = 90
    }
  }
}
