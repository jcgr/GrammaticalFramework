concrete LawsEng2 of Laws2 = open StringOper in {

    lincat
        Logic, Prod, ProdColl, Lolli, Bang, Ident, Conn = SS ;
        Atomic, Arg, ArgColl, ResColl = SE ;

    lin
        -- Logic
        Formular res impl prod          = {s = "assuming" ++ res.e  ++ "++ then ++" ++ res.s ++ impl.s ++ prod.s} ;
        
        -- Res
        Resource_Atom atom              = mkSE ("if" ++ atom.s) atom.e  ;
        Resource_Bang bang atom         = mkSE ("if" ++ atom.s ++ bang.s) atom.e ;
        Resource_Conn res1 conn res2    = mkSE (res1.s ++ conn.s ++ res2.s) (res1.e ++ "," ++ res2.e) ;
        
        -- Prod
        Product prod                    = prod ;
        Product_Bang bang prod          = cc prod bang ;
        Product_Conn prod1 conn prod2   = ccc prod1 conn prod2 ;
        Ballot                          = ss "return a blank-ballot" ;
        
        -- Atomic
        Atom_Args ident args            = mkSE (ident.s ++ args.s) (args.e) ;
        Atom_Noargs ident               = mkSE (ident.s) "" ;
        Ident_Hopeful                   = ss "there is a hopeful" ;
        Ident_Tally                     = ss "we are tallying votes" ;
        Arg_C                           = mkSE "C" "C is a candidate" ;
        Arg_N                           = mkSE "N" "N is a natrual number" ;
        Arg_S                           = mkSE "S" "S is a seat" ;
        Arg_H                           = mkSE "H" "H is a hopeful" ;
        _Arg arg                        = mkSE arg.s arg.e ;
        _ArgColl arg1 arg2              = mkSE (arg1.s ++ arg2.s) (arg1.e ++ "," ++ arg2.e) ;
        
        -- Conn
        Conn_Conj                       = ss "and" ;
        Conn_Disj                       = ss "or" ;
        
        -- Lolli
        _Then                           = ss "-- then --" ;

        -- Not
        _Bang                           = ss "that is not consumed" ;

    oper
        SE : Type = {s : Str ; e : Str} ;
        mkSE : Str -> Str -> SE = \x,y -> {s = x ; e = y} ;        
}