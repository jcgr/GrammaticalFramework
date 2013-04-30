resource SharedOpers = {
    
    param
        Number                          = Sg | Pl ;

    oper
        SS : Type = {s : Str} ;

        ss : Str -> SS = \x -> {s = x} ;

        cc : SS -> SS -> SS = \x,y -> ss (x.s ++ y.s) ;

        ccc : SS -> SS -> SS -> SS = \x,y,z -> ss (x.s ++ y.s ++z.s) ;

        mkNoun : Str -> Str -> {s : Number => Str} = \x,y -> {
            s = table {
                Sg => x ;
                Pl => y 
            }
        } ;
}