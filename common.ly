\version "2.14.2"

\include "english.ly"

\paper {
  paper-height = 8.5\in
  paper-width = 11\in
  indent = #0
  page-count = 1
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

myDrumVoiceBassQuarters = \drummode {
  bd4 bd bd bd
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

myDrumVoiceFillOneCount = {
  \pushSlash d4 \popSlash
}

myDrumVoiceFillTwoCounts = {
  \pushSlash d4 d \popSlash
}

myDrumVoiceFillThreeCounts = {
  \pushSlash d4 d d \popSlash
}

myDrumVoiceFillFourCounts = {
  \pushSlash d4 d d d \popSlash
}