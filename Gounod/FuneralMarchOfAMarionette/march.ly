
\version "2.18.2"

\paper {
   max-systems-per-page = 6
}

\header {
  title = "Funeral March of a Marionette"
  composer = "Charles GOUNOD"
  % copyright = \markup \left-align \center-column {
  %   \line {
	 %  	"© 2015 Alberto Simões"}
  % 	\line {
  % 		\epsfile #Y #2 #"cc-by-sa.eps" "Licensed under a Creative Commons Attribution-ShareAlike 4.0 International License."
  % 	}
  % }
  % tagline = \markup \left-align \center-column {
  %   \line { "Thank you to Michael Gerdau, Abraham Lee and Brian Barker for proofreading."}
  % 	\line { "Original document from IMSLP (http://imslp.org)." }
  % 	\line { "Typeset with GNU LilyPond (http://lilypond.org)." }
  % }
}

spacerVoice = \new Voice {
  \override MultiMeasureRest.transparent = ##t
  \override MultiMeasureRest.minimum-length = #16
  R1*3/4
}

upper = \relative c''' {
  \tempo "Allegro."
  \clef treble
  \key f \major
  \time 6/8

  %%%%%%%%%%%%
  %% Page 1 %%
  %%%%%%%%%%%%

  % M1
  <bes bes'>8 r r <e, e'>8 r r |
  % M2
  << \oneVoice R1*3/4^\fermataMarkup^\markup{\center-column{\line {(The Marionette}\line {is broken.)}}} \\
     \spacerVoice >> |
  % M3 - M4
  \tempo "Adagio."
  << { \voiceOne e,2.^\markup{(Murmurs of regret from the troupe.)} | e4. e | }
     \new Voice { \voiceTwo bes2. ~ | bes } >> \oneVoice
  % M5 - M6
  <a e'>2. ~ | q4 r8 r4 r8 |
  % M7 - M8
  \clef bass <gis d>2. ~ | q |

  % Line 2
  % M9-M11
  <cis, a'>4 r8 r4 r8 | a'4 r8 r4 r8 | a4 r8 r4\fermata r8 |
  % M12
  r4 \tempo "Allegretto." a8-. \acciaccatura bes8 a8[-. g-. a]-. |
  % M13
  bes8[ r bes] g r r |
  % M14
  r4 g8-. \acciaccatura a8 g[-. f-. g]-. |

  % Line 3
  % M15-M17
  a8[ r a] f r r | r4 f8-. \acciaccatura g f[-. e-. f-.] | g8 r r e r r |
  % M18
  a r r r4 r8 \clef treble \bar "||"
  % M19
  r4^\markup{(The procession.)} d8 \acciaccatura e d[-. cis-. b!-.]

  % Line 4
  % M20-M21
  cis8[-. r d-.] <e cis a> r r | r4 d8 \acciaccatura e d[-. cis-. b!-.] |
  % M22
  cis8[-. r d-.] <e cis a> r r | 
  % M23 - M24
  r4 <d fis>8 
  << {
       \voiceOne a'4( g8 <d f>8[) \oneVoice r <f a>]
       \voiceOne c'!4( bes8 |

        % Line 5
        % M25
        <f a>8[) r <a c>] e'4( d8 |
        % M26
        \oneVoice \stemUp
        <a cis>[) bes!-. a-.] g![-. f-. e-.] |
     }
   \new Voice {
      \voiceTwo cis4.( s8) s4 e4.( |
        \hideNotes e8) \unHideNotes s4 gis4.( | s8) s8 s2 |
   } 
  >>
  % M27-M28
  \oneVoice
  r4 d8 \acciaccatura e d[-. cis-. b!]-. | cis[-. r d]-. <e cis a> r r|
  % M29
  r4 d8
  <<
  {
    \voiceOne a'4.( |
    % Line 6
    % M30-M32
    a4.) g( |
    \oneVoice <d f>8)[ r <f a>] \voiceOne c'!4( bes8 |
    a8[) g_. f_.] ees[_. g_. bes_.]
  }
  \new Voice {
    \voiceTwo d,8[-. cis-. b!]-. | 
    % Line 6
    % M30-M32
    cis8[-. r d]-. e[-. r cis]-. |
    s4. e4.( |
    f8) s8 s2 |
  }
  >>  
  % M33
  \oneVoice
  d8[-. cis-. d]-. <e! cis a>8[ r <f cis a>] |
  % M34
  <e cis a>4. ( <d a>8) r r |

  %%%%%%%%%%%%
  %% Page 2 %%
  %%%%%%%%%%%%

  \repeat volta 2 {
    % Line 1
    % M35
    <a' cis e a>8-. r a \acciaccatura b! a[-. gis-. a]-. |
    % M36
    cis8[ r b!] a[ r gis!] |
    % M37
    <a cis e a>8-. r a \acciaccatura b! a[-. gis-. a]-. |
    % M38
    cis8[ r b!] a[ r gis!] |
    % M39
    <a cis e a>8-. r a bes!8.[( c!16 d8] |
    % M40
    e8) r a, bes8.[( c!16 d8] |

    % Line 2
    % M41
    e[) r a,] \acciaccatura bes a[-. g-. f]-. |
    % M42
    g[-. a-. g-.] << { \voiceOne f[ f\rest e] }
       \new Voice { \voiceTwo <cis a>4. } >> \oneVoice|
    % M43
    r4 d8 \acciaccatura e d[-. cis-. b!]-. |
    % M44
    cis[-. r d]-. <e cis a> r r |
    % M45-...
    r4 d8 << {
        \voiceOne a'4. ~ |

        % Line 3
        % M46 - M47
        a4. g( | f8)[ f\rest a] c!4( bes8 |
        % M48
        \oneVoice
        a8)[ g-. f]-. ees[-. g-. bes-.] |
      }
    \new Voice {
      \voiceTwo d,8[-. cis-. b!]-.
      % Line 3
      % M46-47
      cis8[-. r d]-. e[-. r cis]-. | d[ s f] e4.( |
      % M48 
      f8)
    }
    >>
    % M49-50
    d8[-. cis-. d]-. <e! cis a>[ r <f cis a>]| <e cis a>4.^(~ <d a>8) r r
  }

  % Line 4
  \key d \major
  \repeat volta 2 {
    % M51
    <d' fis a d>4^\markup{(Here many of the principal
      personages stop for refreshments.)} r8 <a d fis a>4 r8 |
    % M52
    <fis a d fis>4 r8 <e fis cis' e>4 r8 |
    % M53
    <d fis b d>4 r8 \acciaccatura e' <d fis,>[ <cis fis,> <b fis>] |
    % M54
    <g b g'>8[ r <g b fis'>] <g cis e>[ r <a a'>] |
    % M55
    <d fis a d>4 r8 <a d fis a>4 r8 |
    % M56
    <fis a d fis>4 r8 <e fis cis' e>4 r8 |
  }
}



%%% LOWER VOICE

lower = \relative c' {
  \clef bass
  \key f \major
  \time 6/8

  %%%%%%%%%%%%
  %% Page 1 %%
  %%%%%%%%%%%%

  % M1
  \clef treble
  <bes bes'>8 r r \clef bass <e e,>8 r r |
  % M2
  R1*3/4_\fermataMarkup |
  % M3 - M4
  <d, gis>2. ~ | q |
  % M5 - M6
  << { \voiceOne e2. | e4. e } \\
     \new Voice { \voiceTwo cis2. ~ | cis4 r8 r4 r8 } >>
  % M7 - M8
  << { \voiceOne e,2. | e4. e } \\
     \new Voice { \voiceTwo bes2. ~ | bes } >> \oneVoice

  % Line 2
  % M9-M11
  <a e'>4 r8 r4 r8 | <a a'>4 r8 r4 r8 | q4 r8 r4\fermata r8 |
  % M12-14
  r4 a'8-. a[-. g-. a-.] | bes8[ r bes] g r r | r4 g8-. g[-. f-. g-.] |

  % Line 3
  % M15-M17
  a8[ r a] f r r|r4 f8-. f[-. e-. f-.] | g r r e r r |
  % M18
  a r r <a a,> r r \bar "||"
  % M19
  \ottava #-1 <d, d,>8 r r \ottava #0 <f' a> r r |

  % Line 4
  % M20-M21
  <e g a>8 r r <g a,>[ r a,(] | d,)-. r r <f' a> r r |
  % M22-M23
  <e g a> r r <g a,>[ r a,(] | d,)-. r r <a' e'>4.( |
  % M24
  <d f>8) r r <c! g'>4.( |

  % Line 5
  % M25
  <f a>8) r r <e b'>4. ( |
  % M26
  <a cis>8) r r r4 r8 |
  % M27
  <d, d,>8  r r <f a> r r |
  % M28-M29
  <e g a> r r <a a,> r a,( | d,)-. r r <f' a> r r |

  % Line 6
  % M30
  <e g a>8 r r <e a a,> r r |
  % M31
  <f a d,>8 r r <c! g' c!>4._( ~ |
  % M32
  <f a c>8) r r <g bes> r r |
  % M33
  <a f a,> r r <g a,>[ r q] | 
  % M34
  q4.( <d f>8) r r |

  %%%%%%%%%%%%
  %% Page 2 %%
  %%%%%%%%%%%%

  \repeat volta 2 {
    % Line 1
    % M35-36
    <a a,>8-. r r << {\voiceOne <cis' e>4. | <d f> <b! d> }
      \new Voice {\voiceTwo a4. ~ | a2.} >> 
    % M37-38
    <a, a,>8-. d\rest d\rest << {\voiceOne <cis' e>4. | <d f> <b! d> }
      \new Voice {\voiceTwo a4. ~ | a2.} >> 
    % M39-40
    \oneVoice
    <a, a,>8-. r r <a' d f>4._~(|<a cis e>8) r r <g d' f>4.~(

    % Line 2
    % M41-42
    <g cis e>4.) <f a d>( | <e b'! d>) <g a,> |
    % M43-44
    <d d,>8 r r  <f a> r r | <e g a> r r <g a,>[ r a,](
    % M45
    d,)-. r r <f' a> r r |

    % Line 3
    % M46-47
    <e g a> r r <e a a,> r r | <d f a> r r <c! g' c!>4. ~_( |
    % M48-49
    <f a c>8) r r <g bes> r r|<f a a,> r r <g a,>[ r q]|
    % M50
    q4.( <d f>8) r r
  }

  \key d \major
  % Line 4
  \repeat volta 2 {
    % M51-52
    <d a fis d>4 r8 <fis d a fis>4 r8 |
  }
}


%%%% DYNAMICS

dynamics = {

  %%%%%%%%%%%%
  %% Page 1 %%
  %%%%%%%%%%%%

  % M1
  s2.\ff
  % M2
  s2.
  % M3
  s2.\f
  % M4-M6
  s2. s2. s2.
  \set decrescendoSpanner = #'text
  \set decrescendoText = \markup \italic "dim."
  % M7-M8
  s2.\> s2.\!

  % Line 2
  % M9-M11
  s2.\p s2. s2.
  % M12-14
  s4 s2\p s2. s2.

  % Line 3
  % M15-19
  s2. s2. s2.\p s2. s2.\p

  % Line 4
  % M20-M22
  s2. s2. s2.
  % M23-M24
  \set decrescendoSpanner = #'hairpin
  \set crescendoSpanner = #'text
  \set crescendoText = \markup \italic "cresc."
  s4 s2\> s4.\< s4.\>

  % Line 5
  % M25
  s4.\! s4.\>
  % M26
  \set decrescendoSpanner = #'text
  \set decrescendoText = \markup \italic "dim."
  s4\> s2\!
  % M27-M29
  s2.\p s2. s2. 

  % Line 6
  % M30
  s2.
  % M31-M32
  \set crescendoSpanner = #'text
  \set crescendoText = \markup \italic "cresc."
  s4. s4\< s8\! s2.
  % M33-M34
  \set decrescendoSpanner = #'text
  \set decrescendoText = \markup \italic "dim."
  s8 s4\> s4.\!
  \set decrescendoSpanner = #'hairpin 
  s4.\> s4.\!

  %%%%%%%%%%%%
  %% Page 2 %%
  %%%%%%%%%%%%

  \repeat volta 2 {
    % Line 1
    % M35-36
    s4\f s2\p | s2. |
    % M37-38
    s4\f s2\p | s2. |
    % M39-40
    s2.\f | s2. |

    % Line 2
    % M41-42
    \set decrescendoSpanner = #'text
    \set decrescendoText = \markup \italic "dim."
    s2. | s4\> s2\! |
    % M43-45
    s2.\p | s2. | s2. |

    % Line 3
    % M46-47
    \set crescendoSpanner = #'text
    \set crescendoText = \markup \italic "cresc."
    s2. | s4. s4.\< |
    % M48-49
    \set decrescendoSpanner = #'text
    \set decrescendoText = \markup \italic "dim."
    s2\! s8 s8\f | s4\> s2\!
    % M50
    \set decrescendoSpanner = #'hairpin
    s2\> s8\! s8
  }

  % Line 4
  \repeat volta 2 {
    % M51-53
    s4.\f s4.\p | s2. | s2. |
    % M54-56
    s2 s8 s8\f | s4.\f s4.\p | s2. |
  }

}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Dynamics = "Dynamics_pf" \dynamics
    \new Staff = "lower" \lower
  >>
  \layout { 
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/12)
    }
    \set Score.doubleRepeatType = #":|.|:"
  }
  \midi { 
    \tempo 4 = 100
  }
}