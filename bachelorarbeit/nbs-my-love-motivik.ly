\version "2.19.65"

\include "nbs-style.ily"

\layout {
  indent = 0
  \context {
    \Score
    \omit BarNumber
  }
}

mot = #(define-event-function (n)
                              (string?)
                              #{
                                -\tweak bound-details.left.text \markup\rounded-box $n
                                \tweak bound-details.left-broken.text \markup \concat { ( $n ) }
                                \tweak outside-staff-priority 10000
                                \startTextSpan
                              #})
tom = \stopTextSpan
x = ^\markup\musicglyph #"noteheads.s2cross"

\relative {
  \key a \minor
  \time 3/4
  \partial 4
  \autoBeamOff
  a'4\mot "a:1" |
  4.\x g8\x e f\x |
  c d e\x\tom e\x fis\x gis\x |
  a\x c h fis h h
  d4( c8) e,\mot "a:2" e e |
  e'4.\x d8\x h d |
  c4.\x\tom h8\x gis h
  a4. 8\x g\x f\x |
  e[-\tweak X-offset -0.7 \x e'\mot "a:3" d] c f, a |
  a8. gis16 4.\tom \bar "||"
  \key f \major
  \partial 4
  c4\mot "b:1" |
  2\x d4\x
  e\x( f\x) d
  c8 a c2~
  2\tom s4 \bar "||"
  g'4.(\mot "b:2" f8) e[ c]
  g2\tom \bar "||"
  \partial 1*0
  \key a \minor
  <>^"T. 66, Sopran"
  e'4. d8 h c |
  f,2 \bar "||"
}