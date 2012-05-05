\version "2.14.2"

\include "english.ly"

\paper {
  paper-height = 8.5\in
  paper-width = 11\in
  indent = #0
  page-count = 1
}

\layout {
  #(layout-set-staff-size 16)
}

% Commonly used voices

myDrumVoiceHiHatEigthsSnareTwoAndFour = \drummode {
  hh8 hh <hh sn> hh hh hh <hh sn> hh
}

myDrumVoiceRideEigthsSnareTwoAndFour = \drummode {
  cymr8 cymr <cymr sn> cymr cymr cymr <cymr sn> cymr
}

myDrumVoiceHiHatOpenEigthsSnareTwoAndFour = \drummode {
  hho8 hho <hho sn> hho hho hho <hho sn> hho
}

myDrumVoiceCrashEigthsSnareTwoAndFour = \drummode {
  \repeat unfold 2 { cymc8 cymc <cymc sn> cymc }
}

myDrumVoiceCrashQuartersSnareTwoAndFour = \drummode {
  cymc4 <cymc sn> cymc <cymc sn>
}

myDrumVoiceBassQuarters = \drummode {
  \repeat unfold 4 bd4
}

myDrumVoiceBassEigths = \drummode {
  \repeat unfold 8 bd8
}

% Fills

pushSlash = {
  \override NoteHead #'style = #'slash
  \override Stem #'transparent = ##t
}

popSlash = {
  \revert NoteHead #'style
  \revert Stem #'transparent
}

myDrumVoiceFillOneCount = \drummode {
  \pushSlash sn4 \popSlash
}

myDrumVoiceFillTwoCounts = \drummode {
  \pushSlash sn4 sn \popSlash
}

myDrumVoiceFillThreeCounts = \drummode {
  \pushSlash sn4 sn sn \popSlash
}

myDrumVoiceFillFourCounts = \drummode {
  \pushSlash sn4 sn sn sn \popSlash
}

% special shorthand

myDrumVoicePreviousPatternMeasure = \drummode {
   \pushSlash sn1 \popSlash 
}