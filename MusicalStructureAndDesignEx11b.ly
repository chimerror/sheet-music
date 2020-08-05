\header {
  title = "MSAD Ex 1.1b"
  composer = "Composer"
}

\language "english"

\score {
  \new GrandStaff <<
    \new Staff {
     \numericTimeSignature
     \time 4/4
     \key f \major
     \relative c'' {
        d4 e f e | d2 c4 a |
        bf4 a g <g e>4 | <f c>2. r4 |
      }
    }
    \new Staff {
     \numericTimeSignature
     \time 4/4
     \key f \major
     \clef bass
     <<
      \relative c' {
        r1 | r1 |
        r2. c8 bf8 | a2. r4 |
      }
      \\
      \relative c {
          r1 | r1 |
          r2. c4 | f,2. r4 | 
        }
      >>
    }
  >>

  \layout {}
  \midi {}
}