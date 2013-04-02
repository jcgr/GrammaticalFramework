concrete LawsDan3 of Laws3 = open SharedOpers in {

    lincat
        Logic, Prod, Neg, Pos, Lolli, Bang, Atomic, Ident, Conj, Disj, Pi, MathSymbol, ArgColl = {s : Str} ;
        Arg = {s : ModType => Str} ;

    lin
        -- Logic
        Formular neg                    = ss neg.s ;
        
        -- Pos
        _Atom atom                      = ss (atom.s) ;
        _Bang bang atom                 = ss (atom.s ++ bang.s) ;
        _Conj pos1 conj pos2            = ss (pos1.s ++ conj.s ++ pos2.s) ;
        _Disj pos1 disj pos2            = ss (pos1.s ++ disj.s ++ pos2.s) ;
        
        -- Neg
        _Pi _ neg                       = ss (neg.s) ;
        _Lolli pos lolli neg            = ss ("hvis" ++ pos.s ++ lolli.s ++ "{" ++ neg.s ++ "}") ;
        _Mon pos                        = ss (pos.s) ;
        
        -- Atomic
        Atom_Args ident args            = ss (ident.s ++ args.s) ;
        Atom_Noargs ident               = ss ident.s ;
        Atom_Math args1 sym args2       = ss (args1.s ++ sym.s ++ args2.s) ;

        -- Ident
        -- TODO: Change to fit Danish
        Ident_Hopeful                   = ss "der er en forhåbningsfuld" ;
        Ident_Tally                     = ss "vi tæller stemmer" ;
        Ident_BangElectAll              = ss "der er flere åbne sæder end forhåbningsfulde" ;
        Ident_Elected                   = ss "valgt" ;
        Ident_Defeated                  = ss "!defeated" ;
        Ident_Quota                     = ss "!quota" ;
        Ident_Minimum                   = ss "minimum" ;
        Ident_DefeatMin                 = ss "defeat-min" ;
        Ident_Transfer                  = ss "transfer" ;
        Ident_Uncounted                 = ss "uncounted-ballot" ;
        Ident_Counted                   = ss "counted-ballot" ;

        -- Arg
        Arg_C                           = (mkArg "kandidat" "C") ;
        Arg_N                           = (mkArg "nummer" "N") ;
        Arg_S                           = (mkArg "sæde" "S") ;
        Arg_H                           = (mkArg "forhåbningsfuld" "H") ;
        Arg_U                           = (mkArg "utalt stemme" "U") ;
        Arg_Q                           = (mkArg "kvote" "Q") ;
        Arg_L                           = (mkArg "preference list" "L") ;
        Arg_M                           = (mkArg "mandat" "M") ;
        Arg_0                           = (mkArg "tal" "0") ;
        Arg_1                           = (mkArg "tal" "1") ;
        _Arg arg                        = ss (arg.s ! None) ;
        _ArgPlus arg                    = ss (arg.s ! Plus) ;
        _ArgMinus arg                   = ss (arg.s ! Minus) ;
        _ArgListEmpty                   = ss "tom liste" ;
        _ArgList arg1 arg2              = ss ("liste der inderholder" ++ arg1.s ++ "og" ++ arg2.s) ;
        _ArgColl arg1 arg2              = ss (arg1.s ++ arg2.s) ;
        
        _Conj2                          = ss "og" ;
        _Disj2                          = ss "eller" ;
        _Lolli2                         = ss "så" ;
        _Bang2                          = ss "som ikke bliver konsumeret" ;

        -- MathSymbol
        Greater                         = ss "er større end" ;
        GreaterEqual                    = ss "er større end eller lig med" ;
        Equal                           = ss "er lig med" ;
        LessEqual                       = ss "er mindre end eller lig med" ;
        Less                            = ss "er mindre end" ;

    oper
        -- Formats the arguments so they are readable
        mkArg : Str -> Str -> {s : ModType => Str} = \str,id -> {
            s = table {
                Plus => "forøg antallet af" ++ (regNoun str).s ! Pl ++ "(" + id + ")" ++ "med 1" ;
                Minus => "formindsk antallet af" ++ (regNoun str).s ! Pl ++ "(" + id + ")" ++ "med 1" ;
                None => str ++ "(" + id + ")"
            }
        } ;

        -- Takes care of the plural version of words
        regNoun : Str -> {s : Number => Str} = \w -> 
            let 
                ws : Str = case w of {
                "tal"                             => w ;
                _ + "e"                           => w + "r" ;
                _ + ("d" | "r")                   => w + "e" ; 
                _                                 => w + "er"
                } 
            in 
            mkNoun w ws ;
}