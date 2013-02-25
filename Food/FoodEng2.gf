concrete FoodEng2 of Food2 = {

    lincat
        Phrase, Item, Kind, Quality, Excuse = {s : Str} ;

    lin
        -- Phrase
        Is item quality = {s = item.s ++ "is" ++ quality.s} ;
        Ist item quality = {s = "is" ++ item.s ++ quality.s} ;
        EPhrase phr = {s = "excuse me but" ++ phr.s} ;
        -- Item
        This kind = {s = "this" ++ kind.s} ;
        That kind = {s = "that" ++ kind.s} ;
        ItThere kind = {s = "it there" ++ kind.s} ;
        -- Kind
        QKind quality kind = {s = quality.s ++ kind.s} ;
        Wine = {s = "wine"} ;
        Cheese = {s = "cheese"} ;
        Fish = {s = "fish"} ;
        Beer = {s = "beer"} ;
        -- Quality
        Very quality = {s = "very" ++ quality.s} ;
        Fresh = {s = "fresh"} ;
        Warm = {s = "warm"} ;
        Italian = {s = "Italian"} ;
        Expensive = {s = "expensive"} ;
        Delicious = {s = "delicious"} ;
        Boring = {s = "boring"} ;
        Dead = {s = "dead"} ;
}  