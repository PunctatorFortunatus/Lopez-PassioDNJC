#(set-global-staff-size 18)

\paper {
    mystaffsize = #18
    #(define fonts
       (set-global-fonts
        #:music "sebastiano"
        #:brace "sebastiano"
        #:roman "TeX Gyre Pagella"
        #:sans "TeX Gyre Chorus"
        #:typewriter "Tex Gyre Cursor"
        #:factor (/ mystaffsize 20)
        )
       )
}