concrete LawsEng4 of Laws4 = open SharedOpers in {

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
        _Lolli pos lolli neg            = ss ("if" ++ pos.s ++ lolli.s ++ "{" ++ neg.s ++ "}") ;
        _Mon pos                        = ss (pos.s) ;
        
        -- Atomic
        Atom_Args ident args            = ss (ident.s ++ "(" ++ args.s ++ ")") ;
        Atom_Noargs ident               = ss (ident.s) ;
        Atom_Math math                  = ss (math.s) ;

        -- Ident
        Ident_Hopeful                   = ss ("there is a hopeful") ;
        Ident_Tally                     = ss ("we are tallying votes") ;
        Ident_BangElectAll              = ss ("there are more open seats than hopefuls") ;
        Ident_Elected                   = ss ("a candidate has been elected") ;
        Ident_Defeated                  = ss ("a candidate has been defeated") ;
        Ident_Quota                     = ss ("the votes needed to be elected") ;
        Ident_Minimum                   = ss ("a candidate might have enough votes") ;
        Ident_DefeatMin                 = ss ("we are determining which candidate has the fewest votes") ;
        Ident_Transfer                  = ss ("a defeated candidate's votes are being transferred") ;
        Ident_Uncounted                 = ss ("there is an uncounted ballot for a candidate") ;
        Ident_Counted                   = ss ("there is a counted ballot for a candidate") ;

        -- Arg
        Arg_C                           = mkArg ("C candidate") ;
        Arg_N                           = mkArg ("N number") ;
        Arg_S                           = mkArg ("S seat") ;
        Arg_H                           = mkArg ("H hopeful") ;
        Arg_U                           = mkArg ("U uncounted votes") ;
        Arg_Q                           = mkArg ("Q quota") ;
        Arg_L                           = mkArg ("L preference list") ;
        Arg_M                           = mkArg ("M mandate") ;
        Arg_0                           = mkArg ("number 0") ;
        Arg_1                           = mkArg ("number 1") ;
        _Arg arg                        = ss (arg.s ! Sg) ;
        _ArgPlus arg                    = ss ("increase the amount of" ++ arg.s ! Pl ++ "by 1") ;
        _ArgMinus arg                   = ss ("decrease the amount of" ++ arg.s ! Pl ++ "by 1") ;
        _ArgListEmpty                   = ss ("empty list") ;
        _ArgList arg1 arg2              = ss ("list containing" ++ arg1.s ! Sg ++ "and" ++ arg2.s ! Sg) ;
        _ArgColl arg1 arg2              = ss (arg1.s ++ "," ++ arg2.s) ;
        
        _Conj2                          = ss ("and") ;
        _Disj2                          = ss ("or") ;
        _Lolli2                         = ss ("then") ;
        _Bang2                          = ss ("that is not consumed") ;

        -- Math
        _FinalFormula m1 ms m2          = ss ("(" ++ m1.s ++ ms.s ++ m2.s ++ ")") ;
        _Math arg1                      = ss ("the amount of" ++ arg1.s ! Pl) ;
        _MathArgs arg1 mo arg2          = ss ("(" ++ "the amount of" ++ arg1.s ! Pl ++ mo.s ++ "the amount of" ++ arg2.s ! Pl ++ ")") ;
        _MultipleMath m1 mo m2          = ss (m1.s ++ mo.s ++ m2.s) ;

        -- ArithmeticOperation
        _Division                       = ss ("divided by") ;
        _Multiplication                 = ss ("multiplied with") ;
        _Addition                       = ss ("plus") ;
        _Subtraction                    = ss ("minus") ;

        -- InequalityOperation
        Greater                         = ss ("is greater than") ;
        GreaterEqual                    = ss ("is greater than or equal to") ;
        Equal                           = ss ("is equal to") ;
        LessEqual                       = ss ("is less than or equal to") ;
        Less                            = ss ("is less than") ;

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
                "number" + _                      => w ;
                _ + ("a" | "e" | "i" | "o") + "o" => w + "s" ;
                _ + ("s" | "x" | "sh" | "o")      => w + "es" ;
                _ + "z"                           => w + "zes" ; 
                _ + ("a" | "e" | "o" | "u") + "y" => w + "s" ;
                x + "y"                           => x + "ies" ;
                _                                 => w + "s"
                } 
            in 
            mkNoun w ws ;
}