concrete LawsEng3 of Laws3 = open SharedOpers in {

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
        _Lolli pos lolli neg            = ss ("if" ++ pos.s ++ lolli.s ++ "{" ++ neg.s ++ "}") ;
        _Mon pos                        = ss (pos.s) ;
        
        -- Atomic
        Atom_Args ident args            = ss (ident.s ++ args.s) ;
        Atom_Noargs ident               = ss ident.s ;
        Atom_Math args1 sym args2       = ss (args1.s ++ sym.s ++ args2.s) ;

        -- Ident
        Ident_Hopeful                   = ss "there is a hopeful" ;
        Ident_Tally                     = ss "we are tallying votes" ;
        Ident_BangElectAll              = ss "there are more open seats than hopefuls" ;
        Ident_Elected                   = ss "a candidate has been elected" ;
        Ident_Defeated                  = ss "a candidate has been defeated" ;
        Ident_Quota                     = ss "the votes needed to be elected" ;
        Ident_Minimum                   = ss "a candidate might have enough votes" ;
        Ident_DefeatMin                 = ss "defeat-min???" ;
        Ident_Transfer                  = ss "a defeated candidate's votes are being transferred" ;
        Ident_Uncounted                 = ss "there is an uncounted ballot for a candidate" ;
        Ident_Counted                   = ss "there is a counted ballot for a bandidate" ;

        -- Arg
        Arg_C                           = (mkArg "candidate" "C") ;
        Arg_N                           = (mkArg "number" "N") ;
        Arg_S                           = (mkArg "seat" "S") ;
        Arg_H                           = (mkArg "hopeful" "H") ;
        Arg_U                           = (mkArg "uncounted votes" "U") ;
        Arg_Q                           = (mkArg "quota" "Q") ;
        Arg_L                           = (mkArg "preference list" "L") ;
        Arg_M                           = (mkArg "mandate" "M") ;
        Arg_0                           = (mkArg "number" "0") ;
        Arg_1                           = (mkArg "number" "1") ;
        _Arg arg                        = ss (arg.s ! None) ;
        _ArgPlus arg                    = ss (arg.s ! Plus) ;
        _ArgMinus arg                   = ss (arg.s ! Minus) ;
        _ArgColl arg1 arg2              = ss (arg1.s ++ arg2.s) ;
        
        _Conj2                          = ss "and" ;
        _Disj2                          = ss "or" ;
        _Lolli2                         = ss "then" ;
        _Bang2                          = ss "that is not consumed" ;

        -- MathSymbol
        Greater                         = ss "is greater than" ;
        GreaterEqual                    = ss "is greater than or equal to" ;
        Equal                           = ss "is equal to" ;
        LessEqual                       = ss "is less than or equal to" ;
        Less                            = ss "is less than" ;

    oper
        -- Formats the arguments so they are readable
        mkArg : Str -> Str -> {s : ModType => Str} = \str,id -> {
            s = table {
                Plus => "increase the amount of" ++ (regNoun str).s ! Pl ++ "(" + id + ")" ++ "by 1" ;
                Minus => "decrease the amount of" ++ (regNoun str).s ! Pl ++ "(" + id + ")" ++ "by 1" ;
                None => str ++ "(" + id + ")"
            }
        } ;

        -- Takes care of the plural version of words
        regNoun : Str -> {s : Number => Str} = \w -> 
            let 
                ws : Str = case w of {
                _ + ("a" | "e" | "i" | "o") + "o" => w + "s" ;
                _ + ("s" | "x" | "sh" | "o")      => w + "es" ;
                _ + "z"                           => w + "zes" ; 
                _ + ("a" | "e" | "o" | "u") + "y" => w + "s" ;
                x + "y"                           => x + "ies" ;
                _                                 => w + "s"
                } 
            in 
            mkNoun w ws ;
}