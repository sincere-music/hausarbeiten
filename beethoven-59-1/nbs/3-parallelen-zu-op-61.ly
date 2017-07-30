\version "2.19.61"
\include "style.ily"

#(set-global-staff-size 13)

\layout {
  \context {
    \Score
    \omit BarNumber
  }
  \context {
    \Voice
    \override TextScript.font-size = 2
  }
  indent = 0
}

kzt =
#(define-music-function (bnum) (string?)
			#{ <>^$(string-append "op. 61 m. " bnum)
			  \key d \major
			  \time 4/4 #})
quart =
#(define-music-function (bnum) (string?)
			#{ <>^$(string-append "op. 59/1 m. " bnum)
			  \key f \minor
			  \time 2/4 #})

n = { \bar "" }

\relative {
  \kzt "116f."
  e''16( fis e dis e fis g fis \n  e fis e d cis d cis h)
  a( h cis d e d cis h \n  a h a g fis g fis e)
  \partial 4 d4
  \bar "||"
  
  \quart "127f."
  f''='''64([ g f e f g a g] \n  f[ g f e d e d c] \n  h[ c h a g a g f] \n  e[ f e d c d c h])
  \partial 4. a[( h a g f g f e] \n  d[ e d c h c h a]  g= s s s s16)
  \bar "||"
  
  \kzt "97f."
  a16(\< cis) h( d) cis( e) d( fis) \n  e( g) cis,( e) d( fis) e( g)
  \partial 2 fis(\! a) \tweak transparent ##t r8*3
  ^\tweak outside-staff-priority ##f
  \tweak Y-offset -0.8
  \tweak whiteout ##t -"&c."
  \bar "||"
  
  \quart "128/2"
  \partial 4
  g,=64([ h a c h d c e] \n  d[ f e g f a g h,])
  \bar "||"
  
  \kzt "140ff."
  << \repeat unfold 4 { e'=''16 fis dis fis } { s2 \n s } >>
  <>_\markup\italic "dimin."
  e8*2/3( fis) dis-. e( gis dis \n  e fis dis) e( e') e,-.
  e1*3/4~\startTrillSpan \hideNotes e4\stopTrillSpan \unHideNotes
  \bar "||"
  
  \quart "131"
  s8(
  \context Bottom <<
    \repeat unfold 3 { c=''64[ h d h c h d h] }
    { s8 \n s \n s16.. s64) }
  >>
  c2\startTrillSpan <>\stopTrillSpan
}