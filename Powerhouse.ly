\language "english"
\header {
  title = "Powerhouse"
  composer = "Raymond Scott"
}

\score {
  <<
    \new Staff = "Trumpet" {
      \relative c' {
        \transposition bf
        \key f \major
        \time 4/4
        \tempo 2 = 180
        \numericTimeSignature
        bf1\p~ | bf1~ | bf1~ | bf1~ | bf1~ | bf1~ | bf1~ | bf1( |
        bf'1\mp~) | bf1~ | bf1~ | bf1~ | bf1~ | bf1~ | bf1~ | bf1 |
      }
    }
  >>
  \layout {}
  \midi {}
}