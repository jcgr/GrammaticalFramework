concrete LawsDan3 of Laws3 = open StringOper in {
    
    lincat
        Logic, Prod, Neg, Pos, Lolli, Bang, Atomic, Ident, Arg, ArgColl, Conj, Disj, Pi, MathSymbol = {s : Str} ;

    lin
        -- Logic
        Formular neg                    = ss neg.s ;
        
        -- Pos
        _Atom atom                      = ss (atom.s) ;
        _Bang bang atom                 = ss (atom.s ++ bang.s) ;
        _Conj pos1 conj pos2            = ss (pos1.s ++ conj.s ++ pos2.s) ;
        _Disj pos1 disj pos2            = ss (pos1.s ++ disj.s ++ pos2.s) ;
        
        -- Neg
        _Pi _ neg                       = ss (neg.s) ;
        _Lolli pos lolli neg            = ss ("hvis" ++ pos.s ++ lolli.s ++ "{" ++ neg.s ++ "}") ;
        _Mon pos                        = ss (pos.s) ;
        
        -- Atomic
        Atom_Args ident args            = ss (ident.s ++ args.s) ;
        Atom_Noargs ident               = ss ident.s ;
        Atom_Math args1 sym args2       = ss (args1.s ++ sym.s ++ args2.s) ;

        -- Ident
        Ident_Hopeful                   = ss "der er en forhåbningsfuld" ;
        Ident_Tally                     = ss "vi tæller stemmer" ;
        Ident_BangElectAll              = ss "der er flere åbne sæder end forhåbningsfulde" ;
        Ident_Elected                   = ss "valgt" ;

        -- Arg
        Arg_C                           = ss "kandidat C" ;
        Arg_N                           = ss "tal N" ;
        Arg_S                           = ss "sæde S" ;
        Arg_H                           = ss "forhåbningsfuld H" ;
        Arg_U                           = ss "utalt U" ;
        Arg_0                           = ss "0" ;
        Arg_1                           = ss "1" ;
        _Arg arg                        = ss (arg.s) ;
        _NextArg arg1 arg2              = ss ("[" ++ arg1.s ++ "|" ++ arg2.s ++ "]") ; -- TODO
        _ArgColl arg1 arg2              = ss (arg1.s ++ "," ++ arg2.s) ;
        
        _Conj2                          = ss "og" ;
        _Disj2                          = ss "eller" ;
        _Lolli2                         = ss "så" ;
        _Bang2                          = ss "som ikke bliver konsumeret" ;

        -- MathSymbol
        Greater                         = ss "er større end" ;
        GreaterEqual                    = ss "er større end eller lig med" ;
        Equal                           = ss "er lig med" ;
        LessEqual                       = ss "er mindre end eller lig med" ;
        Less                            = ss "er mindre end" ;

    oper
        mkMath : Derp -> Str -> Str = 
            \n,w -> case n of {
                Word          => "antallet af" ++ w ;
                Number        => w
            } ;
--        mkMath2 : Str -> Str = 
--            \w -> case w of {
--                _                       => "antallet af" ++ w
--            } ;

    param
        Derp = Word | Number ;
}