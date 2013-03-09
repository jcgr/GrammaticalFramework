concrete FoodEng4 of Food4 = {

    param Number = Sg | Pl ;

    lincat
        Phrase, Quality = {s : Str} ;
        Kind = {s : Number => Str} ;
        Item = {s : Str ; n : Number} ;

    lin
        Is item quality = {s = item.s ++ (copula item.n) ++ quality.s} ;

        This kind = (det "this" Sg kind) ;
        That kind = (det "that" Sg kind) ;
        These kind = (det "these" Pl kind) ;
--        That kind = {
--            s = "That" ++ kind.s ! Sg ; 
--            n = Sg
--        } ;
--        These kind = {
--            s = "these" ++ kind.s ! Pl ; 
--            n = Pl
--        } ;
--        QSKind quality kind = {
--            s = quality.s ++ kind.s ! Sg; 
--            n = Sg
--        } ;
--        QPKind quality kind =  {
--            s = quality.s ++ kind.s ! Pl; 
--            n = Pl
--        } ;

        Wine = (regNoun "wine") ;
        Cheese = (regNoun "cheese") ;
        Fish = (regNoun "fish") ;

        --Very quality = "very" ++ quality.s ;
        Fresh = {s = "fresh"} ;
        Warm = {s = "warm"} ;
        Italian = {s = "Italian"} ;
        Expensive = {s = "expensive"} ;
        Delicious = {s = "delicious"} ;
        Boring = {s = "boring"} ;

    oper
        regNoun : Str -> {s : Number => Str} = \dog -> {
            s = table {
                Sg => dog ;
                Pl => dog + "s"
            }
        } ;
        copula : Number -> Str = \n -> 
            case n of {
                Sg => "is" ;
                Pl => "are"
        } ;
        det : Str -> Number -> {s : Number => Str} -> {s : Str ; n : Number} = \det,n,kind -> {
            s = det ++ kind.s ! n ; 
            n = n
        } ; 
}  