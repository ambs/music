% cond vs when
#(define (set-note-or-chord-duration! note-or-chord duration)
   (if (music-is-of-type? note-or-chord 'event-chord)
       (for-each (lambda (ev)
                   (cond (music-is-of-type? ev 'rhythmic-event)  
                     (ly:music-set-property! ev 'duration duration)))
                 (ly:music-property note-or-chord 'elements))
       (ly:music-set-property! note-or-chord 'duration duration)))


myT = #(define-music-function (pa pb) (ly:music? ly:music?)
        (set-note-or-chord-duration! pa  #{ 4 #})
        (set-note-or-chord-duration! pb  #{ 8 #})
        #{    \tuplet 3/2 { #pa #pb  }
        #})

upperNine = \relative c'' {
  \clef treble
  \key f \major
  \time 4/4

  \slurDown
  \myT c(^\markup{\italic{Agile}} gis a4)_. f4_- r | d f \myT aes( g ~ g4) | \myT c( gis \myT a f)_. r2 |
  <<
    \new Voice \relative { \voiceOne aes' 4 \myT f g ~ g4 } \\
    \new Voice \relative { \voiceTwo b4 ~ \myT b bes8 ~ bes4 }
  >> \oneVoice r4

  %2 
  \slurDown \myT c'( gis a4_.) f_- r | \slurNeutral
  \myT f'( a, \myT bes f' e8 d4.) |
  r8 c( \myT a' c, \myT b aes' \myT g bes, | \break

  %3 
  <a f'>4) r8 <c c'>^>_\sf ~ q2 | \slurDown
  r8 c( \myT gis a \myT f c_.) r4 |
  \myT d( f \myT g f \myT aes g \myT f d | \break

  %[4
  \myT c c'_.) r8 c8^> ~ \myT c a \myT g f |  
  \myT  <aes b,>4 f8 \myT <aes b,>4 <g bes,>8_> ~  q8 r r4 | 
  \myT c4( <a f'>8 \myT d4 des8 \myT c4 f,8) r8 f8( |

  %5 
  \myT <d aes'>4 f8 \myT <d c'>4 f8 \myT <d aes'>4 f8 \myT <d d'>4 f8  | 
  \myT c' b8 \myT bes gis \myT a f \myT d c) |
  \myT <b aes'>4 f'8 \myT <bes, g'>4 <a f'>8 ~  q r r4 \bar "|."

}

lowerNine = \relative c, {
  \clef bass
  \key f \major
  \time 4/4

  %1 
  f4 r a r | bes r c c, | f r d r |  g4 ~ \myT g  c,8 ~ \myT c d \myT dis e 

  %2
  f4 r a r | bes r b r | c2 g4 c, |

  %3
  f c d e | f r a r | bes r c c, |

  %4
  f4 r d r | g \myT g c,_> ~ \myT c d \myT dis e | f4 r a r |

  %5
  bes2( b) | c_- d^- | g,4 \myT c, f ~ \myT f f,_._^ r4 \bar "|."
}




\bookpart {
  \header {
    subtitle = "Dare, Baby!"
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" 
      <<
      \new Staff = "upper" << \upperNine >>
      \new Staff = "lower" <<  \lowerNine >>
    >>
    \layout { }
  }

  \score {
    \new PianoStaff = "PianoStaff_pf" <<
      \new Staff = "upper"  \upperNine
      \new Staff = "lower"  \lowerNine
    >>
    \midi { 
      \tempo 4 = 90
    }
  }
}
