\language "english"
\header {
  title = "Powerhouse"
  composer = "Raymond Scott"
}

#(define (scoop-stencil grob)
  (ly:stencil-add
    (ly:note-head::print grob)
    (grob-interpret-markup grob
      (markup #:with-dimensions '(0 . 0) '(0 . 0)
              #:translate '(-0.2 . -0.5)
              #:path 0.25 '((moveto 0 0.5)
                            (curveto -1 0 -1.5 -1 -1.5 -2))))))

scoop = \once \override NoteHead #'stencil = #scoop-stencil

\score {
  <<
    \new Staff = "Trumpet" {
      \relative c' {
        \transposition bf
        \key f \major
        \time 4/4
        \tempo 2 = 180
        \numericTimeSignature
        \set Staff.instrumentName = #"Trumpet"
        \set Staff.shortInstrumentName = #"T"
        \set Staff.midiInstrument = #"Trumpet"

        bf1\p~ | bf1~ | bf1~ | bf1~ | bf1~ | bf1~ | bf1~ | bf1 |
        \scoop bf'1\mp~ | bf1~ | bf1~ | bf1~ | bf1~ | bf1~ | bf1~ | bf1 |
        \scoop a1^\( | \scoop a1 | \scoop a1 | \scoop a1\) |
        \scoop a2^\( \scoop a2 | \scoop a2 \scoop a2 | \scoop a2 \scoop a2 | \scoop a4\) r2. | \bar "||"
        
        d,8\f^\markup \circle { { A } }( ef d ef) e( f e f) | g8( af g af) b( c b c) |
        g8( af g af) e( f e f) | d8( ef) r2. |
        d8( ef d ef) e( f e f) | g8( af g af) b( c b c) |
        f4\staccato r8 b,8\staccato r4 c4\staccato | r4 gs4\staccato a\staccato f\staccato |
        d8( ef d ef) e( f e f) | g8( af g af) b( c b c) |
        g8( af g af) e( f e f) | d8( ef) r2. |
        d8( ef d ef) e( f e f) | g8( af g af) b( c b c) |
        f4\staccato r8 b,8\staccato r4 c4\staccato | r4 gs4\staccato a\staccato f\staccato | \bar "||"

        bf1\p^\markup \circle { { B } }~ | bf1~ |
        bf1~ | bf1 |
        \scoop bf1 | \scoop bf1 |
        \scoop bf2 \scoop bf2 | \scoop bf2 \scoop bf2 |
        d,8\f( ef d ef) e(f e f) | g8( af g af) b(c b c) |
        g8( af g af) e( f e f) | d8( ef) r2. |
        d8( ef d ef) e(f e f) | g8( af g af) b(c b c) |
        f4\staccato r8 b,8\staccato r4 c4\staccato | r4 gs4\staccato a\staccato f\staccato |
        d8( ef d ef) e(f e f) | g8( af g af) b(c b c) |
        g8( af g af) e( f e f) | d8( ef) r2. |
        d8( ef d ef) e(f e f) | g8( af g af) b(c b c) |
        f4\staccato r8 b,8\staccato r4 c4\staccato | r4 gs4\staccato a\staccato f\staccato | \bar "||"

        f1\p^\markup \circle { { C } }\( | af1 | b1 | ds1\) |
        f,1\( | af1 | b1 | ds1\)
        af1\( | bf1 | d1\< | f1\)
        df1\!\mf\( | c1 | b1 | bf1 |
        a1\> | af1 | g1~ | g4\) r2.\! | \bar "||"

        d8\f^\markup \circle { { D } }( ef d ef) e( f e f) | g8( af g af) b( c b c) |
        g8( af g af) e( f e f) | d8( ef) r2. |
        d8( ef d ef) e( f e f) | g8( af g af) b( c b c) |
        f4\staccato r8 b,8\staccato r4 c4\staccato | r4 gs4\staccato a\staccato f\staccato |
        d8( ef d ef) e( f e f) | g8( af g af) b( c b c) |
        g8( af g af) e( f e f) | d8( ef) r2. |
        d8( ef d ef) e( f e f) | g8( af g af) b( c b c) |
        f4\staccato r8 b,8\staccato r4 c4\staccato | r4 gs4\staccato a\staccato f\staccato | \bar "||"
      }
    }
  \new Staff = "Clarinet" {
    \relative c' {
      \transposition bf
      \key f \major
      \numericTimeSignature
      \set Staff.instrumentName = #"Clarinet"
      \set Staff.shortInstrumentName = #"C"
      \set Staff.midiInstrument = #"Clarinet"
      
    }
  }
  >>
  \layout {}
  \midi {}
}