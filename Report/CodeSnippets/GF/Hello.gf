abstract Hello = {
    flags startcat = Greeting ;
    
    cat 
        Recipient ; Greeting ;
    fun 
        World, Mum, Friends : Recipient ;
        Hello : Recipient -> Greeting ;
}