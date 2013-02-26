concrete LawsEng of Laws = {
    
    lincat
        Prod, ProdColl, Conj, Res, ResColl, Impl, Logic, Not = {s : Str} ;

    lin
        -- Logic
        Formular res impl prod      = {s = res.s ++ impl.s ++ "{" ++ prod.s ++ "}"} ;
        
        -- Res
        Resource res                = {s = res.s} ;
        NResource not res           = {s = not.s ++ res.s} ;
        MResource res1 conj res2    = {s = res1.s ++ conj.s ++ res2.s} ;
        VotingCard                  = {s = "voting-auth-card"} ;
        
        -- Prod
        Product prod                = {s = prod.s} ;
        NProduct not prod           = {s = not.s ++ prod.s} ;
        MProduct prod1 conj prod2   = {s = prod1.s ++ conj.s ++ prod2.s} ;
        Ballot                      = {s = "blank-ballot"} ;
        
        -- Impl
        Then                        = {s = "implies"} ;
        
        -- Conj
        And                         = {s = "and"} ;

        -- Not
        NotConsd                    = {s = "!"} ;
}