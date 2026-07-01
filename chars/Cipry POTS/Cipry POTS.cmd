; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below. 
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
;
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10


;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
[command]
name = "TTSMKSNP4"
command = ~D,DB,B,b+c
time = 15

command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
[command]
name = "EX Molde giro"
command = ~D,DB,B,a+c
time = 15

command.buffer.time = 1

;-| Negative Edge H.Motions |----------------------------------------------
[command]
name = "EX Molde Giro"
command = ~D,DB,B,a+c
time = 15

-;| CPU Activation Commands |-----------------------

[command]
name = "AI1"
command = B,D,a+c,z,c+b,s
time = 1
[command]
name = "AI2"
command = B,F,c+b,z,c+z,x,s
time = 1
[command]
name = "AI3"
command = B,U,a+b,y,c+y,s,z,D
time = 1
[command]
name = "AI4"
command = B,B,a+y,c,z+x,s
time = 1
[command]
name = "AI5"
command = B,B,a+b,z,c+b,s
time = 1
[command]
name = "AI6"
command = D,B,z+b,z,c+x,s
time = 1
[command]
name = "AI7"
command = B,U,a+b,z,c+x,s
time = 1
[command]
name = "AI8"
command = B,F,a+b,c,c+x,s
time = 1
[Command]
name = "AI9"
command = U,D,F,F,B,B,s
time = 1
[Command]
name = "AI10"
command = U,D,F,F,B,F,s
time = 1
[Command]
name = "AI11"
command = U,D,F,F,B,D,s
time = 1
[Command]
name = "AI12"
command = U,D,F,F,B,U,s
time = 1
[Command]
name = "AI13"
command = U,D,F,F,U,B,s
time = 1
[Command]
name = "AI14"
command = U,D,F,F,D,B,s
time = 1
[Command]
name = "AI15"
command = U,D,F,F,F,B,s
time = 1
[Command]
name = "AI16"
command = U,D,U,F,B,B,s
time = 1
[Command]
name = "AI17"
command = U,D,D,F,B,B,s
time = 1
[Command]
name = "AI18"
command = D,D,F,F,B,B,s
time = 1
[Command]
name = "AI19"
command = U,U,F,F,B,B,s
time = 1
[Command]
name = "AI20"
command = U,B,F,F,B,B,s
time = 1
[Command]
name = "AI21"
command = UB, U, F, a+b,s
time = 1
[Command]
name = "AI22"
command = UB, U, F, b+c,s
time = 1
[Command]
name = "AI23"
command = UB, U, F, a+c,s
time = 1
[Command]
name = "AI24"
command = UF, U, B, x+y,s
time = 1
[Command]
name = "AI25"
command = UF, U, B, y+z,s
time = 1
[Command]
name = "AI26"
command = UF, U, B, x+z,s
time = 1
[Command]
name = "AI27"
command = UB, U, F, x+y,s
time = 1
[Command]
name = "AI28"
command = UB, U, F, y+z,s
time = 1
[Command]
name = "AI29"
command = UB, U, F, x+z,s
time = 1
[Command]
name = "AI30"
command = UF, U, B, a+b,s
time = 1
[Command]
name = "AI31"
command = UF, U, B, b+c,s
time = 1
[Command]
name = "AI32"
command = UF, U, B, a+c,s
time = 1
[Command]
name = "AI33"
command = UF, DB, UB,DF ,x,s
time = 1
[Command]
name = "AI34"
command = UF, DB, UB,DF ,y,s
time = 1
[Command]
name = "AI35"
command = UF, DB, UB,DF , z,s
time = 1

[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, ~x
time = 20


[Command]
name = "KFDrillPalm"
command = ~D, DF, F, D, DF, F, ~z
time = 20




[Command]
name = "DragonSmash"
command = ~D, DF, F, D, DF, F, ~a
time = 20

[Command]
name = "DragonSmash"   ;Same name as above
command = ~D, DF, F, D, DF, F, ~b
time = 20

[Command]
name = "SmashKFUpper"   ;Same name as above
command = ~D, DB, B, D, DB, B, ~c
time = 20

[Command]
name = "KneeKick"
command = ~D, DB, B, D, DB, B, ~a
time = 20


[Command]
name = "HCFx2_p"
command = ~B, DB, D, DF, F, B, DB, D, DF, F, ~x
time = 30

[Command]
name = "HCFx2_p"
command = ~B, DB, D, DF, F, B, DB, D, DF, F, ~y
time = 30

[Command]
name = "HCFx2_p"
command = ~B, DB, D, DF, F, B, DB, D, DF, F, ~z
time = 30

[Command]
name = "BeatDown"
command = x, x, F, a, z
time = 30

[Command]
name = "Combo"
command = ~D, DF, F, D, DF, F, y+b
time = 30

;-| Negative Edge S.Motions |----------------------------------------------
[Command]
name = "upper_x"
command = ~F, D, DF, ~x

[Command]
name = "upper_y"
command = ~F, D, DF, ~y

[Command]
name = "upper_z"
command = ~F, D, DF, ~z

[Command]
name = "fdkick_a"
command = ~F, D, DF, ~a

[Command]
name = "fdkick_b"
command = ~F, D, DF, ~b

[Command]
name = "fdkick_c"
command = ~F, D, DF, ~c

[Command]
name = "HCF_x"
command = ~B, DB, D, DF, F, ~x
time = 20


[Command]
name = "HCB_y"
command = ~D, DF, F, b+c
time = 20

[Command]
name = "HCB_z"
command = ~D, DF, F, ~c
time = 20

[Command]
name = "QCF_x"
command = ~D, DF, F, ~x

[Command]
name = "QCF_y"
command = ~D, DF, F, ~y

[Command]
name = "QCF_z"
command = ~D, DF, F, ~z

[Command]
name = "QCF_k"
command = ~D, DF, F, ~a


[Command]
name = "QCF_s"
command = ~D, DF, F, ~b

[Command]
name = "QCB_x"
command = ~D, DB, B, ~x

[Command]
name = "QCB_y"
command = ~D, DB, B, ~y

[Command]
name = "QCB_z"
command = ~D, DB, B, ~z

[Command]
name = "QCB_a"
command = ~D, DB, B, ~a

[Command]
name = "QCB_k"
command = ~D, DB, B, ~b

[Command]
name = "QCB_k"
command = ~D, DB, B, ~c

[Command]
name = "FF_a"
command = F, F, ~a

[Command]
name = "FF_b"
command = F, F, ~b

[Command]
name = "FF_c"
command = F, F, ~c

;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;


[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "SmashKFUpper"   ;Same name as above
command = ~D, DF, F, D, DF, F, y
time = 20


[Command]
name = "Pedaleo"   ;Same name as above
command = ~D, DF, F, D, DF, F, z
time = 20


[Command]
name = "DragonSmash"   ;Same name as above
command = ~D, DB, B, D, DB, B, b
time = 20


[Command]
name = "KneeKick"
command = ~D, DB, B, D, DB, B, a
time = 20


[Command]
name = "HCFx2_p"
command = ~D, DB, B, D, DB, B, c
time = 20


[Command]
name = "BeatDown"
command = x, x, F, a, z
time = 30


[Command]
name = "Combo"
command = ~D, DF, F, D, DF, F, y+b
time = 30

;-| Special Motions |------------------------------------------------------


[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_z"
command = ~F, D, DF, z

[Command]
name = "fdkick_a"
command = ~F, D, DF, a

[Command]
name = "fdkick_b"
command = ~F, D, DF, b

[Command]
name = "fdkick_c"
command = ~F, D, DF, c

[Command]
name = "HCF_x"
command = ~B, DB, D, DF, F, x
time = 20



[Command]
name = "HCB_x"
command = ~F DF, D, DB, B, x
time = 20

[Command]
name = "HCB_y"
command = ~D, DF, F, b+c
time = 20

[Command]
name = "HCB_z"
command = ~D, DF, F, c
time = 20

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCF_k"
command = ~D, DF, F, a


[Command]
name = "QCF_s"
command = ~D, DF, F, b

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

[Command]
name = "TTSMKSNP"
command = ~D, DB, B, a

[Command]
name = "TTSMKSNP2"
command = ~D, DB, B, b

[Command]
name = "TTSMKSNP3"
command = ~D, DB, B, c

[Command]
name = "TTSMKSNP4"
command = ~D, DB, B, b+c

[Command]
name = "EX KF Palm"
command = ~D, DF, F, y+z
time = 15

[Command]
name = "EX Molde giro"
command = ~D, DB, B, y+z


[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

[Command]
name = "FF_c"
command = F, F, c

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
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| Other |-------------------------------------------------------------

[Command]
name = "highjump"
command = $D, $U
time = 15

;-| Recovery |-------------------------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
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
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
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
;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "fwd"
command = $F
time = 1

[Command]
name = "down"
command = $D
time = 1

[Command]
name = "back"
command = $B
time = 1

[Command]
name = "up"
command = $U
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

[Command]
name = "start"
command = s
time = 1

;-| Hold Button |-----------------------------------------------------------
[Command]
name = "hold_x"
command = /$x
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
command = /$a
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

;====================<RELEASE DIR>====================

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

;====================<RELEASE BUTTON>====================

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
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -3, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -3" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;EX MOLDAZO
[State -1, EX MOLDAZO]
type = ChangeState
value = 1990
triggerall = command = "TTSMKSNP4"
trigger1 = (statetype = s) && ctrl

;Molde giratorio
[State -1, EX Molde giratorio]
type = ChangeState
value = 1230
triggerall = command = "EX Molde giro"
trigger1 = (statetype = s) && ctrl

;EX CUernito
[State -1, EX KF Palm]
type = ChangeState
value = 1030
triggerall = command = "EX KF Palm"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, EX L]
type = ChangeState
value = 1996
triggerall = ailevel != 1
triggerall = command = "HCB_y"
trigger1 = var(1) ;Use combo condition (above)



[State -1, Tick Fix]
type = CtrlSet
triggerAll = !ctrl
trigger1 = (StateNo = 52 || StateNo = 101 || StateNo = 5120) && !AnimTime
trigger2 = (StateNo = [200,499]) && !AnimTime && Anim != 251 
trigger3 = ((StateNo = [760,762]) || (StateNo = [700,715]) || (StateNo = [900,905])) && !AnimTime
trigger4 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
value = 1

[State -1, CtrlSet For Helpers]
type = CtrlSet
trigger1 = IsHelper
value = 0

[State -1, Hit Count For Helpers]
type = ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime
trigger1 = !(HitDefAttr = SCA, AT)
var(13) = 1

[State -1, Juggle Count For Helpers]
type = ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State -1, Roll Forward]
type = ChangeState
value = 710
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdfwd"
trigger2 = var(20) && var(4)

[State -1, Roll Backward]
type = ChangeState
value = 715
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdback"

[State -1, Dodge]
type = ChangeState
value = 700
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))

[State -1, Zero Counter]
type = ChangeState
value = 750
triggerAll = !AILevel
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = command = "412p" || command = "412k"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Custom Combo]
type = ChangeState
value = ifElse(StateType = A, 905, 900)
triggerAll = !AILevel
trigger1 = command = "c+z"&&!var(54)
trigger1 = RoundState = 2
trigger1 = power >= 1000 && !var(20)
trigger1 = ctrl || StateNo = 52 || (StateNo = [100,101])
trigger1 = !var(41)

[State -1, MAX Mode]
type = ChangeState
value = 770
triggerall = command = "c+z"&&var(54)
triggerall = RoundState = 2 && StateType != A
triggerall = var(53) <= 0 && Power >= 1000
trigger1 = ctrl || (Stateno = [100,101])

[State -1, Power Charging]
type = ChangeState
value = 730
triggerAll = !AILevel
trigger1 = command = "hold_b" && command = "hold_y"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20)
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Dash Forward/Run]
type = ChangeState
value = 100
triggerAll = !AILevel
trigger1 = command = "FF"
trigger1 = roundstate = 2 && StateType = S
trigger1 = ctrl

[State -1, Dash Backward]
type = ChangeState
value = 105
triggerAll = !AILevel
trigger1 = command = "BB"
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Kung Fu Combo
[State -3, CIPRY FINAL]
type = ChangeState
value = 4000
triggerall = ailevel != 1
triggerall = command = "Combo"
triggerall = power >= 3000
triggerall = ailevel != 1
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != 4000
trigger2 = movecontact

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------


;---------------------------------------------------------------------------



;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;Kung fu Cipry
[State -3, Kung fu Cipry]
type = ChangeState
value = 3600
triggerall = var(59) <= 0
triggerall = command = "HCFx2_p"
triggerall = power >= 2000
triggerall = ailevel != 1
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != 3600
trigger2 = movecontact

;---------------------------------------------------------------------------
;Dragon Smash
[State -3, Pedaleo]
type = ChangeState
value = 3100
triggerall = command = "Pedaleo"
triggerall = power >= 1000
triggerall = ailevel != 1
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != 3100
trigger2 = movecontact

;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル１）
[State -3, MOLIREPPA]
type = ChangeState
value = 3050
triggerall = command = "SmashKFUpper"
triggerall = power >= 1000
triggerall = ailevel != 1
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact
;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
;三烈カンフー突き手（ゲージレベル１）
[State -3, RAM PUNCH]
type = ChangeState
value = 3000
triggerall = var(59) <= 0
triggerall = command = "TripleKFPalm"
triggerall = power >= 1000
triggerall = ailevel != 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact

;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -3, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -3, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
triggerall = ailevel != 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(1) = 1

;---------------------------------------------------------------------------
; Counter
[State -3, Counter]
type = ChangeState
value = 900
triggerall = ailevel != 1
triggerall = power >= 1000
triggerall = command = "x" && command = "y" || command = "y" && command = "z" || command = "x" && command = "z" || command = "x" && command = "y" && command = "z"
triggerall = statetype != A
trigger1 = stateno = 150
trigger2 = stateno = 151
trigger3 = stateno = 152
trigger4 = stateno = 153



;---------------------------------------------------------------------------
;Light Hadoken
[State -3, SUPER LANDING]
type = ChangeState
value = 3400
triggerall = var(59) <= 0
triggerall = command = "KneeKick"
triggerall = power >= 2000
triggerall = ailevel != 1
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3400,3500)
trigger2 = movecontact

;---------------------------------------------------------------------------
;Medium Hadoken
[State -3, Spicy BBQ]
type = ChangeState
value = 3500
triggerall = var(59) <= 0
triggerall = command = "DragonSmash"
triggerall = power >= 2000
triggerall = ailevel != 1
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3500,3600)
trigger2 = movecontact


;---------------------------------------------------------------------------


;---------------------------------------------------------------------------
;Fast Kung Fu Knee
;速いカンフー蹴り（ゲージレベル１／３）
[State -3, Fast Kung Fu Knee]
type = ChangeState
value = 1070
triggerall = ailevel != 1
triggerall = command = "FF_c"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Kung Fu Knee
;カンフー蹴り（弱）
[State -3, L1]
type = ChangeState
value = 1993
triggerall = ailevel != 1
triggerall = command = "QCF_k"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Strong Kung Fu Knee
;カンフー蹴り（弱）
[State -3, L2]
type = ChangeState
value = 1994
triggerall = ailevel != 1
triggerall = command = "QCF_s"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Strong Kung Fu Knee
;カンフー蹴り（弱）
[State -3, L3]
type = ChangeState
value = 1995
triggerall = ailevel != 1
triggerall = command = "HCB_z"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Strong Kung Fu Knee
;カンフー蹴り（弱）
[State -3, EX L]
type = ChangeState
value = 1996
triggerall = ailevel != 1
triggerall = command = "HCB_y"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

;---------------------------------------------------------------------------
;Fast Kung Fu Blow
[State -3, Fast Kung Fu Blow]
type = ChangeState
value = 1220
triggerall = ailevel != 1
triggerall = command = "QCB_z"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Kung Fu Blow

;---------------------------------------------------------------------------
;Light Kung Fu Blow
[State -3, Light Kung Fu Blow]
type = ChangeState
value = 1200
triggerall = ailevel != 1
triggerall = command = "QCB_x"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Strong Kung Fu Blow
[State -3, Strong Kung Fu Blow]
type = ChangeState
value = 1210
triggerall = ailevel != 1
triggerall = command = "QCB_y"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;EX Molde girartorio
[State -3, EX Molde girartorio]
type = ChangeState
value = 1230
triggerall = command = "EX Molde giro"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

;---------------------------------------------------------------------------
;Fast Kung Fu Palm
;速いカンフー突き手（ゲージレベル１／３）
[State -3, Fast Kung Fu Palm]
type = ChangeState
value = 1020
triggerall = ailevel != 1
triggerall = command = "QCF_z"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Kung Fu Palm
;カンフー突き手（弱）
[State -3, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = ailevel != 1
triggerall = command = "QCF_x"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Strong Medium Fu Palm
;カンフー突き手（強）
[State -3, Medium Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = ailevel != 1
triggerall = command = "QCF_y"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Strong Kung Fu Palm
;カンフー突き手（強）
[State -3, Strong Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = ailevel != 1
triggerall = command = "QCF_z"
trigger1 = var(1) ;Use combo condition (above)


;---------------------------------------------------------------------------

;Ex cuernito
[State -3, EX Cuernito]
type = ChangeState
value = 1030
triggerall = command = "EX KF Palm"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)
;---------------------------------------------------------------------------
;Moldazo ligero
;カンフー突き手（弱）
[State -3, Moldazo ligero]
type = ChangeState
value = 1500
triggerall = ailevel != 1
triggerall = command = "TTSMKSNP"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Kung Fu Palm
;カンフー突き手（弱）
[State -3, Moldazo Medio]
type = ChangeState
value = 1600
triggerall = ailevel != 1
triggerall = command = "TTSMKSNP2"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Kung Fu Palm
;カンフー突き手（弱）
[State -3, Moldazo fuerte]
type = ChangeState
value = 1700
triggerall = ailevel != 1
triggerall = command = "TTSMKSNP3"
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------

;Ex Moldazo
[State -3, EX Moldazo]
type = ChangeState
value = 1990
triggerall = command = "TTSMKSNP4"
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)



;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -3, Run Fwd]
type = ChangeState
value = 100
triggerall = ailevel != 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -3, Run Back]
type = ChangeState
value = 105
triggerall = ailevel != 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Recovery Roll Backward
[State -3, Roll_back]
type = ChangeState
value = 5220
triggerall = ailevel != 1
triggerall = alive
triggerall = stateno != 5120
triggerall = stateno != 5291
triggerall = command = "holdback"
triggerall = command = "recovery"
trigger1 = statetype = L

; Recovery Roll Forward
[State -3, Roll_fwd]
type = ChangeState
value = 5230
triggerall = ailevel != 1
triggerall = alive
triggerall = stateno != 5120
triggerall = stateno != 5291
triggerall = command = "holdfwd"
triggerall = command = "recovery"
trigger1 = statetype = L

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -3, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = ailevel != 1
triggerall = command = "y" || command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H



;---------------------------------------------------------------------------
;Taunt
;挑発
[State -3, Taunt]
type = ChangeState
value = 195
triggerall = ailevel != 1
triggerall = command = "start"
triggerall = command != "QCF_s"
trigger1 = statetype != A
trigger1 = ctrl

; Roll Forward Taunt
[State -3, Roll_fwd]
type = ChangeState
value = 196
triggerall = ailevel != 1
triggerall = command = "QCF_s"
triggerall = statetype != A
trigger1 = ctrl
; Standing Low Punch
[State -1, Standing Low Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
;---------------------------------------------------------------------------
; Standing Medium Punch
[State -1, Standing Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact
trigger6 = stateno = 100
;---------------------------------------------------------------------------
;Standing High Punch
[State -1, Standing High Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 440
trigger9 = movecontact
trigger10 = stateno = 100
;---------------------------------------------------------------------------
;Standing Low Kick
[State -1, Standing Low Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 100
;---------------------------------------------------------------------------
;Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact
trigger4 = stateno = 100
;---------------------------------------------------------------------------
;Standing High Kick
[State -1, Standing High Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 420
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact
trigger12 = stateno = 100
;---------------------------------------------------------------------------
;Crouching Low Punch
[State -1, Crouching Low Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact

;---------------------------------------------------------------------------
;Crouching High Punch
[State -1, Crouching High Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 240
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 410
trigger7 = movecontact
trigger8 = stateno = 430
trigger8 = movecontact
trigger9 = stateno = 440
trigger9 = movecontact

;---------------------------------------------------------------------------
;Crouching Low Kick
[State -1, Crouching Low Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact

;---------------------------------------------------------------------------
;Crouching High Kick
[State -1, Crouching High Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 420
trigger9 = movecontact
trigger10 = stateno = 430
trigger10 = movecontact
trigger11 = stateno = 440
trigger11 = movecontact

;---------------------------------------------------------------------------
;Jumping Low Punch
[State -1, Jumping Low Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 100000
;---------------------------------------------------------------------------
;Jumping Medium Punch
[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 630
trigger3 = movecontact
trigger4 = stateno = 100000
;---------------------------------------------------------------------------
;Jumping High Punch
[State -1, Jumping High Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
trigger5 = stateno = 640
trigger5 = movecontact
trigger6 = stateno = 100000
;---------------------------------------------------------------------------
;Jumping Low Kick
[State -1, Jumping Low Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 100000
;---------------------------------------------------------------------------
;Jumping Medium Kick
[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
trigger5 = stateno = 100000
;---------------------------------------------------------------------------
;Jumping High Kick
[State -1, Jumping High Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
trigger5 = stateno = 640
trigger5 = movecontact
trigger6 = stateno = 620
trigger6 = movecontact
trigger7 = stateno = 100000


;===========================================================================
;---------------------------------------------------------------------------
;Artificial Inteligence
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, Idle]
type = changestate
value = 0
triggerall = AIlevel && numenemy&&roundstate = 2 && statetype != A && enemynear, movetype = A && (p2stateno=[5100,5220])
trigger1=ctrl

[State -1, run]
type = changestate
value = 100
trigger1 = AIlevel && numenemy
trigger1 = statetype = S && roundstate = 2 && ctrl && random < (300 * (var(59) ** 2 / 64.0))
trigger1 = (stateno != [100, 105]) && enemynear, movetype != A && p2bodydist x > 120

[State -1, dash]
type = changestate
value = 105
triggerall = AIlevel && numenemy
triggerall = statetype = S && roundstate = 2 && ctrl
triggerall = (p2bodydist x = [0, 80]) && backedgebodydist > 80 && (stateno != [100, 105])
trigger1 = enemynear, movetype = A && random < (50 * (var(59) ** 2 / 64.0))
trigger2 = enemynear, stateno = 5120 && enemynear, animtime = -3 && random < (300 * (var(59) ** 2 / 64.0))

[State -1, Jump]
type = changestate
value = 40
triggerall = AIlevel && numenemy&&random < (50 * (var(59) ** 2 / 64.0))
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
trigger1 = random < (ifelse((p2stateno = [200, 699]), 300, ifelse((p2stateno = [1000, 2999]), 500, 1000)) * (var(59) ** 2 / 64.0))

[State -1, Guard]
type = ChangeState
value = 120
triggerall= AILevel && numenemy&& (StateNo!=[120,155]) && !(enemynear,ctrl) && random < (450 * (var(59) ** 2 / 64.0))
triggerall= Ctrl||stateno = 21
triggerall=enemynear,Movetype=A && !(enemynear,hitdefattr=SCA,AT) 
trigger1 = inguarddist

[State -1, Zero Counter]
type = changestate
value = 750
trigger1 = AIlevel && numenemy
trigger1 = (p2dist x = [-90, 90]) && stateno = 150 || stateno = 152
trigger1 = roundstate = 2 && power >= 2000 && !var(20) && life < 500 && random < (10 * (var(59) ** 2 / 64.0))

[State -1, powercharge]
type = changestate
value = 730
trigger1 = AIlevel && numenemy
trigger1 = !numhelper(3033)
trigger1 = roundstate = 2 && statetype != A && ctrl
trigger1 = power < const(data.power) && power < powermax && !var(20)
trigger1 = random < (50 * (var(59) ** 2 / 64.0)) && !inguarddist && p2movetype != A && p2dist x >= 160

[State -1, roll / dodge]
type = changestate
value = ifelse(random < 600, 700, 710)
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && ctrl && random < (200 * (var(59) ** 2 / 64.0))
trigger1 = enemynear, movetype = A && p2bodydist x < 80
;-EX CUERNITO--------------------------------------------------------------------------
[State -1, airrecover]
type = changestate
value = ifelse((pos y>=-20),5200,5210)
triggerall= AILevel && numenemy
triggerall= roundstate=2 && stateno=5050
trigger1= vel y>-1 && alive && canrecover && random < (350 * (var(59) ** 2 / 64.0))
;-------------------------------------------------------------------
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "y" || command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
;------------------------------------------------------------------------
[State -1, Standing Low Punch AI]
type = ChangeState
value = 200
triggerall = AILevel && numenemy&&roundstate=2&&StateType != A
triggerall = p2bodydist x <=45&&(p2bodydist y = [-80,5])&&P2statetype != A&&P2statetype != C&&P2statetype != L&& random < (650 * (var(59) ** 2 / 64.0))
trigger1 = ctrl
trigger2 = (stateno = [100,101]) && random < 100
;---------------------------------------------------------------------------
[State -1, Standing Medium Punch AI]
type = ChangeState
value = 210
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A && P2statetype != C
triggerall = (p2bodydist x = [0, 30]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (150 * (var(59) ** 2 / 64.0))
trigger2 = ((stateno = [200,209])|| (stateno = [230,239])||(stateno = [400,409])||(stateno = [430,439]))&& movehit&&var(55)
trigger2 = random < 350
;---------------------------------------------------------------------------
[State -1, Standing High Punch AI]
type = ChangeState
value = 220
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 55]) && (p2bodydist y = [ -80, 80]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (80 * (var(59) ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [240,249])||(stateno = [410,419])||(stateno = [440,449]))&& movehit&&var(55)
trigger2 = random < 650
;---------------------------------------------------------------------------
[State -1, Standing Low Kick AI]
type = ChangeState
value = 230
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A
triggerall = (p2bodydist x = [0, 40]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (80 * (var(59) ** 2 / 64.0))
trigger2 = ((stateno = [200,209])|| (stateno = [400,409]))&& movehit&&var(55)
trigger2 = random < 200
trigger3 = (stateno = [100,101]) && random < 100
;---------------------------------------------------------------------------
[State -1, Standing Medium Kick AI]
type = ChangeState
value = 240
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A && P2statetype != C
triggerall = (p2bodydist x = [0, 55]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (var(59) ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [230,239])||(stateno = [410,419])||(stateno = [430,439]))&& movehit&&var(55)
trigger2 = random < 350
;---------------------------------------------------------------------------
[State -1, Standing High Kick AI]
type = ChangeState
value = 250
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != C
triggerall = (p2bodydist x = [0, 60]) && (p2bodydist y = [ -60, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (var(59) ** 2 / 64.0))
trigger2 = ((stateno = [240,249])|| (stateno = [440,449]))&& movehit && stateno != 225&&var(55)
trigger2 = random < 800
;---------------------------------------------------------------------------
[State -1, Crouching Low Punch]
type = ChangeState
value = 400
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 40]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (var(59) ** 2 / 64.0))
trigger2 = stateno = [100,101]
;---------------------------------------------------------------------------
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 55]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (150 * (var(59) ** 2 / 64.0))
trigger2 = ((stateno = [200,209])|| (stateno = [230,239])||(stateno = [400,409])||(stateno = [430,439]))&& movehit&&var(55)
trigger2 = random < 800
;---------------------------------------------------------------------------
[State -1, Crouching High Punch]
type = ChangeState
value = 420
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 70]) &&(p2bodydist y = [-80,5]) && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (125 * (var(59) ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [240,249])||(stateno = [410,419])||(stateno = [440,449]))&& movehit&&var(55)
trigger2 = random < 600
;---------------------------------------------------------------------------
[State -1, Crouching Low Kick]
type = ChangeState
value = 430
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 35]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (var(59) ** 2 / 64.0))
trigger2 = ((stateno = [200,209])|| (stateno = [400,409]))&& movehit&&var(55)
;---------------------------------------------------------------------------
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 45]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (75 * (var(59) ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [230,239])||(stateno = [410,419])||(stateno = [430,439]))&& movehit&&var(55)
trigger2 = random < 350
;---------------------------------------------------------------------------
[State -1, Crouching High Kick]
type = ChangeState
value = 450
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A
triggerall = (p2bodydist x = [0, 55]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype = S && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (var(59) ** 2 / 64.0))
trigger2 = ((stateno = [220,229])|| (stateno = [240,249])||(stateno = [420,429])||(stateno = [440,449]))&& movehit&&var(55)
trigger2 = random < 900
;---------------------------------------------------------------------------
[State -1, Jumping Low Punch]
type = ChangeState
value = 600
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A && (p2bodydist x = [0,60]) && (p2bodydist y = [ -50, 50]) && p2statetype != L
trigger1 = ctrl && random < (500 * (var(59) ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A && (p2bodydist x = [0, 70]) && (p2bodydist y = [ -50, 50]) && p2statetype != L 
trigger1 = ctrl && random < (ifelse((vel x > 0 && p2statetype = A), 250, 125) * (var(59) ** 2 / 64.0)) 
trigger2 = (stateno = [600,609])&& movehit && var(55)=2 && random < 750
trigger3 = (stateno = [630,639])&& movehit && var(55)=2 && random < 250
;---------------------------------------------------------------------------
[State -1, Jumping High Punch]
type = ChangeState
value = 620
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A && (p2bodydist x = [0, 100]) && (p2bodydist y = [ -80, 50]) && p2statetype != L 
trigger1 = ctrl && random < (150 * (var(59) ** 2 / 64.0)) && !(enemynear, hitfall)
trigger2 = (stateno = [610,619])&& movehit && var(55)=2 && random < 700
trigger3 = (stateno = [640,649])&& movehit && var(55)=2 && random < 200
;---------------------------------------------------------------------------
[State -1, Jumping Low Kick]
type = ChangeState
value = 630
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A && (p2bodydist x = [0, 70]) && (p2bodydist y = [ -50, 50]) && p2statetype != L 
trigger1 = ctrl && random < (50 * (var(59) ** 2 / 64.0))
trigger2 = (stateno = [600,609])&& movehit && var(55)=2 && random < 250
;---------------------------------------------------------------------------
[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A && (p2bodydist x = [0, 90]) && (p2bodydist y = [ -50, 50]) && p2statetype != L 
trigger1 = ctrl && random < (250 * (var(59) ** 2 / 64.0)) && !(enemynear, hitfall)
trigger2 = (stateno = [610,619])&& movehit && var(55)=2 && random < 100
trigger3 = (stateno = [630,639])&& movehit && var(55)=2 && random < 750
;---------------------------------------------------------------------------
[State -1, Jumping High Kick]
type = ChangeState
value = 650
triggerall = AILevel && numenemy &&roundstate=2&&statetype = A && (p2bodydist x = [0, 130]) && (p2bodydist y = [ -50, 50]) && p2statetype != L 
trigger1 = ctrl && random < (250 * (var(59) ** 2 / 64.0)) && !(enemynear, hitfall) 
trigger2 = (stateno = [610,619])&& movehit && var(55)=2 && random < 250
trigger3 = (stateno = [640,649])&& movehit && var(55)=2 && random < 750
;--------------------------------------------------------------------

;===================================
;      AI HYPER ATTACKS 
;===================================
; Gamma Crush
[State -3]
type = changestate
value = 1200; + (power >= 2000)*50
triggerall = (roundstate != [0,1]) || (roundstate != [3,4]) 
triggerall = ailevel = 1 && random > life && time % 4 
triggerall = StateType != A && MoveType != H
triggerall = p2life!= 0
triggerall = random > life && time % 4 
triggerall = ctrl && P2movetype = A  
triggerall = P2BodyDist X = [-50,50] 
triggerall = P2BodyDist Y >= -150
trigger1 = p2stateno = 50
trigger2 = p2stateno = [5050,5070]
trigger3 = p2stateno = [5100,5102]
trigger4 = p2stateno = 5110
trigger5 = p2stateno = 5200
trigger6 = 1
trigger7 = enemy, numproj >= 0
trigger8 = stateno < 800 && random >=501
;===================================
;Hyper Gamma Charge Vertical
[State -3]
type = changestate
value = 3150 ;+ (power >= 2000)*50
triggerall = (roundstate != [0,1]) || (roundstate != [3,4]) 
triggerall = ailevel = 1 && random > life && time % 4 
triggerall = StateType != A && MoveType != H && power >= 1000
triggerall = ctrl && P2movetype = A  && stateno < 800 && random <=500
triggerall = P2BodyDist X = [-50,50] 
triggerall = P2BodyDist Y >= -120
triggerall = p2life!= 0
trigger1 = p2stateno = 50
trigger2 = p2stateno = [5050,5070]
trigger3 = p2stateno = [5100,5102]
trigger4 = p2stateno = 5110
trigger5 = p2stateno = 5200
trigger6 = 1
trigger7 = enemy, numproj >= 0
;===================================
;===================================
;      AI SUPER ATTACKS 
;===================================
;AI Chiropractor
[State -3]
type = changestate
value = 630;1125
triggerall = (roundstate != [0,1]) || (roundstate != [3,4]) 
triggerall = ailevel = 1 && stateno < 800
triggerall = StateType != A && MoveType != H && p2life!= 0
triggerall = ctrl
triggerall = P2BodyDist X = [10,60]
triggerall = P2BodyDist Y <= -20
triggerall = p2movetype != H
trigger1 = p2movetype = A
trigger1 = random < 989
trigger2 = p2statetype = A
trigger2 = random < 989
;===================================
;AI Diving Hulk
[State -3]
type = changestate
value = 630;1150
triggerall = (roundstate != [0,1]) || (roundstate != [3,4]) 
triggerall = ailevel = 1 && stateno < 800
triggerall = StateType = A && MoveType != H && p2life!= 0
triggerall = ctrl
triggerall = P2BodyDist X = [0,20]
triggerall = P2BodyDist Y >= -100
trigger1 = p2MoveType = A
trigger1 = random >= 50
trigger2 = enemy, Numproj > 0 && random >= 10
trigger3 = enemy, Numhelper > 0 && random >= 10
trigger4 = p2stateno = [5000,5999]




;AI Gamma Charge
[State -3]
type = changestate
value = 1120
triggerall = (roundstate != [0,1]) || (roundstate != [3,4]) 
triggerall = ailevel = 1 ;&& p2life!= 0 && Random >= 450
triggerall = statetype != A
triggerall = ctrl
triggerall = P2BodyDist X = [10,150]
trigger1 = p2movetype = A
trigger1 = random >= 50
;trigger2 = enemy, Numproj > 0
;trigger3 = enemy, Numhelper > 0

;evilryu
[State -3]
type = changestate
value = 1020
triggerall = (roundstate != [0,1]) || (roundstate != [3,4]) 
triggerall = ailevel = 1 && p2life!= 0 && Random >= 450
triggerall = statetype != A
triggerall = ctrl
triggerall = p2name = "Evil Ryu"
triggerall = P2BodyDist X = [10,150]
triggerall = P2stateno = 1862
trigger1 = p2movetype = A
trigger1 = random >= 50
trigger2 = enemy, Numproj > 0
trigger3 = enemy, Numhelper > 0

;===================================
;===================================
;===================================
;AI Gamma Pound
[State -3]
type = ChangeState
value = 1520
triggerall = ailevel = 1 && random > life && time % 4 
triggerall = Life != 0 && stateno < 600
triggerall = p2bodydist X = [145,206]
triggerall = roundstate = 2 && ctrl = 1
triggerall = StateType != A && MoveType != H
triggerall = P2MoveType != H
triggerall = P2StateNo != 40
triggerall = StateNo != 195
triggerall = p2statetype != A
triggerall = p2stateno != [5000,5999]
triggerall = movetype != H 
triggerall = random > 500
trigger1 = enemy, numproj = 0
trigger2 = p2movetype != A


;[State -3, AI Jump2]
;type = ChangeState
;value = 40;ifelse(random <= 400,430,400)
;triggerall = ailevel = 1 && random > life && time % 4 
;triggerall = P2statetype = C
;triggerall = statetype != A
;triggerall = p2stateno != [5020,5999]
;triggerall = stateno != [902,904]
;trigger1 = p2bodydist x <= 20; p2 is close enough for stand light punch
;trigger1 = p2bodydist y = [-5,10]
;trigger1 = ctrl  && random <=300
;;trigger2 = ctrl
;;trigger2 = p2bodydist x = [-22,13]
;;trigger2 = p2bodydist y = [-14,-10]

;[State -3, AI If defended]
;type = ChangeState
;value = 88840
;triggerall = ailevel = 1
;triggerall = statetype != A
;triggerall = random <= 499
;trigger1 = stateno = 4441050 &&  moveguarded
;trigger2 = stateno = 1055 &&  movecontact ;&& p2bodydist x > 2
;trigger3 = stateno = 1050 &&  movecontact; && p2bodydist X > 10



[State -3, AI Run Fwd]
type = ChangeState
value = 100
triggerall = Movetype != A && stateno != 100 && P2Movetype != A && ctrl && ailevel = 1
triggerall = pos y = 0
trigger1 = (p2stateno = 5120 || p2stateno = 5100 || p2stateno = 5050 || p2statetype = S) && p2bodydist x >= 100
trigger1 = p2movetype != A && random < 300 && statetype != A
trigger2 = ProjGuardedTime(221) >= 1
trigger2 = ctrl && random < 999

[State -3, AI Run Fwd Stop]
type = ChangeState
triggerall = stateno = 100 &&  ailevel = 1
trigger1 = P2movetype != I && p2movetype != H
trigger1 = p2bodydist x < 2 
value = 0
ctrl = 1


[State -3, AI Standing Guard]
type = ChangeState
triggerall =  Statetype != A && P2statetype != C && Statetype = S && P2Movetype = A && var(20) = 20
triggerall = (Pos Y != [-1,-999]) && ctrl = 1
trigger1 = random <= 900
value = 130 

[State -3, AI Stand to Crouch Guard Transition]
type = ChangeState
triggerall = StateType != A && P2statetype = C && P2Movetype = A && ailevel = 1
triggerall = Pos Y != [-1,-999]
trigger1 = 1 &&  stateno = 150
value = 152

[State -3, AI Crouching Guard]
type = ChangeState
triggerall = StateType != A && P2statetype = C && P2Movetype = A && ailevel = 1
triggerall = (Pos Y != [-1,-999]) && ctrl = 1
trigger1 = random <= 900
value = 131

[State -3, AI Crouch to Stand Guard Transition]
type = ChangeState
triggerall =  Statetype != A && P2statetype != C && P2Movetype = A && ailevel = 1
trigger1 = 1 && stateno = 152
value = 150

[State -3,AI Aerial Guard]
type = ChangeState
triggerall = Statetype = A && P2Movetype = A && ctrl = 1  && ailevel = 1
trigger1 = random <= 900
value = 132

[State -3, AI Walk Fwd Stop]
type = ChangeState
triggerall = stateno = 20  && ailevel = 1
trigger1 = p2bodydist x <= 30 || P2movetype = A
value = 0
ctrl = 1

;[State -3, AI Crouch Light Punch]
;type = ChangeState
;value = 400
;triggerall = ailevel = 1 && P2MoveType != A
;trigger1 = (p2bodydist y = [-5,5]) && statetype = S && ctrl && random < 999 && p2bodydist x = 5
;trigger2 = stateno = 200 && moveguarded && pos y = 0 && random < 700
;trigger3 = var(34) = 19

;[State -3,AI Crouch Weak Kick]
;type = ChangeState
;value = 430
;triggerall = ailevel = 1
;triggerall = p2bodydist x = [0,49]
;trigger1 = stateno = 400 && movecontact && random < 999 
;trigger2 = stateno = 1031 && moveguarded
;trigger3 = stateno = 201 && moveguarded
;trigger4 = (stateno = 200 || stateno = 230) && moveguarded && pos y = 0 && random < 800
;trigger5 = p2statetype != A && p2bodydist x <= 50 && p2statetype = S && statetype != A && ctrl
;trigger6 = var(34) = 20

[State -3,AI Crouch Strong Kick]
type = ChangeState
value = 450
triggerall = ailevel = 1
triggerall = p2bodydist x = [0,10]
trigger1 = stateno = 410 && moveguarded && random < 999 

