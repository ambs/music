thirdValseUpper = \relative c'' {
  \clef treble
  \key d \major
  \time 3/4
 
  \repeat volta 2 {
    %% Page 1 Line 1

    a8[(^> fis'-.)] fis2 | a,8[(^> fis'])-. fis2 |
    gis,8[( eis'-.)] eis2 |
    a,8[(^> fis'-.) fis-. e!-. d-. cis-.] |
    b8[( g'-.)] g2 | b,8[(^> gis'-.)] gis2 |
    cis,8[( a')-. a-. b-. e,-. fis-.] |

    %% Page 1 Line 2

    g!8[( cis,-.) d-. e-. b-. cis-.] |
    a8[(^> fis'-.)] fis2 | a,8[(^> fis'])-. fis2 |
    cis8[(^> a')]-. a2 | e8[(^> cis')-. cis-. b-. a-. fis-.] |
    gis16[( b)] r8 fis16[( a)] r8 e16[( gis)] r8 |

    %% page 1, line 3
    d16[( fis)] r8 cis16[( e)] r8 b16[( d)] r8 |
    a16[( cis)] r8 b16[( d)] r8 bis16([ dis]) r8 |
    cis16[( e)] r8 d!16([ fis]) r8 e16[( g!)] r8 |
    a,8^>[( fis')]-. fis2 | fis8[( g)]-. g[( gis)]-. gis8[( a)]-. |
    a4 e8[( fis] g!4

    %% page 1, line 4
    a4)-. cis,8[( d] e4 | a,8[)(^> fis'-.]) fis2 |
    fis8[( g-.)] g[( gis)]-. gis[( a)]-. |
    a4-. e8[( fis] g!4 | a)-. cis,8[( d] e4 | a,8)[(^> d)]-. d2 |
    a8[(^> e')]-. e2 | a,8[(^> fis')]-. fis2 |

    %% page 1, line 5
    g,16[( b)] r8 b16[( e)] r8 e16[( g)] r8 |
    d16[( fis)] r8 fis16[( a)] r8 a16[( d)] r8 |
    g,16[( b)] r8 e,16[( g)] r8 cis,!16[( e)] r8 |
    d16[( fis)] r8 a,16[( d)] r8 fis,16[( a)] r8 | d,4 r r
  }
  a''8[( e)]-. e2

  %% page 1, line 6
  a8[( d,)]-. d2 | a8[( b)-. cis-. d-. e-. g-.] |
  fis[-. g-. a-. b-. cis-. d]-. | a8[( e)]-. e2 |
  a8[( d,)]-. d2 | a8[( b)-. cis-. d-. e-. g-.] |
  fis[-. g-. a-. b-. cis-. d]-.
}

thirdValseLower = \relative c {
  \clef bass
  \key d \major
  \time 3/4

  \repeat volta 2 {
    % Line 1, page 1
    d4 <fis a> q|d <fis a> q|d <eis gis> q|d <fis a> q|
    d <e g b> q|d <e gis b> q|a, <e' g! a> q|

    % line 2, page 1
    a, <e' g a> q|d <fis a> q|dis <fis a b> q|e <a cis> q|e <a cis> q|e <b' d> q|

    % line 3, page 1
    e, <gis d'> q|<a cis> r r| R1*3/4 | d,4 <fis a> q|a, <fis' a> q|cis <e g! a> q|

    % line 4, page 1
    a, <e' g a> q|d <fis a> q|a, <fis' a> q|cis <e g! a> q|
    a, <e' g a> q|fis <a d> q| e <g a cis> q|dis <fis a c!> q |

    % line 5, page 1
    e <g b> q|a, <d fis a> q|a <e' g a> q|<d fis a> a' fis | d r r 
  }
  a' <cis g'> q |
  % line 6, page 1
  a <d fis> q|a <cis e g> q|a <d fis> q|a <cis g'> q|a <d fis> q|a <cis e g> q|
  a <d fis> q|
}



%%%% DYNAMICS

thirdValseDynamics = {
  \repeat volta 2 {
    s2.\p s2. s2. s2. s2. s2. s2.
    \set crescendoSpanner = #'text
    \set crescendoText = \markup \italic "cresc."
    s2. s2. s2. s2.\< s4 s8\! s4. s2.
    \set decrescendoSpanner = #'text
    \set decrescendoText = \markup \italic "dim."
    s2. s2. s2.\> s2.\p
    \set crescendoSpanner = #'hairpin
    \set decrescendoSpanner = #'hairpin
    s2.\< s2.\!
    s2.\> s2.\p s2.\< s2.\! s2.\> s4\!
    \set crescendoSpanner = #'text
    \set crescendoText = \markup \italic "cre"
    s2\< s2. s2.
    \set crescendoText = \markup \italic "scen"
    s2.\< s2.
    \set crescendoText = \markup \italic "do"
    s2.\< s2.\f s2.
  }
  s2.\p

  \set crescendoSpanner = #'hairpin
  s2. s2.\< s2. s2.\! s2. s2.\< s2.
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = "Valse 3"
    \new Staff = "upper" \thirdValseUpper
    \new Dynamics = "Dynamics_pf" \thirdValseDynamics
    \new Staff = "lower" \thirdValseLower
  >>
  \layout { 
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/12)
    }
    \set Score.doubleRepeatType = #":|.|:"
  }
}

