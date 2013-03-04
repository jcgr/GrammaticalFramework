concrete ZeroLat of Zero = {

    lincat
        S, VP, V2 = Str ;
        NP = Case => Str ;

    lin
        Pred np vp = np ! Nom ++ vp ;
        Compl v2 np = np ! Acc ++ v2 ;
        John = table {Nom => "Ioannes" ; Acc => "Ioannem"} ;
        Mary = table {Nom => "Maria" ; Acc => "Mariam"} ;
        Love = "amat" ;

    param
        Case = Nom | Acc ;
}