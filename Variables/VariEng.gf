concrete VariEng of Vari = {
    
    lincat
        Ind, Prop = {s : Str} ;

    lin
        All B           = {s = "(" ++ "All" ++ B.$0 ++ ")" ++ B.s} ;
        Eq a b          = {s = "(" ++ a.s ++ "=" ++ b.s ++ ")"} ;
}