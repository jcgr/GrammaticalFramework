concrete LawsEngDesc of Laws = open StringOper in {

    lincat
        Prod, ProdColl, Conj, Res, ResColl, Impl, Logic, Not = {s : Str} ;

    lin
        -- Logic
        Formular res impl prod      = ccc res impl prod ;
        
        -- Res
        Resource res                = cc (ss "if") res ;
        NResource not res           = ccc (ss "if") res not ;
        MResource res1 conj res2    = ccc res1 conj res2 ;
        VotingCard                  = ss "there is a voting-auth-card" ;
        Hopeful                     = ss "there is a hopeful C with N votes" ;
        
        -- Prod
        Product prod                = prod ;
        NProduct not prod           = cc prod not ;
        MProduct prod1 conj prod2   = ccc prod1 conj prod2 ;
        Ballot                      = ss "return a blank-ballot" ;
        
        -- Impl
        Then                        = ss "-- then --" ;
        
        -- Conj
        And                         = ss "and" ;

        -- Not
        NotConsd                    = ss "that is not consumed" ;
}