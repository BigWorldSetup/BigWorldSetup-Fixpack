EXTEND_BOTTOM FATESP 6 #2

+ ~!Dead("O#Xan") !InMyArea("O#Xan") Global("O#XanSummoned","GLOBAL",0) !Global("O#XanRT15","GLOBAL",2) !Global("O#XanBondedPathAlive","GLOBAL",2)~ + @34
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("O#Xan25",[1999.1228],0) 
SetGlobal("O#XanSummoned","GLOBAL",1) 
SetGlobal("O#XanFriendship","GLOBAL",1)~ GOTO 8

+ ~!Dead("O#Xan") !InMyArea("O#Xan") Global("O#XanSummoned","GLOBAL",0) Global("O#XanRT15","GLOBAL",2)~ + @35
DO ~CreateVisualEffect("SPPORTAL",[1999.1228]) 
Wait(2) 
CreateCreature("O#Xan25",[1999.1228],0) 
SetGlobal("O#XanSummoned","GLOBAL",1)~ GOTO 8

+ ~!Dead("O#Xan") !InMyArea("O#Xan") Global("O#XanJoined","GLOBAL",0) Global("O#XanSummoned","GLOBAL",0) Gender(Player1,FEMALE) Race(Player1,ELF)~ + @35 
DO ~CreateVisualEffect("SPPORTAL",[1999.1228]) 
Wait(2) 
CreateCreature("O#Xan25",[1999.1228],0) 
SetGlobal("O#XanRT15","GLOBAL",2) 
SetGlobal("O#XanSummoned","GLOBAL",1)~ GOTO 8

+ ~Dead("O#Xan") Global("O#XanSummoned","GLOBAL",0) Global("O#XanMoonbladeExtinguished","GLOBAL",3)~ + @36 
DO ~SetGlobal("O#XanSummoned","GLOBAL",3)~ + O#XanFateSpirit1

+ ~!Dead("O#Xan") !InMyArea("O#Xan") Global("O#XanSummoned","GLOBAL",0) Global("O#XanJoined","GLOBAL",0) Gender(Player1,FEMALE) Race(Player1,ELF)~ + @2166
DO ~CreateVisualEffect("SPPORTAL",[1999.1228]) 
Wait(2)
CreateCreature("O#Xan25",[1999.1228],0)
SetGlobal("O#XanBondedPathAlive","GLOBAL",2)
SetGlobal("O#XanRomanceActive","GLOBAL",2)
SetGlobal("O#XanSummoned","GLOBAL",1)~ GOTO 8

+ ~!Dead("O#Xan") !InMyArea("O#Xan") Global("O#XanSummoned","GLOBAL",0) Global("O#XanJoined","GLOBAL",0) Gender(Player1,FEMALE) Race(Player1,ELF)~ + @36 
DO ~SetGlobal("O#XanMoonbladeExtinguished","GLOBAL",3)
SetGlobal("O#XanSummoned","GLOBAL",3)~ + O#XanFateSpirit1

END

CHAIN FATESP O#XanFateSpirit1
@37
= @398
EXIT
