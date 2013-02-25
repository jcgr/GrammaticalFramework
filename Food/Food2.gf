abstract Food2 = {

  flags startcat = Phrase ;

  cat
    Phrase ; Item ; Kind ; Quality ; Excuse ;

  fun
    Is, Ist : Item -> Quality -> Phrase ;
    EPhrase : Phrase -> Excuse ;
    This, That, ItThere : Kind -> Item ;
    QKind : Quality -> Kind -> Kind ;
    Wine, Cheese, Fish, Beer : Kind ;
    Very : Quality -> Quality ;
    Fresh, Warm, Italian, Expensive, Delicious, Boring, Dead : Quality ;
}