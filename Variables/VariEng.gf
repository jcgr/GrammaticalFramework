concrete VariEng of Vari = open Prelude in {
    
    lincat
		Ind, Prop = SS ;
		Set = SS ;
		El = SS ;

    lin
        All B           = ss ( "(" ++ "All" ++ B.$0 ++ ")" ++ B.s ) ;
        Eq A a b        = ss ( (paren (a.s ++ "=" ++ b.s)) ) ;
		Nat 			= ss ( "N" ) ;
  		Pi A B 			= ss ( paren (capPi ++ B.$0 ++ ":" ++ A.s) ++ B.s ) ;

		Id A a b 		= apply "I" A a b ;

	oper
		capPi = "Π" | "Pi" ;

		apply = overload {
			apply : Str -> Str -> Str = \f,x -> 
				f ++ paren x ;
			apply : Str -> SS -> SS = \f,x -> 
				prefixSS f (parenss x) ;
			apply : Str -> SS -> SS -> SS = \f,x,y ->
				prefixSS f (parenss (ss (x.s ++ "," ++ y.s))) ;
			apply : Str -> SS -> SS -> SS -> SS = \f,x,y,z ->
				prefixSS f (parenss (ss (x.s ++ "," ++ y.s ++ "," ++ z.s))) ;
			apply : Str -> SS -> SS -> SS -> SS -> SS = \f,x,y,z,u ->
				prefixSS f (parenss (ss (x.s ++ "," ++ y.s ++ "," ++ z.s ++ "," ++ u.s))) ;
		} ;
}