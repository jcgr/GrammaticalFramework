abstract Hello = {
    flags startcat = Greeting ;
    
    cat 
        Recipient ; Greeting ;
    fun 
        World, Friend, Enemy : Recipient ;
        Hello : Recipient -> Greeting ;
}