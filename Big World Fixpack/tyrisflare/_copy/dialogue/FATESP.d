EXTEND_BOTTOM FATESP 6 #1
  + ~!Dead("G#Tyris")
     !Global("G#G3.CompletedSoA","GLOBAL",1)
     Global("G#TF.TyrisMatch","GLOBAL",1)
     !Global("AerieRomanceActive","GLOBAL",2)
     !Global("JaheiraRomanceActive","GLOBAL",2)
     !Global("ViconiaRomanceActive","GLOBAL",2)
     !Global("NeeraRomanceActive","GLOBAL",2)
     !Global("DornRomanceActive","GLOBAL",2)
     Global("G#TF.TyrisSummoned","GLOBAL",0)~ + @0 DO ~SetGlobal("G#TF.TyrisRomanceActive","GLOBAL",2) 
                                                                                   SetGlobal("G#TF.TyrisSummoned","GLOBAL",1)
                                                                                   SetGlobal("G#TF.SleptWithTyris","GLOBAL",1)~ EXTERN FATESP 8
  + ~!Dead("G#Tyris")
     OR(2)
       !Global("G#G3.CompletedSoA","GLOBAL",1)
       Global("G#TF.HasBeenSpokenTo","GLOBAL",1)
     Global("G#TF.TyrisSummoned","GLOBAL",0)~ + @1 DO ~SetGlobal("G#TF.TyrisSummoned","GLOBAL",1)~ EXTERN FATESP 8
  + ~Dead("G#Tyris")
     OR(2)
       !Global("G#G3.CompletedSoA","GLOBAL",1)
       Global("G#TF.HasBeenSpokenTo","GLOBAL",1)
     Global("G#TF.TyrisSummoned","GLOBAL",0)~ + @1 DO ~SetGlobal("G#TF.TyrisSummoned","GLOBAL",2)~ EXTERN FATESP 10
END
