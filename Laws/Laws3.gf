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
        Arg_C, Arg_N, Arg_S, Arg_H, Arg_U, Arg_Q, Arg_L, Arg_0, Arg_1 : Arg ;
        _Arg : Arg -> ArgColl ;
        --_NextArg : Arg -> Arg -> ArgColl ;
        _ArgColl : ArgColl -> ArgColl -> ArgColl ;

        _Conj2 : Conj ;
        _Disj2 : Disj ;
        _Lolli2 : Lolli ;
        _Bang2 : Bang ;

        -- MathSymbol
        Greater, GreaterEqual, Equal, LessEqual, Less : MathSymbol ;
}

-- i LawsLin3.gf LawsEng3.gf LawsDan3.gf
-- p -lang=LawsLin3 "hopeful then { ! hopeful }" | l -treebank
-- p -lang=LawsLin3 "hopeful ( C , N ) then { hopeful ( C , N ) }" | l -treebank
-- p -lang=LawsLin3 "!elect-all and hopeful ( C , N ) then { elected ( C ) }" | l -treebank
-- p -lang=LawsLin3 "{ !( C >= H ) }" | l -treebank
-- p -lang=LawsLin3 "tally-votes ( S , H , U ) and uncounted-ballot ( C , L ) and hopeful ( C , N ) and !quota ( Q ) and !( N < Q ) then { counted-ballot ( C , L ) and hopeful ( C , N ) and tally-votes ( S , H , U ) }" | l -treebank