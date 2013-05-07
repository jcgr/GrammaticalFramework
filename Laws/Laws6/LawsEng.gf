concrete LawsEng of Laws = open SharedOpers in {

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
        --_Pi arg                         = ss (arg.s ++ "is" ++ ("a list" | "a set" | "a candidate")) ;
        _Pi arg                         = ss ("") ;
        _Lolli pos lolli neg            = ss ("if" ++ pos.s ++ lolli.s ++ "{" ++ neg.s ++ "}") ;
        _Mon pos                        = ss (pos.s) ;
        
        -- Atomic
        Atom_Ident ident                = ss ("[" ++ ident.s ++ "]") ;
        Atom_Math math                  = ss ("[" ++ math.s ++ "]") ;

        -- Ident
        Ident_Hopeful c n s h u q l m w
            = ss ("there is a hopeful" ++ c.s ++ " with" ++ n.s) ;
        Ident_Tally c n s h u q l m w
            = ss ("we are tallying votes and there is" ++ s.s ++ "open," ++ h.s ++ ", and" ++ u.s ++ "cast") ;
        Ident_BangElectAll c n s h u q l m w
            = ss ("there is more open seats than hopefuls") ;
        Ident_Elected c n s h u q l m w
            = ss (c.s ++ "has been (and will remain) elected") ;
        Ident_Defeated c n s h u q l m w
            = ss (c.s ++ "has been (and will remain) defeated") ;
        Ident_Quota c n s h u q l m w
            = ss (q.s ++ "are needed to be elected") ;
        Ident_Minimum c n s h u q l m w
            = ss (c.s ++ "'s count of" ++ n.s ++ "is a potential minimum") ;
        Ident_DefeatMin c n s h u q l m w
            = ss ("we are in the first step of determining which candidate has the fewest votes and there is" ++ s.s ++ "open, " ++ h.s ++ ", and" ++ m.s ++ "remaining") ;
        Ident_DefeatMin' c n s h u q l m w
            = ss ("we are in the second step of determining which candidate has the fewest votes and there is" ++ s.s ++ "open, " ++ h.s ++ ", and" ++ m.s ++ "remaining") ;
        Ident_Transfer c n s h u q l m w
            = ss ("we are in the second step of determining which candidate has the fewest votes and there is" ++ s.s ++ "open, " ++ h.s ++ ", and" ++ m.s ++ "remaining") ;
        Ident_Uncounted c n s h u q l m w
            = ss ("there is an uncounted ballot with highest preference for a certain" ++ c.s ++ "with" ++ l.s ++ " lower preferences") ;
        Ident_Counted c n s h u q l m w
            = ss ("there is a counted ballot with highest preference for a certain" ++ c.s ++ "with" ++ l.s ++ " lower preferences") ;
        Ident_Winners c n s h u q l m w
            = ss ("the candidates in" ++ w.s ++ "have been elected thus far") ;
        Ident_Begin c n s h u q l m w
            = ss ("we are beginning the tallying and there is " ++ s.s ++ "open," ++ h.s ++ ", and" ++ u.s ++ "cast") ;

        -- Arg
        Arg_C                           = ss ("candidate (C)") ;
        Arg_C'                          = ss ("second candidate (C')") ;
        Arg_N                           = ss ("a set of counted ballots (N)") ;
        Arg_N'                          = ss ("a modified set of counted ballots (N)") ;
        Arg_S                           = ss ("a set of seats (S)") ;
        Arg_H                           = ss ("a set of hopeful candidates (H)") ;
        Arg_U                           = ss ("a set of uncounted ballots (U)") ;
        Arg_Q                           = ss ("a set of votes (Q)") ;
        Arg_L                           = ss ("a list (L)") ;
        Arg_M                           = ss ("a set of potential minimums (M)") ;
        Arg_W                           = ss ("a list of winners (W)") ;
        Arg_0                           = ss ("0") ;
        Arg_1                           = ss ("1") ;
        Arg_Nil                         = ss ("nil") ;
        _Arg arg                        = ss (arg.s) ;
        _ArgPlus arg                    = ss (arg.s ++ "plus 1") ;
        _ArgMinus arg                   = ss (arg.s ++ "minus 1") ;
        _ArgListEmpty                   = ss ("empty list") ;
        _ArgList arg1 arg2              = ss ("list containing" ++ arg1.s ++ "and" ++ arg2.s) ;
        
        _Conj2                          = ss ("and") ;
        _Lolli2                         = ss ("then") ;
        _Bang2                          = ss ("that is not consumed") ;

        -- Math
        _FinalFormula m1 ms m2          = ss (m1.s ++ ms.s ++ m2.s) ;
        _Math arg1                      = ss ("the amount of" ++ arg1.s) ;
        _MathArgs arg1 mo arg2          = ss ("(" ++ "the amount of" ++ arg1.s ++ mo.s ++ "the amount of" ++ arg2.s ++ ")") ;

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
}