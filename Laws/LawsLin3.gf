concrete LawsLin3 of Laws3 = open StringOper in {
    
    lincat
        Logic, Prod, Neg, Pos, Lolli, Bang, Atomic, Ident, Arg, ArgColl, Conj, Disj, Pi = {s : Str} ;

    lin
        -- Logic
        Formular neg                    = {s = neg.s} ;
        
        -- Pos
        _Atom atom                      = {s = atom.s} ;
        _Bang bang atom                 = {s = "!" ++ atom.s} ;
        _Conj pos1 conj pos2            = {s = pos1.s ++ conj.s ++ pos2.s} ;
        _Disj pos1 disj pos2            = {s = pos1.s ++ disj.s ++ pos2.s} ;
        
        -- Neg
        _Pi _ neg                       = {s = neg.s} ;
        _Lolli pos lolli neg            = {s = pos.s ++ lolli.s ++ neg.s} ;
        _Mon pos                        = {s = "{" ++ pos.s ++ "}"} ;
        
        -- Atomic
        Atom_Args ident args            = ss (ident.s ++ "(" ++ args.s ++ ")") ;
        Atom_Noargs ident               = ss (ident.s) ;
        Ident_Hopeful                   = ss "hopeful" ;
        Ident_Tally                     = ss "tally-votes" ;
        Arg_C                           = ss "C" ;
        Arg_N                           = ss "N" ;
        Arg_S                           = ss "S" ;
        Arg_H                           = ss "H" ;
        _Arg arg                        = ss (arg.s) ;
        _ArgColl arg1 arg2              = ss (arg1.s ++ "," ++ arg2.s) ;
        
        _Conj2                           = ss "and" ;
        _Disj2                           = ss "or" ;
        _Lolli2                         = ss "then" ;
        _Bang2                          = ss "!" ;
}