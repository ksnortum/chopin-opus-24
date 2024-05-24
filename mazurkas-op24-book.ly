%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"

\include "includes/header-paper.ily"
\include "includes/title-page.ily"
\include "includes/mazurka-op24-no1-parts.ily"
\include "includes/mazurka-op24-no2-parts.ily"
\include "includes/mazurka-op24-no3-parts.ily"
\include "includes/mazurka-op24-no4-parts.ily"

% Title page

\titlePage

% Table of contents

\bookpart {
  \header {
    title = ##f
    subtitle = ##f
    composer = ##f
    arranger = ##f
    copyright = ##f
    tagline = ##f
  }
  \markuplist \table-of-contents
}

% PDF

\tocItem \markup "No. 1, Lento in G minor"
\mazurkaOneNotes
\pageBreak

\tocItem \markup "No. 2, Allegro non troppo in C major"
\mazurkaTwoNotes
\pageBreak

\tocItem \markup \concat { 
  "No. 3, Moderato in A" \raise #0.75 \teeny \flat " major" 
}
\mazurkaThreeNotes
\pageBreak

\tocItem \markup \concat { 
  "No. 4, Moderato in B" \raise #0.75 \teeny \flat " minor" 
}
\mazurkaFourNotes

% Midi

\mazurkaOneMidi
\mazurkaTwoMidi
\mazurkaThreeMidi
\mazurkaFourMidi
