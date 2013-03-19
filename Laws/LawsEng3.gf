concrete LawsEng3 of Laws3 = open StringOper in {
    
    param
        State           = With | For ;

    lincat
        Logic, Prod, Neg, Pos, Lolli, Bang, Atomic, Ident, Conj, Disj, Pi, MathSymbol = {s : Str} ;
        Arg, ArgColl = {s : Str ; n : State} ;

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
        Ident_Elected                   = ss "a candidate has been elected" ;
        Ident_Defeated                  = ss "a candidate has been defeated" ;
        Ident_Quota                     = ss "the votes needed to be elected" ;
        Ident_Minimum                   = ss "a candidate might have enough votes" ;
        Ident_DefeatMin                 = ss "defeat-min???" ;
        Ident_Transfer                  = ss "a defeated candidate's votes are being transferred" ;
        Ident_Uncounted                 = ss "there is an uncounted ballot for a candidate" ;
        Ident_Counted                   = ss "there is a counted ballot for a bandidate" ;

        -- Arg
        Arg_C                           = mkArg "(candidate C)" For ;
        Arg_N                           = mkArg "(number N)" With ;
        Arg_S                           = mkArg "(seat S)" For ;
        Arg_H                           = mkArg "(hopeful H)" For ;
        Arg_U                           = mkArg "(uncounted U)" With ;
        Arg_Q                           = mkArg "(quota Q)" For ;
        Arg_L                           = mkArg "(preference list L)" With ;
        Arg_0                           = mkArg "(0)" With ;
        Arg_1                           = mkArg "(1)" With ;
        _Arg arg                        = mkArg (arg.s) arg.n ;
        --_NextArg arg1 arg2              = ss ("[" ++ arg1.s ++ "|" ++ arg2.s ++ "]") ; -- TODO
        _ArgColl arg1 arg2              = mkArg (mkArgColl arg1.s arg2.s arg2.n) arg1.n;
        
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

    oper
        mkArg : Str -> State -> {s : Str ; n : State} = 
            \x,y -> {s = x ; n = y} ;

        mkArgColl : Str -> Str -> State -> Str = 
            \str1,str2,state -> case state of
            {
                With        => str1 ++ "with" ++ str2 ;
                For         => str1 ++ "for" ++ str2 
            } ;

}