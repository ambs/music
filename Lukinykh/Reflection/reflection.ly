\version "2.20.0"

\header {
  title = "Reflection"
  composer = "Gennady Lukinykh"
  meter = "Moderato"
  date = "July 3, 2018"
%{ 
  copyright = \markup \left-align \center-column {
    \line {
	  	"© 2015-2022 Alberto Simões"}
  	\line {
  		\epsfile #Y #2 #"../../cc-by-sa.eps" "Licensed under a Creative Commons Attribution-ShareAlike 4.0 International License."
  	}
  } %}
  tagline = \markup \left-align \center-column {
  	\line { "Typeset with GNU LilyPond (http://lilypond.org)." }
  }    
}

dynamics = {
  s1\mp s1 s1

  s1 s1 s1 
  s1 s1 s1

  s1 s1 s1
  s1 s1 s1\mf

  s1 s1 s1 s1

  s1 s1
  s1 s1\f

  s1 s1 s1 s1
  s1 s1
  s1 s1\mp s1 s1 s1 s1
  }

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4

  c1 | a32[g a8.] ~ a2. | f2. b8[ a] |

  a4. b16[ a] gis2 
  \repeat volta 2 {
    << \new Voice \relative c'' {
        \voiceOne c2. a8[ b32 a gis a] | e'1 
        d4. e16[ d] cis8\prall[ bes a g] | g4. f16[ e] f2 | f2 ~ f16[ e dis e] e'8[ d]

        d4. c16[ b] c2
      }
      
      \new Voice \relative c'' {
        \voiceTwo r8 a,8[ <c e> a] <c e>[ a] <c e>4 | r8 b[ <d e> b] <d e b'>[ b <d e gis> b]
        r8 bes <d e g>4 <e g> <cis e> | r8 a[ d a] d[ a d a] | r a[ d a] gis4 <e' gis b> |
        
        r8 a, <c e>4 <e a>8[ a, <c e> a] 
      }
    >>
  }
  \alternative { 
    { << { \voiceOne a2. b8[ a] | a2 gis }
          \new Voice {\voiceTwo r8 f,[ <a c> f] <c' f>[ a] <c ees f>4 } >> }
    { << { \voiceOne a'4. b16[ a] gis4. a8 | a2 ~ a8 r \tuplet 5/4 {a16[\< b cis d e]\!}}
          \new Voice {\voiceTwo r8 a,,8 <c f>4 <d e>8[ b] ~ <b d e>4 | <c e>8[ a <c e> a] <c e>s8 <e g>4 }>>} 
  }

  % 3 

  \key f \major
  <<
    \new Voice \relative  { 
        \voiceOne
        <f' f'>2.^\markup{\italic{con moto}} d'8[ e32 d cis d] |

        <a a'>1 | r16 ees''[ d c] a[ fis ees d] c[ bes a g] fis[ d fis a] |
        c4. bes16[ a] bes2 | d4. e16[ d] cis[ a cis e] g[ bes a g]

        g8[ f16 e] f8[ d16 cis] d8[ a16 gis] a8[ d16 e] | f4~f16[bes, d f] d[ e f bes] c8[ bes] |
        <a, a'>2 ~ q8 r \tuplet 5/4 {a16[\< b cis d e]\!} | <f f,>2.^\markup{\italic{espr.}} d8[ e32 d cis d] |

        <a a'>1 | s1 | <c c'>4. <bes bes'>16[ <a a'>] <bes bes'>2 | <bes bes'> ~ bes'16[ a gis a] a'[ g f e] |
        f[ a e g] d[ f cis e] d2 | <d d,>2 ~ q8[ <g, e'>16 <a f'>] <g e'>8[ <f d'>] |

    }
    \new Voice \relative {
        \voiceTwo
        r16 a[ d f] a[ d, f a] ~ a[ d, f a] f4 |
        r16 a,[ cis e] a[ e g a] cis[ g a cis] e[ a, cis e] | s16 ees[ d c] a4 d,2 |
        r16 d[ g d] ~ d4 ~ d16[ d g d] bes[ g bes d] | r d[ g d] bes'4 e, g16[ bes a g] |

        a2 f | r16 d[ bes' f] d'4 f, c'8[ bes] |
        r16 a,[ e' d] a'[ a, e' d] r a[ e' cis] <e g>4 |
        \tuplet 6/4 { r16 a,[ d f d f]} \tuplet 6/4 {a[ f a d a d]} \tuplet 6/4 {f d f a f a} d4 |

        \tuplet 6/4 { r16 a,,[ cis e cis e]} \tuplet 6/4 { a e a cis a cis} \tuplet 6/4 {e cis e a e a} cis4 |
        r16 <a, a'>[ <c c'> <d d'>] <ees ees'>[ <d d'> <ees ees'> <g g'>] <fis fis'>[ <ees ees'> <d d'> <c c'>] <a a'>[ <fis fis'> <g g'> <a a'>]
        \tuplet 6/4 {r16 d,[ g bes g bes]} d4 \tuplet 6/4 {r16 g,[ bes d bes d]} g4 |
        \tuplet 6/4 {r16 d,[ g bes g bes]} \tuplet 6/4 {d[ bes d g d g]} bes[ a gis a] a[ g! f e]

        a8[ g f e] d16[ bes' a f] d[ a f d] |
        \tuplet 6/4 {r16 bes[ d f d f]} \tuplet 6/4 {bes f bes d bes d} f8[ e16 f] e8[ d]
    }
  >>

       \oneVoice   <d' g bes d>4 ~ q16[\> <c c'> <bes bes'> <a a'>\!] <gis b d gis>2\arpeggio  \bar "||"
       \key c \major
  <<
    \new Voice \relative {
      \voiceOne
      c''2. a8[ b32 a gis a] | e'1 |   
      d4. e16[ d] cis8[\prall bes a g] | g4. f16[ e] f2 | f2 ~ f16[ e dis e] e'8[ d] |
      d4. c16[ b] c2 | a4. b16[ a]  gis4.\prall\arpeggio a8 | a1\fermata \bar "|."
    }

    \new Voice \relative {
      \voiceTwo r8 a[ <c e> a] <c e>[ a] <c e>4 | r8 b[ <d e> b] <d e b'>[ b <d e gis> b] |
      r8 bes  <d e g>4 <e g> <cis e> | r8 a[ d a] d[ a d a] | r a[ d a] gis4 <e' gis b> |
      r8 a, <c e>4 <e a>8[ a, <c e> a] | r c[ f c] \arpeggio<b d e>2 | c32[ b c8.] ~ c2.\fermata
    } 
  >>
}


lower = \relative c' {
  \clef bass
  \key c \major
  \time 4/4

  <a c e>4 q <g a c e> q | <f a c> q <e g a c> q | <d f a c> q <dis f a c> q |

  <e b' d>4 q q2
  \repeat volta 2 {
    a,1 gis g2 a <d d,> <c c,> <b b,> e,

    a2 g
  }
  \alternative {
    { f1 | e1 } { f2 e | <a a,>2 ~ q8 r8 q4 }
  }
  \bar "||"
  \key f \major
  <<
    \new Voice \relative { \voiceOne
      r4 <f a>4 q <f a d> | r4 <e g a> q <e g a cis> | r4 <ees fis a> r <fis a c> |
      r <d g> r <d g> | r <d g bes> r <e g a cis> | 
      r <f a d> r q | r <f bes d> r <f aes bes d> |
      r <e g> r <e g a cis> | r <d f a> <f a d> q

      r <e g a> <e g a cis> q | r <ees g a c> r <fis a c d> |
      r4 <d g bes> r q | r q r <e g a cis> |

      r <f a d> r <d f a> r <d f bes> r <f bes d> |
      r <d g bes>4
    }
    \new Voice \relative { \voiceTwo
      <d d,>1 | <cis cis,> | <c! c,!>2 <d d,> | g, f | e a |
      d2 c | bes bes | a a | <d d,>1

      <cis cis,>1 | <c! c,!>2 <d d,> | g, f | e <a a,> |

      <d d,> <a a,> | <bes bes,> <bes bes,> |

      <g g,> 
    }
  >>
  <e b' gis'>2 \arpeggio
  \bar "||"
  \key c \major
  a1 | gis | g2 a | <d d,> <c c,> | <b b,> e, |
  a g | <f f'> <e e'>\arpeggio | <a a,>1\fermata
  \bar "|."
}


\score {
  \new PianoStaff = "PianoStaff_pf" 
    <<
   \set PianoStaff.connectArpeggios = ##t     
    \new Staff = "upper" << \upper >>
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" <<  \lower >>
  >>
  \layout { }
}

\score {
  \new PianoStaff = "PianoStaff_pf" <<
    \new Staff = "upper" <<  \upper \dynamics >>
    \new Staff = "lower" <<  \lower \dynamics >>
  >>
  \midi { 
    \tempo 4 = 60
  }
}

\paper {
    max-systems-per-page = 6
    top-margin = 15\mm
    bottom-margin = 15\mm
    left-margin = 15\mm
    right-margin = 15\mm
}

    