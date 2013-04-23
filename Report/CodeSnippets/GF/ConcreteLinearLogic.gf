concrete ConcreteLinearLogic of AbstractLinearLogic = {
    lincat 
        Formula, Connective, Ident = {s = Str} ;
    lin 
        _VoteCard = {s = "voting-auth-card"} ;
        _BlankBallot = {s = "blank-ballot"} ;
        _Lolli = {s = "-o"} ;
        _Formula i1 c i2 = {s = i1.s ++ c.s ++ "{" ++ i2.s ++ "}"} ;
}