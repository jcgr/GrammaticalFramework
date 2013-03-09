concrete FoodEng5 of Food5 = open Prelude in {

    lincat
        Phrase, Quality = SS ; 
        Kind = {s : Number => Str} ; 
        Item = {s : Str ; n : Number} ; 

    lin
        Is item quality = ss (item.s ++ copula item.n ++ quality.s) ;
        This kind = det Sg "this" kind ;
        That kind = det Sg "that" kind ;
        These kind = det Pl "these" kind ;
        Those kind = det Pl "those" kind ;
        QKind quality kind = {s = table {n => quality.s ++ kind.s ! n}} ;
        Wine = regNoun "wine" ;
        Cheese = regNoun "cheese" ;
        Fish = noun "fish" "fish" ;
        Pizza = regNoun "pizza" ;
        Very qual = prefix "very" qual ;
        Fresh = ss "fresh" ;
        Warm = ss "warm" ;
        Italian = ss "Italian" ;
        Expensive = ss "expensive" ;
        Delicious = ss "delicious" ;
        Boring = ss "boring" ;

    param
        Number = Sg | Pl ;

    oper
        det : Number -> Str -> {s : Number => Str} -> {s : Str ; n : Number} = \n,d,cn -> {
            s = d ++ cn.s ! n ;
            n = n
        } ;
        noun : Str -> Str -> {s : Number => Str} = \man,men -> {
            s = table {
                Sg => man ;
                Pl => men 
            }
        } ;
        regNoun : Str -> {s : Number => Str} = \car -> 
            noun car (car + "s") 
        ;
        copula : Number -> Str = \n -> case n of {
            Sg => "is" ;
            Pl => "are"
        } ;
}    
