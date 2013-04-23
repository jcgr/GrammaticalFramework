abstract AbstractLinearLogic = {
    flags startcat = Formula ;
    
    cat 
        Formula ; Connective ; Ident ;
    fun 
        _VoteCard, _BlankBallot : Ident ;
        _Lolli : Connective ;
        _Formula : Ident -> Connective -> Ident -> Formula;
}