concrete LawsLin3 of Laws3 = open StringOper in {
    
    lincat
        Logic, Prod, Neg, Pos, Lolli, Bang, Atomic, Ident, Arg, ArgColl, Conj, Disj, Pi, MathSymbol = {s : Str} ;

    lin
        -- Logic
        Formular neg                    = ss neg.s ;
        
        -- Pos
        _Atom atom                      = ss atom.s ;
        _Bang bang atom                 = ss (bang.s ++ atom.s) ;
        _Conj pos1 conj pos2            = ss (pos1.s ++ conj.s ++ pos2.s) ;
        _Disj pos1 disj pos2            = ss (pos1.s ++ disj.s ++ pos2.s) ;
        
        -- Neg
        _Pi _ neg                       = ss (neg.s) ;
        _Lolli pos lolli neg            = ss (pos.s ++ lolli.s ++ neg.s) ;
        _Mon pos                        = ss ("{" ++ pos.s ++ "}") ;
        
        -- Atomic
        Atom_Args ident args            = ss (ident.s ++ "(" ++ args.s ++ ")") ;
        Atom_Noargs ident               = ss (ident.s) ;
        Atom_Math args1 sym args2       = ss ("!(" ++ args1.s ++ sym.s ++ args2.s ++ ")") ;

        -- Ident
        Ident_Hopeful                   = ss "hopeful" ;
        Ident_Tally                     = ss "tally-votes" ;
        Ident_BangElectAll              = ss "!elect-all" ;
        Ident_Elected                   = ss "elected" ;
        Ident_Defeated                  = ss "!defeated" ;
        Ident_Quota                     = ss "!quota" ;
        Ident_Minimum                   = ss "minimum" ;
        Ident_DefeatMin                 = ss "defeat-min" ;
        Ident_Transfer                  = ss "transfer" ;
        Ident_Uncounted                 = ss "uncounted-ballot" ;
        Ident_Counted                   = ss "counted-ballot" ;

        -- Arg
        Arg_C                           = ss "C" ;
        Arg_N                           = ss "N" ;
        Arg_S                           = ss "S" ;
        Arg_H                           = ss "H" ;
        Arg_U                           = ss "U" ;
        Arg_Q                           = ss "Q" ;
        Arg_L                           = ss "L" ;
        Arg_0                           = ss "0" ;
        Arg_1                           = ss "1" ;
        _Arg arg                        = ss (arg.s) ;
        --_NextArg arg1 arg2              = ss ("[" ++ (mkNextArg arg1.s) ++ "|" ++ arg2.s ++ "]") ;
        _ArgColl arg1 arg2              = ss (arg1.s ++ "," ++ arg2.s) ;
        
        _Conj2                          = ss "and" ;
        _Disj2                          = ss "or" ;
        _Lolli2                         = ss "then" ;
        _Bang2                          = ss "!" ;

        -- MathSymbol
        Greater                         = ss ">" ;
        GreaterEqual                    = ss ">=" ;
        Equal                           = ss "=" ;
        LessEqual                       = ss "<=" ;
        Less                            = ss "<" ;

    oper
        mkNextArg : Str -> Str = \x -> (x ++ "'") ;
}