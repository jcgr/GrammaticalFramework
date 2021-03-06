abstract Laws = {
    
    flags startcat = Logic ;

    cat
        Logic ; Prod ; Neg ; Pos ; Lolli ; Bang ; Atomic ; Ident ; Arg ; ArgType ; Conj ; Math ; MathFormula ; ArithmeticOperation ; InequalityOperation ; Argument ArgType ;

    fun
        Formula : Neg -> Logic ;

        -- Positive types
        _Atom : Atomic -> Pos ;
        _Bang : Bang -> Atomic -> Pos ;
        _Conj : Pos -> Conj -> Pos -> Pos ;
        _Unit : Neg -> Pos ;
        _MPos : Pos -> Pos -> Pos ;

        -- Negative types
        _Pi : (A : ArgType) -> (Argument A -> Neg) -> Neg ;
        _Lolli : Pos -> Lolli -> Neg -> Neg ;
        _Mon : Pos -> Neg ;

        -- Connectives
        _Conj2 : Conj ;
        _Lolli2 : Lolli ;
        _Bang2 : Bang ;

        -- Argument types
        _Nat, _Candidate, _List : ArgType ;

        -- Atomics
        Atom_Ident : Ident -> Atomic ;
        Atom_Math : MathFormula -> Atomic ;

        -- Identifiers
        Ident_Uncounted : Arg -> Arg -> Ident ;
        Ident_Counted : Arg -> Arg -> Ident ;
        Ident_Hopeful : Arg -> Arg -> Ident ;
        Ident_Defeated : Arg -> Ident ;
        Ident_Elected : Arg -> Ident ;
        Ident_Quota : Arg -> Ident ;
        Ident_Winners : Arg -> Ident ;
        Ident_Begin : Arg -> Arg -> Arg -> Ident ;
        Ident_Count: Arg -> Arg -> Arg -> Ident ;
        Ident_BangElectAll : Ident ;
        Ident_BangDefeatAll : Ident ;
        Ident_DefeatMin : Arg -> Arg -> Arg -> Ident ;
        Ident_DefeatMin' : Arg -> Arg -> Arg -> Ident ;
        Ident_Minimum : Arg -> Arg -> Ident ;
        Ident_Transfer : Arg -> Arg -> Arg -> Arg -> Arg -> Ident ;
        Ident_Run : Arg -> Arg -> Arg -> Ident ;
        Ident_UnitOne : Ident ;

        -- Arguments
        _Arg : (A : ArgType) -> (a : Argument A) -> Arg ;
        _ArgNil, _ArgZ : Arg ;
        _ArgMinus, _ArgPlus : Arg -> Arg ;
        _ArgList : Arg -> Arg -> Arg ;

        -- Mathematic operations
        _MathArg : Arg -> Math ;
        _FinalFormula : Math -> InequalityOperation -> Math -> MathFormula ;
        _MathArgs : Math -> ArithmeticOperation -> Math -> Math ;
        _NatDivMod : Math -> Math -> Math -> Math -> MathFormula ;

        _Division, _Addition, _Subtraction, _Multiplication : ArithmeticOperation ;
        _Greater, _GreaterEqual, _Equal, _LessEqual, _Less : InequalityOperation ;
}