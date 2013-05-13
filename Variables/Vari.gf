abstract Vari = {

    flags startcat = Set ;
    
    cat
        Ind ; Prop ;
  		Set ;
  		El Set ;
    
    fun
        --All : (Ind -> Prop) -> Prop ;
        --Eq : Ind -> Ind -> Prop ;
        All : (Set -> Set) -> Set ;
        Eq : (A : Set) -> (a,b : El A) -> Set ;
  		Nat : Set ;
    	Pi : (A : Set) -> (El A -> Set) -> Set ;

		Id : (A : Set) -> (a,b : El A) -> Set ;
}