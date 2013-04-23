concrete ConcreteEnglish of AbstractLinearLogic = {
    lincat 
        Formula, Connective, Ident = {s = Str} ;
    lin 
        _VoteCard = {s = "an authorization card"} ;
        _BlankBallot = {s = "a blank ballot"} ;
        _Lolli = {s = "then"} ;
        _Formula i1 c i2 = {s = "if i give" ++ i1.s ++ c.s ++ "i get" ++ i2.s} ;
}