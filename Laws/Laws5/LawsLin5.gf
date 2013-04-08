concrete LawsLin5 of Laws5 = open SharedOpers in {

    lincat
        Logic, Prod, Neg, Pos, Lolli, Bang, Atomic, Ident, Arg, ArgColl, Conj, Disj, Pi, Math, MathFormula, ArithmeticOperation, InequalityOperation = {s : Str} ;

    lin
        -- Logic
        Formular neg                    = ss neg.s ;
        
        -- Pos
        _Atom atom                      = ss atom.s ;
        _Bang bang atom                 = ss (bang.s ++ atom.s) ;
        _Conj pos1 conj pos2            = ss (pos1.s ++ conj.s ++ pos2.s) ;
        _Disj pos1 disj pos2            = ss (pos1.s ++ disj.s ++ pos2.s) ;
        
        -- Neg
        _Pi _ neg                       = ss (neg.s) ;
        _Lolli pos lolli neg            = ss ("(" ++ pos.s ++ ")" ++ lolli.s ++ neg.s) ;
        _Mon pos                        = ss ("{" ++ pos.s ++ "}") ;
        
        -- Atomic
        Atom_Test ident                 
            = ss (ident.s) ;
        Atom_Args ident args            
            = ss (ident.s ++ "(" ++ args.s ++ ")") ;
        Atom_Noargs ident               
            = ss (ident.s) ;
        Atom_Math mathf                 
            = ss ("!(" ++ mathf.s ++ ")") ;

        -- Ident
        Ident_Hopeful c n s h u q l m
            = ss ("hopeful" ++ c.s ++ n.s) ;
        Ident_Tally c n s h u q l m
            = ss ("tally-votes") ;
        Ident_BangElectAll c n s h u q l m
            = ss ("!elect-all") ;
        Ident_Elected c n s h u q l m
            = ss ("elected") ;
        Ident_Defeated c n s h u q l m
            = ss ("!defeated") ;
        Ident_Quota c n s h u q l m
            = ss ("!quota") ;
        Ident_Minimum c n s h u q l m
            = ss ("minimum") ;
        Ident_DefeatMin c n s h u q l m
            = ss ("defeat-min") ;
        Ident_Transfer c n s h u q l m
            = ss ("transfer") ;
        Ident_Uncounted c n s h u q l m
            = ss ("uncounted-ballot" ++ c.s ++ l.s) ;
        Ident_Counted c n s h u q l m
            = ss ("counted-ballot" ++ c.s ++ l.s) ;

        -- Arg
        Arg_C                           = ss ("C") ;
        Arg_N                           = ss ("N") ;
        Arg_S                           = ss ("S") ;
        Arg_H                           = ss ("H") ;
        Arg_U                           = ss ("U") ;
        Arg_Q                           = ss ("Q") ;
        Arg_L                           = ss ("L") ;
        Arg_M                           = ss ("M") ;
        Arg_0                           = ss ("0") ;
        Arg_1                           = ss ("1") ;
        Arg_Nil                         = ss ("nil") ;
        _ArgSg arg                      = ss (arg.s) ;
        _ArgPl arg                      = ss (arg.s ++ "+") ;
        _ArgPlus arg                    = ss ("( p !" ++ arg.s ++ ")") ;
        _ArgMinus arg                   = ss ("( s !" ++ arg.s ++ ")") ;
        -- FIX LISTS
        _ArgListEmpty                   = ss ("[]") ;
        _ArgList arg1 arg2              = ss ("( cons !" ++ arg1.s ++ "!" ++ arg2.s ++ ")") ;
        _ArgColl arg1 arg2              = ss (arg1.s ++ "," ++ arg2.s) ;
        
        _Conj2                          = ss ("**") ;
        _Disj2                          = ss ("or") ;
        _Lolli2                         = ss ("-o") ;
        _Bang2                          = ss ("!") ;

        -- Math
        _FinalFormula m1 ms m2          = ss (m1.s ++ ms.s ++ m2.s) ;
        _Math arg1                      = ss (arg1.s) ;
        _MathArgs arg1 mo arg2          = ss ("(" ++ arg1.s ++ mo.s ++ arg2.s ++ ")") ;
        _MultipleMath m1 mo m2          = ss (m1.s ++ mo.s ++ m2.s) ;

        -- ArithmeticOperation
        _Division                       = ss ("/") ;
        _Multiplication                 = ss ("*") ;
        _Addition                       = ss ("+") ;
        _Subtraction                    = ss ("-") ;

        -- InequalityOperation
        Greater                         = ss (">") ;
        GreaterEqual                    = ss (">=") ;
        Equal                           = ss ("=") ;
        LessEqual                       = ss ("<=") ;
        Less                            = ss ("<") ;
}