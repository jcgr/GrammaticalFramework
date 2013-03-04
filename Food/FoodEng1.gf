concrete FoodEng of Food = {

    lincat
        Phrase, Item, Kind, Quality = {s : Str} ;

    lin
        -- Phrase
        Is item quality = {s = item.s ++ "is" ++ quality.s} ;
        Ist item quality = {s = "is" ++ item.s ++ quality.s} ;
        EIs item quality = {s = "excuse me but" ++ item.s ++ "is" ++ quality.s} ;
        EIst item quality = {s = "excuse me but" ++ "is" ++ item.s ++ quality.s} ;     

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
        Super quality = {s = "super" ++ quality.s} ;
        Fresh = {s = "fresh"} ;
        Warm = {s = "warm"} ;
        Italian = {s = "Italian"} ;
        Expensive = {s = "expensive"} ;
        Delicious = {s = "delicious"} ;
        Boring = {s = "boring"} ;
        Dead = {s = "dead"} ;
}  