concrete LawsEng of Laws = open Prelude in {

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
        _Pi A B                         = ss ( B.$0 ++ "is a" ++ A.s ++ "." ++ B.s  ) ;
        _Lolli pos lolli neg            = ss ( "If" ++ pos.s ++ lolli.s ++ neg.s ) ;
        _Mon pos                        = ss ( "{" ++ pos.s ++ "}" ) ;
        
        -- Connectives
        _Conj2                          = ss ( ", and" ) ;
        _Lolli2                         = ss ( "then" ) ;
        _Bang2                          = ss ( "!" ) ;
        
        -- Argument types
        _Nat                            = ss ( "natural number" ) ;
        _Candidate                      = ss ( "candidate" ) ;
        _List                           = ss ( "list" ) ;
        
        -- Atomics
        Atom_Ident ident                = ss ( ident.s ) ;
        Atom_Math math                  = ss ( math.s ) ;

        -- Identifiers
        Ident_Uncounted a b
            = ss ( "there is an uncounted vote with highest preference for candidate" ++ a.s ++ "with a list" ++ b.s ++ "of lower preferences" ) ;
        Ident_Counted a b
            = ss ( "there is a counted vote with highest preference for candidate" ++ a.s ++ "with a list" ++ b.s ++ "of lower preferences" ) ;
        Ident_Hopeful a b
            = ss ( "candidate" ++ a.s ++ " is a hopeful with" ++ b.s ++ "votes" ) ;
        Ident_Defeated a
            = ss ( "candidate" ++ a.s ++ "has been defeated" ) ;
        Ident_Elected a
            = ss ( "candidate" ++ a.s ++ "has been elected" ) ;
        Ident_Quota a
            = ss ( a.s ++ "votes are needed to be elected" ) ;
        Ident_Winners a
            = ss ( "the candidates in the list" ++ a.s ++ "have been elected so far" ) ;
        Ident_Begin a b c
            = ss ( "we are beginning the tallying and there are" ++ a.s ++ "seats open," ++ b.s ++ " hopefuls, and" ++ c.s ++ "uncounted votes" ) ;
        Ident_Count a b c
            = ss ( "we are counting votes and there are" ++ a.s ++ "seats open," ++ b.s ++ "hopefuls, and" ++ c.s ++ "uncounted votes in play" ) ;
        Ident_BangElectAll
            = ss ( "there are more open seats than hopefuls" ) ;
        Ident_BangDefeatAll              
            = ss ( "there are no open seats left" ) ;
        Ident_DefeatMin a b c
            = ss ( "we are in the first stage of determining which candidate has the fewest votes and there are" ++ a.s ++ "seats open, " ++ b.s ++ "hopefuls, and" ++ c.s ++ "potentiel minimums remaining" ) ;
        Ident_DefeatMin' a b c
            = ss ( "we are in the second stage of determining which candidate has the fewest votes and there are" ++ a.s ++ "seats open, " ++ b.s ++ "hopefuls, and" ++ c.s ++ "potentiel minimums remaining" ) ;
        Ident_Minimum a b
            = ss ( "candidate" ++ a.s ++ "'s with a count of" ++ b.s ++ "votes is a potential minimum" ) ;
        Ident_Transfer a b c d e
            = ss ( "the candidate" ++ a.s ++"'s" ++ b.s ++ "votes are being tranferred and there are" ++ c.s ++ "open seats," ++ d.s ++ "hopeful candidates and" ++ e.s ++ "uncounted votes" ) ;
        Ident_Run a b c
            = ss ( "we are tallying votes" ) ;
        Ident_UnitOne                   
            = ss ( "consume the corresponding resources" ) ;

        -- Arguments
        _Arg A a                        = ss ( a.s ) ;
        _ArgNil                         = ss ( "- that is empty -" ) ;
        _ArgZ                           = ss ( "zero" ) ;
        _ArgMinus a                     = ss ( "(" ++ a.s ++ "- 1 )" ) ;
        _ArgPlus a                      = ss ( "(" ++ a.s ++ "+ 1 )" ) ;
        _ArgList a b                    = ss ( "consisting of" ++ a.s ++ "and" ++ b.s ) ;

        -- Mathematic operations
        _MathArg arg1                   = ss ( arg1.s ) ;
        _FinalFormula m1 ms m2          = ss ( "(" ++ m1.s ++ ms.s ++ m2.s ++ ")" ) ;
        _MathArgs arg1 mo arg2          = ss ( "(" ++ arg1.s ++ mo.s ++ arg2.s ++ ")" ) ;
        _NatDivMod a b c d              = ss ( "(" ++ a.s ++ "=" ++ b.s ++ "*" ++ c.s ++ "+" ++ d.s ++ ")" ) ;

        -- Arithmetic operations
        _Division                       = ss ( "/" ) ;
        _Multiplication                 = ss ( "*" ) ;
        _Addition                       = ss ( "+" ) ;
        _Subtraction                    = ss ( "-" ) ;

        -- Inequality operations
        _Greater                        = ss ( "is greater than" ) ;
        _GreaterEqual                   = ss ( "is greater than or equal to" ) ;
        _Equal                          = ss ( "is equal to" ) ;
        _LessEqual                      = ss ( "is less than or equal to" ) ;
        _Less                           = ss ( "is less than" ) ;

}