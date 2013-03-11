concrete LawsEng2 of Laws2 = open StringOper in {

    lincat
        Logic, Prod, ProdColl, ResColl, Impl, Bang, Atomic, Ident, Arg, ArgColl, Conn = SS ;

    lin
        -- Logic
        Formular res impl prod          = ccc res impl prod ;
        
        -- Res
        Resource_Atom atom              = cc (ss "if") atom ;
        Resource_Bang bang res          = ccc (ss "if") res bang ;
        Resource_Conn res1 conn res2    = ccc res1 conn res2 ;
        
        -- Prod
        Product prod                    = prod ;
        Product_Bang bang prod          = cc prod bang ;
        Product_Conn prod1 conn prod2   = ccc prod1 conn prod2 ;
        Ballot                          = ss "return a blank-ballot" ;
        
        -- Atomic
        Atom_Args ident args            = ss (ident.s ++ args.s) ;
        Atom_Noargs ident               = ss (ident.s) ;
        Ident_Hopeful                   = ss "there is a hopeful" ;
        Ident_Tally                     = ss "we are tallying votes" ;
        Arg_C                           = ss "candidate C" ;
        Arg_N                           = ss "with running tally N" ;
        Arg_S                           = ss "seat S" ;
        Arg_H                           = ss "hopeful H" ;
        _Arg arg                        = ss arg.s ;
        _ArgColl arg1 arg2              = ss (arg1.s ++ arg2.s) ;
        
        -- Conn
        Conn_Conj                       = ss "and" ;
        Conn_Disj                       = ss "or" ;
        
        -- Impl
        _Then                           = ss "-- then --" ;

        -- Not
        _Bang                           = ss "that is not consumed" ;
}