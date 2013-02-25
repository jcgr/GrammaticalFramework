abstract Food = {

  flags startcat = Phrase ;

  cat
    Phrase ; Item ; Kind ; Quality ;

  fun
    Is, Ist, EIs, EIst : Item -> Quality -> Phrase ;
    This, That, ItThere : Kind -> Item ;
    QKind : Quality -> Kind -> Kind ;
    Wine, Cheese, Fish, Beer : Kind ;
    Very, Super : Quality -> Quality ;
    Fresh, Warm, Italian, Expensive, Delicious, Boring, Dead : Quality ;
}