\include "common.ly"

\header {
  title = \markup { "Come Away - Jesus Culture" }
}

myIntroPatternLastTwoBars = \drummode {
  \repeat unfold 2
  <<
    {
      toml8 toml toml-> toml toml toml-> toml toml->
    } \\ {
      \myDrumVoiceBassQuarters
    }
  >>
}

myIntroPatternFirstTwoBars = \drummode {
  <<
    {
      toml8 toml toml-> toml toml toml toml <cymc sn>
    } \\ {
      \myDrumVoiceBassQuarters
    }
  >>
  <<
    {
      toml8 toml toml-> toml toml toml toml-> toml16 toml16
    } \\ {
      \myDrumVoiceBassQuarters
    }
  >>
}

myIntroPattern = \drummode {
  \myIntroPatternFirstTwoBars
  \myIntroPatternLastTwoBars
}

myBridgePatternVoice = \drummode {
  \repeat unfold 8 sn32 
  \repeat unfold 2 { sn-> sn sn sn }
  sn sn sn-> sn sn sn sn sn
  sn-> sn sn sn-> sn-> sn sn sn
  \repeat unfold 8 sn32 
  \repeat unfold 2 { sn-> sn sn sn }
  sn sn sn-> sn sn sn sn sn
  sn-> sn sn sn sn-> sn-> sn-> sn->
}

\score {
  <<
    \compressFullBarRests
    \new DrumStaff <<
      \new DrumVoice = "1" { s1 }
      \new DrumVoice = "2" { s1 }
      \drummode {
        \time 4/4
        \tempo 4 = 82
        
        \mark "Intro"
        R1*7_Guitar
        <<
          {
            r2 toml16\< \repeat unfold 6 toml toml\!
          } \\ {
            r2 \repeat unfold 8 bd16
          }
        >>
        \repeat volta 2 {
          \myIntroPattern
        }
        
        \break
        \mark "V1"
        \repeat volta 2 {
        \repeat percent 7
          <<
            {
              
            } \\ {
              \myDrumVoiceBassQuarters
            }
          >>
        }
        \alternative {
          <<
            {
              
            } \\ {
              \myDrumVoiceBassQuarters
            }
          >>
          <<
            {
              r2 \myDrumVoiceFillTwoCounts
            } \\ {
              \myDrumVoiceBassQuarters
            }
          >>
        }
        
        \mark "Interlude"
        \repeat volta 2 {
          \myIntroPatternFirstTwoBars
        }
        \alternative {
          {
            \myIntroPatternLastTwoBars
          }
          {
          <<
            {
              <cymc sn>8->\< sn sn sn sn sn sn sn 
            } \\ {
              \myDrumVoiceBassQuarters
            }
          >>
          <<
            {
              sn8 sn sn sn sn sn sn4\!
            } \\ {
              \myDrumVoiceBassQuarters
            }
          >>
          }
        }
        
        \break
        \mark "C1"
        \repeat volta 2
        \repeat percent 4
        <<
          {
            \myDrumVoiceCrashQuartersSnareTwoAndFour
          } \\ {
            \myDrumVoiceBassQuarters
          }
        >>
        \repeat volta 2 {
          <<
            {
              cymc4 <cymc sn> cymc r8 <cymc sn>
            } \\ {
              \myDrumVoiceBassQuarters
            }
          >>
          \repeat percent 3
          <<
            {
              \myDrumVoiceCrashQuartersSnareTwoAndFour
            } \\ {
              \myDrumVoiceBassQuarters
            }
          >>
        }
        
        \mark "Bridge1"
        \repeat volta 2
        \repeat percent 2
        <<
          {
            \myBridgePatternVoice
          } \\ {
            \repeat unfold 2 { bd4 r2. }
          }
        >>
        
        \repeat volta 2
        \repeat percent 2
        \repeat unfold 2
        <<
          {
            \myDrumVoiceFillFourCounts
          } \\ {
            \myDrumVoiceBassQuarters
          }
        >>
        
        \repeat volta 2
        \repeat percent 2
        \repeat unfold 2
        <<
          {
            \myDrumVoiceFillFourCounts
          } \\ {
            \myDrumVoiceBassEigths
          }
        >>
        
        \break
        \mark "Bridge2"
        \repeat volta 2
        R1*3
        \alternative
        {
          R1
          <<
            {
              r2 cymc2:32 ~
            } \\ {
              
            }
          >>
        }
        
        \repeat percent 3
        <<
          {
            cymr8\pp \repeat unfold 7 cymr
          } \\ {
            
          }
        >>
        <<
          {
            \repeat unfold 6 cymr8 <cymr toml> cymr
          } \\ {
            
          }
        >>
        
        \repeat volta 2
        \repeat percent 4
        <<
          {
            \repeat unfold 8 cymr8
          } \\ {
            bd4 r2.
          }
        >>
        
        \repeat volta 2
        \repeat percent 2
        <<
          {
            \repeat unfold 2 { cymr8 cymr cymc cymr cymr cymr cymc cymr }
          } \\ {
            bd4 bd r4 bd
            r4 bd r bd
          }
        >>
        
        \repeat volta 2
        \repeat percent 4
        <<
          {
            \repeat unfold 4 { cymc8 cymr }
          } \\ {
            \myDrumVoiceBassQuarters
          }
        >>
        
        <<
          {
            \repeat unfold 4 { cymc8 cymr }
          } \\ {
            \myDrumVoiceBassQuarters
          }
        >>
        <<
          {
            cymc cymr cymc cymr cymc cymr <cymc sn> cymr
          } \\ {
            bd4 bd bd8 bd r bd
          }
        >>
        <<
          {
            \myDrumVoiceCrashEigthsSnareTwoAndFour
          } \\ {
            bd8 bd r bd bd bd r bd
          }
        >>
        <<
          {
            \repeat unfold 8 cymc8
          } \\ {
            \repeat unfold 4 bd8 \repeat unfold 8 bd16
          }
        >>
        
        \break
        \mark "Bridge3"
        \repeat volta 2 {
          \repeat percent 2
          <<
            {
              \repeat unfold 2 { cymc8 cymr <cymc sn> cymr }
            } \\ {
              bd8 bd r4 bd8 bd r
            }
          >>
        }
        \alternative {
          {
          \repeat percent 2
            <<
              {
                \repeat unfold 2 { cymc8 cymr <cymc sn> cymr }
              } \\ {
                bd8 bd r4 bd8 bd r
              }
            >>
          }
          {
            <<
              {
                cymc8 cymr <cymc sn> cymr cymc cymr <cymc sn> <cymr sn>16 cymc16 
              } \\ {
                bd8 bd r4 bd8 bd r8. bd16
              }
            >>
            <<
              {
                r16 sn cymc8 <cymc sn> <cymc sn> \myDrumVoiceFillTwoCounts
              } \\ {
                r8 bd r4
              }
            >>
          }
        }
        
        \repeat volta 2 {
          \repeat percent 2
          <<
            {
              \repeat unfold 2 { cymc8 cymr <cymc sn> cymr }
            } \\ {
              bd8 bd r4 bd8 bd r
            }
          >>
        }
        \alternative {
          {
          \repeat percent 2
            <<
              {
                \repeat unfold 2 { cymc8 cymr <cymc sn> cymr }
              } \\ {
                bd8 bd r4 bd8 bd r
              }
            >>
          }
          {
            <<
              {
                cymc8 cymr <cymc sn> <cymc sn>16 cymc16 r sn cymc8 \myDrumVoiceFillOneCount 
              } \\ {
                bd8 bd r8. bd16 r8 bd
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
        
        \repeat percent 3
        <<
          {
            cymc1
          } \\ {
            bd1
          }
        >>
        R1
        
        R1*8
        
        \mark "Fine"
      }
    >>
  >>
}