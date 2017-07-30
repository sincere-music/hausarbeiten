\version "2.19.61"
\language "deutsch"

\header {
  tagline = ##f
}

\paper {
  paper-width = 147\mm
  line-width = 147\mm
  top-margin = 0
  bottom-margin = 0
  
  page-breaking = #ly:one-page-breaking

  #(define fonts
    (set-global-fonts
     #:roman "LMRoman10"
     #:factor (/ staff-height pt 20)
    ))
}

\layout {
  \context {
    \Staff
    %\override TextScript.font-shape = #'italic
  }
}