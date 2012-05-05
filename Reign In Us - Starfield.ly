\include "common.ly"

\header {
  title = \markup { "Reign In Us - Starfield" }
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
        \tempo 4 = 72
        
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
        
        \break
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
        
        \break
        \mark "V2"
        \repeat volta 2
        \repeat percent 4
        \myVerseTwoPattern
        
        \mark "Pre2"
        \repeat percent 4
        \myVerseTwoPattern
        
        \mark "C2"
        \repeat volta 2
        \repeat unfold 4
        \myDrumVoicePreviousPatternMeasure
        
        \mark "Post2"
        \myDrumVoiceFillFourCounts
        
        \break
        \mark "Bridge1"
        \repeat volta 2
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
              hho8 hho <hho sn> hho16 sn16 hho8 hho <hho sn> hho
            } \\ {
              bd8 bd r4 <\parenthesize bd>8 <\parenthesize bd>8 r4
            }
          >>
        }
        
        \mark "C3"
        R1
        <<
          {
            r2. cymr8\p\< cymr16 sn16
          } \\ {
          }
        >>
        <<
          {
            cymr16 sn16 cymr8 <cymr sn> cymr cymr16 sn16 cymr8 <cymr sn> cymr
          } \\ {
            r8 bd r4 bd8 bd r4
          }
        >>
        <<
          {
            cymr16 sn16 cymr8 <cymr sn> <cymr sn> \pushSlash sn4 sn\f\! \popSlash
          } \\ {
            bd8 bd r4
          }
        >>
        \repeat unfold 4
        \myDrumVoicePreviousPatternMeasure
        
        \mark "C4"
        \repeat volta 2 {
          \repeat unfold 4
          \myDrumVoicePreviousPatternMeasure
        }

        \break
        \mark "Bridge2"
        R1*4
        \repeat percent 4
        <<
          {
          } \\ {
            bd4\pp bd_"Crescendo . . . " bd bd
          }
        >>
        
        \repeat percent 4
        <<
          {
            \pushSlash sn4 sn sn sn \popSlash
          } \\ {
            bd4_"Crescendo . . ." bd bd bd
          }
        >>

        \mark "Outro"
        \bar "S"
        \repeat volta 2
        \repeat percent 4
        <<
          {
            \myDrumVoiceRideEigthsSnareTwoAndFour
          } \\ {
            bd8\f bd r4 bd8 bd8 r4
          }
        >>
        \bar "S"
        R1_"<- Repeat N"
      }
    >>
  >>
}