\version "2.14.2"

\include "english.ly"
\include "common.ly"

\header {
  title = \markup { "Furious - Jeremy Liddle" }
}

\paper {
  page-count = 2
}

myDrumVoiceBassVerseGroove = \drummode {
  bd8. bd16 r8. bd16 r8 bd16 bd r bd8.
}

myVersePatternOne = \drummode {
  <<
    {
      \myDrumVoiceHiHatEigthsSnareTwoAndFour
    } \\ {
      \myDrumVoiceBassVerseGroove
    }
  >>
}

myVersePatternTwo = \drummode {
  <<
    {
      hh8 hh <hh sn> <hh sn> hh16 sn hh8 \myDrumVoiceFillOneCount
    } \\ {
      bd8. bd16 r8. bd16 r8 bd8 r4
    }
  >>
}

myVersePatternThree = \drummode {
  <<
    {
      hh8 sn16 cymc r8 cymc8 \myDrumVoiceFillTwoCounts
    } \\ {
      bd8. bd16 r8 bd8
    }
  >>
}

myChorusPatternOne = \drummode {
  <<
    {
      \myDrumVoiceHiHatOpenEigthsSnareTwoAndFour
    } \\ {
      \myDrumVoiceBassVerseGroove
    }
  >>
}

myChorusPatternTwo = \drummode {
  <<
    {
      hho8 hho <hho sn> <hho sn> hho16 sn hho8 \myDrumVoiceFillOneCount
    } \\ {
      bd8. bd16 r8. bd16 r8 bd8 r4
    }
  >>
}

myChorusMovement = \drummode {
  \repeat volta 2 {
    \repeat unfold 3
    <<
      {
        \myDrumVoicePreviousPatternMeasure
      } \\ {
        
      }
    >>
  }
  \alternative {
    <<
      {
        \myDrumVoicePreviousPatternMeasure
      } \\ {
        
      }
    >>
    <<
      {
        \myDrumVoiceFillFourCounts
      } \\ {
        
      }
    >>
  }
}

myBridgePatternOne = \drummode {
  <<
    {
      \myDrumVoiceCrashQuartersSnareTwoAndFour
    } \\ {
      \myDrumVoiceBassQuarters
    }
  >>
  <<
    {
      cymc4 <cymc sn> cymc16 sn8. <cymc sn>4
    } \\ {
      \myDrumVoiceBassQuarters
    }
  >>
}

myBridgePatternTwo = \drummode {
  <<
    {
      cymc16 sn16 sn8 <cymc sn>8 sn16 sn16 cymc16 sn16 sn8 <cymc sn>8 sn16 sn16
    } \\ {
      \myDrumVoiceBassQuarters
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
        \tempo 4 = 105
        
        R1*2
        
        \mark "Intro"
        \repeat volta 2 {
          \repeat percent 3
          \myChorusPatternOne
          \myChorusPatternTwo
        }
        
        %\break
        \mark "V1"
        \repeat volta 2 {
          \repeat percent 3
          \myVersePatternOne
        }
        \alternative {
          <<
            {
              hh8 hh <hh sn> hh hh hh <hh sn> hho
            } \\ {
              \myDrumVoiceBassVerseGroove
            }
          >>
          \myVersePatternTwo
        }
        
        %\break
        \mark "Pre1"
        \repeat percent 5
        \myVersePatternOne
        <<
          {
            \myDrumVoiceFillFourCounts
          } \\ {
            
          }
        >>
        
        \break
        \mark "C1"
        \repeat volta 2 {
          \repeat percent 3
          \myChorusPatternOne
        }
        \alternative {
          \myChorusPatternTwo
          \myDrumVoiceFillFourCounts
        }
        
        \break
        \mark "V2"
        \repeat volta 2 {
          \repeat percent 2
          <<
            {
              \repeat unfold 8 cymr8
            } \\ {
              
            }
          >>
          \myDrumVoicePreviousPatternMeasure
        }
        \alternative {
          <<
            {
              \myDrumVoicePreviousPatternMeasure
            } \\ {
              
            }
          >>
          \myVersePatternThree
        }
        
        \mark "Pre2"
        \repeat unfold 5
        <<
          {
            \myDrumVoicePreviousPatternMeasure
          } \\ {
            
          }
        >>
        <<
          {
            \myDrumVoiceFillFourCounts
          } \\ {
            
          }
        >>
        
        \break
        \mark "C2"
        \repeat unfold 2
        \myChorusMovement
        
        \break
        \mark "Bridge1"
        \repeat percent 3 {
          \myBridgePatternOne
        }
        \break
        \repeat percent 6 {
          \myBridgePatternTwo
        }
        \break
        <<
          {
            \repeat unfold 4 { hh8-> hh16 hh16 }
          } \\ {
            
          }
        >>
        <<
          {
            \repeat unfold 2 { hh8-> hh16 hh16 }
            hh16-> hh hh hh hho4
          } \\ {
            
          }
        >>
        
        \mark "C3"
        R1*8
        
        \break
        \mark "C4"
        \repeat volta 2
        \repeat percent 2 {
          <<
            {
              sn16-> \repeat unfold 15 sn16
            } \\ {
              \myDrumVoiceBassQuarters
            }
          >>
          <<
            {
              \repeat unfold 14 sn16 sn16:32 sn16:32
            } \\ {
              \myDrumVoiceBassQuarters
            }
          >>
        }
        
        \break
        \mark "C5"
        \repeat percent 3 {
          <<
            {
              sn16-> \repeat unfold 15 sn16
            } \\ {
              \myDrumVoiceBassQuarters
            }  
          >>
          <<
            {
              \repeat unfold 14 sn16 sn16-> sn16->
            } \\ {
              \myDrumVoiceBassQuarters
            }
          >>
        }
        <<
          {
            \myDrumVoicePreviousPatternMeasure
          } \\ {
          }  
        >>
        <<
          {
            sn16 sn sn-> cymc sn sn cymc8 sn16 sn hho8 sn16 sn hho8
          } \\ {
            bd8. bd16 r8 bd8 r2
          }
        >>
        
        \break
        \mark "Bridge2"
        \repeat volta 2 {
          \repeat percent 3
          \myBridgePatternTwo
        }
        \alternative {
          <<
            {
              \myDrumVoicePreviousPatternMeasure
            } \\ {
              
            }
          >>
          \myVersePatternThree
        }

        \break
        \mark "C6"
        \repeat percent 3
        \myBridgePatternOne
        
        \bar "S"
        \repeat percent 4
        <<
          {
            cymr4 <cymr ss>4 cymr4 <cymr ss>4
          } \\ {
            
          }
        >>
        \bar "S"
        
        <<
          {
            cymr1
          } \\ {
            
          }
        >>
        
        \mark "Fine"
      }
    >>
  >>
}