concrete HelloIta of Hello = {
    lincat 
        Recipient, Greeting = {s : Str} ;
    lin 
        World = {s = "mondo"} ;
        Mum = {s = "mamma"} ;
        Friends = {s = "amici"} ;
        Hello recip = {s = "ciao" ++ recip.s} ;
}