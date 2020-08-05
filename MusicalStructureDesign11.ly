\header {
  title = "Chorale: Christus der ist mein Leben"
  composer = "Composer"
}

\language "english"

\score {
    \new GrandStaff <<
      \new Staff {
        \numericTimeSignature
        \time 4/4
        \key f \major
        \relative c' {
          \partial 4 f4 |
          a4 g a bf | c2 a4 d |
          c4 bf a <g e>4 | <f a>2 r4 c'4 |
        }
      }
      \new Staff {
        \numericTimeSignature
        \time 4/4
        \key f \major
        \clef "bass"
        \relative c {
          \partial 4 r4 |
          r1 | r1 |
          r2. <c c'>4 | <f c'>2 r2 |
        }
      }
      >>

  \layout {}
  \midi {}
}