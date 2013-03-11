abstract Laws2 = {
    
    flags startcat = Logic ;

    cat
        Logic ; Prod ; ProdColl ; ResColl ; Impl ; Bang ; Atomic ; Ident ; Arg ; ArgColl ; Conn ;

    fun
        Formular : ResColl -> Impl -> ProdColl -> Logic ;

        ARes : Atomic -> ResColl ;
        BResource : Bang -> Atomic -> ResColl ;
        CResource : ResColl -> Conn -> ResColl -> ResColl ;

        Product : Prod -> ProdColl ;
        BProduct : Bang -> Prod -> ProdColl ;
        CProduct : ProdColl -> Conn -> ProdColl -> ProdColl ;
        Ballot : Prod ;

        Atom_Args : Ident -> ArgColl -> Atomic ;
        Atom_Noargs : Ident -> Atomic ;
        I_Hopeful : Ident ;
        _ArgColl : ArgColl -> ArgColl -> ArgColl ;
        _Arg : Arg -> ArgColl ;
        Arg_C, Arg_N, Arg_S : Arg ;

        Conn_Conj, Conn_Disj : Conn ;
        _Then : Impl ;
        _Bang : Bang ;
}