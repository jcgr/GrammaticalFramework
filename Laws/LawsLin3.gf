concrete LawsLin3 of Laws3 = open SharedOpers in {

    lincat
        Logic, Prod, Neg, Pos, Lolli, Bang, Atomic, Ident, ArgColl, Conj, Disj, Pi, MathSymbol = {s : Str} ;
        Arg = {s : ModType => Str} ;

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
        Arg_C                           = mkArg "C" ;
        Arg_N                           = mkArg "N" ;
        Arg_S                           = mkArg "S" ;
        Arg_H                           = mkArg "H" ;
        Arg_U                           = mkArg "U" ;
        Arg_Q                           = mkArg "Q" ;
        Arg_L                           = mkArg "L" ;
        Arg_M                           = mkArg "M" ;
        Arg_0                           = mkArg "0" ;
        Arg_1                           = mkArg "1" ;
        _Arg arg                        = ss (arg.s ! None) ;
        _ArgPlus arg                    = ss (arg.s ! Plus) ;
        _ArgMinus arg                   = ss (arg.s ! Minus) ;
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
        mkArg : Str -> {s : ModType => Str} = \str -> {
            s = table {
                Plus => str + "+1" ;
                Minus => str + "-1" ;
                None => str
            }
        } ;
}