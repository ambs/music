
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

    % M32-34
    d4 cis ~ cis8[ d dis e!] | a,4 f' e! d8[ e] | d[ b!] cis4 ~ cis8[ d dis e!] |

    % M35-36
    a,4 a' g f |
    e!8[ <bes e,!>] d[ <bes d,>] c![ <a d,>] bes[ <g e!>] |

    % Page 3

    % M37-38
    a8[ f] d[ e!] f4 e | d8 d'8[ dis e!] f4. e8 |
    % M39-40
    s2 f4. e8 | s2 f8[ a, b! cis] |
    % M41-43
    d8[ f, g gis] a[ d, ees! e] | f4 g a bes | bes a ~ a8[ bes b c] |
    % M44-46
    f,4 a bes c | c bes ~ bes8[ c cis d] | g,4 b! c d |
    % M47-49
    f4 ees d c | bes! a8[ bes] c[ d ees a,]
  }
  \alternative {
    { c2( bes8) f[ g gis]}
    % M50-52
    { <d bes'>8 bes8[_( c cis)] d2 _~ }
  }
  d8^\<[ d ees e] g[ f c' bes]^\! | a![ bes ees d] c[ bes a g] |

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

    % M32-34
    r8 <g a>4 q q q8| r8 f4 <f a> q q8|r8 <g a>4 q <e! a> q8 |

    % M35-36
    a4 a'8[ <d, a>] g[ <a, g>] f'[ <f, a>] | e'!4 d c! bes |

    %% Page 3
    % M37-38
    \override Staff.NoteCollision #'merge-differently-dotted = ##t
    a4 d,8[ a] r b!4 cis8 | d s4. f'8[ bes, cis e] |

    % M39-40
    a,8[ d dis e!] f[ bes, cis e] | a,[ d dis e!] s2 |
    % M41-43
    s1 | r8 d,4 d <d f> q8 | r8 <ees f>4 q q q8 |
    % M44-46
    r8 <c ees>4 q q q8 | r8 d4 d <d f> q8 | r8 <b! f'>[ r <b f' g>] r <c f g>[ r <d f g>] |
    % M47-49
    r8 <f g>[ r <ees g>] r <f g>[ r g] | r f4 f8 r f4 f8 |
  }
  \alternative {
    { r8 <ees f>4 q8 <d f> s4. }
    % M50-52
    { s1 }
  }
  d2 d | ees1 |
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
    % M32-34
    s1 | s1 | s1 |
    % M35-36
    \voiceTwo f8[ <a d>] d,[ <a' f'>] e![ <a cis>] f[ <a d>] |
    g[ <bes d>] e,![ g] f[ a] g[ <bes d>] |

    %% Page 3
    % M37-38
    a8[ d] a,[ f'] a,2 | s1 |
    % M39-40
    s1 s1
    % M41-43
    s1 s1 s1
    % M44-46
    s1 s1 | g2 a4 b! |
    % M47-49
    c4 c d ees | f2 f |
  }
  \alternative {
    { s1}
    % M50-52 
    { s1 }
  }
  s1 s1 |

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

    % M32-34
    e!8 <a e'!>4 q8 a, <a' cis>4 q8| d,8 <a' d>4 q8 a, <a' d>4 q8|
    e!8 <a e'!>4 q8 g <a cis>4 q8 |

    %M35-36
    \voiceOne f4 d e! f | g e! f g |
    %% Page 3
    % M37-38
    a4 a, a8 g'4 g8 | \oneVoice <f d> r r4 <d g bes>2( |
    % M39-40
    <d f a>8) r r4 <d g bes>2( | <d f a>8) r r4 r2 | 
    % M41-43
    R1 | bes8 <f' bes>4 q8 f, <f' bes>4 q8 |
    c8 f4 f8 f, f'4 f8 |
    % M44-46
    a,8 f'4 f8 f, f'4 f8 | bes, f'4 f8 aes, f'4 f8 | \voiceOne g, g'4 g8 a, g'4 g8 ~ |
    % M47-49
    g8[ <g b!>] r <g c> r <g b!> r <g c> |
    f <bes d>4 q8 f <a ees'>4 q8 |
  }
  \alternative {
    { \oneVoice f,8 f'[ a f] <bes, bes'> r r4 }
    % M50-52
    { <bes f' bes>8 r8 r4 r8 \stemUp f'8[_(_\< fis g)]\! \stemNeutral }
  }
  <aes bes,>1 | <g bes,> |

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
  % M32-34
  \set crescendoText = \markup \italic "cres"
  s1
  s8 s2\< s8
  \set crescendoText = \markup \italic "cen"
  s4\< s2 s2\do
  % M35-36
  s1\f s1

  % Page 3
  % M37-38
  s2 s4\> s4\! 
  \set crescendoSpanner = #'hairpin
  \set decrescendoSpanner = #'hairpin
  s8\p s4.\< s2\>
  % M39-40
  s2\p\< s2\> s8\p
  \set crescendoSpanner = #'text
  \set crescendoText = \markup \italic "cres"
  s4\< s8\! s2\f 
  % M41-43
  \set decrescendoSpanner = #'hairpin
  s2\>
  \set decrescendoSpanner = #'text
  \set decrescendoText = \markup \italic "dim"
  s4\> s4\! s1\p s1
  % M44-46
  \set crescendoText = \markup \italic "cres"
  s1 s1 s4 s2.\<
  % M47-49
  \set crescendoText = \markup \italic "cen"
  s1\< s2\do s4\> s4\! s1\p
  % M50-52
  \set crescendoText = \markup \italic "cres"
  s1\p s8\< s8\! s2. s8\< s8\! s2.

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