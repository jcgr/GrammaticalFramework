concrete LawsDan of Laws = open SharedOpers in {

    lincat
        Logic, Prod, Neg, Pos, Lolli, Bang, Atomic, Ident, Arg, ArgColl, Conj, Math, MathFormula, ArithmeticOperation, InequalityOperation = {s : Str} ;

    lin
        -- Logic
        Formular neg                    = ss (neg.s) ;

        -- Pos
        _Atom atom                      = ss (atom.s) ;
        _Bang bang atom                 = ss (atom.s ++ bang.s) ;
        _Conj pos1 conj pos2            = ss (pos1.s ++ conj.s ++ pos2.s) ;
        _Unit neg                       = ss (neg.s) ;
        _MPos pos1 pos2                 = ss (pos1.s ++ pos2.s) ;

        -- Neg
        --_Pi arg                         = ss (arg.s ++ "er" ++ ("en liste" | "et sæt" | "en kandidat")) ;
        _Pi arg                         = ss ("") ;
        _Lolli pos lolli neg            = ss ("hvis" ++ pos.s ++ lolli.s ++ "{" ++ neg.s ++ "}") ;
        _Mon pos                        = ss (pos.s) ;

        -- Atomic
        Atom_Ident ident                = ss ("[" ++ ident.s ++ "]") ;
        Atom_Math math                  = ss ("[" ++ math.s ++ "]") ;

        -- Ident
        Ident_Hopeful c n s h u q l m w
            = ss ("der er en forhåbningsfuld" ++ c.s ++ "med" ++ n.s) ;
        Ident_Tally c n s h u q l m w
            = ss ("vi tæller stemmer og der er" ++ s.s ++ "åbne," ++ h.s ++ ", og" ++ u.s ++ "i spil") ;
        Ident_BangElectAll c n s h u q l m w
            = ss ("der er flere åbne sæder end forhåbningsfulde") ;
        Ident_Elected c n s h u q l m w
            = ss (c.s ++ "er blevet (og vil forblive) valgt") ;
        Ident_Defeated c n s h u q l m w
            = ss (c.s ++ "er blevet (og vil forblive) besejret") ;
        Ident_Quota c n s h u q l m w
            = ss (q.s ++ "skal til for at blive valgt") ;
        Ident_Minimum c n s h u q l m w
            = ss (c.s ++ "s mængde af " ++ n.s ++ " er et potentielt minimum") ;
        Ident_DefeatMin c n s h u q l m w
            = ss ("vi er på første skridt af at finde kandidaten med færrest stemmer og der er" ++ s.s ++ "open, " ++ h.s ++ ", og" ++ m.s ++ "tilbage") ;
        Ident_DefeatMin' c n s h u q l m w
            = ss ("vi er på andet skridt af at finde kandidaten med færrest stemmer og der er" ++ s.s ++ "open, " ++ h.s ++ ", og" ++ m.s ++ "tilbage") ;
        Ident_Transfer c n s h u q l m w
            = ss ("den besejret" ++ c.s ++" tilbageværende" ++ n.s ++ "bliver overflyttet og der er" ++ s.s ++ "åbne, " ++ h.s ++ ", og" ++ u.s) ;
        Ident_Uncounted c n s h u q l m w
            = ss ("der er en utalt stemmeseddel med højest preference for en bestemt" ++ c.s ++ "med" ++ l.s ++ "af lavere preferencer for andre") ;
        Ident_Counted c n s h u q l m w
            = ss ("der er en talt stemmeseddel med højest preference for en bestemt" ++ c.s ++ "med" ++ l.s ++ "af lavere preferencer for andre") ;
        Ident_Winners c n s h u q l m w
            = ss ("kandidaterne i" ++ w.s ++ "er blevet valgt indtil videre") ;
        Ident_Begin c n s h u q l m w
            = ss ("we begynder på optællingen og der er" ++ s.s ++ "åbne," ++ h.s ++ ", og" ++ u.s ++ "i spil") ;

        -- Arg
        Arg_C                           = ss ("kandidat (C)") ;
        Arg_C'                          = ss ("en anden kandidat (C')") ;
        Arg_N                           = ss ("et sæt af talte stemmeseddeler (N)") ;
        Arg_N'                          = ss ("et andet sæt af talte stemmeseddeler (N)") ;
        Arg_S                           = ss ("et sæt af sæder (S)") ;
        Arg_H                           = ss ("et sæt af forhåbningsfulde (H)") ;
        Arg_U                           = ss ("et sæt af utalte stemmeseddeler (U)") ;
        Arg_Q                           = ss ("et sæt af stemmer (Q)") ;
        Arg_L                           = ss ("en liste (L)") ;
        Arg_M                           = ss ("et sæt af mandater (M)") ;
        Arg_W                           = ss ("en vinder liste (W)") ;
        Arg_0                           = ss ("0") ;
        Arg_1                           = ss ("1") ;
        Arg_Nil                         = ss ("nil") ;
        _Arg arg                        = ss (arg.s) ;
        _ArgPlus arg                    = ss (arg.s ++ "plus 1") ;
        _ArgMinus arg                   = ss (arg.s ++ "minus 1") ;
        _ArgListEmpty                   = ss ("en tom liste") ;
        _ArgList arg1 arg2              = ss ("en liste der inderholder" ++ arg1.s ++ "og" ++ arg2.s) ;

        _Conj2                          = ss ("og") ;
        _Lolli2                         = ss ("så") ;
        _Bang2                          = ss ("som ikke bliver konsumeret") ;

        -- Math
        _FinalFormula m1 ms m2          = ss (m1.s ++ ms.s ++ m2.s) ;
        _Math arg1                      = ss ("antallet af" ++ arg1.s) ;
        _MathArgs arg1 mo arg2          = ss ("(" ++ "mængden af" ++ arg1.s ++ mo.s ++ "mængden af" ++ arg2.s ++ ")") ;

        -- ArithmeticOperation
        _Division                       = ss ("divideret med") ;
        _Multiplication                 = ss ("ganget med") ;
        _Addition                       = ss ("plus") ;
        _Subtraction                    = ss ("minus") ;

        -- InequalityOperation
        Greater                         = ss ("er større end") ;
        GreaterEqual                    = ss ("er større end eller lig med") ;
        Equal                           = ss ("er lig med") ;
        LessEqual                       = ss ("er mindre end eller lig med") ;
        Less                            = ss ("er mindre end") ;
}