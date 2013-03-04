concrete LawsEngDesc of Laws = {
    
    lincat
        Prod, ProdColl, Conj, Res, ResColl, Impl, Logic, Not = {s : Str} ;

    lin
        -- Logic
        Formular res impl prod      = {s = res.s ++ impl.s ++ prod.s} ;
        
        -- Res
        Resource res                = {s = "if" ++ res.s} ;
        NResource not res           = {s = "if" ++ res.s ++ not.s} ;
        MResource res1 conj res2    = {s = res1.s ++ conj.s ++ res2.s} ;
        VotingCard                  = {s = "there is a voting-auth-card"} ;
        Hopeful                     = {s = "there is a hopeful C with N votes"} ;
        
        -- Prod
        Product prod                = {s = prod.s} ;
        NProduct not prod           = {s = prod.s ++ not.s} ;
        MProduct prod1 conj prod2   = {s = prod1.s ++ conj.s ++ prod2.s} ;
        Ballot                      = {s = "return a blank-ballot"} ;
        
        -- Impl
        Then                        = {s = "-then-"} ;
        
        -- Conj
        And                         = {s = "and"} ;

        -- Not
        NotConsd                    = {s = "that is not consumed"} ;
}