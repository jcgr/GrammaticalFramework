concrete HelloEng of Hello = {
    lincat 
        Recipient, Greeting = {s : Str} ;
    lin 
        World = {s = "world"} ;
        Friend = {s = "friend"} ;
        Enemy = {s = "enemy"} ;
        Hello recip = {s = "hello" ++ recip.s} ;
}