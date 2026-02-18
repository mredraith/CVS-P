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
command.buffer.time = 1


;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1


;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
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


;-|Release Direction|------------------------------------------------------
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


;-|Release Button|---------------------------------------------------------
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


;-| Super Motions |--------------------------------------------------------
[command]
name = "Chou Kacho Sen"
command = ~D, DF, F, D, DF, x
time = 32

[command]
name = "Chou Kacho Sen"
command = ~D, DF, F, D, DF, ~x
time = 32

[command]
name = "Chou Kacho Sen"
command = ~D, DF, F, D, DF, y
time = 32

[command]
name = "Chou Kacho Sen"
command = ~D, DF, F, D, DF, ~y
time = 32

[command]
name = "Chou Kacho Sen"
command = ~D, DF, F, D, DF, z
time = 32

[command]
name = "Chou Kacho Sen"
command = ~D, DF, F, D, DF, ~z
time = 32

[command]
name = "Explosive Mai"
command = ~D, DF, F, D, DF, a
time = 32

[command]
name = "Explosive Mai"
command = ~D, DF, F, D, DF, ~a
time = 32

[command]
name = "Explosive Mai"
command = ~D, DF, F, D, DF, b
time = 32

[command]
name = "Explosive Mai"
command = ~D, DF, F, D, DF, ~b
time = 32

[command]
name = "Explosive Mai"
command = ~D, DF, F, D, DF, c
time = 32

[command]
name = "Explosive Mai"
command = ~D, DF, F, D, DF, ~c
time = 32

[command]
name = "Crimson FD"
Command = ~D, DB, B, D, DB, x
time = 32

[command]
name = "Crimson FD"
Command = ~D, DB, B, D, DB, ~x
time = 32

[command]
name = "Crimson FD"
Command = ~D, DB, B, D, DB, y
time = 32

[command]
name = "Crimson FD"
Command = ~D, DB, B, D, DB, ~y
time = 32

[command]
name = "Crimson FD"
Command = ~D, DB, B, D, DB, z
time = 32

[command]
name = "Crimson FD"
Command = ~D, DB, B, D, DB, ~z
time = 32

[command]
name = "Chou Kacho Sen MAX"
command = ~D, DF, F, D, DF, x+y
time = 32

[command]
name = "Chou Kacho Sen MAX"
command = ~D, DF, F, D, DF, y+z
time = 32

[command]
name = "Chou Kacho Sen MAX"
command = ~D, DF, F, D, DF, x+z
time = 32

[command]
name = "Crimson FD Max"
command = ~D, DB, B, D, DB, x+y
time = 32

[command]
name = "Crimson FD Max"
command = ~D, DB, B, D, DB, y+z
time = 32

[command]
name = "Crimson FD Max"
command = ~D, DB, B, D, DB, x+z
time = 32

[command]
name = "Chou Deadly Ninja Bees"
command = ~D, DB, B, D, DF, a
time = 32

[command]
name = "Chou Deadly Ninja Bees"
command = ~D, DB, B, D, DF, ~a
time = 32

[command]
name = "Chou Deadly Ninja Bees"
command = ~D, DB, B, D, DF, b
time = 32

[command]
name = "Chou Deadly Ninja Bees"
command = ~D, DB, B, D, DF, ~b
time = 32

[command]
name = "Chou Deadly Ninja Bees"
command = ~D, DB, B, D, DF, c
time = 32

[command]
name = "Chou Deadly Ninja Bees"
command = ~D, DB, B, D, DF, ~c
time = 32

[command]
name = "Chou DNB MAX"
command = ~D, DB, B, D, DF, a+b
time = 32

[command]
name = "Chou DNB MAX"
command = ~D, DB ,B ,D ,DF, a+c
time = 32

[command]
name = "Chou DNB MAX"
command = ~D, DB, B, D, DF, b+c
time = 32

;-| Special Motions |------------------------------------------------------
[command]
name = "Kacho Sen"
command = ~D, DF, F, x
time = 15

[command]
name = "Kacho Sen"
command = ~D, DF, F, ~x
time = 15

[command]
name = "Kacho Sen"
command = ~D, DF, F, y
time = 15

[command]
name = "Kacho Sen"
command = ~D, DF, F, ~y
time = 15

[command]
name = "Kacho Sen"
command = ~D, DF, F, z
time = 15

[command]
name = "Kacho Sen"
command = ~D, DF, F, ~z
time = 15

[command]
name = "Fake Kacho Sen"
command = ~D, DF, F, s
time = 15

[command]
name = "Fake Kacho Sen"
command = ~D, DF, F, ~s
time = 15

[command]
name = "Killer Bees"
command = ~B, DB, D, DF, F, a
time = 32

[command]
name = "Killer Bees"
command = ~B, DB, D, DF, F, ~a
time = 32

[command]
name = "Killer Bees"
command = ~B, DB, D, DF, F, b
time = 32

[command]
name = "Killer Bees"
command = ~B, DB, D, DF, F, ~b
time = 32

[command]
name = "Killer Bees"
command = ~B, DB, D, DF, F, c
time = 32

[command]
name = "Killer Bees"
command = ~B, DB, D, DF, F, ~c
time = 32

[command]
name = "Flame Flip"
command = ~F, D, DF, a
time = 16

[command]
name = "Flame Flip"
command = ~F, D, DF, ~a
time = 16

[command]
name = "Flame Flip"
command = ~F, D, DF, b
time = 16

[command]
name = "Flame Flip"
command = ~F, D, DF, ~b
time = 16

[command]
name = "Flame Flip"
command = ~F, D, DF, c
time = 16

[command]
name = "Flame Flip"
command = ~F, D, DF, ~c
time = 16

[command]
name = "Ryu En Bu" ;Also command for "Flying Squirrel"
command = ~D, DB, B, x
time = 15

[command]
name = "Ryu En Bu" ;Also command for "Flying Squirrel"
command = ~D, DB, B, ~x
time = 15

[command]
name = "Ryu En Bu2" ;Also command for "Flying Squirrel"
command = ~D, DB, B, y
time = 15

[command]
name = "Ryu En Bu2" ;Also command for "Flying Squirrel"
command = ~D, DB, B, ~y
time = 15

[command]
name = "Ryu En Bu3" ;Also command for "Flying Squirrel"
command = ~D, DB, B, z
time = 15

[command]
name = "Ryu En Bu3" ;Also command for "Flying Squirrel"
command = ~D, DB, B, ~z
time = 15

[command]
name = "Saiyo Chidori" 
command = ~D, DB, B, a
time = 15

[command]
name = "Saiyo Chidori" 
command = ~D, DB, B, ~a
time = 15

[command]
name = "Saiyo Chidori2" 
command = ~D, DB, B, b
time = 15

[command]
name = "Saiyo Chidori2" 
command = ~D, DB, B, ~b
time = 15

[command]
name = "Saiyo Chidori3" 
command = ~D, DB, B, c
time = 15

[command]
name = "Saiyo Chidori3" 
command = ~D, DB, B, ~c
time = 15

[command]
name = "Wall Fly"
command = ~$D, $U, x
time = 16

[command]
name = "Wall Fly"
command = ~$D, $U, ~x
time = 16

[command]
name = "Wall Fly2"
command = ~$D, $U, y
time = 16

[command]
name = "Wall Fly2"
command = ~$D, $U, ~y
time = 16

[command]
name = "Wall Fly3"
command = ~$D, $U, z
time = 16

[command]
name = "Wall Fly3"
command = ~$D, $U, ~z
time = 16

[command]
name = "Burning Mai"
command = ~$D, $U, a
time = 16

[command]
name = "Burning Mai"
command = ~$D, $U, ~a
time = 16

[command]
name = "Burning Mai2"
command = ~$D, $U, b
time = 16

[command]
name = "Burning Mai2"
command = ~$D, $U, ~b
time = 16

[command]
name = "Burning Mai3"
command = ~$D, $U, c
time = 16

[command]
name = "Burning Mai3"
command = ~$D, $U, ~c
time = 16

[command]
name = "Hakuro no Mai"
command = ~F, D, DF, x
time = 16

[command]
name = "Hakuro no Mai"
command = ~F, D, DF, ~x
time = 16

[command]
name = "Hakuro no Mai"
command = ~F, D, DF, y
time = 16

[command]
name = "Hakuro no Mai"
command = ~F, D, DF, ~y
time = 16

[command]
name = "Hakuro no Mai"
command = ~F, D, DF, z
time = 16

[command]
name = "Hakuro no Mai"
command = ~F, D, DF, ~z
time = 16

[command]
name = "EX Kacho Sen"
command = ~D, DF, F, x+y
time = 15

[command]
name = "EX Kacho Sen"
command = ~D, DF, F, y+z
time = 15

[command]
name = "EX Kacho Sen"
command = ~D, DF, F, x+z
time = 15

[command]
name = "EX Killer Bees"
command = ~B, DB, D, DF, F, a+b
time = 32

[command]
name = "EX Killer Bees"
command = ~B, DB, D, DF, F, a+c
time = 32

[command]
name = "EX Killer Bees"
command = ~B, DB, D, DF, F, b+c
time = 32

[command]
name = "EX Flame Flip"
command = ~F, D, DF, a+b
time = 16

[command]
name = "EX Flame Flip"
command = ~F, D, DF, a+c
time = 16

[command]
name = "EX Flame Flip"
command = ~F, D, DF, b+c
time = 16

[command]
name = "EX Ryu En Bu" ;Also command for "EX Flying Squirrel"
command = ~D, DB, B, x+y
time = 15

[command]
name = "EX Ryu En Bu" ;Also command for "EX Flying Squirrel"
command = ~D, DB, B, x+z
time = 15

[command]
name = "EX Ryu En Bu" ;Also command for "EX Flying Squirrel"
command = ~D, DB, B, y+z
time = 15

[command]
name = "EX Burning Mai"
command = ~$D, $U, a+b
time = 16

[command]
name = "EX Burning Mai"
command = ~$D, $U, a+c
time = 16

[command]
name = "EX Burning Mai"
command = ~$D, $U, b+c
time = 16

[command]
name = "EX Wall Fly"
command = ~$D, $U, x+y
time = 16

[command]
name = "EX Wall Fly"
command = ~$D, $U, x+z
time = 16

[command]
name = "EX Wall Fly"
command = ~$D, $U, y+z
time = 16

[command]
name = "EX Hakuro no Mai"
command = ~F, D, DF, x+y
time = 16

[command]
name = "EX Hakuro no Mai"
command = ~F, D, DF, x+z
time = 16

[command]
name = "EX Hakuro no Mai"
command = ~F, D, DF, y+z
time = 16

[command]
name = "EX Saiyo Chidori"
command = ~D, DB, B, a+b
time = 15

[command]
name = "EX Saiyo Chidori"
command = ~D, DB, B, a+c
time = 15

[command]
name = "EX Saiyo Chidori"
command = ~D, DB, B, b+c
time = 15

[Command]
name = "412p" ;Zero Counter
command = ~B, DB, D, x
time = 16

[Command]
name = "412p" ;Zero Counter
command = ~B, DB, D, y
time = 16

[Command]
name = "412p" ;Zero Counter
command = ~B, DB, D, z
time = 16

[Command]
name = "412p" ;Zero Counter
command = ~B, DB, D, ~x
time = 16

[Command]
name = "412p" ;Zero Counter
command = ~B, DB, D, ~y
time = 16

[Command]
name = "412p" ;Zero Counter
command = ~B, DB, D, ~z
time = 16


[Command]
name = "412k" ;Zero Counter
command = ~B, DB, D, a
time = 16

[Command]
name = "412k" ;Zero Counter
command = ~B, DB, D, b
time = 16

[Command]
name=  "412k" ;Zero Counter
command = ~B, DB, D, c
time = 16

[Command]
name = "412k" ;Zero Counter
command = ~B, DB, D, ~a
time = 16

[Command]
name = "412k" ;Zero Counter
command = ~B, DB, D, ~b
time = 16

[Command]
name = "412k" ;Zero Counter
command = ~B, DB, D, ~c
time = 16


;-|Other|------------------------------------------------------------------
[Command]
name = "highjump"
command = $D, $U
time = 15


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
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+x
time = 1

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


;---------------------------------------------------------------------------
[Statedef -1]

[State -1, Tick Fix]
type = CtrlSet
triggerall = !ctrl
trigger1 = (StateNo = 52 || StateNo = 101 || StateNo = 5120) && !AnimTime
trigger2 = (StateNo = [200,499]) && !AnimTime
trigger3 = (StateNo = [760,762]) && !AnimTime
trigger4 = StateNo = 810 && !AnimTime
trigger5 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
trigger6 = (StateNo = [700,715]) && !AnimTime
value = 1

[State -1, CtrlSet For Helpers];special thanks to 20S
type = CtrlSet
trigger1 = IsHelper
value = 0

[State -1, Hit Count For Helpers];special thanks to 20S
type = ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime 
trigger1 = !(HitDefAttr = SCA, AT)
var(13) = 1

[State -1, Juggle Count For Helpers];special thanks to 20S
type = ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime 
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State -1, ProjContact];special thanks to 20S
type = VarSet
trigger1 = IsHelper
trigger1 = MoveContact = 1 && NumTarget
var(18) = 1

[State -1, Root ProjContact];special thanks to 20S
type = ParentVarSet
trigger1 = IsHelper
trigger1 = MoveContact = 1 && NumTarget
var(18) = 1

[State -1, Chou DNB MAX]
type = ChangeState
value = 3400
triggerall = !AILevel
triggerall = command = "Chou DNB MAX"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 3000, power >= 1000)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Crimson FD Max]
type = ChangeState
value = 3250
triggerall = !AILevel
triggerall = command = "Crimson FD Max"
triggerall = RoundState = 2 && StateType = A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
triggerall = var(3)!=[1,2]
trigger1 = ctrl && pos y <= -30
trigger2 = var(6)

[State -1, Hana Arashi]
type = ChangeState
value = 3500
triggerall = !AILevel
triggerall = command = "Crimson FD Max"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6) || var(7)

[State -1, Chou Kacho Max]
type = ChangeState
value = 3050
triggerall = !AILevel
triggerall = command = "Chou Kacho Sen MAX" ;&& !numhelper(3011)
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(6) || var(7)
trigger1 = NumHelper(3011) <= 0
trigger2 = NumHelper(3011) <= 2
trigger2 = Helper(3011),StateNo = [1062,1063]

[State -1, Chou Deadly Ninja Bees]
type = ChangeState
value = 3300
triggerall = !AILevel
triggerall = command = "Chou Deadly Ninja Bees"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Crimson Firebird Diver]
type = ChangeState
value = 3200
triggerall = !AILevel
triggerall = command = "Crimson FD"
triggerall = RoundState = 2 && StateType = A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
triggerall = var(3)!=[1,2]
trigger1 = ctrl && pos y <= -30
trigger2 = var(6)

[State -1, Explosive Mai]
type = ChangeState
value = 3100
triggerall = !AILevel
triggerall = command = "Explosive Mai" && !numhelper(3105)
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Chou Kacho Sen]
type = ChangeState
value = 3000
triggerall = !AILevel
triggerall = command = "Chou Kacho Sen" ;&& !numhelper(3010)
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(6)
trigger1 = NumHelper(3010) <= 0
trigger2 = NumHelper(3010) <= 2
trigger2 = Helper(3010),StateNo = [1062,1063]

[State -1, EX Killer Bees]
type = ChangeState
value = 1700
triggerall = !AILevel
triggerall = command = "EX Killer Bees"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, EX Hakuro No Mai]
type = ChangeState
value = 2350
triggerall = !AILevel
triggerall = command = "EX Hakuro no Mai"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, EX Flame Flip]
type = ChangeState
value = 1800
triggerall = !AILevel
triggerall = command = "EX Flame Flip"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, EX Burning Mai]
type = ChangeState
value = 2000
triggerall = !AILevel
triggerall = command = "EX Burning Mai" && var(51) > 16
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, EX Wall Fly]
type = ChangeState
value = 2100
triggerall = !AILevel
triggerall = command = "EX Wall Fly" && var(51) > 16
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52
trigger2 = var(5)

[State -1, EX Ryu En Bu]
type = ChangeState
value = 1900
triggerall = !AILevel
triggerall = command = "EX Ryu En Bu"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, EX Flying Squirrel]
type = ChangeState
value = 2200
triggerall = !AILevel
triggerall = command = "EX Ryu En Bu"
triggerall = RoundState = 2 && StateType = A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
triggerall = var(3)!=[1,2]
trigger1 = ctrl && pos y <= -30
trigger2 = var(5)

[State -1, EX Saiyo Chidori]
type = ChangeState
value = 2450
triggerall = !AILevel
triggerall = command = "EX Saiyo Chidori"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, EX Kacho Sen]
type = ChangeState
value = 1600
triggerall = !AILevel
triggerall = command = "EX Kacho Sen"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(5)
trigger1 = NumHelper(1010) <= 0
trigger2 = NumHelper(1010) <= 2
trigger2 = Helper(1010),StateNo = [1015,1016]

[State -1, Killer Bees]
type = ChangeState
value = 1100
triggerall = !AILevel
triggerall = command = "Killer Bees"
triggerall = RoundState = 2 && StateType != A
trigger1= ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101])
trigger2 = var(5) || var(24)

[State -1, Hakuro No Mai]
type = ChangeState
value = 2300
triggerall = !AILevel
triggerall = command = "Hakuro no Mai"
triggerall = RoundState = 2 && StateType != A
trigger1= ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101])
trigger2 = var(5) || var(24)

[State -1, Flame Flip]
type = ChangeState
value = 1200
triggerall = !AILevel
triggerall = command = "Flame Flip"
triggerall = RoundState = 2 && StateType != A
trigger1= ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101])
trigger2 = var(5) || var(24)

[State -1, Burning Mai]
type = ChangeState
value = 1400
triggerall = !AILevel
triggerall = command = "Burning Mai" && var(51) > 16
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5) || var(24)

[State -1, Burning Mai2]
type = ChangeState
value = 1410
triggerall = !AILevel
triggerall = command = "Burning Mai2" && var(51) > 16
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5) || var(24)

[State -1, Burning Mai3]
type = ChangeState
value = 1420
triggerall = !AILevel
triggerall = command = "Burning Mai3" && var(51) > 16
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5) || var(24)

[State -1, Wall Flying Squirrel]
type = ChangeState
value = 1500
triggerall = !AILevel
triggerall = command = "Wall Fly" && var(51) > 16
triggerall = RoundState = 2 && StateType != A
trigger1= ctrl || StateNo = 40 || StateNo = 52
trigger2 = var(5) || var(24)

[State -1, Wall Flying Squirrel2]
type = ChangeState
value = 1510
triggerall = !AILevel
triggerall = command = "Wall Fly2" && var(51) > 16
triggerall = RoundState = 2 && StateType != A
trigger1= ctrl || StateNo = 40 || StateNo = 52
trigger2 = var(5) || var(24)

[State -1, Wall Flying Squirrel3]
type = ChangeState
value = 1520
triggerall = !AILevel
triggerall = command = "Wall Fly3" && var(51) > 16
triggerall = RoundState = 2 && StateType != A
trigger1= ctrl || StateNo = 40 || StateNo = 52
trigger2 = var(5) || var(24)

[State -1, Zero Counter]
type = ChangeState
value = 750
triggerall = !AILevel
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = command = "412p" || command = "412k"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Ryu En Bu]
type = ChangeState
value = 1300
triggerall = !AILevel
triggerall = command = "Ryu En Bu"
triggerall = RoundState = 2 && StateType != A
trigger1= ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101])
trigger2 = var(5) || var(24)

[State -1, Ryu En Bu2]
type = ChangeState
value = 1301
triggerall = !AILevel
triggerall = command = "Ryu En Bu2"
triggerall = RoundState = 2 && StateType != A
trigger1= ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101])
trigger2 = var(5) || var(24)

[State -1, Ryu En Bu3]
type = ChangeState
value = 1302
triggerall = !AILevel
triggerall = command = "Ryu En Bu3"
triggerall = RoundState = 2 && StateType != A
trigger1= ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101])
trigger2 = var(5) || var(24)

[State -1, Flying Squirrel]
type = ChangeState
value = 1550
triggerall = !AILevel
triggerall = command = "Ryu En Bu"
triggerall = RoundState = 2 && StateType = A
triggerall = var(3)!=[1,2]
trigger1= ctrl && pos y <= -30
trigger2 = var(5) || var(24)

[State -1, Flying Squirrel2]
type = ChangeState
value = 1560
triggerall = !AILevel
triggerall = command = "Ryu En Bu2"
triggerall = RoundState = 2 && StateType = A
triggerall = var(3)!=[1,2]
trigger1= ctrl && pos y <= -30
trigger2 = var(5) || var(24)

[State -1, Flying Squirrel3]
type = ChangeState
value = 1570
triggerall = !AILevel
triggerall = command = "Ryu En Bu3"
triggerall = RoundState = 2 && StateType = A
triggerall = var(3)!=[1,2]
trigger1= ctrl && pos y <= -30
trigger2 = var(5) || var(24)

[State -1, Saiyo Chidori]
type = ChangeState
value = 2400
triggerall = !AILevel
triggerall = command = "Saiyo Chidori"
triggerall = RoundState = 2 && StateType != A
trigger1= ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101])
trigger2 = var(5) || var(24)

[State -1, Saiyo Chidori2]
type = ChangeState
value = 2401
triggerall = !AILevel
triggerall = command = "Saiyo Chidori2"
triggerall = RoundState = 2 && StateType != A
trigger1= ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101])
trigger2 = var(5) || var(24)

[State -1, Saiyo Chidori3]
type = ChangeState
value = 2402
triggerall = !AILevel
triggerall = command = "Saiyo Chidori3"
triggerall = RoundState = 2 && StateType != A
trigger1= ctrl || StateNo = 40 || StateNo = 52 ||(stateno=[100,101])
trigger2 = var(5) || var(24)

[State -1, Kacho Sen]
type = ChangeState
value = 1000
triggerall = !AILevel
triggerall = command = "Kacho Sen"
triggerall = RoundState = 2 && StateType != A
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(5) || var(24)
trigger1 = NumHelper(1010) <= 0
trigger2 = NumHelper(1010) <= 2
trigger2 = Helper(1010),StateNo = [1015,1016]

[State -1, Fake Kacho Sen]
type = ChangeState
value = 196
triggerall = !AILevel
triggerall = command = "Fake Kacho Sen"
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Throw]
type = ChangeState
value = 800
triggerall = !AILevel
trigger1 = (command = "holdfwd" || command = "holdback") && (command = "pp" || command = "kk")
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Air Throw]
type = ChangeState
value = 900
triggerall = !AILevel
trigger1 = (command = "holdfwd" || command = "holdback") && (command = "pp" || command = "kk")
trigger1 = RoundState = 2 && StateType = A
trigger1 = ctrl && pos y <= -30
trigger1 = statetype != S

[State -1, Roll Forward]
type = ChangeState
value = 710
triggerall = !AILevel
triggerall = command = "a+x"
triggerall = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdfwd"

[State -1, Roll Back]
type = ChangeState
value = 715
triggerall = !AILevel
triggerall = command = "a+x"
triggerall = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdback"

;Dodge
[State -1, Dodge]
type = ChangeState
value = 700
triggerall = !AILevel
triggerall = command = "a+x"
triggerall = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))

[State -1, Power Charge]
type = ChangeState
value = 730
triggerall = !AILevel
trigger1 = command = "hold_b" && command = "hold_y"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20)
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Custom Combo]
type = ChangeState
value = ifElse(StateType = A, 905, 900)
triggerall = !AILevel
trigger1 = command = "c+z"
trigger1 = RoundState = 2
trigger1 = power >= 1000 && !var(20)
trigger1 = ctrl || StateNo = 52 || (StateNo = [100,101])
trigger1 = !var(41)

[State -1, Yusura Ume]
type = ChangeState
value = 641
triggerall = !AILevel
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = var(3)!=[1,2]
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Ukihane]
type = ChangeState
value = 631
triggerall = !AILevel
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = var(3)!=[1,2]
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Dairin Fuusha Otoshi]
type = ChangeState
value = 621
triggerall = !AILevel
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Fierce Blossom]
type = Changestate
value = 251
triggerall = !AILevel
triggerall = command = "c" && command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])

[State -1, Fierce Blossom(Linked)]
type = Changestate
value = 253
triggerall = !AILevel
triggerall = command = "c" && command = "holdfwd"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])
trigger2 = var(4)

[State -1, Dancing of Tensui]
type = Changestate
value = 241
triggerall = !AILevel
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])

[State -1, Benitsuru no Mai]
type = Changestate
value = 232
triggerall = !AILevel
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])

[State -1, Benitsuru no Mai(Linked)]
type = Changestate
value = 234
triggerall = !AILevel
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])
trigger2 = var(4)

; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !AILevel
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = !AILevel
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Wall Jump Forward]
type = ChangeState
value = 60
triggerall = !AILevel
triggerall = StateNo != 60 && PrevStateNo != 60
trigger1 = command = "holdup" && command = "holdfwd"
trigger1 = RoundState = 2 && StateType = A
trigger1 = ctrl && pos y <= -30 && BackEdgeBodyDist <= 0

[State -1, Wall Jump Backwards]
type = ChangeState
value = 61
triggerall = !AILevel
triggerall = StateNo != 61 && PrevStateNo != 61
trigger1 = command = "holdup" && command = "holdback"
trigger1 = RoundState = 2 && StateType = A
trigger1 = ctrl && pos y <= -30 && FrontEdgeBodyDist <= 0

;---------------------------------------------------------------------------
; Stand Light Punch far/close
[State -1, Stand Light Punch]
type = ChangeState
value = 200 + (Abs(P2BodyDist X) <= 20) * 1
triggerall = !AILevel
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = StateType != A
trigger1= ctrl || (stateno=[100,101])
trigger2 = var(24)

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = !AILevel
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1= ctrl || (stateno=[100,101])
trigger2 = var(24)

;---------------------------------------------------------------------------
; Stand Strong Punch far/close
[State -1, Stand Strong Punch]
type = ChangeState
value = 220 + (Abs(P2BodyDist X) <= 22) * 1
triggerall = !AILevel
triggerall = command != "holddown" && command = "z"
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(24)

;---------------------------------------------------------------------------
; Stand Light Kick far/close
[State -1, Stand Light Kick]
type = ChangeState
value = 230 + (Abs(P2BodyDist X) <= 20) * 1
triggerall = !AILevel
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = StateType != A
trigger1= ctrl || (stateno=[100,101])
trigger2 = var(24)

;---------------------------------------------------------------------------
; Standing Medium Kick far/close
[State -1, Standing Medium Kick]
type = ChangeState
value = 240 + (Abs(P2BodyDist X) <= 13) * 2
triggerall = !AILevel
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = StateType != A
trigger1= ctrl || (stateno=[100,101])
trigger2 = var(24)

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = !AILevel
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1= ctrl || (stateno=[100,101])
trigger2 = var(24)

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = !AILevel
triggerAll = command = "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(24)

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = !AILevel
triggerAll = command = "holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(24)

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = !AILevel
triggerAll = command = "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(24)

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = !AILevel
triggerAll = command = "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(24)

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = !AILevel
triggerAll = command = "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(24)

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = !AILevel
triggerAll = command = "holddown" && command = "c"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(24)

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !AILevel
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(24)

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = !AILevel
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(24)

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = !AILevel
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(24)

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !AILevel
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(24)

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = !AILevel
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(24)

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = !AILevel
triggerall = (command = "c") && (Vel X != 0)
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(24)

[State -1, Jump Strong Kick No Vel]
type = ChangeState
value = 651
triggerall = !AILevel
triggerall = (command = "c") && (Vel X = 0)
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(24)

; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = !AILevel
triggerall = command = "s"
triggerall = StateType != A
triggerall = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(5)

;======================================
;AI
;======================================
[State -1, Chou DNB MAX]
type = ChangeState
value = 3400
triggerall=AILevel && RoundState=2 && Numenemy && StateType != A && var(20)<=0 && power >= 3000 && (enemynear,hitdefattr!=SCA,HA,AP,AT||enemynear,Movetype=H)
triggerall=(p2bodydist x=[25,220]) && (p2bodydist y = [ -70, 5]) && random < (400 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,stateno!=[120,155]) && (enemynear,stateno!=[5100,5220]) && enemynear,statetype!=L  && enemynear,movetype!=A
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(6) && movehit

[State -1, Crimson FD Max]
type = ChangeState
value = 3250
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A && var(9) != 2 && pos y >= -50 && prevstateno != 3300
triggerall = power >= 2000 && var(20) <= 60
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
trigger1 = (p2bodydist x = [ -30, 60]) && p2dist y >= -15 && (enemynear, vel y < 6) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, Hana Arashi]
type = ChangeState
value = 3500
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [0,250])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = MoveHit && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger2 = var(6) || var(7)

[State -1, Chou Kacho Max]
type = ChangeState
value = 3050
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerall = (P2BodyDist x = [0,250]) && (P2Dist y = [-120,0]) && (EnemyNear, StateType != L) && (EnemyNear, vel y >= 0)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (10 * (AILevel ** 2 / 64.0))
trigger2 = MoveHit && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4
trigger2 = var(6) || var(7)

[State -1, Chou Deadly Ninja Bees]
type = ChangeState
value = 3300
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000, 4999]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [0,250])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Explosive Mai]
type = ChangeState
value = 3100
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 3 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (EnemyNear, MoveType != A) || (EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-46,46]) && (P2Dist y = [-69,0])
triggerAll = (EnemyNear, vel x = [-5,5]) && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = MoveHit && (EnemyNear, HitFall)
trigger2 = Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 3
trigger2 = var(6)

[State -1, Chou Kacho Sen]
type = ChangeState
value = 3000
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerall = (P2BodyDist x = [0,150]) && (P2Dist y = [-80,0]) && (EnemyNear, StateType != L) && (EnemyNear, vel y >= 0)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (10 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveHit && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Killer Bees]
type = ChangeState
value=Ifelse((power >= 500 && random < 100), 1700, 1100)
triggerall=AILevel && RoundState=2 && Numenemy && StateType != A && (var(15) < 4 || var(20))
triggerall=(p2bodydist x= [35,160]) && (p2bodydist y = [ -70, 5]) && (enemynear,vel x>0 && enemynear,hitdefattr!=SCA,HA,AP,AT||enemynear,Movetype=H)
triggerall=(enemynear,stateno!=[120,155]) && (enemynear,stateno!=[5100,5220]) && enemynear,statetype!=L && enemynear,statetype!=A 
trigger1=(ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])) && random < (120* (AIlevel ** 2 / 64.0))
trigger2=(stateno=[200,440]) && movehit && random<50
trigger2 = var(5) || var(24)

[State -1, Hakuro No Mai]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100, 2350, 2300)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = (EnemyNear, MoveType != A) || (EnemyNear, StateNo = [200, 499])
triggerAll = (P2BodyDist x = [-8,165]) && P2StateType != A && (P2StateType != L || P2StateNo = 5120)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger1 = P2BodyDist x >= 15 && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = (EnemyNear, StateNo = 5120 || EnemyNear, StateNo = 5201) && (EnemyNear, AnimTime = -18) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = var(5) && MoveHit && Random < (100 * (AILevel ** 2 / 64.0))
trigger3 = EnemyNear, GetHitVar(HitTime) >= 6

[State -1, Flame Flip]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133, 1800, 1200)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType != L && (P2Dist y = [-80,32])
triggerAll = ((P2BodyDist x = [-18,18]) && P2StateType != A) || ((P2BodyDist x = [-140,140]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = var(5) && MoveHit && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 3
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Burning Mai]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133, 2000, Ifelse(Random = 250, 1420, ifelse(Random = 500, 1410, 1400)))
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2BodyDist x <= 25 && P2Dist y >= -120 && EnemyNear, vel y >= 0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 3 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (50 * (AILevel ** 3 / 64.0))
trigger2 = var(5) || var(24)

[State -1, Zero Counter]
type = ChangeState
value = 750
trigger1 = AILevel && NumEnemy
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power >= 1000 && var(20) <= 60
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))
trigger1 = (P2BodyDist x = [0,50]) && (Life < 0.5 * LifeMax)

[State -1, Ryu En Bu]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133, 1900, Ifelse(Random = 250, 1320, ifelse(Random = 500, 1310, 1300)))
triggerall=AILevel && numenemy && RoundState=2 && StateType != A &&var(20)<=60&& random < (150 * (AIlevel ** 2 / 64.0))
triggerall = (enemynear,stateno !=[5100,5250])&&(enemynear,stateno !=[120,150])&&(p2dist x =[5,45])&&(p2dist y=[-80,5])
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
trigger3=(stateno=[200,440])&&movehit&&random<200

[State -1, Flying Squirrel]
type = ChangeState
value = ifElse(Power >= 500 && Random < 133, 2200, Ifelse(Random = 250, 1560, ifelse(Random = 500, 1560, 1550)))
triggerall=AILevel && RoundState=2 && Numenemy && StateType = A && !var(11) && (var(3) != [1, 2]) && pos y<=-30
triggerall=(p2bodydist x= [2,100]) && (p2bodydist y = [ -50,205]) 
triggerall=(enemynear,stateno!=[5100,5220]) && enemynear,statetype!=L
trigger1=ctrl && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Kacho Sen]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100 && var(20) <= 60, 1600, 1000)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2BodyDist x >= 45 && P2Dist y >= -80 && EnemyNear, vel y >= 0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != H
triggerAll = (P2BodyDist x = [-20,24]) && P2BodyDist y = 0
trigger1 = ctrl && Random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (P2StateNo = [120,140]) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Air Throw]
type = ChangeState
value = 900
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType = A
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = ctrl && pos y <= -32
trigger1 = P2StateType = A && Random < (200 * (AILevel ** 2 / 64.0))
trigger1 = (P2Dist x = [-20,4]) && (P2Dist y = [-118,48])

[State -1, Roll Forward]
type = ChangeState
value = 710
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Random < (50 * (AILevel ** 2 / 64.0))
trigger1 = (ctrl || (StateNo = [100,101])) && var(20) <= 164 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [92,122])

;Dodge
[State -1, Dodge]
type = ChangeState
value = 700
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = (ctrl || (StateNo = [100,101])) && var(20) <= 164 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [0,60])

[State -1, Power Charge]
type = ChangeState
value = 730
triggerAll = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power < const(data.power) && !var(20)
trigger1 = ctrl && Power < const(data.power) && Power < PowerMax && !var(20)
trigger1 = !InGuardDist && P2BodyDist x >= 160 && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Custom Combo]
type = ChangeState
value = ifElse(StateType = A, 905, 900)
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && (StateType != A || (vel x > 0 && vel y >= 0))
trigger1 = Power >= 1000 && !var(20)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101]))
trigger1 = (EnemyNear, MoveType = A) && (P2BodyDist x = [0,40]) && (P2Dist y = [-60,60]) && (EnemyNear, vel y >= 0)
trigger1 = (EnemyNear, StateNo = [200,699]) && Random < (50 * (AILevel ** 2 / 64.0))

; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl && (StateNo != [100,106])
trigger1 = (EnemyNear, MoveType != A) && P2BodyDist x >= 160 && Random < (25 * (AILevel ** 2 / 64.0))

; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = ctrl && (StateNo != [100,106]) && var(20) <= 150 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && BackEdgeDist >= 80 && (P2BodyDist x = [80,120]) && (EnemyNear, vel x)
trigger1 = Random < (ifElse((EnemyNear, HitDefAttr = SC, AT), 150, 50) * (AILevel ** 2 / 64.0))
trigger2 = (P2BodyDist x = [0,80]) && BackEdgeBodyDist >= 80
trigger2 = EnemyNear, StateNo = 5120 && EnemyNear, AnimTime = -4 && Random < (750 * (AILevel ** 2 / 64.0))

;---------------------------------------------------------------------------
; Stand Light Punch far/close
[State -1, Stand Light Punch]
type = ChangeState
value = 200 + (Abs(P2BodyDist X) <= 20) * 1
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,45]) && (P2Dist y = [-79,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = var(24) && Random < (50 * (AILevel ** 2 / 64.0))

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,78]) && (P2Dist y = [-93,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = var(24) && Random < (50 * (AILevel ** 2 / 64.0))

;---------------------------------------------------------------------------
; Stand Strong Punch far/close
[State -1, Stand Strong Punch]
type = ChangeState
value = 220 + (Abs(P2BodyDist X) <= 22) * 1
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,94]) && (P2Dist y = [-70,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = var(24) && Random < (50 * (AILevel ** 2 / 64.0))

;---------------------------------------------------------------------------
; Stand Light Kick far/close
[State -1, Stand Light Kick]
type = ChangeState
value = 230 + (Abs(P2BodyDist X) <= 20) * 1
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,49]) && (P2Dist y = [-67,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = var(24) && Random < (50 * (AILevel ** 2 / 64.0))

;---------------------------------------------------------------------------
; Standing Medium Kick far/close
[State -1, Standing Medium Kick]
type = ChangeState
value = 240 + (Abs(P2BodyDist X) <= 13) * 2
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,71]) && (P2Dist y = [-96,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = var(24) && Random < (50 * (AILevel ** 2 / 64.0))

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,61]) && (P2Dist y = [-81,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 4) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = var(24) && Random < (50 * (AILevel ** 2 / 64.0))

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,49]) && (P2Dist y = [-41,0]) && P2StateType != A && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = var(24) && Random < (50 * (AILevel ** 2 / 64.0))

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,51]) && (P2Dist y = [-11,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = var(24) && Random < (50 * (AILevel ** 2 / 64.0))
;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && Statetype != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,64]) && (P2Dist y = [-35,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 4) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = var(24) && Random < (50 * (AILevel ** 2 / 64.0))

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,64]) && (P2Dist y = [-7,0]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100, 101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = var(24) && Random < (50 * (AILevel ** 2 / 64.0))

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,73]) && (P2Dist y = [-9,0]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = var(24) && Random < (50 * (AILevel ** 2 / 64.0))

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,79]) && (P2Dist y = [-59,0]) && P2StateType != A && P2StateType != L
triggerAll = (P2StateType = S || (P2StateType = C && P2MoveType = H))
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 6) && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = var(24) && Random < (50 * (AILevel ** 2 / 64.0))

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,36]) && (P2Dist y = [-53,28]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(24) && Random < (50 * (AILevel ** 2 / 64.0))

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,37]) && (P2Dist y = [-66,45]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(24) && Random < (50 * (AILevel ** 2 / 64.0))

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,47]) && (P2Dist y = [-78,59]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(24) && Random < (50 * (AILevel ** 2 / 64.0))

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,20]) && (P2Dist y = [-130,40]) && P2StateType != L
trigger1 = ctrl && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = var(24) && Random < (50 * (AILevel ** 2 / 64.0))

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,55]) && (P2Dist y = [-116,-55]) && P2StateType = S
trigger1 = ctrl && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(24) && Random < (50 * (AILevel ** 2 / 64.0))

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = ifElse(vel x > 0, 651, 650)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,55]) && (P2Dist y = [-116,-55]) && P2StateType = S
trigger1 = ctrl && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(24) && Random < (50 * (AILevel ** 2 / 64.0))

; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerAll = AILevel && NumEnemy
triggerAll = StateType != A && Life >= 0.5 * LifeMax
triggerAll = (EnemyNear, Life) <= 0.5 * (EnemyNear, LifeMax)
trigger1 = ctrl
trigger1 = P2Dist x >= 160 && !(EnemyNear, ctrl)
trigger1 = (EnemyNear, MoveType = H) && (EnemyNear, HitFall) && Random < (50 * (AILevel ** 2 / 64.0))
