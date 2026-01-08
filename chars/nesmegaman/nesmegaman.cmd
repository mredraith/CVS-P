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
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /F, b    ;hold fwd while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the b button
;               command = ~D, F, b ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30b    ;hold a for at least 30 ticks, then release
;               command = ~30
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = b+a      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their engine.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted


;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = a+b
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "b"
command = b
time = 1

[Command]
name = "a"
command = a
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
command = start
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"  ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup"   ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

;-| Special |--------------------------------------------------------------
[Command]
name = "back"
command = B
time = 1

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

;-| AI |--------------------------------------------------------------
[Command]
name = "AI1"
command = U,D,B,F,U,D,B,F,b,b,a,a,s
time = 0

[Command]
name = "AI2"
command = U,D,U,D,U,D,U,D,U,D,U,D,a+b+c+x+y+z
time = 0

[Command]
name = "AI3"
command = U,F,B,D,B,F,U,x,x,x,y,y,y,z,z,z
time = 0

[Command]
name = "AI4"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0

[Command]
name = "AI5"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0

[Command]
name = "AI6"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0

[Command]
name = "AI7"
command = x+y+z,x+y+z,x+y+z,x+y+z,x+y+z,x+y+z,x+y+z
time = 0

[Command]
name = "AI8"
command = a+b+c,a+b+c,a+b+c,a+b+c,a+b+c,a+b+c,a+b+c
time = 0

[Command]
name = "AI9"
command = y,a,B,B,a,D,a,B,B,a
time = 0

[Command]
name = "AI10"
command = c,U,B,B,y,B,U,D,D,y
time = 0

[Command]
name = "AI11"
command = x,x,x,x
time = 0

[Command]
name = "AI12"
command = y,y,y,y
time = 0

[Command]
name = "AI13"
command = z,z,z,z
time = 0

[Command]
name = "AI14"
command = a,a,a,a
time = 0

[Command]
name = "AI15"
command = b,b,b,b
time = 0

[Command]
name = "AI16"
command = c,c,c,c
time = 0

[Command]
name = "AI17"
command = U,x,U,x
time = 0

[Command]
name = "AI18"
command = D,x,D,x
time = 0

[Command]
name = "AI19"
command = B,x,B,x
time = 0

[Command]
name = "AI20"
command = F,x,F,x
time = 0

[Command]
name = "KonamiCode"
command = U,U,D,D,B,F,B,F,b,a,s
time = 0

[Command]
name = "aXOR"
command = a
time = 1

[Command]
name = "bXOR"
command = b
time = 1

[Command]
name = "cXOR"
command = c
time = 1

[Command]
name = "xXOR"
command = x
time = 1

[Command]
name = "yXOR"
command = y
time = 1

[Command]
name = "zXOR"
command = z
time = 1

[Command]
name = "startXOR"
command = s
time = 1

[Command]
name = "holdfwdXOR"
command = /$F
time = 1

[Command]
name = "holdbackXOR"
command = /$B
time = 1

[Command]
name = "holdupXOR"
command = /$U
time = 1

[Command]
name = "holddownXOR"
command = /$D
time = 1

[Command]
name = "holdaXOR"
command = /a
time = 1

[Command]
name = "holdbXOR"
command = /b
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1]                  ;Don't change this
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
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
; AI
;===========================================================================
;---------------------------------------------------------------------------
;Activate AI
[State -1, Activate AI]
type = VarSet
triggerall = var(59) = 0
triggerall = !isHelper
trigger1 = IsHomeTeam
trigger1 = TeamSide = 2
trigger2 = command = "KonamiCode"
trigger3 = command = "AI1"
trigger4 = command = "AI2"
trigger5 = command = "AI3"
trigger6 = command = "AI4"
trigger7 = command = "AI5"
trigger8 = command = "AI6"
trigger9 = command = "AI7"
trigger10 = command = "AI8"
trigger11 = command = "AI9"
trigger12 = command = "AI10"
trigger13 = command = "AI11"
trigger14 = command = "AI12"
trigger15 = command = "AI13"
trigger16 = command = "AI14"
trigger17 = command = "AI15"
trigger18 = command = "AI16"
trigger19 = command = "AI17"
trigger20 = command = "AI18"
trigger21 = command = "AI19"
trigger22 = command = "AI20"
trigger23 = command = "a" ^^ command = "aXOR"
trigger24 = command = "b" ^^ command = "bXOR"
trigger25 = command = "c" ^^ command = "cXOR"
trigger26 = command = "x" ^^ command = "xXOR"
trigger27 = command = "y" ^^ command = "yXOR"
trigger28 = command = "z" ^^ command = "zXOR"
trigger29 = command = "start" ^^ command = "startXOR"
trigger30 = command = "holdfwd" ^^ command = "holdfwdXOR"
trigger31 = command = "holdback" ^^ command = "holdbackXOR"
trigger32 = command = "holdup" ^^ command = "holdupXOR"
trigger33 = command = "holddown" ^^ command = "holddownXOR"
trigger34 = command = "holda" ^^ command = "holdaXOR"
trigger35 = command = "holdb" ^^ command = "holdbXOR"
v = 59
value = 1

;---------------------------------------------------------------------------
;Activate AI
[State -1, Activate AI]
type = VarSet
triggerall = var(59) = 2
trigger1 = RoundState != 3
v = 59
value = 1

;---------------------------------------------------------------------------
;Deactivate AI
[State -1, Deactivate AI]
type = VarSet
triggerall = var(59) != 0
trigger1 = RoundState = 3
v = 59
value = 2

;---------------------------------------------------------------------------
;Liedown AI
[State -1, Liedown AI]
type = VarSet
triggerall = var(59) = 1
trigger1 = p2statetype = L
trigger2 = p2stateno = [5050,5079]
v = 59
value = 4

;---------------------------------------------------------------------------
;Liedown AI Off
[State -1, Liedown AI Off]
type = VarSet
triggerall = var(59) = 4
trigger1 = p2statetype != L
trigger1 = p2stateno != [5050,5079]
v = 59
value = 1

;---------------------------------------------------------------------------
;Check Miss AI Begin Attack
[State -1, Check Miss AI Begin Attack]
type = VarSet
triggerall = var(59) != 0
triggerall = var(58) <= 0
trigger1 = movetype = A
v = 58
value = stateno

;---------------------------------------------------------------------------
;Check Miss AI Hit
[State -1, Check Miss AI Hit]
type = VarSet
triggerall = var(59) != 0
triggerall = var(58) != 0
trigger1 = movecontact
trigger2 = movetype = I
trigger2 = random < 10
trigger3 = stateno = [150,159]
v = 58
value = 0

;---------------------------------------------------------------------------
;Check Miss AI End Attack
[State -1, Check Miss AI End Attack]
type = VarSet
triggerall = var(59) != 0
triggerall = var(58) > 0
trigger1 = ctrl = 1
v = 58
value = var(58)*(-1)

;===========================================================================
; End of AI Section
;===========================================================================

;===========================================================================
;---------------------------------------------------------------------------
;Menu
[State -1]
type = Helper
triggerall = var(59) = 0
triggerall = roundstate = 2
trigger1 = command = "start"
trigger1 = numhelper + numproj = 0
trigger1 = Var(16) = 0 ;Weapon Enabled = false
stateno = 4000
ownpal = 1

;---------------------------------------------------------------------------
;Walk
[State -1]
type = ChangeState
value = 20
triggerall = command = "holdfwd" || command = "holdback"
trigger1 = stateno = 1
trigger2 = stateno = 200
trigger3 = stateno = 1020

;---------------------------------------------------------------------------
;B Button - Jump
[State -1]
type = ChangeState
value = 210
triggerall = command = "a"
trigger1 = stateno = 1
trigger2 = stateno = 20
trigger3 = stateno = 200
trigger4 = stateno = 220
trigger5 = stateno = 221
trigger6 = stateno = 1020
trigger7 = stateno = 1025
trigger8 = stateno = 1026
trigger9 = stateno = 1060
trigger10 = stateno = 1061
trigger11 = stateno = 1070
trigger12 = stateno = 1071

;---------------------------------------------------------------------------
;A Button - Shoot
[State -1]
type = ChangeState
value = 200
triggerall = command = "b"
triggerall = numhelper + numproj < 3
triggerall = var(0) = 0
trigger1 = stateno = 1
trigger2 = stateno = 200
trigger2 = time >= 3

;---------------------------------------------------------------------------
;A Button - Shoot while walking
[State -1]
type = ChangeState
value = 220
triggerall = command = "b"
triggerall = numhelper + numproj < 3
triggerall = var(0) = 0
trigger1 = stateno = 20
trigger1 = anim != 21
trigger2 = stateno = 200
trigger2 = time >= 3
trigger3 = stateno = 220
trigger3 = time >= 3

;---------------------------------------------------------------------------
;A Button - Shoot while jumping
[State -1]
type = ChangeState
value = 212
triggerall = command = "b"
triggerall = command = "holdfwd" || command != "holdback" && (anim = 41 || anim = 241)
triggerall = numhelper + numproj < 3
triggerall = var(0) = 0
trigger1 = stateno = 210
trigger2 = stateno = 211
trigger3 = stateno = 212
trigger3 = time >= 3
trigger4 = stateno = 213
trigger5 = stateno = 214
trigger5 = time >= 3

;---------------------------------------------------------------------------
;A Button - Shoot while walking back
[State -1]
type = ChangeState
value = 221
triggerall = command = "b"
triggerall = numhelper + numproj < 3
triggerall = var(0) = 0
trigger1 = stateno = 20
trigger1 = anim != 20
trigger2 = stateno = 221
trigger2 = time >= 3

;---------------------------------------------------------------------------
;A Button - Shoot while jumping back
[State -1]
type = ChangeState
value = 214
triggerall = command = "b"
triggerall = command = "holdback" || anim = 51 || anim = 251
triggerall = numhelper + numproj < 3
triggerall = var(0) = 0
trigger1 = stateno = 210
trigger2 = stateno = 211
trigger3 = stateno = 212
trigger3 = time >= 3
trigger4 = stateno = 213
trigger5 = stateno = 214
trigger5 = time >= 3

;---------------------------------------------------------------------------
;A Button - Shoot Air Tornado
[State -1]
type = ChangeState
value = 1020
triggerall = command = "b"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = numhelper + numproj = 0
triggerall = var(0) = 2  ;Weapon Choice
triggerall = var(2) > 0  ;Weapon Power Left
trigger1 = stateno = 1
trigger2 = stateno = 20

;---------------------------------------------------------------------------
;A Button - Shoot Air Tornado while walking
[State -1]
type = ChangeState
value = 1025
triggerall = command = "b"
triggerall = numhelper + numproj = 0
triggerall = var(0) = 2  ;Weapon Choice
triggerall = var(2) > 0  ;Weapon Power Left
trigger1 = stateno = 20
trigger1 = anim != 21
trigger2 = stateno = 1020
trigger2 = time >= 3
trigger3 = stateno = 1025
trigger3 = time >= 3

;---------------------------------------------------------------------------
;A Button - Shoot Air Tornado while walking back
[State -1]
type = ChangeState
value = 1026
triggerall = command = "b"
triggerall = numhelper + numproj = 0
triggerall = var(0) = 2  ;Weapon Choice
triggerall = var(2) > 0  ;Weapon Power Left
trigger1 = stateno = 20
trigger1 = anim != 20
trigger2 = stateno = 1026
trigger2 = time >= 3

;---------------------------------------------------------------------------
;A Button - Shoot Air Tornado while jumping
[State -1]
type = ChangeState
value = 1027
triggerall = command = "b"
triggerall = command = "holdfwd" || command != "holdback" && (anim = 41 || anim = 241)
triggerall = numhelper + numproj = 0
triggerall = var(0) = 2  ;Weapon Choice
triggerall = var(2) > 0  ;Weapon Power Left
trigger1 = stateno = 210
trigger2 = stateno = 211
trigger3 = stateno = 1027
trigger3 = time >= 3
trigger4 = stateno = 1028
trigger5 = stateno = 1029
trigger5 = time >= 3

;---------------------------------------------------------------------------
;A Button - Shoot Air Tornado while jumping back
[State -1]
type = ChangeState
value = 1029
triggerall = command = "b"
triggerall = command = "holdback" || anim = 51 || anim = 251
triggerall = numhelper + numproj = 0
triggerall = var(0) = 2  ;Weapon Choice
triggerall = var(2) > 0  ;Weapon Power Left
trigger1 = stateno = 210
trigger2 = stateno = 211
trigger3 = stateno = 1027
trigger3 = time >= 3
trigger4 = stateno = 1028
trigger5 = stateno = 1029
trigger5 = time >= 3

;---------------------------------------------------------------------------
;A Button - Flash Stop
[State -1]
type = ChangeState
value = 1060
triggerall = command = "b"
triggerall = command != "holdback"
triggerall = numhelper + numproj < 3
triggerall = var(0) = 6  ;Weapon Choice
triggerall = var(6) > 0  ;Weapon Power Left
triggerall = var(16) = 0 ;Flash Stop Disabled
trigger1 = stateno = 1
trigger2 = stateno = 20

;---------------------------------------------------------------------------
;A Button - Flash Stop Backwards
[State -1]
type = ChangeState
value = 1061
triggerall = command = "b"
triggerall = command = "holdback"
triggerall = numhelper + numproj < 3
triggerall = var(0) = 6  ;Weapon Choice
triggerall = var(6) > 0  ;Weapon Power Left
triggerall = var(16) = 0 ;Flash Stop Disabled
trigger1 = stateno = 1
trigger2 = stateno = 20

;---------------------------------------------------------------------------
;A Button - Flash Stop while jumping
[State -1]
type = ChangeState
value = 1062
triggerall = command = "b"
triggerall = command = "holdfwd" || command != "holdback" && anim = 41
triggerall = numhelper + numproj < 3
triggerall = var(0) = 6  ;Weapon Choice
triggerall = var(6) > 0  ;Weapon Power Left
triggerall = var(16) = 0 ;Flash Stop Disabled
trigger1 = stateno = 210
trigger2 = stateno = 211

;---------------------------------------------------------------------------
;A Button - Flash Stop while jumping back
[State -1]
type = ChangeState
value = 1063
triggerall = command = "b"
triggerall = command = "holdback" || anim = 51
triggerall = numhelper + numproj < 3
triggerall = var(0) = 6  ;Weapon Choice
triggerall = var(6) > 0  ;Weapon Power Left
triggerall = var(16) = 0 ;Flash Stop Disabled
trigger1 = stateno = 210
trigger2 = stateno = 211

;---------------------------------------------------------------------------
;A Button - Shoot Metal Blade
[State -1]
type = ChangeState
value = 1070
triggerall = command = "b"
triggerall = command != "holdback"
triggerall = roundstate = 2
triggerall = numhelper + numproj < 3
triggerall = var(0) = 7 ;Weapon Choice
triggerall = var(7) > 0 ;Weapon Power Left
trigger1 = stateno = 1
trigger2 = stateno = 20
trigger3 = stateno = 1070
trigger3 = time >= 3
trigger4 = stateno = 1071
trigger4 = time >= 3

;---------------------------------------------------------------------------
;A Button - Shoot Metal Blade Backwards
[State -1]
type = ChangeState
value = 1071
triggerall = command = "b"
triggerall = command = "holdback"
triggerall = numhelper + numproj < 3
triggerall = var(0) = 7 ;Weapon Choice
triggerall = var(7) > 0 ;Weapon Power Left
trigger1 = stateno = 1
trigger2 = stateno = 20
trigger3 = stateno = 1070
trigger3 = time >= 3
trigger4 = stateno = 1071
trigger4 = time >= 3

;---------------------------------------------------------------------------
;A Button - Shoot Metal Blade while jumping
[State -1]
type = ChangeState
value = 1078
triggerall = command = "b"
triggerall = command = "holdfwd" || command != "holdback" && (anim = 41 || anim = 242)
triggerall = numhelper + numproj < 3
triggerall = var(0) = 7 ;Weapon Choice
triggerall = var(7) > 0 ;Weapon Power Left
trigger1 = stateno = 210
trigger2 = stateno = 211
trigger3 = stateno = 1078
trigger3 = time >= 3
trigger4 = stateno = 1079
trigger5 = stateno = 10781
trigger5 = time >= 3

;---------------------------------------------------------------------------
;A Button - Shoot Metal Blade while jumping back
[State -1]
type = ChangeState
value = 10781
triggerall = command = "b"
triggerall = command = "holdback" || anim = 51 || anim = 252
triggerall = numhelper + numproj < 3
triggerall = var(0) = 7 ;Weapon Choice
triggerall = var(7) > 0 ;Weapon Power Left
trigger1 = stateno = 210
trigger2 = stateno = 211
trigger3 = stateno = 1078
trigger3 = time >= 3
trigger4 = stateno = 1079
trigger5 = stateno = 10781
trigger5 = time >= 3

