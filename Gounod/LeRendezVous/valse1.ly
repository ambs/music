

firstValseUpper = \relative c'' {
  \clef treble
  \key d \major
  \time 3/4

  %% page 1, line 1
  \partial 4 a4( | d-.) d,8[_( fis] d'4-> | cis4)-. d,8[_( fis] cis'4-> | b)-.
  e,8([ g] a4->) ~ | a8[ a_( gis a gis a] | b4)-. e,8[( g!] a4)-> ~ |

}

firstValseLower = \relative c {
  \clef bass
  \key d \major
  \time 3/4

  \partial 4 r4 |
  d4 <fis a> q | a, <fis' a> q | cis <e g a> q | a, <e' g a> q | cis <e g a> q |
}



%%%% DYNAMICS

firstValseDynamics = {
  s4\p |
}
