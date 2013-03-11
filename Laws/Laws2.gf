abstract Laws2 = {
    
    flags startcat = Logic ;

    cat
        Prod ; ProdColl ; Conj ; ResColl ; Impl ; Logic ; Bang ; Atomic ; Ident ; Arg ; ArgColl ;

    fun
        Formular : ResColl -> Impl -> ProdColl -> Logic ;

        ARes : Atomic -> ResColl ;
        NResource : Bang -> Atomic -> ResColl ;
        MResource : ResColl -> Conj -> ResColl -> ResColl ;

        Product : Prod -> ProdColl ;
        NProduct : Bang -> Prod -> ProdColl ;
        MProduct : ProdColl -> Conj -> ProdColl -> ProdColl ;
        Ballot : Prod ;

        Atomic_Args : Ident -> ArgColl -> Atomic ;
        Atomic_Noargs : Ident -> Atomic ;
        _Ident : Ident ;
        _ArgColl : ArgColl -> ArgColl -> ArgColl ;
        _Arg : Arg -> ArgColl ;
        Arg_C, Arg_N : Arg ;

        _Then : Impl ;
        _Conj : Conj ;
        _Bang : Bang ;
}