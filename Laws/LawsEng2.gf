concrete LawsEng2 of Laws2 = open StringOper in {

    lincat
        Prod, ProdColl, Conj, ResColl, Impl, Logic, Bang, Atomic, Ident, Arg, ArgColl = SS ;

    lin
        -- Logic
        Formular res impl prod      = ccc res impl prod ;
        
        -- Res
        ARes atom                   = cc (ss "if") atom ;
        NResource not res           = ccc (ss "if") res not ;
        MResource res1 conj res2    = ccc res1 conj res2 ;
        
        -- Prod
        Product prod                = prod ;
        NProduct not prod           = cc prod not ;
        MProduct prod1 conj prod2   = ccc prod1 conj prod2 ;
        Ballot                      = ss "return a blank-ballot" ;
        
        -- Atomic
        Atomic_Args ident args      = ss ("there is a" ++ ident.s ++ args.s) ;
        Atomic_Noargs ident         = ss (ident.s) ;
        _Ident                      = ss "hopeful" ;
        _ArgColl arg1 arg2          = ss (arg1.s ++ "with" ++ arg2.s) ;
        _Arg arg                    = ss arg.s ;
        Arg_C                       = ss "candidate C" ;
        Arg_N                       = ss "running tally N" ;
        
        -- Impl
        _Then                       = ss "-- then --" ;
        
        -- Conj
        _Conj                       = ss "and" ;

        -- Not
        _Bang                       = ss "that is not consumed" ;
}