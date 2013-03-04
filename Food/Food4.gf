abstract Food4 = {

  flags startcat = Phrase ;

  cat
    Phrase ; Item ; Kind ; Quality ;

  fun
    Is : Item -> Quality -> Phrase ;
    This, That, These : Kind -> Item ;
    QSKind, QPKind : Quality -> Kind -> Kind ;
    Wine, Cheese, Fish : Kind ;
    Very : Quality -> Quality ;
    Fresh, Warm, Italian, Expensive, Delicious, Boring : Quality ;
}