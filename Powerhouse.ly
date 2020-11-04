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
              #:path 0.25 '((moveto 0 0)
                            (curveto -1 0 -1.5 -1 -1.5 -1.5))))))

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
        
        d,8^\markup \circle { { A } }( ef d ef) e( f e f) | g8( af g af) b( c b c) |
        g8( af g af) e( f e f) | d8( ef) r2. |
        d8( ef d ef) e( f e f) | g8( af g af) b( c b c) |
        f4\staccato r8 b,8\staccato r4 c4\staccato | r4 gs4\staccato a\staccato f\staccato |
        d8( ef d ef) e( f e f) | g8( af g af) b( c b c) |
        g8( af g af) e( f e f) | d8( ef) r2. |
        d8( ef d ef) e( f e f) | g8( af g af) b( c b c) |
        f4\staccato r8 b,8\staccato r4 c4\staccato | r4 gs4\staccato a\staccato f\staccato |
      }
    }
  >>
  \layout {}
  \midi {}
}