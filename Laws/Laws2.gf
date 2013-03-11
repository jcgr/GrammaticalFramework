abstract Laws2 = {
    
    flags startcat = Logic ;

    cat
        Logic ; Prod ; ProdColl ; ResColl ; Impl ; Bang ; Atomic ; Ident ; Arg ; ArgColl ; Conn ;

    fun
        Formular : ResColl -> Impl -> ProdColl -> Logic ;

        Resource_Atom : Atomic -> ResColl ;
        Resource_Bang : Bang -> Atomic -> ResColl ;
        Resource_Conn : ResColl -> Conn -> ResColl -> ResColl ;

        Product : Prod -> ProdColl ;
        Product_Bang : Bang -> Prod -> ProdColl ;
        Product_Conn : ProdColl -> Conn -> ProdColl -> ProdColl ;
        Ballot : Prod ;

        Atom_Args : Ident -> ArgColl -> Atomic ;
        Atom_Noargs : Ident -> Atomic ;
        Ident_Hopeful, Ident_Tally : Ident ;
        Arg_C, Arg_N, Arg_S, Arg_H : Arg ;
        _Arg : Arg -> ArgColl ;
        _ArgColl : ArgColl -> ArgColl -> ArgColl ;

        Conn_Conj, Conn_Disj : Conn ;
        _Then : Impl ;
        _Bang : Bang ;
}