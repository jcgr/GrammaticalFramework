resource StringOper = {
  oper
    SS : Type = {s : Str} ;
    ss : Str -> SS = \x -> {s = x} ;
    c : SS -> SS = \x -> ss x.s ;
    cc : SS -> SS -> SS = \x,y -> ss (x.s ++ y.s) ;
    ccc : SS -> SS -> SS -> SS = \x,y,z -> ss (x.s ++ y.s ++z.s) ;
    prefix : Str -> SS -> SS = \p,x -> ss (p ++ x.s) ;
}