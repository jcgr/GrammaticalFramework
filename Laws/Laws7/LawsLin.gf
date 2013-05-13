concrete LawsLin of Laws = open Prelude in {

    lincat
        Logic, Prod, Neg, Pos, Lolli, Bang, Atomic, Ident, Arg, ArgType, Conj, Math, MathFormula, ArithmeticOperation, InequalityOperation, El = SS ;

    lin
        -- Logic
        Formular neg                    = ss (neg.s) ;
        
        -- Positive types
        _Atom atom                      = ss (atom.s) ;
        _Bang bang atom                 = ss (bang.s ++ atom.s) ;
        _Conj pos1 conj pos2            = ss (pos1.s ++ conj.s ++ pos2.s) ;
        _Unit neg                       = ss (neg.s) ;
        _MPos pos1 pos2                 = ss (pos1.s ++ pos2.s) ;
        
        -- Negative types
        _Pi A B                         = ss ( "Pi" ++ B.$0 ++ ":" ++ A.s ++ "." ++ B.s ) ;
        _Lolli pos lolli neg            = ss (pos.s ++ lolli.s ++ neg.s) ;
        _Mon pos                        = ss ("{" ++ pos.s ++ "}") ;
        
        -- Atomics
        Atom_Ident ident                = ss (ident.s) ;
        Atom_Math math                  = ss (math.s) ;

        -- Identifiers
        Ident_Uncounted a b             = ss ("uncounted-ballot" ++ a.s ++ b.s) ;
        Ident_Counted a b               = ss ("counted-ballot" ++ a.s ++ b.s) ;
        Ident_Hopeful a b               = ss ("hopeful" ++ a.s ++ b.s) ;
        Ident_Defeated a                = ss ("!defeated" ++ a.s) ;
        Ident_Elected a                 = ss ("!elected" ++ a.s) ;
        Ident_Quota a                   = ss ("!quota" ++ a.s) ;
        Ident_Winners a                 = ss ("winners" ++ a.s) ;
        Ident_Begin a b c               = ss ("begin" ++ a.s ++ b.s ++ c.s) ;
        Ident_Count a b c               = ss ("count-ballots" ++ a.s ++ b.s ++ c.s) ;
        Ident_BangElectAll              = ss ("!elect-all") ;
        Ident_BangDefeatAll             = ss ("!defeat-all") ;
        Ident_DefeatMin a b c           = ss ("defeat-min" ++ a.s ++ b.s ++ c.s) ;
        Ident_DefeatMin' a b c          = ss ("defeat-min'" ++ a.s ++ b.s ++ c.s) ;
        Ident_Minimum a b               = ss ("minimum" ++ a.s ++ b.s) ;
        Ident_Transfer a b c d e        = ss ("transfer" ++ a.s ++ b.s ++ c.s ++ d.s ++ e.s) ;
        Ident_UnitOne                   = ss ("1") ;

        -- Arguments
        _Arg A a                        = ss (a.s) ;
        _ArgNil                         = ss ("nil") ;
        _ArgZ                           = ss ("z") ;
        _Arg1                           = ss ("1") ;
        _ArgMinus a                     = ss ("( s !" ++ a.s ++ ")") ;
        _ArgPlus a                      = ss ("( p !" ++ a.s ++ ")") ;
        _ArgList a b                    = ss ("( cons !" ++ a.s ++ "!" ++ b.s ++ ")") ;
        _ArgEmptyList                   = ss ("[]") ;
        
        -- Argument types
        _Nat                            = ss ("nat") ;
        _Candidate                      = ss ("candidate") ;
        _List                           = ss ("list") ;
        
        -- Connectives
        _Conj2                          = ss ("*") ;
        _Lolli2                         = ss ("-o") ;
        _Bang2                          = ss ("!") ;

        -- Mathematic operations
        _MathArg arg1                   = ss (arg1.s) ;
        _FinalFormula m1 ms m2          = ss (ms.s ++ m1.s ++ m2.s) ;
        _MathArgs arg1 mo arg2          = ss ("(" ++ arg1.s ++ mo.s ++ arg2.s ++ ")") ;

        _Division                       = ss ("/") ;
        _Multiplication                 = ss ("*") ;
        _Addition                       = ss ("+") ;
        _Subtraction                    = ss ("-") ;

        _Greater                        = ss ("!nat-greater") ;
        _GreaterEqual                   = ss ("!nat-greatereq") ;
        _Equal                          = ss ("!nat-eq") ;
        _LessEqual                      = ss ("!nat-lesseq") ;
        _Less                           = ss ("!nat-less") ;
}