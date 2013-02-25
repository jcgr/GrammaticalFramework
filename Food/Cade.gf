abstract Cade = {

    flags startcat = Proposition ;

    cat
        Proposition ; Term ;
    fun
        var_x : Term ;
        Abs : Term -> Term ;
        Positive : Term -> Proposition ;

}