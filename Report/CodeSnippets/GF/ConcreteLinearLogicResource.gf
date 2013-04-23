concrete HelloEng of AbstractLinearLogic = open StringOper in {
    lincat 
        Formula, Connective, Ident = SS ;
    lin 
        _VoteCard = ss ("voting-auth-card") ;
        _BlankBallot = ss ("blank-ballot") ;
        _Lolli = ss ("-o") ;
        _Formula i1 c i2 = ss (i1.s ++ c.s ++ "{" ++ i2.s ++ "}") ;
}