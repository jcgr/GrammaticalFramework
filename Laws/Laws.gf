abstract Laws = {
    
    flags startcat = Logic ;

    cat
        Prod ; ProdColl ; Conj ; Res ; ResColl ; Impl ; Logic ; Not ;

    fun
        Formular : ResColl -> Impl -> ProdColl -> Logic ;

        Resource : Res -> ResColl ;
        NResource : Not -> Res -> ResColl ;
        MResource : ResColl -> Conj -> ResColl -> ResColl ;
        VotingCard : Res ;

        Product : Prod -> ProdColl ;
        NProduct : Not -> Prod -> ProdColl ;
        MProduct : ProdColl -> Conj -> ProdColl -> ProdColl ;
        Ballot : Prod ;

        Then : Impl ;
        And : Conj ;
        NotConsd : Not ;
}