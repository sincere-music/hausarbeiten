\version "2.19.61"
\include "style.ily"

#(set-global-staff-size 15)

\layout { indent = 30 }

global = {
  \key b \major
  \time 3/8
  \partial 8.
}

<<
\new Staff \with {
  instrumentName = "1. Violine T. 39ff."
}
\relative {
  \global
  a'16-. d-. f-.
  f( e) e16.-.[ d32-. cis16.-. a32-.]
  d8( f a)~
  16( g) g16.-.[ f32-. e16.-. d32-.]
  d16([ cis)]
}
\new Staff \with {
  instrumentName = \markup {
    \right-column {
      "2. Violine T. 4ff.,"
      "transp. nach d-moll"
    }
  }
}
\relative {
  \global
  a'16-. d-. f-.
  e-. d-. cis-. h-. cis-. a-.
  d-. f-. a8.-> f16-.
  e-. cis-. d-. h-. e-. gis,-.
  a4.*5/6
}
>>