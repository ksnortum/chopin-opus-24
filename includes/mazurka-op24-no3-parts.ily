%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . 2.5) (0 . -9) (0 . -9) (0 . 0)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0.25 . 0) (0 . 0) (0 . 0) (0 . -0.5))
                        ) \etc
slurShapeC = \shape #'((0 . 0) (0 . 0.5) (0 . 1) (0 . 0)) \etc
slurShapeD = \shape #'((0 . 1) (0 . -1) (0 . -1) (0 . 0.25)) \etc
slurShapeE = \shape #'(
                        ((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc

moveDynamicA = \once {
  \override DynamicLineSpanner.outside-staff-priority = ##f
  \override DynamicLineSpanner.Y-offset = -1.5
}

%%% Music %%%

global = {
  \time 3/4
  \key af \major
}

rightHand = \relative {
  \global
  \partial 4 af'4->(^\conAmina |
  g8. f16 ef4. df'8 |
  c8 af \acciaccatura { af } f'4. ef8) |
  g,8.( f16 ef4 df' |
  c8 bf af4.-> g8) |
  f8[-. r16 af] \tuplet 3/2 { af8( bf af) } g8( f) |
  ef8[-. r16 c']( \moveDynamicA af'4.->)\sf\fermata af,8( |
  g8. f16 ef4 df' |
  c8 bf af4.-> g8) |
  
  \barNumberCheck 9
  f8[-. r16 af] \tuplet 3/2 { af8( bf af) } g8( f) |
  ef8[-. r16 c'] \moveDynamicA c'4\sf\fermata( \tuplet 3/2 { bf8 af f } |
  g8 f ef df bf f |
  ef8[) r16 c']( af4) bf8^( af |
  g8. f16 ef4. df'8 |
  c8 af \acciaccatura { af } f'4. ef8) |
  g,8.-\slurShapeB ( f16 ef4 df' |
  c8 bf af4.-> g8) |
  
  \barNumberCheck 17
  f8[-. r16 af] \tuplet 3/2 { af8( bf af) } g8( f) |
  ef8[-. r16 c']( \moveDynamicA af'4.->)\sf\fermata af,8( |
  g8. f16 ef4 df' |
  c8 bf af4.-> g8) |
  f8[-. r16 af] \tuplet 3/2 { af8( bf af) } g8( f) |
  ef8[-. r16 c'] \moveDynamicA c'4\sf\fermata-\slurShapeC ( 
    \tuplet 3/2 { bf8 af f } |
  g8 f ef df bf f |
  ef8[) r16 c']( af4) c( |
  
  \repeat volta 2 {
    \barNumberCheck 25
    d4) ef8( df c4 |
    df8 c bf4 c) |
    d4( ef8 df c4 |
    df8 c bf4 c) |
    bf4( c8 bf af4 |
    bf8 af g4 af |
    g4 af8 g f4 |
    << 
      {
        \voiceFour e8 g c,2)~ | c2.~ | c2.~ | c2. | s2
      } 
      \new Voice { 
        \voiceOne s4 r c'-\slurShapeD ( | c2 c4 | c2 c4 | c2.~ | 
        \oneVoice c2)\fermata
      } 
    >> \oneVoice bf8( af |
    g8. f16 ef4. df'8 |
    c8 af \acciaccatura { af } f'4. ef8) |
    g,8.( f16 ef4 df' |
    c8 bf af4.-> g8 |
    
    \barNumberCheck 41
    f8[-.) r16 af] \tuplet 3/2 { af8( bf af } g8 f |
    ef8[-.) r16 c']( \moveDynamicA af'4.->)\sf\fermata af,8-\slurShapeE ( |
    g8. f16 ef4 df' |
    c8 bf af4.-> g8 |
    f8[-.) r16 af] \tuplet 3/2 { af8( bf af } g8 f |
    ef8[-.) r16 c'] \moveDynamicA c'4\sf\fermata \tuplet 3/2 { bf8( af f) } |
    g8( f ef df bf f) |
    \alternative {
      \volta 1 {
        ef8[ r16 c']( af4) c\laissezVibrer | 
      }
      \volta 2 {
        ef,8-. c'-\slurShapeA ( c' bf af f |
      }
    }
  }
  
  \barNumberCheck 50
  g8 f ef df bf f |
  ef8 c' c' bf af f |
  ef8 c c' bf af f |
  ef8 c c' bf af f |
  ef8 c c' bf af f |
  ef8 c g' f ef af, |
  c2.)\fermata |
  \bar "|."
}

leftHandUpper = \relative {
  \partial 4 s4 |
  s2. * 2 |
  \voiceThree bf8.( af16 g4) s |
  s4 <af c>2 |
  s2. * 2 |
  \voiceThree bf8.( af16 g4) s |
  s4 <af c>2 |
  
  \barNumberCheck 9
  s2. * 3 |
  r4 <ef c'> s4 |
  s2. * 2 |
  \voiceThree bf'8.( af16 g4) s |
  s4 <af c>2 |
  
  \barNumberCheck 17
  s2. * 2 |
  \voiceThree bf8.( af16 g4) s |
  s4 <af c>2 |
  s2. * 3 |
  r4 <ef c'> s4 |

  \repeat volta 2 {
    \barNumberCheck 25
    s2. * 12 |
    \voiceThree bf'8.( af16 g4) s |
    s2. |
    \voiceThree bf8.( af16 g4) s |
    s4 <af c>2 |
    
    \barNumberCheck 41
    s2. * 2 |
    \voiceThree bf8.( af16 g4) s |
    s4 <af c>2 |
    s2. * 3 |
    \alternative {
      \volta 1 {
        r4 <ef c'> s4 |
      }
      \volta 2 {
        s2. |
      }
    }
  }
}

leftHandLower = \relative {
  \partial 4 r4 |
  ef,4-. <ef' g df'> q |
  af,4-. <ef' af c> q |
  \voiceTwo <ef df'>2 ef4 |
  \oneVoice af,4-. \voiceTwo ef'( e) |
  \oneVoice df,4-. <f' af df> r |
  ef,4-. <ef' c' af'>\arpeggio\fermata r |
  \voiceTwo <ef df'>2 ef4 |
  \oneVoice af,4-. \voiceTwo ef'( e) |
  
  \barNumberCheck 9
  \oneVoice df,4-. <f' af df> r |
  ef,4-. <ef' c' af'>\arpeggio\fermata r |
  ef,4-. <ef' g df'> q |
  \voiceTwo af,2*1/2( \hideNoteHead ef'4) \oneVoice r |
  ef,4-. <ef' g df'> q |
  af,4-. <ef' af c> q |
  \voiceTwo <ef df'>2 ef4 |
  \oneVoice af,4-. \voiceTwo ef'( e) |
  
  \barNumberCheck 17
  \oneVoice df,4-. <f' af df> r |
  ef,4-. <ef' c' af'>\arpeggio\fermata r |
  \voiceTwo <ef df'>2 ef4 |
  \oneVoice af,4-. \voiceTwo ef'( e) |
  \oneVoice df,4-. <f' af df> r |
  ef,4-. <ef' c' af'>\arpeggio\fermata r |
  ef,4-. <ef' g df'> q |
  \voiceTwo af,2*1/2( \hideNoteHead ef'4) \clef treble \oneVoice <c' af'^~>4 |

  \repeat volta 2 {
    \barNumberCheck 25
    <b f' af>4( <c ef g>8) r <a ef' gf>4( |
    <bf! df f>8) r <g df' ff>4( <af! c ef> |
    <b f'! af> <c ef g>8) r <a ef' gf>4( |
    <bf! df f>8) r <g df' ff>4( <af! c ef> |
    <g df' ff>4 <af c ef>8) r \clef bass <f cf' d>4( |
    <g bf df!>8) r <e bf' c>4( <f af c> |
    <e bf' c>4 <f af c>8) r <df g b>4 |
    <c g' e'>2.~ |
    q2.~ |
    q2.~ |
    q2. |
    R2.\fermata |
    \voiceTwo <ef df'>2 ef4 |
    \oneVoice af,4 <ef' af c> q |
    \voiceTwo <ef df'>2 ef4 |
    \oneVoice af,4-. \voiceTwo ef'( e) |
    
    \barNumberCheck 41
    \oneVoice df,4-. <f' af df> r |
    ef,4-. <ef' c' af'>\arpeggio\fermata r |
    \voiceTwo <ef df'>2 ef4 |
    \oneVoice af,4-. \voiceTwo ef'( e) |
    \oneVoice df,4-. <f' af df> r |
    ef,4-. <ef' c' af'>\arpeggio\fermata r |
    ef,4-. <ef' g df'> q |
    \alternative {
      \volta 1 {
        \voiceTwo af,2*1/2( \hideNoteHead ef'4) \clef treble \oneVoice 
          <c' af'>4\laissezVibrer \clefInvisible |
      }
      \volta 2 {
        \clef bass af,4 <ef' c'> q |
      }
    }
  }
  
  \barNumberCheck 50
  af,4 <ef' df'> q |
  af,4 <ef' c'> q |
  af,4 <ef' ef'> q |
  af,4 <ef' ef'> q |
  af,4 <ef' ef'> r |
  R2. |
  R2.\fermata |
}

leftHand = {
  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \partial 4 \tag layout { s4 } \tag midi { s4\mf } |
  s4\> s2\! |
  s4 s4.\> s8\! |
  s8.\> s16\! s4 s\> |
  s8 s\! s2 |
  s4 \tuplet 3/2 { s4\> s8\! } s4 |
  s2 s8 s\p |
  s2 s4\> |
  s8 s\! s2 |
  
  \barNumberCheck 9
  s4 \tuplet 3/2 { s4\> s8\! } s4 |
  s2 s4^\dolce |
  s2\> s8 s\! |
  s2. |
  s4\> s2\! |
  s4 s4.\> s8\! |
  s8.\> s16\! s4 s\> |
  s8 s\! s2 |
  
  \barNumberCheck 17
  s4 \tuplet 3/2 { s4\> s8\! } s4 |
  s2 s8 s\p |
  s2 s4\> |
  s8 s\! s2 |
  s4 \tuplet 3/2 { s4\> s8\! } s4 |
  s2 s4^\dolce |
  s2\> s8 s\! |
  s2. |

  \repeat volta 2 {
    \barNumberCheck 25
    s2.^\pLegato |
    s2. * 11 |
    s4\> s2\! |
    s4 s4.\> s8\! |
    s4\> s\! s\> |
    s4 s2\! |
    
    \barNumberCheck 41
    s4 \tuplet 3/2 { s4\> s8\! } s4 |
    s2 s8 s\p |
    s4\> s\! s\> |
    s8 s\! s2 |
    s4 \tuplet 3/2 { s4\> s8\! } s4 |
    s2 s4^\dolce |
    s2\> s8 s\! |
    \alternative {
      \volta 1 {
        s2. |
      }
      \volta 2 {
        s2.^\dolcissimo
      }
    }
  }
  
  \barNumberCheck 50
  s2. * 3 |
  \tag layout { \perdendosi s2.\startTextSpan } \tag midi { s2.\p } |
  \tag layout { s2. } \tag midi { s2.\pp } |
  \tag layout { s2 s8 s\stopTextSpan } \tag midi { s2.\ppp } |
  \tag layout { s2. } \tag midi { s2.\pppp } |
}

tempi = {
  \tempo "Moderato" 4 = 126
  \partial 4 s4 |
  \set Score.tempoHideNote = ##t
  s2. * 5 |
  s4 \tempo 4 = 60 s4. \tempo 4 = 126 s8 |
  s2. * 2 |
  
  \barNumberCheck 9
  s2. |
  s4 \tempo 4 = 60 s \tempo 4 = 126 s |
  s2. * 6 |
  
  \barNumberCheck 17
  s2. |
  s4 \tempo 4 = 60 s4. \tempo 4 = 126 s8 |
  s2. * 3 |
  s4 \tempo 4 = 60 s \tempo 4 = 126 s |
  s2. * 2 |
  
  \repeat volta 2 {
    \barNumberCheck 25
    s2. * 11 |
    \tempo 4 = 60
    s2 \tempo 4 = 126 s4 |
    s2. * 4 |
    
    \barNumberCheck 41
    s2. |
    s4 \tempo 4 = 60 s4. \tempo 4 = 126 s8 |
    s2. * 3 |
    s4 \tempo 4 = 60 s \tempo 4 = 126 s |
    s2. |
    \alternative {
      \volta 1 {
        s2. |
      }
      \volta 2 {
        s2. |
      }
    }
  }
  
  \barNumberCheck 50
  s2. * 4 |
  \tempo 4 = 116
  s2. |
  \tempo 4 = 108
  s2. |
  \tempo 4 = 60
  s2. |
}

pedal = {
  \partial 4 s4 |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2\sd s8 s\su |
  s2. 
  s2\sd s4\su |
  s2-\tweak Y-offset -1 \sd s4\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2. 
  s2\sd s4\su |
  
  \barNumberCheck 9
  s2-\tweak Y-offset -1 \sd s4\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2-\tweak Y-offset -1 \sd s4\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2\sd s8 s\su |
  s2. |
  s2\sd s4\su |
  
  \barNumberCheck 17
  s2-\tweak Y-offset -1 \sd s4\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2. |
  s2\sd s4\su |
  s2-\tweak Y-offset -1 \sd s4\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2-\tweak Y-offset -1 \sd s4\su |

  \repeat volta 2 {
    \barNumberCheck 25
    s2. * 7 |
    s2.\sd |
    s2. * 2 |
    s2 s4\su |
    s2. * 2 |
    s2\sd s8 s\su |
    s2. |
    s2\sd s4\su |
    
    \barNumberCheck 41
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2. |
    s2\sd s4\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    \alternative {
      \volta 1 {
        s2\sd s4\su |
      }
      \volta 2 {
        s2\sd s8 s\su |
      }
    }
  }
  
  \barNumberCheck 50
  s2\sd s8 s\su |
  s2\sd s8 s\su |
}

forceBreaks = {
  % page 1
  \partial 4 s4\noBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\pageBreak
  
  % page 2
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
}

mazurkaThreeNotes =
\score {
  \header {
    title = "Mazurka Three"
    composer = "Frédéric Chopin"
    opus = "Opus 24, No. 3"
  }
  \keepWithTag layout  
  \new PianoStaff <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Dynamics \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

mazurkaThreeMidi =
\book {
  \bookOutputName "mazurka-op24-no3"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
