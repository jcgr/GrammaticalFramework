abstract Laws3 = {
    
    flags startcat = Logic ;

    cat
        Logic ; Prod ; Neg ; Pos ; Lolli ; Bang ; Atomic ; Ident ; Arg ; ArgColl ; Conj ; Disj ;
        Pi Pos ;

    fun
        Formular : Neg -> Logic ;

        _Atom : Atomic -> Pos ;
        _Bang : Bang -> Atomic -> Pos ;
        _Conj : Pos -> Conj -> Pos -> Pos ;
        _Disj : Pos -> Disj -> Pos -> Pos ;

        _Pi : (k : Pos) -> Neg -> Neg ;
        _Lolli : Pos -> Lolli -> Neg -> Neg ;
        _Mon : Pos -> Neg ;

        Atom_Args : Ident -> ArgColl -> Atomic ;
        Atom_Noargs : Ident -> Atomic ;
        Ident_Hopeful, Ident_Tally : Ident ;
        Arg_C, Arg_N, Arg_S, Arg_H : Arg ;
        _Arg : Arg -> ArgColl ;
        _ArgColl : ArgColl -> ArgColl -> ArgColl ;

        _Conj2 : Conj ;
        _Disj2 : Disj ;
        _Lolli2 : Lolli ;
        _Bang2 : Bang ;
}