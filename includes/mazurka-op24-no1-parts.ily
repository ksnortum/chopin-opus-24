%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . -1) (0 . 0) (0 . 0) (0 . -0.75)) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 2.5))
                        ) \etc
slurShapeC = \shape #'((0 . 0) (0 . 0) (0 . 0) (-0.75 . 0.5)) \etc
slurShapeD = \shape #'((0 . 0) (0 . -1) (0 . -1) (0 . 0)) \etc
slurShapeE = \shape #'((0 . 0) (0 . 0) (0 . 0.5) (-0.5 . 0.5)) Slur
slurShapeF = \shape #'((0 . 0) (0 . 0) (0 . 2) (0 . 3)) \etc
slurShapeG = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 0)) \etc
slurShapeH = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 3) (0 . 3) (0 . 3) (0 . 3))
                        ) \etc
slurShapeI = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (-0.25 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeJ = \shape #'((0 . 0.25) (0 . 0.25) (-0.25 . 0.25) (-0.25 . 0)) Slur
slurShapeK = \shape #'((0 . -1.5) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeL = \shape #'((0 . 0) (0.5 . 0) (0.25 . 0) (0 . 1)) \etc

%%% Music %%%

global = {
  \time 3/4
  \key g \minor
}

rightHandUpper = \relative {
  \partial 4 a'4~ |
  \repeat volta 2 {
    a8[ r16 fs] d4-.( fs-. |
    g2-> a8 bf |
    c8[r16 d] ef4) fs->-\slurShapeA ( |
    \voiceOne g8 d4.) f4\rest |
    s2. |
    s2 \oneVoice d8.( cs16 |
    bf8[ r16 a] g4-. fs-. |
    \acciaccatura { fs8 } d2->) a'4->~( |
    
    \barNumberCheck 9
    % like 1
    a8 fs d4) \voiceOne bf'8.( a16 |
    \oneVoice g2-> a8 bf |
    c8[ r16 d] ef4) fs->-\slurShapeB ( |
    \voiceOne g8 d4.) f4\rest |
    s2. |
    s2 \oneVoice d8.( cs16 |
    bf8) a-\slurShapeD ( g4-. fs-. |
    \acciaccatura { \slurShapeE fs8 } d2.->
    
    \barNumberCheck 17
    f!4-.)^\dolce \tuplet 3/2 { g8->( a g } f4-.) |
    \tuplet 3/2 { g8->( a g } f4-.) g'4-> |
    \tuplet 3/2 { f8( g f } e4.-> ef8) |
    \tuplet 3/2 { ef8-\slurShapeF ( f ef } d2-> |
    f,4-.) \tuplet 3/2 { g8->( a g } f4-.) |
    \tuplet 3/2 { g8->( a g } f4-.) ef'->-\slurShapeG ( |
    \tuplet 3/2 { d8 ef d } cs4.-> c8) |
    \tuplet 3/2 { c8( d c } bf4-.) a8->( g |
    
    \barNumberCheck 25
    % like 17
    f4-.) \tuplet 3/2 { g8->( a g } f4-.) |
    \tuplet 3/2 { g8->( a g } f4-.) g'4-> |
    \tuplet 3/2 { f8( g f } e4.-> ef8) |
    \tuplet 3/2 { ef8-\slurShapeH ( f ef } d2-> |
    f,4-.) \tuplet 3/2 { g8->( a g } f4-.) |
    \tuplet 3/2 { g8->( a g } f4-.) ef'-> |
    \tuplet 3/2 { d8( ef d) } cs4.->( c8) |
    \alternative {
      \volta 1 {
        \tuplet 3/2 { c8( d c) } b4.->( bf8) |
      }
      \volta 2 {
        \tuplet 3/2 { c8( d c } bf4.) b8-\slurShapeI ( |
      }
    }
  } % repeat volta
  
  \barNumberCheck 34
  \key ef \major 
  \stemUp <af c>8[->)^\conAmina r16 <g bf!>]( <f af>4.) <af c>8( |
  q8[->) r16 <g bf>]( <ef g>4.) <af c>8( |
  q8[->) r16 <g bf>]( <f af>4.) <af c>8( |
  q8[->)( r16 <g bf>] \stemNeutral <g ef'>4-.) <g g'>-> |
  \voiceOne f'8.( ef16 c4 ef |
  f8[) r16 ef]( c4 ef) |
  \oneVoice \stemUp <af, c>8.( <g bf>16 <f af>4. <af c>8 |
  q8.-> <g bf>16 <ef g>2) |
  
  \barNumberCheck 42
  \acciaccatura { \slurShapeJ d8 } <af' c>8[-> r16 <g bf>]( <f af>4.) 
    <af c>8( |
  q8[->) r16 <g bf>]( <ef g>4.->) <g bf>8( |
  \grace { q16 d' } <af c>8[->) r16 <g bf>]( <f af>4.) <af c>8( |
  q8[->)( r16 <g bf>] \stemNeutral <g ef'>4-.) <g g'>-> |
  \voiceOne f'8.( ef16 c4 ef |
  f8[) r16 ef]( c4 ef |
  \oneVoice \stemUp <af, c>8. <g bf>16 <f af>4.) <af c>8^\rit |
  \voiceOne c8. bf16 g2->( | 
  \bar "||"
  
  \barNumberCheck 50
  \key bf \major 
  % like 1
  a8[)^\aTempo r16 fs]( d!4 fs) |
  g2->( \oneVoice a8 bf |
  c8[r16 d] ef4) fs->-\slurShapeA ( |
  \voiceOne g8 d4.) f4\rest |
  s2. |
  s2 \oneVoice d8.( cs16 |
  bf8-. a-. g4-. fs-.-> |
  \acciaccatura { fs8 } d2->) a'4->~ |
  
  \barNumberCheck 58
  \semprePiuP a8[\startTextSpan r16 fs( cs8 d <fs bf>8. a16] |
  g2->) \oneVoice a8( bf |
  c8[r16 d] ef4) fs->-\slurShapeA ( |
  \voiceOne g8 d4.) f4\rest |
  s2 s4\stopTextSpan |
  s4. \oneVoice d8[-\slurShapeK ( \grace { d16 f! } ef8) r16 d]( |
  cs8 d a4 bf8 a |
  g4 g') r |
  \bar "|."
}

rightHandLower = \relative {
  \partial 4 s4 |
  \repeat volta 2 {
    s2. * 3 |
    \voiceFour bf'2.( |
    \oneVoice a8[-.) r16 fs]( d4 fs |
    g2->) s4 |
    s2. * 2 |
    
    \barNumberCheck 9
    % like 1
    s2 \voiceFour fs4 |
    s2. * 2 |
    bf2.( |
    \oneVoice a8[-.) r16 fs]-\slurShapeC ( d4 fs |
    g2->) s4 |
    s2. * 2 |
    
    \barNumberCheck 17
    s2. * 8 |
    
    \barNumberCheck 25
    s2. * 7 |
    \alternative {
      \volta 1 {
        s2. |
      }
      \volta 2 {
        s2. |
      }
    }
  } % repeat volta
  
  \barNumberCheck 34
  s2. * 4 |
  \voiceFour af4 af g |
  af8 r af4 g |
  s2. * 2 |
  
  \barNumberCheck 42
  s2. * 4 |
  \voiceFour af4 af g |
  af8 r af4 g |
  s2. |
  <df g>4 df cs |
  
  \barNumberCheck 50
  \key bf \major
  % like 1
  c!4( c c |
  bf4) s2 |
  s2. |
  \voiceFour bf'2.( |
  \oneVoice a8[) r16 fs]( d4 fs |
  % g, not ef, SrcB
  g2->) s4 |
  s2. * 2 |
  
  \barNumberCheck 58
  s4. \voiceFour d |
  s2. * 2 |
  bf'2.( |
  \oneVoice a8[) r16 fs]( d4 fs |
  g4.->)^\rit s |
  s2. * 2 |
}

rightHand = {
  \global
  \mergeDifferentlyDottedOn
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHand = \relative {
  \global
  \clef bass
  \partial 4 r4 |
  \repeat volta 2 {
    d,4-. <d' a' c> <d a' c d> |
    g,4-. <g' bf d> q |
    r4 \clef treble <g c ef g>( <g c ef a>) |
    r4 \clef bass <g d'>-.( q-.) |
    d,4-. <d' a' c> <d a' c d> |
    g,4-. <g' bf d> q |
    r4 <d g bf e>( <d a' cs>) |
    r4 <d a'>-.( q-.) |
    
    \barNumberCheck 9
    % like 1
    d,4-. <d' a' c!> <d a' c d> |
    g,4-. <g' bf d> q |
    r4 \clef treble <g c ef g>( <g c ef a>) |
    r4 \clef bass <g d'>-.( q-.) |
    d,4-. <d' a' c> <d a' c d> |
    g,4-. <g' bf d> q |
    r4 <d g bf e>( <d a' cs>) |
    r4 <d a'>-.( q-.) |
    
    \barNumberCheck 17
    f,4-.( <f' bf ef> <f a ef'> |
    <f bf ef>4 <f a ef'>) r |
    f,4-. <c'' ef! a> q |
    bf,4 \clef treble <f' bf d bf'>\arpeggio r |
    \clef bass f,4->( <f' bf ef> <f a ef'> |
    <f bf ef>4 <f a ef'>) <f a g'>(\> |
    <f a f'>4 <f a e'> <f a ef'>)\! |
    bf,4-. <f' bf d> q |
    
    \barNumberCheck 25
    % like 17
    f,4-.( <f' bf ef> <f a ef'> |
    <f bf ef>4 <f a ef'> q) |
    f,4-. <c'' ef! a> q |
    bf,4 \clef treble <f' bf d f bf>\arpeggio r |
    \clef bass f,4->( <f' bf ef> <f a ef'> |
    <f bf ef>4 <f a ef'>) <f a g'>(\> |
    <f a f'>4 <f a e'> <f a ef'>)\! |
    \alternative {
      \volta 1 {
        bf,4-. <fs' d'>( <g d'>) |
      }
      \volta 2 {
        bf,4-. <f' d'> q |
      }
    }
  } % repeat volta
  
  \barNumberCheck 34
  \key ef \major
  % first beat, bf an octave lower, SrcB
  bf,,4-. <f'' bf d> q |
  ef,4-. <g' bf> <g bf ef> |
  bf,4-. <f' bf d> q |
  ef,4-. <ef' bf' ef> <ef b' ef> |
  <ef c' ef>4 q <ef bf'! ef> |
  <ef c' ef>8 r q4 <ef bf' ef> |
  <ef bf' d>4 q q |
  ef,4-. <g' bf> q |
  
  \barNumberCheck 42
  % like 34
  bf,4-. <f' bf d> q |
  ef,4-. <g' bf> <g bf ef> |
  bf,4-. <f' bf d> q |
  ef,4-. <ef' bf' ef> <ef b' ef> |
  <ef c' ef>4 q <ef bf'! ef> |
  <ef c' ef>8 r q4 <ef bf' ef> |
  <ef bf' d>4 q q |
  ef,4-. <ef' bf'> <ef af> |
  
  \barNumberCheck 50
  \key bf \major 
  % like 1
  d,4-. <d' a'> q |
  g,4-. <g' bf d> q |
  r4 \clef treble <g c ef g>( <g c ef a>) |
  r4 \clef bass <g d'>-.( q-.) |
  d,4-. <d' a' c> <d a' c d> |
  g,4-. <g' bf d> q |
  r4 <d g bf e>( <d a' cs>) |
  r4 <d a'>-.( q-.) |
  
  \barNumberCheck 58
  d,4-. <d' a'> <d a' c!> |
  g,4-. <g' bf d> q |
  r4 \clef treble <g c ef g>( <g c ef a>) |
  r4 \clef bass <g d'>-.( q-.) |
  d,4-. <d' a' c> q |
  g,4-. <d' bf'> r |
  d,4-. <d' fs! c'> q |
  <g, d' bf'>4\arpeggio-\slurShapeL ( g,) r |
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \override DynamicTextSpanner.style = #'none
  \partial 4 \tag layout { s4 } \tag midi { s4\p } |
  \repeat volta 2 {
    s2.^\rubato |
    s2.\< |
    s4 s2\! |
    s2. * 5 |
    
    \barNumberCheck 9
    s2. * 8 |
    
    \barNumberCheck 17
    s2.\sf |
    s2. * 3 |
    s2.\sf |
    s2. * 3 |
    
    \barNumberCheck 25
    % like 17
    s2.\sf |
    s2. * 3 |
    s2.\sf |
    s2. * 2 |
    \alternative {
      \volta 1 {
        s2. |
      }
      \volta 2 {
        s2. |
      }
    }
  } % repeat volta
  
  \barNumberCheck 34
  \tag layout { s2. } \tag midi { s2.\mf } |
  s2. * 2 |
  s4 s2\cresc |
  s2\< s4\! |
  s4 s\p\< s\! |
  s4\> s2\! |
  s2. |
  
  \barNumberCheck 42
  s2. * 3 |
  s4 s2\cresc |
  s2\< s4\! |
  s4 s\p\< s\! |
  s4\> s2\! |
  s4 s2\dim |
  
  \barNumberCheck 50
  s2.\! |
  s4 s2\< |
  s4 s2\! |
  s2. * 2 |
  s2 s4\> |
  s8 s\! s2 |
  s2. |
  
  \barNumberCheck 58
  \tag layout { s2. } \tag midi { s2.\p } |
  s2 s4\< |
  s4 s\! s |
  s2. * 2 |
  s4. s4\> s16 s\! |
  s2 s8\> s\! |
  s2.\pp |
}

tempi = {
  \tempo "Lento" 4 = 108
  \partial 4 s4 |
  \set Score.tempoHideNote = ##t
  \repeat volta 2 {
    s2. * 8 |
    
    \barNumberCheck 9
    s2. * 8 |
    
    \barNumberCheck 17
    s2. * 8 |
    
    \barNumberCheck 25
    s2. * 7 |
    \alternative {
      \volta 1 {
        s2. |
      }
      \volta 2 {
        s2. |
      }
    }
  } % repeat volta
  
  \barNumberCheck 34
  \tempo 4 = 120
  s2. * 8 |
  
  \barNumberCheck 42
  s2. * 6 |
  s2 \tempo 4 = 112 s4 |
  \tempo 4 = 104
  s4 \tempo 4 = 96 s \tempo 4 = 88 s |
  
  \barNumberCheck 50
  \tempo 4 = 108
  s2. * 8 |
  
  \barNumberCheck 58
  s2. * 5 |
  \tempo 4 = 104
  s2. |
  \tempo 4 = 100
  s2. |
  \tempo 4 = 96
  s2. |
}

pedal = {
  \partial 4 s4 |
  \repeat volta 2 {
    s2-\tweak Y-offset -1 \sd s8 s\su |
    s2\sd s8 s\su |
    s2. * 2 |
    s2-\tweak Y-offset -1 \sd s8 s\su |
    s2\sd s8 s\su |
    s2. * 2 |
    
    \barNumberCheck 9
    % like 1
    s2-\tweak Y-offset -1 \sd s8 s\su |
    s2\sd s8 s\su |
    s2. * 2 |
    s2-\tweak Y-offset -1 \sd s8 s\su |
    s2\sd s8 s\su |
    s2. * 2 |
    
    \barNumberCheck 17
    s2\sd s4\su |
    s2. |
    s2-\tweak Y-offset -0.5 \sd s8 s\su |
    s2\sd s4\su |
    s2-\tweak Y-offset -1 \sd s4\su |
    s2. * 2 |
    s2\sd s8 s\su |
    
    \barNumberCheck 25
    % like 17
    s2-\tweak Y-offset -1 \sd s4\su |
    s2. |
    s2-\tweak Y-offset -1 \sd s8 s\su |
    s2\sd s4\su |
    s2-\tweak Y-offset -1 \sd s4\su |
    s2. * 2 |
    \alternative {
      \volta 1 {
        s4\sd s2\su |
      }
      \volta 2 {
        s2\sd s4\su |
      }
    }
  } % repeat volta
  
  \barNumberCheck 34
  s2-\tweak Y-offset -1.5 \sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s4.\sd s\su |
  s2. * 3 |
  s2-\tweak Y-offset -0.75 \sd s8 s\su |
  
  \barNumberCheck 42
  % like 17
  s2\sd s8 s\su |
  s2-\tweak Y-offset -0.75 \sd s8 s\su |
  s2\sd s8 s\su |
  s4.-\tweak Y-offset -0.75 \sd s\su |
  s2. * 3 |
  s4.\sd s\su |
  
  \barNumberCheck 50
  s2. * 4 |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2\sd s8 s\su |
  s2. * 2 |
  
  \barNumberCheck 58
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2\sd s8 s\su |
  s2. * 2 |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2\sd s4\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2-\tweak Y-offset -1 \sd s4\su |
}

forceBreaks = {
  % page 1
  \partial 4 s4 |
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\pageBreak
  
  % page 2
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
}

mazurkaOneNotes =
\score {
  \header {
    title = "Mazurka One"
    composer = "Frédéric Chopin"
    opus = "Opus 24, No. 1"
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

mazurkaOneMidi =
\book {
  \bookOutputName "mazurka-op24-no1"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
