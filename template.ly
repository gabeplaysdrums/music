\version "2.14.2"

\include "english.ly"

\header {
  title = \markup { "[Title] - [Artist]" }
}

\score {
  <<
    \compressFullBarRests
    \new DrumStaff <<
      \new DrumVoice = "1" { s1 }
      \new DrumVoice = "2" { s1 }
      \drummode {
        \time 4/4
        \tempo 4 = 120
        
        
      }
    >>
  >>
}