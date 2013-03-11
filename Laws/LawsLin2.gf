concrete LawsLin2 of Laws2 = open StringOper in {
    
    lincat
        Logic, Prod, ProdColl, ResColl, Impl, Bang, Atomic, Ident, Arg, ArgColl, Conn = SS ;

    lin
        -- Logic
        Formular res impl prod      = {s = res.s ++ impl.s ++ "{" ++ prod.s ++ "}"} ;
        
        -- Res
        ARes atom                   = ss atom.s ;
        BResource bang res          = cc bang res ;
        CResource res1 conn res2    = ccc res1 conn res2 ;
        
        -- Prod
        Product prod                = prod ;
        BProduct bang prod          = cc bang prod ;
        CProduct prod1 conn prod2   = ccc prod1 conn prod2 ;
        Ballot                      = ss "blank-ballot" ;
        
        -- Atomic
        Atom_Args ident args        = ss (ident.s ++ "(" ++ args.s ++ ")") ;
        Atom_Noargs ident           = ss (ident.s) ;
        I_Hopeful                   = ss "hopeful" ;
        _ArgColl arg1 arg2          = ss (arg1.s ++ "," ++ arg2.s) ;
        _Arg arg                    = ss arg.s ;
        Arg_C                       = ss "C" ;
        Arg_N                       = ss "N" ;
        Arg_S                       = ss "S" ;
        
        -- Conn
        Conn_Conj                   = ss "and" ;
        Conn_Disj                   = ss "or" ;

        -- Impl
        _Then                       = ss "then" ;

        -- Not
        _Bang                       = ss "!" ;
}