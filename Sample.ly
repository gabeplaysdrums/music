\version "2.14.2"

\include "english.ly"

\header {
  title = \markup { "Drums Test" }
}

\paper {
  paper-height = 8.5\in
  paper-width = 11\in
  indent = #0
}

myversepattern = \drummode {
  <<
    {
      cymr16 cymr cymr cymr
      sn cymr cymr cymr
      cymr16 cymr cymr cymr
      sn cymr cymr cymr
    } \\ {
      <hhp bd>4 hhp8. bd16 hhp8 bd hhp4
    }
  >>
}

mychoruspattern = \drummode {
  <<
    {
      hho4 <hho sn> hho <hho sn>
    } \\ {
      bd8. bd16 r8. bd16 r8 bd8 r4
    }
  >>
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
        \bar "|:"
        \mark "V1"
        \repeat volta 2 {
          \repeat percent 4
          <<
            {
              cymc8 hh <hh sn> hh hh hh <hh sn> hh
            } \\ {
              bd4 r4 bd8 bd8 r4
            }
          >>
        }
        \alternative {
          \myversepattern
          <<
            {
              tommh4 tomml toml sn
            } \\ {
            }
          >>
        }
        \repeat percent 4 {
          \myversepattern
          \myversepattern
        }
        <<
          {
            <sn toml>8->\< <sn toml> <sn toml> <sn toml> <sn toml> <sn toml> <sn toml> <sn toml>\!
          } \\ {
            \repeat unfold 8 bd8
          }
        >>
        \mark "Chorus"
        \repeat volta 2
        \repeat percent 4
        \mychoruspattern
      }
    >>
  >>
}