concrete LawsLin2 of Laws2 = open StringOper in {
    
    lincat
        Prod, ProdColl, Conj, ResColl, Impl, Logic, Bang, Atomic, Ident, ArgColl, Arg = SS ;

    lin
        -- Logic
        Formular res impl prod      = {s = res.s ++ impl.s ++ "{" ++ prod.s ++ "}"} ;
        
        -- Res
        ARes atom                   = ss atom.s ;
        NResource not res           = cc not res ;
        MResource res1 conj res2    = ccc res1 conj res2 ;
        
        -- Prod
        Product prod                = prod;
        NProduct not prod           = cc not prod ;
        MProduct prod1 conj prod2   = ccc prod1 conj prod2 ;
        Ballot                      = ss "blank-ballot" ;
        
        -- Atomic
        Atomic_Args ident args      = ss (ident.s ++ "(" ++ args.s ++ ")") ;
        Atomic_Noargs ident         = ss (ident.s) ;
        _Ident                      = ss "hopeful" ;
        _ArgColl arg1 arg2          = ss (arg1.s ++ "," ++ arg2.s) ;
        _Arg arg                    = ss arg.s ;
        Arg_C                       = ss "C" ;
        Arg_N                       = ss "N" ;

        -- Impl
        _Then                       = ss "then" ;
        
        -- Conj
        _Conj                       = ss "and" ;

        -- Not
        _Bang                       = ss "!" ;
}