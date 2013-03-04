concrete FoodEng4 of Food4 = {

    param Number = Sg | Pl ;

    lincat
        Phrase, Item, Quality = Str ;
        Kind = Number => Str ;

    lin
        Is item quality = item ++ "is" ++ quality ;

        This kind = "this" ++ kind ! Sg ;
        That kind = "that" ++ kind ! Sg ;
        These kind = "these" ++ kind ! Pl ;
        QSKind quality kind = quality ++ kind ! Sg ;
        QPKind quality kind = quality ++ kind ! Pl ;

        Wine =
            table {
                Sg => "wine" ;
                Pl => "wines"
            } ;
        Cheese =
            table {
                Sg => "cheese" ;
                Pl => "cheeses"
            } ;
        Fish =
            table {
                Sg => "fish" ;
                Pl => "fishes"
            } ;

        Very quality = "very" ++ quality ;
        Fresh = "fresh" ;
        Warm = "warm" ;
        Italian = "Italian" ;
        Expensive = "expensive" ;
        Delicious = "delicious" ;
        Boring = "boring" ;
}  