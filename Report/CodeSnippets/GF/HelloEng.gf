concrete HelloEng of Hello = {
    lincat 
        Recipient, Greeting = {s : Str} ;
    lin 
        World = {s = "world"} ;
        Mum = {s = "mum"} ;
        Friends = {s = "friends"} ;
        Hello recip = {s = "hello" ++ recip.s} ;
}