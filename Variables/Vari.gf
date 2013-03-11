abstract Vari = {

    flags startcat = Prop ;
    
    cat
        Ind ; Prop ;
    
    fun
        Eq : Ind -> Ind -> Prop ;
        All : (Ind -> Prop) -> Prop ;
        _X : Ind ;
}