concrete LawsDan4 of Laws4 = open SharedOpers in {

    lincat
        Logic, Prod, Neg, Pos, Lolli, Bang, Atomic, Ident, ArgColl, Conj, Disj, Pi, Math, MathFormula, ArithmeticOperation, InequalityOperation = {s : Str} ;
        Arg = {s : Number => Str} ;

    lin
        -- Logic
        Formular neg                    = ss (neg.s) ;
        
        -- Pos
        _Atom atom                      = ss (atom.s) ;
        _Bang bang atom                 = ss (atom.s ++ bang.s) ;
        _Conj pos1 conj pos2            = ss (pos1.s ++ conj.s ++ pos2.s) ;
        _Disj pos1 disj pos2            = ss (pos1.s ++ disj.s ++ pos2.s) ;
        
        -- Neg
        _Pi _ neg                       = ss (neg.s) ;
        _Lolli pos lolli neg            = ss ("hvis" ++ pos.s ++ lolli.s ++ "{" ++ neg.s ++ "}") ;
        _Mon pos                        = ss (pos.s) ;
        
        -- Atomic
        Atom_Args ident args            = ss (ident.s ++ "(" ++ args.s ++ ")") ;
        Atom_Noargs ident               = ss (ident.s) ;
        Atom_Math math                  = ss (math.s) ;

        -- Ident
        Ident_Hopeful                   = ss ("der er en forhåbningsfuld") ;
        Ident_Tally                     = ss ("vi tæller stemmer") ;
        Ident_BangElectAll              = ss ("der er flere åbne sæder end forhåbningsfulde") ;
        Ident_Elected                   = ss ("en kandidat er blevet valgt") ;
        Ident_Defeated                  = ss ("en kandidat er blevet besejret") ;
        Ident_Quota                     = ss ("mængden af stemmer det skal til for at blive valgt") ;
        Ident_Minimum                   = ss ("en kandidat muligvis har nok stemmer") ;
        Ident_DefeatMin                 = ss ("vi er ved at finde kandidaten med færrest stemmer") ;
        Ident_Transfer                  = ss ("en besejret kandidats stemmer bliver overført") ;
        Ident_Uncounted                 = ss ("der er en utalt stemmeseddel for en kandidat") ;
        Ident_Counted                   = ss ("der er en talt stemmeseddel for en kandidat") ;

        -- Arg
        Arg_C                           = mkArg ("C kandidat") ;
        Arg_N                           = mkArg ("N nummer") ;
        Arg_S                           = mkArg ("S sæde") ;
        Arg_H                           = mkArg ("H forhåbningsfuld") ;
        Arg_U                           = mkArg ("U utalt stemme") ;
        Arg_Q                           = mkArg ("Q kvote") ;
        Arg_L                           = mkArg ("L preference list") ;
        Arg_M                           = mkArg ("M mandat") ;
        Arg_0                           = mkArg ("tal 0") ;
        Arg_1                           = mkArg ("tal 1") ;
        _Arg arg                        = ss (arg.s ! Sg) ;
        _ArgPlus arg                    = ss ("forøg antallet af" ++ arg.s ! Pl ++ "med 1") ;
        _ArgMinus arg                   = ss ("formindsk antallet af" ++ arg.s ! Pl ++ "med 1") ;
        _ArgListEmpty                   = ss ("en tom liste") ;
        _ArgList arg1 arg2              = ss ("en liste der inderholder" ++ arg1.s ! Pl ++ "og" ++ arg2.s ! Pl) ;
        _ArgColl arg1 arg2              = ss (arg1.s ++ "," ++ arg2.s) ;
        
        _Conj2                          = ss ("og") ;
        _Disj2                          = ss ("eller") ;
        _Lolli2                         = ss ("så") ;
        _Bang2                          = ss ("som ikke bliver konsumeret") ;

        -- Math
        _FinalFormula m1 ms m2          = ss ("(" ++ m1.s ++ ms.s ++ m2.s ++ ")") ;
        _Math arg1                      = ss ("antallet af" ++ arg1.s ! Pl) ;
        _MathArgs arg1 mo arg2          = ss ("(" ++ "antallet af" ++ arg1.s ! Pl ++ mo.s ++ "antallet af" ++ arg2.s ! Pl ++ ")") ;
        _MultipleMath m1 mo m2          = ss (m1.s ++ mo.s ++ m2.s) ;

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

    oper
        mkArg : Str -> {s : Number => Str} = \str -> {
            s = table {
                Sg => (regNoun str).s ! Sg ;
                Pl => (regNoun str).s ! Pl
            }
        } ;

        -- Takes care of the plural version of words
        regNoun : Str -> {s : Number => Str} = \w -> 
            let 
                ws : Str = case w of {
                "tal" + _                         => w ;
                _ + "e"                           => w + "r" ;
                _ + ("d" | "r")                   => w + "e" ; 
                _                                 => w + "er"
                } 
            in 
            mkNoun w ws ;
}