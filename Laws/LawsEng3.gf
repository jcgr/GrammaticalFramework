concrete LawsEng3 of Laws3 = open StringOper in {
    
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
        _Lolli pos lolli neg            = ss ("if" ++ pos.s ++ lolli.s ++ "{" ++ neg.s ++ "}") ;
        _Mon pos                        = ss (pos.s) ;
        
        -- Atomic
        Atom_Args ident args            = ss (ident.s ++ args.s) ;
        Atom_Noargs ident               = ss ident.s ;
        Atom_Math args1 sym args2       = ss (args1.s ++ sym.s ++ args2.s) ;

        -- Ident
        Ident_Hopeful                   = ss "there is a hopeful" ;
        Ident_Tally                     = ss "we are tallying votes" ;
        Ident_BangElectAll              = ss "there are more open seats than hopefuls" ;
        Ident_Elected                   = ss "elected" ;

        -- Arg
        Arg_C                           = ss "candidate C" ;
        Arg_N                           = ss "number N" ;
        Arg_S                           = ss "seat S" ;
        Arg_H                           = ss "hopeful H" ;
        Arg_U                           = ss "uncounted U" ;
        Arg_0                           = ss "0" ;
        Arg_1                           = ss "1" ;
        _Arg arg                        = ss (arg.s) ;
        _NextArg arg1 arg2              = ss ("[" ++ arg1.s ++ "|" ++ arg2.s ++ "]") ; -- TODO
        _ArgColl arg1 arg2              = ss (arg1.s ++ "," ++ arg2.s) ;
        
        _Conj2                          = ss "and" ;
        _Disj2                          = ss "or" ;
        _Lolli2                         = ss "then" ;
        _Bang2                          = ss "that is not consumed" ;

        -- MathSymbol
        Greater                         = ss "is greater than" ;
        GreaterEqual                    = ss "is greater than or equal to" ;
        Equal                           = ss "is equal to" ;
        LessEqual                       = ss "is less than or equal to" ;
        Less                            = ss "is less than" ;
}