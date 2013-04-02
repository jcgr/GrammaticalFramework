abstract Laws3 = {
    
    flags startcat = Logic ;

    cat
        Logic ; Prod ; Neg ; Pos ; Lolli ; Bang ; Atomic ; Ident ; Arg ; ArgColl ; Conj ; Disj ; MathSymbol ;
        Pi Pos ;

    fun
        Formular : Neg -> Logic ;

        -- Pos
        _Atom : Atomic -> Pos ;
        _Bang : Bang -> Atomic -> Pos ;
        _Conj : Pos -> Conj -> Pos -> Pos ;
        _Disj : Pos -> Disj -> Pos -> Pos ;

        -- Neg
        _Pi : (k : Pos) -> Neg -> Neg ;
        _Lolli : Pos -> Lolli -> Neg -> Neg ;
        _Mon : Pos -> Neg ;

        -- Atomic
        Atom_Args : Ident -> ArgColl -> Atomic ;
        Atom_Noargs : Ident -> Atomic ;
        Atom_Math : ArgColl -> MathSymbol -> ArgColl -> Atomic ;

        -- Ident
        Ident_Hopeful, Ident_Tally, Ident_BangElectAll, Ident_Elected, Ident_Defeated, Ident_Quota, Ident_Minimum, Ident_DefeatMin, Ident_Transfer, Ident_Counted, Ident_Uncounted : Ident ;
        
        -- Arg
        Arg_C, Arg_N, Arg_S, Arg_H, Arg_U, Arg_Q, Arg_L, Arg_M, Arg_0, Arg_1 : Arg ;
        _ArgPlus, _ArgMinus, _Arg : Arg -> ArgColl ;
        _ArgListEmpty : ArgColl ;
        _ArgList : Arg -> Arg ->  ArgColl ;
        _ArgColl : ArgColl -> ArgColl -> ArgColl ;

        _Conj2 : Conj ;
        _Disj2 : Disj ;
        _Lolli2 : Lolli ;
        _Bang2 : Bang ;

        -- MathSymbol
        Greater, GreaterEqual, Equal, LessEqual, Less : MathSymbol ;
}