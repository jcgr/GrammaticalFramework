concrete HelloIta of Hello = {
    lincat 
        Recipient, Greeting = {s : Str} ;
    lin 
        World = {s = "mondo"} ;
        Friend = {s = "amico"} ;
        Enemy = {s = "nemico"} ;
        Hello recip = {s = "ciao" ++ recip.s} ;
}