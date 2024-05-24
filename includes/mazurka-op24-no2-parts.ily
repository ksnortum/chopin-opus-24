%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

% Supress cyclic dependency warnings six times
% #(ly:expect-warning-times 6 "cyclic dependency: calculation-in-progress")

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -1)) \etc
slurShapeB = \shape #'((0 . 2) (0 . 1.5) (0 . 0) (0 . 0)) \etc
slurShapeC = \shape #'((0 . -0.5) (0 . 0) (0 . 0) (0 . -0.5)) \etc
slurShapeD = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (-0.25 . 0))
                        ((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))
                        ) \etc
slurShapeE = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 4) (0 . 4) (0 . 4) (0 . 4))
                        ) \etc
slurShapeF = \shape #'((0 . 0) (0 . 0) (0 . 2) (0 . 3)) \etc
slurShapeG = \shape #'((0 . 0) (0 . 0.5) (0 . 2) (0 . 2.5)) \etc
slurShapeH = \shape #'(
                        ((0 . 3) (0 . 3) (0 . 3) (0 . 3))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeI = \shape #'((0 . 0) (0 . 1) (0 . 2) (0 . 2.5)) \etc
slurShapeJ = \shape #'((0 . 3) (0 . 3) (0 . 3) (0 . 3)) \etc
slurShapeK = \shape #'(
                        ((0 . 2) (0 . 2) (0 . 1) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeL = \shape #'((0 . 0) (0 . 0) (0 . 2) (0 . 2.5)) \etc
slurShapeM = \shape #'((0 . 0) (0 . 1) (0 . 2) (0 . 2.5)) \etc
slurShapeN = \shape #'((0 . 0) (0 . 1) (0 . 2) (0 . 2.5)) \etc
slurShapeO = \shape #'((0 . 3) (0 . 3) (0.5 . 2.5) (0 . 2.5)) \etc


moveTextA = 
  \tweak X-offset -0.5
  \tweak Y-offset 3.5
  \etc

%%% Music %%%

global = {
  \time 3/4
  \key c \major
}

rightHandUpper = \relative {
  <c' e>4(^\legato <b g'> <c e> |
  <b g'>4 <c e> <b g'> |
  <c e>4 <b g'> <c e> |
  <b g'>4 <c e> <b g'>) |
  \bar "||"
  c'8( c' \tuplet 3/2 { b c b } a f |
  d8-. d-. \acciaccatura { e } d4-.) c-> |
  a8( a' \tuplet 3/2 { g a g } f d |
  b-. b-. \acciaccatura { c } b4-.) a-> |
  
  \barNumberCheck 9
  c8( c' \slashedGrace { b } b4-\underSlurOne \trill a8 f |
  d8-. d-. \acciaccatura { e } d4-.) c-> |
  a8( a' \slashedGrace { g } g4-\underSlurOne \trill f8 d |
  b8-. b-. \acciaccatura { c } b4-.) \voiceOne a->-\slurShapeO ( |
  b4) b8( c d4 |
  b4-.) b8( c d4) |
  f8( e d4) g,8-\slurShapeA ( e' |
  \oneVoice <e, c'>4) q-. \voiceOne q->( |
  
  \barNumberCheck 17
  b'4) b8( c d4) |
  b8( c b c d4) |
  f8( e d4) g,8-\slurShapeA ( e' |
  \oneVoice <e, c'>4) q-. q->-\slurShapeB (~ |
  c'8 f a4) c-> |
  d8( e \tuplet 3/2 { f g f } e d) |
  c8( c g4) f8( g |
  a2 f4) |
  
  \barNumberCheck 25
  c8( f a4) c8( f |
  a4 g8-. f-. e-. d-.) |
  \tuplet 3/2 { c8( d c } g4-.) g8(^\rit b |
  a2 f4) |
  c8(^\rubato f a4) c-> |
  d8( e \tuplet 3/2 { f g f } e d |
  \tuplet 3/2 { e8 d c } g4) f8( g |
  a2 f4) |
  
  \barNumberCheck 33
  c8( f g a c f |
  g8 a g f e d) |
  \tuplet 3/2 { c8( d c } g4-.) g8(^\rit b |
  a2 f4) |
  % like 5
  c8(^\aTempo c' \tuplet 3/2 { b c b } a f |
  d8-. d-. \acciaccatura { e } d4-.) c-> |
  a8( a' \tuplet 3/2 { g a g } f d |
  b-. b-. \acciaccatura { c } b4-.) a-> |
  
  \barNumberCheck 41
  % like 9
  c8( c') \slashedGrace { b } b4(\trill a8 f |
  d8-. d-. \acciaccatura { e } d4-.) c-> |
  a8( a') \slashedGrace { g } g4(\trill f8 d |
  b8-. b-. \acciaccatura { c } b4-.) \voiceOne a->( |
  % like 13
  b4) b8( c d4 |
  b4-.) b8( c d4) |
  f8( e d4) g,8-\slurShapeA ( e' |
  \oneVoice <e, c'>4) q-. \voiceOne q->( |
  
  \barNumberCheck 49
  % like 17
  b'4) b8( c d4) |
  b8( c b c d4) |
  f8( e d4) g,8-\slurShapeA ( e' |
  \oneVoice <e, c'>4) q-. q-> |
  c'4-.-\slurShapeC ( c-. c->~ |
  <e, c'>4-. q-. q~ |
  c'4-. c-.-> <e, c'> |
  q4^\rit c') c->-\slurShapeD ( |
  \bar "||"
  
  \barNumberCheck 57
  \key df \major 
  <c, gf'>4)^\aTempo q-. \appoggiatura { gf'16 af } <c, gf'>4-> |
  f8( af df4) f-\slurShapeF ( |
  ef8 df bf4-. gf-.) |
  f8( af df4) af'->-\slurShapeG ( |
  <c,, gf'>4) q-. \appoggiatura { gf'16 af } <c, gf'>4-> |
  f8( af df4) f->( |
  ef8 df bf4) ef,-\slurShapeH ( |
  af8 c ef4) af->-\slurShapeI ( |
  
  \barNumberCheck 65
  % like 57
  <c,, gf'>4) q-. \appoggiatura { gf'16 af } <c, gf'>4-> |
  f8( af df4) f-\slurShapeF ( |
  ef8 df bf4-. gf-.) |
  f8( af df4) af'->-\slurShapeI ( |
  <c,, gf'>4) q-. \appoggiatura { gf'16 af } <c, gf'>4->-\slurShapeJ ^( |
  f4) <f df'>-\slurShapeK ( <af df> |
  <g df'>4 q q |
  <af c>4 q) c( |
  
  \barNumberCheck 73
  <af ef'>4 q q |
  q4 q q) |
  <af d>( <bf d> <cf d> |
  <bf ef> <gf ef'> <bf ef>) |
  % like 73
  <af ef'>4( q q |
  q4 q q) |
  <af d>( <bf d> <cf d> |
  <bf ef> <gf ef'> <bf ef>) |
  
  \barNumberCheck 81
  % like 77
  <af ef'>4( q q |
  q4 q q) |
  <af d>( <bf d> <cf d> |
  <bf ef> <gf ef'> <bf ef>) |
  <af ef'>4( q q |
  q4^\pocoRit q q) |
  <af d>4( q q |
  <gs d'> q q) |
  \bar "||"
  
  \barNumberCheck 89
  \key c \major 
  % like 37
  c8(^\aTempo c' \tuplet 3/2 { b c b } a f |
  % acciaccatura in SrcB
  d8-. d-. \acciaccatura { e } d4-.) c-> |
  a8( a' \tuplet 3/2 { g a g } f d |
  b-. b-. \acciaccatura { c } b4-.) a-> |
  % like 41
  c8( c') \slashedGrace { b } b4(\trill a8 f |
  d8-. d-. \acciaccatura { e } d4-.) c-> |
  a8( a') \slashedGrace { g } g4(\trill f8 d |
  b8-. b-. \acciaccatura { c } b4-.) \voiceOne a->-\slurShapeO ( |
  
  \barNumberCheck 97
  % like 45
  % SrcA and SrcB differ greatly iin the next eight bars.  I have decided
  % to follow SrcB as it is a variation of the theme.
  b4) b8( c d4) |
  b8( c b c d4) |
  f8( e d4) g,8-\slurShapeA ( e' |
  \oneVoice <e, c'>4) q-. \voiceOne q->( |
  b'4) b8( c d4) |
  b8( c b c d a |
  f'8 e d a g e' |
  \oneVoice <e, c'>4) q-. q-> |
  
  \barNumberCheck 105
  <f a>4( <e c'> <f a> |
  <e c'>4 <f a> <e c'> |
  <f a>4 <e c'> <f a> |
  <e c'>4) r r |
  <c e>4( <b g'> <c e> |
  <b g'>4 <c e> <b g'> |
  <c e>4 <b g'> <c e> |
  <b g'>4) r r |
  
  \barNumberCheck 113
  <f' a>4( <e c'>) r |
  <f a>4( <e c'>) r |
  <f a>4( <e c'> <f a> |
  <e c'>4 <f a>) r |
  <c e>4( <b g'>) r |
  <c e>4( <b g'>) r |
  <c e>4( <b g'> <c e> |
  <b g'>4 <c e>2)\fermata |
  \bar "|."
}

rightHandLower = \relative {
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 4 |
  \voiceFour g'4 g f-> |
  g4 g f-> |
  f4 f f-> |
  s2. |
  
  \barNumberCheck 17
  g4 g f-> |
  g4 g f-> |
  f4 f f-> |
  s2. * 5 |

  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 4 |
  % like 13
  g4 g f-> |
  g4 g f-> |
  f4 f f-> |
  s2. |
  
  \barNumberCheck 49
  g4 g f-> |
  g4 g f-> |
  f4 f f-> |
  s2. * 5 |
  
  \barNumberCheck 57
  s2. * 8 |
  
  \barNumberCheck 65
  s2. * 8 |
  
  \barNumberCheck 73
  s2. * 8 |
  
  \barNumberCheck 81
  s2. * 8 |
  
  \barNumberCheck 89
  s2. * 8 |
  
  \barNumberCheck 97
  % like 45
  g4 g f-> |
  g4 g f-> |
  f4 f f-> |
  s2. |
  g4 g f-> |
  g4 g f-> |
  f4 f f-> |
  s2. |
  
  \barNumberCheck 105
}

rightHand = {
  \global
  % \mergeDifferentlyDottedOn
  % \mergeDifferentlyHeadedOn
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHand = \relative {
  \global
  \clef bass
  <c g'>4( <g d'> <c g'> |
  <g d'>4 <c g'> <g d'> |
  <c g'>4 <g d'> <c g'> |
  <g d'>4 <c g'> <g d'>) |
  % first beat, top note in chord, e in SrcB
  <a' c e>4_\ilBassoSempreLegato <a c f> q |
  <b f'>4 q <c e> |
  <d f>4 <f, a d> q |
  <e d'>4 q <a c> |
  
  \barNumberCheck 9
  <a c e>4 <a c f> q |
  <b f'>4 q <c e> |
  <d f>4 <f, a d> q |
  <e d'>4 q <a c> |
  <g d'>4 q <d a' d> |
  <g d'>4 q <d a' d> |
  q4 q <g b>( |
  <c, g' c>4) q-. q |
  
  \barNumberCheck 17
  <g' d'>4 q <d a' d> |
  <g d'>4 q <d a' d> |
  q4 q <g b>( |
  <c, g' c>4) q-. q |
  f,4-.-\moveTextA ^\dolce <a' c f> q |
  b,4-. <g' d' f> q |
  c,4-. <g' c e> q |
  f4-. <a c f> q |
  
  \barNumberCheck 25
  f,4-. <a' c f> q |
  b,4-. <g' d' f> q |
  c,4-. <g' c e> q |
  f4-. <a c f> q |
  f,4-. <a' c f> q |
  b,4-. <g' d' f> q |
  c,4-. <g' c e> q |
  f4-. <a c f> q |
  
  \barNumberCheck 33
  f,4-. <a' c f> q |
  b,4-. <g' d' f> q |
  c,4-. <g' c e> q |
  f4-. <a c f> q |
  % like 9
  % second beat, top note, f in SrcB
  <a c e>4 <a c f> q |
  <b f'>4 q <c e> |
  <d f>4 <f, a d> q |
  <e d'>4 q <a c> |
  
  \barNumberCheck 41
  % like 9
  <a c e>4 <a c f> q |
  <b f'>4 q <c e> |
  <d f>4 <f, a d> q |
  <e d'>4 q <a c> |
  % like 13
  <g d'>4 q <d a' d> |
  <g d'>4 q <d a' d> |
  q4 q <g b>( |
  <c, g' c>4) q-. q |
  
  \barNumberCheck 49
  <g' d'>4 q <d a' d> |
  <g d'>4 q <d a' d> |
  q4 q <g b>( |
  <c, g' c>4) q-. q |
  c'4 c c-> |
  <c, g' c>4 q q |
  c'4 c-> <c, g' c> |
  q4 c' c->-\slurShapeE ( |
  
  \barNumberCheck 57
  \key df \major
  af,,4-.) <af' ef' af> q |
  df,4-. <f' af df> q |
  gf,4-. <gf' bf df> q |
  df,4-. <f' af df> q |
  <af, ef' af>4 q q |
  df,4 <f' af df> q |
  ef,4 <ef' g df'> q |
  af,4 <ef' c'> q |
  
  \barNumberCheck 65
  <af, ef' af>4 q q |
  % like 58
  df,4-. <f' af df> q |
  gf,4-. <gf' bf df> q |
  df,4-. <f' af df> q |
  <af, ef' af>4 q q |
  df8( af' df4) f4-> |
  ef8( df bf4 ef,) |
  af,8( af' ef'4) af( |
  
  \barNumberCheck 73
  f2\> cf4)\! |
  f2(\> cf4)\! |
  f8( cf bf4 af |
  gf8 ef bf'4) gf'( |
  f2\> cf4)\! |
  f2(\> cf4)\! |
  f8( cf bf4 af |
  gf8 f ef4) gf( |
  
  \barNumberCheck 81
  % like 73, octave down
  f2\> cf4)\! |
  f2(\> cf4)\! |
  f8-\slurShapeL ( cf bf4 af |
  gf8 ef bf'4) gf'-\slurShapeM ( |
  f2\> cf4)\! |
  f2-\slurShapeN (\> cf4)\! |
  f'2(\> b,4)\! |
  e2(\> b4)\! |
  
  \barNumberCheck 89
  \key c \major 
  % like 37
  % second beat, top note, f in SrcB
  <a c e>4 <a c f> q |
  <b f'>4 q <c e> |
  <d f>4 <f, a d> q |
  <e d'>4 q <a c> |
  % like 41
  <a c e>4 <a c f> q |
  <b f'>4 q <c e> |
  <d f>4 <f, a d> q |
  <e d'>4 q <a c> |
  
  \barNumberCheck 97
  % like 45
  <g d'>4 q <d a' d> |
  <g d'>4 q <d a' d> |
  q4 q <g b> |
  <c, g' c>4 q-. q |
  <g' d'>4 q <d a' d> |
  <g d'>4 q <d a' d> |
  q4 q <g b> |
  <c, g' c>4 q-. q |
  
  \barNumberCheck 105
  <f c'>4( <c g'> <f c'> |
  <c g'>4 <f c'> <c g'> |
  <f c'>4 <c g'> <f c'> |
  <c g'>4) r r |
  <c g'>4( <g d'> <c g'> |
  <g d'>4 <c g'> <g d'> |
  <c g'>4 <g d'> <c g'> |
  <g d'>4) r r |
  
  \barNumberCheck 113
  <f' c'>4( <c g'>) r |
  <f c'>4( <c g'>) r |
  <f c'>4( <c g'> <f c'> |
  <c g'>4 <f c'>) r |
  <c g'>4( <g d'>) r |
  <c g'>4( <g d'>) r |
  <c g'>4( <g d'> <c g'> |
  <g d'>4 <c g'>2)\fermata |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  s2.^\sottoVoce
  s2. * 7 |
  
  \barNumberCheck 9
  s2. * 4 |
  \tag layout { s2.^\piuF } \tag midi { s2.\f } |
  s2. * 3 |
  
  \barNumberCheck 17
  s2. * 4 |
  s2.\< |
  s8 s\! s s\> s s\! |
  s2 s8\< s\! |
  s4\> s2\! |
  
  \barNumberCheck 25
  s2\< s8 s\! |
  s4 s\> s8 s\! |
  s2 s8\> s8\! |
  s2\> s4\! |
  s2.\< |
  s8 s\! s s\> s s\! |
  s2 s8\< s8\! |
  s2\> s8 s\! |
  
  \barNumberCheck 33
  s2\< s8 s\! |
  s2\> s8 s\! |
  s2 s8\> s\! |
  s2\> s4\! |
  s2. * 4 |
  
  \barNumberCheck 41
  s4 s4\> s8 s\! |
  s2. |
  s4 s4\> s8 s\! |
  s2. |
  \tag layout { s2.^\piuF } \tag midi { s2.\f } |
  s2. * 3 |
  
  \barNumberCheck 49
  s2. * 4 |
  s2.\p |
  s2 s4\sf |
  s2.\p |
  s4 s2\pp |
  
  \barNumberCheck 57
  s2.^\dolce |
  s2.^\sottoVoce |
  s2. * 2 |
  s2.\f |
  s2.\p |
  s2. * 2 |
  
  \barNumberCheck 65
  s2.\f |
  s2.\p |
  s2. * 2 |
  s2.\f |
  \tag layout { s2.^\pSemprePianoELegato } \tag midi { s2.\p }
  s2. * 2 |
  
  \barNumberCheck 73
  s2. * 8 |
  
  \barNumberCheck 81
  s2. * 8 |
  
  \barNumberCheck 89
  s2. * 8 |
  
  \barNumberCheck 97
  s2. * 8 |
  
  \barNumberCheck 105
  s2.^\ppSottoVoce |
}

tempi = {
  \tempo "Allegro non troppo" 4 = 192
  s2. |
  \set Score.tempoHideNote = ##t
  s2. * 7 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 2 |
  s2 \tempo 4 = 176 s4 |
  \tempo 4 = 160
  s4 \tempo 4 = 152 s \tempo 4 = 138 s |
  \tempo 4 = 192
  s2. * 4 |
  
  \barNumberCheck 33
  s2. * 2 |
  s2 \tempo 4 = 176 s4 |
  \tempo 4 = 160
  s4 \tempo 4 = 152 s \tempo 4 = 138 s |
  \tempo 4 = 192
  s2. * 4 |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  s2. * 7 |
  \tempo 4 = 176
  s4 \tempo 4 = 160 s \tempo 4 = 152 s |
  
  \barNumberCheck 57
  \tempo 4 = 192
  s2. * 8 |
  
  \barNumberCheck 65
  s2. * 8 |
  
  \barNumberCheck 73
  s2. * 8 |
  
  \barNumberCheck 81
  s2. * 5 |
  \tempo 4 = 176
  s2. |
  \tempo 4 = 160
  s2. |
  \tempo 4 = 152
  s2. |
  
  \barNumberCheck 89
  \tempo 4 = 192
  s2. * 8 |
  
  \barNumberCheck 97
  s2. * 8 |
  
  \barNumberCheck 105
  s2. * 8 |
  
  \barNumberCheck 113
  s2. * 6 |
  s4 \tempo 4 = 176 s \tempo 4 = 160 s |
  \tempo 4 = 152 
  s \tempo 4 = 80 s2 |
}

pedal = {
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 4 |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 25
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 33
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2. * 4 |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  s2. * 7 |
  s2 s4\sd |

  \barNumberCheck 57
  s2 s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2. |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 65
  s2. |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
}

forceBreaks = {
  % page 1
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\pageBreak
  
  % page 2
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 7 { s2.\noBreak } s2.\pageBreak
  
  % page 3
  \repeat unfold 8 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 7 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 7 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 8 { s2.\noBreak } s2.\break\noPageBreak
}

mazurkaTwoNotes =
\score {
  \header {
    title = "Mazurka Two"
    composer = "Frédéric Chopin"
    opus = "Opus 24, No. 2"
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

mazurkaTwoMidi =
\book {
  \bookOutputName "mazurka-op24-no2"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
