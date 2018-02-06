\version "2.19.61"
\include "style.ily"

#(set-global-staff-size 16)

\layout { indent = 18 }

\new Staff \with {
  instrumentName = Violoncello
  \override TextScript.font-shape = #'italic
}
\relative {
  \clef bass
  \key f \major
  <>-\tweak self-alignment-X #-0.4 #(make-dynamic-script #{\markup { mf \normal-text \italic { e dolce } }#})
  c4(^"a" \once\offset length #-1.5 Stem d  e f)
  c2.( d8^"b" c
  b8 c) a-. g-.  f4(^"c" d'
  c=1)
  \bar "||"
  c8(^"a′" d) c-. d-. e( f) e-. f-.
}