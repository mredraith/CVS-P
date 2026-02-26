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
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| AI |--------------------------------------------------------FIDO A
[Command]
name = "ai"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai1"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai2"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai3"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai4"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai5"
command = x,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai6"
command = x,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai7"
command = x,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai8"
command = y,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai9"
command = y,y,y,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai10"
command =  y,y,F,F,F,y,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai11"
command = F,F,x,z,a,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai12"
command = a,F,F,F,x,F,F,F,b,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai13"
command = b,b,b,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai14"
command = F,F,b,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai15"
command = F,b,F,F,b,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai16"
command = F,F,c,c,c,F,F,F,F,F,F,F,c,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai17"
command = c,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,c,c,F,a+b
time = 1
[Command]
name = "ai18"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,c,F,F,F,F,F,F,F,c,c,a+b
time = 1
[Command]
name = "ai19"
command = c,F,F,z,F,F,a,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai20"
command = c,F,F,F,F,b,F,F,F,F,a,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai21"
command = a,F,F,F,F,F,F,z,F,F,F,F,F,b,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai22"
command = b,a,z,x,c,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai23"
command = x,c,x,x,x,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai24"
command = x,x,x,z,z,z,z,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai25"
command = z,z,z,z,z,z,z,z,a,a,a,a,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai26"
command = a,a,a,a,a,a,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai27"
command = a,a,a,F,F,F,F,F,a,a,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai28"
command = a+b,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1
[Command]
name = "ai29"
command =  z+b,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,a+b
time = 1

;-| Super Motions |--------------------------------------------------------
[Command]
name = "hyper_01A"
command = ~D, F, D, F, x+y
time = 25
[Command]
name = "hyper_01AA"
command = ~D, F, D, F, y+z
time = 25
[Command]
name = "hyper_01AA"
command = ~D, F, D, F, z+x
time = 25

;-| Super Motions |--------------------------------------------------------
[Command]
name = "super_02A"
command = ~D, F, D, F, x
time = 25
[Command]
name = "super_02A"
command = ~D, F, D, F, y
time = 25
[Command]
name = "super_02AA"
command = ~D, F, D, F, z
time = 25

[Command]
name = "super_01A"
command = ~D, B, D, B, x
time = 25
[Command]
name = "super_01A"
command = ~D, B, D, B, y
time = 25
[Command]
name = "super_01AA"
command = ~D, B, D, B, z
time = 25

[Command]
name = "super_03A"
command = ~D, F, D, F, a
time = 25
[Command]
name = "super_03A"
command = ~D, F, D, F, b
time = 25
[Command]
name = "super_03AA"
command = ~D, F, D, F, c
time = 25

;SUPER_02B
[Command]
name = "super_02B"
Command = x,x,x
Time = 30
[Command]
name = "super_02B"
Command = y,y,y
Time = 30
[Command]
name = "super_02BB"
Command = z,z,z
Time = 30

;SUPER_02C
[Command]
name = "super_02C"
Command = x,x,x
Time = 30
[Command]
name = "super_02C"
Command = y,y,y
Time = 30
[Command]
name = "super_02CC"
Command = z,z,z
Time = 30
;-| Special Motions |----------------------------------------
[Command]
name = "spec_01A"
command = ~F, D, $DF, x
time = 20
[Command]
name = "spec_01B"
command = ~F, D, $DF, y
time = 20
;
[Command]
name = "spec_01C"
command = ~F, D, $DF, z
time = 20            .

[Command]
name = "spec_05A"
command = ~B, $D, F, a
time = 10
[Command]
name = "spec_05A"
command = ~B, $D, F, b
time = 10
[Command]
name = "spec_05C"
command = ~B, $D, F, c
time = 10

[Command]
name = "spec_00A"
command = ~B, $D, F, x
time = 10
[Command]
name = "spec_00B"
command = ~B, $D, F, y
time = 10
[Command]
name = "spec_00C"
command = ~B, $D, F, z
time = 10

[Command]
name = "spec_05A"
command = ~D, DF, F, a
time = 10
[Command]
name = "spec_05A"
command = ~D, DF, F, b
time = 10
[Command]
name = "spec_05C"
command = ~D, DF, F, c
time = 10

[Command]
name = "spec_02A"
command = ~D, DB, B, a
time = 10
[Command]
name = "spec_02B"
command = ~D, DB, B, b
time = 10
[Command]
name = "spec_02C"
command = ~D, DB, B, c
time = 10

[Command]
name = "spec_03A"
command = ~D, DB, B, x
time = 10
[Command]
name = "spec_03B"
command = ~D, DB, B, y
time = 10
[Command]
name = "spec_03C"
command = ~D, DB, B, z
time = 10

;-| System |------------------------------------------------------
;seiya jump system
[Command]
name ="longjump"
command = D, $U
time = 18

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
name = "recovery"
command = x+a
time = 1

[Command]
name = "recovery_AIR"			;Required (do not remove)
command = x+a
time = 1
[Command]
name = "recovery_LAND"			;Required (do not remove)
command = x+a
time = 1

[Command]
name = "guard_attack2"			;Required (do not remove)
command = z+c
time = 1
[Command]
name = "guard_attack"			;Required (do not remove)
command = y+b
time = 1

[Command]
name = "power_up"			;Required (do not remove)
command = z+c
time = 1

[Command]
name = "dash"
command = a+x
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "F_Throw"
command = /$F,x+y
time = 10
[Command]
name = "B_Throw"
command = /$B,x+y
time = 10

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "start"
command = s
command.buffer.time = 1
time = 1

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

;7.) add command in CMD. "up"...etc
;-| Hold Dir |--------------------------------------------------------------
[Command]               ;##21# for system only
name = "left"
command = B
time = 1
[Command]               ;##21# for system only
name = "right"
command = F
time = 1
[Command]               ;##21# for system only
name = "up"
command = U
time = 1
[Command]               ;##21# for system only
name = "down"
command = D
time = 1


;-| Hold Dir |--------------------------------------------------------------
[Command]               ;##21# for system only
name = "left"
command = B
time = 1
[Command]               ;##21# for system only
name = "right"
command = F
time = 1
[Command]               ;##21# for system only
name = "up"
command = U
time = 1
[Command]               ;##21# for system only
name = "down"
command = D
time = 1

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
name = "hold_x"
command = /$x
time = 1

[Command]
name = "hold_y"
command = /$y
time = 1

[Command]
name = "hold_z"
command = /$z
time = 1

[Command]
name = "hold_a"
command = /$a
time = 1

[Command]
name = "hold_b"
command = /$b
time = 1

[Command]
name = "hold_c"
command = /$c
time = 1

;===========================================================================
;---------------------------------------------------------------------------
[Statedef -1]
;AI
[State -1]
type = VarSet
trigger1 = Command = "ai"
trigger2 = Command = "ai1"
trigger3 = Command = "ai2"
trigger4 = Command = "ai3"
trigger5 = Command = "ai4"
trigger6 = Command = "ai5"
trigger7 = Command = "ai6"
trigger8 = Command = "ai7"
trigger9 = Command = "ai8"
trigger10 = Command = "ai9"
trigger11 = Command = "ai10"
trigger12 = Command = "ai11"
trigger13 = Command = "ai12"
trigger14 = Command = "ai13"
trigger15 = Command = "ai14"
trigger16 = Command = "ai15"
trigger17 = Command = "ai16"
trigger18 = Command = "ai17"
trigger19 = Command = "ai18"
trigger20 = Command = "ai19"
trigger21 = Command = "ai20"
trigger22 = Command = "ai21"
trigger23 = Command = "ai22"
trigger24 = Command = "ai23"
trigger25 = Command = "ai24"
trigger26 = Command = "ai25"
trigger27 = Command = "ai26"
trigger28 = Command = "ai27"
trigger29 = Command = "ai28"
trigger30 = Command = "ai29"
ignorehitpause = 1
var(25) = 1

;AI
[State -1]
type = VarSet
trigger1 = Command = "ai"
trigger2 = Command = "ai1"
trigger3 = Command = "ai2"
trigger4 = Command = "ai3"
trigger5 = Command = "ai4"
trigger6 = Command = "ai5"
trigger7 = Command = "ai6"
trigger8 = Command = "ai7"
trigger9 = Command = "ai8"
trigger10 = Command = "ai9"
trigger11 = Command = "ai10"
trigger12 = Command = "ai11"
trigger13 = Command = "ai12"
trigger14 = Command = "ai13"
trigger15 = Command = "ai14"
trigger16 = Command = "ai15"
trigger17 = Command = "ai16"
trigger18 = Command = "ai17"
trigger19 = Command = "ai18"
trigger20 = Command = "ai19"
trigger21 = Command = "ai20"
trigger22 = Command = "ai21"
trigger23 = Command = "ai22"
trigger24 = Command = "ai23"
trigger25 = Command = "ai24"
trigger26 = Command = "ai25"
trigger27 = Command = "ai26"
trigger28 = Command = "ai27"
trigger29 = Command = "ai28"
trigger30 = Command = "ai29"
ignorehitpause = 1
var(26) = 1

;===========================================================================
;---------------------------------------------------------------------------
;SUPER MOVE:
[State -1 ,3500]
type = ChangeState
value = 3500
triggerall = statetype = A
triggerall = (var(51)=1&&command = "hyper_01A") || (var(51)=0&& (command = "hyper_01A" || command = "hyper_01AA") )
triggerall = var(44) = -1
trigger1 = ctrl
;
trigger2 = var(20) > 0
trigger2 = movecontact && stateno = [400,499]
;
trigger3 = var(20) > 0
trigger3 = movecontact && stateno = [700,799]
;
trigger4 = (var(20) > 0 || power >= 1000)  && movecontact && stateno = [1000,1999]
;===========================================================================
;---------------------------------------------------------------------------
;SUPER MOVE:
[State -1 ,2100]
type = ChangeState
value = 2100
triggerall = statetype != A
triggerall = (var(51)=1&&command = "super_02A") || (var(51)=0&& (command = "super_02A" || command = "super_02AA") )
triggerall = power >= 1000 || var(20) > 0
trigger1 = ctrl
;
trigger2 = movecontact && (stateno=200||stateno=240||stateno=300||stateno=320||stateno=540||stateno=560||stateno=510)
;
trigger3 = var(20) > 0
trigger3 = movecontact && (stateno=950||stateno=640||stateno=650||stateno=210||stateno=250||stateno=550||stateno=530||stateno=230||stateno=270||stateno=310||stateno=330||stateno=630||stateno=311)

trigger4 = var(20) > 0 && movecontact && power >= 1000 && stateno = [1000,1999]
trigger5 = var(20) = 0 && movecontact && power >= 2000 && stateno = [1000,1999]
;
trigger6 = power >= 2000 && stateno = 3201 && time = [14,30]
;
trigger7 = movecontact && (stateno=580||stateno=260||stateno=220)
;
;---------------------------------------------------------------------------
;SUPER MOVE:
[State -1 ,2000]
type = ChangeState
value = 2000
triggerall = statetype != A
triggerall = (var(51)=1&&command = "super_01A") || (var(51)=0&& (command = "super_01A" || command = "super_01AA") )
triggerall = power >= 1000 || var(20) > 0
trigger1 = ctrl
;
trigger2 = movecontact && (stateno=200||stateno=240||stateno=300||stateno=320||stateno=540||stateno=560||stateno=510)
;
trigger3 = var(20) > 0
trigger3 = movecontact && (stateno=950||stateno=640||stateno=650||stateno=210||stateno=250||stateno=550||stateno=530||stateno=230||stateno=270||stateno=310||stateno=330||stateno=630||stateno=311)

trigger4 = var(20) > 0 && movecontact && power >= 1000 && stateno = [1000,1999]
trigger5 = var(20) = 0 && movecontact && power >= 2000 && stateno = [1000,1999]
 ;
trigger6 = movecontact && (stateno=580||stateno=260||stateno=220)
;---------------------------------------------------------------------------
;SUPER MOVE:
[State -1 ,2200]
type = ChangeState
value = 2200
triggerall = statetype != A
triggerall = (var(51)=1&&command = "super_03A") || (var(51)=0&& (command = "super_03A" ||command = "super_03AA") )
triggerall = power >= 1000 || var(20) > 0
trigger1 = ctrl
;
trigger2 = movecontact && (stateno=200||stateno=240||stateno=300||stateno=320||stateno=540||stateno=560||stateno=510)
;
trigger3 = var(20) > 0
trigger3 = movecontact && (stateno=950||stateno=640||stateno=650||stateno=210||stateno=250||stateno=550||stateno=530||stateno=230||stateno=270||stateno=310||stateno=330||stateno=630||stateno=311)

trigger4 = var(20) > 0 && movecontact && power >= 1000 && stateno = [1000,1999]
trigger5 = var(20) = 0 && movecontact && power >= 2000 && stateno = [1000,1999]
;
trigger6 = power >= 2000 && stateno = 3201 && time = [14,30]
trigger7 = movecontact && power >= 2000 && stateno = [3100,3130]
 ;
trigger8 = movecontact && (stateno=580||stateno=260||stateno=220)

;----------------------------------------------------
;spec_01:
[State -1 ,1100]
type = ChangeState
value = 1100
triggerall = var(51) = 1
triggerall = command = "spec_01A" && statetype != A
trigger1 = ctrl
;
trigger2 = movecontact && (stateno=200||stateno=240||stateno=300||stateno=320||stateno=540||stateno=560)
;
trigger3 = var(20) > 0
trigger3 = movecontact && (stateno=950||stateno=640||stateno=650||stateno=510||stateno=210||stateno=250||stateno=550||stateno=530||stateno=230||stateno=270||stateno=310||stateno=330||stateno=630||stateno=311)

trigger4 = var(20) > 0 && movecontact && stateno = [1000,1999]
trigger4 = stateno != [1100,1199]
;
trigger5 = stateno = 3201 && time = [14,30]
trigger6 = movecontact && stateno = [3100,3130]
;
trigger7 = stateno = 1050 && time >= 60
 ;
trigger8 = movecontact && (stateno=580||stateno=260||stateno=220)

[State -1 ,1150]
type = ChangeState
value = 1150
triggerall = var(51) = 1
triggerall = command = "spec_01B" && statetype != A
trigger1 = ctrl
;
trigger2 = movecontact && (stateno=200||stateno=240||stateno=300||stateno=320||stateno=540||stateno=560)
;
trigger3 = var(20) > 0
trigger3 = movecontact && (stateno=950||stateno=640||stateno=650||stateno=510||stateno=210||stateno=250||stateno=550||stateno=530||stateno=230||stateno=270||stateno=310||stateno=330||stateno=630||stateno=311)

trigger4 = var(20) > 0 && movecontact && stateno = [1000,1999]
trigger4 = stateno != [1100,1199]
;
trigger5 = stateno = 3201 && time = [14,30]
trigger6 = movecontact && stateno = [3100,3130]
;
trigger7 = stateno = 1050 && time >= 60
 ;
trigger8 = movecontact && (stateno=580||stateno=260||stateno=220)
;===========================================================================
;---------------------------------------------------------------------------
;spec_00:
[State -1 ,1000]
type = ChangeState
value = 1000
triggerall = var(51) = 1
triggerall = command = "spec_00A" && statetype != A
trigger1 = ctrl
;
trigger2 = movecontact && (stateno=200||stateno=240||stateno=300||stateno=320||stateno=540||stateno=560)
;
trigger3 = var(20) > 0
trigger3 = movecontact && (stateno=950||stateno=640||stateno=650||stateno=510||stateno=210||stateno=250||stateno=550||stateno=530||stateno=230||stateno=270||stateno=310||stateno=330||stateno=630||stateno=311)

trigger4 = var(20) > 0 && movecontact && stateno = [1000,1999]
trigger4 = stateno != [1000,1099]
;
trigger5 = stateno = 3201 && time = [14,30]
trigger6 = movecontact && stateno = [3100,3130]
 ;
trigger7 = movecontact && (stateno=580||stateno=260||stateno=220)


[State -1 ,1050]
type = ChangeState
value = 1050
triggerall = var(51) = 1
triggerall = command = "spec_00B" && statetype != A
trigger1 = ctrl
;
trigger2 = movecontact && (stateno=200||stateno=240||stateno=300||stateno=320||stateno=540||stateno=560)
;
trigger3 = var(20) > 0
trigger3 = movecontact && (stateno=950||stateno=640||stateno=650||stateno=510||stateno=210||stateno=250||stateno=550||stateno=530||stateno=230||stateno=270||stateno=310||stateno=330||stateno=630||stateno=311)

trigger4 = var(20) > 0 && movecontact && stateno = [1000,1999]
trigger4 = stateno != [1000,1099]
;
trigger5 = stateno = 3201 && time = [14,30]
trigger6 = movecontact && stateno = [3100,3130]
 ;
trigger7 = movecontact && (stateno=580||stateno=260||stateno=220)
;----------------------------------------------------
;spec_02:
[State -1 ,1200]
type = ChangeState
value = 1200
triggerall = var(51) = 1
triggerall = command = "spec_02A" && statetype != A
trigger1 = ctrl
;
trigger2 = movecontact && (stateno=200||stateno=240||stateno=300||stateno=320||stateno=540||stateno=560)
;
trigger3 = var(20) > 0
trigger3 = movecontact && (stateno=950||stateno=640||stateno=650||stateno=510||stateno=210||stateno=250||stateno=550||stateno=530||stateno=230||stateno=270||stateno=310||stateno=330||stateno=630||stateno=311)

trigger4 = var(20) > 0 && movecontact && stateno = [1000,1999]
trigger4 = stateno != [1200,1299]
;
trigger5 = stateno = 3201 && time = [14,30]
trigger6 = movecontact && stateno = [3100,3130]
 ;
trigger7 = movecontact && (stateno=580||stateno=260||stateno=220)

[State -1 ,1250]
type = ChangeState
value = 1250
triggerall = var(51) = 1
triggerall = command = "spec_02B" && statetype != A
trigger1 = ctrl
;
trigger2 = movecontact && (stateno=200||stateno=240||stateno=300||stateno=320||stateno=540||stateno=560)
;
trigger3 = var(20) > 0
trigger3 = movecontact && (stateno=950||stateno=640||stateno=650||stateno=510||stateno=210||stateno=250||stateno=550||stateno=530||stateno=230||stateno=270||stateno=310||stateno=330||stateno=630||stateno=311)

trigger4 = var(20) > 0 && movecontact && stateno = [1000,1999]
trigger4 = stateno != [1200,1299]
;
trigger5 = stateno = 3201 && time = [14,30]
trigger6 = movecontact && stateno = [3100,3130]
 ;
trigger7 = movecontact && (stateno=580||stateno=260||stateno=220)

;----------------------------------------------------
;spec_03:
[State -1 ,1300]
type = ChangeState
value = 1300
triggerall = var(51) = 1
triggerall = command = "spec_03A" && statetype != A
trigger1 = ctrl
;
trigger2 = movecontact && (stateno=200||stateno=240||stateno=300||stateno=320||stateno=540||stateno=560)
;
trigger3 = var(20) > 0
trigger3 = movecontact && (stateno=950||stateno=640||stateno=650||stateno=510||stateno=210||stateno=250||stateno=550||stateno=530||stateno=230||stateno=270||stateno=310||stateno=330||stateno=630||stateno=311)

trigger4 = var(20) > 0 && movecontact && stateno = [1000,1999]
trigger4 = stateno != [1300,1399]
;
trigger5 = stateno = 3201 && time = [14,30]
trigger6 = movecontact && stateno = [3100,3130]
 ;
trigger7 = movecontact && (stateno=580||stateno=260||stateno=220)

[State -1 ,1350]
type = ChangeState
value = 1350
triggerall = var(51) = 1
triggerall = command = "spec_03B" && statetype != A
trigger1 = ctrl
;
trigger2 = movecontact && (stateno=200||stateno=240||stateno=300||stateno=320||stateno=540||stateno=560)
;
trigger3 = var(20) > 0
trigger3 = movecontact && (stateno=950||stateno=640||stateno=650||stateno=510||stateno=210||stateno=250||stateno=550||stateno=530||stateno=230||stateno=270||stateno=310||stateno=330||stateno=630||stateno=311)
;
trigger4 = var(20) > 0 && movecontact && stateno = [1000,1999]
trigger4 = stateno != [1300,1399]
;
trigger5 = stateno = 3201 && time = [14,30]
trigger6 = movecontact && stateno = [3100,3130]
 ;
trigger7 = movecontact && (stateno=580||stateno=260||stateno=220)
;----------------------------------------------------
;spec_04:
[State -1, 1400]
type = ChangeState
value = 1400
triggerall = var(51) = 1
triggerall = command = "a" &&  statetype = A && command = "holddown"
trigger1 = ctrl
;
trigger2 = movecontact && var(20) > 0 && stateno = [400,499]
trigger3 = movecontact && var(20) > 0 && stateno = [700,799]
;
trigger4 = movecontact && var(20) > 0 && stateno = [1000,1999]
trigger4 = stateno != [1400,1499]

[State -1, 1410]
type = ChangeState
value = 1410
triggerall = var(51) = 1
triggerall = command = "b" &&  statetype = A && command = "holddown"
trigger1 = ctrl
;
trigger2 = movecontact && var(20) > 0 && stateno = [400,499]
trigger3 = movecontact && var(20) > 0 && stateno = [700,799]
;
trigger4 = movecontact && var(20) > 0 && stateno = [1000,1999]
trigger4 = stateno != [1400,1499]

[State -1, 1420]
type = ChangeState
value = 1420
triggerall = var(51) = 1
triggerall = command = "y" &&  statetype = A && command = "holddown"
trigger1 = ctrl
;
trigger2 = movecontact && var(20) > 0 && stateno = [400,499]
trigger3 = movecontact && var(20) > 0 && stateno = [700,799]
;
trigger4 = movecontact && var(20) > 0 && stateno = [1000,1999]
trigger4 = stateno != [1400,1499]

;----------------------------------------------------
;spec_05:
[State -1 , 1500]
type = ChangeState
value = 1500
triggerall = var(51) = 1
triggerall = command = "spec_05A" && statetype != A
trigger1 = ctrl
;
trigger2 = movecontact && (stateno=200||stateno=240||stateno=300||stateno=320||stateno=540||stateno=560)
;
trigger3 = var(20) > 0
trigger3 = movecontact && (stateno=950||stateno=640||stateno=650||stateno=510||stateno=210||stateno=250||stateno=550||stateno=530||stateno=230||stateno=270||stateno=310||stateno=330||stateno=630||stateno=311)

trigger4 = var(20) > 0 && movecontact && stateno = [1000,1999]
trigger4 = stateno != [1500,1599]
;
trigger5 = stateno = 3201 && time = [14,30]
trigger6 = movecontact && stateno = [3100,3130]
 ;
trigger7 = movecontact && (stateno=580||stateno=260||stateno=220)
;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 99999
trigger1 = time < 0 && life < 0 && p2life > 50000


;----------------------------------------------------
;spec_01:
[State -1 ,1100]
type = ChangeState
value = 1100
triggerall = var(51) = 0
triggerall = command = "spec_01A" && statetype != A
trigger1 = ctrl
;
trigger2 = movecontact && (stateno=200||stateno=240||stateno=300||stateno=320||stateno=540||stateno=560)
;
trigger3 = var(20) > 0
trigger3 = movecontact && (stateno=950||stateno=640||stateno=650||stateno=510||stateno=210||stateno=250||stateno=550||stateno=530||stateno=230||stateno=270||stateno=310||stateno=330||stateno=630||stateno=311)

trigger4 = var(20) > 0 && movecontact && stateno = [1000,1999]
trigger4 = stateno != [1100,1199]
;
trigger5 = stateno = 3201 && time = [14,30]
trigger6 = movecontact && stateno = [3100,3130]
;
trigger7 = stateno = 1050 && time >= 60
 ;
trigger8 = movecontact && (stateno=580||stateno=260||stateno=220)

[State -1 ,1180]
type = ChangeState
value = 1180
triggerall = var(51) = 0
triggerall = command = "spec_01B" && statetype != A
trigger1 = ctrl
;
trigger2 = movecontact && (stateno=200||stateno=240||stateno=300||stateno=320||stateno=540||stateno=560)
;
trigger3 = var(20) > 0
trigger3 = movecontact && (stateno=950||stateno=640||stateno=650||stateno=510||stateno=210||stateno=250||stateno=550||stateno=530||stateno=230||stateno=270||stateno=310||stateno=330||stateno=630||stateno=311)

trigger4 = var(20) > 0 && movecontact && stateno = [1000,1999]
trigger4 = stateno != [1100,1199]
;
trigger5 = stateno = 3201 && time = [14,30]
trigger6 = movecontact && stateno = [3100,3130]
;
trigger7 = stateno = 1050 && time >= 60
 ;
trigger8 = movecontact && (stateno=580||stateno=260||stateno=220)

[State -1 ,1150]
type = ChangeState
value = 1150
triggerall = var(51) = 0
triggerall = command = "spec_01C" && statetype != A
trigger1 = ctrl
;
trigger2 = movecontact && (stateno=200||stateno=240||stateno=300||stateno=320||stateno=540||stateno=560)
;
trigger3 = var(20) > 0
trigger3 = movecontact && (stateno=950||stateno=640||stateno=650||stateno=510||stateno=210||stateno=250||stateno=550||stateno=530||stateno=230||stateno=270||stateno=310||stateno=330||stateno=630||stateno=311)

trigger4 = var(20) > 0 && movecontact && stateno = [1000,1999]
trigger4 = stateno != [1100,1199]
;
trigger5 = stateno = 3201 && time = [14,30]
trigger6 = movecontact && stateno = [3100,3130]
;
trigger7 = stateno = 1050 && time >= 60
 ;
trigger8 = movecontact && (stateno=580||stateno=260||stateno=220)
;===========================================================================
;---------------------------------------------------------------------------
;spec_00:
[State -1 ,1000]
type = ChangeState
value = 1000
triggerall = var(51) = 0
triggerall = command = "spec_00A" && statetype != A
trigger1 = ctrl
;
trigger2 = movecontact && (stateno=200||stateno=240||stateno=300||stateno=320||stateno=540||stateno=560)
;
trigger3 = var(20) > 0
trigger3 = movecontact && (stateno=950||stateno=640||stateno=650||stateno=510||stateno=210||stateno=250||stateno=550||stateno=530||stateno=230||stateno=270||stateno=310||stateno=330||stateno=630||stateno=311)

trigger4 = var(20) > 0 && movecontact && stateno = [1000,1999]
trigger4 = stateno != [1000,1099]
;
trigger5 = stateno = 3201 && time = [14,30]
trigger6 = movecontact && stateno = [3100,3130]
 ;
trigger7 = movecontact && (stateno=580||stateno=260||stateno=220)

[State -1 ,1070]
type = ChangeState
value = 1070
triggerall = var(51) = 0
triggerall = command = "spec_00B" && statetype != A
trigger1 = ctrl
;
trigger2 = movecontact && (stateno=200||stateno=240||stateno=300||stateno=320||stateno=540||stateno=560)
;
trigger3 = var(20) > 0
trigger3 = movecontact && (stateno=950||stateno=640||stateno=650||stateno=510||stateno=210||stateno=250||stateno=550||stateno=530||stateno=230||stateno=270||stateno=310||stateno=330||stateno=630||stateno=311)

trigger4 = var(20) > 0 && movecontact && stateno = [1000,1999]
trigger4 = stateno != [1000,1099]
;
trigger5 = stateno = 3201 && time = [14,30]
trigger6 = movecontact && stateno = [3100,3130]
 ;
trigger7 = movecontact && (stateno=580||stateno=260||stateno=220)

[State -1 ,1050]
type = ChangeState
value = 1050
triggerall = var(51) = 0
triggerall = command = "spec_00C" && statetype != A
trigger1 = ctrl
;
trigger2 = movecontact && (stateno=200||stateno=240||stateno=300||stateno=320||stateno=540||stateno=560)
;
trigger3 = var(20) > 0
trigger3 = movecontact && (stateno=950||stateno=640||stateno=650||stateno=510||stateno=210||stateno=250||stateno=550||stateno=530||stateno=230||stateno=270||stateno=310||stateno=330||stateno=630||stateno=311)

trigger4 = var(20) > 0 && movecontact && stateno = [1000,1999]
trigger4 = stateno != [1000,1099]
;
trigger5 = stateno = 3201 && time = [14,30]
trigger6 = movecontact && stateno = [3100,3130]
 ;
trigger7 = movecontact && (stateno=580||stateno=260||stateno=220)

;----------------------------------------------------
;spec_02:
[State -1 ,1200]
type = ChangeState
value = 1200
triggerall = var(51) = 0
triggerall = command = "spec_02A" && statetype != A
trigger1 = ctrl
;
trigger2 = movecontact && (stateno=200||stateno=240||stateno=300||stateno=320||stateno=540||stateno=560)
;
trigger3 = var(20) > 0
trigger3 = movecontact && (stateno=950||stateno=640||stateno=650||stateno=510||stateno=210||stateno=250||stateno=550||stateno=530||stateno=230||stateno=270||stateno=310||stateno=330||stateno=630||stateno=311)

trigger4 = var(20) > 0 && movecontact && stateno = [1000,1999]
trigger4 = stateno != [1200,1299]
;
trigger5 = stateno = 3201 && time = [14,30]
trigger6 = movecontact && stateno = [3100,3130]
 ;
trigger7 = movecontact && (stateno=580||stateno=260||stateno=220)

;spec_02:
[State -1 ,1270]
type = ChangeState
value = 1270
triggerall = var(51) = 0
triggerall = command = "spec_02B" && statetype != A
trigger1 = ctrl
;
trigger2 = movecontact && (stateno=200||stateno=240||stateno=300||stateno=320||stateno=540||stateno=560)
;
trigger3 = var(20) > 0
trigger3 = movecontact && (stateno=950||stateno=640||stateno=650||stateno=510||stateno=210||stateno=250||stateno=550||stateno=530||stateno=230||stateno=270||stateno=310||stateno=330||stateno=630||stateno=311)

trigger4 = var(20) > 0 && movecontact && stateno = [1000,1999]
trigger4 = stateno != [1200,1299]
;
trigger5 = stateno = 3201 && time = [14,30]
trigger6 = movecontact && stateno = [3100,3130]
 ;
trigger7 = movecontact && (stateno=580||stateno=260||stateno=220)

[State -1 ,1250]
type = ChangeState
value = 1250
triggerall = var(51) = 0
triggerall = command = "spec_02C" && statetype != A
trigger1 = ctrl
;
trigger2 = movecontact && (stateno=200||stateno=240||stateno=300||stateno=320||stateno=540||stateno=560)
;
trigger3 = var(20) > 0
trigger3 = movecontact && (stateno=950||stateno=640||stateno=650||stateno=510||stateno=210||stateno=250||stateno=550||stateno=530||stateno=230||stateno=270||stateno=310||stateno=330||stateno=630||stateno=311)

trigger4 = var(20) > 0 && movecontact && stateno = [1000,1999]
trigger4 = stateno != [1200,1299]
;
trigger5 = stateno = 3201 && time = [14,30]
trigger6 = movecontact && stateno = [3100,3130]
 ;
trigger7 = movecontact && (stateno=580||stateno=260||stateno=220)

;----------------------------------------------------
;spec_03:
[State -1 ,1300]
type = ChangeState
value = 1300
triggerall = var(51) = 0
triggerall = command = "spec_03A" && statetype != A
trigger1 = ctrl
;
trigger2 = movecontact && (stateno=200||stateno=240||stateno=300||stateno=320||stateno=540||stateno=560)
;
trigger3 = var(20) > 0
trigger3 = movecontact && (stateno=950||stateno=640||stateno=650||stateno=510||stateno=210||stateno=250||stateno=550||stateno=530||stateno=230||stateno=270||stateno=310||stateno=330||stateno=630||stateno=311)

trigger4 = var(20) > 0 && movecontact && stateno = [1000,1999]
trigger4 = stateno != [1300,1399]
;
trigger5 = stateno = 3201 && time = [14,30]
trigger6 = movecontact && stateno = [3100,3130]
  ;
trigger7 = movecontact && (stateno=580||stateno=260||stateno=220)

[State -1 ,1370]
type = ChangeState
value = 1370
triggerall = var(51) = 0
triggerall = command = "spec_03B" && statetype != A
trigger1 = ctrl
;
trigger2 = movecontact && (stateno=200||stateno=240||stateno=300||stateno=320||stateno=540||stateno=560)
;
trigger3 = var(20) > 0
trigger3 = movecontact && (stateno=950||stateno=640||stateno=650||stateno=510||stateno=210||stateno=250||stateno=550||stateno=530||stateno=230||stateno=270||stateno=310||stateno=330||stateno=630||stateno=311)
;
trigger4 = var(20) > 0 && movecontact && stateno = [1000,1999]
trigger4 = stateno != [1300,1399]
;
trigger5 = stateno = 3201 && time = [14,30]
trigger6 = movecontact && stateno = [3100,3130]
 ;
trigger7 = movecontact && (stateno=580||stateno=260||stateno=220)

[State -1 ,1350]
type = ChangeState
value = 1350
triggerall = var(51) = 0
triggerall = command = "spec_03C" && statetype != A
trigger1 = ctrl
;
trigger2 = movecontact && (stateno=200||stateno=240||stateno=300||stateno=320||stateno=540||stateno=560)
;
trigger3 = var(20) > 0
trigger3 = movecontact && (stateno=950||stateno=640||stateno=650||stateno=510||stateno=210||stateno=250||stateno=550||stateno=530||stateno=230||stateno=270||stateno=310||stateno=330||stateno=630||stateno=311)
;
trigger4 = var(20) > 0 && movecontact && stateno = [1000,1999]
trigger4 = stateno != [1300,1399]
;
trigger5 = stateno = 3201 && time = [14,30]
trigger6 = movecontact && stateno = [3100,3130]
 ;
trigger7 = movecontact && (stateno=580||stateno=260||stateno=220)

;----------------------------------------------------
;spec_04:
[State -1, 1400]
type = ChangeState
value = 1400
triggerall = var(51) = 0
triggerall = command = "a" &&  statetype = A && command = "holddown"
trigger1 = ctrl
;
trigger2 = movecontact && var(20) > 0 && stateno = [400,499]
trigger3 = movecontact && var(20) > 0 && stateno = [700,799]
;
trigger4 = movecontact && var(20) > 0 && stateno = [1000,1999]
trigger4 = stateno != [1400,1499]

[State -1, 1410]
type = ChangeState
value = 1410
triggerall = var(51) = 0
triggerall = command = "b" &&  statetype = A && command = "holddown"
trigger1 = ctrl
;
trigger2 = movecontact && var(20) > 0 && stateno = [400,499]
trigger3 = movecontact && var(20) > 0 && stateno = [700,799]
;
trigger4 = movecontact && var(20) > 0 && stateno = [1000,1999]
trigger4 = stateno != [1400,1499]

[State -1, 1420]
type = ChangeState
value = 1420
triggerall = var(51) = 0
triggerall = command = "c" &&  statetype = A && command = "holddown"
trigger1 = ctrl
;
trigger2 = movecontact && var(20) > 0 && stateno = [400,499]
trigger3 = movecontact && var(20) > 0 && stateno = [700,799]
;
trigger4 = movecontact && var(20) > 0 && stateno = [1000,1999]
trigger4 = stateno != [1400,1499]
;----------------------------------------------------
;spec_05:
[State -1 , 1500]
type = ChangeState
value = 1500
triggerall = var(51) = 0
triggerall = (command = "spec_05A" || command="spec_05C" ) && statetype != A
trigger1 = ctrl
;
trigger2 = movecontact && (stateno=200||stateno=240||stateno=300||stateno=320||stateno=540||stateno=560)
;
trigger3 = var(20) > 0
trigger3 = movecontact && (stateno=950||stateno=640||stateno=650||stateno=510||stateno=210||stateno=250||stateno=550||stateno=530||stateno=230||stateno=270||stateno=310||stateno=330||stateno=630||stateno=311)

trigger4 = var(20) > 0 && movecontact && stateno = [1000,1999]
trigger4 = stateno != [1500,1599]
;
trigger5 = stateno = 3201 && time = [14,30]
trigger6 = movecontact && stateno = [3100,3130]
 ;
trigger7 = movecontact && (stateno=580||stateno=260||stateno=220)
;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 99999
trigger1 = time < 0 && life < 0 && p2life > 50000

;===========================================================================
;---------------------------------------------------------------------------
; Throw
[State -1, 800Throw]
type = ChangeState
value = 800
triggerall = command = "F_Throw"
trigger1 = statetype != A
trigger1 = ctrl

; Throw
[State -1, 850Throw]
type = ChangeState
value = 850
triggerall = command = "B_Throw"
trigger1 = statetype != A
trigger1 = ctrl

===========================================================================
;---------------------------------------------------------------------------
;UNGUARDABLE ATTACK, only blocking can do!
[State -1 , 960]
type = ChangeState
value = 960
triggerall = stateno!= [960,965]
triggerall = command = "b" && command = "y" && statetype != A
;
trigger1 = ctrl
;
trigger2 = (var(20) > 0  || power >= 1000)
trigger2 = movecontact && stateno = [200,799]
trigger3 = (var(20) > 0  || power >= 1000)
trigger3 = movecontact && stateno = [100,1999]

;---------------------------------------------------------------------------
;SYSTEM:
; DASH BACK
[State -1, 905 DASH BACK]
type = ChangeState
value = 905
triggerall = command = "BB" && statetype != A
trigger1 = ctrl
;
trigger2=stateno=[960,961]

;---------------------------------------------------------------------------
; ATTACKING DASH FRONT
;[State -1 , 915]
;type = ChangeState
;value = 915
;triggerall = command = "dash" && statetype != A
;trigger1 = movecontact = 0
;trigger1 = stateno = [960,965]
;
;trigger2 = power >= 1000 || var(20) > 0
;trigger2= movecontact && stateno = [963,965]
;
;trigger3 = power >= 1000 || var(20) > 0
;trigger3= movecontact && stateno = [963,965]

;---------------------------------------------------------------------------
; ROLLING
[State -1, 910, rolling]
type = ChangeState
value = 910
triggerall = command = "dash" && statetype != A
trigger1 = command != "holdback" && ctrl
;
trigger2 = (stateno = 150 || stateno = 152) && command != "holdback"
trigger2 = power >= 1000

;37.) guard attack of capcom is z+c
;---------------------------------------------------------------------------
; GUARD ATTACK
[State -1, 950, GUARD ATTACK]
type = ChangeState
value = 950
trigger1 = var(51) = 0
trigger1 = command = "z" && command = "c" && statetype != A
trigger1 = power >= 1000
trigger1 = stateno = [150,152]

trigger2 = var(51) = 1
trigger2 = command = "y" && command = "b" && statetype != A
trigger2 = power >= 1000
trigger2 = stateno = [150,152]

;---------------------------------------------------------------------------
[State -1 , 970, VAR(20)]
type = ChangeState
value = 970
triggerall = stateno != [960,969]
triggerall = power >= 1000                         ; ##21# add missing 081127
triggerall = statetype != A && command = "power_up"
trigger1 = ctrl

;---------------------------------------------------------------------------
;attack jump
;[State -1 ,920]
;type = ChangeState
;value = 920
;triggerall = command = "shortjump" && statetype != A
;trigger1 = power >= 1000 || var(20) > 0
;trigger1 = movecontact && stateno = [200,799]

;35.) add 925 after 922, small jump. also cmd
;CMD after 920
;---------------------------------------------------------------------------
;attack jump CAPCOM var(51)=0
[State -1 , 925, ATTACK JUMP]
type = ChangeState
value = 925
triggerall = var(51) = 0
triggerall = command = "z" && command = "c" && statetype != A
trigger1=ctrl =1

;33.) change CMD, running
;---------------------------------------------------------------------------
;Run Fwd
[State -1, 100 Run Fwd]
type = ChangeState
value = 100
triggerall=var(51)=1                    ;##21# goove
triggerall = command = "FF"
triggerall = statetype != A
trigger1 = ctrl
;
trigger2=stateno=[960,961]

 ;CMD. b4 905
;Add dash
;---------------------------------------------------------------------------
;DASH FRONT
[State -1, 900, DASH FRONT]
type = ChangeState
value = 900
triggerall=var(51)=0                    ;##21# goove
triggerall = command = "FF"
triggerall = statetype != A
trigger1 = ctrl
;
trigger2=stateno=[960,961]

;21) change Taunt. under running inCMD
;---------------------------------------------------------------------------
;Taunt
[State -1, 195 Taunt]
type = ChangeState
value = 195
triggerall =command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------


;===========================================================================
;---------------------------------------------------------------------------
;FCHK
[State -1,]
type = ChangeState
value = 630
triggerall = var(51) = 1
triggerall = command = "b"
triggerall = command = "holddown" && command = "holdfwd"
triggerall = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;BCLP
[State -1,]
type = ChangeState
value = 640
triggerall = var(51) = 1
triggerall = command = "x"
triggerall = command = "holddown" && command = "holdback"
triggerall = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;BCHP
[State -1,]
type = ChangeState
value = 650
triggerall = var(51) = 1
triggerall = command = "y"
triggerall = command = "holddown" && command = "holdback"
trigger1 = statetype = C
trigger1 = ctrl
;
trigger2 = p2statetype = A && movecontact && stateno = 650 && var(20) > 0 && time >= 16
;
trigger3 = stateno = 540
trigger3 = movecontact && time >= 16
trigger3 = var(20) > 0

;---------------------------------------------------------------------------
;BCLK
[State -1,]
type = ChangeState
value = 650
triggerall = var(51) = 1
triggerall = command = "y"
triggerall = command = "holddown" && command = "holdback"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;FSHP
[State -1, FSHP]
type = ChangeState
value = 510
triggerall = var(51) = 1
triggerall = command = "y" && command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl
;
trigger2 = stateno = 1050 && time >= 65
;
trigger3 = stateno = 580 && movecontact
;---------------------------------------------------------------------------
;FSHK
[State -1, FSHK]
type = ChangeState
value = 530
triggerall = var(51) = 1
triggerall = command = "b" && command = "holdfwd"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;BSLP
[State -1, BSLP]
type = ChangeState
value = 540
triggerall = var(51) = 1
triggerall = command = "x" && command = "holdback"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;BSHP
[State -1, BSHP]
type = ChangeState
value = 550
triggerall = var(51) = 1
triggerall = command = "y" && command = "holdback"  && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;BSLK
[State -1, BSLK]
type = ChangeState
value = 560
triggerall = var(51) = 1
triggerall = command = "a" && command = "holdback" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;BSHK
[State -1, BSHK]
type = ChangeState
value = 570
triggerall = var(51) = 1
triggerall = command = "b" && command = "holdback" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;BSHK
[State -1, 580]
type = ChangeState
value = 580
triggerall = var(51) = 1
triggerall = command = "a" && command = "holdfwd" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 300
triggerall = var(51) = 1
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;
trigger2 = stateno = 320
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 310
triggerall = var(51) = 1
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 320
triggerall = var(51) = 1
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 330
triggerall = var(51) = 1
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Near Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(51) = 1
triggerall = statetype != A && command = "x" && command != "holddown"
triggerall = P2bodydist X <= 30
trigger1 = ctrl
;
trigger2 = stateno = 310
trigger2 = time >= 18
trigger2 = var(20) > 0

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(51) = 1
triggerall = statetype != A && command = "y" && command != "holddown"
triggerall = P2bodydist X <= 30
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Light KICK
[State -1, Stand Light KICK]
type = ChangeState
value = 220
triggerall = var(51) = 1
triggerall = statetype != A && command = "a" && command != "holddown"
triggerall = P2bodydist X <= 30
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Strong KICK
[State -1, Stand Strong KICK]
type = ChangeState
value = 230
triggerall = var(51) = 1
triggerall = statetype != A && command = "b" && command != "holddown"
triggerall = P2bodydist X <= 30
trigger1 = ctrl
;
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 220
;---------------------------------------------------------------------------
;Stand Light Punch FAR
[State -1, Stand Light Punch]
type = ChangeState
value = 240
triggerall = var(51) = 1
triggerall = statetype != A && command = "x" && command != "holddown"
triggerall = P2bodydist X > 30
trigger1 = ctrl
;
trigger2 = stateno = 310
trigger2 = time >= 18
trigger2 = var(20) > 0

;---------------------------------------------------------------------------
;Stand Strong Punch FAR
[State -1, Stand Strong Punch]
type = ChangeState
value = 250
triggerall = var(51) = 1
triggerall = statetype != A && command = "y" && command != "holddown"
triggerall = P2bodydist X > 30
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Light KICK FAR
[State -1, Stand Light KICK]
type = ChangeState
value = 260
triggerall = var(51) = 1
triggerall = statetype != A && command = "a" && command != "holddown"
triggerall = P2bodydist X > 30
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Strong KICK FAR
[State -1, Stand Strong KICK]
type = ChangeState
value = 270
triggerall = var(51) = 1
triggerall = statetype != A && command = "b" && command != "holddown"
triggerall = P2bodydist X > 30
trigger1 = ctrl

;---------------------------------------------------------------------------
;long Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 440
triggerall = var(51) = 1
triggerall = vel X != 0
triggerall = command = "x" && statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;long Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 450
triggerall = var(51) = 1
triggerall = vel X != 0
triggerall = command = "y" && statetype = A
trigger1 = ctrl
;
trigger2 = movecontact && var(20) > 0 && (stateno=400||stateno=420||stateno=440||stateno=460)
;---------------------------------------------------------------------------
;long Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 460
triggerall = var(51) = 1
triggerall = vel X != 0
triggerall = command = "a" && statetype = A
trigger1 = ctrl
;
trigger2 = movecontact && var(20) > 0 && (stateno=400||stateno=440)
;---------------------------------------------------------------------------
;long Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 470
triggerall = var(51) = 1
triggerall = vel X != 0
triggerall = command = "b" && statetype = A
trigger1 = ctrl
;
trigger2 = movecontact && var(20) > 0 && (stateno=400||stateno=420||stateno=440||stateno=460)
;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 400
triggerall = var(51) = 1
triggerall = command = "x" && statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 410
triggerall = var(51) = 1
triggerall = command = "y" && statetype = A
trigger1 = ctrl
;
trigger2 = movecontact && var(20) > 0 && (stateno=400||stateno=420||stateno=440||stateno=460)
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 420
triggerall = var(51) = 1
triggerall = command = "a" && statetype = A
trigger1 = ctrl
;
trigger2 = movecontact && var(20) > 0 && (stateno=400||stateno=440)
;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 430
triggerall = var(51) = 1
triggerall = command = "b" && statetype = A
trigger1 = ctrl
;
trigger2 = movecontact && var(20) > 0 && (stateno=400||stateno=420||stateno=440||stateno=460)

;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 99999
trigger1 = time < 0 && life < 0 && p2life > 50000

;===========================================================================
;---------------------------------------------------------------------------
;BCHP
[State -1, 650]
type = ChangeState
value = 650
triggerall = var(51) = 0
triggerall = command = "z"
triggerall = command = "holddown" && command = "holdback"
trigger1 = statetype = C
trigger1 = ctrl
;
trigger2 = p2statetype = A && movecontact && stateno = 650 && var(20) > 0 && time >= 16
;
trigger3 = stateno = 540
trigger3 = movecontact && time >= 16
trigger3 = var(20) > 0

;---------------------------------------------------------------------------
;FCHK
[State -1, 630]
type = ChangeState
value = 630
triggerall = var(51) = 0
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;BSHP
[State -1, 550]
type = ChangeState
value = 550
triggerall = var(51) = 0
triggerall = command = "z" && command = "holdback" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;BSLK
[State -1, 560]
type = ChangeState
value = 560
triggerall = var(51) = 0
triggerall = command = "b" && command = "holdback" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;BSHK
[State -1, 570]
type = ChangeState
value = 570
triggerall = var(51) = 0
triggerall = command = "c" && command = "holdback" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;BSHK
[State -1, 580]
type = ChangeState
value = 580
triggerall = var(51) = 0
triggerall = command = "a" && command = "holdback" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 300
triggerall = var(51) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;
trigger2 = stateno = 320
trigger2 = movecontact = 1

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 310
triggerall = var(51) = 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 320
triggerall = var(51) = 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 330
triggerall = var(51) = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;BCLP
[State -1,]
type = ChangeState
value = 640
triggerall = var(51) = 0
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;BSLP
[State -1, 540]
type = ChangeState
value = 500
triggerall = var(51) = 0
triggerall = command = "x" && command = "holdback" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl
;---------------------------------------------------------------------------
;BSLP
[State -1, 540]
type = ChangeState
value = 540
triggerall = var(51) = 0
triggerall = command = "y" && command = "holdback" && command != "holddown"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Near Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(51) = 0
triggerall = statetype != A && command = "x" && command != "holddown"
triggerall = P2bodydist X <= 30
trigger1 = ctrl
;
trigger2 = stateno = 310
trigger2 = time >= 18
trigger2 = var(20) > 0

;---------------------------------------------------------------------------
;Stand M Punch
[State -1, FSHP]
type = ChangeState
value = 510
triggerall = var(51) = 0
triggerall = command = "y"
triggerall = statetype != A
trigger1 = ctrl
;
trigger2 = stateno = 1050 && time >= 65
;
trigger3 = stateno = 580 && movecontact
;---------------------------------------------------------------------------
;FSHK
[State -1, 530]
type = ChangeState
value = 530
triggerall = var(51) = 0
triggerall = command = "b"
triggerall = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = var(51) = 0
triggerall = statetype != A && command = "z" && command != "holddown"
triggerall = P2bodydist X <= 30
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Light KICK
[State -1, Stand Light KICK]
type = ChangeState
value = 220
triggerall = var(51) = 0
triggerall = statetype != A && command = "a" && command != "holddown"
triggerall = P2bodydist X <= 30
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Strong KICK
[State -1, Stand Strong KICK]
type = ChangeState
value = 230
triggerall = var(51) = 0
triggerall = statetype != A && command = "c" && command != "holddown"
triggerall = P2bodydist X <= 30
trigger1 = ctrl
;
trigger2 = movecontact && stateno = 200
trigger3 = movecontact && stateno = 220
;---------------------------------------------------------------------------
;Stand Light Punch FAR
[State -1, Stand Light Punch]
type = ChangeState
value = 240
triggerall = var(51) = 0
triggerall = statetype != A && command = "x" && command != "holddown"
triggerall = P2bodydist X > 30
trigger1 = ctrl
;
trigger2 = stateno = 310
trigger2 = time >= 18
trigger2 = var(20) > 0

;---------------------------------------------------------------------------
;Stand Strong Punch FAR
[State -1, Stand Strong Punch]
type = ChangeState
value = 250
triggerall = var(51) = 0
triggerall = statetype != A && command = "z" && command != "holddown"
triggerall = P2bodydist X > 30
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Light KICK FAR
[State -1, Stand Light KICK]
type = ChangeState
value = 260
triggerall = var(51) = 0
triggerall = statetype != A && command = "a" && command != "holddown"
triggerall = P2bodydist X > 30
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Strong KICK FAR
[State -1, Stand Strong KICK]
type = ChangeState
value = 270
triggerall = var(51) = 0
triggerall = statetype != A && command = "c" && command != "holddown"
triggerall = P2bodydist X > 30
trigger1 = ctrl

;---------------------------------------------------------------------------
;long Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 440
triggerall = var(51) = 0
triggerall = vel X != 0
triggerall = command = "x" && statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;long Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 450
triggerall = var(51) = 0
triggerall = vel X != 0
triggerall = command = "z" && statetype = A
trigger1 = ctrl
;
trigger2 = movecontact && var(20) > 0 && (stateno=400||stateno=420||stateno=440||stateno=460)
;---------------------------------------------------------------------------
;long Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 460
triggerall = var(51) = 0
triggerall = vel X != 0
triggerall = command = "a" && statetype = A
trigger1 = ctrl
;
trigger2 = movecontact && var(20) > 0 && (stateno=400||stateno=440)
;---------------------------------------------------------------------------
;long Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 470
triggerall = var(51) = 0
triggerall = vel X != 0
triggerall = command = "c" && statetype = A
trigger1 = ctrl
;
trigger2 = movecontact && var(20) > 0 && (stateno=400||stateno=420||stateno=440||stateno=460)
;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 400
triggerall = var(51) = 0
triggerall = command = "x" && statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 405
triggerall = var(51) = 0
triggerall = vel X = 0
triggerall = command = "y" && statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 425
triggerall = var(51) = 0
triggerall = vel X != 0
triggerall = command = "y" && statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 465
triggerall = var(51) = 0
triggerall = command = "b" && statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 410
triggerall = var(51) = 0
triggerall = command = "z" && statetype = A
trigger1 = ctrl
;
trigger2 = movecontact && var(20) > 0 && (stateno=400||stateno=420||stateno=440||stateno=460)
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 420
triggerall = var(51) = 0
triggerall = command = "a" && statetype = A
trigger1 = ctrl
;
trigger2 = movecontact && var(20) > 0 && (stateno=400||stateno=440)
;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 430
triggerall = var(51) = 0
triggerall = command = "c" && statetype = A
trigger1 = ctrl
;
trigger2 = movecontact && var(20) > 0 && (stateno=400||stateno=420||stateno=440||stateno=460)

;==============================================================================
;---------------------------------------------------------------------------
;pause
;[State -1]
;Type = Helper
;trigger1 = var(25) = 0 || var(26) = 0
;Trigger1 = NumHelper(10001) = 0
;trigger1 = command = "x" && command = "b"
;Name = "Pause"
;ID = 10001
;Pos = 0, -600
;PosType = Back
;StateNo = 10001
;KeyCtrl = 1
;OwnPal = 1

;==========================================================================================
;==========================================================================================
;Auto Guard 一般要放在 state -1 的最上位置
[State -1];這是用來控制人物蹲下擋的
type = ChangeState
triggerall = statetype != A && var(25) = 1 && movetype != H && ctrl = 1 && P2MoveType = A
triggerall = P2BodyDist X <= 200 && P2statetype = S						;距離彼近時
;
trigger1 = PrevStateNo != 151									;而之前又不是擋
trigger2 = PrevStateNo != 152
trigger3 = PrevStateNo != 153
value = 120											;就預備防禦

[State -1];這是用來控制人物蹲下擋的
type = ChangeState
triggerall = statetype != A && var(25) = 1 && movetype != H && ctrl = 1 && P2MoveType = A
triggerall = P2BodyDist X <= 200 && P2statetype = C						;距離彼近時
;
trigger1 = PrevStateNo != 151									;而之前又不是擋
trigger2 = PrevStateNo != 152
trigger3 = PrevStateNo != 153
value = 121											;就蹲下預備防禦
;
;120       Start guarding (stand)
;121       Start guarding (crouch)
;122       Start guarding (air)

;walk AI
[state -1]
type = ChangeState
triggerall = var(25) = 1
triggerall = ctrl = 1 && movetype != H
trigger1 = P2bodyDist X != [60,100]		;通常會在要在目標位置加減 10-20 作為空間
trigger1 = Anim != 5
trigger1 = StateNo = 0
trigger1 = Pos Y = 0				;確保是在地上
value = 20

[state -1]
type = ChangeState
triggerall = var(25) = 1
triggerall = ctrl = 1 && movetype != H
trigger1 = P2bodyDist X = [160,200]		;通常會在要在目標位置加減 10-20 作為空間
trigger1 = Anim != 5
trigger1 = StateNo = 0
trigger1 = Pos Y = 0				;確保是在地上
value = 20
