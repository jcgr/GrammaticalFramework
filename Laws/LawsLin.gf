concrete LawsLin of Laws = open StringOper in {
    
    lincat
        Prod, ProdColl, Conj, Res, ResColl, Impl, Logic, Not = SS ;

    lin
        -- Logic
        Formular res impl prod      = {s = res.s ++ impl.s ++ "{" ++ prod.s ++ "}"} ;
        
        -- Res
        Resource res                = res ;
        NResource not res           = cc not res ;
        MResource res1 conj res2    = ccc res1 conj res2 ;
        VotingCard                  = ss "voting-auth-card" ;
        Hopeful                     = ss "hopeful(C, N)" ;

        
        -- Prod
        Product prod                = prod;
        NProduct not prod           = cc not prod ;
        MProduct prod1 conj prod2   = ccc prod1 conj prod2 ;
        Ballot                      = ss "blank-ballot" ;
        
        -- Impl
        Then                        = ss "then" ;
        
        -- Conj
        And                         = ss "and" ;

        -- Not
        NotConsd                    = ss "!" ;
}