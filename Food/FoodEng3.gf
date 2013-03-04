    concrete FoodEng3 of Food = open StringOper in {
  
      lincat
        S, Item, Kind, Quality = SS ;
  
      lin
        Is item quality = cc item (prefix "is" quality) ;
        This k = prefix "this" k ;
        That k = prefix "that" k ;
        QKind k q = cc k q ;
        Wine = ss "wine" ;
        Cheese = ss "cheese" ;
        Fish = ss "fish" ;
        Very = prefix "very" ;
        Fresh = ss "fresh" ;
        Warm = ss "warm" ;
        Italian = ss "Italian" ;
        Expensive = ss "expensive" ;
        Delicious = ss "delicious" ;
        Boring = ss "boring" ;
    }