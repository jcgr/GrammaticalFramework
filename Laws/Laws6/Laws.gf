abstract Laws = {
    
    flags startcat = Logic ;

    cat
        Logic ; Prod ; Neg ; Pos ; Lolli ; Bang ; Atomic ; Ident ; Arg ; ArgColl ; Conj ; Math ; MathFormula ; ArithmeticOperation ; InequalityOperation ;
        Pi Pos ;

    fun
        Formular : Neg -> Logic ;

        -- Pos
        _Atom : Atomic -> Pos ;
        _Bang : Bang -> Atomic -> Pos ;
        _Conj : Pos -> Conj -> Pos -> Pos ;

        -- Neg
        _Pi : (k : Pos) -> Neg -> Neg ;
        _Lolli : Pos -> Lolli -> Neg -> Neg ;
        _Mon : Pos -> Neg ;

        -- Atomic
        Atom_Ident : Ident -> Atomic ;
        Atom_Math : MathFormula -> Atomic ;

        -- Ident
        Ident_Hopeful, Ident_Tally, Ident_BangElectAll, Ident_Elected, Ident_Defeated, Ident_Quota, Ident_Minimum, Ident_DefeatMin, Ident_Transfer, Ident_Counted, Ident_Uncounted, Ident_Winners, Ident_Begin : ArgColl -> ArgColl -> ArgColl -> ArgColl -> ArgColl -> ArgColl -> ArgColl -> ArgColl -> ArgColl -> Ident ;
        
        -- Arg
        Arg_C, Arg_N, Arg_S, Arg_H, Arg_U, Arg_Q, Arg_L, Arg_M, Arg_W, Arg_0, Arg_1, Arg_Nil : Arg ;
        _Arg : Arg -> ArgColl ;
        _ArgPlus, _ArgMinus : ArgColl -> ArgColl ;
        _ArgListEmpty : ArgColl ;
        _ArgList : ArgColl -> ArgColl ->  ArgColl ;

        _Conj2 : Conj ;
        _Lolli2 : Lolli ;
        _Bang2 : Bang ;

        -- TODO: Check if math needs more change
        -- Math
        _FinalFormula : Math -> InequalityOperation -> Math -> MathFormula ;
        _Math : ArgColl -> Math ;
        _MathArgs : ArgColl -> ArithmeticOperation -> ArgColl -> Math ;

        _Division, _Addition, _Subtraction, _Multiplication : ArithmeticOperation ;
        Greater, GreaterEqual, Equal, LessEqual, Less : InequalityOperation ;
}