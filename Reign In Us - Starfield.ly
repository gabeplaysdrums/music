\version "2.14.2"

\include "english.ly"
\include "common.ly"

\header {
  title = \markup { "Reign In Us - Starfield" }
}

\paper {
  paper-height = 8.5\in
  paper-width = 11\in
  indent = #0
}

myVerseOnePattern = \drummode {
  <<
    {
      hh16 hh hh hh
      <hh ss>16 hh32 ss32 hh16 hh
      hh16 hh hh hh
      <hh ss>16 hh32 ss32 hho8
    } \\ {
    }
  >>
}

myChorusPattern = \drummode {
  <<
    {
      \myDrumVoiceRideEigthsSnareTwoAndFour
    } \\ {
      bd4 r4 bd8 bd8 r4
    }
  >>
  <<
    {
      cymr8 cymr <cymr sn> cymr cymr cymr <cymr sn> cymr16 sn16
    } \\ {
      bd4 r8. bd16 bd8 bd8 r8
    }
  >>
  <<
    {
      \myDrumVoiceRideEigthsSnareTwoAndFour
    } \\ {
      r8 bd8 r8. bd16 r8 bd8 r4
    }
  >>
  <<
    {
      \myDrumVoiceRideEigthsSnareTwoAndFour
    } \\ {
      bd8 <\parenthesize bd>8 r4 bd8 bd r4
    }
  >>
}

myChorusMovement = {
  \repeat volta 2
  \myChorusPattern
}

myVerseTwoPattern = \drummode {
  <<
    {
      \myDrumVoiceHiHatEigthsSnareTwoAndFour
    } \\ {
      bd4 r4 bd8 bd8 r4
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
        
        \mark "Intro"
        R1
        <<
          {
            hho8 hho <hho sn> hho hho hho16 sn16 hho8 <hho sn>
          } \\ {
            bd8 bd r8. bd16 bd4 r16 bd8.
          }
        >>
        \repeat percent 2 {
          <<
            {
              hho8 hho <hho sn> hho16 sn16 hho8 hho <hho sn> hho
            } \\ {
              bd8 bd r4 r16 bd16 bd8 r4
            }
          >>
          <<
            {
              \myDrumVoiceHiHatOpenEigthsSnareTwoAndFour
            } \\ {
              bd8 bd r4 bd8 bd r4
            }
          >>
        }
        
        \mark "V1"
        \repeat volta 2
        \repeat percent 4
        \myVerseOnePattern
        
        \mark "Pre1"
        \repeat percent 4
        \myVerseOnePattern
        
        \mark "C1"
        \myChorusMovement
        
        \mark "Post1"
        \repeat percent 2
        <<
          {
            \myDrumVoiceRideEigthsSnareTwoAndFour
          } \\ {
            bd4 r4 bd8 bd8 r4
          }
        >>
        
        \mark "V2"
        \repeat volta 2
        \repeat percent 4
        \myVerseTwoPattern
        
        \mark "Pre2"
        \repeat percent 4
        \myVerseTwoPattern
        
        \mark "C2"
        \myChorusMovement
        
        \mark "Post2"
        %TODO: start here
      }
    >>
  >>
}