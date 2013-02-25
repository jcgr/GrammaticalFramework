concrete CadeEng of Cade = {

    lincat
        Term, Proposition = { s : Str} ;
    lin
        var_x = {s = "x"} ;
        Abs n = {s = "the absolute value of" ++ n.s} ;
        Positive n = {s = n.s ++ "is positive"} ;

}