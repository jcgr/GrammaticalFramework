concrete LawsDan of Laws = open SharedOpers in {

    lincat
        Logic, Prod, Neg, Pos, Lolli, Bang, Atomic, Ident, Arg, ArgType, Conj, Math, MathFormula, ArithmeticOperation, InequalityOperation, Argument = SS ;

    lin
        -- Logic
        Formula neg                    = ss ( neg.s ) ;
        
        -- Positive types
        _Atom atom                      = ss ( atom.s ) ;
        _Bang bang atom                 = ss ( atom.s ++ bang.s ) ;
        _Conj pos1 conj pos2            = ss ( pos1.s ++ conj.s ++ pos2.s ) ;
        _Unit neg                       = ss ( neg.s ) ;
        _MPos pos1 pos2                 = ss ( pos1.s ++ pos2.s ) ;
        
        -- Negative types
        _Pi A B                         = ss ( B.$0 ++ "er" ++ A.s ++ "." ++ B.s  ) ;
        _Lolli pos lolli neg            = ss ( "Hvis" ++ pos.s ++ lolli.s ++ neg.s ) ;
        _Mon pos                        = ss ( "{" ++ pos.s ++ "}" ) ;
        
        -- Connectives
        _Conj2                          = ss ( ", and" ) ;
        _Lolli2                         = ss ( "then" ) ;
        _Bang2                          = ss ( "!" ) ;
        
        -- Argument types
        _Nat                            = ss ( "naturligt tal" ) ;
        _Candidate                      = ss ( "kandidat" ) ;
        _List                           = ss ( "liste" ) ;
        
        -- Atomics
        Atom_Ident ident                = ss ( ident.s ) ;
        Atom_Math math                  = ss ( math.s ) ;

        -- Identifiers
        Ident_Uncounted a b
            = ss ( "der er en utalt stemmeseddel med højeste preference for kandidat" ++ a.s ++ "med en liste" ++ b.s ++ "af lavere preferencer" ) ;
        Ident_Counted a b
            = ss ( "der er en talt stemmeseddel med højeste preference for kandidat" ++ a.s ++ "med en liste" ++ b.s ++ "af lavere preferencer" ) ;
        Ident_Hopeful a b
            = ss ( "der er en forh[bningsfuld kandidat" ++ a.s ++ "med" ++ b.s ++ "talte stemmeseddler" ) ;
        Ident_Defeated a
            = ss ( "kandidat" ++ a.s ++ "er blevet, og vil forblive, besejret" ) ;
        Ident_Elected a
            = ss ( "kandidat" ++ a.s ++ "er blevet, og vil forblive, valgt" ) ;
        Ident_Quota a
            = ss ( a.s ++ "stemmer er nødvendige for at blive valgt" ) ;
        Ident_Winners a
            = ss ( "kandidaterne i listen" ++ a.s ++ "er blevet valgt indtil videre" ) ;
        Ident_Begin a b c
            = ss ( "vi begynder på optællingen og der er" ++ a.s ++ "sæder åbne," ++ b.s ++ "forhåbningsfulde og" ++ c.s ++ "utalte stemmeseddler" ) ;
        Ident_Count a b c
            = ss ( "vi tæller stemmer og der er" ++ a.s ++ "sæder åbne," ++ b.s ++ "forhåbningsfulde og" ++ c.s ++ "utalte stemmeseddler" ) ;
        Ident_BangElectAll
            = ss ( "der er flere åbne sæder end kandidater" ) ;
        Ident_BangDefeatAll              
            = ss ( "der er ikke flere åbne sæder tilbage" ) ;
        Ident_DefeatMin a b c
            = ss ( "vi er i første del af at bestemme hvilken kandidat har færrest stemmer og der er" ++ a.s ++ "sæder åbne," ++ b.s ++ "forhåbningsfulde og" ++ c.s ++ "potentielle minimums tilbage" ) ;
        Ident_DefeatMin' a b c
            = ss ( "vi er i anden del af at bestemme hvilken kandidat har færrest stemmer og der er" ++ a.s ++ "sæder åbne," ++ b.s ++ "forhåbningsfulde og" ++ c.s ++ "potentielle minimums tilbage" ) ;
        Ident_Minimum a b
            = ss ( "kandidat" ++ a.s ++ "med" ++ b.s ++ "stemmer er en potentiel minimum" ) ;
        Ident_Transfer a b c d e
            = ss ( "den nybesejret kandidat" ++ a.s ++"s" ++ b.s ++ "stemmer bliver flyttet og der er" ++ c.s ++ "åbne sæder," ++ d.s ++ "forhåbningsfulde kandidater og" ++ e.s ++ "utalte stemmeseddler" ) ;
        Ident_Run a b c
            = ss ( "run" ++ a.s ++ b.s ++ c.s ) ;
        Ident_UnitOne                   
            = ss ( "1" ) ;

        -- Arguments
        _Arg A a                        = ss ( a.s ) ;
        _ArgNil                         = ss ( "nil" ) ;
        _ArgZ                           = ss ( "der er tom" ) ;
        _ArgMinus a                     = ss ( "(" ++ a.s ++ "minus 1 )" ) ;
        _ArgPlus a                      = ss ( "(" ++ a.s ++ "plus 1 )" ) ;
        _ArgList a b                    = ss ( "bestående af" ++ a.s ++ "og" ++ b.s ) ;

        -- Mathematic operations
        _MathArg arg1                   = ss ( arg1.s ) ;
        _FinalFormula m1 ms m2          = ss ( "(" ++ m1.s ++ ms.s ++ m2.s ++ ")" ) ;
        _MathArgs arg1 mo arg2          = ss ( "(" ++ arg1.s ++ mo.s ++ arg2.s ++ ")" ) ;

        -- Arithmetic operations
        _Division                       = ss ( "/" ) ;
        _Multiplication                 = ss ( "*" ) ;
        _Addition                       = ss ( "+" ) ;
        _Subtraction                    = ss ( "-" ) ;

        -- Inequality operations
        Greater                         = ss ("er større end") ;
        GreaterEqual                    = ss ("er større end eller lig med") ;
        Equal                           = ss ("er lig med") ;
        LessEqual                       = ss ("er mindre end eller lig med") ;
        Less                            = ss ("er mindre end") ;
}