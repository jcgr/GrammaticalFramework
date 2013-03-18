abstract Vari = {

    flags startcat = Prop ;
    
    cat
        Ind ; Prop ;
    
    fun
        All : (Ind -> Prop) -> Prop ;
        Eq : Ind -> Ind -> Prop ;
}