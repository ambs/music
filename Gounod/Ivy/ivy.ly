
\version "2.18.2"

\paper {
%   max-systems-per-page = 6
%   page-count = 4
}

\header {
  title = "Ivy"
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

upperA = \relative c'' {
  \tempo "Allegretto agitato"
  \clef treble
  \key bes \major
  \time 2/2

  % M1-M5
  \partial 8 * 3 d8[ ees e!] |
  \voiceOne f4 b,! ees4. d8 | d4( c) b8\rest d,8[ ees e!] | f4 b,! ees4. d8 | d4( c) b'8\rest\fermata d,8[ ees e!] 

  \repeat volta 2 {

    % M6-M9
    f4 g a bes | bes a ~ a8[ bes b c] | f,4 a bes c | c bes ~ bes8[ c cis d] |

    % M10-13
    g,4 b c d | f ees d c | bes! a8[ g] d'4 a | c8[ bes a g] f![ d ees e!] |

    % M14-18
    f4 g a bes| bes a ~ a8[ bes b c] | f,4 a bes c | c bes ~ bes8[ c cis d] | g,4 b! c d |

    % M19-22
    f ees d c | bes! a8[ bes] c[ d ees a,]
  }
  \alternative {
    { c2( bes8) d,8[ ees e] }
    { c'2( bes8) f8[ g gis] }
  }

  \repeat volta 2 {
    % M23-25
    a4 f' e! d | d cis ~ cis8[ d dis e!] | a,4 f' e! d8[ e] |

    % M26-28
    d8[ b!] cis4 ~ cis8[ d dis e!] | a,4 f' e! d | c! c c d |

    % M29-31
    g,4 a8[ bes] c4 g | a8[ c b! bes] a[ e! f g] | a4 f' e! d |

  }
}

upperB = \relative c'' {
  \clef treble
  \key bes \major
  \time 2/2
  \voiceTwo
  % M1-M5
  \partial 8 * 3 s4. | s2 gis2 | a s s gis, | a s |

  \repeat volta 2 {

    % M6-M9
    r8 d4 d <d f> q8 | r <ees f>4 q q q8 | r8 <ees c>4 q q q8 | r8 d4 d <d f> q8 |

    % M10-13
    r8 <b! f'>8[ r <b f' g>] r <c f g>[ r <d f g>] |
    r <f g>[ r <ees g>] r <f g>[ r g] |
    r8 d4 d8 r <d fis>4 q8 |
    r8 d4 d8 f8 s4. |

    % M14-18
    r8 d4 d <d f> q8 | r <ees f>4 q q q8|r <ees c>4 q q q8 | r8 d4 d <d f> q8 |
    r8 <b! f'>8[ r <b f' g>] r <c f g>[ r <d f g>] |

    % M19-22
    r8 <f g>[ r <ees g>] r <f g>[ r g] | r f4 f8 r f4 f8 
  }
  \alternative {
    { r8 <ees f>4 q8 <d f> s4. }
    { r8 <ees f>4 q8 <d f> s4. }
  }

  \repeat volta 2 {
    % M23-25
    r8 f4 <f a> q q8 | r8 <g a>4 q q q8| r f4 <f a>4 q q8 |

    % M26-28
    r8 <g a>4 q q q8 | r f4 <f a>8 r <f bes>4 q8 | r8 <g bes>[ r <e! gis!>] r <f a>[ r <d f g!>] |

    % M29-31
    r8 <c f>4 q8 r <c e!>4 q8 | r <c f>4 q8 r8 cis4 cis8 | r8 f4 <f a>4 q q8 |
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% LOWER VOICE
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


lowerA = \relative c' {
  \clef bass
  \key bes \major
  \time 2/2
  % M1-M5
  \partial 8 * 3 s4. | s1 | s1 | s1 | s1 |

  \repeat volta 2 {

    % M6-M9
    s1 s1 s1 s1

    % M10-13
    \voiceTwo
    g,2 a4 b! | c c d ees | s1 | s1 |

    % M14-18
    s1 | s1 | s1 | s1 | g,2 a4 b! |

    % M19-22
    c4 c d ees | f2 f |
  }
  \alternative {
    {s1} {s1}
  }

  \repeat volta 2 {
    % M23-25
    s1 s1 s1
    % M26-28
    s1 d2 d e8[ <bes' c>] c,[ <bes' c>] f[ <a c>] bes,[ g'] |
    % M29-31
    c,2 c | s1 | s1 |
  }

}
lowerB = \relative c' {
  \clef bass
  \key bes \major
  \time 2/2
  % M1-M5
  \oneVoice \stemDown
  \partial 8 * 3 s4. | r2 f | <ees f,> r | r f, | <ees f,> r8\fermata r8 r4

  \repeat volta 2 {

    % M6-M9
    \stemNeutral
    bes8 <f' bes>4 q8 f, <f' bes>4 q8 | c8 f4 f8 f, f'4 f8 | a,8 f'4 f8 f,8 f'4 f8 | 
    bes,8 f'4 f8 aes,8 f'4 f8 |

    % M10-13
    g,8 g'4 g8 a,8 g'4 g8 ~ | \stemUp g[ <g b!>] r <g c> r <g b> r <g c> | \stemNeutral
    d <g bes!>4 q8 d,8 <d' a' c>4 q8 | g,8 <d' g bes>4 q8 a[ <f' c'>] r4 |

    % M14-18
    bes,8 <f' bes>4 q8 f,8 <f' bes>4 q8 | c f4 f8 f, f'4 f8 |
    a,8 f'4 f8 f, f'4 f8 | bes, f'4 f8 aes, f'4 f8 | g,8 g'4 g8 a, g'4 g8 ~ |

    % M19-22
    \stemUp g8[ <g b!>] r <g c> r <g b> r <g c> | f <bes d>4 q8 f <a ees'>4 q8  \stemNeutral
  }
  \alternative {
    { f,8 f'[( a f)] <bes, bes'> r r4 }
    { f8 f'[( a f)] <bes, bes'> r r4 }
  }

  \repeat volta 2 {
    % M23-25
    d8 <a' d>4 q8 a, <a' d>4 q8 | e! <a e'!>4 q8 a, <a' cis>4 q8 | d, <a' d>4 q8 a, <a' d>4 q8 |

    % M26-28
    e!8 <a e'!>4 q8 a, <a' cis>4 q8 |
    \stemUp
    d, <a' d>4 q8 d, <bes' d>4 q8 | e,!4 c f bes, |
    % M29-31
    c8 <g' bes>4 q8 c, <g' bes>4 q8|\stemNeutral f8 a4 a8 a, <g' a>4 q8 |
    d <a' d>4 q8 a, <a' d>4 q8 |
  }
}



%%%% DYNAMICS
do = #(make-dynamic-script (markup #:normal-text #:italic "do"))
dynamics = {
  % M1-M5
  \set decrescendoSpanner = #'text
  \set decrescendoText = \markup \italic "dim."
  s4.\f s4. s8\f s2 s2 s8 s4.\f s2 s8 s4.\> s2\p s8 s4.\p

  % M6-M9
  s1\p s1 s1 s1

  % M10-13
  \set crescendoSpanner = #'text
  \set crescendoText = \markup \italic "cres"
  s4 s2.\< 
  \set crescendoText = \markup \italic "cen"
  s1\< s4\do s2. s4 s4\> s4\! s4

  % M14-18
  s1\p s1 s1 s1
  \set crescendoText = \markup \italic "cres"
  s4 s2.\<

  % M19-22
  \set crescendoText = \markup \italic "cen"
  s8 s2.\< s8 s2\do s4\> s4\! s1\p s1\p

  % M23-25
  s1\p s1 
  \set crescendoText = \markup \italic "cres"
  s4\< s2
  \set crescendoText = \markup \italic "cen"
  s4\<

  % M26-28
  s4\do s2. s1\f s1
  % M29-31
  s1 s2 s4\> s4\! s1\p
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" <<
      \new Voice \upperA
      \new Voice \upperB
    >>
    \new Dynamics = "Dynamics_pf" \dynamics
    \new Staff  = "lower" <<
      \new Voice \lowerA
      \new Voice \lowerB
    >>
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