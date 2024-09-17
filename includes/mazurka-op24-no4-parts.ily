%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'(
                        ((0 . 2) (0 . 2) (0 . 1) (0 . 0))
                        ((0 . 2) (0 . 2) (0 . 2) (0 . 2))
                        ) \etc
slurShapeB = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . -0.5)) \etc
slurShapeC = \shape #'((0 . 0.5) (0 . 1.5) (9 . 1.5) (9 . 0.5)) \etc
slurShapeD = \shape #'((0 . 2.5) (0 . -1) (0 . -1) (0 . 2.5)) \etc
slurShapeE = \shape #'((0 . 0) (0 . 0) (0 . 0.5) (0 . -1)) \etc
slurShapeF = \shape #'(
                        ((0 . 2) (0 . 2) (0 . 2) (0 . 2))
                        ((0 . 0) (0 . 0.5) (0 . 0) (0 . 0))
                        ) \etc
slurShapeG = \shape #'((0 . 1) (0 . 1) (0 . 1) (0 . 1)) \etc
slurShapeH = \shape #'((1 . 0) (1 . 0) (2 . 0) (2 . 0)) \etc
slurShapeI = \shape #'((0 . 0.5) (0 . 0.5) (0 . 0) (0 . 0)) \etc
slurShapeJ = \shape #'(
                        ((0 . 0) (0 . 0.5) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeK = \shape #'((0 . -0.5) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeL = \shape #'((0 . 0) (0 . 1.5) (0 . 2) (0 . 0)) \etc
slurShapeM = \shape #'((0 . 2) (0 . 2) (0 . 2) (0 . 2)) \etc

moveNotesA = \once \override Score.NoteColumn.X-offset = -0.4
moveAccentA = \offset Y-offset -0.5 \etc

%%% Music %%%

global = {
  \time 3/4
  \key bf \minor
}

rightHandUpper = \relative {
  \partial 4 \hideNoteHead \voiceOne f'4( |
  f'2 f4 |
  e2 e4 |
  ef!2 ef4 |
  d2 d4 |
  df!2->)-\slurShapeA ( df4~-> |
  df2) s4 |
  f2( f4~ |
  f2) s4 |
  
  \barNumberCheck 9
  af2( af4~ |
  af2) s4 |
  a2 \oneVoice a,4-> |
  <c c'>4.->( <bf bf'>8 af! gf) |
  \voiceOne df'4.( a8 df a |
  a8. bf16 bf4-.) bf-> |
  f'4.( c8 f c |
  c8. df16 df4-.) df-> |
  
  \barNumberCheck 17
  af'4.( e8 af e |
  e8. f16 f4-.) \oneVoice <f f'>(\ff |
  <af! af'!>8. <gf gf'>16 q4-.) a,4( |
  bf2.)~ |
  \repeat volta 2 {
    bf8[-. r16 <gf af>( c,8 <gf' af>] ef'4->) |
    bf8[-. r16 <f af>( df8 <f af>] f'4->) |
    bf,8[-. r16 <gf af>( c,8 <gf' af>] gf'4->) |
    \acciaccatura { <f, cf' df>8 } bf'4->~ bf8[ r16 af^\scherzando ( cf,8.)
      af'16]( |
      
    \barNumberCheck 25
    bf,8..[) af'32( bf,8..) af'32( bf,8..) gf'32]( |
    bff,8..[) gf'32-\slurShapeB ( af,8..) gf'32-\slurShapeB ( af,8..) f'32]( |
    g,8..[) f'32( gf,8..) f'32-\slurShapeB ( gf,8..) ef'32]( |
    \voiceOne f,8..)( ef'32 \tuplet 3/2 { df8 ef df } c8[ r16. bf32] |
    bf8-.[) r16 <gf af>( c,8 <gf' af>] \oneVoice ef'4->) |
    \voiceOne bf8[-. r16 <f af>( df8 <f af>] \oneVoice f'4->) |
    \voiceOne bf,8[-. r16 <gf af>( c,8 <gf' af>] \oneVoice gf'4->) |
    \acciaccatura { <f, cf' df>8 } bf'4->~ bf8[ r16 af( cf,8.->) af'16]( |
    
    \barNumberCheck 33
    bf,8..[) af'32-\slurShapeB ( bf,8..) af'32-\slurShapeB ( bf,8..) gf'32]( |
    bff,8..[) gf'32-\slurShapeB ( af,8..) gf'32-\slurShapeB ( af,8..) f'32]( |
    g,8..[)^\accel e'32( gf,8..) ef'32-\slurShapeB ( f,8..) d'32]( |
    \stemDown ff,8..[)^\rit df'!32-\slurShapeB ( ef,8..) df'32-\slurShapeB (
      ef,8..) df'32]~ |
    \voiceOne df4.->(^\aTempo a8 df a |
    a8. bf16 bf4-.) bf-> |
    f'4.( c8 f c |
    c8. df16 df4-.) df-> |
    
    \barNumberCheck 41
    af'4.( e8 af e |
    e8. f16 f4-.) \oneVoice <f f'>->-\slurShapeG ~ -\slurShapeH ( |
    q8. <gf gf'>16 q4-.) a,4->( |
    c4. bf8 \tuplet 3/2 { bf af! gf) } |
    \voiceOne df'4.(^\piuAgitatoEStretto a8 df a |
    a8. bf16 bf4-.) \tuplet 3/2 { bf8( c bf) } |
    f'4.( c8 f c |
    c8. df16 df4-.) \tuplet 3/2 { df8( ef df) } |
    
    \barNumberCheck 49
    af'4.( e8 af e |
    e8. f16 f4-.) \oneVoice <f f'>(\ff |
    <af! af'!>8. <gf gf'>16 q4-.) a,4( |
    \alternative {
      {
        bf2.)-\slurShapeC \laissezVibrer |
      }
      {
        bf2\repeatTie f'4~ |
      }
    }
  }
  \repeat volta 2 {
    \barNumberCheck 54
    f4-\slurShapeE (^\legato gf4. df8 |
    e8 c bf4 bf |
    f'8 af gf4 gf8 df |
    e8 c bf2)~ |
    <bf, e bf'>4->-\slurShapeM ^( <a f' a>) q-\slurShapeD ^( |
    <e' c'>8 <bf bf'> <a f' a>4 q) |
    <bf e bf'>4-\slurShapeM ^( <a f' a>) q-\slurShapeF ^( |
    \alternative {
      {
        \voiceOne a'8-> g f2) |
      }
      {
        a8->( g f4) \oneVoice f->~^\conAmina |
      }
    }
  }

  \barNumberCheck 63
  \tuplet 3/2 { f8( gf! f) } ef!( f gf af |
  c8) r bf2->_( |
  af,8[-.) r16 gf']( \tuplet 3/2 { gf8 af gf } f ef |
  f8) r df4-> r |
  \tuplet 3/2 { f8( gf f } ef f gf af |
  cf8) r bff2->_( |
  af,8[-.) r16 gf']( \tuplet 3/2 { gf8 af gf } ff ef |
  ff8-.) r df4-> r4 |
  
  \barNumberCheck 71
  \tuplet 3/2 { gs8( a gs } fs gs a b |
  ds8) r cs2->_( |
  b,8[-.) r16 a']( \tuplet 3/2 { a8 b a } gs fs |
  gs8-.) r e4-> r |
  \tuplet 3/2 { ff8(^\dolcissimo gf! ff } ef! ff gf af |
  cf2 bff4)_( |
  af,8[-.) r16 gf']( \tuplet 3/2 { gf8^\rit af gf } f! ef |
  bf'2-> af4) |
  
  \barNumberCheck 79
  \tuplet 3/2 { f8(^\aTempo gf f } ef f gf af |
  c8-.) r bf2->_( |
  af,8[-.) r16 gf']( \slashedGrace { gf8 } \tuplet 3/2 { gf af gf } f ef |
  f8-.) r df4-> r |
  \tuplet 3/2 { f8( gf f } ef f gf af |
  cf8-.) r bff2->_( |
  af,8[-.) r16 gf']( \slashedGrace { gf8 } \tuplet 3/2 { gf8 af gf } ff ef |
  ff8-.) r df4-> r4 |
  
  \barNumberCheck 87
  \slashedGrace { gs8 } \tuplet 3/2 { gs(^\conForza a gs } fs gs a b |
  ds8-.) r cs2->_( |
  b,8[-.) r16 a']( \slashedGrace { a8 } \tuplet 3/2 { a b a } gs fs |
  gs8-.) r e4-> r |
  \slashedGrace { ff8 } ff4(-\trillUnder\trill^\sottoVoce ef!8 ff gf! af) |
  cf2( bff4)_( |
  af,8[-.) r16 gf']( \tuplet 3/2 { gf8-> af gf } f! ef |
  af,8[-.) r16 <gf' bf>]( \tuplet 3/2 { <gf bf>8-> c bf } <f af> <ef gf> |
  
  \barNumberCheck 95
  af,8[-.) r16 <gf' ef'>] \voiceOne \tuplet 3/2 { ef'8( f ef) } \oneVoice 
    <f, df'>( <ef c'> |
  af,8-.) r16 <bff' gf'>-.( \voiceOne \tuplet 3/2 { gf'8 af gf } \oneVoice 
    <af, f'> <gf ef'>) |
  r8 r16 gf'[->( bff,8..) gf'32->-\slurShapeB ( bff,8..) gf'32]->( |
  bff,8..[) gf'32->-\slurShapeB ( bff,8..) gf'32->-\slurShapeB ( af,8..)
    f'32]->( |
  g,8..[)^\accel e'32( gf,8..) ef'32-\slurShapeB ( f,8..) d'32]( |
  \stemDown ff,8..[) df'!32-\slurShapeB (^\rit ef,8..) df'32-\slurShapeB (
    ef,8..) df'32]~ |
  
  \barNumberCheck 101
  \voiceOne df4.(^\aTempo a8 df a |
  a8. bf16 bf4-.) bf-> |
  f'4.( c8 f c |
  c8. df16 df4-.) df-> |
  af'4.( e8 af e |
  e8. f16 f4-.) \oneVoice <f f'>->~-\slurShapeI ( |
  q8. <gf gf'>16 q4-.) a,4-> |
  c4.->( bf8) \tuplet 3/2 { bf->( af! gf) } |
  
  \barNumberCheck 109
  \voiceOne df'4.(^\piuAgitatoEStretto a8 df a |
  a8. bf16 bf4-.) \tuplet 3/2 { bf8( c bf) } |
  f'4.( c8 f c |
  c8. df16 df4-.) \tuplet 3/2 { df8( ef df) } |
  af'4.( e8 af e |
  e8. f16 f4-.) \oneVoice <f f'>(\ff |
  <af! af'!>8. <gf gf'>16 q4-.) a,4->( |
  bf2.)~ |
  
  \barNumberCheck 117
  bf8.( c16 c4-.) c-> |
  c8( df) df2->~ |
  df8.( c16 c4.-> bf8 |
  bf8 gf) gf2-> |
  c8( bf) bf4.(-> gf8 |
  \acciaccatura { af8 } gf f f2->) |
  c'8( bf) bf4.->( ef,8 |
  \acciaccatura { f8 } ef df df2->) |
  
  \barNumberCheck 125
  bf'8.( c16 c4-.) c-> |
  c8( df) df2->~ |
  df8.( c16 c4.-> bf8 |
  bf8 gf) gf2-> |
  c8( bf) bf4.(^\rit gf8 |
  \acciaccatura { af8 } gf f f2->)~ |
  f2.~ |
  f2.~ |
  
  \barNumberCheck 133
  f8-\slurShapeK (^\calando c' d4.-> c8 |
  f8 c d4. c8) |
  c8-\slurShapeJ ( bf bf4.-> gf8 |
  \acciaccatura { af8 } gf f f2->)~ |
  f8-\slurShapeK ( c' d4.-> c8 |
  f8 c d4. c8) |
  c8-\slurShapeL ( bf bf4.-> gf8) |
  R2.^\mancando \fermataOverBarUpper |
  
  \barNumberCheck 141
  \acciaccatura { af8 } gf8(^\sempreRall f f2->~ |
  f2.~ |
  f2.) |
  f2.~ |
  f2.~ |
  f2.^\smorzando |
  c'8( bf bf4. gf8 |
  \acciaccatura { af8 } gf-\moveAccentA -> f f2->)\fermata | 
  \bar "|."
}

rightHandLower = \relative {
  \partial 4 \voiceFour f'4(~ |
  f4. f4 f8~ |
  f4. fs4 fs8~ |
  fs4. g4 g8~ |
  g4. gs4 gs8~ |
  gs4.) a4 a8 |
  a8.( bf16) bf4-. bf->~ |
  bf4. c4 c8 |
  c8.( df16) df4-. df->~ |
  
  \barNumberCheck 9
  df4. e4 e8 |
  e8.( f16) f4-. <f_~ f'^~>-> |
  q8.^( <gf gf'>16) q4-. s |
  s2. |
  f,4. gf8 f ef |
  ef8. df16 df4 g |
  af!4. bff8 af gf! |
  gf8. f16 f4 b |
  
  \barNumberCheck 17
  c4. df8 c bf! |
  bf8. a16 a4 s4 |
  s2. * 2 |
  \repeat volta 2 {
    s2. * 4 |
    
    \barNumberCheck 25
    s2. * 3 |
    f4 f e-> |
    c4 c s |
    s4 df s |
    s4 c s |
    s2. |
    
    \barNumberCheck 33
    s2. * 3 |
    s2 \hideNoteHead ef4~ |
    ef4. gf8 f! ef |
    ef8. df16 df4 g |
    af!4. bff8 af gf! |
    gf8. f16 f4 b |
    
    \barNumberCheck 41
    c4. df8 c bf! |
    bf8. a16 a4 s |
    s2. * 2 |
    f8 \slurUp \acciaccatura { af } gf f gf f ef |
    ef8.-> df16 df4 g-> |
    af!8 \acciaccatura { cf } bff af bff af gf |
    gf8.-> f16 f4 b-> |
    
    \barNumberCheck 49
    c8 \acciaccatura { ef } df c df c bf! |
    bf8.-> a16 a4 s |
    s2. |
    \alternative {
      { s2. | }
      { s2. | }
    }
  }
  \repeat volta 2 { 
    \barNumberCheck 54
    s2. * 7 |
    \alternative {
      {
        <bf, e>4 a2 |
      }
      {
        <bf e>4 a s |
      }
    }
  }
  
  \barNumberCheck 63
  s2. * 8 |
  
  \barNumberCheck 71
  s2. * 8 |
  
  \barNumberCheck 79
  s2. * 8 |
  
  \barNumberCheck 87
  s2. * 8 |
  
  \barNumberCheck 95
  s4 gf'-> s |
  s4 bff-> s |
  s2. * 3 |
  s2 \hideNoteHead ef,4~ |
  
  \barNumberCheck 101
  ef4.-> gf8 f! ef |
  ef8.-> df16 df4 g |
  af!4. bff8 af gf! |
  gf8.-> f16 f4 b |
  c4. df8 c bf! |
  bf8. a16 a4 s |
  s2. * 2 |
  
  \barNumberCheck 109
  f8 \slurUp \acciaccatura { af } gf f gf f ef |
  ef8.-> df16 df4 g-> |
  af!8 \acciaccatura { cf } bff af bff af gf! |
  gf8.-> f16 f4 b-> |
  c8 \acciaccatura { ef } df c df c bf! |
  bf8.-> a16 a4 s |
  s2. * 2 |
  
  \barNumberCheck 117
}

rightHand = {
  \global
  \mergeDifferentlyDottedOn
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \partial 4 s4 |
  s2. * 8 |
  
  \barNumberCheck 9
  s2. |
  \voiceThree b'4\rest <c, af'> q |
  s2. * 6 |
  
  \barNumberCheck 17
  s2. |
  r4 <c f> s4 |
  s2. * 2 |
  \repeat volta 2 {
    s2. * 4 |
    
    \barNumberCheck 25
    s2. * 3 |
    r4 <af df> s |
    s2. * 4 |
    
    \barNumberCheck 33
    s2. * 8 |
    
    \barNumberCheck 41
    s2. |
    b'4\rest <c, f> <c a'> |
    s2. * 6 |
    
    \barNumberCheck 49
    s2. |
    r4 <c f> s |
    s2 . |
    \alternative {
      { s2. | }
      { s2. | }
    }
  }
  \repeat volta 2 { 
    \barNumberCheck 54
    s2. * 7 |
    \alternative {
      { s2. | }
      { s2. | }
    }
  }
  
  \barNumberCheck 63
  s2. * 8 |
  
  \barNumberCheck 71
  s2. * 8 |
  
  \barNumberCheck 79
  s2. * 8 |
  
  \barNumberCheck 87
  s2. * 8 |
  
  \barNumberCheck 95
  s2. * 6 |
  
  \barNumberCheck 101
  s2. * 5 |
  b'4\rest <c, f> <c a'> |
  s2. * 2 |
  
  \barNumberCheck 109
  s2. * 5 |
  r4 \moveNotesA <c f> s |
  s2. * 2 |
  
  \barNumberCheck 117
  s2. * 5 |
  r4 <f, df'> q |
  s2. |
  r4 <f bf> q |
  
  \barNumberCheck 125
}

leftHandLower = \relative {
  \partial 4 r4 |
  R2. * 4 |
  f,4-. <f' ef'> q |
  bf,4-. <f' df'> <ef g df'> |
  af,4-. <af' gf'!> q |
  df,4-. <af' f'> <g bf f'> |
  
  \barNumberCheck 9
  c,4-. \clef treble <c' f bf> <c g' bf> |
  \voiceTwo f,2*1/2^( \hideNoteHead af'4) s |
  \clef bass \oneVoice f,,4-. \clef treble <c'' ef a>( <ef c'>) |
  \clef bass bf,4-. <f' df'> q |
  bf,4-. <f' ef'> q |
  bf,4-. <f' bf> <ef df'> |
  af,4-. <af' gf'!> q |
  df,4-. <af' df> <g f'> |
  
  \barNumberCheck 17
  c,4-. \clef treble <c' bf'!> q |
  \clef bass \voiceTwo f,2 \oneVoice <f c' a'>4\arpeggio |
  f,4-. \clef treble <c'' ef a c>-> \clef bass <f, c' ef>\p |
  bf,4-. <f' df'> <ef gf df'> |
  \repeat volta 2 {
    af,4-. <ef' af> <ef af c> |
    df,4-. <f' af> <f af df> |
    af,4-. <ef' af> <ef af c> |
    df4 <af' cf f> d,4( |
    
    \barNumberCheck 25
    ef4-.) <gf bf ef> gf,( |
    af4-.) <f' df'> q |
    af,4-. <ef' af c> q |
    \voiceTwo df2 \oneVoice g,4( |
    af4-.) <ef' af> <ef af c> |
    df,4-. <f' af> <f af df> |
    af,4-. <ef' af> <ef af c> |
    df4 <af' cf f> d,4( |
    
    \barNumberCheck 33
    ef4-.) <gf bf ef> gf,( |
    af4-.) <f' df'> q |
    af,4-. <ef' c'> r |
    R2. |
    f,4-. <f' c'> q |
    bf,4-. <f' bf> <ef df'> |
    af,4-. <af' gf'!> q |
    df,4-. <af' df> <g f'> |
    
    \barNumberCheck 41
    c,4-. \clef treble <c' bf'!> q |
    \voiceTwo f,2.*2/3( \hideNoteHead c'4) |
    \clef bass \oneVoice f,,4-. \clef treble <c'' ef a> <ef c'> |
    \clef bass bf,4-. <f' df'> q |
    bf,4-. <f' c' ef> q |
    bf,4-. <f' bf> <ef df'> |
    af,4-. <af' c gf'!> q |
    df,4-. <af' df> <g f'> |
    
    \barNumberCheck 49
    c,4-. \clef treble <c' g' bf!> q |
    \clef bass \voiceTwo f,2 \oneVoice <f c' a'>4\arpeggio |
    f,4-. \clef treble <c'' ef a c>-> \clef bass <f, c' ef> |
    \alternative {
      {
        bf,4 <f' df'> <ef gf df'>-> |
      }
      {
        bf4 <f' df'> f'~ |
      }
    }
  }
  \repeat volta 2 {
    \barNumberCheck 54
    f4-\slurShapeE ( gf4. df8 |
    e8 c bf4 bf |
    f'8 af gf4 gf8 df |
    e8 c bf2) |
    <c, g' c>4 <c f c'> q |
    <c g' c>4 <c f c'> q |
    <c g' c>4 <c f c'> q |
    \alternative {
      {
        <c g' c>4 <f c'>2 |
      }
      {
        <c g' c>4 <f c'> r |
      }
    }
  }
  
  \barNumberCheck 63
  gf,!4-. <ef' bf'> q |
  gf,4-. <ef' bf'> q |
  af,4-. <ef' c'> q |
  df,4-. <f' af> q |
  gf,4-. <ef' bff'> q |
  gf,4-. <ef' df'> q |
  af,4-. <ef' gf c!> q |
  df,4-. <ff' af> q |
  
  \barNumberCheck 71
  a,4-. <fs' cs' e> q |
  a,4-. <fs' cs' e> q |
  b,4-. <fs' a ds> q |
  e,4-. <gs' b> q |
  gf,!4-. <ef'! bff'> q |
  gf,4-. <ef' df'> q |
  af,4-. <ef' c'!> q |
  af,4-. <ef' gf c> q |
  
  \barNumberCheck 79
  af,,4-. <ef'' gf c> q |
  af,4-. <ef' gf c> q |
  af,4-. <ef' gf c> q |
  df,4-. <f' af> q |
  gf,4-. <ef' bff'> q |
  gf,4-. <ef' df'> q |
  af,4-. <ef' gf c!> q |
  df,4-. <ff' af> q |
  
  \barNumberCheck 87
  a,4-. <fs' cs' e> q |
  a,4-. <fs' cs' e> q |
  b,4-. <fs' a ds> q |
  e,4-. <gs' b> q |
  gf,!4-. <ef'! bff'> q |
  gf,4-. <ef' df'> q |
  af,4-. <ef' gf c> r |
  af,4-. <ef' gf c> r |
  
  \barNumberCheck 95
  <af,, af'>4-. <ef'' gf c> r |
  <af,, af'>4-. <ef'' c' gf'>\arpeggio r |
  <af,, af'>4-. <ef'' c' gf'>\arpeggio r |
  R2. * 3 |
  
  \barNumberCheck 101
  f,4-. <f' c'> q |
  bf,4-. <f' bf> <ef df'> |
  af,4-. <af' gf'!> q |
  df,4-. <af' df> <g f'> |
  c,4-. \clef treble <c' bf'!> q |
  \voiceTwo f,2.*2/3( \hideNoteHead c'4) |
  \clef bass \oneVoice f,,4-. \clef treble <c'' ef a> <ef c'> |
  \clef bass bf,4-. <f' df'> q |
  
  \barNumberCheck 109
  bf,4-. <f' c' ef> q |
  bf,4-. <f' bf> <ef df'> |
  af,4-. <af' c gf'!> q |
  df,4-. <af' df> <g f'> |
  c,4-. \clef treble <c' g' bf!> q |
  \clef bass \voiceTwo f,2 \oneVoice <f c' a'>4\arpeggio |
  f,4-. \clef treble <c'' ef a c>-> \clef bass <f, c' ef> |
  bf,4-. <f' df'> q |
  
  \barNumberCheck 117
  bf,4-. <gf' bf ef> q |
  bf,4-. <g' bf e> q |
  bf,4-. <g' c e> q |
  bf,4-. <gf'! df' ff> q |
  bf,4-. <gf' c ef> q |
  \voiceTwo bf,2. |
  \oneVoice bf4-. <gf' bf c> q |
  \voiceTwo bf,2. |
  
  \barNumberCheck 125
  \oneVoice bf4-. <gf' bf ef> q |
  bf,4-. <g' bf e> q |
  bf,4-. <g' c e> q |
  bf,4-. <gf'! df' ff> q |
  bf,4-. <gf' c ef> q |
  bf,4-. <f' bf d> q |
  bf,4-. <f' a c> q |
  bf,4-. <f' bf d> q |
  
  \barNumberCheck 133
  bf,4-. <f' a ef'> q |
  q4 q q |
  bf,4-. <gf' bf ef> q |
  bf,4-. <f' bf d> q |
  bf,4-. <f' a ef'> q |
  q4 q q |
  bf,4-. <gf' df' ff> q |
  q4-.(\pp q-. <gf cs e>-.) \fermataOverBarLower |
  
  \barNumberCheck 141
  bf,4-. <f' d'> q |
  q4 q q |
  f,4-. <f' a c> q |
  d,4-. <f' a d> q |
  bf,,4-. <d' bf' d> q |
  q4 q q |
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
  \partial 4 s4\p |
  s2. * 4 |
  s2.^\pocoAPoco |
  s2.\cresc 
  s2. * 2 |
  
  \barNumberCheck 9
  s2. |
  s4 s\! s\ff |
  s2. |
  s2\> s8 s\! |
  s2.\p |
  s4\> s2\! |
  s2.\cresc |
  s2. |
  
  \barNumberCheck 17
  s2. |
  s4 s2\! |
  s2. * 2 |
  \repeat volta 2 {
    s2.^\dolce |
    s2. * 3 |
    
    \barNumberCheck 25
    s2. * 7 |
    s2.\f |
    
    \barNumberCheck 33
    \override DynamicTextSpanner.style = #'none
    s2.\dim |
    s2. * 2 |
    s2.\! |
    s2. |
    s8.\> s16\! s2 |
    \revert DynamicTextSpanner.style
    s2.\cresc |
    s2. |
    
    \barNumberCheck 41
    s2. |
    s2 s4\ff |
    s2 s4\p |
    s2\> \tuplet 3/2 { s4 s8\! } |
    s2. * 2 |
    s2.\cresc |
    s2. |
    
    \barNumberCheck 49
    s2. |
    s4 s2\! |
    s2 s4\parenthesize\p |
    \alternative {
      {
        s2. |
      }
      {
        s2 s4\p |
      }
    }
  }
  \repeat volta 2 { 
    \barNumberCheck 54
    s2.^\sottoVoce |
    s2. * 6 |
    \alternative {
      {
        s2.
      }
      {
        s2 s4\f |
      }
    }
  }
  
  \barNumberCheck 63
  s2. * 4 |
  s2.\pp |
  s2. * 3 |
  
  \barNumberCheck 71
  s2.\f |
  s2. * 3 |
  s4\pp s4.\< s8\! |
  s2\> s4\! |
  s4 s2\< |
  s2 s4\! |
  
  \barNumberCheck 79
  s2.\ff |
  s2. * 3 |
  s2.\pp |
  s2. * 3 |
  
  \barNumberCheck 87
  s2.\ff |
  s2. * 3 |
  s2.\pp |
  s2\> s4\! |
  s2. |
  s4 s2\cresc |
  
  \barNumberCheck 95
  s2. * 2 |
  s2.\ff |
  s4 s8.. s32\dim s4 |
  s2 s8.. s32\! |
  s2. |
  
  \barNumberCheck 101
  s2. * 2 |
  s2.\cresc |
  s2. * 2 |
  s4 s\! s\ff |
  s2 s4\p |
  s2. |
  
  \barNumberCheck 109
  s2. * 2 |
  s2.\cresc |
  s2. * 2 |
  s4 s2\! |
  s2. * 2 |
  
  \barNumberCheck 117
  s2.\p |
  s2. * 4 |
  s8\> s\! s2 |
  s2. |
  s8\> s\! s2 |
  
  \barNumberCheck 125
  s2. * 6 |
  \override DynamicTextSpanner.style = #'none
  s2.\dim |
  s2. |
  
  \barNumberCheck 133
  s2.\pp |
  s2. * 3 |
  s2.\pp |
}

tempi = {
  \tempo "Moderato" 4 = 132
  \partial 4 s4 |
  \set Score.tempoHideNote = ##t
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 4 |
  \repeat volta 2 {
    \tempo 4 = 132
    s2. * 4 |
    
    \barNumberCheck 25
    s2. * 8 |
    
    \barNumberCheck 33
    s2. * 2 |
    \tempo 4 = 144
    s2. |
    \tempo 4 = 120
    s2. |
    \tempo 4 = 132
    s2. * 4 |
    
    \barNumberCheck 41
    s2. * 4 |
    \tempo 4 = 144
    s2. * 4 |
    
    \barNumberCheck 49
    s2. * 3 |
    \alternative {
      { s2. | }
      { s2. | }
    }
  }
  \repeat volta 2 {
    \barNumberCheck 54
    s2. * 7 |
    \alternative {
      { s2. | }
      { s2. | }
    }
  }
  
  \barNumberCheck 63
  s2. * 8 |
  
  \barNumberCheck 71
  s2. * 6 |
  s4 \tempo 4 = 120 s2 |
  s2. |
  
  \barNumberCheck 79
  \tempo 4 = 132
  s2. * 8 |
  
  \barNumberCheck 87
  s2. * 8 |
  
  \barNumberCheck 95
  s2. * 4 |
  \tempo 4 = 144
  s2. |
  \tempo 4 = 120
  s2. |
  
  \barNumberCheck 101
  \tempo 4 = 132
  s2. * 8 |
  
  \barNumberCheck 109
  \tempo 4 = 144
  s2. * 8 |
  
  \barNumberCheck 117
  \tempo 4 = 132
  s2. * 8 |
  
  \barNumberCheck 125
  s2. * 8 |
  
  \barNumberCheck 133
  \tempo 4 = 126
  s2. * 7 |
  \tempo 4 = 120
  s2 \tempo 4 = 60 s4 |
  
  \barNumberCheck 141
  \tempo 4 = 112
  s2. * 5 |
  \tempo 4 = 108
  s2. * 2 |
  \tempo 4 = 100
  s2. |
}

pedal = {
  \partial 4 s4 |
  s2. * 4 |
  s2\sd s8 s\su |
  s2. |
  s2\sd s8 s\su |
  s2. |
  
  \barNumberCheck 9
  s2\sd s4\su |
  s4 s4.\sd s8\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2. |
  s2\sd s8 s\su |
  s2. |
  
  \barNumberCheck 17
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  \repeat volta 2 {
    s2\sd s8 s\su |
    s2-\tweak Y-offset -1 \sd s8 s\su |
    s2\sd s8 s\su |
    \grace { s8\sd } s2 s4\su |
    
    \barNumberCheck 25
    s2. * 2 |
    s2\sd s8 s\su |
    s2. |
    s2-\tweak Y-offset -1 \sd s8 s\su |
    s2-\tweak Y-offset -1 \sd s8 s\su |
    s2\sd s8 s\su |
    \grace { s8\sd } s2 s4\su |
    
    \barNumberCheck 33
    s2. * 4 |
    s2\sd s8 s\su |
    s2. |
    s2\sd s8 s\su |
    s2. |
    
    \barNumberCheck 41
    s2\sd s8 s\su |
    s2. |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2\sd s8 s\su |
    s2. |
    s2\sd s8 s\su |
    s2. |
    
    \barNumberCheck 49
    s2\sd s8 s\su |
    s2. |
    s2\sd s8 s\su |
    \alternative {
      {
        s2\sd s8 s\su |
      }
      {
        s2\sd s8 s\su |
      }
    }
  }
  \repeat volta 2 { 
    \barNumberCheck 54
    s2. * 7 |
    \alternative {
      { s2. | }
      { s2. | }
    }
  }
  
  \barNumberCheck 63
  s2.\sd |
  s2 s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -1 \sd s4\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  
  \barNumberCheck 71
  s2.\sd |
  s2 s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -1.5 \sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  
  \barNumberCheck 79
  s2.-\tweak Y-offset -2.5 \sd |
  s2. |
  s2 s8 s\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  
  \barNumberCheck 87
  s2.\sd |
  s2 s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 95
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2-\tweak Y-offset -2 \sd s8 s\su |
  s2.-\tweak Y-offset -2 \sd |
  s2 s8 s\su |
  s2. * 2 |
  
  \barNumberCheck 101
  s2\sd s8 s\su |
  s2. |
  s2\sd s8 s\su |
  s2. |
  s2\sd s8 s\su |
  s2. |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 109
  s2\sd s8 s\su |
  s2\sd s4\su |
  s2\sd s8 s\su |
  s2\sd s4\su |
  s2\sd s8 s\su |
  s2. |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 117
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -1 \sd s8 s\su |
  
  \barNumberCheck 125
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  
  \barNumberCheck 133
  s2.\sd |
  s2 s8 s\su |
  s2\sd s8 s\su |
  s2\sd s8 s\su |
  s2.\sd |
  s2 s8 s\su |
  s2.\sd |
  s2 s4\su |
  
  \barNumberCheck 141
  s2.-\tweak X-offset 0 \sd |
  s2 s8 s\su |
  s2\sd s8 s\su |
  s2-\tweak Y-offset -1.5 \sd s8 s\su |
  s2.-\tweak Y-offset -2 \sd |
  s2 s8 s\su |
}

forceBreaks = {
  % page 1
  \partial 4 s4\noBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\pageBreak
  
  % page 2
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \grace { s8 } \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\pageBreak
  
  % page 3
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\pageBreak
  
  % page 4
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\pageBreak
  
  % page 5
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \grace { s8 } \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 6 { s2.\noBreak } s2.\break\noPageBreak
  \grace { s8 } \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
}

mazurkaFourNotes =
\score {
  \header {
    title = "Mazurka Four"
    composer = "Frédéric Chopin"
    opus = "Opus 24, No. 4"
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

mazurkaFourMidi =
\book {
  \bookOutputName "mazurka-op24-no4"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
