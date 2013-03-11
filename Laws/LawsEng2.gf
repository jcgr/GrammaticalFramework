concrete LawsEng2 of Laws2 = open StringOper in {

    lincat
        Logic, Prod, ProdColl, ResColl, Impl, Bang, Atomic, Ident, Arg, ArgColl, Conn = SS ;

    lin
        -- Logic
        Formular res impl prod      = ccc res impl prod ;
        
        -- Res
        ARes atom                   = cc (ss "if") atom ;
        BResource bang res          = ccc (ss "if") res bang ;
        CResource res1 conn res2    = ccc res1 conn res2 ;
        
        -- Prod
        Product prod                = prod ;
        BProduct bang prod          = cc prod bang ;
        CProduct prod1 conn prod2   = ccc prod1 conn prod2 ;
        Ballot                      = ss "return a blank-ballot" ;
        
        -- Atomic
        Atom_Args ident args      = ss ("there is a" ++ ident.s ++ args.s) ;
        Atom_Noargs ident         = ss ("there is a" ++ ident.s) ;
        I_Hopeful                      = ss "hopeful" ;
        _ArgColl arg1 arg2          = ss (arg1.s ++ arg2.s) ;
        _Arg arg                    = ss arg.s ;
        Arg_C                       = ss "candidate C" ;
        Arg_N                       = ss "with running tally N" ;
        Arg_S                       = ss "seat S" ;
        
        -- Conn
        Conn_Conj                   = ss "and" ;
        Conn_Disj                   = ss "or" ;
        
        -- Impl
        _Then                       = ss "-- then --" ;

        -- Not
        _Bang                       = ss "that is not consumed" ;
}