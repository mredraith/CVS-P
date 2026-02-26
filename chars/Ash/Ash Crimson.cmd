;-| Button Remapping |-----------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s
;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 4

;-| Super Motions |--------------------------------------------------------
[Command]
name="Thermidor"
command=~D, DF, F, D, DF, F, x
time=32
[Command]
name="Thermidor"
command=~D, DF, F, D, DF, F, y
time=32
[Command]
name="Thermidor"
command=~D, DF, F, D, DF, F, z
time=32
[Command]
name="Pluviose"
command=~D, DF, F, D, DF, F, a
time=32
[Command]
name="Pluviose"
command=~D, DF, F, D, DF, F, b
time=32
[Command]
name="Pluviose"
command=~D, DF, F, D, DF, F, c
time=32
[Command]
name="Germinal"
command=~D, DB, B, D, DB, B, ~a
time=32
[Command]
name="Germinal"
command=~D, DB, B, D, DB, B, a
time=32
[Command]
name="Germinal"
command=~D, DB, B, D, DB, B, ~b
time=32
[Command]
name="Germinal"
command=~D, DB, B, D, DB, B, b
time=32
[Command]
name="Germinal"
command=~D, DB, B, D, DB, B, ~c
time=32
[Command]
name="Germinal"
command=~D, DB, B, D, DB, B, c
time=32

[Command]
name="Max Thermidor"
command=~D, DF, F, D, DF, F, x+z
time=32
[Command]
name="Max Thermidor"
command=~D, DF, F, D, DF, F, y+z
time=32
[Command]
name="Max Thermidor"
command=~D, DF, F, D, DF, F, x+y
time=32

[Command]
name="Max Germinal"
command=~D, DB, B, $D, F, x+y
time=32
[Command]
name="Max Germinal"
command=~D, DB, B, $D, F, x+z
time=32
[Command]
name="Max Germinal"
command=~D, DB, B, $D, F, y+z
time=32

[Command]
name="Max Pluviose"
command=~D, DF, F, D, DF, F, a+c
time=32
[Command]
name="Max Pluviose"
command=~D, DF, F, D, DF, F, b+c
time=32
[Command]
name="Max Pluviose"
command=~D, DF, F, D, DF, F, a+b
time=32

[Command]
name="Sans-Culottes"
command=~x, a, y, b
time=24
[Command]
name="Sans-Culottes"
command=~x, a+y, b
time=24
[Command]
name="Sans-Culottes"
command=~x, a, y+b
time=24
[Command]
name="Sans-Culottes"
command=~x, a+y+b
time=24
[Command]
name="Sans-Culottes"
command= ~x, a+y+b
time=24
[Command]
name="Sans-Culottes"
command= ~x, a+y, b
time=24
[Command]
name="Sans-Culottes"
command= ~x, a, y+b
time=24

[Command]
name="Fructidor"
command=~F, $D, B, F, $D, B, a+c
time=32
[Command]
name="Fructidor"
command=~F, $D, B, F, $D, B, a+b
time=32
[Command]
name="Fructidor"
command=~F, $D, B, F, $D, B, b+c
time=32

[Command]
name="SombreDesespoir"
command=~D, DF, F, D, DF, F, a+x
time=32
[Command]
name="SombreDesespoir"
command=~D, DF, F, D, DF, F, b+y
time=32
[Command]
name="SombreDesespoir"
command=~D, DF, F, D, DF, F, c+z
time=32
;-| Special Motions |------------------------------------------------------

[Command]
name = "Ventose1"
command = ~30$B, F, x
time = 15
buffer.time = 5
[Command]
name = "Ventose2"
command = ~30$B, F, y
time = 15
buffer.time = 5
[Command]
name = "Ventose3"
command = ~30$B, F, z
time = 15
buffer.time = 5
[Command]
name = "Ventose1"
command = ~30$B, F, ~x
time = 15
buffer.time = 5
[Command]
name = "Ventose2"
command = ~30$B, F, ~y
time = 15
buffer.time = 5
[Command]
name = "Ventose3"
command = ~30$B, F, ~z
time = 15
buffer.time = 5

[Command]
name = "VentoseEX"
command = ~30$B, F, x+y
time = 15
[Command]
name = "VentoseEX"
command = ~30$B, F, y+z
time = 15
[Command]
name = "VentoseEX"
command = ~30$B, F, x+z
time = 15

[Command]
name = "Dark Ventose1"
command = ~B, F, x
time = 15
buffer.time = 5
[Command]
name = "Dark Ventose2"
command = ~B, F, y
time = 15
buffer.time = 5
[Command]
name = "Dark Ventose3"
command = ~B, F, z
time = 15
buffer.time = 5
[Command]
name = "Dark Ventose1"
command = ~B, F, ~x
time = 15
buffer.time = 5
[Command]
name = "Dark Ventose2"
command = ~B, F, ~y
time = 15
buffer.time = 5
[Command]
name = "Dark Ventose3"
command = ~B, F, ~z
time = 15
buffer.time = 5

[Command]
name = "Dark VentoseEX"
command = ~B, F, x+y
time = 15
[Command]
name = "Dark VentoseEX"
command = ~B, F, y+z
time = 15
[Command]
name = "Dark VentoseEX"
command = ~B, F, x+z
time = 15

[Command]
name = "Ventose4"
command = ~B, F, x
time = 15
[Command]
name = "Ventose5"
command = ~B, F, y
time = 15
[Command]
name = "Ventose6"
command = ~B, F, z
time = 15
[Command]
name = "Ventose4"
command = ~B, F, ~x
time = 15
[Command]
name = "Ventose5"
command = ~B, F, ~y
time = 15
[Command]
name = "Ventose6"
command = ~B, F, ~z
time = 15

[Command]
name = "VentoseEX2"
command = ~B, F, x+y
time = 15
[Command]
name = "VentoseEX2"
command = ~B, F, y+z
time = 15
[Command]
name = "VentoseEX2"
command = ~B, F, x+z
time = 15

[Command]
name = "Nivose1"
command = ~30$D, U, a
time = 15
buffer.time = 5
[Command]
name = "Nivose2"
command = ~30$D, U, b
time = 15
buffer.time = 5
[Command]
name = "Nivose3"
command = ~30$D, U, c
time = 15
buffer.time = 5
[Command]
name = "Nivose1"
command = ~30$D, U, ~a
time = 15
buffer.time = 5
[Command]
name = "Nivose2"
command = ~30$D, U, ~b
time = 15
buffer.time = 5
[Command]
name = "Nivose3"
command = ~30$D, U, ~c
time = 15
buffer.time = 5

[Command]
name = "NivoseEX"
command = ~30$D, U, a+b
time = 15
[Command]
name = "NivoseEX"
command = ~30$D, U, b+c
time = 15
[Command]
name = "NivoseEX"
command = ~30$D, U, a+c
time = 15

[Command]
name = "Nivose4"
command = ~D, U, a
time = 15
[Command]
name = "Nivose5"
command = ~D, U, b
time = 15
[Command]
name = "Nivose6"
command = ~D, U, c
time = 15
[Command]
name = "Nivose4"
command = ~D, U, ~a
time = 15
[Command]
name = "Nivose5"
command = ~D, U, ~b
time = 15
[Command]
name = "Nivose6"
command = ~D, U, ~c
time = 15

[Command]
name = "NivoseEX2"
command = ~D, U, a+b
time = 15
[Command]
name = "NivoseEX2"
command = ~D, U, b+c
time = 15
[Command]
name = "NivoseEX2"
command = ~D, U, a+c
time = 15

[Command]
name = "Dark Nivose1"
command = ~D, U, a
time = 15
buffer.time = 5
[Command]
name = "Dark Nivose2"
command = ~D, U, b
time = 15
buffer.time = 5
[Command]
name = "Dark Nivose3"
command = ~D, U, c
time = 15
buffer.time = 5
[Command]
name = "Dark Nivose1"
command = ~D, U, ~a
time = 15
buffer.time = 5
[Command]
name = "Dark Nivose2"
command = ~D, U, ~b
time = 15
buffer.time = 5
[Command]
name = "Dark Nivose3"
command = ~D, U, ~c
time = 15
buffer.time = 5

[Command]
name = "Dark NivoseEX"
command = ~D, U, a+b
time = 15
[Command]
name = "Dark NivoseEX"
command = ~D, U, b+c
time = 15
[Command]
name = "Dark NivoseEX"
command = ~D, U, a+c
time = 15

[Command]
name = "Genee1"
command = ~D, DB, B, x
time = 15
[Command]
name = "Genee2"
command = ~D, DB, B, y
time = 15
[Command]
name = "Genee3"
command = ~D, DB, B, z
time = 15
[Command]
name = "Genee1"
command = ~D, DB, B, ~x
time = 15
[Command]
name = "Genee2"
command = ~D, DB, B, ~y
time = 15
[Command]
name = "Genee3"
command = ~D, DB, B, ~z
time = 15

[Command]
name = "GeneeEX"
command = ~D, DB, B, x+y
time = 15
[Command]
name = "GeneeEX"
command = ~D, DB, B, y+z
time = 15
[Command]
name = "GeneeEX"
command = ~D, DB, B, x+z
time = 15

[Command]
name = "Caprice1"
command = ~30$B, F, a
time = 15
buffer.time = 5
[Command]
name = "Caprice2"
command = ~30$B, F, b
time = 15
buffer.time = 5
[Command]
name = "Caprice3"
command = ~30$B, F, c
time = 15
buffer.time = 5
[Command]
name = "Caprice1"
command = ~30$B, F, ~a
time = 15
buffer.time = 5
[Command]
name = "Caprice2"
command = ~30$B, F, ~b
time = 15
buffer.time = 5
[Command]
name = "Caprice3"
command = ~30$B, F, ~c
time = 15
buffer.time = 5

[Command]
name = "CapriceEX"
command = ~30$B, F, a+b
time = 15
[Command]
name = "CapriceEX"
command = ~30$B, F, b+c
time = 15
[Command]
name = "CapriceEX"
command = ~30$B, F, a+c
time = 15

[Command]
name = "Caprice4"
command = ~B, F, a
time = 15
[Command]
name = "Caprice5"
command = ~B, F, b
time = 15
[Command]
name = "Caprice6"
command = ~B, F, c
time = 15
[Command]
name = "Caprice4"
command = ~B, F, ~a
time = 15
[Command]
name = "Caprice5"
command = ~B, F, ~b
time = 15
[Command]
name = "Caprice6"
command = ~B, F, ~c
time = 15

[Command]
name = "CapriceEX2"
command = ~B, F, a+b
time = 15
[Command]
name = "CapriceEX2"
command = ~B, F, b+c
time = 15
[Command]
name = "CapriceEX2"
command = ~B, F, a+c
time = 15

[Command]
name = "DarkCaprice1"
command = ~B, F, a
time = 15
[Command]
name = "DarkCaprice2"
command = ~B, F, b
time = 15
[Command]
name = "DarkCaprice3"
command = ~B, F, c
time = 15
[Command]
name = "DarkCaprice1"
command = ~B, F, ~a
time = 15
[Command]
name = "DarkCaprice2"
command = ~B, F, ~b
time = 15
[Command]
name = "DarkCaprice3"
command = ~B, F, ~c
time = 15

[Command]
name = "412p"
command = /$F, x+y
time = 8
[Command]
name = "412p"
command = /$F, x+z
time = 8
[Command]
name = "412p"
command = /$F, y+z
time = 8

[Command]
name = "412k"
command = /$F, a+b
time = 8
[Command]
name = "412k"
command = /$F, a+c
time = 8
[Command]
name = "412k"
command = /$F, b+c
time = 8
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1
[Command]
name="recovery"
command=a+x
time=1
[Command]
name = "recovery"
command = y+z
time=1
[Command]
name = "recovery"
command = x+z
time=1
[Command]
name = "recovery"
command = a+b
time=1
[Command]
name = "recovery"
command = b+c
time=1
[Command]
name = "recovery"
command = a+c
time=1

[Command]
name = "pp"
command = x+y
time = 1
[Command]
name = "pp"
command = x+z
time = 1
[Command]
name = "pp"
command = y+z
time = 1
[Command]
name = "kk"
command = a+b
time = 1
[Command]
name = "kk"
command = a+c
time = 1
[Command]
name = "kk"
command = b+c
time = 1
[Command]
name = "a+x"
command = a+x
time=1
[Command]
name = "b+y"
command = b+y
time = 1
[Command]
name = "c+z"
command = c+z
time = 1
;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1
[Command]
name = "b"
command = b
time = 1
[Command]
name = "c"
command = c
time = 1
[Command]
name = "x"
command = x
time = 1
[Command]
name = "y"
command = y
time = 1
[Command]
name = "z"
command = z
time = 1
[Command]
name = "s"
command = s
time = 1
;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1
[Command]
name = "downfwd"
command = $DF
time = 1
[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1
[Command]
name = "downback"
command = $DB
time = 1
[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1
[Command]
name = "upback"
command = $UB
time = 1
[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1
[Command]
name = "upfwd"
command = $UF
time = 1
;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1
[Command]
name = "hold_y"
command = /y
time = 1
[Command]
name = "hold_z"
command = /z
time = 1
[Command]
name = "hold_a"
command = /a
time = 1
[Command]
name = "hold_b"
command = /b
time = 1
[Command]
name = "hold_c"
command = /c
time = 1
[Command]
name = "hold_s"
command = /s
time = 1
;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1
[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1
[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1
[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1
[Command]
name = "holddownfwd"
command = /$DF
time = 1
[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1
[Command]
name = "holddownback"
command = /$DB
time = 1
[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1
[Command]
name = "holdupback"
command = /$UB
time = 1
[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1
[Command]
name = "holdupfwd"
command = /$UF
time = 1
;---------------------------------------------------------------------------
;Release Direction
[Command]
name = "rlsfwd"
command = ~$F
time = 1
[Command]
name = "rlsback"
command = ~$B
time = 1
[Command]
name = "rlsup"
command = ~$U
time = 1
[Command]
name = "rlsdown"
command = ~$D
time = 1
;--------------------------------------------------------------------------
;Release Button
[Command]
name = "rlsx"
command = ~x
time = 1
[Command]
name = "rlsy"
command = ~y
time = 1
[Command]
name = "rlsz"
command = ~z
time = 1
[Command]
name = "rlsa"
command = ~a
time = 1
[Command]
name = "rlsb"
command = ~b
time = 1
[Command]
name = "rlsc"
command = ~c
time = 1
;---------------------------------------------------------------------------
;Other
[Command]
name = "highjump"
command = $D, $U
time = 15
[Command]
name = "DU"
command = D, U
time = 18
[Command]
name = "DU"
command = DB, UF
time = 18
[Command]
name = "DU"
command = DF, UB
time = 18
[Command]
name = "DU"
command = $D, UF
time = 18
[Command]
name = "DU"
command = $D, UB
time = 18
;---------------------------------------------------------------------------
[Statedef -1]

[State -1, Tick Fix]
type = CtrlSet
triggerall = !ctrl
trigger1 = (StateNo = 52 || StateNo = 101 || StateNo = 5120) && !AnimTime
trigger2 = (StateNo = [200,499]) && !AnimTime
trigger3 = StateNo = 810 && !AnimTime
trigger4 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
trigger5 = (StateNo = [700,715]) && !AnimTime
trigger6 = (StateNo = [6080,6082]) && !AnimTime
value = 1
;-----------------------------------------------------------------
[State -1, Parry Stand]
type = HitOverride
triggerall =!AILevel
triggerall = command = "fwd" && command!= "back" && command != "up" && command != "down"
trigger1 = Ctrl
attr = SA,AA,AP
stateno = 6080
slot = 0
time = 5
;------------------------------------------------------------------
[State -1, Crouching Parry]
type = HitOverride
triggerall =!AILevel
triggerall = (statetype = S && command = "down")|| (statetype = C && command = "fwd") && command != "back" && command != "up"
trigger1 = Ctrl
attr = C,AA,AP
stateno = 6081
slot = 0
time =5
;-------------------------------------------------------------------
[State -1, Aerial Parry]
type= HitOverride
triggerall =!AILevel
triggerall = (statetype= A && command = "fwd") && command != "back" && command != "up" && command != "down"
trigger1 = Ctrl
attr = SA,AA,AP
stateno = 6082
forceair = 1
slot = 0
time = 5
;--------------------------------------------------------------------
[State -1, Frimaire]
type=ChangeState
value=3700
triggerall=!NumProjID(131035)
triggerall=!AILevel && RoundState=2 && StateType != A &&var(20)<=0&& power >= 3000&&command ="SombreDesespoir" && Var(28)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)
;--------------------------------------------------------------------
[State -1, Fructidor]
type=ChangeState
value=3600
triggerall=!NumProjID(131035)
triggerall=!AILevel && RoundState=2 && StateType != A &&var(20)<=0&& power >= 3000&&command ="Fructidor"
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)
;--------------------------------------------------------------------
[State -1, Sans-Culottes]
type=ChangeState
value=3500
triggerall=!NumProjID(131035)
triggerall=!AILevel && RoundState=2 && StateType != A &&var(20)<=0&& power >= 2000&&command ="Sans-Culottes" && !Var(28)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Max Germinal]
type=ChangeState
value=3250
triggerall=!NumProjID(131035)
triggerall=!AILevel && RoundState=2 && StateType != A &&var(20) <= 60 &&power >= 1000&& command ="Max Germinal" && Var(57)&&!Numhelper(3507)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)

[State -1, Max Germinal]
type=ChangeState
value=3250
triggerall=!NumProjID(131035)
triggerall=!AILevel && RoundState=2 && StateType != A &&var(20) <= 60 &&power >= 2000&& command ="Max Germinal" && Var(28)&&!Numhelper(3507)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Max Pluviose]
type=ChangeState
value=3150
triggerall=!NumProjID(131035)
triggerall=!AILevel && RoundState=2 && StateType != A &&var(20) <= 60 && power >= 2000&&command ="Max Pluviose"&& !Var(57) && !Var(28)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Max Thermidor]
type=ChangeState
value=3050
triggerall=!NumProjID(131035)
triggerall=!AILevel && RoundState=2 && StateType != A &&var(20) <= 60 && power >= 2000&&command ="Max Thermidor"&& !Var(57) && !Var(28)&&!Numhelper(3055)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Germinal];Unused
type=Null;ChangeState
value=3200
triggerall=!AILevel && RoundState=2 && StateType != A &&var(20) <= 60 && power >= 1000&&command ="Germinal"&& !Var(57) && !Var(28)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;----------------------------------------------------------------------
[State -1, Pluviose]
type=ChangeState
value=3100
triggerall=!NumProjID(131035)
triggerall=!AILevel && RoundState=2 && StateType != A &&var(20) <= 60 && power >= 1000&&command ="Pluviose"&& !Var(57) && !Var(28)&&StateNo!=3100
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
[State -1, Dark Pluviose]
type=ChangeState
value=3160
triggerall=!NumProjID(131035)
triggerall=!AILevel && RoundState=2 && StateType != A &&var(20) <= 60 && power >= 1000&&command ="Pluviose" && Var(28)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
trigger3=(StateNo=10000||StateNo=11200)&& movecontact 
;----------------------------------------------------------------------
[State -1, Thermidor]
type=ChangeState
value=3000
triggerall=!NumProjID(131035)
triggerall=!AILevel && RoundState=2 && StateType != A &&var(20) <= 60 && power >= 1000&&command ="Thermidor"&& !Var(57)&&!Numhelper(3005)&&!Numhelper(30005)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;========================================================================
[State -1, Caprice]
type=ChangeState
value=Ifelse(!Var(57)&&(command="CapriceEX"||command="CapriceEX2")&&var(20) <= 60&&power>=500,1325,1300)
triggerall=!NumProjID(131035)
triggerall=!AILevel && RoundState=2 && StateType != A&& !var(28)
triggerall=(var(57)=0&&((command="Caprice1")||(command="Caprice2")||(command="Caprice3")||(command="CapriceEX"&&power>=500&&var(20) <= 60)))||((var(57)||var(20))&&((command="Caprice4")||(command="Caprice5")||(command="Caprice6")||(command="CapriceEX2"&&power>=500&&var(20) <= 60)))&& !var(28)&&StateNo!=1300
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
;------------------------------------------------------------------------
[State -1, Dark Caprice]
type=ChangeState
value=11300
triggerall=!NumProjID(131035)
triggerall=!AILevel && RoundState=2 && StateType != A&& var(28)
triggerall=(command="DarkCaprice1")||(command="DarkCaprice2")||(command="DarkCaprice3")||(command="CapriceEX"&&power>=500&&var(20) <= 60)&& var(28)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
;------------------------------------------------------------------------
[State -1, Genee]
type=ChangeState
value=Ifelse(!Var(57)&&command="GeneeEX"&&var(20) <= 60&&power>=500,1225,1200)
triggerall=!NumProjID(131035)
triggerall=!AILevel && RoundState=2 && StateType != A && ((command="Genee1")||(command="Genee2")||(command="Genee3")||(command="GeneeEX"&&power>=500&&var(20) <= 60))&&!NumHelper(1206)&& !var(28)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
;------------------------------------------------------------------------
[State -1, Dark Genee]
type=ChangeState
value=11200
triggerall=!NumProjID(131035)
triggerall=!AILevel && RoundState=2 && StateType != A && ((command="Genee1")||(command="Genee2")||(command="Genee3")||(command="GeneeEX"&&power>=500&&var(20) <= 60))&&!NumHelper(11206)&& var(28)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
;========================================================================
[State -1, Nivose]
type=ChangeState
value=Ifelse(!Var(57)&&(command="NivoseEX"||command="NivoseEX2")&&var(20) <= 60&&power>=500,1150,1100)
triggerall=!NumProjID(131035)
triggerall=!AILevel && RoundState=2 && StateType != A && !var(28)
triggerall=(var(57)=0&&((command="Nivose1")||(command="Nivose2")||(command="Nivose3")||(command="NivoseEX"&&power>=500&&var(20) <= 60)))||((var(57)||var(20))&&((command="Nivose4")||(command="Nivose5")||(command="Nivose6")||(command="NivoseEX2"&&power>=500&&var(20) <= 60)))&& !var(28)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
;------------------------------------------------------------------------
[State -1, Dark Nivose]
type=ChangeState
value=10100
triggerall=!NumProjID(131035)
triggerall=!AILevel && RoundState=2 && StateType != A && ((command="Dark Nivose1")||(command="Dark Nivose2")||(command="Dark Nivose3")||(command="Dark NivoseEX"&&power>=500&&var(20) <= 60))&&!NumHelper(1205) && var(28)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
;========================================================================
[State -1, Ventose]
type=ChangeState
value=Ifelse(!Var(57)&&(command="VentoseEX"||command="VentoseEX2")&&var(20) <= 60&&power>=500,1025,1000)
triggerall=!NumProjID(131035)
triggerall=!AILevel && RoundState=2 && StateType != A && Ifelse(var(24),Numhelper(1005)<20,Ifelse(!var(20),!Numhelper(1005),Numhelper(1005)<4)) && !var(28)
triggerall=(var(57)=0&&((command="Ventose1")||(command="Ventose2")||(command="Ventose3")||(command="VentoseEX"&&power>=500&&var(20) <= 60)))||((var(57)||var(20))&&((command="Ventose4")||(command="Ventose5")||(command="Ventose6")||(command="VentoseEX2"&&power>=500&&var(20) <= 60)))&& !var(28)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
;------------------------------------------------------------------------
[State -1, Dark Ventose]
type=ChangeState
value=10000
triggerall=!NumProjID(131035)
triggerall=!AILevel && RoundState=2 && StateType != A && ((command="Dark Ventose1")||(command="Dark Ventose2")||(command="Dark Ventose3")||(command="Dark VentoseEX"&&power>=500&&var(20) <= 60))&&!NumHelper(1205) && var(28)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
trigger3=(StateNo=10100)
;------------------------------------------------------------------------
[State -1, Zero Counter]
type = ChangeState
value = 750
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = command = "412p" || command = "412k"
trigger1 = !AILevel&&RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)
;------------------------------------------------------------------------
[State -1, Throw]
type=ChangeState
value =800
trigger1=(command="holdfwd"||command="holdback")&&command="pp";||command="kk")
trigger1=!AILevel&&RoundState=2 && Statetype!=A && !var(20)
trigger1=ctrl
;-------------------------------------------------------------------------
[State -1, Power Charge]
type = ChangeState
value = 730
trigger1 = command = "hold_b" && command = "hold_y"
trigger1 = !AILevel&&RoundState = 2 && StateType != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20)
trigger1 = ctrl || (StateNo = [100,101])
;--------------------------------------------------------------------------
[State -1, SIdestep/Dodge]
type = ChangeState
value = Ifelse(command="holdfwd",710,Ifelse(command="holdback",715,700))
triggerall = command = "a+x"
triggerall = !AILevel && RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))
;--------------------------------------------------------------------------
[State -1, Custom Combo]
type = ChangeState
value = Ifelse(StateType = A,905,900)
triggerAll = !AILevel && command = "c+z" && RoundState = 2 && power >= 1000 && !var(20)
trigger1 = ctrl || StateNo = 52 || (StateNo = [100,101])
trigger1 = !var(41)
;--------------------------------------------------------------------------
[State -1, Run /Dash Back]
type = ChangeState
value = Ifelse(command = "BB",105,100)
trigger1 = !AILevel&&Roundstate=2&&statetype = S
trigger1 = command = "FF"||command = "BB"
trigger1 = ctrl
;--------------------------------------------------------------------------
[State -1, Prairial]
type=ChangeState
value=320
triggerall=!NumProjID(131035)
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command = "holdback"&& command="c"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,210])||(stateno=[230,240])||(stateno=[400,410])||(stateno=[430,440]))&&movecontact
trigger4=StateNo=1300||StateNo=1100 && vel y >= 0
trigger4=Var(57)&&movecontact
;--------------------------------------------------------------------------
[State -1, Floreal]
type=ChangeState
value=310
triggerall=!NumProjID(131035)
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command = "holdback"&& command="b"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,210])||(stateno=[230,240])||(stateno=[400,410])||(stateno=[430,440]))&&movecontact
trigger4=StateNo=1300||StateNo=1100 && vel y >= 0
trigger4=Var(57)&&movecontact
;--------------------------------------------------------------------------
[State -1, Messidor]
type=ChangeState
value=300
triggerall=!NumProjID(131035)
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command = "holdfwd"&& command="y"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=((stateno=[200,210])||(stateno=[230,240])||(stateno=[400,410])||(stateno=[430,440]))&&movecontact
;trigger4=StateNo=1300&&StateNo=1100&&Var(24)
;--------------------------------------------------------------------------
[State -1, Standing Low Punch]
type=ChangeState
value=200
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="x"
trigger1=ctrl||stateno=[100,101]
trigger2=(stateno = 200 || stateno = 400 || stateno = 430) && time >= 5
trigger3=var(4)
;---------------------------------------------------------------------------
[State -1, Standing Medium Punch]
type=ChangeState
value=210
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="y"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
;---------------------------------------------------------------------------
[State -1, Standing High Punch]
type=ChangeState
value=220
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="z"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
;---------------------------------------------------------------------------
[State -1, Standing Low Kick]
type=ChangeState
value=230
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="a"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=(stateno = 200 || stateno = 400 || stateno = 430) && time >= 5
;---------------------------------------------------------------------------
[State -1, Standing Medium Kick]
type=ChangeState
value=240
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="b"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
;---------------------------------------------------------------------------
[State -1, Standing High Kick]
type=ChangeState
value=250
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command != "holddown"&& command="c"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
;---------------------------------------------------------------------------
[State -1, Crouching Low Punch]
type=ChangeState
value=400
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="x"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=(stateno = 200 || stateno = 400 || stateno = 430) && time >= 5
;---------------------------------------------------------------------------
[State -1, Crouching Medium Punch]
type=ChangeState
value=410
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command= "holddown"&& command="y"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
;---------------------------------------------------------------------------
[State -1, Crouching High Punch]
type=ChangeState
value=420
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="z"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
;---------------------------------------------------------------------------
[State -1, Crouching Low Kick]
type=ChangeState
value=430
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="a"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
trigger3=(stateno = 200 || stateno = 400 || stateno = 430) && time >= 5
;---------------------------------------------------------------------------
[State -1, Crouching Medium Kick]
type=ChangeState
value=440
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="b"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
;---------------------------------------------------------------------------
[State -1, Crouching High Kick]
type=ChangeState
value=450
triggerall=!AILevel&&Roundstate=2&&statetype != A&&command="holddown"&& command="c"
trigger1=ctrl||stateno=[100,101]
trigger2=var(4)
;---------------------------------------------------------------------------
[State -1, Jumping Low Punch]
type=ChangeState
value=600
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="x"
trigger1=ctrl
trigger2=var(4)
;---------------------------------------------------------------------------
[State -1, Jumping Medium Punch]
type=ChangeState
value=610
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="y"
trigger1=ctrl
trigger2=var(4)
trigger3=((stateno=[600,609])||(stateno=[630,639]))&&movecontact&&var(55)=2
;---------------------------------------------------------------------------
[State -1, Jumping High Punch]
type=ChangeState
value=620
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="z"
trigger1=ctrl
trigger2=var(4)
trigger3=((stateno=[600,619])||(stateno=[630,649]))&&movecontact&&var(55)=2
;---------------------------------------------------------------------------
[State -1, Jumping Low Kick]
type=ChangeState
value=630
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="a"
trigger1=ctrl
trigger2=var(4)
trigger3=(stateno=[600,609])&&movecontact&&var(55)=2
;---------------------------------------------------------------------------
[State -1, Jumping Medium Kick]
type=ChangeState
value=640
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="b"
trigger1=ctrl
trigger2=var(4)
trigger3=((stateno=[600,619])||(stateno=[630,639]))&&movecontact&&var(55)=2
;---------------------------------------------------------------------------
[State -1, Jumping High Kick]
type=ChangeState
value=650
triggerall=!AILevel&&Roundstate=2&&statetype=A&&command="c"
trigger1=ctrl
trigger2=var(4)
trigger3=(stateno=[600,649])&&movecontact&&var(55)=2
;---------------------------------------------------------------------------
[State -1, Taunt]
type = ChangeState
value = 390
triggerall = command = "s"
triggerall = !AILevel&&Roundstate=2&&StateType != A
triggerall = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(5)
;--------------------------------------------------------------------------
;AI
;--------------------------------------------------------------------------
;----------------------------------------------------------------
[State -1, AI Parry Stand]
type = HitOverride
triggerall = AILevel&&statetype != A && ctrl
trigger1 = random < (250 * (AIlevel ** 2 / 64.0))
slot = 0
stateno = 6080
attr = SA, AA, AP
time = 3
;---------------------------------------------------------------
[State -1, AI Crouching Parry]
type = HitOverride
triggerall = AILevel&&statetype != A && ctrl
trigger1 =random < (250 * (AIlevel ** 2 / 64.0))
slot = 0
stateno = 6081
attr = C, AA, AP
time = 3
;---------------------------------------------------------------
[State -1, AI Aerial Parry]
type = HitOverride
triggerall = AILevel&& statetype = A && ctrl
trigger1 = random < (250 * (AIlevel ** 2 / 64.0))
slot = 0
stateno = 6082
attr = SCA, AA, AP
time = 3
;-------------------------------------------------------------------
[State -1, Throw]
type = ChangeState
value = 800
triggerall = AILevel&&random < (500 * (AIlevel ** 2 / 64.0))
triggerall = roundstate=2&&statetype!=A&& enemynear,statetype!=L&&(enemynear,stateno!=[5120,5201]) && !var(20)
triggerall = enemynear,movetype!=H&&enemynear,statetype!=A&&enemynear,Hitover&&(p2bodydist x =[0,30])
triggerall = ctrl||stateno=100||stateno=52
trigger1 = random>=800
trigger2 = enemynear,stateno=[120,155]
trigger2 = random>=500
trigger3 = stateno=100
trigger4=(p2bodydist x=[0,30])&&random<250
trigger5=(p2stateno=[120,155])&&(p2bodydist x=[0,30])&&random<500
;-------------------------------------------------------------------
[State -1, Air Throw]
type = Null;ChangeState
value = 850
triggerall = AILevel&&random < (500 * (AIlevel ** 2 / 64.0))
triggerall = roundstate=2&&statetype=A&& enemynear,statetype!=L&&(enemynear,stateno!=[5120,5201]) && !var(20)
triggerall = enemynear,movetype!=H&&enemynear,statetype=A&&enemynear,Hitover&&(p2bodydist x =[0,30])&&(p2bodydist y =[-50,0])
triggerall = ctrl
trigger1 = random>=800
trigger2 = enemynear,stateno=[120,155]
trigger2 = random>=500
trigger3=(p2bodydist x=[0,30])&&random<250
trigger4=(p2stateno=[120,155])&&(p2bodydist x=[0,30])&&random<500
;------------------------------------------------------------------------
[State -1, Standing Low Punch AI]
type = ChangeState
value = 200
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = p2bodydist x > ceil(const(size.xscale) * 28)
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerall = (p2bodydist x = [0, 60]) && (p2dist y = [ -48, 0]) && p2statetype != C && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 499]) && !animtime && ctrl
trigger2 = movehit && (enemynear, gethitvar(hittime) >= 3) && random < (250 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Standing Medium Punch AI]
type = ChangeState
value = 210
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = p2bodydist x > ceil(const(size.xscale) * 24)
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerall = (p2bodydist x = [0, 74]) && (p2dist y = [ -62, 0]) && p2statetype != C && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 499]) && !animtime && ctrl
trigger2 = movehit && (enemynear, gethitvar(hittime) >= 3) && random < (250 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Standing High Punch AI]
type = ChangeState
value = 220
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = p2bodydist x > ceil(const(size.xscale) * 20)
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerall = (p2bodydist x = [0, 68]) && (p2dist y = [ -37, 0]) && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 499]) && !animtime && ctrl
trigger2 = movehit && (enemynear, gethitvar(hittime) >= 3) && random < (250 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Standing Low Kick AI]
type = ChangeState
value = 230
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = p2bodydist x > ceil(const(size.xscale) * 20)
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerall = (p2bodydist x = [28, 44]) && (p2dist y = [ -54, 0]) && p2statetype != C && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 499]) && !animtime && ctrl
trigger2 = movehit && (enemynear, gethitvar(hittime) >= 3) && random < (250 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Standing Medium Kick AI]
type = ChangeState
value = 240
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = p2bodydist x > ceil(const(size.xscale) * 20)
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerall = (p2bodydist x = [64, 80]) && (p2dist y = [ -45, 0]) && p2statetype != C && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 499]) && !animtime && ctrl
trigger2 = movehit && (enemynear, gethitvar(hittime) >= 5) && random < (250 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Standing High Kick AI]
type = ChangeState
value = 250
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = p2bodydist x > ceil(const(size.xscale) * 32)
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerall = (p2bodydist x = [70, 86]) && (p2dist y = [ -35, 0]) && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 499]) && !animtime && ctrl
trigger2 = movehit && (enemynear, gethitvar(hittime) >= 4) && random < (250 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Messidor]
type=ChangeState
value=300
triggerall=!NumProjID(131035)
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != C
triggerall = (p2bodydist x = [0, 60]) && (p2bodydist y = [ -60, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2=((stateno=[200,210])||(stateno=[230,240])||(stateno=[400,410])||(stateno=[430,440]))&&movecontact&& random < (100 * (AIlevel ** 2 / 64.0))
trigger3=StateNo=1300&&StateNo=1100&&Var(24)
;---------------------------------------------------------------------------
[State -1, Floreal]
type=ChangeState
value=310
triggerall=!NumProjID(131035)
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != C
triggerall = (p2bodydist x = [0, 60]) && (p2bodydist y = [ -60, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2=((stateno=[200,210])||(stateno=[230,240])||(stateno=[400,410])||(stateno=[430,440]))&&movecontact&& random < (100 * (AIlevel ** 2 / 64.0))
trigger3=StateNo=1300&&StateNo=1100&&Var(24)
;---------------------------------------------------------------------------
[State -1, Prairial]
type=ChangeState
value=320
triggerall=!NumProjID(131035)
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != C
triggerall = (p2bodydist x = [0, 60]) && (p2bodydist y = [ -60, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2=((stateno=[200,210])||(stateno=[230,240])||(stateno=[400,410])||(stateno=[430,440]))&&movecontact&& random < (100 * (AIlevel ** 2 / 64.0))
trigger3=StateNo=1300&&StateNo=1100&&Var(24)
;---------------------------------------------------------------------------
[State -1, Crouching Low Punch]
type = ChangeState
value = 400
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerall = (p2bodydist x = [0, 52]) && (p2dist y = [ -7, 60]) && p2statetype != A && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 499]) && !animtime && ctrl
trigger2 = movehit && (enemynear, gethitvar(hittime) >= 2) && random < (250 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerall = (p2bodydist x = [0, 58]) && (p2dist y = [ -5, 60]) && p2statetype != A && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 499]) && !animtime && ctrl
trigger2 = movehit && (enemynear, gethitvar(hittime) >= 3) && random < (250 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Crouching High Punch]
type = ChangeState
value = 420
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerall = (p2bodydist x = [0, 72]) && (p2dist y = [ -53, 0]) && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 499]) && !animtime && ctrl
trigger2 = movehit && (enemynear, gethitvar(hittime) >= 4) && random < (250 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Crouching Low Kick]
type = ChangeState
value = 430
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [ -12, 60]) && p2statetype != A && p2statetype != L
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 499]) && !animtime && ctrl
trigger2 = movehit && (enemynear, gethitvar(hittime) >= 3) && random < (250 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerall = (p2bodydist x = [56, 88]) && (p2dist y = [ -12, 60]) && p2statetype != A && p2statetype != L
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 499]) && !animtime && ctrl
trigger2 = movehit && (enemynear, gethitvar(hittime) >= 3) && random < (250 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Crouching High Kick]
type = ChangeState
value = 450
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype != A
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerall = (p2bodydist x = [48, 80]) && (p2dist y = [ -12, 60]) && p2statetype != A && p2statetype != L
triggerall = (p2statetype = S || (p2statetype = C && p2movetype = H))
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 499]) && !animtime && ctrl
trigger2 = movehit && (enemynear, gethitvar(hittime) >= 6) && random < (250 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Jumping Low Punch]
type = ChangeState
value = 600
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerall = (p2bodydist x = [0, 30]) && (p2dist y = [ -35, 56]) && p2statetype = S
trigger1 = ctrl
trigger1 = vel y > 0 && random < (100 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerall = p2statetype != A || palno >= 7
triggerall = (p2bodydist x = [0, 25]) && (p2dist y = [ -35, 42]) && p2statetype != L
trigger1 = ctrl
trigger1 = vel y > 0 && random < (100 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Jumping High Punch]
type = ChangeState
value = 620
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerall = (p2bodydist x = [0, 58]) && (p2dist y = [ -34, 50]) && p2statetype = S
trigger1 = ctrl
trigger1 = vel y > 0 && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(4) && random < (50 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Jumping Low Kick]
type = ChangeState
value = 630
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerall = (p2bodydist x = [ -40, 72]) && (p2dist y = [ -28, 56]) && p2statetype != L
trigger1 = ctrl
trigger1 = vel y > 0 && random < (ifelse(p2dist x < 0, 250, 50) * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerall = (p2bodydist x = [0, 52]) && (p2dist y = [ -42, 44]) && p2statetype = A
trigger1 = ctrl
trigger1 = vel y <= 0 && random < (100 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Jumping High Kick]
type = ChangeState
value = 650
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = !var(16) && (var(15) < 1 || var(20))
triggerall = (p2bodydist x = [0, 54]) && (p2dist y = [ -22, 58]) && p2statetype = S
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(4) && random < (50 * (AIlevel ** 2 / 64.0))
;----------------------------------------------------------------------------
[State -1, Frimaire AI]
type=ChangeState
value=3700
triggerall=!NumProjID(131035)
triggerall=AILevel && RoundState=2 && numenemy && StateType != A && !Var(24) && var(20)<=0&& power >= 3000 && Var(28)
triggerall=(p2bodydist x=[5,160]) && (p2bodydist y = [ -80, 5]) && enemynear,statetype!=C && !(enemynear,canrecover) && random < (300 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,stateno!=[120,155])&&(enemynear,stateno!=[5110,5220])
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6) && movehit

[State -1, Sans-Culottes AI]
type=ChangeState
value=3500
triggerall=!NumProjID(131035)
triggerall=AILevel && RoundState=2 && numenemy && StateType != A && !Var(24) && var(20)<=0&& power >= 3000 && !Var(28)
triggerall=(p2bodydist x=[-30,60]) && (p2bodydist y = [ -130, 25]) && enemynear,statetype!=C && !(enemynear,canrecover) && random < (400 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,stateno!=[120,155])&&(enemynear,stateno!=[5110,5220])
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6) && movehit

[State -1, Fructidor AI]
type=ChangeState
value=3600
triggerall=!NumProjID(131035)
triggerall=AILevel && RoundState=2 && numenemy && StateType != A  && var(20)<=0&& power >= 3000 && !Var(24)
triggerall=(p2bodydist x=[5,70]) && (p2bodydist y = [ -80, 5]) && enemynear,statetype!=A && !(enemynear,canrecover) && random < (300 * (AIlevel ** 2 / 64.0))
triggerall=enemynear,Statetype!=L && enemynear,Statetype!=C && !(enemynear, hitfall) && (enemynear,stateno!=[150,155])&&(enemynear,stateno!=[5120,5220])
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6) && movehit

[State -1, Thermidor AI]
type=ChangeState
value=3000
triggerall=!NumProjID(131035)
triggerall=AILevel && RoundState=2 && numenemy && Stateno!=3000 && StateType != A && var(20) <= 60 && power >= 1000 && !Var(24) && !Numhelper(3005) && !Numhelper(3055)
triggerall=(p2bodydist x=[5,160]) && (p2bodydist y = [ -80, 5]) && !(enemynear,canrecover) && random < (60 * (AIlevel ** 2 / 64.0))
triggerall=enemynear,Statetype!=L && enemynear,Statetype!=C && enemynear,Statetype!=A && (enemynear,stateno!=[5120,5220]) && (enemynear,stateno!=[120,155])
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=(var(6)) && movehit && random<200
trigger3=(var(7)) && movehit && random<20

[State -1, Max Thermidor AI]
type=ChangeState
value=3050
triggerall=!NumProjID(131035)
triggerall=AILevel && RoundState=2 && numenemy && Stateno!=3050 && StateType != A && !Numhelper(3005) && !Numhelper(3055) && var(20) <= 60 && power >= 2000 && !Var(24) && !Var(28)
triggerall=(p2bodydist x=[5,280]) && (p2bodydist y = [ -90, 5]) && !(enemynear,canrecover) && random < (80 * (AIlevel ** 2 / 64.0))
triggerall=enemynear,Statetype!=L && (enemynear,stateno!=[5120,5220]) && (enemynear,stateno!=[120,155])
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=(var(6)) && movehit && random<200
trigger3=(var(7)) && movehit && random<20

[State -1, Pluviose AI]
type=ChangeState
value=3100
triggerall=!NumProjID(131035)
triggerall=AILevel && RoundState=2 && numenemy && Stateno!=3100 && StateType != A &&var(20) <= 60 && power >= 1000 && !Var(24) && !Var(28)
triggerall=(p2bodydist x=[15,70]) && (p2bodydist y = [ -100, 5]) && !(enemynear,canrecover) && random < (250 * (AIlevel ** 2 / 64.0))
triggerall=enemynear,Statetype!=L && (enemynear,Statetype!=C) && (enemynear,stateno!=[5120,5220])
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=(var(6)) && movehit && random<200
trigger3=(var(7)) && movehit && random<50

[State -1, Max Pluviose AI]
type=ChangeState
value=3150
triggerall=!NumProjID(131035)
triggerall=AILevel && RoundState=2 && numenemy && Stateno!=3150 && StateType != A &&var(20) <= 60 && power >= 2000 && !Var(24) && !Var(28)
triggerall=(p2bodydist x=[25,90]) && (p2bodydist y = [ -100, 5]) && !(enemynear,canrecover) && random < (200 * (AIlevel ** 2 / 64.0))
triggerall=enemynear,Statetype!=L && (enemynear,stateno!=[5120,5220])
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=(var(6)) && movehit && random<200
trigger3=(var(7)) && movehit && random<50

[State -1, Dark Pluviose AI]
type=ChangeState
value=3160
triggerall=!NumProjID(131035)
triggerall=AILevel && RoundState=2 && numenemy && Stateno!=3100 && StateType != A &&var(20) <= 60 && power >= 1000 && !Var(24) && Var(28)
triggerall=(p2bodydist x=[15,70]) && (p2bodydist y = [ -100, 5]) && !(enemynear,canrecover) && random < (200 * (AIlevel ** 2 / 64.0))
triggerall=enemynear,Statetype!=L && (enemynear,Statetype!=C) && (enemynear,stateno!=[5120,5220])
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=(var(6)) && movehit && random<200
trigger3=(var(7)) && movehit && random<50

[State -1, Germinal AI]
type=ChangeState
value=3200
triggerall=!NumProjID(131035)
triggerall=AILevel && numenemy && RoundState=2 && stateno!=3200 && StateType != A && var(20)<=0 && power >= 1000 && random < (150 * (AIlevel ** 2 / 64.0))&& !Var(24) && !Var(28)
triggerall=(enemynear,statetype != L) &&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155])&&(p2bodydist x =[40,140])&&(p2bodydist y=[-80,5])
triggerall=(enemynear,Statetype!=A) && (enemynear,Statetype!=C)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)

[State -1, Max Germinal AI]
type=ChangeState
value=3250
triggerall=!NumProjID(131035)
triggerall=AILevel && numenemy && RoundState=2 && stateno!=3250 && StateType != A && var(20)<=0 && random < (350 * (AIlevel ** 2 / 64.0)) && Var(24) && !Var(28)
triggerall=(enemynear,statetype != L) &&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155])&&(p2bodydist x =[40,140])&&(p2bodydist y=[-80,5])
triggerall=(enemynear,Statetype!=A) && (enemynear,Statetype!=C)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)

[State -1, Max Germinal AI]
type=ChangeState
value=3250
triggerall=!NumProjID(131035)
triggerall=AILevel && numenemy && RoundState=2 && stateno!=3250 && StateType != A && var(20)<=0 && power >= 2000 && random < (200 * (AIlevel ** 2 / 64.0)) && Var(28)
triggerall=(enemynear,statetype != L) &&(enemynear,stateno!=[5100,5220])&&(enemynear,stateno!=[120,155])&&(p2bodydist x =[40,140])&&(p2bodydist y=[-80,5])
triggerall=(enemynear,Statetype!=A) && (enemynear,Statetype!=C)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6)|| var(7)
;========================================================================
[State -1, Caprice AI]
type=ChangeState
value=Ifelse((power >= 500 && random < 50), 1324, 1300)
triggerall=!NumProjID(131035)
triggerall=AILevel && RoundState=2 && numenemy && StateType != A && var(20)<=60 && (enemynear,vel y<=0) && prevstateno!=1320 && !Var(28)
triggerall=(enemynear,statetype != L) && (enemynear,stateno!=[5100,5220]) && (p2bodydist x =[5,80]) && (p2bodydist y =[-160,25]) && (enemynear, statetype != C) 
trigger1=(ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101]))&& random < (200 * (AIlevel ** 2 / 64.0))
trigger2=var(5) && movehit  && random<50
trigger3=(stateno=[200,440]) && movehit && random<100
trigger4=((ctrl)||(stateno=[120,155])) && (enemynear,statetype=A) && (enemynear,vel y<=-1) && random < (200 * (AIlevel ** 2 / 64.0)) 

[State -1, Ventose AI]
type=ChangeState
value=Ifelse((power >= 1200 && random < 100), 1025, 1000)
triggerall=!NumProjID(131035)
triggerall=AILevel && RoundState=2 && numenemy && StateType != A && Ifelse(!var(20),!Numhelper(1005),Numhelper(1005)<4) && random < (80 * (AIlevel ** 2 / 64.0))&& !Var(28)
triggerall=(enemynear,statetype != L) && (enemynear,stateno!=[5100,5220]) && (p2bodydist x =[50,480]) && (p2bodydist y =[-160,25]) && (enemynear, statetype != C) 
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5) && movehit  && random<400
trigger4=stateno=1300 && animelemtime(9)>0 && random<500
Trigger5=Stateno=1300&&Var(24)&& animelemtime(9)>0 && random<500

[State -1, Nivose AI]
type=ChangeState
value=Ifelse((power >= 500 && random < 75), 1150, 1100)
triggerall=!NumProjID(131035)
triggerall=AILevel && RoundState=2 && numenemy && StateType != A && var(20)<=60 
triggerall=(enemynear,statetype != L) && !(enemynear, hitfall) && (enemynear,stateno!=[5100,5220]) && (enemynear,stateno!=[120,155]) && (p2bodydist x =[10,120]) && (p2bodydist y =[-80,5]) && (enemynear, statetype != C) && !Var(28)
trigger1=(ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101]))&& random < (200 * (AIlevel ** 2 / 64.0))
trigger2=var(5) && movehit  && random<100
trigger3=(stateno=[200,440]) && movehit && random<200
trigger4=stateno=1300 && animelemtime(9)>0 && random<500
Trigger5=Stateno=1300&&Var(24)&& animelemtime(9)>0 && random<500

[State -1, Genie AI]
type=ChangeState
value=Ifelse((power >= 1200 && random < 100), 1225, 1200)
triggerall=!NumProjID(131035)
triggerall=AILevel && RoundState=2 && numenemy && StateType != A && Ifelse(!var(20),!Numhelper(1206),Numhelper(1206)<4) && random < (60 * (AIlevel ** 2 / 64.0))&& !Var(28)
triggerall=(enemynear,statetype != L) && (enemynear,stateno!=[5100,5220]) && (p2bodydist x>140) && (p2bodydist y =[-160,25]) && (enemynear, statetype != C) 
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5) && movehit  && random<100
trigger3=(stateno=[200,440]) && movehit && random<150

[State -1, Dark Caprice AI]
type=ChangeState
value=11300
triggerall=!NumProjID(131035)
triggerall=AILevel && RoundState=2 && numenemy && StateType != A && var(20)<=60 && (enemynear,vel y<=0) && prevstateno!=11320&& Var(28)
triggerall=(enemynear,statetype != L) && (enemynear,stateno!=[5100,5220]) && (p2bodydist x =[5,80]) && (p2bodydist y =[-160,25]) && (enemynear, statetype != C) 
trigger1=(ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101]))&& random < (250 * (AIlevel ** 2 / 64.0))
trigger2=var(5) && movehit  && random<50
trigger3=(stateno=[200,440]) && movehit && random<100
trigger4=((ctrl)||(stateno=[120,155])) && (enemynear,statetype=A) && (enemynear,vel y<=-1) && random < (200 * (AIlevel ** 2 / 64.0)) 

[State -1, Dark Ventose AI]
type=ChangeState
value=10000
triggerall=!NumProjID(131035)
triggerall=AILevel && RoundState=2 && numenemy && StateType != A && Ifelse(!var(20),!Numhelper(10005),Numhelper(10005)<4) && random < (120 * (AIlevel ** 2 / 64.0))&& Var(28)
triggerall=(enemynear,statetype != L) && (enemynear,stateno!=[5100,5220]) && (p2bodydist x >=10) && (p2bodydist y =[-160,25]) && (enemynear, statetype != C) 
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5) && movehit  && random<100
trigger3=(stateno=[200,440]) && movehit && random<150
Trigger4=Stateno=11300&&MoveHit&&Var(28)

[State -1, Dark Nivose AI]
type=ChangeState
value=10100
triggerall=!NumProjID(131035)
triggerall=AILevel && RoundState=2 && numenemy && StateType != A && var(20)<=60 
triggerall=(enemynear,statetype != L) && !(enemynear, hitfall) && (enemynear,stateno!=[5100,5220]) && (enemynear,stateno!=[120,155]) && (p2bodydist x =[10,120]) && (p2bodydist y =[-80,5]) && (enemynear, statetype != C) && Var(28)
trigger1=(ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101]))&& random < (200 * (AIlevel ** 2 / 64.0))
trigger2=var(5) && movehit  && random<100
trigger3=(stateno=[200,440]) && movehit && random<200
Trigger4=Stateno=11300&&Movehit&&Var(28)

[State -1, Dark Genie AI]
type=ChangeState
value=11200
triggerall=!NumProjID(131035)
triggerall=AILevel && RoundState=2 && numenemy && StateType != A && Ifelse(!var(20),!Numhelper(11206),Numhelper(11206)<4) && random < (60 * (AIlevel ** 2 / 64.0))&& Var(28)
triggerall=(enemynear,statetype != L) && (enemynear,stateno!=[5100,5220]) && (p2bodydist x >=140) && (p2bodydist y =[-160,25]) && (enemynear, statetype != C) 
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5) && movehit  && random<100
trigger3=(stateno=[200,440]) && movehit && random<150
;---------------------------------------------------------------------------
[State -1, run]
type = changestate
value = 100
trigger1 = AIlevel && numenemy
trigger1 = statetype = S && roundstate = 2 && ctrl && random < (300 * (AIlevel ** 2 / 64.0))
trigger1 = (stateno != [100, 105]) && enemynear, movetype != A && p2bodydist x > 120

[State -1, dash]
type = changestate
value = 105
triggerall = AIlevel && numenemy
triggerall = statetype = S && roundstate = 2 && ctrl
triggerall = (p2bodydist x = [0, 80]) && backedgebodydist > 80 && (stateno != [100, 105])
trigger1 = enemynear, movetype = A && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, stateno = 5120 && enemynear, animtime = -3 && random < (300 * (AIlevel ** 2 / 64.0))

[State -1, Jump]
type = changestate
value = 40
triggerall = AIlevel && numenemy&&random < (50 * (AIlevel ** 2 / 64.0))
triggerall = roundstate = 2 && statetype != A
triggerall = enemynear, movetype = A && p2bodydist x < 160 && enemynear, hitdefattr = SC, AT
trigger1=ctrl

[state -1,AI Air Guard]
type = ChangeState
value = 132
triggerall = AIlevel && numenemy&& roundstate = 2&&InGuardDist
triggerall = ctrl&&statetype = A
trigger1 = enemynear,numproj
trigger2 = enemynear,HitDefAttr = SCA, NA,SA,HA
trigger2 = random <=ifelse(backedgedist<=10,900,700)

[State -1, Guard]
type = changestate
value = 120
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && inguarddist
trigger1 = ctrl && (stateno != [120, 155]) && !var(20)
trigger1 = !(enemynear, hitdefattr = SCA, AT) && (enemynear, time < 120)
trigger1 = statetype != A || p2statetype = A
trigger1 = random < (ifelse((p2stateno = [200, 699]), 300, ifelse((p2stateno = [1000, 2999]), 500, 1000)) * (AIlevel ** 2 / 64.0))

[State -1, Guard]
type = ChangeState
value = 120
triggerall= AILevel && numenemy&& (StateNo!=[120,155]) && !(enemynear,ctrl) && random < (450 * (AIlevel ** 2 / 64.0))
triggerall= Ctrl||stateno = 21
triggerall=enemynear,Movetype=A && !(enemynear,hitdefattr=SCA,AT) 
trigger1 = inguarddist

[State -1, Zero Counter]
type = changestate
value = 750
trigger1 = AIlevel && numenemy
trigger1 = (p2dist x = [-90, 90]) && stateno = 150 || stateno = 152
trigger1 = roundstate = 2 && power >= 2000 && !var(20) && life < 500 && random < (10 * (AIlevel ** 2 / 64.0))

[State -1, powercharge]
type = changestate
value = 730
trigger1 = AIlevel && numenemy
trigger1 = !numhelper(3033)
trigger1 = roundstate = 2 && statetype != A && ctrl
trigger1 = power < const(data.power) && power < powermax && !var(20)
trigger1 = random < (50 * (AIlevel ** 2 / 64.0)) && !inguarddist && p2movetype != A && p2dist x >= 160

[State -1, roll / dodge]
type = changestate
value = ifelse(random < 600, 700, 710)
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && ctrl && random < (200 * (AIlevel ** 2 / 64.0))
trigger1 = enemynear, movetype = A && p2bodydist x < 80

[State -1, airrecover]
type=changestate
value=ifelse((pos y>=-20),5200,5210)
triggerall= AILevel && numenemy
triggerall= roundstate=2 && stateno=5050
trigger1= vel y>-1 && alive && canrecover && random < (350 * (AIlevel ** 2 / 64.0))