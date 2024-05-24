\version "2.24.0"

%
% Scheme functions
%

makeSpanner =
#(define-music-function (mrkup) (markup?)
  #{
    \override TextSpanner.bound-details.left.text = #mrkup
    \override TextSpanner.bound-details.left.stencil-align-dir-y = 0.25
    \override TextSpanner.bound-details.left-broken.text = ##f
  #})

%
% Redefine
%

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

sd = \sustainOn
su = \sustainOff

hideNoteHead = \once {
  \omit Stem
  \omit Dots
  \omit Flag
  \hideNotes
  \override NoteColumn.ignore-collision = ##t
}

tupletOff = {
  \omit TupletNumber
  \omit TupletBracket
}
tupletOn = {
  \undo \omit TupletNumber
  \undo \omit TupletBracket
}

tieWait = \set tieWaitForNote = ##t
untieWait = \set tieWaitForNote = ##f
underSlurOne = \tweak avoid-slur #'inside \etc
trillUnder = -\tweak outside-staff-priority 0 \etc

fermataOverBarUpper = {
  \override Score.TextMark.self-alignment-X = #CENTER
  \textEndMark \markup { \musicglyph "scripts.ufermata" }
}
fermataOverBarLower = {
  \tweak direction #DOWN
  \tweak X-offset -2.5
  \tweak Y-offset 2 
  \textEndMark \markup { \musicglyph "scripts.dfermata" }
}

semprePiuP = \makeSpanner \markup { \large \italic "sempre più" \dynamic p }
perdendosi = \makeSpanner \markup \large \italic perdendosi

clefInvisible = 
  \once \set Staff.explicitClefVisibility = #end-of-line-invisible

%
% Markup
%

rubato = \markup \large \italic rubato
legato = \markup \large \italic legato
scherzando = \markup \large \italic scherzando
calando = \markup \large \italic calando
mancando = \markup \large \italic mancando
smorzando = \markup \large \italic smorzando
accel = \markup \large \italic accel.
rit = \markup \large \italic rit.
dolce = \markup \large \italic dolce
dolcissimo = \markup \large \italic dolcissimo
aTempo = \markup \large \italic "a tempo"
conAmina = \markup \large \italic "con anima"
conForza = \markup \large \italic "con forza"
pocoRit = \markup \large \italic "poco rit."
pocoAPoco = \markup \large \italic "poco a poco"
sottoVoce = \markup \large \italic "sotto voce"
sempreRall = \markup \large \italic "sempre rall."
ppSottoVoce = 
  \markup { \dynamic pp \large \italic \whiteout \pad-markup #0.25 
            "sotto voce" } 
pSemprePianoELegato =
  \markup { \dynamic p \large \italic \whiteout \pad-markup #0.25 
            "sempre piano e legato" }
ilBassoSempreLegato = \markup \large \italic "il basso sempre legato"
piuAgitatoEStretto = \markup \large \italic "più agitato e stretto"
piuF = \markup { \large \italic più \dynamic f }
pLegato = \markup { \dynamic p \large \italic legato }
