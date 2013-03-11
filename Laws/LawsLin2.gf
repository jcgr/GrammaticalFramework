concrete LawsLin2 of Laws2 = open StringOper in {
    
    lincat
        Logic, Prod, ProdColl, ResColl, Impl, Bang, Atomic, Ident, Arg, ArgColl, Conn = SS ;

    lin
        -- Logic
        Formular res impl prod          = {s = res.s ++ impl.s ++ "{" ++ prod.s ++ "}"} ;
        
        -- Res
        Resource_Atom atom              = ss atom.s ;
        Resource_Bang bang res          = cc bang res ;
        Resource_Conn res1 conn res2    = ccc res1 conn res2 ;
        
        -- Prod
        Product prod                    = prod ;
        Product_Bang bang prod          = cc bang prod ;
        Product_Conn prod1 conn prod2   = ccc prod1 conn prod2 ;
        Ballot                          = ss "blank-ballot" ;
        
        -- Atomic
        Atom_Args ident args            = ss (ident.s ++ "(" ++ args.s ++ ")") ;
        Atom_Noargs ident               = ss (ident.s) ;
        Ident_Hopeful                   = ss "hopeful" ;
        Ident_Tally                     = ss "tally-votes" ;
        Arg_C                           = ss "C" ;
        Arg_N                           = ss "N" ;
        Arg_S                           = ss "S" ;
        Arg_H                           = ss "H" ;
        _Arg arg                        = ss arg.s ;
        _ArgColl arg1 arg2              = ss (arg1.s ++ "," ++ arg2.s) ;
        
        -- Conn
        Conn_Conj                       = ss "and" ;
        Conn_Disj                       = ss "or" ;

        -- Impl
        _Then                           = ss "then" ;

        -- Not
        _Bang                           = ss "!" ;
}