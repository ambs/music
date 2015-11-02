
\version "2.18.2"

\paper {
   max-systems-per-page = 6
}

\header {
  title = "La Valse des Sylphes"
  composer = "Charles GOUNOD"
  dedication = "à sa fille Jeanne GOUNOD"
  meter = "Tempo di Walz"
  copyright = \markup \left-align \center-column {
    \line {
	  	"© 2015 Alberto Simões"}
  	\line {
  		\epsfile #Y #2 #"cc-by-sa.eps" "Licensed under a Creative Commons Attribution-ShareAlike 4.0 International License."
  	}
  }
  tagline = \markup \left-align \center-column {
    \line { "Thank you to Michael Gerdau and Abraham Lee for proofreading."}
  	\line { "Original document from IMSLP (http://imslp.org)." }
  	\line { "Typeset with GNU LilyPond (http://lilypond.org)." }
  }
}

upper = \relative c'' {
  \tempo 2. = 69
  \clef treble
  \key d \major
  \time 3/4

  % line 1 ----
  r4 a fis | r cis' a | r e' cis | r g' e | 
  b' a g | e' d cis | g' fis e | d cis b |

  % line 2 ----
  a gis a | g! a fis | a f a | e a r\fermata
  \repeat volta 2 {
    d,2 e4 | fis2 g4 | a2 b4 | a2 fis4 | d2 e4 |

  % line 3 ----
    fis4 \acciaccatura a8 g4 fis | e a fis | e r a,
  }
  \repeat volta 2 {
    e'2 g4 | fis2 e4 | d2 fis4 | a2 b4 | a2 e4 | g fis e | fis e d |

  % line 4 ----
    b4 cis d | e2 g4 | fis2 e4 | d2 d'4 | cis2 b4 | cis a b | g e fis |
    d a e' | d r a |
  }

  % line 5 ------
  \key a \major
  \repeat volta 2 { 

    \acciaccatura a8 <a cis> r r4 \acciaccatura a'8 <a cis> r |
    \acciaccatura gis!8 <gis b> r r4 \acciaccatura fis8 <fis a> r |
    \acciaccatura e8 <e gis> r r4 \acciaccatura d8 <d fis> r |
    \acciaccatura cis8 <cis e> r r4 \acciaccatura c8 <c dis> r |
    \acciaccatura b8 <b d!> r 
    \acciaccatura cis!8 <cis e> r \acciaccatura e <e gis> r |

  % page 2 - line 1 --------
    \acciaccatura d8 <d fis> r \acciaccatura cis <cis e> r
    \acciaccatura c!8 <c dis> r |
    \acciaccatura b8 <b d!> r \acciaccatura cis! <cis e> r
    \acciaccatura e <e gis> r |
    \acciaccatura d <d fis> r \acciaccatura cis <cis e> r 
    \acciaccatura b <b d> r |
    \acciaccatura a <a cis> r r4 \acciaccatura a'8 <a cis> r |
    \acciaccatura gis!8 <gis b> r r4 \acciaccatura fis8 <fis a> r |

  % page 2 - line 2 --------
    \acciaccatura e8 <e gis> r r4 \acciaccatura d8 <d fis> r8 |
    \acciaccatura cis8 <cis e> r r4 \acciaccatura c!8 <c dis> r |
    \acciaccatura b <b d!> r \acciaccatura cis! <cis e> r 
    \acciaccatura e <e gis> r |
    \acciaccatura d8 <d fis> r \acciaccatura b <b d> r 
    \acciaccatura gis8 <gis b> r |
    \acciaccatura e8 <e a> r \acciaccatura a8 <a cis> r
    \acciaccatura cis8 <cis e> r |
    \acciaccatura e8 a r r4 r4 
  }

  % page 2 - line 3 -------
  \key d \major
  \repeat volta 2 { 
    d,2 e4 | fis2 g4 | a2 b4 | a2 fis4 | d2 e4 | fis \acciaccatura a8 g4 fis |
    e a fis | e r a,
  }

  % page 2 - line 4 ------
  e'2 g4 | fis2 e4 | d2 fis4 | a2 b4 | 
  a2 e4 | g fis e | fis e d | b cis d |

  % page 2 - line 5 ------
  e2 g4 | fis2 e4 | d2 d'4 | cis2 b4 | cis a b | g e fis | d a e' |
  d cis! c! \bar "||"


  % page 3 - line 1 -----
  \key g \major 
  b2 c4 | d2 e4 | b2 c4 | d2 e4 | b2 g'4 | fis2 e4 | fis d e | c a ais |

  % page 3 - line 2 -----
  b2 c4 | d2 e4 | b2 c4 | d2 e4 | fis2 cis4 | e dis cis | dis b dis | d! a c! |

  % page 3 - line 2 -----
  b2 c4 | d2 e4 | b2 c4 | d2 e4 | b2 g'4 | fis2 e4 | fis d e | c a ais |

  % page 3 - line 2 -----
  b2 c4 | d2 e4 | b2 c4 | d2 e4| fis2 cis4 | e dis cis| dis fis, cis' | b ais b |

  % page 3 - line 2 -----
  <<
    { \voiceOne c!2 a!4 | d2 b4 | c2 a4 | d2 b4 | c2 a4 | e'2 cis4 | }
    \new Voice { \voiceTwo r4 <d, fis>2 ~ | q4 <d f!>2 |
        r4 <d fis!>2 ~ | q4 <d f!>2 | r4 <d fis!>2 | r4 <e g>2 | }
  >> \oneVoice 
  d'4 b' g | e d b |


  % page 4 - line 1 -----
  <<
    { \voiceOne c2 a4 | d2 b4 | c2 a4 | d2 b4 | c2 a4 | e'2 cis4 | }
    \new Voice { \voiceTwo
        r4 <d, fis>2 ~ | q4 <d f!>2 | r4 <d fis!>2 ~ | q4 <d f!>2 | 
        r4 <d fis!>2 ~ | q4 <e g>2 
      }
  >> \oneVoice
  fis'4 e d | c! a ais |

  % page 4 - line 2 -----
  b2 c4 | d2 e4 | b2 c4 | d2 e4 | b2 g'4 | fis2 e4 | fis d e | c a ais |

  % page 4 - line 3 -----
  b2 c4 | d2 e4 | b2 b'4 | a2 g4 | fis d e | c a fis | g d' b | g' r r |

  % page 4 - line 4 -----
  \acciaccatura e8 <e g> r r4 \acciaccatura dis8 <dis fis>8 r |
  \acciaccatura e8 <e g> r r4 \acciaccatura dis8 <dis fis>8 r |
  \acciaccatura e8 <e g> r r4 \acciaccatura dis8 <dis fis>8 r |
  \acciaccatura e8 <e g> r r4 \acciaccatura dis8 <dis fis>8 r |
  \acciaccatura e8 <e g> r r4 
       \ottava #1 \acciaccatura dis'8 <dis fis>8 r |

  % page 4 - line 5 -------
  \acciaccatura e8 <e g> r r4 \acciaccatura dis8 <dis fis>8 r |
  \acciaccatura e8 <e g> r r4 \acciaccatura dis8 <dis fis>8 r |
  \acciaccatura e8 <e g> r r4 \acciaccatura dis8 <dis fis>8 r |
  \acciaccatura e8 <e g> r r4 \acciaccatura d!8 <d fis>8 r |
  \acciaccatura cis8 <cis e> r r4 \acciaccatura b8 <b d>8 r |


  % page 5 - line 1 -------
  \ottava #0
  \acciaccatura a8 <a cis> r r4 \acciaccatura g8 <g b> r |
  \acciaccatura fis8 <fis a> r r4 \acciaccatura f!8 <f gis> r |
  \acciaccatura e8 <e g!> r r4 \acciaccatura d8 <d fis> r |
  \acciaccatura cis8 <cis e> r r4 \acciaccatura b8 <b d> r |
  \acciaccatura a8 <a cis> r r4 \acciaccatura g8 <g b> r |
  \acciaccatura fis8 <fis a> r r4 \acciaccatura f!8 <f gis> r |

  % page 5 - line 2 ---------
  \acciaccatura e8 <e g!> r <dis fis> r <e g> r |
  <e g> r <dis fis> r <e g> r |
  <e g> r <dis fis> r <e g> r |
  <e g> r <dis fis> r <e g> r |
  <eis gis> r <disis fisis> r <eis gis> r |
  <eis gis> r <disis fisis> r <eis gis> r |

  % page 5 - line 3 --------
  <fis! a> r <eis gis> r <fis a> r |
  <fis a> r <eis gis> r <fis a> r \bar "||"
  \key d \major
  << { \voiceOne r4  } \new Voice { \voiceTwo cis8 r }
  >> \oneVoice <g' b>8 r <g a> r | r4 <g e'>8 r <g a> r |
  << { \voiceOne r4  } \new Voice { \voiceTwo cis,8 r }
  >> \oneVoice <g' b>8 r <g a> r | r4 <g e'>8 r <g a> r |

  % page 5 - line 4 ----------
  r4 <g a>8 r <g bes> r | <g a> r <g b!> r <g a> r |
  <g c> r <g a> r <g c> r | <g a> r <g cis!> r <g a> r 
  \repeat volta 2 {
  	d'2 e4 | fis2 g4 | a2 b4 |

  % page 5 - line 5 ---------
    a2 fis4 | d2 e4 | fis \acciaccatura a8 g4 fis | e a fis | e r a,	
  }
  
  e'2 g4 | fis2 e4 | d2 fis4
  
  % page 6 - line 1 --------
  a2 b4 | a2 e4 | g fis e | fis e d | b cis d | e2 g4 | fis2 e4 | d2 d'4 |
  % page 6 - line 2 --------
  cis2 b4 | cis4 a b | g e fis | d r d | 
  <ees fis a> c! <ees fis a> |
  <d f gis> b <d f gis> |
  <ees fis! a> c <ees fis a> |
  <e! g bes> cis! <e g bes> |
  % page 6 - line 3 --------
  <f! gis b!> d <f gis b> | <fis! a c!> ees <fis a c> |
  <g a cis!> e! <g a cis> | <fis a d> r d, |
  <ees fis a> c! <ees fis a> | <d f! gis!> b <d f gis> |
  <ees! fis! a> c! <ees fis a>
  % page 6 - line 4 ---------
  <e! g bes> cis! <e g bes> | <f! gis! b!> d <f gis b> |
  <fis! a c!> ees <fis a c> | <g a cis!> e! <g a cis> |
  <fis a d> <fis d'> <a e'> | r <d fis> <e a> | r <fis d'> <a e'> |
  \ottava #1
  r <d fis> <e a>

  % page 6 - line 5 ---------
  r <fis d'> <e a> | r <d fis> <a e'> | \ottava #0
  r <fis d'> <e a> | r <d fis> <a e'> |
  <fis d'> r r | <a cis e a> r r | <d fis a d> r r \bar "|."
}



%%% LOWER VOICE

lower = \relative c' {
  \clef bass
  \key d \major
  \time 3/4

  % line 1
  a2 e4 | cis'2 a4 | e'2 cis4 | \clef treble g'2 e4 |
  b' a g | e' d cis | g' fis e | d cis b |
  
  % line 2
  a gis a | g! a fis | a f a | e a r\fermata
  \repeat volta 2 {
    \clef bass 
    <d,,, a'>4 <fis' a d>2 ~ | q4 q2 |
    <d, a'>4 <fis' a d>2 ~ | q4 q2 |
    <d, a'>4 <fis' a d>2 ~ 

  % line 3
    q4 q2 | <a,, a'>4 <g'' a cis>2 ~ | q4 q2
  }
  \repeat volta 2 {
    <a,, a'>4 <g'' a cis>2 ~ | q4 q2 |
    <d, a'>4 <fis' a d>2 ~ | q4 q2 |
    <a,, a'>4 <g'' a cis>2 ~ | q4 q2 |
    <d, a'>4 <fis' a d>2 ~

  % line 4 -------
    q4 q2 | <a,, a'>4 <g'' a cis>2 ~ | q4 q2 |
    <d, a'>4 <fis' a d>2 ~ | q4 q2 | <a,, a'>4 <g'' a cis>2 ~ | q4 q2 |
    <d, a'>4 <fis' a d>2 ~ | q4 q4 r4 |    
  }

  % line 5 --------
  \key a \major
  \repeat volta 2 {
    \grace s8
    <a, e'>8 r <a' cis e>4 r | r q r |
    <a, e'>8 r <a' cis e>4 r | r q r |
    <e, e'>8 r <gis' d' e>4 r |

  % page 2 - line 1 --------
    r4 q r | <e, e'>8 r <gis' d' e>4 r | r q r |
    <a, e'>8 r <a' cis e>4 r | r q r |

  % page 2 - line 2 --------
    <a, e'>8 r <a' cis e>4 r | r q r |
    <e, e'>8 r <gis' d' e>4 r | r q r |
    <a, e'>8 r <a' cis e>4 r | <a,, a'>8 r r4 r4
  }

  % page 2 - line 3 -------
  \key d \major
  \repeat volta 2 { 
    <a' d,>4 <fis' a d>2 ~ | q4 q2 |
    <a, d,>4 <fis' a d>2 ~ | q4 q2 | 
    <a, d,>4 <fis' a d>2 ~ | q4 q2 |
    <a, a,>4 <g' a cis>2 ~ | q4 q2 |
  }

  % page 2 - line 4 ------
  <a, a,>4 <g' a cis>2 ~ | q4 q2 |
  <a, d,>4 <fis' a d>2 ~ | q4 q2 |
  <a, a,>4 <g' a cis>2 ~ | q4 q2 |
  <a, d,>4 <fis' a d>2 ~ | q4 q2 |

  % page 2 - line 5 ------
  <a, a,>4 <g' a cis>2 ~ | q4 q2 |
  <a, d,>4 <fis' a d>2 ~ | q4 q2 |
  <a, a,>4 <g' a cis>2 ~ | q4 q2 |
  <a, d,>4 <fis' a d>2   | <d d,>4 r r 


  % page 3 - line 1 -----
  \key g \major
  g,8 r <d' g b>2 | d,8 r <d' g b>2 |
  g,8 r <d' g b>2 | d,8 r <d' g b>2 |
  g,8 r <d' g b>2 | d,8 r <d' g b>2 |
  a8 r <d fis c'>2 | d,8 r <d' fis c'>2 |

  % page 3 - line 2 -----
  g,8 r <d' g b>2 | d,8 r <d' g b>2 |
  g,8 r <d' g b>2 | b8 r <d g b>2 |
  fis,8 r <fis' ais e'>2 | fis,8 r <fis' ais e'>2 | 
  b,8 r <fis' b dis>2 | d,!8 r <d' fis a c!>2 |

  % page 3 - line 3 -----
  g,8 r <d' g b>2  | d,8 r <d' g b>2 |
  g,8 r <d' g b>2  | d,8 r <d' g b>2 |
  g,8 r <d' g b>2  | d,8 r <d' g b>2 |
  a8 r <d fis c'>2 | d,8 r <d' fis c'>2 |
  
  % page 3 - line 4 -----
  g,8 r <d' g b>2  | d,8 r <d' g b>2 |
  g,8 r <d' g b>2  | b8 r <d g b>2 |
  fis,8 r <fis' ais e'>2 | fis,8 r <fis' ais e'>2 |
  b,8 r <fis' b dis>2 | b,8 r <fis' b dis>2 |

  % page 3 - line 5 -----
  d,!8 r <d' a' c!>2 ~ | q4 <d gis b>2 |
  d,8 r <d' a' c>2 ~ | q4 <d gis b>2 |
  d,8 r <d' a' c>2 | r4 <d bes' cis>2 | 
  d,8 r \clef treble <b'' d g>2 ~ | q4 <gis b f'!>2 |


  \clef bass
  % page 4 - line 1 -----
  d,8 r <d' a' c>2 ~ | q4 <d gis b>2 | d,8 r <d' a' c>2 ~ | q4 <d gis b>2 |
  d,8 r <d' a' c>2 ~ | q4 <d g bes cis>2 | <d fis a c!>2. ~ | q4 r r |

  % page 4 - line 2 -----
  g,8 r <d' g b>2 | d,8 r <d' g b>2 |
  g,8 r <d' g b>2 | d,8 r <d' g b>2 |
  % I think this g was a typo in the original...!?
  g,8 r <d' g b>2 | d,8 r <d' g b>2 |
  a8 r <d fis c'>2 | d,8 r <d' fis c'>2 |

  % page 4 - line 3 -----
  g,8 r <d' g b>2 | d,8 r <d' g b>2 | g,8 r <d' g b>2 | d,8 r <d' g b>2 |
  a8 r <d fis c'>2 | d,8 r <d' fis a c>2 | g,8 r <d' g b>2 | <g,, g'>4 r r |
  % page 4 - line 4 -----
  <e'' e,>8 r <g b e>4 r | r q r | r q r | r q r |
  <e e,>8 r <g bes d e>4 r |
  % page 4 - line 5 -----
  r q r | r q r | r q r | <a, a,>8 r <g' a cis>4 r | r q r |

  % page 5 - line 1 ------
  r q r | r q r | <a, a,>8 r <g' a cis>4 r | r q r | r q r | r q r |
  % page 5 - line 2 ------
  \repeat unfold 4 { R1*3/4 } <cis, b'>2. ~ | q _~ |
  % page 5 - line 3 ----------
  <cis a'>2. ~ | q \bar "||"
  \key d \major
  <a e'>8 r r4 r | <e' g cis>8 r r4 r4 |
  <e a,>8 r r4 r | <e g cis>8 r r4 r |
  % page 5 - line 4 ----------
  <<
  	{ \voiceOne s2. | d'2. | dis2.| e2. }
  	\new Voice {
  		\voiceTwo <a, cis>2. ~ | a2. ~ | a2. ~ | a2.
  	}
  >> \oneVoice
  \repeat volta 2 {
  	<a, d,>4 <fis' a d>2 ~ | q4 q2 |
  	<a, d,>4 <fis' a d>2 ~ |
  % page 5 - line 5 -------------
    q4 q2 | <a, d,>4 <fis' a d>2 ~ | q4 q2 |
    <a, a,>4 <g' a cis>2 ~ | q4 q2 
  }
  
  <a, a,>4 <g' a cis>2 ~ | q4 q2 |
  <a, d,>4 <fis' a d>2 ~ |
  % page 6 - line 1 --------
  q4 q2 | <a, a,>4 <g' a cis>2 ~ | q4 q2 |
  <a, d,>4 <fis' a d>2 ~ | q4 q2 | 
  <a, a,>4 <g' a cis>2 ~ | q4 q2 |
  <a, d,>4 <fis' a d>2 ~ |
  % page 6 - line 3 --------
  q4 q2 | <a, a,>4 <g' a cis>2 ~ | q4 q2 | 
   d,4 <fis' a d> r |
  r \clef treble <d' fis a> r | r <d f gis> r | r <d fis! a> r | r <d g bes> r |
  % page 6 - line 3 --------
  r <d gis b!> r | r <d a' c!> r | r <d a' cis!> r |
  r \clef bass <d,, d'> r |
  r <d' fis a> r | r <d f! gis!> r | r <d fis! a> r |
  % page 6 - line 4 --------
  r <d g bes> r | r <d gis b!> r | r <d a' c!> r |
  r <d a' cis!> r | <d a' d> r \clef treble <a' e'> |
  <d fis> r <a e'> | <fis d'> r <a e'> | <d fis> r <a e'>
  % page 6 - line 5 --------
  <fis d'> r <a e'> | <d fis> r <a e'> | <fis d'> r <a e'> | <d fis> r <a e'> |
  <fis d'> r r | \clef bass <a a,> r r | <d, d,> r r \bar "|."
}

do = #(make-dynamic-script (markup #:normal-text #:italic "do"))

%%%% DYNAMICS

dynamics = {
  % line 1
  \set crescendoSpanner = #'text
  \set crescendoText = \markup \italic "Cre"
  s2.\p s4 s2\< 
  \set crescendoText = \markup \italic "scen"
  s4 s4\< s4
  s4 s4\do s4 s2.\f s2. s2. 
  \set decrescendoSpanner = #'text
  \set decrescendoText = \markup \italic "Di"
  s4 s4\> s4
  \set decrescendoText = \markup \italic "mi"
  % line 2
  s4 s4\> s4 
  \set decrescendoText = \markup \italic "nuen"
  s4\> s2 s4 s4\do s4
  s2.\p s2.\p s2. s2. s2. s2.


  \set crescendoSpanner = #'hairpin
  \set decrescendoSpanner = #'hairpin


  % line 3
  \repeat unfold 9 { s2. }
  % line 4
  \repeat unfold 9 { s2. }
  % line 5
  \repeat unfold 5 { s2. }

  % page 2, line 1
  \repeat unfold 5 { s2. }
  % page 2, line 2
  \repeat unfold 7 { s2. }
  % page 2, line 3
  s4\pp s2 \repeat unfold 5 { s2. }
  % page 2, line 4
  \repeat unfold 9 { s2. }
  % page 2, line 5
  \repeat unfold 9 { s2. }


  % page 3, line 1 --------
  s4\p s2 s2. s2. s2. s4\< s2 s2 s2\! s4\> s2.  s4\!
  % page 3, line 2 --------
  s4\p s2 s2. s2. s2. s4\< s2 s2 s2\! s4\> s2  s4\! s4
  % page 3, line 3 --------
  s4\p s2 s2. s2. s2. s4\< s2 s2 s2\! s4\> s2  s4\! s4
  % page 3, line 4 --------
  s4\p s2 s2. s2. s2. s2\< s2 s4 s2\! s4\> s2  s4\! s4
  % page 3, line 5 --------
  s4\p s2 s2. s2. s2. s4 s4\< s4 s2 s2\! s4\> s2  s4\! s4

  % page 4, line 1 --------
  s4\p s2 s2. s2. s2. s4 s4\< s4 s2 s2\! s4\> s2  s4 s4\! 
  % page 4, line 2 --------
  s4\pp s2 s2. s2. s2. s4\< s2 s2 s2\! s4\> s2  s4 s4\! 
  % page 4, line 3 --------
  s4\p s2 s2. s4\< s2 s2 s4\! s4 s4\> s2 s4 s4\! s2.\p s2.
  % page 4, line 4 --------
  s2.\f s2. s2. s2. s2. 
  % page 4, line 5 --------
  \repeat unfold 5 { s2. }

  % page 5, line 1 -------
  \set decrescendoSpanner = #'text
  \set decrescendoText = \markup \italic "Di"
  s2. s2. s4 s4\> s4
  \set decrescendoText = \markup \italic "mi"
  s4 s4\> s4 s4 
  \set decrescendoText = \markup \italic "nuen"
  s4\> s4 s4 s4\do s4
  \set decrescendoSpanner = #'hairpin
  % page 5, line 2 -------
  s2.\pp s2. s2. s2. s2.\pp s2.
  % page 5, line 3 -------
  s2. s2. s2. s2. s2. s2. 
  % page 5, line 4 -------
  s2.\pp s2. s2. s2. 
  s2.\pp s2. s2. 
  % page 5, line 5 -------
  \repeat unfold 8 { s2. }


  % page 6, line 1 -------
  \repeat unfold 8 { s2. }
  % page 6, line 2 -------
  s2. s2. s2. s2 s4-\markup{\italic Staccato e \dynamic pp} s2. s2. s2. s2.
  % page 6 - line 3 --------
  \repeat unfold 7 { s2. }
  % page 6 - line 4 --------
  \repeat unfold 5 { s2. }
  s2.^\markup{\italic Accelerando.} s2. s4\< s4 s4\!
  % page 6 - line 5 --------
  s2. s4\> s2 s2 s4\! s2. s2.\p s2.\pp
}

pedal = {
  % line 1
  \repeat unfold 8 { s2. }

  % line 2
  \repeat unfold 4 { s2. }
  s4\sustainOn s2 s2 s4\sustainOff
  s4\sustainOn s2 s2 s4\sustainOff
  s4\sustainOn s2 

  % line 3
  s2 s4\sustainOff s4\sustainOn s2 s2 s4\sustainOff
  s4\sustainOn s2 s2 s4\sustainOff s4\sustainOn s2 s2 s4\sustainOff
  s4\sustainOn s2 s2 s4\sustainOff s4\sustainOn s2

  % line 4
  s2 s4\sustainOff s4\sustainOn s2 s2 s4\sustainOff s4\sustainOn s2 s2 s4\sustainOff
  s4\sustainOn s2 s2 s4\sustainOff s4\sustainOn s2 s2 s4\sustainOff

  % line 5
  \repeat unfold 5 { s2. }

  % page 2, line 1
  \repeat unfold 5 { s2. }

  % page 2, line 2
  \repeat unfold 6 { s2. }

  % page 2, line 3
  \repeat unfold 4 { s4\sustainOn s2 s2 s4\sustainOff }
  % page 2, line 4
  \repeat unfold 4 { s4\sustainOn s2 s2 s4\sustainOff }
  % page 2, line 5
  \repeat unfold 4 { s4\sustainOn s2 s2 s4\sustainOff }


  % page 3, line 1
  \repeat unfold 8 { s2. }
  % page 3, line 2
  \repeat unfold 8 { s2. }
  % page 3, line 3
  \repeat unfold 8 { s2. }
  % page 3, line 4
  \repeat unfold 8 { s2. }
  % page 3, line 5
  \repeat unfold 8 { s2. }


  % page 4, line 1
  \repeat unfold 8 { s2. }
  % page 4, line 2
  \repeat unfold 8 { s2. }
  % page 4, line 3
  \repeat unfold 8 { s2. }
  % page 4, line 4
  \repeat unfold 5 { s2. }
  % page 4, line 5
  \repeat unfold 5 { s2. }


  % page 5, line 1
  \repeat unfold 5 { s2. }
  % page 5, line 2
  \repeat unfold 6 { s2. }
  % page 5, line 3
  \repeat unfold 6 { s2. }
  % page 5, line 4
  \repeat unfold 5 { s2. }
  s4\sustainOn s2 s2 s4\sustainOff s4\sustainOn s2
  % page 5, line 5
  s2 s4\sustainOff s4\sustainOn s2 s2 s4\sustainOff
  s4\sustainOn s2 s2 s4\sustainOff s4\sustainOn s2 s2 s4\sustainOff
  s4\sustainOn s2

  % page 6 - line 1 --------
  s2 s4\sustainOff s4\sustainOn s2 s2 s4\sustainOff s4\sustainOn s2 s2 s4\sustainOff
  s4\sustainOn s2 s2 s4\sustainOff s4\sustainOn s2 
  % page 6 - line 2 --------
  s2 s4\sustainOff s4\sustainOn s2 s2 s4\sustainOff \repeat unfold 5 { s2. }
  % page 6 - line 3 --------
  \repeat unfold 7 { s2. }
  % page 6 - line 4 --------
  \repeat unfold 8 { s2. }
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Dynamics = "Dynamics_pf" \dynamics
    \new Staff = "lower" \lower
    \new Dynamics = "Dynamics_pedal" \pedal
  >>
  \layout { 
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/12)
    }
    \set Score.doubleRepeatType = #":|.|:"
  }
  \midi { }
}