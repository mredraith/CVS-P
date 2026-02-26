;***************************************************************************;
;************************* Makoto by KojiroBADNESS *************************;
;******************************** Commands *********************************;
;***************************************************************************;

;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
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

;-| CPU |--------------------------------------------------------------
[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+y
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
name = "start"
command = s
time = 1

[Command]
name = "412p"
command = ~B, DB, D, x
time = 16

[Command]
name = "412p"
command = ~B, DB, D, y
time = 16

[Command]
name = "412p"
command = ~B, DB, D, z
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~x
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~y
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~z
time = 16

[Command]
name = "412k"
command = ~B, DB, D, a
time = 16

[Command]
name = "412k"
command = ~B, DB, D, b
time = 16

[Command]
name=  "412k"
command = ~B, DB, D, c
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~a
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~b
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~c
time = 16

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

;-| Hold Button |----------------------------------------------------------

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holdstart"
command = /s
time = 1

;-| CPU |--------------------------------------------------------------
[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+y
time = 1

;-| Super Motions |--------------------------------------------------------

[Command]
name = "Hayate no Red Hawk"
command = ~D, DB, B, D, DF, F, x+y
time = 20
[Command]
name = "Hayate no Red Hawk"
command = ~D, DB, B, D, DF, F, ~x+y
time = 20

[Command]
name = "Hayate no Red Hawk"
command = ~D, DB, B, D, DF, F, y+z
time = 20
[Command]
name = "Hayate no Red Hawk"
command = ~D, DB, B, D, DF, F, ~y+z
time = 20

[Command]
name = "Hayate no Red Hawk"
command = ~D, DB, B, D, DF, F, z+x
time = 20
[Command]
name = "Hayate no Red Hawk"
command = ~D, DB, B, D, DF, F, ~z+x
time = 20

[Command]
name = "Rikujou Gekiha Ken"
command = ~D, D, D, z
time = 20
[Command]
name = "Rikujou Gekiha Ken"
command = ~D, D, D, ~z
time = 20

[Command]
name = "Rikujou Gekiha Ken"
command = ~D, D, D, y
time = 20
[Command]
name = "Rikujou Gekiha Ken"
command = ~D, D, D, ~y
time = 20

[Command]
name = "Rikujou Gekiha Ken"
command = ~D, D, D, x
time = 20
[Command]
name = "Rikujou Gekiha Ken"
command = ~D, D, D, ~x
time = 20

[Command]
name = "MAXRikujou Gekiha Ken"
command = ~D, D, D, y+z
time = 20
[Command]
name = "MAXRikujou Gekiha Ken"
command = ~D, D, D, ~y+z
time = 20

[Command]
name = "MAXRikujou Gekiha Ken"
command = ~D, D, D, x+y
time = 20
[Command]
name = "MAXRikujou Gekiha Ken"
command = ~D, D, D, ~x+y
time = 20

[Command]
name = "MAXRikujou Gekiha Ken"
command = ~D, D, D, x+z
time = 20
[Command]
name = "MAXRikujou Gekiha Ken"
command = ~D, D, D, ~x+z
time = 20

[Command]
name = "Tanden Renki"
command = ~D, DB, B, D, DB, B, z
time = 20
[Command]
name = "Tanden Renki"
command = ~D, DB, B, D, DB, B, ~z
time = 20

[Command]
name = "Tanden Renki"
command = ~D, DB, B, D, DB, B, y
time = 20
[Command]
name = "Tanden Renki"
command = ~D, DB, B, D, DB, B, ~y
time = 20

[Command]
name = "Tanden Renki"
command = ~D, DB, B, D, DB, B, x
time = 20
[Command]
name = "Tanden Renki"
command = ~D, DB, B, D, DB, B, ~x
time = 20

[Command]
name = "MAX Tanden Renki"
command = ~D, DB, B, D, DB, B, x+z
time = 20
[Command]
name = "MAX Tanden Renki"
command = ~D, DB, B, D, DB, B, ~x+z
time = 20

[Command]
name = "MAX Tanden Renki"
command = ~D, DB, B, D, DB, B, y+z
time = 20
[Command]
name = "MAX Tanden Renki"
command = ~D, DB, B, D, DB, B, ~y+z
time = 20

[Command]
name = "MAX Tanden Renki"
command = ~D, DB, B, D, DB, B, x+y
time = 20
[Command]
name = "MAX Tanden Renki"
command = ~D, DB, B, D, DB, B, ~x+y
time = 20

[Command]
name = "Abare Tosanami"
command = ~D, DF, F, D, DF, F, c
time = 20
[Command]
name = "Abare Tosanami"
command = ~D, DF, F, D, DF, F, ~c
time = 20

[Command]
name = "Abare Tosanami"
command = ~D, DF, F, D, DF, F, b
time = 20
[Command]
name = "Abare Tosanami"
command = ~D, DF, F, D, DF, F, ~b
time = 20

[Command]
name = "Abare Tosanami"
command = ~D, DF, F, D, DF, F, a
time = 20
[Command]
name = "Abare Tosanami"
command = ~D, DF, F, D, DF, F, ~a
time = 20

[Command]
name = "MAX Abare Tosanami"
command = ~D, DF, F, D, DF, F, a+c
time = 20
[Command]
name = "MAX Abare Tosanami"
command = ~D, DF, F, D, DF, F, ~a+c
time = 20

[Command]
name = "MAX Abare Tosanami"
command = ~D, DF, F, D, DF, F, b+c
time = 20
[Command]
name = "MAX Abare Tosanami"
command = ~D, DF, F, D, DF, F, ~b+c
time = 20

[Command]
name = "MAX Abare Tosanami"
command = ~D, DF, F, D, DF, F, a+b
time = 20
[Command]
name = "MAX Abare Tosanami"
command = ~D, DF, F, D, DF, F, ~a+b
time = 20

[Command]
name = "Seichuzen Godanzuki"
command = ~D, DF, F, D, DF, F, z
time = 25
[Command]
name = "Seichuzen Godanzuki"
command = ~D, DF, F, D, DF, F, ~z
time = 25
buffer.time = 15

[Command]
name = "Seichuzen Godanzuki"
command = ~D, DF, F, D, DF, F, y
time = 25
[Command]
name = "Seichuzen Godanzuki"
command = ~D, DF, F, D, DF, F, ~y
time = 25
buffer.time = 15

[Command]
name = "Seichuzen Godanzuki"
command = ~D, DF, F, D, DF, F, x
time = 25
[Command]
name = "Seichuzen Godanzuki"
command = ~D, DF, F, D, DF, F, ~x
time = 25
buffer.time = 15

[Command]
name = "MAX Seichuzen Godanzuki"
command = ~D, DF, F, D, DF, F, x+z
time = 25
[Command]
name = "MAX Seichuzen Godanzuki"
command = ~D, DF, F, D, DF, F, ~x+z
time = 25
buffer.time = 15

[Command]
name = "MAX Seichuzen Godanzuki"
command = ~D, DF, F, D, DF, F, y+z
time = 25
[Command]
name = "MAX Seichuzen Godanzuki"
command = ~D, DF, F, D, DF, F, ~y+z
time = 25
buffer.time = 15

[Command]
name = "MAX Seichuzen Godanzuki"
command = ~D, DF, F, D, DF, F, x+y
time = 25
[Command]
name = "MAX Seichuzen Godanzuki"
command = ~D, DF, F, D, DF, F, ~x+y
time = 25
buffer.time = 15

;-| Special/EX Motions |------------------------------------------------------

[Command]
name = "EX Karakusa"
command =  ~F, DF, D, DB, B, a+b
time = 15
[Command]
name = "EX Karakusa"
command =  ~F, DF, D, DB, B, ~a+b
time = 15

[Command]
name = "EX Karakusa"
command =  ~F, DF, D, DB, B, b+c
time = 15
[Command]
name = "EX Karakusa"
command =  ~F, DF, D, DB, B, ~b+c
time = 15

[Command]
name = "EX Karakusa"
command =  ~F, DF, D, DB, B, a+c
time = 15
[Command]
name = "EX Karakusa"
command =  ~F, DF, D, DB, B, ~a+c
time = 15

[Command]
name = "Strong Karakusa"
command =  ~F, DF, D, DB, B, c
time = 15
[Command]
name = "Strong Karakusa"
command =  ~F, DF, D, DB, B, ~c
time = 15

[Command]
name = "Medium Karakusa"
command =  ~F, DF, D, DB, B, b
time = 15
[Command]
name = "Medium Karakusa"
command =  ~F, DF, D, DB, B, ~b
time = 15

[Command]
name = "Light Karakusa"
command =  ~F, DF, D, DB, B, a
time = 15
[Command]
name = "Light Karakusa"
command =  ~F, DF, D, DB, B, ~a
time = 15

[Command]
name = "EX Tsurugi"
command =  ~D, DB, B, a+b
time = 15
[Command]
name = "EX Tsurugi"
command =  ~D, DB, B, ~a+b
time = 15

[Command]
name = "EX Tsurugi"
command =  ~D, DB, B, b+c
time = 15
[Command]
name = "EX Tsurugi"
command =  ~D, DB, B, ~b+c
time = 15

[Command]
name = "EX Tsurugi"
command =  ~D, DB, B, a+c
time = 15
[Command]
name = "EX Tsurugi"
command =  ~D, DB, B, ~a+c
time = 15

[Command]
name = "Strong Tsurugi"
command =  ~D, DB, B, c
time = 15
[Command]
name = "Strong Tsurugi"
command =  ~D, DB, B, ~c
time = 15

[Command]
name = "Medium Tsurugi"
command =  ~D, DB, B, b
time = 15
[Command]
name = "Medium Tsurugi"
command =  ~D, DB, B, ~b
time = 15

[Command]
name = "Light Tsurugi"
command =  ~D, DB, B, a
time = 15
[Command]
name = "Light Tsurugi"
command =  ~D, DB, B, ~a
time = 15

[Command]
name = "EX Oroshi"
command = ~D, DB, B, x+y
time = 15
[Command]
name = "EX Oroshi"
command = ~D, DB, B, ~x+y
time = 15
buffer.time = 7

[Command]
name = "EX Oroshi"
command = ~D, DB, B, y+z
time = 15
[Command]
name = "EX Oroshi"
command = ~D, DB, B, ~y+z
time = 15
buffer.time = 7

[Command]
name = "EX Oroshi"
command = ~D, DB, B, x+z
time = 15
[Command]
name = "EX Oroshi"
command = ~D, DB, B, ~x+z
time = 15
buffer.time = 7

[Command]
name = "Strong Oroshi"
command =  ~D, DB, B, z
time = 15
[Command]
name = "Strong Oroshi"
command =  ~D, DB, B, ~z
time = 15
buffer.time = 7

[Command]
name = "Medium Oroshi"
command =  ~D, DB, B, y
time = 15
[Command]
name = "Medium Oroshi"
command =  ~D, DB, B, ~y
time = 15
buffer.time = 7

[Command]
name = "Light Oroshi"
command =  ~D, DB, B, x
time = 15
[Command]
name = "Light Oroshi"
command =  ~D, DB, B, ~x
time = 15
buffer.time = 7

[Command]
name = "EX Fukiage"
command = ~F, D, DF, x+y
time = 15
[Command]
name = "EX Fukiage"
command = ~F, D, DF, ~x+y
time = 15

[Command]
name = "EX Fukiage"
command = ~F, D, DF, y+z
time = 15
[Command]
name = "EX Fukiage"
command = ~F, D, DF, ~y+z
time = 15

[Command]
name = "EX Fukiage"
command = ~F, D, DF, x+z
time = 15
[Command]
name = "EX Fukiage"
command = ~F, D, DF, ~x+z
time = 15

[Command]
name = "Strong Fukiage"
command = ~F, D, DF, z
time = 15
[Command]
name = "Strong Fukiage"
command = ~F, D, DF, ~z
time = 15 

[Command]
name = "Medium Fukiage"
command = ~F, D, DF, y
time = 15
[Command]
name = "Medium Fukiage"
command = ~F, D, DF, ~y
time = 15

[Command]
name = "Light Fukiage"
command =  ~F, D, DF, x
time = 15
[Command]
name = "Light Fukiage"
command =  ~F, D, DF, ~x
time = 15

[Command]
name = "EX Hayate"
command = ~D, DF, F, x+y
time = 10
[Command]
name = "EX Hayate"
command = ~D, DF, F, ~x+y
time = 10

[Command]
name = "EX Hayate"
command = ~D, DF, F, y+z
time = 10
[Command]
name = "EX Hayate"
command = ~D, DF, F, ~y+z
time = 10

[Command]
name = "EX Hayate"
command = ~D, DF, F, x+z
time = 10
[Command]
name = "EX Hayate"
command = ~D, DF, F, ~x+z
time = 10

[Command]
name = "Strong Hayate"
command = ~D, DF, F, z
time = 10
[Command]
name = "Strong Hayate"
command = ~D, DF, F, ~z
time = 10

[Command]
name = "Medium Hayate"
command = ~D, DF, F, y
time = 10
[Command]
name = "Medium Hayate"
command = ~D, DF, F, ~y
time = 10

[Command]
name = "Light Hayate"
command = ~D, DF, F, x
time = 10
[Command]
name = "Light Hayate"
command = ~D, DF, F, ~x
time = 10

[Command]
name = "Taunt2"
command = /$B, s
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

;Super Jump
[Command]
name = "superjump"
command = $D, $U

[Command]
name = "superjump"
command = ~D, U

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "recoverf"     ;Required (do not remove)
command = F, F
time = 20

[Command]
name = "recoverb"     ;Required (do not remove)
command = B, B
time = 20

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
name = "2k"
command = a+b
time = 1

[Command]
name = "2k"
command = a+c
time = 1

[Command]
name = "2k"
command = b+c
time = 1

[Command]
name = "2p"
command = x+y
time = 1

[Command]
name = "2p"
command = x+z
time = 1

[Command]
name = "2p"
command = y+z
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

[Command]
name = "chargeb"
command = /b
time = 1

[Command]
name = "chargey"
command = /y
time = 1

;---------------------------------------------------------------------------
; Single direction
[Command]
name = "Up"
command = U
time = 5

[Command]
name = "Forward"
command = F
time = 5

[Command]
name = "Down"
command = D
time = 5

[Command]
name = "Back"
command = B
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
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
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


[Statedef 10218]
type    = S
physics = S
anim=20218
ctrl = 0
[State 218 , 1]
type = posset
trigger1=1
x=root,pos x+ifelse((root,facing>0),-100,100)
y=root,pos y






 


[State 66]
Type = AssertSpecial
Trigger1 = 1
Flag = Noshadow





[State -2, ^bOp];
Type = VarSet
triggerall = RoundState = 2
trigger1 = NumEnemy = 1
trigger2 = NumEnemy = 2
trigger2 = EnemyNear,life > 0
var(36) = 0
IgnoreHitPause = 1

[State -2, ^bOp];
Type = VarSet
triggerall = RoundState = 2
trigger1 = NumEnemy = 2
trigger1 = EnemyNear,life <= 0
var(36) = 1
IgnoreHitPause = 1












[State -2:         VarSet]
type     = VarSet
trigger1=fvar(5)<=-1
trigger1=fvar(5) !=-99999
trigger1=root,movetype=H||(root,stateno=[150,159])||(root,stateno=[740,742])
fv = 5
value =-fvar(5)
Ignorehitpause=1










[State -2 , 1]
type = parentVarset
triggerall=root,fvar(33)>0 && root,fvar(33)-fvar(5) !=[-999,999]
triggerall=root,fvar(32)>0 && root,fvar(32)-fvar(5) !=[-999,999]
triggerall=root,fvar(39)>0 && root,fvar(39)-fvar(5) !=[-999,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-999,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-999,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
trigger1=root,fvar(30)>=0
trigger1=fvar(5) >0
fv = 30
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(30)<0 
fv =  30
value =-root,fvar(30)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(33)=0||root,fvar(33)-fvar(5) =[-999,999]
triggerall=root,fvar(32)>0 && root,fvar(32)-fvar(5) !=[-999,999]
triggerall=root,fvar(39)>0 && root,fvar(39)-fvar(5) !=[-999,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-999,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-999,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
trigger1=root,fvar(33)>=0
trigger1=fvar(5) >0
fv = 33
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(33)<0 
fv =  33
value =-root,fvar(33)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(32)=0||root,fvar(32)-fvar(5) =[-999,999]
triggerall=root,fvar(39)>0 && root,fvar(39)-fvar(5) !=[-999,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-999,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-999,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
trigger1=root,fvar(32)>=0
trigger1=fvar(5) >0
fv = 32
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(32)<0 
fv =  32
value =-root,fvar(32)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(39)=0||root,fvar(39)-fvar(5) =[-999,999]
triggerall=root,fvar(38)>0 && root,fvar(38)-fvar(5) !=[-999,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-999,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
trigger1=root,fvar(39)>=0
trigger1=fvar(5) >0
fv = 39
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(39)<0 
fv =  39
value =-root,fvar(39)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(38)=0||root,fvar(38)-fvar(5) =[-999,999]
triggerall=root,fvar(37)>0 && root,fvar(37)-fvar(5) !=[-999,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
trigger1=root,fvar(38)>=0
trigger1=fvar(5) >0
fv = 38
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(38)<0 
fv =  38
value =-root,fvar(38)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(37)=0||root,fvar(37)-fvar(5) =[-999,999]
triggerall=root,fvar(36)>0 && root,fvar(36)-fvar(5) !=[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
trigger1=root,fvar(37)>=0
trigger1=fvar(5) >0
fv = 37
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(37)<0 
fv =  37
value =-root,fvar(37)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(36)=0||root,fvar(36)-fvar(5) =[-999,999]
triggerall=root,fvar(35)>0 && root,fvar(35)-fvar(5) !=[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
trigger1=root,fvar(36)>=0
trigger1=fvar(5) >0
fv = 36
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(36)<0 
fv =  36
value =-root,fvar(36)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(35)=0||root,fvar(35)-fvar(5) =[-999,999]
triggerall=root,fvar(34)>0 && root,fvar(34)-fvar(5) !=[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
trigger1=root,fvar(35)>=0
trigger1=fvar(5) >0
fv = 35
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(35)<0 
fv =  35
value =-root,fvar(35)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(34)=0||root,fvar(34)-fvar(5) =[-999,999]
triggerall=root,fvar(31)>0 && root,fvar(31)-fvar(5) !=[-999,999]
trigger1=root,fvar(34)>=0
trigger1=fvar(5) >0
fv = 34
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(34)<0 
fv =  34
value =-root,fvar(34)
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(31)=0||root,fvar(31)-fvar(5) =[-999,999]
trigger1=root,fvar(31)>=0
trigger1=fvar(5) >0
fv = 31
value =-fvar(5)
Ignorehitpause=1
[State -2 , 1]
type = parentvarset
triggerall=enemynear(Var(36)),stateno !=var(13)
trigger1=root,fvar(31)<0 
fv =  31
value =-root,fvar(31)





[State -2 , 1]
type = parentVarset
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
triggerall=root,fvar(24)>1 && root,fvar(24)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(29)>1 && root,fvar(29)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(26)>1 && root,fvar(26)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(27)>1 && root,fvar(27)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(28)>1 && root,fvar(28)-enemynear(Var(36)),stateno*1000 !=[-999,999]
trigger1=root,fvar(25)=0 && var(14)<2
fv = 25
value =1
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(25)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 25
value =0
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(25)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 25
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))
[State -2 , 1]
type = parentVarset
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
triggerall=root,fvar(29)>1 && root,fvar(29)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(26)>1 && root,fvar(26)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(27)>1 && root,fvar(27)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(28)>1 && root,fvar(28)-enemynear(Var(36)),stateno*1000 !=[-999,999]
trigger1=root,fvar(24)=0 && var(14)<2
fv = 24
value =1
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(24)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 24
value =0
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(24)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 24
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))
[State -2 , 1]
type = parentVarset 
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
triggerall=root,fvar(26)>1 && root,fvar(26)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(27)>1 && root,fvar(27)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(28)>1 && root,fvar(28)-enemynear(Var(36)),stateno*1000 !=[-999,999]
trigger1=root,fvar(29)=0 && var(14)<2
fv = 29
value =1
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(29)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 29
value =0
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(29)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 29
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))
[State -2 , 1]
type = parentVarset
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
triggerall=root,fvar(27)>1 && root,fvar(27)-enemynear(Var(36)),stateno*1000 !=[-999,999]
triggerall=root,fvar(28)>1 && root,fvar(28)-enemynear(Var(36)),stateno*1000 !=[-999,999]
trigger1=root,fvar(26)=0 && var(14)<2
fv = 26
value =1
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(26)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 26
value =0
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(26)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 26
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))
[State -2 , 1]
type = parentVarset
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
triggerall=root,fvar(28)>1 && root,fvar(28)-enemynear(Var(36)),stateno*1000 !=[-999,999]
trigger1=root,fvar(27)=0 && var(14)<2
fv = 27
value =1
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(27)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 27
value =0
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(27)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 27
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))
[State -2 , 1]
type = parentVarset
triggerall = enemynear(Var(36)),movetype=A && numenemy=1
trigger1=root,fvar(28)=0 && var(14)<2
fv = 28
value =1
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(28)=1 
trigger1=enemynear(Var(36)),movetype=H
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=enemynear(Var(36)),HitDefAttr =SCA,AA
trigger4=enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13)
fv = 28
value =0
[State -2 , 1]
type = parentVarset
triggerall=root,fvar(28)=1 
triggerall=var(14)>=10;||inguarddist
trigger1=enemynear(Var(36)),stateno !=var(13)
fv = 28
value =(var(13)*1000)+ifelse(var(14)>999,999,var(14))











[State -2:         VarSet]
type     = VarSet
trigger1=fvar(5)>0
fv = 5
value =-99999
Ignorehitpause=1
[State -2 , 1]
type = Varset
triggerall=fvar(5) =-99999
trigger1=var(13) !=enemynear(Var(36)),stateno
fv = 5
value =0
Ignorehitpause=1
[State -2 , 1]
type = Varset
triggerall=fvar(5) !=-99999
triggerall=((root,movetype =H) ||root,stateno !=[800,899])
trigger1=1
fv = 5
value =0
Ignorehitpause=1
[State -2:         VarSet]
type     = VarSet
triggerall=fvar(5)<=0
triggerall=fvar(5) !=-99999
triggerall=root,movetype!=H
triggerall=root,stateno<200||root,movetype=A
trigger1=var(13)>0
trigger1=var(13) =enemynear(Var(36)),stateno
fv = 5 
value =-(var(13)*1000)-ifelse(var(14)>999,999,var(14))
Ignorehitpause=1













[State -2:         VarSet] 
type     = VarSet
triggerall=var(50)=[0,999999]
trigger1=(root,stateno=800)||(root,stateno=850)||(root,stateno=[200,499])
trigger1=(var(13)=0)||(var(35)=[1,8])||(fvar(5)=-99999)||(root,prevstateno=105)
v = 50 
value =var(50)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 50
value =var(50)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=[1,999]
trigger1=(root,stateno=800)||(root,stateno=850)||(root,stateno=[200,499])
trigger1=var(13)>0 
v = 50
value =-var(50)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=0
trigger1=(root,stateno=800)||(root,stateno=850)||(root,stateno=[200,499])
trigger1=var(13)>0 
v = 50
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=[-1999999,-1]
trigger1=(root,stateno=[120,159])||(root,movetype!=H)
trigger1=(root,Ctrl)||(root,StateNo =[120,149])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200&&root,inguarddist=0)||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 50
value =ifelse(var(50)<=-1000000,-var(50)-1000000,ifelse(var(50)>=-999,0,-Var(50)-(ceil(-Var(50)/1000)-ifelse(-Var(50)-(ceil(-Var(50)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 50
value =-var(50)
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 50
value =var(50)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(50)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(50)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(50)-(ceil(Var(50)/1000)-ifelse(Var(50)-(ceil(Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 50
value =var(50)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[0,999999]
trigger1=(root,stateno=800)||(root,stateno=850)||(root,stateno=[200,499])
trigger1=(var(13)=0)||(var(35)=[1,8])||(fvar(5)=-99999)||(root,prevstateno=105)
v = 51
value =var(51)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 51
value =var(51)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[1,999]
trigger1=(root,stateno=800)||(root,stateno=850)||(root,stateno=[200,499])
trigger1=var(13)>0 
v = 51
value =-var(51)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=0 && var(50)=[999,999999]
trigger1=(root,stateno=800)||(root,stateno=850)||(root,stateno=[200,499])
trigger1=var(13)>0 
v = 51
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[-1999999,-1]
trigger1=(root,stateno=[120,159])||(root,movetype!=H)
trigger1=(root,Ctrl)||(root,StateNo =[120,149])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200&&root,inguarddist=0)||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 51
value =ifelse(var(51)<=-1000000,-var(51)-1000000,ifelse(var(51)>=-999,0,-Var(51)-(ceil(-Var(51)/1000)-ifelse(-Var(51)-(ceil(-Var(51)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 51
value =-var(51)
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 51
value =var(51)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(51)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(51)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(51)-(ceil(Var(51)/1000)-ifelse(Var(51)-(ceil(Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 51
value =var(51)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[0,999999]
trigger1=(root,stateno=800)||(root,stateno=850)||(root,stateno=[200,499])
trigger1=(var(13)=0)||((var(35)!=[1,8])&&(var(35)!=[100,140])&&fvar(5)!=-99999)||(root,prevstateno=105)
v = 52
value =var(52)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 52
value =var(52)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[1,999]
trigger1=(root,stateno=800)||(root,stateno=850)||(root,stateno=[200,499])
trigger1=var(13)>0 
v = 52
value =-var(52)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=0
trigger1=(root,stateno=800)||(root,stateno=850)||(root,stateno=[200,499])
trigger1=var(13)>0 
v = 52
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[-1999999,-1]
trigger1=(root,stateno=[120,159])||(root,movetype!=H)
trigger1=(root,Ctrl)||(root,StateNo =[120,149])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200&&root,inguarddist=0)||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 52
value =ifelse(var(52)<=-1000000,-var(52)-1000000,ifelse(var(52)>=-999,0,-Var(52)-(ceil(-Var(52)/1000)-ifelse(-Var(52)-(ceil(-Var(52)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 52
value =-var(52)
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 52
value =var(52)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(52)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(52)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(52)-(ceil(Var(52)/1000)-ifelse(Var(52)-(ceil(Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 52
value =var(52)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[0,999999]
trigger1=(root,stateno=800)||(root,stateno=850)||(root,stateno=[200,499])
trigger1=(var(13)=0)||((var(35)!=[1,8])&&(var(35)!=[100,140])&&fvar(5)!=-99999)||(root,prevstateno=105);||numhelper(4010)
v = 53
value =var(53)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 53
value =var(53)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[1,999]
trigger1=(root,stateno=800)||(root,stateno=850)||(root,stateno=[200,499])
trigger1=var(13)>0 
v = 53
value =-var(53)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=0 && var(52)=[999,999999]
trigger1=(root,stateno=800)||(root,stateno=850)||(root,stateno=[200,499])
trigger1=var(13)>0 
v = 53
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[-1999999,-1]
trigger1=(root,stateno=[120,159])||(root,movetype!=H)
trigger1=(root,Ctrl)||(root,StateNo =[120,149])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200&&root,inguarddist=0)||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 53
value =ifelse(var(53)<=-1000000,-var(53)-1000000,ifelse(var(53)>=-999,0,-Var(53)-(ceil(-Var(53)/1000)-ifelse(-Var(53)-(ceil(-Var(53)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 53
value =-var(53)
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 53
value =var(53)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(53)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(53)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(53)-(ceil(Var(53)/1000)-ifelse(Var(53)-(ceil(Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 53
value =var(53)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[0,999999]
trigger1=(root,stateno=[700,730])
trigger1=(var(13)=0)||root,stateno=198
v = 54
value =var(54)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 54
value =var(54)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[1,999]
trigger1=(root,stateno=[700,730])
trigger1=var(13)>0 
v = 54
value =-var(54)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=0
trigger1=(root,stateno=[700,730])
trigger1=var(13)>0 
v = 54
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200)||root,ctrl
v = 54
value =ifelse(var(54)<=-1000000,-var(54)-1000000,ifelse(var(54)>=-999,0,-Var(54)-(ceil(-Var(54)/1000)-ifelse(-Var(54)-(ceil(-Var(54)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 54
value =-var(54)
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 54
value =var(54)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(54)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(54)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(54)-(ceil(Var(54)/1000)-ifelse(Var(54)-(ceil(Var(54)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 54
value =var(54)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=[0,999999]
trigger1=(root,stateno=[700,730])
trigger1=(var(13)=0)
v = 55
value =var(55)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 55
value =var(55)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=(var(55)=[1,999]) 
trigger1=(root,stateno=[700,730])
trigger1=var(13)>0 
v = 55
value =-var(55)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=0 && (var(54)=[999,999999])
trigger1=(root,stateno=[700,730])
trigger1=var(13)>0 
v = 55
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200)||root,ctrl
v = 55
value =ifelse(var(55)<=-1000000,-var(55)-1000000,ifelse(var(55)>=-999,0,-Var(55)-(ceil(-Var(55)/1000)-ifelse(-Var(55)-(ceil(-Var(55)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 55
value =-var(55)
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 55
value =var(55)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(55)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(55)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(55)-(ceil(Var(55)/1000)-ifelse(Var(55)-(ceil(Var(55)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 55
value =var(55)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[0,999999]
trigger1=(root,stateno=[3000,3999])||(root,stateno=[2000,2999])
trigger1=(var(13)=0)
v = 57
value =var(57)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 57
value =var(57)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[1,999]
trigger1=(root,stateno=[3000,3999])||(root,stateno=[2000,2999])
trigger1=var(13)>0 
v = 57
value =-var(57)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=0 ;&& var(56)=[999,999999]
trigger1=(root,stateno=[3000,3999])||(root,stateno=[2000,2999])
trigger1=var(13)>0 
v = 57
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200);||(root,ctrl)||(root,StateNo =[120,149])
v = 57
value =ifelse(var(57)<=-1000000,-var(57)-1000000,ifelse(var(57)>=-999,0,-Var(57)-(ceil(-Var(57)/1000)-ifelse(-Var(57)-(ceil(-Var(57)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[-1999999,-1]
trigger1=(root,Ctrl)||(root,StateNo =[120,149])||(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 57
value =-var(57)
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 57
value =var(57)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(57)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(57)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(57)-(ceil(Var(57)/1000)-ifelse(Var(57)-(ceil(Var(57)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 57
value =var(57)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[0,999999]
trigger1=(root,stateno=[3000,3999])||(root,stateno=[2000,2999])
trigger1=(var(13)=0)
v = 58
value =var(58)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 58
value =var(58)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[1,999]
trigger1=(root,stateno=[3000,3999])||(root,stateno=[2000,2999])
trigger1=var(13)>0 
v = 58
value =-var(58)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=0 && var(57)=[999,999999]
trigger1=(root,stateno=[3000,3999])||(root,stateno=[2000,2999])
trigger1=var(13)>0 
v = 58
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200);||root,ctrl||(root,StateNo =[120,149])
v = 58
value =ifelse(var(58)<=-1000000,-var(58)-1000000,ifelse(var(58)>=-999,0,-Var(58)-(ceil(-Var(58)/1000)-ifelse(-Var(58)-(ceil(-Var(58)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[-1999999,-1]
trigger1=(root,Ctrl)||(root,StateNo =[120,149])||(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 58
value =-var(58)
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 58
value =var(58)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(58)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(58)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(58)-(ceil(Var(58)/1000)-ifelse(Var(58)-(ceil(Var(58)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 58
value =var(58)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[0,999999]
triggerall=(root,stateno=[1400,1499])
trigger1=(var(13)=0)
v = 56
value =var(56)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 56
value =var(56)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[1,999]
triggerall=(root,stateno=[1400,1499])
trigger1=var(13)>0 
v = 56
value =-var(56)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=0 
triggerall=(root,stateno=[1400,1499])
trigger1=var(13)>0 
v = 56
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200)||(root,ctrl)
v = 56
value =ifelse(var(56)<=-1000000,-var(56)-1000000,ifelse(var(56)>=-999,0,-Var(56)-(ceil(-Var(56)/1000)-ifelse(-Var(56)-(ceil(-Var(56)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 56
value =-var(56)
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 56
value =var(56)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(56)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(56)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(56)-(ceil(Var(56)/1000)-ifelse(Var(56)-(ceil(Var(56)/1000)*1000)<0,1,0))*1000)-(ceil(p2stateno/10)-ifelse(p2stateno-(ceil(p2stateno/10)*10)<0,1,0)) =0
v = 56
value =var(56)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[0,999999]
triggerall=(root,stateno=[1400,1499])
trigger1=(var(13)=0)
v = 59
value =var(59)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[1000000,1999999]
trigger1=(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 59
value =var(59)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[1,999]
triggerall=(root,stateno=[1400,1499])
trigger1=var(13)>0 
v = 59
value =-var(59)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=0 && var(56)=[999,999999]
triggerall=(root,stateno=[1400,1499])
trigger1=var(13)>0 
v = 59
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[-1999999,-1]
trigger1=(root,Ctrl)||(root,StateNo =[120,149])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200&&root,inguarddist=0)||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 59
value =ifelse(var(59)<=-1000000,-var(59)-1000000,ifelse(var(59)>=-999,0,-Var(59)-(ceil(-Var(59)/1000)-ifelse(-Var(59)-(ceil(-Var(59)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 59
value =-var(59)
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 59
value =var(59)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(59)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(59)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(59)-(ceil(Var(59)/1000)-ifelse(Var(59)-(ceil(Var(59)/1000)*1000)<0,1,0))*1000)-(ceil(p2stateno/10)-ifelse(p2stateno-(ceil(p2stateno/10)*10)<0,1,0)) =0
v = 59
value =var(59)+2000000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(46)=[1,999]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT 
v = 46
value =-root,var(46)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(46)=0
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT 
v = 46
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(46)=[-1999999,-1]
trigger1=1;(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 46
value =-root,var(46)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(46)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 46
value =root,var(46)-2000000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(46)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(root,var(46)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(root,Var(46)-(ceil(root,Var(46)/1000)-ifelse(root,Var(46)-(ceil(root,Var(46)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
trigger3=numenemy>1&&(enemynear(0),life>0&&enemynear(1),life>0)
v = 46
value =root,var(46)+2000000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(47)=[1,999]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT
v = 47
value =-root,var(47)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(47)=0 && root,var(46)=[999,999999]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT
v = 47
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(47)=[-1999999,-1]
trigger1=1;(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 47
value =-root,var(47)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(47)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 47
value =root,var(47)-2000000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(47)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(root,var(47)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(root,Var(47)-(ceil(root,Var(47)/1000)-ifelse(root,Var(47)-(ceil(root,Var(47)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
trigger3=numenemy>1&&(enemynear(0),life>0&&enemynear(1),life>0)
v = 47
value =root,var(47)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[0,999999]
triggerall=(root,stateno=47)
trigger1=(var(13)=0)||root,stateno=198
v = 44
value =var(44)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 44
value =var(44)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[1,999]
triggerall=(root,stateno=47)
trigger1=var(13)>0 
v = 44
value =-var(44)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=0
triggerall=(root,stateno=47)
trigger1=var(13)>0 
v = 44
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200)||(root,ctrl&&root,statetype!=A)
v = 44
value =ifelse(var(44)<=-1000000,-var(44)-1000000,ifelse(var(44)>=-999,0,-Var(44)-(ceil(-Var(44)/1000)-ifelse(-Var(44)-(ceil(-Var(44)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 44
value =-var(44)
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 44
value =var(44)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(44)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(44)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(44)-(ceil(Var(44)/1000)-ifelse(Var(44)-(ceil(Var(44)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 44
value =var(44)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[0,999999]
triggerall=(root,stateno=47)
trigger1=(var(13)=0)
v = 45
value =var(45)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 45
value =var(45)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[1,999]
triggerall=(root,stateno=47)
trigger1=var(13)>0 
v = 45
value =-var(45)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=0 && var(44)=[999,999999]
triggerall=(root,stateno=47)
trigger1=var(13)>0 
v = 45
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200)||(root,ctrl&&root,statetype!=A)
v = 45
value =ifelse(var(45)<=-1000000,-var(45)-1000000,ifelse(var(45)>=-999,0,-Var(45)-(ceil(-Var(45)/1000)-ifelse(-Var(45)-(ceil(-Var(45)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 45
value =-var(45)
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 45
value =var(45)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(45)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(45)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(45)-(ceil(Var(45)/1000)-ifelse(Var(45)-(ceil(Var(45)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 45
value =var(45)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(42)=[0,999999]
trigger1=(root,stateno=5201)
trigger1=(var(13)=0)||root,stateno=198
v = 42
value =var(42)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(42)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 42
value =var(42)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(42)=[1,999]
trigger1=(root,stateno=5201)
trigger1=var(13)>0 
v = 42
value =-var(42)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(42)=0
trigger1=(root,stateno=5201)
trigger1=var(13)>0 
v = 42
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(42)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200)||(root,ctrl && root,statetype!=A)
v = 42
value =ifelse(var(42)<=-1000000,-var(42)-1000000,ifelse(var(42)>=-999,0,-Var(42)-(ceil(-Var(42)/1000)-ifelse(-Var(42)-(ceil(-Var(42)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(42)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200 && root,stateno!=5201)||(root,stateno=[5100,5150]);||root,ctrl
v = 42
value =-var(42)
[State -2:         VarSet]
type     = VarSet
triggerall=var(42)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 42
value =var(42)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(42)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(42)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(42)-(ceil(Var(42)/1000)-ifelse(Var(42)-(ceil(Var(42)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 42
value =var(42)+2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(43)=[0,999999]
trigger1=(root,stateno=5201)
trigger1=(var(13)=0)
v = 43
value =var(43)+1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(43)=[1000000,1999999]
trigger1=root,ctrl||(root,ctrl||(root,stateno=[20,29])||(root,stateno=[130,159]))
v = 43
value =var(43)-1000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(43)=[1,999]
trigger1=(root,stateno=5201)
trigger1=var(13)>0 
v = 43
value =-var(43)-((ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))*1000)
[State -2:         VarSet]
type     = VarSet
triggerall=var(43)=0 && var(42)=[999,999999]
trigger1=(root,stateno=5201)
trigger1=var(13)>0 
v = 43
value =-(ceil(Var(13)/10)-ifelse(Var(13)-(ceil(Var(13)/10)*10)<0,1,0))
[State -2:         VarSet]
type     = VarSet
triggerall=var(43)=[-1999999,-1]
trigger1=(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200)||(root,ctrl && root,statetype!=A)
v = 43
value =ifelse(var(43)<=-1000000,-var(43)-1000000,ifelse(var(43)>=-999,0,-Var(43)-(ceil(-Var(43)/1000)-ifelse(-Var(43)-(ceil(-Var(43)/1000)*1000)<0,1,0))*1000))
[State -2:         VarSet]
type     = VarSet
triggerall=var(43)=[-1999999,-1]
trigger1=(root,movetype=H && root,stateno>=200 && root,stateno!=5201)||(root,stateno=[5100,5150]);||root,ctrl
v = 43
value =-var(43)
[State -2:         VarSet]
type     = VarSet
triggerall=var(43)>=2000000
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 43
value =var(43)-2000000
[State -2:         VarSet]
type     = VarSet
triggerall=var(43)=[1,999999]
triggerall=enemynear(Var(36)),movetype=A && numenemy=1
trigger1=(var(43)-(enemynear(Var(36)),stateno*100) =[-999,999])
trigger2=(Var(43)-(ceil(Var(43)/1000)-ifelse(Var(43)-(ceil(Var(43)/1000)*1000)<0,1,0))*1000)-(ceil((enemynear(Var(36)),stateno)/10)-ifelse((enemynear(Var(36)),stateno)-(ceil((enemynear(Var(36)),stateno)/10)*10)<0,1,0)) =0
v = 43
value =var(43)+2000000









 





 

[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(48)=[-99999,0]
triggerall=(root,stateno=131)||(root,statetype=C&&root,stateno=[152,153])
trigger1=var(13)=[1,99999]
v = 48
value =-var(13)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(48)=[-99999,-1]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger2=root,life<=0
trigger3=enemynear(Var(36)),movetype !=A
trigger4=root,stateno=[800,899]
trigger5=root,movetype=A
trigger6=root,stateno=[2100,2199]
trigger7=root,stateno=140
v = 48
value =0
[State -2:         VarSet]
type     = parentVarSet 
triggerall=root,var(48)=[-99999,-1]
triggerall=(root,movetype !=H)||(root,stateno=[120,159])
trigger1=root,statetype !=C
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=root,stateno !=[130,159]
trigger4=(root,stateno!=131)&&(root,stateno!=[152,153])
v = 48
value =0
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(48)<-99999
trigger1=(root,stateno=[120,159])||root,movetype !=H
v = 48
value =0
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(48)=[-199999,-100000]
trigger1=1
v = 48
value =-root,var(48)-100000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(48)=[-99999,-1]
trigger1=(root,stateno=[5000,5150])||(root,statetype=L)||((root,stateno >=200) && (root,movetype=H))
v = 48
value =root,var(48)-100000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(49)=[-99999,0]
triggerall=root,var(48)>0&&root,var(48)!=var(13)
triggerall=(root,stateno=131)||(root,statetype=C&&root,stateno=[152,153])
trigger1=var(13)=[1,99999]
v = 49
value =-var(13)
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(49)=[-99999,-1]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger2=root,life<=0
trigger3=enemynear(Var(36)),movetype !=A
trigger4=root,stateno=[800,899]
trigger5=root,movetype=A
trigger6=root,stateno=[2100,2199]
trigger7=root,stateno=140
trigger8=root,var(48)<=0||root,var(48)=-root,var(49)
v = 49
value =0
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(49)=[-99999,-1]
triggerall=(root,movetype !=H)||(root,stateno=[120,159])
trigger1=root,statetype !=C
trigger2=enemynear(Var(36)),HitDefAttr =SCA,AT
trigger3=root,stateno !=[130,159]
trigger4=(root,stateno!=131)&&(root,stateno!=[152,153])
v = 49
value =0
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(49)<-99999
trigger1=(root,stateno=[120,159])||root,movetype !=H
v = 49
value =0
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(49)=[-199999,-100000]
trigger1=1
v = 49
value =-root,var(49)-100000
[State -2:         VarSet]
type     = parentVarSet
triggerall=root,var(49)=[-99999,-1]
trigger1=(root,stateno=[5000,5150])||(root,statetype=L)||((root,stateno >=200) && (root,movetype=H))
v = 49
value =root,var(49)-100000

















[State -2:         VarSet, Damage]
type     = VarSet
triggerall = enemynear(Var(36)),movetype=A
triggerall=numenemy=1||enemynear(0),life<=0||enemynear(1),life<=0
trigger1 =enemynear(Var(36)),HitDefAttr =SCA,HA
trigger2=var(15) - (enemynear(Var(36)),power*100)>=100000
v        = 15
value    =var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)+100
[State -2:         VarSet, Damage]
type     = VarSet
triggerall=numenemy=1||enemynear(0),life<=0||enemynear(1),life<=0
trigger1=var(15)-((ceil(var(15)/1000)-ifelse(var(15)-(ceil(var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
v        = 15
value    = var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)+((ceil(enemynear(Var(36)),power/10)-ifelse(enemynear(Var(36)),power-(ceil(enemynear(Var(36)),power/10)*10)<0,1,0))*1000)
[State -2:         VarSet, Damage]
type     = VarSet
triggerall=var(15)-((ceil(var(15)/1000)-ifelse(var(15)-(ceil(var(15)/1000)*1000)<0,1,0))*1000)=[100,299]
trigger1 = enemynear(Var(36)),movetype !=A
v        = 15
value    = var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)

[State -2:         VarSet]
type     = varset
trigger1=root,stateno=131||(root,stateno=130&&root,time<=1&&prevstateno=131)
;trigger1=root,inguarddist=0
;trigger1=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)=0
trigger2=root,statetype=L||root,stateno=[18300,18399]
trigger2=numpartner=0
trigger2=enemynear(Var(36)),movetype=A||root,stateno=[18300,18399]
trigger2=var(14)<=10||root,stateno=[18300,18399]
trigger3=(root,facing=1 && enemynear(Var(36)),pos x<root,pos x)||(root,facing=-1 && enemynear(Var(36)),pos x>root,pos x)
trigger3=enemynear(Var(36)),movetype=A && root,inguarddist=0
trigger3=numpartner=0 && numenemy=1
trigger4=numpartner=0 && numenemy=1
trigger4=(root,facing=1 && enemynear(Var(36)),pos x<=root,pos x)||(root,facing=-1 && enemynear(Var(36)),pos x>=root,pos x)||enemynear(Var(36)),vel x !=0
trigger4=enemynear(Var(36)),statetype=A && (var(14)<=20||(enemynear(Var(36)),vel x=0 && enemynear(Var(36)),vel y>0)) && enemynear(Var(36)),movetype =A 
trigger5=(var(35)=[100,101])||(var(35)=[200,201])
v        = 15
value    =((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)+ifelse(root,stateno=131&& root,inguarddist=0,1,10)
[State -2, Run Back]
type     = varadd
triggerall=numpartner=0
triggerall=numenemy=1
triggerall=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)=0
triggerall=enemynear(Var(36)),movetype=A && root,inguarddist=0
trigger1=root,fvar(30)>999 && root,fvar(30)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger1=root,fvar(30)>999 && root,fvar(30)-((ceil(root,fvar(30)/1000)-ifelse(root,fvar(30)-(ceil(root,fvar(30)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger2=root,fvar(33)>999 && root,fvar(33)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger2=root,fvar(33)>999 && root,fvar(33)-((ceil(root,fvar(33)/1000)-ifelse(root,fvar(33)-(ceil(root,fvar(33)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger3=root,fvar(32)>999 && root,fvar(32)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger3=root,fvar(32)>999 && root,fvar(32)-((ceil(root,fvar(32)/1000)-ifelse(root,fvar(32)-(ceil(root,fvar(32)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger4=root,fvar(39)>999 && root,fvar(39)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger4=root,fvar(39)>999 && root,fvar(39)-((ceil(root,fvar(39)/1000)-ifelse(root,fvar(39)-(ceil(root,fvar(39)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger5=root,fvar(38)>999 && root,fvar(38)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger5=root,fvar(38)>999 && root,fvar(38)-((ceil(root,fvar(38)/1000)-ifelse(root,fvar(38)-(ceil(root,fvar(38)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger6=root,fvar(37)>999 && root,fvar(37)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger6=root,fvar(37)>999 && root,fvar(37)-((ceil(root,fvar(37)/1000)-ifelse(root,fvar(37)-(ceil(root,fvar(37)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger7=root,fvar(36)>999 && root,fvar(36)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger7=root,fvar(36)>999 && root,fvar(36)-((ceil(root,fvar(36)/1000)-ifelse(root,fvar(36)-(ceil(root,fvar(36)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger8=root,fvar(35)>999 && root,fvar(35)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger8=root,fvar(35)>999 && root,fvar(35)-((ceil(root,fvar(35)/1000)-ifelse(root,fvar(35)-(ceil(root,fvar(35)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger9=root,fvar(34)>999 && root,fvar(34)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger9=root,fvar(34)>999 && root,fvar(34)-((ceil(root,fvar(34)/1000)-ifelse(root,fvar(34)-(ceil(root,fvar(34)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
trigger10=root,fvar(31)>999 && root,fvar(31)-(enemynear(Var(36)),stateno*1000)=[-2,999]
trigger10=root,fvar(31)>999 && root,fvar(31)-((ceil(root,fvar(31)/1000)-ifelse(root,fvar(31)-(ceil(root,fvar(31)/1000)*1000)<0,1,0))*1000) - var(14)=[-2,2]
v        = 15
value    =10
[State -2:         VarSet]
type     = varadd
trigger1=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)=[1,98]
trigger1=root,movetype !=H
trigger1=root,statetype !=L
trigger1=root,stateno !=[5000,5150]
trigger1=root,stateno !=[8300,8305]
trigger1=root,stateno !=[18300,18305]
v        = 15
value    =1
[State -2:         VarSet]
type     = varset
trigger1=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)=[3,9]
trigger2=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)>=20
trigger3=root,stateno=[150,159]
trigger3=var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)>1||var(15)-((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)>10
trigger4=root,stateno=[5000,5059]
;trigger5=inguarddist
v        = 15
value    =((ceil(var(15)/100)-ifelse(var(15)-(ceil(var(15)/100)*100)<0,1,0))*100)





[State -2 , 1]
type = Varadd
trigger1=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)=[1,998]
v = 18
value =1
[State -2 , 1]
type = Varadd
trigger1=enemynear(Var(36)),life>0
trigger1=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)=0
trigger1=enemynear(Var(36)),stateno=[5100,5120]
v = 18
value =1
[State -2 , 1]
type = Varset
trigger1=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)>=1
trigger1=enemynear(Var(36)),stateno =[5000,5059]
v = 18
value =((ceil(var(53)/1000)-ifelse(var(53)-(ceil(var(53)/1000)*1000)<0,1,0))*1000)
[State -2 , 1]
type = Varset
triggerall=var(18)=[1000,1999]
trigger1=enemynear(Var(36)),stateno =[0,199]
trigger2=enemynear(Var(36)),movetype=A
trigger3=enemynear(Var(36)),stateno=[120,159]
v = 18
value =1000
[State -2 , 1]
type = Varset
triggerall=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)=[1,999]
trigger1=enemynear(Var(36)),stateno =[0,199]
trigger2=enemynear(Var(36)),movetype=A
trigger3=enemynear(Var(36)),stateno=[120,159]
v = 18
value =(var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000))*1000
[State -2 , 1]
type = Varset
trigger1=var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)=[1,999]
trigger1=(enemynear(Var(36)),stateno !=[5100,5110])&&(enemynear(Var(36)),stateno !=[0,199])
trigger1=(enemynear(Var(36)),vel x>2||enemynear(Var(36)),statetype=A) && numenemy=1 && numpartner=0
v = 18
value =1000+var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)
[State -2 , 1]
type = Varset
trigger1=var(18)-((ceil(var(18)/100000)-ifelse(var(18)-(ceil(var(18)/100000)*100000)<0,1,0))*100000)=[1,9999]
trigger1=(root,stateno=200)||(root,stateno=220)||(root,stateno=225)||(root,stateno=300)
trigger1=enemynear(Var(36)),statetype=A && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>200 && root,time<=1
trigger1=numenemy=1 && numpartner=0
v = 18
value =10000
[State -2 , 1]
type = Varset
trigger1=var(18)-((ceil(var(18)/100000)-ifelse(var(18)-(ceil(var(18)/100000)*100000)<0,1,0))*100000)=[10000,19999]
trigger1=(root,movecontact)||enemynear(Var(36)),life<=0||enemynear(Var(36)),stateno<200||enemynear(Var(36)),movetype=A||root,movetype=H
v = 18
value =-10000













[State -2 , 1]
type = Varadd
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)=30
trigger1=(enemynear(Var(36)),stateno=[5100,5150])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno=[800,899])
v = 19
value =-29
[State -2 , 1]
type = Varset
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)=20
trigger2=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)=30
trigger2=enemynear(Var(36)),movetype=A||enemynear(Var(36)),stateno=[0,199]
v = 19
value =((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)
[State -2 , 1]
type = Varadd
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)>1
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)<=19
v = 19
value =1
[State -2 , 1]
type = Varadd
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)=0
trigger1=(enemynear(Var(36)),stateno=[5100,5150])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno=[800,899])||(enemynear(Var(36)),statetype=A && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=1000)
v = 19
value =ifelse((enemynear(Var(36)),stateno=[5100,5150])||(enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno=[800,899]),1,30)
[State -2 , 1]
type = Varadd
trigger1=var(19)-((ceil(var(19)/100)-ifelse(var(19)-(ceil(var(19)/100)*100)<0,1,0))*100)=1
trigger1=enemynear(Var(36)),movetype=A||enemynear(Var(36)),stateno=[0,199]
v = 19
value =1
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/1000)-ifelse(var(19)-(ceil(var(19)/1000)*1000)<0,1,0))*1000)=[0,99]
triggerall=root,inguarddist
trigger1=var(13)<=0 && enemynear(Var(36)),movetype !=A
v = 19
value =100
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/1000)-ifelse(var(19)-(ceil(var(19)/1000)*1000)<0,1,0))*1000)=[100,199]
trigger1=root,inguarddist=0
v = 19
value =-100
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/10000)-ifelse(var(19)-(ceil(var(19)/10000)*10000)<0,1,0))*10000)=[0,999]
trigger1=var(13)<=0 && root,movetype =A
v = 19
value =1000
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/10000)-ifelse(var(19)-(ceil(var(19)/10000)*10000)<0,1,0))*10000)=[1000,1999]
trigger1=root,ctrl
trigger2=(root,movetype=H && root,stateno>=200)||(root,stateno=[5100,5150])
v = 19
value =ifelse(root,ctrl,-1000,1000)
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/10000)-ifelse(var(19)-(ceil(var(19)/10000)*10000)<0,1,0))*10000)=[2000,2999]
triggerall=enemynear(Var(36)),pos x-root,pos x=[-150,150]
triggerall=(root,stateno=[120,159])||((root,stateno!=[5100,5150])&&(root,movetype !=H))
trigger1=root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)<30
trigger1=random<=10+ifelse((root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)<20),20,0)
trigger2=root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)>=30
trigger2=random<=8;+ifelse((root,var(59)-((ceil(root,var(59)/100)-ifelse(root,var(59)-(ceil(root,var(59)/100)*100)<0,1,0))*100)<20),20,10)
v = 19
value =-2000
[State -2 , 1]
type = Varadd
triggerall=var(19)-((ceil(var(19)/10000)-ifelse(var(19)-(ceil(var(19)/10000)*10000)<0,1,0))*10000)=[0,999]
trigger1=0;var(35)=11
v = 19
value =2000
[State -2 , 1]
type = Varadd
triggerall= root,movetype!=A 
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[10000,19999]
trigger2=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[30000,39999]
v = 19
value =ifelse(var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)<20000,-10000,-30000)
[State -2 , 1]
type = Varadd
triggerall= root,movetype!=A 
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[20000,29999]
v = 19
value =-20000
[State -2 , 1]
type = Varadd
trigger1= enemynear(Var(36)),stateno -var(13)!=[-9,9]
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[60000,69999]
trigger2= enemynear(Var(36)),stateno<160 ||(enemynear(Var(36)),movetype=A && enemynear(Var(36)),stateno !=var(13))||(enemynear(Var(36)),movetype=H)||(root,movetype=H)
trigger2=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[80000,89999]
v = 19
value =ifelse(var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)<70000,-60000,-80000)
[State -2 , 1]
type = Varadd
trigger1= enemynear(Var(36)),stateno !=var(13)
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[70000,79999]
v = 19
value =-70000
[State -2 , 1]
type = Varadd
triggerall= root,movetype=A && (var(13)>0||inguarddist=0) && ((root,stateno!=9212)||(enemynear(Var(36)),statetype!=A))
;triggerall=((stateno!=[8860,8869])||stateno=[8862,8863])&&((stateno!=[8850,8859])||stateno=8850)&&((stateno!=[1060,1069])||stateno=1060||stateno=1065)||((stateno!=[10,19])||stateno=19)
triggerall=numenemy=1||enemynear(0),life<=0||enemynear(1),life<=0
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[0,9999]
v = 19
value =ifelse(var(13)>0,20000,ifelse(var(12)<160 && (enemynear(Var(36)),movetype!=H),30000,10000))
[State -2 , 1]
type = Varadd
trigger1=enemynear(Var(36)),stateno!=var(13)
;trigger1=((stateno!=[8860,8869])||stateno=[8862,8863])&&((stateno!=[8850,8859])||stateno=8850)&&((stateno!=[1060,1069])||stateno=1060||stateno=1065)||((stateno!=[10,19])||stateno=19)
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[20000,29999]
v = 19
value =ifelse((enemynear(Var(36)),movetype=A),50000,ifelse((enemynear(Var(36)),stateno>=160),60000,10000))
[State -2 , 1]
type = Varadd
;triggerall=((stateno!=[8860,8869])||stateno=[8862,8863])&&((stateno!=[8850,8859])||stateno=8850)&&((stateno!=[1060,1069])||stateno=1060||stateno=1065)||((stateno!=[10,19])||stateno=19)
trigger1= enemynear(Var(36)),movetype=A||inguarddist
trigger1=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[10000,19999]
trigger2= enemynear(Var(36)),movetype=A||inguarddist||(enemynear(Var(36)),stateno>=160 && enemynear(Var(36)),movetype!=H)
trigger2=var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)=[30000,39999]
v = 19
value =50000
[State -2 , 1]
type = Varadd
triggerall= var(35)=7 && root,stateno=[1100,1110]
triggerall=partner,life<=0;numenemy=1||enemynear(0),life<=0||enemynear(1),life<=0
trigger1=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[0,99999]
trigger2=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[200000,299999]
trigger3=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[400000,499999]
trigger4=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[600000,699999]
v = 19
value =100000
[State -2 , 1]
type = Varadd
triggerall= root,stateno!=[1100,1110]
trigger1=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[100000,199999]
trigger2=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[300000,399999]
trigger3=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[500000,599999]
trigger4=var(19)-((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)=[700000,799999]
v = 19
value =100000
[State -2 , 1]
type = Varset
trigger1= enemynear(Var(36)),movetype=H && root,stateno=1150
trigger2=root,stateno=[1100,1110]
trigger2=root,var(59)-((ceil(root,var(59)/10)-ifelse(root,var(59)-(ceil(root,var(59)/10)*10)<0,1,0))*10)<3
trigger3=root,prevstateno=[1100,1110]
trigger3=root,stateno!=[1100,1199]
trigger3=root,movetype!=H
v = 19
value =800000+var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)+((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)
[State -2 , 1]
type = Varset
triggerall= enemynear(Var(36)),movetype!=H
trigger1=1
v = 19
value =var(19)-((ceil(var(19)/100000)-ifelse(var(19)-(ceil(var(19)/100000)*100000)<0,1,0))*100000)+((ceil(var(19)/1000000)-ifelse(var(19)-(ceil(var(19)/1000000)*1000000)<0,1,0))*1000000)
[State -2 , 1]
type = Varadd
triggerall=numenemy=1 && var(17)>0
trigger1=root,inguarddist 
v = 17
value =1
[State -2 , 1]
type = Varset
trigger1=root,inguarddist =0
v = 17
value =0
[State -2 , 1]
type = Varadd
triggerall=numenemy=1 && var(17)=0
trigger1=root,inguarddist && enemynear(Var(36)),movetype!=A
v = 17
value =1
[State -2 , 1]
type = Varadd 
trigger1=var(16)<999 && root,stateno=[120,159]
trigger2=(var(16)=[1,1000]) && root,stateno!=[120,159]
v = 16
value =ifelse((root,stateno!=[120,159]),-var(16),1)



[State -2 , 1]
type = Varset
trigger1=var(35)=1||var(35)=[4,6]
trigger1=var(13)!=enemynear(Var(36)),stateno
v = 35
value =ifelse(var(35)=6,7,ifelse((var(35)=[4,ifelse(statetype=A&&(movetype!=A)&&(movetype!=H),4,5)]),3,3))
[State -2 , 1]
type = Varset
triggerall=var(35)!=[8,9]
trigger1=(root,stateno=[740,742]) && enemynear(Var(36)),movetype=A
v = 35
value =ifelse(var(14)<=6,9,8)
[State -2 , 1]
type = Varset
trigger1=var(35)=[8,9]
trigger1=var(13)!=enemynear(Var(36)),stateno
v = 35
value =0
[State -2 , 1]
type = Varset
trigger1=var(35)!=5
trigger1=var(35)!=[8,9]
trigger1 = (enemynear(Var(36)),HitDefAttr =SCA,NT,ST,HT)||root,var(46)>=2000000||root,var(47)>=2000000
v = 35
value =4
[State -2 , 1]
type = Varset
triggerall=((var(35)!=[5,40])&&(var(35)!=[100,300]));||var(35)=8
trigger1=(root,stateno=105)||(root,stateno=[41,49])||((root,stateno=[700,730])&&root,stateno!=701)
v = 35
value =ifelse(var(35)=4,5,ifelse(var(13)>0,1,2))
[State -2 , 1]
type = Varset
;;trigger1=root,var(59)-((ceil(root,var(59)/10)-ifelse(root,var(59)-(ceil(root,var(59)/10)*10)<0,1,0))*10)>=3
trigger1=(root,stateno=[1000,1099]) && root,movehit && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
trigger2=(root,stateno=[800,899]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
trigger3=(root,stateno=[400,499]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
v = 35
value =11
[State -2 , 1]
type = Varset
;;trigger1=root,var(59)-((ceil(root,var(59)/10)-ifelse(root,var(59)-(ceil(root,var(59)/10)*10)<0,1,0))*10)>=3
trigger1=(root,stateno=[3000,3099]) && root,movehit && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
v = 35
value =17;12
[State -2 , 1]
type = Varset
;;trigger1=root,var(59)-((ceil(root,var(59)/10)-ifelse(root,var(59)-(ceil(root,var(59)/10)*10)<0,1,0))*10)>=3
trigger1=(root,stateno=[3100,3199]) && root,movehit && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
v = 35
value =13
[State -2 , 1]
type = Varset
;;trigger1=root,var(59)-((ceil(root,var(59)/10)-ifelse(root,var(59)-(ceil(root,var(59)/10)*10)<0,1,0))*10)>=3
trigger1=(root,stateno=[3200,3299]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
v = 35
value =14
[State -2 , 1]
type = Varset
;;trigger1=root,var(59)-((ceil(root,var(59)/10)-ifelse(root,var(59)-(ceil(root,var(59)/10)*10)<0,1,0))*10)>=3
trigger1=(root,stateno=[1400,1499]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
v = 35
value =15
[State -2 , 1]
type = Varset
;;trigger1=root,var(59)-((ceil(root,var(59)/10)-ifelse(root,var(59)-(ceil(root,var(59)/10)*10)<0,1,0))*10)>=3
trigger1=(root,stateno=[1100,1199]) && enemynear(Var(36)),movetype=H && enemynear(Var(36)),stateno>=200
v = 35
value =17
[State -2 , 1] 
type = Varset
trigger1=(var(35)=[2,3])||(var(35)=7)||(var(35)=9)||(var(35)=60)
trigger1=(root,statetype!=A)||root,movetype=H||root,movetype=A
trigger1=(root,ctrl && root,stateno!=[100,119])||root,movetype=H||root,movetype=A
trigger2=(var(35)=[10,39])||(var(35)=[100,199])
trigger2=(var(35)!=17)||enemynear(Var(36)),stateno!=[5000,5110]
trigger2=(var(35)!=11)||random<=100
;trigger2=(var(35)!=10)||enemynear(Var(36)),movetype=A||enemynear(Var(36)),stateno<200||enemynear(Var(36)),ctrl
trigger2=(enemynear(Var(36)),movetype!=H)||var(18)-((ceil(var(18)/1000)-ifelse(var(18)-(ceil(var(18)/1000)*1000)<0,1,0))*1000)>0||(enemynear(Var(36)),stateno =[5100,5150])||(enemynear(Var(36)),stateno =[3500,3509])
trigger3=(var(35)=[14,15]);||(enemynear(Var(36)),statetype!=A)||root,movetype=H||enemynear(Var(36)),movetype=A
trigger3=(root,stateno=[1300,1399]);||(root,stateno=[1200,1299]);;;;||(root,stateno=[1300,1399])||(root,stateno=[11500,11599]);&&(root,stateno!=[550,559])&&(root,movetype=A)
v = 35
value =0







[State -2:         VarSet]
type     = VarSet
trigger1=fvar(30)<=0 && (enemynear(Var(36)),statetype=L||enemynear(Var(36)),movetype=A||enemynear(Var(36)),movetype=H)
fv = 30 
value =0
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(30)<=0 && (enemynear(Var(36)),statetype!=L) && (enemynear(Var(36)),movetype!=A) && (enemynear(Var(36)),movetype!=H) && (enemynear(Var(36)),statetype=A)
fv = 30 
value =-fvar(30)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(30)<=0 && enemynear(Var(36)),statetype!=A
fv = 30 
value =-enemynear(Var(36)),stateno
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(30)>0 && enemynear(Var(36)),stateno=fvar(30) && (root,stateno=1330)
fv = 30 
value =fvar(30)+100000
[State -2:         VarSet]
type     = VarSet
trigger1=(fvar(30)=[100000,199999]) &&  (root,ctrl||enemynear(Var(36)),movetype=H||root,movetype=H)
fv = 30 
value =ifelse((root,movetype=H),fvar(30)+100000,fvar(30)-100000)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(31)<=0 && (enemynear(Var(36)),statetype=L||enemynear(Var(36)),movetype=A||enemynear(Var(36)),movetype=H)
trigger2=fvar(30)=enemynear(Var(36)),stateno||fvar(30)-100000=enemynear(Var(36)),stateno||fvar(30)-200000=enemynear(Var(36)),stateno
fv = 31 
value =0
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(31)<=0 && (enemynear(Var(36)),statetype!=L) && (enemynear(Var(36)),movetype!=A) && (enemynear(Var(36)),movetype!=H) && (enemynear(Var(36)),statetype=A)
fv = 31 
value =-fvar(31)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(31)<=0 && fvar(30)>0 && enemynear(Var(36)),statetype!=A
fv = 31
value =-enemynear(Var(36)),stateno
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(31)>0 && enemynear(Var(36)),stateno=fvar(31) && (root,stateno=1330)
fv = 31
value =fvar(31)+100000
[State -2:         VarSet]
type     = VarSet
trigger1=(fvar(31)=[100000,199999]) &&  (root,ctrl||enemynear(Var(36)),movetype=H||root,movetype=H)
fv = 31 
value =ifelse((root,movetype=H),fvar(31)+100000,fvar(31)-100000)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(31)<=0 && (enemynear(Var(36)),statetype=L||enemynear(Var(36)),movetype=A||enemynear(Var(36)),movetype=H)
trigger2=fvar(30)=enemynear(Var(36)),stateno||fvar(30)-100000=enemynear(Var(36)),stateno||fvar(30)-200000=enemynear(Var(36)),stateno
fv = 31 
value =0
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(32)<=0 && (enemynear(Var(36)),statetype=L||enemynear(Var(36)),movetype=A||enemynear(Var(36)),movetype=H)
trigger2=fvar(30)=enemynear(Var(36)),stateno||fvar(30)-100000=enemynear(Var(36)),stateno||fvar(30)-200000=enemynear(Var(36)),stateno
trigger3=fvar(31)=enemynear(Var(36)),stateno||fvar(31)-100000=enemynear(Var(36)),stateno||fvar(31)-200000=enemynear(Var(36)),stateno
fv = 32 
value =0
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(32)<=0 && (enemynear(Var(36)),statetype!=L) && (enemynear(Var(36)),movetype!=A) && (enemynear(Var(36)),movetype!=H) && (enemynear(Var(36)),statetype=A)
fv = 32
value =-fvar(32)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(32)<=0 && fvar(30)>0 && fvar(31)>0 && enemynear(Var(36)),statetype!=A
fv = 32
value =-enemynear(Var(36)),stateno
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(32)>0 && enemynear(Var(36)),stateno=fvar(32) && (root,stateno=1330)
fv = 32
value =fvar(32)+100000
[State -2:         VarSet]
type     = VarSet
trigger1=(fvar(32)=[100000,199999]) &&  (root,ctrl||enemynear(Var(36)),movetype=H||root,movetype=H)
fv = 32
value =ifelse((root,movetype=H),fvar(32)+100000,fvar(32)-100000)
[State -2:         VarSet]
type     = VarSet
trigger1=fvar(32)<=0 && (enemynear(Var(36)),statetype=L||enemynear(Var(36)),movetype=A||enemynear(Var(36)),movetype=H)
trigger2=fvar(30)=enemynear(Var(36)),stateno||fvar(30)-100000=enemynear(Var(36)),stateno||fvar(30)-200000=enemynear(Var(36)),stateno
trigger3=fvar(31)=enemynear(Var(36)),stateno||fvar(31)-100000=enemynear(Var(36)),stateno||fvar(31)-200000=enemynear(Var(36)),stateno
fv = 32
value =0


[State -2:         VarSet]
type     = VarSet
trigger1=root,movetype=H||root,movetype=A
trigger2=enemynear(Var(36)),movetype=A && fvar(34)!=enemynear(Var(36)),stateno
fv = 33
value =((ceil(fvar(33)/10)-ifelse(fvar(33)-(ceil(fvar(33)/10)*10)<0,1,0))*10)
[State -2:         VarSet]
type     = VarSet
trigger1=enemynear(Var(36)),movetype=A
trigger1=fvar(34)!=enemynear(Var(36)),stateno
fv = 34
value =enemynear(Var(36)),stateno
[State -2:         VarSet]
type     = Varadd
trigger1=var(14)=1 && fvar(33)-((ceil(fvar(33)/10)-ifelse(fvar(33)-(ceil(fvar(33)/10)*10)<0,1,0))*10)<9
fv = 33
value =1
[State -2:         VarSet]
type     = Varadd
trigger1=(root,movetype!=H)&&(enemynear(Var(36)),movetype!=H)
trigger1=fvar(33)-((ceil(fvar(33)/10000)-ifelse(fvar(33)-(ceil(fvar(33)/10000)*10000)<0,1,0))*10000)<9980
fv = 33
value =10
[State -2:         VarSet]
type     = Varset
trigger1=(root,movetype!=A)&&(root,movetype!=H)&&(enemynear(Var(36)),movetype=A)
trigger1=fvar(33)-((ceil(fvar(33)/10000)-ifelse(fvar(33)-(ceil(fvar(33)/10000)*10000)<0,1,0))*10000)>10
fv = 33
value =fvar(33)-((ceil(fvar(33)/10)-ifelse(fvar(33)-(ceil(fvar(33)/10)*10)<0,1,0))*10)+((ceil(fvar(33)/10000)-ifelse(fvar(33)-(ceil(fvar(33)/10000)*10000)<0,1,0))*10000)

[State -2:         VarSet]
type     = Varset
trigger1=root,movehit && fvar(35)>=0
trigger1=root,stateno=1102||root,stateno=[1330,1339]
fv = 35
value =-fvar(35)-1
[State -2:         VarSet]
type     = Varset
trigger1=fvar(35)<0
trigger1=root,stateno!=1102
trigger1=root,stateno!=[1330,1339]
fv = 35
value =-fvar(35)
[State -2:         VarSet]
type     = Varset
trigger1=enemynear(Var(36)),movetype!=H
fv = 35
value =0


[State -2 , 1]
type = Varset
;trigger1=var(3)-((ceil(var(3)/100)-ifelse(var(3)-(ceil(var(3)/100)*100)<0,1,0))*100)=1
trigger1=(var(13)>0 && enemynear(Var(36)),stateno!=var(13))||enemynear(Var(36)),movetype!=A
v = 3
value =ifelse((enemynear(Var(36)),vel x>99),99,(enemynear(Var(36)),vel x))+((ceil(var(3)/100)-ifelse(var(3)-(ceil(var(3)/100)*100)<0,1,0))*100)
[State -2 , 1]
type = Varadd
trigger1=var(3)-((ceil(var(3)/1000)-ifelse(var(3)-(ceil(var(3)/1000)*1000)<0,1,0))*1000)=[0,99]
trigger1=0;root,stateno=5201||root,prevstateno=5201
v = 3
value =100
[State -2 , 1]
type = Varadd
trigger1=var(3)-((ceil(var(3)/1000)-ifelse(var(3)-(ceil(var(3)/1000)*1000)<0,1,0))*1000)=[100,199]
trigger1=0;random<=10 && (root,stateno<200||root,movetype!=H)&&root,stateno<5000&&root,statetype!=L
v = 3
value =-100
[State -2 , 1]
type = Varset
triggerall=var(5)<0
trigger1=(root,stateno!=[0,199])&&(root,movetype=A||root,movetype=H)
v = 5
value =0
[State -2 , 1]
type = Varset
triggerall=var(5)<0
trigger1=(enemynear(Var(36)),stateno-var(13)!=[-99,99])||enemynear(Var(36)),movetype!=A
v = 5
value =ifelse((-var(5)-root,life>=100),var(13),0)
[State -2 , 1]
type = Varset
trigger1=var(5)=0 && enemynear(Var(36)),movetype=A
trigger1=root,stateno=[120,159]
v = 5
value =-root,life
[State -2 , 1]
type = Varset
triggerall=var(6)<0
trigger1=(root,stateno!=[0,199])&&(root,movetype=A||root,movetype=H)
v = 6
value =0
[State -2 , 1]
type = Varset
triggerall=var(6)<0
trigger1=(enemynear(Var(36)),stateno-var(13)!=[-99,99])||enemynear(Var(36)),movetype!=A
v = 6
value =ifelse((-var(6)-root,life>=100),var(13),0)
[State -2 , 1]
type = Varset
trigger1=var(6)=0 && enemynear(Var(36)),movetype=A
trigger1=var(5)>0&&enemynear(Var(36)),stateno-var(5)!=[-99,99]
trigger1=root,stateno=[120,159]
v = 6
value =-root,life
[State -2 , 1]
type = Varset
triggerall=var(7)<0
trigger1=(root,stateno!=[0,199])&&(root,movetype=A||root,movetype=H)
v = 7
value =0
[State -2 , 1]
type = Varset
triggerall=var(7)<0
trigger1=(enemynear(Var(36)),stateno-var(13)!=[-99,99])||enemynear(Var(36)),movetype!=A
v = 7
value =ifelse((-var(7)-root,life>=100),var(13),0)
[State -2 , 1]
type = Varset
trigger1=var(7)=0 && enemynear(Var(36)),movetype=A
trigger1=var(6)>0&&enemynear(Var(36)),stateno-var(6)!=[-99,99]
trigger1=var(5)>0&&enemynear(Var(36)),stateno-var(5)!=[-99,99]
trigger1=root,stateno=[120,159]
v = 7
value =-root,life
[State -2 , 1]
type = Varadd
trigger1=var(8)-((ceil(var(8)/10)-ifelse(var(8)-(ceil(var(8)/10)*10)<0,1,0))*10)=1
trigger1=(enemynear(Var(36)),stateno-var(13)!=[-99,99])||enemynear(Var(36)),movetype!=A
v = 8
value =-1
[State -2 , 1]
type = Varadd
triggerall=var(8)-((ceil(var(8)/10)-ifelse(var(8)-(ceil(var(8)/10)*10)<0,1,0))*10)=0
trigger1=enemynear(Var(36)),movetype=A && var(9)-enemynear(Var(36)),power>=1000
trigger2=enemynear(Var(36)),HitDefAttr =SCA,HA,HP,HT
v = 8
value =1
[State -2 , 1]
type = Varadd
triggerall=var(8)-((ceil(var(8)/100)-ifelse(var(8)-(ceil(var(8)/100)*100)<0,1,0))*100)=[0,9]
trigger1=root,stateno=42 && var(35)=10 && enemynear(Var(36)),movetype!=H
v = 8
value =10
[State -2 , 1]
type = Varadd
triggerall=var(8)-((ceil(var(8)/100)-ifelse(var(8)-(ceil(var(8)/100)*100)<0,1,0))*100)=[10,19]
trigger1=(root,ctrl && root,statetype!=A)||enemynear(Var(36)),movetype=H||(root,movetype=H&&root,stateno>200)
v = 8
value =ifelse(((root,ctrl && root,statetype!=A)||enemynear(Var(36)),movetype=H),-10,10)
[State -2 , 1]
type = Varset
trigger1=1
v = 9
value =enemynear(Var(36)),power
[State -2 , 1]
type = Varadd
trigger1=enemynear(Var(36)),movetype=A && var(14)<2 && var(12)-((ceil(var(12)/10)-ifelse(var(12)-(ceil(var(12)/10)*10)<0,1,0))*10)=0
v = 12
value =1
[State -2 , 1]
type = Varset
trigger1=enemynear(Var(36)),HitDefAttr =SCA,NA,SA,HA,NT,ST,HT
trigger1=var(12)-((ceil(var(12)/10)-ifelse(var(12)-(ceil(var(12)/10)*10)<0,1,0))*10)>=1
trigger2=helper(4000),stateno=4120
trigger2=var(12)-((ceil(var(12)/10)-ifelse(var(12)-(ceil(var(12)/10)*10)<0,1,0))*10)>=1
v = 12
value =((ceil(var(12)/10)-ifelse(var(12)-(ceil(var(12)/10)*10)<0,1,0))*10)
[State -2 , 1]
type = Varadd
trigger1=root,statetype=L && var(12)-((ceil(var(12)/100)-ifelse(var(12)-(ceil(var(12)/100)*100)<0,1,0))*100)=[0,9]
v = 12
value =10
[State -2 , 1]
type = Varadd
trigger1=root,statetype!=L 
trigger1=var(12)-((ceil(var(12)/100)-ifelse(var(12)-(ceil(var(12)/100)*100)<0,1,0))*100)=[10,89]
trigger2=var(12)-((ceil(var(12)/100)-ifelse(var(12)-(ceil(var(12)/100)*100)<0,1,0))*100)=[90,99]
v = 12
value =ifelse((var(12)-((ceil(var(12)/100)-ifelse(var(12)-(ceil(var(12)/100)*100)<0,1,0))*100)=[90,99]),-90,10)
[State -2 , 1]
type = Varadd
triggerall=var(12)-((ceil(var(12)/1000)-ifelse(var(12)-(ceil(var(12)/1000)*1000)<0,1,0))*1000)=[100,199]
trigger1=var(13)!=enemynear(Var(36)),stateno
v = 12
value =-100
[State -2 , 1]
type = Varadd
triggerall=var(12)-((ceil(var(12)/1000)-ifelse(var(12)-(ceil(var(12)/1000)*1000)<0,1,0))*1000)=[0,99]
trigger1=root,time<=1 && var(14)>6 && (root,stateno=705||root,stateno=715||root,stateno=725)
trigger2=enemynear(Var(36)),HitDefAttr =SCA,SA
v = 12
value =100
[State -2 , 1]
type = Varadd
trigger1=var(12)-((ceil(var(12)/10000)-ifelse(var(12)-(ceil(var(12)/10000)*10000)<0,1,0))*10000)=[1000,1999]
trigger1=(var(13)-enemynear(Var(36)),stateno!=[-99,99])
v = 12
value =-1000
[State -2 , 1]
type = Varadd
trigger1=var(12)-((ceil(var(12)/10000)-ifelse(var(12)-(ceil(var(12)/10000)*10000)<0,1,0))*10000)=[0,999]
trigger1=enemynear(Var(36)),HitDefAttr =SCA,SA,SP,HA,HP
v = 12
value =1000
[State -2 , 1]
type = Varset
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 11
value =0
[State -2 , 1]
type = Varset 
trigger1=(var(11)=0||var(11)=-2) && p2movetype=A 
trigger1=enemynear(helper(218),Var(36)),HitDefAttr =SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
v = 11
value =ifelse(var(11)=-2,1,-1)
[State -2 , 1]
type = Varset
trigger1=var(11)=0 && p2movetype=A 
v = 11
value =-2
[State -2 , 1] 
type = Varadd
triggerall=root,movetype=H||root,statetype!=A
trigger1=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=1
v = 10
value =-1
[State -2 , 1] 
type = Varadd
triggerall=(root,stateno=[47,48])
trigger1=var(10)-((ceil(var(10)/10)-ifelse(var(10)-(ceil(var(10)/10)*10)<0,1,0))*10)=0
v = 10
value =1
[State -2 , 1] 
type = Varadd
triggerall=root,NumHelper(1015)||root,Numhelper(1016)||root,NumHelper(1017)||root,NumHelper(1018)
triggerall=root,stateno=105
trigger1=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[0,9]
v = 10
value =10
[State -2 , 1] 
type = Varadd
triggerall=var(10)-((ceil(var(10)/100)-ifelse(var(10)-(ceil(var(10)/100)*100)<0,1,0))*100)=[0,9]
trigger1=root,NumHelper(1015)=0&&root,Numhelper(1016)=0&&root,NumHelper(1017)=0&&root,NumHelper(1018)=0
trigger2=0;root,movetype=H
v = 10
value =-10


[State -2 , 1] 
type = Varset
triggerall=var(4)>0 
trigger1=enemynear(helper(218),Var(36)),movetype!=H
trigger2=root,stateno=250 && root,movehit=1
trigger3=root,stateno=252 && root,time=1
v = 4
value =0
[State -2 , 1] 
type = Varadd
triggerall=var(4)>=0
trigger1=root,numprojid(20219)
v = 4
value =1



[State -2 , 1]
type = Varset
trigger1=var(13) !=enemynear(Var(36)),stateno
trigger2=(enemynear(Var(36)),AnimElemTime(1)=0 && enemynear(Var(36)),stateno = var(13) &&var(14)>2 )
v = 14
value =0
Ignorehitpause=1




[State -2 , 1]
type = Varadd
trigger1=enemynear(Var(36)),movetype=A
trigger2=var(14)>0
v = 14
value =1
Ignorehitpause=1
[State -2 , 1]
type = Varset
trigger1=var(13) !=enemynear(Var(36)),stateno
v = 13
value =0
Ignorehitpause=1
[State -2 , 1]
type = Varset
trigger1=enemynear(Var(36)),movetype=A
trigger1=var(13)>=0
v = 13
value =enemynear(Var(36)),stateno
Ignorehitpause=1



































































[Statedef -1]

; --- Chain: LP -> MP (Added by Script) ---
[State -1, Chain_200_to_210]
type = ChangeState
value = 210
triggerall = StateNo = 200
triggerall = MoveContact = 1
trigger1 = command = "y"

; --- Chain: LP -> HP (Added by Script) ---
[State -1, Chain_200_to_220]
type = ChangeState
value = 220
triggerall = StateNo = 200
triggerall = MoveContact = 1
trigger1 = command = "z"

; --- Chain: MP -> HP (Added by Script) ---
[State -1, Chain_210_to_220]
type = ChangeState
value = 220
triggerall = StateNo = 210
triggerall = MoveContact = 1
trigger1 = command = "z"

; --- Chain: cr.LP -> cr.MP (Added by Script) ---
[State -1, Chain_400_to_410]
type = ChangeState
value = 410
triggerall = StateNo = 400
triggerall = MoveContact = 1
trigger1 = command = "y"

; --- Chain: cr.LP -> cr.HP (Added by Script) ---
[State -1, Chain_400_to_420]
type = ChangeState
value = 420
triggerall = StateNo = 400
triggerall = MoveContact = 1
trigger1 = command = "z"

; --- Chain: cr.MP -> cr.HP (Added by Script) ---
[State -1, Chain_410_to_420]
type = ChangeState
value = 420
triggerall = StateNo = 410
triggerall = MoveContact = 1
trigger1 = command = "z"

; --- Chain: LK -> MK (Added by Script) ---
[State -1, Chain_230_to_240]
type = ChangeState
value = 240
triggerall = StateNo = 230
triggerall = MoveContact = 1
trigger1 = command = "b"

; --- Chain: LK -> HK (Added by Script) ---
[State -1, Chain_230_to_250]
type = ChangeState
value = 250
triggerall = StateNo = 230
triggerall = MoveContact = 1
trigger1 = command = "c"

; --- Chain: MK -> HK (Added by Script) ---
[State -1, Chain_240_to_250]
type = ChangeState
value = 250
triggerall = StateNo = 240
triggerall = MoveContact = 1
trigger1 = command = "c"

; --- Chain: cr.LK -> cr.MK (Added by Script) ---
[State -1, Chain_430_to_440]
type = ChangeState
value = 440
triggerall = StateNo = 430
triggerall = MoveContact = 1
trigger1 = command = "b"

; --- Chain: cr.LK -> cr.HK (Added by Script) ---
[State -1, Chain_430_to_450]
type = ChangeState
value = 450
triggerall = StateNo = 430
triggerall = MoveContact = 1
trigger1 = command = "c"

; --- Chain: cr.MK -> cr.HK (Added by Script) ---
[State -1, Chain_440_to_450]
type = ChangeState
value = 450
triggerall = StateNo = 440
triggerall = MoveContact = 1
trigger1 = command = "c"






;-------------------------AIݒ聡--------------------------------------------------------








[State -2:         VarSet];AI+R{ݒ聡
type     = Varadd
triggerall = var(59)=0
triggerall=(RoundState =2)
trigger1 = (alive && ctrl)||var(59)>0
v        = 59
value    =                  1                         ;(1ȏAIonA0offBx1~3)


[State -2:         VarSet];ݒ聡
type     = Varadd
triggerall = var(59)=[1,9] 
triggerall=(RoundState =2)
trigger1 = (alive && ctrl)||var(59)>0
v        = 59
value    =10*               1                        ;(ݒB1~3)





[State -2:         VarSet];ݒ聡
type     = VarSet
trigger1=var(51)-((ceil(var(51)/1000)-ifelse(var(51)-(ceil(var(51)/1000)*1000)<0,1,0))*1000) !=[100,199]
trigger1=var(51)<100000
trigger2=(helper(218),var(14)>0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)||(helper(218),var(14)=0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)
trigger3=enemynear(helper(218),Var(36)),movetype !=A
trigger4=(enemynear(helper(218),Var(36)),AnimElemTime(1)=0 && enemynear(helper(218),Var(36)),stateno = helper(218),var(13) && helper(218),var(14)>2 )
v        = 51
value    =                   10             ;(0~10AݒBقǍUɑ΂锽Ȃ)



[State -2:         VarSet];K[hݒ聡
type     = VarSet
trigger1=var(51) <1000
trigger2=(helper(218),var(14)>0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)||(helper(218),var(14)=0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)
trigger3=enemynear(helper(218),Var(36)),movetype !=A
trigger4=(enemynear(helper(218),Var(36)),AnimElemTime(1)=0 && enemynear(helper(218),Var(36)),stateno = helper(218),var(13) && helper(218),var(14)>2 )
v        = 51
value    =var(51)+1000*       8      ;(0~11AグقǍdB11ŒœɑΉ)



[State -2:         VarSet]
type     = VarSet
triggerall=var(59) && var(55)
trigger1=var(52) <=-2
trigger2=(stateno=[740,742])
v        = 52
value    =ifelse((stateno=[740,742]),-var(55)-1,ifelse(var(52)=-2,0,var(52)+1))
[State -2:         VarSet];ubLOpx
type     = VarSet
triggerall=var(59)&&var(52)>=-1
trigger1=var(52) =[0,999]
trigger2=(stateno=[740,742])||inguarddist=0||movetype=H
v        = 52
value    =         300+ifelse(life<300,100,0)            ;(0~999AubLO̕px)


[State -2:         VarSet];ubLO
type     = VarSet
trigger1=1
v        = 55
value    =                    60      ;(0~999AxubLOƂ̐l̊ԃubLOsȂȂ܂)
































[State -2:         VarSet]
type     = Varadd
trigger1=var(53) =[1,999]
v        = 53
value    =1
[State -2:         VarSet]
type     = Varset
trigger1=1;var(53) =[1,999]
v        = 54
value    =random
[State -2:         VarSet]
type     = Varset
trigger1=var(53) >=1 && p2movetype!=H
v        = 53
value    =0
[State -2, Blocking-6]
type = HitOverride
triggerall = var(59) && statetype != A
trigger1 = Var(52)>=random
trigger1 = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||(StateNo = 109)||stateno=740||stateno=741||stateno=742
slot = 0
attr = SA,AA,AP
stateno = 740
time = 0;1
[State -2, Blocking-6]
type = HitOverride
triggerall = var(59) && statetype != A
trigger1 = Var(52)>=random
trigger1 = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||(StateNo = 109)||stateno=740||stateno=741||stateno=742
slot = 1;0
attr = C,AA,AP
stateno = 741
time = 0;1
[State -2, Blocking-6]
type = HitOverride
triggerall = var(59) && statetype = A 
trigger1 = Var(52)>=random
trigger1 = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||(StateNo = 109)||stateno=740||stateno=741||stateno=742
slot = 2;0
attr = SA,AA,AP
stateno = 742
forceair = 1
time = 0;1


[State -1, Stand]
type = ChangeState 
value =195
triggerall = !IsHelper
triggerall = palno = 12 && helper(218),var(10)<1000000
triggerall = var(59)!=0 
triggerall = win && Alive && statetype!=A
triggerall=p2bodydist x>=-20
trigger1=0;ctrl||stateno=[0,39]
[State -2:         VarSet]
type     = Varadd
triggerall=var(51)-((ceil(var(51)/1000)-ifelse(var(51)-(ceil(var(51)/1000)*1000)<0,1,0))*1000)<100
triggerall=random>(var(51)-((ceil(var(51)/1000)-ifelse(var(51)-(ceil(var(51)/1000)*1000)<0,1,0))*1000))*100
triggerall=enemynear(helper(218),Var(36)),movetype=A
trigger1=helper(218),var(14)<2
trigger2=(enemynear(helper(218),Var(36)),AnimElemTime(1)=0 && enemynear(helper(218),Var(36)),stateno = helper(218),var(13) && helper(218),var(14)>2 )
v        = 51
value    =100
[State -2:         VarSet]
type     = Varadd
triggerall=var(51)<100000
triggerall=random>((ceil(var(51)/1000)-ifelse(var(51)-(ceil(var(51)/1000)*1000)<0,1,0))*1000)/10
triggerall=enemynear(helper(218),Var(36)),movetype=A
trigger1 = (helper(218),var(14)>0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)||(helper(218),var(14)=0 && helper(218),var(13) !=enemynear(helper(218),Var(36)),stateno)
trigger2=(enemynear(helper(218),Var(36)),AnimElemTime(1)=0 && enemynear(helper(218),Var(36)),stateno = helper(218),var(13) && helper(218),var(14)>2 )
v        = 51
value    =100000 
[State -2:         VarSet]
type     = Varset
triggerall=var(52)=[0,999]
triggerall=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||enemynear(helper(218),Var(36)),vel x<=0||enemynear(helper(218),Var(36)),vel y<=0||p2statetype!=A
trigger1 = inguarddist
v        = 52
value    =ifelse(var(52)>=random,1000,-1)






[State -3:         VarSet]
type     = VarSet
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(46) =0
[State -3:         VarSet]
type     = VarSet
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(47) =0
[State -3:         VarSet]
type     = VarSet
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(48) =0
[State -3:         VarSet]
type     = VarSet
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(49) =0
[State -3:         VarSet]
type     = VarSet
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(48) =0
[State -3:         VarSet]
type     = VarSet
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(49) =0
[State -3:         VarSet]
type     = VarSet
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(39) =0
[State -3:         VarSet]
type     = VarSet
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(38) =0
[State -3:         VarSet]
type     = VarSet
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(37) =0
[State -3:         VarSet]
type     = VarSet
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(36) =0
[State -3:         VarSet]
type     = VarSet
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(35) =0
[State -3:         VarSet]
type     = VarSet
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(34) =0
[State -3:         VarSet]
type     = VarSet
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(33) =0
[State -3:         VarSet]
type     = VarSet
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(32) =0
[State -3:         VarSet]
type     = VarSet
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(31) =0
[State -3:         VarSet]
type     = VarSet
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(30) =0
[State -3:         VarSet]
type     = VarSet
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(29) =0
[State -3:         VarSet]
type     = VarSet
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(28) =0
[State -3:         VarSet]
type     = VarSet
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(27) =0
[State -3:         VarSet]
type     = VarSet
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(26) =0
[State -3:         VarSet]
type     = VarSet
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(25) =0
[State -3:         VarSet]
type     = VarSet
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(24) =0
[State -3:         VarSet]
type     = VarSet
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(23) =0
[State -3:         VarSet]
type     = VarSet
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(22) =0
[State -3:         VarSet]
type     = VarSet
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(21) =0
[State -3:         VarSet]
type     = VarSet
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
fvar(29) =0




[State -3:         VarSet]
type     = Varadd
triggerall = var(59)>0
triggerall = RoundState = 2 && numenemy=1 && numpartner=0
triggerall =(stateno=10000||stateno=[1100,1399])&&helper(218),var(13)<=0
trigger1=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[0,999])
trigger2=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[2000,2999])
trigger3=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[4000,4999])
trigger4=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[6000,6999])
var(59) = 1000
[State -3:         VarSet]
type     = Varadd
triggerall = var(59)>0 
triggerall = RoundState = 2 && numenemy=1 && numpartner=0
triggerall = (ctrl&&statetype=A)||movetype=H
trigger1=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[1000,1999])
trigger2=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[3000,3999])
trigger3=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[5000,5999])
trigger4=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)=[7000,7999])
var(59) =ifelse(ctrl,-1000,1000)
[State -3:         VarSet]
type     = Varadd
triggerall = var(59)>0
triggerall = RoundState = 2 && numenemy=1 && numpartner=0 
triggerall =(stateno=[1400,1499])
trigger1=(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)=[0,9999])
trigger2=(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)=[20000,29999])
trigger3=(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)=[40000,49999])
trigger4=(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)=[60000,69999])
var(59) = 10000
[State -3:         VarSet]
type     = Varadd
triggerall = var(59)>0 
triggerall = RoundState = 2 && numenemy=1 && numpartner=0
triggerall =(ctrl&&statetype!=A)||(movetype=H&&stateno>200)||(p2movetype=H&&p2stateno>200)||p2life<=0
trigger1=(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)=[10000,19999])
trigger2=(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)=[30000,39999])
trigger3=(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)=[50000,59999])
trigger4=(var(59)-((ceil(var(59)/100000)-ifelse(var(59)-(ceil(var(59)/100000)*100000)<0,1,0))*100000)=[70000,79999])
var(59) =ifelse((ctrl&&statetype!=A)||p2life<=0||(p2movetype=H&&p2stateno>200),-10000,10000)
[State -3:         VarSet]
type     = Varadd
triggerall = var(59)>0
triggerall = RoundState = 2 && numenemy=1 && numpartner=0
triggerall =(stateno=[700,705]) && (p2stateno=[150,159])
trigger1=(var(59)-((ceil(var(59)/1000000)-ifelse(var(59)-(ceil(var(59)/1000000)*1000000)<0,1,0))*1000000)<100000)
var(59) = 100000
[State -3:         VarSet]
type     = Varadd
triggerall = var(59)>0
triggerall = RoundState = 2 && numenemy=1 && numpartner=0
triggerall =(p2movetype=H&&p2stateno>200)||movetype=H||ctrl||p2life<=0
trigger1=(var(59)-((ceil(var(59)/1000000)-ifelse(var(59)-(ceil(var(59)/1000000)*1000000)<0,1,0))*1000000)=[100000,199999])
var(59) = ifelse((p2movetype=H&&p2stateno>200)||ctrl||p2life<=0,-100000,100000)
[State -3:         VarSet] 
type     = VarSet
trigger1 = var(59)>0
trigger1 = RoundState = [3,4]
trigger1 =TeamMode = turns
var(59) = var(59)-((ceil(var(59)/1000)-ifelse(var(59)-(ceil(var(59)/1000)*1000)<0,1,0))*1000)
[State -3:         VarSet] 
type     = VarSet
triggerall = var(59)>0
trigger1 = var(59)<1000000 && stateno=800 && movetype!=H
var(59) = var(59)+1000000
[State -3:         VarSet] 
type     = VarSet
triggerall = var(59)>0
trigger1 = var(59)>=1000000 && roundstate!=2
var(59) = var(59)-1000000
[State -2:         VarSet]
type     = VarSet
trigger1=var(59)>0
trigger1=RoundState !=2
v        = 59
value    =-var(59)
[State -2:         VarSet]
type     = VarSet
trigger1=var(59)<0
trigger1=RoundState=2 && ctrl
v        = 59
value    =-var(59)

[State -2]
Type = Helper
;trigger1=var(59)>0
trigger1 = numhelper(218)=0
StateNo = 10218
ID = 218
Name = "AI1"
Pos = 0,0
PosType = P1
Ownpal = 1
Persistent = 0
IgnoreHitPause =1

[State -2, 1]
type = Projectile
;triggerall=numprojid(20219)=0 && helper(218),var(4)=0
trigger1=stateno=250 && movehit=1
trigger2=stateno=252 && time=1
projanim = 20218
projid= 20219
projhitanim = 1112
projpriority = 1
projheightbound = -240, 100
projedgebound = 100
projscreenbound = 100
projshadow = -1
projscale=.7,.7
offset = -7,-60
velocity = 20
attr = S, SP
damage   = 0,0
animtype = heavy
guardflag = MA
hitflag = MAF
pausetime = 10,10
hitsound   = s0,7
sparkxy = 500,500
guardsound = S6,0
ground.type = Low
ground.slidetime = 15
ground.hittime  = 10
ground.velocity = -6,-4
air.animtype = Back
air.velocity = -4,-6
air.juggle = 3
air.fall = 1
fall=1
down.velocity = -4,-6
down.hittime = 30
down.bounce = 0
accel = 0.9
envshake.freq = 50
envshake.time = 30



[State -1, Stand]
type = ChangeState 
value =100
triggerall = !IsHelper
triggerall = var(59)>0 
triggerall=helper(218),var(35)=8 && stateno!=[100,109]
;triggerall=(stateno!=[100,101])||p2bodydist x<=10||helper(218),var(35)!=1
;triggerall=var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000||helper(218),fvar(5)=-99999||facing*enemynear(helper(218),Var(36)),facing>0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
;triggerall=p2stateno!=5299
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
triggerall = var(51)-((ceil(var(51)/1000)-ifelse(var(51)-(ceil(var(51)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (stateno!=123)
triggerall = statetype!= A
;triggerall=(p2statetype=A)&&(p2bodydist y+enemynear(helper(218),Var(36)),vel y*ifelse(p2bodydist x>60,ifelse(p2bodydist x>130,16,9),5)=[-40,20]);||(helper(218),var(35)=12)
triggerall=p2bodydist x>-40
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||(StateNo = 109);||(stateno=100) || (stateno=105)
trigger1=0;p2bodydist x<80
[State -1, Stand]
type = ChangeState 
value =780
triggerall = !IsHelper
triggerall = var(59)>0 && power<3000
triggerall=(helper(218),var(35)=17) && stateno!=[100,109]
;triggerall=(stateno!=[100,101])||p2bodydist x<=10||helper(218),var(35)!=1
;triggerall=var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000||helper(218),fvar(5)=-99999||facing*enemynear(helper(218),Var(36)),facing>0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
;triggerall=p2stateno!=5299
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
triggerall = var(51)-((ceil(var(51)/1000)-ifelse(var(51)-(ceil(var(51)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (stateno!=123)
triggerall = statetype!= A
;triggerall=(p2statetype=A)&&(p2bodydist y+enemynear(helper(218),Var(36)),vel y*ifelse(p2bodydist x>60,ifelse(p2bodydist x>130,16,9),5)=[-40,20]);||(helper(218),var(35)=12)
triggerall=p2bodydist x>-40
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||(StateNo = 109);||(stateno=100) || (stateno=105)
trigger1=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000
trigger1=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger1=p2movetype=H&&p2stateno>200
[State -1, Stand]
type = ChangeState 
value =ifelse(var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2,ifelse(power>=1000&&(backedgebodydist=[50,80]),3100,ifelse(p2bodydist x<=20,1200,100)),100)
triggerall = !IsHelper
triggerall = var(59)>0 
triggerall=(helper(218),var(35)=[14,15]) && stateno!=[100,109]
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<3||life<200||p2life<300||var(8)
;triggerall=(stateno!=[100,101])||p2bodydist x<=10||helper(218),var(35)!=1
;triggerall=var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000||helper(218),fvar(5)=-99999||facing*enemynear(helper(218),Var(36)),facing>0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
;triggerall=p2stateno!=5299
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
triggerall = var(51)-((ceil(var(51)/1000)-ifelse(var(51)-(ceil(var(51)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (stateno!=123)
triggerall = statetype!= A
;triggerall=(p2statetype=A)&&(p2bodydist y+enemynear(helper(218),Var(36)),vel y*ifelse(p2bodydist x>60,ifelse(p2bodydist x>130,16,9),5)=[-40,20]);||(helper(218),var(35)=12)
triggerall=p2bodydist x>-40
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||(StateNo = 109);||(stateno=100) || (stateno=105)
trigger1=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000
trigger1=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger1=p2movetype=H&&p2stateno>200
[State -1, Stand]
type = ChangeState 
value =ifelse(p2bodydist x<=20,1200,100)
triggerall = !IsHelper
triggerall = var(59)>0 
triggerall=(helper(218),var(35)=[14,15]) && stateno!=[100,109]
;triggerall=(stateno!=[100,101])||p2bodydist x<=10||helper(218),var(35)!=1
;triggerall=var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000||helper(218),fvar(5)=-99999||facing*enemynear(helper(218),Var(36)),facing>0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
;triggerall=p2stateno!=5299
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
triggerall = var(51)-((ceil(var(51)/1000)-ifelse(var(51)-(ceil(var(51)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (stateno!=123)
triggerall = statetype!= A
;triggerall=(p2statetype=A)&&(p2bodydist y+enemynear(helper(218),Var(36)),vel y*ifelse(p2bodydist x>60,ifelse(p2bodydist x>130,16,9),5)=[-40,20]);||(helper(218),var(35)=12)
triggerall=p2bodydist x>-40
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||(StateNo = 109);||(stateno=100) || (stateno=105)
trigger1=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000
trigger1=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger1=p2movetype=H&&p2stateno>200
[State -1, Stand]
type = ChangeState 
value =ifelse(p2bodydist x<=20,1120,100)
triggerall = !IsHelper
triggerall = var(59)>0 
triggerall=helper(218),var(35)=13 && (p2bodydist x<=20||stateno!=[100,199])
;triggerall=(stateno!=[100,101])||p2bodydist x<=10||helper(218),var(35)!=1
triggerall=var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000||helper(218),fvar(5)=-99999||facing*enemynear(helper(218),Var(36)),facing>0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
;triggerall=p2stateno!=5299
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
triggerall = var(51)-((ceil(var(51)/1000)-ifelse(var(51)-(ceil(var(51)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (stateno!=123)
triggerall = statetype!= A
;triggerall=(p2statetype=A)&&(p2bodydist y+enemynear(helper(218),Var(36)),vel y*ifelse(p2bodydist x>60,ifelse(p2bodydist x>130,16,9),5)=[-40,20]);||(helper(218),var(35)=12)
triggerall=p2bodydist x>-20
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||(StateNo = 109)||(stateno=100) || (stateno=105)
trigger1=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000
trigger1=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger1=p2movetype=H&&p2stateno>200
[State -1, Stand]
type = ChangeState 
value =ifelse(p2bodydist x<=150,28,780)
triggerall = !IsHelper
triggerall = var(59)>0 
triggerall=helper(218),var(35)=13 && power<3000
;triggerall=(stateno!=[100,101])||p2bodydist x<=10||helper(218),var(35)!=1
triggerall=var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000||helper(218),fvar(5)=-99999||facing*enemynear(helper(218),Var(36)),facing>0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
;triggerall=p2stateno!=5299
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
triggerall = var(51)-((ceil(var(51)/1000)-ifelse(var(51)-(ceil(var(51)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (stateno!=123)
triggerall = statetype!= A
;triggerall=(p2statetype=A)&&(p2bodydist y+enemynear(helper(218),Var(36)),vel y*ifelse(p2bodydist x>60,ifelse(p2bodydist x>130,16,9),5)=[-40,20]);||(helper(218),var(35)=12)
triggerall=p2bodydist x>150||(backedgebodydist>40&&stateno!=28)
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||(StateNo = 109)||(stateno=100) || (stateno=105)
trigger1=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000
trigger1=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger1=p2movetype=H&&p2stateno>200
[State -1]
type = ChangeState
value = ifelse(p2statetype=A,ifelse(p2bodydist y>0,640,ifelse(random<=500,600,650)),1310)
triggerall = !ishelper
triggerall = var(59)>0 
triggerall = RoundState = 2 && Alive && (stateno!=123) 
;triggerall=(helper(218),var(35)!=19)||p2statetype=A
;triggerall =var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||p2statetype=A||vel x<0||(stateno=[60,69])||(pos y>=-90&&p2bodydist x>70)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/100000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100000)*100000)<0,1,0))*100000)>=10000
triggerall = statetype = A
;triggerall = p2statetype = A
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])
triggerall=p2bodydist x<=60+ifelse(vel x=0,0,30)
triggerall=p2bodydist x>=-60
triggerall=(p2statetype=A && p2bodydist y=[-40,40])||((vel y>0||helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)=1) && pos y>=-90 && p2statetype!=A)
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),fvar(5)=-99999
;trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000
trigger2=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=(p2statetype!=A)||(p2movetype!=H);||p2stateno<=200||p2stateno=[5100,5110] 
trigger3=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
trigger3=(enemynear(helper(218),Var(36)),facing*facing>0)&&(helper(218),var(10))-((ceil((helper(218),var(10))/10000)-ifelse((helper(218),var(10))-(ceil((helper(218),var(10))/10000)*10000)<0,1,0))*10000)>=1000
[State -1, Stand]
type = ChangeState 
value =1400
triggerall = !IsHelper
triggerall =var(59)>0 
;triggerall= (var(53)!=[1,5])||p2statetype=A
triggerall=(helper(218),var(35)!=11)
triggerall=(helper(218),var(35)!=14)||p2bodydist x<=20
;triggerall=(helper(218),var(35)!=8)||p2bodydist x<=20||time>=8||p2statetype=A
;;triggerall=(helper(218),var(35)!=8)||time>=5||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||p2statetype=A
;triggerall=p2stateno!=6312
;triggerall=(stateno!=[100,101])||p2bodydist x<=10||helper(218),var(35)!=1
triggerall=var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000||helper(218),fvar(5)=-99999||facing*enemynear(helper(218),Var(36)),facing>0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
;triggerall=p2stateno!=5299
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
triggerall = var(51)-((ceil(var(51)/1000)-ifelse(var(51)-(ceil(var(51)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (stateno!=123) 
triggerall = statetype != A
triggerall=(p2statetype!=A);||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*ifelse(p2bodydist x>50,8,5)=[-40,20]);||(helper(218),var(35)=12)
triggerall=p2bodydist x>=-40
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=p2bodydist x-enemynear(helper(218),Var(36)),vel x*4<=20
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||(StateNo = 109)||(stateno=100)||((stateno = [740,742])&&time >= 16)
trigger1=(helper(218),var(35)=8)
trigger1=helper(218),var(56)<2000000 && helper(218),var(59)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger1=(helper(218),var(56)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(56)-(ceil(helper(218),Var(56)/1000)-ifelse(helper(218),Var(56)-(ceil(helper(218),Var(56)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=(helper(218),var(59)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(59)-(ceil(helper(218),Var(59)/1000)-ifelse(helper(218),Var(59)-(ceil(helper(218),Var(59)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger1=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
[State -1, Stand]
type = ChangeState 
value =ifelse(p2statetype=A,ifelse(p2bodydist x<=50,230,240),ifelse(p2bodydist x<=50,400,410))
triggerall = !IsHelper
triggerall =var(59)>0 
;triggerall= (var(53)!=[1,5])||p2statetype=A
triggerall=(helper(218),var(35)!=11)
triggerall=(helper(218),var(35)!=14)||p2bodydist x<=20
;triggerall=(helper(218),var(35)!=8)||p2bodydist x<=20||time>=8||p2statetype=A
;;triggerall=(helper(218),var(35)!=8)||time>=5||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2||p2statetype=A
;triggerall=p2stateno!=6312
;triggerall=(stateno!=[100,101])||p2bodydist x<=10||helper(218),var(35)!=1
;triggerall=var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000||helper(218),fvar(5)=-99999||facing*enemynear(helper(218),Var(36)),facing>0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=(enemynear(helper(218),Var(36)),HitDefAttr!=SCA,HA,HP)||(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
;triggerall=p2stateno!=5299
;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
triggerall = var(51)-((ceil(var(51)/1000)-ifelse(var(51)-(ceil(var(51)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (stateno!=123) 
triggerall = statetype != A
triggerall=(p2statetype!=A)||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*ifelse(p2bodydist x>50,8,5)=[-40,20]);||(helper(218),var(35)=12)
triggerall=p2bodydist x>=-40
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=p2bodydist x-enemynear(helper(218),Var(36)),vel x*4<=80
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||(StateNo = 109)||(stateno=100)
trigger1=helper(218),var(35)=1||helper(218),var(35)=5||helper(218),fvar(5)=-99999||(helper(218),var(35)=[8,9])
trigger1=helper(218),var(52)<2000000 && helper(218),var(53)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger1=(helper(218),var(52)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)-ifelse(helper(218),Var(52)-(ceil(helper(218),Var(52)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=(helper(218),var(53)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)-ifelse(helper(218),Var(53)-(ceil(helper(218),Var(53)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger2=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000
trigger2=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
trigger2=p2movetype=H&&p2stateno>200
;trigger3=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
;trigger3=(enemynear(helper(218),Var(36)),facing*facing>0)&&(helper(218),var(10))-((ceil((helper(218),var(10))/10000)-ifelse((helper(218),var(10))-(ceil((helper(218),var(10))/10000)*10000)<0,1,0))*10000)>=1000





















[State -1, Stand]
type = ChangeState
value =3400
triggerall = !IsHelper
triggerall = var(59)>0
;triggerall = helper(218),var(35)!=1
;triggerall = helper(218),var(35)!=14
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(51)-((ceil(var(51)/1000)-ifelse(var(51)-(ceil(var(51)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (stateno!=123) && (statetype !=A) && power>=3000 && p2life<=400 && var(20)=0 && var(8)=0
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||(StateNo = 109)||((stateno=[100,110])&&stateno!=105)
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-20 ;&& enemynear(Var(36)),vel x<=0
triggerall=P2bodyDist X <=150
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
;triggerall=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
;triggerall=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
;triggerall=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
;triggerall=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
;triggerall=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
;triggerall=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
;triggerall=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
;triggerall=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
;triggerall=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(29)<=999||(fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=fvar(28)<=999||(fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=helper(218),var(57)<2000000 && helper(218),var(58)<2000000
triggerall=(helper(218),var(57)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)-ifelse(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(58)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)-ifelse(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[10,19]
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[10,19]
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[10,19]
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[10,19]
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[10,19]
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[10,19]
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[10,19]
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[10,19]
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[10,19]
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[10,19]
[State -1, Stand]
type = ChangeState
value =400
triggerall = !IsHelper
triggerall = var(59)>0
;triggerall = helper(218),var(35)!=1
;triggerall = helper(218),var(35)!=14
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(51)-((ceil(var(51)/1000)-ifelse(var(51)-(ceil(var(51)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (stateno!=123) && (statetype !=A) ;&& random<=500
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||(StateNo = 109)||((stateno=[100,110])&&stateno!=105)
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-20 ;&& enemynear(Var(36)),vel x<=0
triggerall=P2bodyDist X <=60
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
triggerall=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
triggerall=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
triggerall=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
triggerall=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
triggerall=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
triggerall=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
triggerall=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
triggerall=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
triggerall=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
triggerall=fvar(29)<=999||(fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(28)<=999||(fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=(helper(218),var(50)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)-ifelse(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(51)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)-ifelse(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger11=fvar(29)>999&&fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=fvar(29)>999&&fvar(29)-((ceil(fvar(29)/1000)-ifelse(fvar(29)-(ceil(fvar(29)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger12=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger13=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger14=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger15=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
trigger16=fvar(28)>999&&fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=fvar(28)>999&&fvar(28)-((ceil(fvar(28)/1000)-ifelse(fvar(28)-(ceil(fvar(28)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=4
[State -1, Stand]
type = ChangeState
value =410
triggerall = !IsHelper
triggerall = var(59)>0
;triggerall = helper(218),var(35)!=1
;triggerall = helper(218),var(35)!=14
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(51)-((ceil(var(51)/1000)-ifelse(var(51)-(ceil(var(51)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (stateno!=123) && (statetype !=A) ;&& random<=500
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||(StateNo = 109)||((stateno=[100,110])&&stateno!=105)
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-20 ;&& enemynear(Var(36)),vel x<=0
triggerall=P2bodyDist X <=90
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
triggerall=fvar(29)<=999||(fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=fvar(28)<=999||(fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||helper(218),var(14)<2
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=(helper(218),var(50)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)-ifelse(helper(218),Var(50)-(ceil(helper(218),Var(50)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(51)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)-ifelse(helper(218),Var(51)-(ceil(helper(218),Var(51)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger11=fvar(29)>999&&fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=fvar(29)>999&&fvar(29)-((ceil(fvar(29)/1000)-ifelse(fvar(29)-(ceil(fvar(29)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger12=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger13=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger14=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger15=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
trigger16=fvar(28)>999&&fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=fvar(28)>999&&fvar(28)-((ceil(fvar(28)/1000)-ifelse(fvar(28)-(ceil(fvar(28)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=9
[State -1, Stand]
type = ChangeState
value =ifelse((var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2),47,48)
triggerall = !IsHelper
triggerall = var(59)>0 
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)
;triggerall = ((Power <1000) && (Var(33) = 0))||(Var(46)=[1,1000])||p2bodydist x>300||p2statetype=A
triggerall = RoundState = 2 && Alive && (stateno!=123)  && (statetype !=A)
;triggerall=p2bodydist x>-30
triggerall=enemynear(helper(218),Var(36)),facing*facing<0||p2bodydist x<=0;||((p2bodydist x>=140||p2bodydist x<=50)&&(fvar(4)>2000000||fvar(5)>2000000))
triggerall=p2movetype=A
;triggerall=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[6000,6999])||p2statetype=S
;triggerall=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[2000,2999])&&(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[9000,9999])
;triggerall=var(48)=11||(random<=400)
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||(StateNo = 109)||(stateno=[100,110])
triggerall=(enemynear(helper(218),Var(36)),HitDefAttr =SCA,NT,ST,HT)||(var(46)>=2000000||var(47)>=2000000)
triggerall=(var(51)-((ceil(var(51)/100000)-ifelse(var(51)-(ceil(var(51)/100000)*100000)<0,1,0))*100000)=[11000,11999])||random<=400
triggerall=numpartner=0||partner,life<=0||(partner,movetype !=H)||(partner,stateno-p2stateno !=[-99,99])
trigger1=1
trigger1=helper(218),var(44)<2000000 && helper(218),var(45)<2000000 ;&& (var(52)<20000||p2stateno>=1000)
trigger1=(helper(218),var(44)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(44)-(ceil(helper(218),Var(44)/1000)-ifelse(helper(218),Var(44)-(ceil(helper(218),Var(44)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=(helper(218),var(45)-(p2stateno*100) !=[-999,999])
trigger1=(helper(218),Var(45)-(ceil(helper(218),Var(45)/1000)-ifelse(helper(218),Var(45)-(ceil(helper(218),Var(45)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
[State -1, Stand]
type = ChangeState
value =48
triggerall = !IsHelper
triggerall = var(59)>0 
triggerall = (helper(218),var(35)!=1)&&(helper(218),var(35)!=5)
;triggerall = ((Power <1000) && (Var(33) = 0))||(Var(46)=[1,1000])||p2bodydist x>300||p2statetype=A
triggerall = RoundState = 2 && Alive && (stateno!=123)  && (statetype !=A)
;triggerall=p2bodydist x>-30
triggerall=enemynear(helper(218),Var(36)),facing*facing<0||p2bodydist x<=0;||((p2bodydist x>=140||p2bodydist x<=50)&&(fvar(4)>2000000||fvar(5)>2000000))
triggerall=p2movetype=A
;triggerall=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[6000,6999])||p2statetype=S
;triggerall=(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[2000,2999])&&(var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)!=[9000,9999])
;triggerall=var(48)=11||(random<=400)
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||(StateNo = 109)||(stateno=[100,110])
triggerall=(enemynear(helper(218),Var(36)),HitDefAttr =SCA,NT,ST,HT)||(var(46)>=2000000||var(47)>=2000000)
triggerall=(var(51)-((ceil(var(51)/100000)-ifelse(var(51)-(ceil(var(51)/100000)*100000)<0,1,0))*100000)=[11000,11999])||random<=400
triggerall=numpartner=0||partner,life<=0||(partner,movetype !=H)||(partner,stateno-p2stateno !=[-99,99])
trigger1=1
[State -1, Stand]
type = ChangeState
value =700
triggerall = !IsHelper
triggerall = var(59)>0
triggerall = helper(218),var(35)!=1
triggerall = helper(218),var(35)!=[8,9]
;triggerall = helper(218),var(35)!=14
;triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(51)-((ceil(var(51)/1000)-ifelse(var(51)-(ceil(var(51)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (stateno!=123) && (statetype !=A) ;&& random<=500
triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||(StateNo = 109)
triggerall = numexplod(700)=0
triggerall = p2movetype=A
triggerall=p2statetype =A && p2bodydist y+enemynear(helper(218),Var(36)),vel y*30<=20 && (enemynear(helper(218),Var(36)),vel x>0||(enemynear(helper(218),Var(36)),vel x>=0&&p2bodydist x<40))
triggerall=p2bodydist x>=-20 ;&& enemynear(Var(36)),vel x<=0
triggerall=P2bodyDist X-enemynear(helper(218),Var(36)),vel x*10<=80 && frontedgebodydist-p2bodydist x>90
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=helper(218),var(54)<2000000 && helper(218),var(55)<2000000 && (var(46)=[0,999999]) && (var(46)!=p2stateno) && (var(47)=[0,999999]) && (var(47)!=p2stateno)
triggerall=(helper(218),var(54)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)-ifelse(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(55)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)-ifelse(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=ifelse(life<500,20,30)
[State -1, Stand]
type = ChangeState
value =700
triggerall = !IsHelper
triggerall = var(59)>0
triggerall = helper(218),var(35)!=1
triggerall = helper(218),var(35)!=[8,9]
;triggerall = helper(218),var(35)!=14
;triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(51)-((ceil(var(51)/1000)-ifelse(var(51)-(ceil(var(51)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (stateno!=123) && (statetype !=A) ;&& random<=500
triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||(StateNo = 109)
triggerall = numexplod(700)=0
triggerall = (facing>0 && partner,pos x<pos x)||(facing<0 && partner,pos x>pos x)
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-20 ;&& enemynear(Var(36)),vel x<=0
triggerall=P2bodyDist X-enemynear(helper(218),Var(36)),vel x*10<=80 && frontedgebodydist-p2bodydist x>60
trigger1=partner,life>0
[State -1, Stand]
type = ChangeState
value =700
triggerall = !IsHelper
triggerall = var(59)>0
triggerall = helper(218),var(35)!=1
triggerall = helper(218),var(35)!=[8,9]
;triggerall = helper(218),var(35)!=14
;triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(51)-((ceil(var(51)/1000)-ifelse(var(51)-(ceil(var(51)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (stateno!=123) && (statetype !=A) ;&& random<=500
triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||(StateNo = 109)
triggerall = numexplod(700)=0
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-20 ;&& enemynear(Var(36)),vel x<=0
triggerall=P2bodyDist X-enemynear(helper(218),Var(36)),vel x*10<=80 && frontedgebodydist-p2bodydist x>60
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=helper(218),var(54)<2000000 && helper(218),var(55)<2000000 && (var(46)=[0,999999]) && (var(46)!=p2stateno) && (var(47)=[0,999999]) && (var(47)!=p2stateno)
triggerall=(helper(218),var(54)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)-ifelse(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(55)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)-ifelse(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=7
trigger11=fvar(29)>999&&fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger11=fvar(29)>999&&fvar(29)-((ceil(fvar(29)/1000)-ifelse(fvar(29)-(ceil(fvar(29)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=30
trigger12=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger12=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=30
trigger13=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger13=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=30
trigger14=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger14=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=30
trigger15=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger15=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=30
trigger16=fvar(28)>999&&fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger16=fvar(28)>999&&fvar(28)-((ceil(fvar(28)/1000)-ifelse(fvar(28)-(ceil(fvar(28)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=30
trigger17=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)=1||enemynear(helper(218),Var(36)),vel x>=3
[State -1, Stand]
type = ChangeState
value =701
triggerall = !IsHelper
triggerall = var(59)>0 && var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=ifelse(life<p2life||life<400,20,30)
triggerall = helper(218),var(35)!=1
triggerall = helper(218),var(35)!=[8,9]
;triggerall = helper(218),var(35)!=14
;triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(51)-((ceil(var(51)/1000)-ifelse(var(51)-(ceil(var(51)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (stateno!=123) && (statetype !=A) ;&& random<=500
triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||(StateNo = 109)||(stateno=100)
triggerall = p2movetype=A
;triggerall=p2statetype !=A
triggerall=p2bodydist x>=-20 ;&& enemynear(Var(36)),vel x<=0
;triggerall=P2bodyDist X-enemynear(helper(218),Var(36)),vel x*10<=80 && frontedgebodydist-p2bodydist x>60
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=helper(218),var(54)<2000000 && helper(218),var(55)<2000000 && (var(46)=[0,999999]) && (var(46)!=p2stateno) && (var(47)=[0,999999]) && (var(47)!=p2stateno)
triggerall=(helper(218),var(54)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)-ifelse(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(55)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)-ifelse(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=(var(48)>0 && var(48)=p2stateno)||(var(49)>0 && var(49)=p2stateno)
trigger2=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)=1&&enemynear(helper(218),Var(36)),vel x<=0
[State -1, Stand]
type = ChangeState
value =ifelse(p2bodydist x<=30,730,700)
triggerall = !IsHelper
triggerall = var(59)>0
triggerall=var(52)=[-1,999]
triggerall = helper(218),var(35)!=1
triggerall = helper(218),var(35)!=[8,9]
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(51)-((ceil(var(51)/1000)-ifelse(var(51)-(ceil(var(51)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (stateno!=123) && (statetype !=A) ;&& random<=500
triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||(StateNo = 109)
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-20 ;&& enemynear(Var(36)),vel x<=0
;triggerall=P2bodyDist X <=90
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=fvar(29)<=999||(fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=fvar(28)<=999||(fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=helper(218),var(54)<2000000 && helper(218),var(55)<2000000 && (var(48)!=p2stateno) && (var(49)!=p2stateno) && (var(48)=[0,1999999]) && (var(49)=[0,1999999])
triggerall=(helper(218),var(54)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)-ifelse(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(55)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)-ifelse(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[8,10]
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[8,10]
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[8,10]
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[8,10]
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[8,10]
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[8,10]
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[8,10]
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[8,10]
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[8,10]
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[8,10]
[State -1, Stand]
type = ChangeState
value =735
triggerall = !IsHelper
triggerall = var(59)>0
triggerall=var(52)=[-1,999]
triggerall = helper(218),var(35)!=1
triggerall = helper(218),var(35)!=[8,9]
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(51)-((ceil(var(51)/1000)-ifelse(var(51)-(ceil(var(51)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (stateno!=123) && (statetype !=A) ;&& random<=500
triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000||(p2stateno<700&&inguarddist)
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||(StateNo = 109)
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-20 ;&& enemynear(Var(36)),vel x<=0
;triggerall=P2bodyDist X <=90
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
triggerall=fvar(29)<=999||(fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=fvar(24)<=999||(fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=fvar(25)<=999||(fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=fvar(26)<=999||(fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=fvar(27)<=999||(fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=fvar(28)<=999||(fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999]);||helper(218),var(14)<2
triggerall=helper(218),var(54)<2000000 && helper(218),var(55)<2000000 && (var(48)!=p2stateno) && (var(49)!=p2stateno) && (var(48)=[0,1999999]) && (var(49)=[0,1999999])
triggerall=(helper(218),var(54)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)-ifelse(helper(218),Var(54)-(ceil(helper(218),Var(54)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(55)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)-ifelse(helper(218),Var(55)-(ceil(helper(218),Var(55)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(30)>999&&fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)>=9
trigger1=fvar(30)>999&&fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[0,10]
trigger2=fvar(33)>999&&fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)>=9
trigger2=fvar(33)>999&&fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[0,10]
trigger3=fvar(32)>999&&fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)>=9
trigger3=fvar(32)>999&&fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[0,10]
trigger4=fvar(39)>999&&fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)>=9
trigger4=fvar(39)>999&&fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[0,10]
trigger5=fvar(38)>999&&fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)>=9
trigger5=fvar(38)>999&&fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[0,10]
trigger6=fvar(37)>999&&fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)>=9
trigger6=fvar(37)>999&&fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[0,10]
trigger7=fvar(36)>999&&fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)>=9
trigger7=fvar(36)>999&&fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[0,10]
trigger8=fvar(35)>999&&fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)>=9
trigger8=fvar(35)>999&&fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[0,10]
trigger9=fvar(34)>999&&fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)>=9
trigger9=fvar(34)>999&&fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[0,10]
trigger10=fvar(31)>999&&fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)>=9
trigger10=fvar(31)>999&&fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)=[0,10]
[State -1, Stand]
type = ChangeState
value =ifelse(power>=3000,3160,3100)
triggerall = !IsHelper
triggerall = var(59)>0 && var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<=1 && partner,life<=0
triggerall = helper(218),var(35)!=1
triggerall = helper(218),var(35)!=14
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall = var(51)-((ceil(var(51)/1000)-ifelse(var(51)-(ceil(var(51)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (stateno!=123) && (statetype !=A) && power >= 1000 && backedgebodydist<=130 && !var(20)
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<3||life<200||p2life<300||var(8)
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000;||(p2stateno<700&&inguarddist)
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||(StateNo = 109)
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-20 && p2bodydist x<=200
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=helper(218),var(44)<2000000 && helper(218),var(45)<2000000
;triggerall=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
;triggerall=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
;triggerall=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
;triggerall=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
;triggerall=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
;triggerall=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
;triggerall=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
;triggerall=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
;triggerall=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
;triggerall=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
triggerall=helper(218),var(57)<2000000 && helper(218),var(58)<2000000
triggerall=(helper(218),var(57)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)-ifelse(helper(218),Var(57)-(ceil(helper(218),Var(57)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
triggerall=(helper(218),var(58)-(p2stateno*100) !=[-999,999])
triggerall=(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)-ifelse(helper(218),Var(58)-(ceil(helper(218),Var(58)/1000)*1000)<0,1,0))*1000)-(ceil((p2stateno)/10)-ifelse((p2stateno)-(ceil((p2stateno)/10)*10)<0,1,0))!=[0,9]
trigger1=fvar(29)>999&&fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(29)>999&&fvar(29)-((ceil(fvar(29)/1000)-ifelse(fvar(29)-(ceil(fvar(29)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=25
trigger2=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=25
trigger3=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=25
trigger4=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=25
trigger5=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=25
trigger6=fvar(28)>999&&fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(28)>999&&fvar(28)-((ceil(fvar(28)/1000)-ifelse(fvar(28)-(ceil(fvar(28)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=25
[State -1, Stand]
type = ChangeState
value =ifelse(p2bodydist x>170,107,42)
triggerall = !IsHelper
triggerall = var(59)>0 
triggerall = helper(218),var(35)!=1
triggerall = helper(218),var(35)!=14
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall = var(51)-((ceil(var(51)/1000)-ifelse(var(51)-(ceil(var(51)/1000)*1000)<0,1,0))*1000) !=[100,199]
triggerall = RoundState = 2 && Alive && (stateno!=123) && (statetype !=A)
;triggerall=enemynear(helper(218),Var(36)),facing*facing<0
;triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100000)*100000)<0,1,0))*100000)<50000;||(p2stateno<700&&inguarddist)
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||(StateNo = 109)||(stateno=100)||(stateno=105)
triggerall = p2movetype=A
triggerall=p2statetype !=A
triggerall=p2bodydist x>=-20
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/1000)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/1000)*1000)<0,1,0))*1000) !=[100,299]
;triggerall=helper(218),var(44)<2000000 && helper(218),var(45)<2000000
;triggerall=fvar(30)<=999||(fvar(30)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(30)-((ceil(fvar(30)/1000)-ifelse(fvar(30)-(ceil(fvar(30)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
;triggerall=fvar(33)<=999||(fvar(33)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(33)-((ceil(fvar(33)/1000)-ifelse(fvar(33)-(ceil(fvar(33)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
;triggerall=fvar(32)<=999||(fvar(32)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(32)-((ceil(fvar(32)/1000)-ifelse(fvar(32)-(ceil(fvar(32)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
;triggerall=fvar(39)<=999||(fvar(39)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(39)-((ceil(fvar(39)/1000)-ifelse(fvar(39)-(ceil(fvar(39)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
;triggerall=fvar(38)<=999||(fvar(38)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(38)-((ceil(fvar(38)/1000)-ifelse(fvar(38)-(ceil(fvar(38)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
;triggerall=fvar(37)<=999||(fvar(37)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(37)-((ceil(fvar(37)/1000)-ifelse(fvar(37)-(ceil(fvar(37)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
;triggerall=fvar(36)<=999||(fvar(36)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(36)-((ceil(fvar(36)/1000)-ifelse(fvar(36)-(ceil(fvar(36)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
;triggerall=fvar(35)<=999||(fvar(35)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(35)-((ceil(fvar(35)/1000)-ifelse(fvar(35)-(ceil(fvar(35)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
;triggerall=fvar(34)<=999||(fvar(34)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(34)-((ceil(fvar(34)/1000)-ifelse(fvar(34)-(ceil(fvar(34)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
;triggerall=fvar(31)<=999||(fvar(31)-(enemynear(helper(218),Var(36)),stateno*1000)!=[-2,999])||fvar(31)-((ceil(fvar(31)/1000)-ifelse(fvar(31)-(ceil(fvar(31)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=6
trigger1=fvar(29)>999&&fvar(29)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger1=fvar(29)>999&&fvar(29)-((ceil(fvar(29)/1000)-ifelse(fvar(29)-(ceil(fvar(29)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=30
trigger2=fvar(24)>999&&fvar(24)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger2=fvar(24)>999&&fvar(24)-((ceil(fvar(24)/1000)-ifelse(fvar(24)-(ceil(fvar(24)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=30
trigger3=fvar(25)>999&&fvar(25)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger3=fvar(25)>999&&fvar(25)-((ceil(fvar(25)/1000)-ifelse(fvar(25)-(ceil(fvar(25)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=30
trigger4=fvar(26)>999&&fvar(26)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger4=fvar(26)>999&&fvar(26)-((ceil(fvar(26)/1000)-ifelse(fvar(26)-(ceil(fvar(26)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=30
trigger5=fvar(27)>999&&fvar(27)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger5=fvar(27)>999&&fvar(27)-((ceil(fvar(27)/1000)-ifelse(fvar(27)-(ceil(fvar(27)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=30
trigger6=fvar(28)>999&&fvar(28)-(enemynear(helper(218),Var(36)),stateno*1000)=[-2,999]
trigger6=fvar(28)>999&&fvar(28)-((ceil(fvar(28)/1000)-ifelse(fvar(28)-(ceil(fvar(28)/1000)*1000)<0,1,0))*1000)-helper(218),var(14)>=30









[State -1, Sidestep Follow Up Punch]
type = ChangeState
value = ifelse(random<=500,732,731)
triggerall = var(59) 
triggerall = statetype != A
trigger1 = StateNo = 735 && Time =[14,24]
trigger1 = p2bodydist x>-20 && p2bodydist x<=30 && p2statetype!=A
[State -1, dast]
type = ChangeState
value = ifelse(stateno=600||stateno=610,stateno+30,ifelse(stateno=630,610,ifelse(stateno=640,ifelse(power>=1000&&p2life<200,3350,650),600)))
triggerall = !ishelper
triggerall = var(59)>0 
triggerall = RoundState = 2 && Alive && (stateno!=123)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
;;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)=[3,ifelse(power<900,4,3)]
triggerall = statetype = A 
triggerall=p2bodydist x>=-60
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=0;(p2stateno>=200&&p2movetype=H) && p2statetype=A
trigger1 = stateno = 600 && movecontact
trigger2 = stateno = 610 && movecontact
trigger3 = stateno = 630 && movecontact
trigger4 = stateno = 640 && movecontact
trigger5 = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||(StateNo = 109)||(stateno=100000) ;;|| (Anim = [99,101])
trigger5 = p2bodydist x<=40 && p2bodydist y=[ifelse(vel y<0,-60,-20),20]
[State -1, Sidestep Follow Up Punch]
type = ChangeState
value = ifelse(random<=500,732,731)
triggerall = var(59) 
triggerall = statetype != A
trigger1 = StateNo = 735 && Time =[14,24]
trigger1 = p2bodydist x>-20 && p2bodydist x<=30 && p2statetype!=A
[State -1, dast]
type = ChangeState
value = 3050
triggerall = !ishelper
triggerall = var(59)>0 
triggerall = RoundState = 2 && Alive && (stateno!=123)
triggerall = power >= 3000 && p2life<400 && !var(20)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
;;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)=[3,ifelse(power<900,4,3)]
triggerall = statetype != A 
triggerall=p2bodydist x>=-60 && p2bodydist x<=30
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=(p2stateno>=200&&p2movetype=H&&movehit) && p2statetype!=A
trigger1 = (stateno = [1000,1111]) && movecontact
;trigger2 = (stateno = [1200,1220]) && movecontact
;;trigger8 = (stateno = [1400,1499]) && movecontact 
[State -1, dast]
type = ChangeState
value = ifelse(power<2000,3100,3200)
triggerall = !ishelper
triggerall = var(59)>0 
triggerall = RoundState = 2 && Alive && (stateno!=123) 
triggerall = power >= ifelse(backedgebodydist<=100,1000,2000) && var(8)=0 && !var(20)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=2
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<3||power>=ifelse(life<200||p2life<400,2000,3000)||var(8)
triggerall = statetype != A 
triggerall=p2bodydist x>=-60; && p2bodydist x<=30
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=(p2stateno>=200&&p2movetype=H&&movehit) && p2statetype!=A
trigger1 = (stateno = [1000,1111]) && movecontact
;trigger2 = (stateno = [1200,1220]) && movecontact
;trigger3 = (stateno = [1400,1499]) && movecontact 
[State -1, dast]
type = ChangeState
value = ifelse(((p2life<200&&random<=500)||(frontedgebodydist<120&&p2life>200&&random<=500&&life>p2life))&&var(8),3350,ifelse(power<3000||var(8)=0,3000,3050)+ifelse(var(8)=0,200,0))
triggerall = !ishelper
triggerall = var(59)>0 
triggerall = RoundState = 2 && Alive && (stateno!=123)
triggerall = power >= 1000 && !var(20)
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=3 && (power>=ifelse(life<200||p2life<400,2000,3000)||var(8))
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
;;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)=[3,ifelse(power<900,4,3)]
triggerall = statetype != A 
triggerall=p2bodydist x>=-60 && p2bodydist x<=30
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=(p2stateno>=200&&p2movetype=H&&movehit) && p2statetype!=A
trigger1 = (stateno = [1000,1111]) && movecontact
;trigger2 = (stateno = [1200,1220]) && movecontact
;trigger3 = (stateno = [1400,1499]) && movecontact 
[State -1, dast]
type = ChangeState
value = ifelse(p2life<200||frontedgebodydist<120,3350,ifelse(power<3000,3000,3050)+ifelse(var(8)=0&&random<=500&&power<3000&&life>p2life&&p2life>200,200,0))
triggerall = !ishelper
triggerall = var(59)>0 
triggerall = RoundState = 2 && Alive && (stateno!=123)
triggerall = power >= 1000 && !var(20)
triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<3;||power>=ifelse(life<200||p2life<400,2000,3000)||var(8)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
;;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)=[3,ifelse(power<900,4,3)]
triggerall = statetype != A 
triggerall=p2bodydist x>=-60 && p2bodydist x<=30
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=(p2stateno>=200&&p2movetype=H&&movehit) && p2statetype!=A
trigger1 = (stateno = [1000,1111]) && movecontact
;trigger2 = (stateno = [1200,1220]) && movecontact
;trigger3 = (stateno = [1400,1499]) && movecontact 
[State -1, dast]
type = ChangeState
value = 1010;ifelse(p2bodydist x<=40,1000,ifelse(p2bodydist x<=90,1010,1020))
triggerall = !ishelper
triggerall = var(59)>0 
triggerall = RoundState = 2 && Alive && (stateno!=123) && ((power>=1000&&var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<3)||power>=ifelse(life<200||p2life<400,2000,3000)||random<=500||var(8))
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
;;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)=[3,ifelse(power<900,4,3)]
triggerall = statetype != A 
triggerall=p2bodydist x>ifelse(stateno=430||stateno=400,-60,20) && p2bodydist x<=80
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=(p2stateno>=200&&p2movetype=H&&movehit) && p2statetype!=A
trigger1 = (stateno = [200,210]) && movecontact
trigger2 = stateno = 220 && movecontact
trigger3 = stateno = 230 && time = [5,9]
trigger4 = stateno = 240 && movecontact
trigger5 = (stateno = [400,ifelse(p2bodydist x<=55,410,400)]) && movecontact ;&& p2bodydist x<=60
trigger6 = stateno = 430 && movecontact && p2bodydist x<=50
trigger7 = (stateno = [1200,1299]) && movecontact
trigger8 = (stateno = [1100,1111]) && movecontact
[State -1, dast]
type = ChangeState
value = 1300
triggerall = !ishelper
triggerall = var(59)>0 
triggerall = RoundState = 2 && Alive && (stateno!=123)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
;;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)=[3,ifelse(power<900,4,3)]
triggerall = statetype = A 
triggerall=p2bodydist x>=-60
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=p2statetype!=A;(p2stateno>=200&&p2movetype=H) && p2statetype=A
trigger1 = (stateno = [600,650]) && movecontact
[State -1, dast]
type = ChangeState
value = ifelse((stateno = [200,205]),ifelse(p2bodydist x<=20,210,215),ifelse(stateno=230,240,ifelse(stateno=400||(stateno=430&&p2bodydist x>=25),430,ifelse(stateno=430,440,250))))
triggerall = !ishelper
triggerall = var(59)>0 
triggerall = RoundState = 2 && Alive && (stateno!=123)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
;;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)=[3,ifelse(power<900,4,3)]
triggerall = statetype != A 
triggerall=p2bodydist x>=-60
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=1;(p2stateno>=200&&p2movetype=H) && p2statetype=A
trigger1 = (stateno = [200,205]) && movecontact && p2bodydist x<=50 && p2statetype!=A
trigger2 = stateno = 230 && movecontact && p2stateno>=200 && p2movetype=H && p2bodydist x<=60 && p2statetype=A
trigger3 = stateno = 400 && movecontact && p2bodydist x<=40 && p2statetype!=A
trigger4 = stateno = 430 && movecontact && p2bodydist x<=35 && p2statetype!=A
trigger5 = stateno = 245 && movecontact && p2bodydist x<=50
[State -1, dast]
type = ChangeState
value = 1010;ifelse(p2bodydist x<=40,1000,ifelse(p2bodydist x<=90,1010,1020))
triggerall = !ishelper
triggerall = var(59)>0 
triggerall = RoundState = 2 && Alive && (stateno!=123) ;;&& (power>=1000||random<=500)
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)<2||var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)>=4
;;triggerall =var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)=[3,ifelse(power<900,4,3)]
triggerall = statetype != A 
triggerall=p2bodydist x>=-60 && p2bodydist x<=80
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
triggerall=(p2stateno>=200&&p2movetype=H&&movehit) && p2statetype!=A
trigger1 = (stateno = [200,210]) && movecontact
trigger2 = stateno = 220 && movecontact
trigger3 = stateno = 230 && time = [5,9]
trigger4 = stateno = 240 && movecontact
trigger5 = (stateno = [400,ifelse(p2bodydist x<=55,410,400)]) && movecontact ;&& p2bodydist x<=60
trigger6 = stateno = 430 && movecontact && p2bodydist x<=50
trigger7 = (stateno = [1200,1299]) && movecontact
trigger8 = (stateno = [1100,1111]) && movecontact





















[State -1]
type = ChangeState
value=1400
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(helper(218),var(35)!=12)
triggerall=var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<2
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100)*100)<0,1,0))*100)<=0
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive && (stateno!=123) 
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(51)-((ceil(var(51)/1000)-ifelse(var(51)-(ceil(var(51)/1000)*1000)<0,1,0))*1000) !=[100,199]
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall = ((statetype != A)&&(p2statetype!=A));||((statetype = A)&&(p2statetype=A)&&p2bodydist y=[-40,40])
triggerall=p2bodydist x>=-40
triggerall = p2bodydist X <= 20
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000;||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H);||p2stateno=[120,159]
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||(StateNo = 109)
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0||p2statetype=A
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=100+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-50,0);;;;||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(random<=500,800,830)
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=(helper(218),var(35)!=12)
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100)*100)<0,1,0))*100)<=0
triggerall=stateno!=103
triggerall = RoundState = 2 && Alive && (stateno!=123) 
triggerall=helper(218),var(8)-((ceil(helper(218),var(8)/10)-ifelse(helper(218),var(8)-(ceil(helper(218),var(8)/10)*10)<0,1,0))*10)!=1
triggerall=(helper(218),var(19))-((ceil((helper(218),var(19))/100000)-ifelse((helper(218),var(19))-(ceil((helper(218),var(19))/100000)*100000)<0,1,0))*100000)<50000
triggerall = var(51)-((ceil(var(51)/1000)-ifelse(var(51)-(ceil(var(51)/1000)*1000)<0,1,0))*1000) !=[100,199]
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall = ((statetype != A)&&(p2statetype!=A));||((statetype = A)&&(p2statetype=A)&&p2bodydist y=[-40,40])
triggerall=p2bodydist x>=-40
triggerall = p2bodydist X <= 30
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000;||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H);||p2stateno=[120,159]
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||(StateNo = 109)
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0||p2statetype=A
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=200+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30,-100,0);;;;||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger2 =stateno=109&&random<=500
;;trigger3 =teamside=2 && var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30
[State -1]
type = ChangeState
value=109
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=stateno!=103
triggerall=(helper(218),var(35)!=12)
triggerall = RoundState = 2 && Alive && (stateno!=123)  && stateno!=3
;triggerall=partner,life>0||helper(218),var(35)!=10
;triggerall=partner,life>0||helper(218),var(10)-((ceil(helper(218),var(10)/100)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(19)-((ceil(helper(218),var(19)/100)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/100)*100)<0,1,0))*100)<=0
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall = ((statetype != A)&&(p2statetype!=A));;;;;;;||((statetype = A)&&(p2statetype=A)&&p2bodydist y=[-40,40])
triggerall=p2bodydist x>=-40
triggerall = p2bodydist X < 50
;triggerall = (p2statetype != A);||p2bodydist y+enemynear(helper(218),Var(36)),vel y*10=[-60,0]
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
;triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000;||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H);||p2stateno=[120,159]
triggerall=helper(218),var(50)<2000000 && helper(218),var(51)<2000000
triggerall=helper(218),var(52)<2000000 && helper(218),var(53)<2000000
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=100+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30,-50,0);||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999]);||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=1200
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=stateno!=103
;triggerall=(helper(218),var(35)!=12)
triggerall = RoundState = 2 && Alive && (stateno!=123)  && stateno!=3
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>=-40
triggerall=p2bodydist x-enemynear(helper(218),Var(36)),vel x*2<=20
triggerall = (p2statetype != A);||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*8>=-40&&p2bodydist x-enemynear(helper(218),Var(36)),vel x*10<=30)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=200+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-100,0);||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(random<=250||p2movetype=H,430,ifelse(random<=500,400,ifelse(random<=750,230,235)))
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=stateno!=103
;triggerall=(helper(218),var(35)!=12)
triggerall = RoundState = 2 && Alive && (stateno!=123)  && stateno!=3
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>=-40
triggerall=p2bodydist x-enemynear(helper(218),Var(36)),vel x*2<=50
triggerall = (p2statetype != A);||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*8>=-40&&p2bodydist x-enemynear(helper(218),Var(36)),vel x*10<=30)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=200+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-100,0)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(p2bodydist x>20,205,ifelse(random<=500,200,210))
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=stateno!=103
;triggerall=(helper(218),var(35)!=12)
triggerall = RoundState = 2 && Alive && (stateno!=123)  && stateno!=3
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>=-40
triggerall=p2bodydist x-enemynear(helper(218),Var(36)),vel x*2<=30
triggerall = (p2statetype != A);||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*8>=-40&&p2bodydist x-enemynear(helper(218),Var(36)),vel x*10<=30)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=200+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-100,0)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(p2bodydist x>60||random<=500,410,440)
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=stateno!=103
;triggerall=(helper(218),var(35)!=12)
triggerall = RoundState = 2 && Alive && (stateno!=123)  && stateno!=3
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>40
triggerall=p2bodydist x-enemynear(helper(218),Var(36)),vel x*2<=80
triggerall = (p2statetype != A);||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*8>=-40&&p2bodydist x-enemynear(helper(218),Var(36)),vel x*10<=30)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=200+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-100,0)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(random<=750,420,450)
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=stateno!=103
;triggerall=(helper(218),var(35)!=12)
triggerall = RoundState = 2 && Alive && (stateno!=123)  && stateno!=3
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>30
triggerall=p2bodydist x-enemynear(helper(218),Var(36)),vel x*2<=60
triggerall = (p2statetype != A);||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*8>=-40&&p2bodydist x-enemynear(helper(218),Var(36)),vel x*10<=30)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=100+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-50,0)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(p2bodydist x>=50||random<=500,215,ifelse(random<=750,220,250))
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=stateno!=103
;triggerall=(helper(218),var(35)!=12)
triggerall = RoundState = 2 && Alive && (stateno!=123)  && stateno!=3
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30
triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||random<=500
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>30
triggerall=p2bodydist x-enemynear(helper(218),Var(36)),vel x*2<=60
triggerall = (p2statetype != A);||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*8>=-40&&p2bodydist x-enemynear(helper(218),Var(36)),vel x*10<=30)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=200+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-100,0)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(p2bodydist x<=100,255,ifelse(random<=500&&var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30,245,225))
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=stateno!=103
;triggerall=(helper(218),var(35)!=12)
triggerall = RoundState = 2 && Alive && (stateno!=123)  && stateno!=3
triggerall=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30|p2bodydist x>100
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
;;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(random<=200,30,20)||helper(218),var(35)!=11
triggerall = statetype != A
;triggerall=(helper(218),var(18))-((ceil((helper(218),var(18))/100000)-ifelse((helper(218),var(18))-(ceil((helper(218),var(18))/100000)*100000)<0,1,0))*100000)!=[10000,19999]
triggerall=p2bodydist x>80
triggerall=p2bodydist x-enemynear(helper(218),Var(36)),vel x*2<=120
triggerall = (p2statetype != A);||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*8>=-40&&p2bodydist x-enemynear(helper(218),Var(36)),vel x*10<=30)
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=100+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-50,0)||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(p2bodydist x<=70&&random<=500,240,450)
triggerall = !ishelper
triggerall = var(59)>0 && var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30
triggerall=stateno!=103
triggerall=(helper(218),var(35)!=12)
triggerall = RoundState = 2 && Alive && (stateno!=123)
triggerall = statetype != A
triggerall=p2bodydist x>=-20
triggerall=p2bodydist x-enemynear(helper(218),Var(36)),vel x*2<=100
triggerall = (p2statetype != A);||(p2bodydist y+enemynear(helper(218),Var(36)),vel y*8>=-40&&p2bodydist x-enemynear(helper(218),Var(36)),vel x*10<=30)
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))|| stateno=100
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =(helper(218),fvar(30)>0 && helper(218),fvar(30)=p2stateno)||(helper(218),fvar(31)>0 && helper(218),fvar(31)=p2stateno)||(helper(218),fvar(32)>0 && helper(218),fvar(32)=p2stateno)
[State -1]
type = ChangeState
value=ifelse(random<=500||var(8)||(partner,life>0),47,48)
triggerall = !ishelper
triggerall = var(59)>0 && var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20
triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
triggerall=stateno!=103
;triggerall=(helper(218),var(35)!=12)
triggerall = RoundState = 2 && Alive && (stateno!=123) && stateno!=3
triggerall =statetype != A 
triggerall=p2bodydist x>=-20
triggerall=(p2bodydist x>0 && enemynear(helper(218),Var(36)),vel x=0)||(p2bodydist x>20 && enemynear(helper(218),Var(36)),vel x>=0)||(p2statetype!=A)||frontedgebodydist<70
triggerall=(p2bodydist x<=300)
triggerall = (p2statetype != A);||p2bodydist y+enemynear(helper(218),Var(36)),vel y*5>=-20
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>150))
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=((enemynear(helper(218),Var(36)),vel x>=0||random<=500)&&p2movetype!=H)||p2stateno=[120,159]
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=50;||(partner,life>0&&(p2bodydist x>=170||facing*enemynear(helper(218),Var(36)),facing>0));+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-50,0);||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(random<=500,ifelse(random<=250,42,43),ifelse(random<=750,47,48))
triggerall = !ishelper
triggerall = var(59)>0 && var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20
triggerall=stateno!=103
;triggerall=(helper(218),var(35)!=12)
triggerall = RoundState = 2 && Alive && (stateno!=123) && stateno!=3
triggerall =statetype != A 
triggerall=p2bodydist x>=-20
triggerall=(p2bodydist x>0 && enemynear(helper(218),Var(36)),vel x=0)||(p2bodydist x>20 && enemynear(helper(218),Var(36)),vel x>=0)||(p2statetype!=A)||frontedgebodydist<70
triggerall=(p2bodydist x<=300)
triggerall = (p2statetype != A);||p2bodydist y+enemynear(helper(218),Var(36)),vel y*5>=-20
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>150))
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=((enemynear(helper(218),Var(36)),vel x>=0||random<=500)&&p2movetype!=H)||p2stateno=[120,159]
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=50;||(partner,life>0&&(p2bodydist x>=170||facing*enemynear(helper(218),Var(36)),facing>0));+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-50,0);||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=ifelse(p2bodydist x<=80,1000,ifelse(p2bodydist x<=120,1010,1020))
triggerall = !ishelper
triggerall = var(59)>0
triggerall=stateno!=103
;triggerall=(helper(218),var(35)!=12)
triggerall = RoundState = 2 && Alive && (stateno!=123) && stateno!=3
triggerall=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30
triggerall=random<=500||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20
;triggerall=var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<2000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
;triggerall=var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<4000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||random<=500
;triggerall=var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<6000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30||random<=500
;triggerall=var(59)-((ceil(var(59)/10000)-ifelse(var(59)-(ceil(var(59)/10000)*10000)<0,1,0))*10000)<8000||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||random<=500
triggerall =statetype != A 
triggerall=p2bodydist x>=60
triggerall=(p2bodydist x>0 && enemynear(helper(218),Var(36)),vel x=0)||(p2bodydist x>20 && enemynear(helper(218),Var(36)),vel x>=0)||(p2statetype!=A)||frontedgebodydist<70
triggerall=(p2bodydist x<=150)
triggerall = (p2statetype != A);||p2bodydist y+enemynear(helper(218),Var(36)),vel y*5>=-20
;triggerall=(p2bodydist x<=70 && p2bodydist y>=-110)||((stateno!=100)&&(stateno!=26))
triggerall=numenemy>1||(enemynear(helper(218),Var(36)),statetype!=A)||helper(218),var(16)-((ceil(helper(218),var(16)/10)-ifelse(helper(218),var(16)-(ceil(helper(218),var(16)/10)*10)<0,1,0))*10)!=2
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>150))
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall=((enemynear(helper(218),Var(36)),vel x>=0||random<=500)&&p2movetype!=H)||p2stateno=[120,159]
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))
triggerall = p2stateno<200||p2movetype=A||p2movetype=H||enemynear(helper(218),Var(36)),vel x=0
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno !=[5100,5150]
trigger1 =random<=50;||(partner,life>0&&(p2bodydist x>=170||facing*enemynear(helper(218),Var(36)),facing>0));+ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=20,-50,0);||(p2movetype=H)||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
trigger1 =(helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999])||p2movetype=H||p2movetype=A||enemynear(helper(218),Var(36)),facing*facing>0||partner,life>0
[State -1]
type = ChangeState
value=780
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=stateno!=103
triggerall = power < 3000
triggerall = !var(20)
triggerall = Var(8) = 0
;triggerall=(helper(218),var(35)!=12)
triggerall = RoundState = 2 && Alive && (stateno!=123) 
;triggerall =random<=100||(NumHelper(501)+NumHelper(521))<=0;||p2stateno!=[120,159]
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/1000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/1000)*1000)<0,1,0))*1000)>=200
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = statetype != A 
triggerall=p2bodydist x>150
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>150) && random<=500)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall= Ctrl||(StateNo = [0,40])||(StateNo =[120,149])
;triggerall = ((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5100,5110])
trigger1=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger1=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger1=helper(218),var(18)<1000 ;&& p2stateno=5120
trigger2=((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5000,5110])
trigger2=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger2=helper(218),var(18)>3000||(enemynear(helper(218),Var(36)),vel x<=0&&p2stateno!=[5100,5110])
trigger2=helper(218),var(18)-(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000))*1000>=30000
;trigger3=helper(218),var(35)=11
[State -1]
type = ChangeState
value=780
triggerall = !ishelper
triggerall = var(59)>0 
triggerall=stateno!=103
triggerall = power < 3000 && power<powermax && partner,life>0
triggerall = !var(20)
triggerall = Var(8) = 0
;triggerall=(helper(218),var(35)!=12)
triggerall = RoundState = 2 && Alive && (stateno!=123) 
;triggerall =random<=100||(NumHelper(501)+NumHelper(521))<=0;||p2stateno!=[120,159]
;triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/1000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/1000)*1000)<0,1,0))*1000)>=200
;triggerall=partner,life>0||helper(218),var(35)!=10
triggerall = statetype != A 
triggerall=p2statetype=A && (p2bodydist y<-80||p2bodydist x>100)
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000||(partner,life>0 && (facing*enemynear(helper(218),Var(36)),facing>0||p2bodydist x>150) && random<=500)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
triggerall= Ctrl||(StateNo = [0,40])||(StateNo =[120,149])
;triggerall = ((enemynear(helper(218),Var(36)),vel x<=0&&p2statetype!=A)||p2stateno=[5100,5110])
trigger1=p2movetype=H && p2stateno>200
[State -1]
type = ChangeState
value=ifelse(frontedgebodydist>120&&(enemynear(helper(218),Var(36)),vel x>=2),107,ifelse(backedgebodydist>60,105,107))
triggerall = !ishelper
triggerall = var(59)>0 
triggerall = RoundState = 2 && Alive && (stateno!=123) && numenemy=1 && numpartner=0
triggerall = statetype != A
;triggerall=backedgebodydist>60||(p2bodydist x<=60 && enemynear(helper(218),Var(36)),vel x>=3 && p2stateno!=[5100,5110])
triggerall=p2bodydist x>=-60
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=(p2movetype!=H)||p2stateno=[120,159]
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||stateno=100||stateno=109
triggerall =(p2statetype!=A);||(helper(218),var(35)=8)
triggerall=helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0||p2stateno=[5100,5150]
trigger1 =backedgebodydist<=50 && p2bodydist x<=60 && (enemynear(helper(218),Var(36)),vel x>=0||p2stateno=[5100,5110])
trigger2 =p2bodydist x<=100 && enemynear(helper(218),Var(36)),vel x>=2 && p2stateno!=[5100,5110]
trigger3 = p2bodydist x<=30 && helper(218),var(10)-((ceil(helper(218),var(10)/10)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10)*10)<0,1,0))*10)!=[1,2]





[State -1:          AI Guarding]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0 
triggerall=var(52)=[-999999,999]
triggerall = (stateno!=50)||var(3)!=[1,2]
triggerall = helper(218),var(35)!=1
triggerall = RoundState = 2 && Alive && (stateno!=123)
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||(stateno=100||stateno=105)||stateno=109||(stateno=5120&&animtime=0)
triggerall = StateNo != [130, 139]
triggerall = StateNo != 102
triggerall=numenemy=1
;triggerall=statetype !=A
triggerall=inguarddist=0 && helper(218),inguarddist=0
triggerall=var(51)<100000
trigger1=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)=[1,9]
value      = ifelse(statetype=A,132,130)
[State -1:          AI Guarding]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0 
triggerall=var(52)=[-999999,999]
triggerall = (stateno!=50)||var(3)!=[1,2]
triggerall = helper(218),var(35)!=1
triggerall = RoundState = 2 && Alive && (stateno!=123)
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||(stateno=100||stateno=105)||stateno=109||(stateno=5120&&animtime=0)
triggerall = StateNo != [130, 139]
triggerall = StateNo != 102
triggerall=numenemy=1
;triggerall=statetype !=A
triggerall=inguarddist=0 && helper(218),inguarddist=0
triggerall=var(51)<100000
trigger1=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)>=1
value      = ifelse(statetype=A,132,ifelse((enemynear(helper(218),Var(36)),stateType = A),130,131))
[State -1:          AI Guarding]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0 
triggerall=var(52)=[-999999,999]
;triggerall = p2statetype=A||helper(218),var(35)!=1
triggerall = RoundState = 2 && Alive && (stateno!=123)
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||(stateno=100||stateno=105)||stateno=109||(stateno=5120&&animtime=0)
triggerall = StateNo != [130, 139]
triggerall = StateNo != 102
triggerall=statetype !=A
triggerall=inguarddist||helper(218),inguarddist
triggerall=var(51)<100000
trigger1=enemynear(helper(218),Var(36)),MoveType = A
trigger1=enemynear(helper(218),Var(36)),statetype=A
trigger2=enemynear(helper(218),Var(36)),MoveType = A
trigger2=(var(48)>0 && var(48)=p2stateno)||(var(49)>0 && var(49)=p2stateno)
value      = 130
[State -1:          AI Guarding]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0 
triggerall=var(52)=[-999999,999]
;triggerall = helper(218),var(52)<2000000 && helper(218),var(53)<2000000||p2statetype=A||helper(218),var(35)!=1
triggerall = RoundState = 2 && Alive && (stateno!=123)
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||(stateno=100||stateno=105)||stateno=109||(stateno=5120&&animtime=0)
triggerall = StateNo != [130, 139]
triggerall = StateNo != 102
triggerall=statetype!=A
triggerall=inguarddist||helper(218),inguarddist
triggerall=var(51)<100000
triggerall=(enemynear(helper(218),Var(36)),MoveType != A)||(var(48)<=0||var(48) !=p2stateno)
triggerall=(enemynear(helper(218),Var(36)),MoveType != A)||(var(49)<=0 ||var(49) !=p2stateno)
trigger1=enemynear(helper(218),Var(36)),statetype !=A
trigger1=enemynear(helper(218),Var(36)),MoveType = A
trigger2=enemynear(helper(218),Var(36)),movetype !=A
value      = 131
[State -1:          AI Guarding]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0 
triggerall=var(52)=[-999999,999]
;triggerall = helper(218),var(35)!=1
;triggerall = helper(218),var(35)!=[100,130]
triggerall = RoundState = 2 && Alive && (stateno!=123)
triggerall = StateNo != [120, 159]
triggerall = StateNo != 102
triggerall=inguarddist||helper(218),inguarddist
triggerall=var(51)<100000
triggerall = (Ctrl||(StateNo = [0,40])||(StateNo =[120,149]))||(stateno=100||stateno=105)||stateno=109
triggerall=statetype=A
trigger1=1
value      = 132






[State -1, Stand1]
type = ChangeState
value =ifelse(random<=300&&power<3000&&p2bodydist x>250,780,100)
triggerall = !IsHelper
triggerall = var(59)>0 && var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)>=30
triggerall=(p2stateno!=6312)||(var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<4)
;triggerall=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,20,30)||(p2movetype!=H)||(p2statetype!=A)||(helper(218),var(35)=[11,12])||(helper(218),var(35)=[14,16])
;triggerall=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||(helper(218),var(35)!=19)
;triggerall = (helper(218),var(35)!=12)||p2bodydist x>200
;triggerall = (helper(218),var(35)!=14)||p2bodydist x>150
;triggerall = (helper(218),var(35)!=18)||helper(218),var(10)-((ceil(helper(218),var(10)/1000000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/1000000)*1000000)<0,1,0))*1000000)>=100000
;triggerall = helper(218),var(12)<1000000||partner,life>0||(p2movetype=H&&p2bodydist y<-20)||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30
triggerall = RoundState = 2 && Alive && (stateno!=123) && (stateno!=[100,109]) && stateno!=3
triggerall = statetype != A 
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000;||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=(p2movetype!=H)||(p2stateno =[120,159])
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])
triggerall=p2bodydist x>20||frontedgebodydist>60
triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10000)*10000)<0,1,0))*10000)!=[2000,2999]
trigger1=p2bodydist x>250
trigger2=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999]
trigger2=p2bodydist x>200 && random<=5
trigger3=p2movetype=H && p2stateno>200 && (p2bodydist y>=-60||p2bodydist x>120||p2statetype!=A)
trigger3=0;helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno!=[5100,5150]

[State -1, Stand1]
type = ChangeState
value =ifelse(var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life>800,20,30)&&life>500&&random<=333,198,100)
triggerall = !IsHelper
triggerall = var(59)>0 && var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30
triggerall=(p2stateno!=6312)||(var(59)-((ceil(var(59)/10)-ifelse(var(59)-(ceil(var(59)/10)*10)<0,1,0))*10)<4)
;triggerall=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<ifelse(life<p2life,20,30)||(p2movetype!=H)||(p2statetype!=A)||(helper(218),var(35)=[11,12])||(helper(218),var(35)=[14,16])
;triggerall=var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||(helper(218),var(35)!=19)
;triggerall = (helper(218),var(35)!=12)||p2bodydist x>200
;triggerall = (helper(218),var(35)!=14)||p2bodydist x>150
;triggerall = (helper(218),var(35)!=18)||helper(218),var(10)-((ceil(helper(218),var(10)/1000000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/1000000)*1000000)<0,1,0))*1000000)>=100000
;triggerall = helper(218),var(12)<1000000||partner,life>0||(p2movetype=H&&p2bodydist y<-20)||var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<30
triggerall = RoundState = 2 && Alive && (stateno!=123) && (stateno!=[100,109]) && stateno!=3
triggerall = statetype != A 
triggerall=(inguarddist=0 && helper(218),inguarddist=0 && (numpartner||p2movetype !=A))||var(51)>=100000;||(partner,life>0 && facing*enemynear(helper(218),Var(36)),facing>0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0
;triggerall=(p2movetype!=H)||(p2stateno =[120,159])
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])
triggerall=p2bodydist x>20||frontedgebodydist>60
triggerall=helper(218),var(10)-((ceil(helper(218),var(10)/10000)-ifelse(helper(218),var(10)-(ceil(helper(218),var(10)/10000)*10000)<0,1,0))*10000)!=[2000,2999]
trigger1=p2bodydist x>250
trigger2=helper(218),var(19)-((ceil(helper(218),var(19)/10000)-ifelse(helper(218),var(19)-(ceil(helper(218),var(19)/10000)*10000)<0,1,0))*10000)!=[2000,2999]
trigger2=p2bodydist x>200 && random<=5
trigger3=p2movetype=H && p2stateno>200 && (p2bodydist y>=-60||p2bodydist x>120||p2statetype!=A)
trigger3=0;helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2stateno!=[5100,5150]
[State -1, Stand1]
type = ChangeState
value =27;ifelse((helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)<=0&&p2bodydist x>ifelse(p2movetype=H,40,100)),100,25)
triggerall = !IsHelper
triggerall = var(59)>0 
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive && (stateno!=123) && stateno!=3
triggerall = statetype != A 
triggerall=((stateno !=[100,101])&&(stateno !=[27,28]))||(time>=10 && stateno=28 && random<=200)
triggerall=(inguarddist=0 && helper(218),inguarddist=0&&(numpartner||p2movetype !=A))||var(51)>=100000||var(52)>=1000||(partner,life>0&&facing*enemynear(helper(218),Var(36)),facing>0&&p2bodydist x>=80);||(numhelper(765)>=2&&helper(765),var(0)=0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0||(p2movetype=H &&p2stateno !=[120,159])
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])
trigger1=p2bodydist x>=ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0,120,ifelse(p2movetype=H&&p2stateno>200,20,30))
trigger1=helper(218),var(35)!=11
trigger2=p2bodydist x>=60;ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0,120,ifelse(p2movetype=H&&p2stateno>200,20,30))
trigger2=helper(218),var(35)=11
[State -1, Stand1]
type = ChangeState
value =28
triggerall = !IsHelper
triggerall = var(59)>0 
triggerall = (helper(218),var(35)!=12)
;triggerall = var(59)-((ceil(var(59)/100)-ifelse(var(59)-(ceil(var(59)/100)*100)<0,1,0))*100)<20||helper(218),var(35)!=10
triggerall = RoundState = 2 && Alive && (stateno!=123) && stateno!=3
triggerall = statetype != A 
triggerall=((stateno !=[100,101])&&(stateno !=[27,28]))||(time>=10 && stateno=27 && random<=200)
triggerall=(inguarddist=0 && helper(218),inguarddist=0&&(numpartner||p2movetype !=A))||var(51)>=100000||var(52)>=1000||(partner,life>0&&facing*enemynear(helper(218),Var(36)),facing>0&&p2bodydist x>=80);||(numhelper(765)>=2&&helper(765),var(0)=0)
triggerall=helper(218),var(15)-((ceil(helper(218),var(15)/100)-ifelse(helper(218),var(15)-(ceil(helper(218),var(15)/100)*100)<0,1,0))*100)<=0||(p2movetype=H &&p2stateno !=[120,159])
triggerall = Ctrl||(StateNo = [0,40])||(StateNo =[120,149])
trigger1=p2bodydist x<ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0,120,ifelse(p2movetype=H&&p2stateno>200,20,30))
trigger1=helper(218),var(35)!=11
trigger2=p2bodydist x<60;ifelse(helper(218),var(18)-((ceil(helper(218),var(18)/1000)-ifelse(helper(218),var(18)-(ceil(helper(218),var(18)/1000)*1000)<0,1,0))*1000)>0,120,ifelse(p2movetype=H&&p2stateno>200,20,30))
trigger2=helper(218),var(35)=11
[State -1, Stand]
type = ChangeState
value = 0
triggerall = !IsHelper
triggerall = (var(59) !=0)||stateno=[27,28]
;triggerall = RoundState = 2 && Alive && (stateno!=123) && time
triggerall = time>=10 && statetype != A
trigger1=(time>=10 && stateno=[27,28]);||(time>=3 && stateno=[100,101])
trigger1 = RoundState != 2
trigger2=(stateno=[27,28]);||(stateno=[100,101])||(StateNo = 5120 && AnimTime = 0)
trigger2 = p2bodydist x<-20;||(p2bodydist x<0 && facing*enemynear(helper(218),Var(36)),facing>0)
;;trigger3 = helper(218),var(35)=18 && p2bodydist x=[-20,20]
ctrl=1
[State -1, Stand]
type = ChangeState
value = 101
triggerall = !IsHelper
triggerall = (var(59) !=0)
triggerall=(helper(218),var(35)!=8)||time>=10
triggerall = time>=0
triggerall =0;stateno=100 && statetype != A
trigger1 = RoundState != 2
trigger2 = p2movetype=A||inguarddist||(((p2movetype!=H)||p2stateno<200||p2bodydist x<20)&&time>=10)
trigger2 = p2movetype=A||inguarddist||p2bodydist x-enemynear(helper(218),Var(36)),vel x*30<150||p2bodydist x<=150
[State -1, Stand]
type = ChangeState
value = 781
triggerall = !IsHelper
triggerall = (var(59) !=0)
triggerall = time>=0
triggerall =stateno=780 && time>=20 && statetype != A
trigger1 = power>=3000||RoundState != 2
trigger2=(helper(218),var(35)!=17)
trigger2=partner,life<=0||p2statetype=L||p2movetype!=H
trigger2 = p2movetype=A||inguarddist||(((p2movetype!=H)||p2stateno<200||p2bodydist x<80)&&time>=10)
trigger2 = p2movetype=A||inguarddist||p2bodydist x-enemynear(helper(218),Var(36)),vel x*30<150||p2bodydist x<=150||random<=5













[State -2]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0
triggerall=time=0
triggerall = RoundState = 2 && Alive
trigger1=stateno=[5200,5210]
trigger1=numpartner=0
value      =5050
[State -1]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)>0
triggerall = RoundState = 2 && Alive
trigger1=stateno=20
trigger2=stateno=40
trigger3=0;stateno=45
trigger4=stateno=10
value      = ifelse(stateno=45,ifelse(vel y >=0,51,50),ifelse(p2movetype=A,28,27))
ctrl=1
[State -1]
type       = ChangeState
triggerall = !IsHelper
triggerall = var(59)!=0
triggerall=stateno=[20,23]
trigger1=roundstate !=2
trigger2=p2bodydist x<-10
value      =0
ctrl=1



















































[State -1]
type = ChangeState
value =2005;ifelse(statetype=A,ifelse(random<=350,2150,ifelse(random<=700,2125,2100)),ifelse(random<=350,1500,ifelse(random<=700,2400,2400)));ifelse(random<=350,6000,ifelse(random<=700,4000,4100));ifelse(random<=350,ifelse(numhelper(6061) = 1,6051,6050),ifelse(random<=700,6000,ifelse((var(29)=1),4100,4000)));ifelse(random<=350,3000,ifelse(random<=700,3100,3050));ifelse((var(20)=1)||(var(21)=1)||(var(22)=1),ifelse((life>500||(var(20)=6)||(var(21)=6)||(var(22)=6))&&(var(20)!=4)&&(var(21)!=4)&&(var(22)!=4),1370,1390),1310)
triggerall =var(59)=0
trigger1 = 0;(StateType != A) && (MoveContact) && stateno=202
[State -1]
type = ChangeState
value =1330;ifelse(random<=350,3300,ifelse(random<=700,1950,1700));ifelse(random<=350,3000,ifelse(random<=700,3100,3050));ifelse((var(20)=1)||(var(21)=1)||(var(22)=1),ifelse((life>500||(var(20)=6)||(var(21)=6)||(var(22)=6))&&(var(20)!=4)&&(var(21)!=4)&&(var(22)!=4),1370,1390),1310)
triggerall =var(59)=0
trigger1 =Command = "a"
;trigger1 = statetype != A
trigger1 =0;ctrl||stateno=[20,29]
;trigger2=(stateno = 320) && (Time >= 35)























































































;===========================================================================

;===========================================================================

;---------------------------------------------------------------------------
; Hayate no Red Hawk
[State -1, Hayate no Red Hawk]
type = ChangeState
value = 3400
triggerall = var(59) = 0
triggerall = var(8) = 0
triggerall = command = "Hayate no Red Hawk"
triggerall = power >= 3000 && !var(20)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 230 && time = [5,9]
trigger5 = (stateno = [400,410]) && movecontact
trigger6 = stateno = 430 && movecontact
trigger7 = (stateno = [1000,1111]) && movecontact
trigger8 = (stateno = [1200,1220]) && movecontact
trigger9 = (stateno = [1400,1499]) && movecontact 
trigger10 = stateno = 195 && movecontact

;---------------------------------------------------------------------------
; Rikujou Gekiha Ken
[State -1, Rikujou Gekiha Ken]
type = ChangeState
value = 3300
triggerall = var(59) = 0
triggerall = command = "MAXRikujou Gekiha Ken"
triggerall = power >= 2000 && !var(20)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 230 && time = [5,9]
trigger5 = (stateno = [400,410]) && movecontact
trigger6 = stateno = 430 && movecontact
trigger7 = (stateno = [1000,1111]) && movecontact
trigger8 = (stateno = [1200,1220]) && movecontact
trigger9 = (stateno = [1400,1499]) && movecontact 
trigger10 = stateno = 195 && movecontact

;---------------------------------------------------------------------------
; Rikujou Gekiha Ken
[State -1, Rikujou Gekiha Ken]
type = ChangeState
value = 3350
triggerall = var(59) = 0
triggerall = command = "Rikujou Gekiha Ken"
triggerall = power >= 1000 && !var(20)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 230 && time = [5,9]
trigger5 = (stateno = [400,410]) && movecontact
trigger6 = stateno = 430 && movecontact
trigger7 = (stateno = [1000,1111]) && movecontact
trigger8 = (stateno = [1200,1220]) && movecontact
trigger9 = (stateno = [1400,1499]) && movecontact 
trigger10 = stateno = 195 && movecontact

;---------------------------------------------------------------------------
;MAX Tanden Renki
[State -1, MAX Tanden Renki]
type = ChangeState
value = 3250
triggerall = var(59) = 0
triggerall = var(8) = 0
triggerall = command = "MAX Tanden Renki" 
triggerall = power >= 2000 && !var(20)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 230 && time = [5,9]
trigger5 = (stateno = [400,410]) && movecontact
trigger6 = stateno = 430 && movecontact
trigger7 = (stateno = [1000,1111]) && movecontact
trigger8 = (stateno = [1200,1220]) && movecontact
trigger9 = (stateno = [1400,1499]) && movecontact 
trigger10 = stateno = 195 && movecontact

;---------------------------------------------------------------------------
; Tanden Renki
[State -1, Tanden Renki]
type = ChangeState
value = 3200
triggerall = var(59) = 0
triggerall = var(8) = 0
triggerall = command = "Tanden Renki" 
triggerall = power >= 1000 && !var(20)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 230 && time = [5,9]
trigger5 = (stateno = [400,410]) && movecontact
trigger6 = stateno = 430 && movecontact
trigger7 = (stateno = [1000,1111]) && movecontact
trigger8 = (stateno = [1200,1220]) && movecontact
trigger9 = (stateno = [1400,1499]) && movecontact 
trigger10 = stateno = 195 && movecontact

;---------------------------------------------------------------------------
;MAX Abare Tosanami
[State -1, MAX Abare Tosanami]
type = ChangeState
value = 3160
triggerall = var(59) = 0
triggerall = command = "MAX Abare Tosanami" 
triggerall = power >= 2000 && !var(20)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 230 && time = [5,9]
trigger5 = (stateno = [400,410]) && movecontact
trigger6 = stateno = 430 && movecontact
trigger7 = (stateno = [1000,1111]) && movecontact
trigger8 = (stateno = [1200,1220]) && movecontact
trigger9 = (stateno = [1400,1499]) && movecontact 
trigger10 = stateno = 195 && movecontact

;---------------------------------------------------------------------------
; Abare Tosanami
[State -1, Abare Tosanami]
type = ChangeState
value = 3100
triggerall = var(59) = 0
triggerall = command = "Abare Tosanami"
triggerall = power >= 1000 && !var(20)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 230 && time = [5,9]
trigger5 = (stateno = [400,410]) && movecontact
trigger6 = stateno = 430 && movecontact
trigger7 = (stateno = [1000,1111]) && movecontact
trigger8 = (stateno = [1200,1220]) && movecontact
trigger9 = (stateno = [1400,1499]) && movecontact 
trigger10 = stateno = 195 && movecontact

;---------------------------------------------------------------------------
;MAX Seichuzen Godanzuki
[State -1, MAX Seichuzen Godanzuki]
type = ChangeState
value = 3050
triggerall = var(59) = 0
triggerall = command = "MAX Seichuzen Godanzuki" 
triggerall = power >= 2000 && !var(20)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 230 && time = [5,9]
trigger5 = (stateno = [400,410]) && movecontact
trigger6 = stateno = 430 && movecontact
trigger7 = (stateno = [1000,1111]) && movecontact
trigger8 = (stateno = [1200,1220]) && movecontact
trigger9 = (stateno = [1400,1499]) && movecontact 
trigger10 = stateno = 195 && movecontact

;---------------------------------------------------------------------------
; Seichuzen Godanzuki
[State -1, Seichuzen Godanzuki]
type = ChangeState
value = 3000
triggerall = var(59) = 0
triggerall = command = "Seichuzen Godanzuki"
triggerall = power >= 1000 && !var(20)
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 230 && time = [5,9]
trigger5 = (stateno = [400,410]) && movecontact
trigger6 = stateno = 430 && movecontact
trigger7 = (stateno = [1000,1111]) && movecontact
trigger8 = (stateno = [1200,1220]) && movecontact
trigger9 = (stateno = [1400,1499]) && movecontact 
trigger10 = stateno = 195 && movecontact

;---------------------------------------------------------------------------
; EX Karakusa
[State -1, EX Karakusa]
type = ChangeState
value = 2400
triggerall = var(59) = 0
triggerall = command = "EX Karakusa"
triggerall = statetype != A
triggerall = power >= 500 && !var(20)
triggerall = var(43) = 1 || var(43) = 0 && var(8) = 0
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 230 && time = [5,9]
trigger5 = (stateno = [400,410]) && movecontact
trigger6 = stateno = 430 && movecontact
trigger7 = (stateno = [200,450]) && movecontact
trigger8 = (stateno = [1100,1111]) && movecontact
trigger9 = (stateno = [1400,1499]) && movecontact 
trigger10 = (stateno = [1200,1299]) && movecontact
trigger11 = stateno = 100 && time > 12
trigger12 = stateno = [740,742]
trigger12 = time >= 16

;---------------------------------------------------------------------------
; EX Tsurugi
[State -1, EX Tsurugi]
type = ChangeState
value = 2300
triggerall = var(59) = 0
triggerall = command = "EX Tsurugi"
triggerall = power >= 500 && !var(20)
triggerall = vel x >= 0
triggerall = var(43) = 1 || var(43) = 0 && var(8) = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,650]) && movecontact

;---------------------------------------------------------------------------
; EX Oroshi
[State -1, EX Oroshi]
type = ChangeState
value = 2200
triggerall = var(59) = 0
triggerall = command = "EX Oroshi"
triggerall = power >= 500 && !var(20)
triggerall = var(43) = 1 || var(43) = 0 && var(8) = 0 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 230 && time = [5,9]
trigger5 = (stateno = [400,410]) && movecontact
trigger6 = stateno = 430 && movecontact
trigger7 = (stateno = [200,450]) && movecontact
trigger8 = (stateno = [1000,1151]) && movecontact
trigger9 = (stateno = [1200,1299]) && movecontact
trigger10 = stateno = [160,164]
trigger10 = time >= 16

;---------------------------------------------------------------------------
; EX Fukiage
[State -1, EX Fukiage]
type = ChangeState
value = 2100
triggerall = var(59) = 0
triggerall = command = "EX Fukiage"
triggerall = power >= 500 && !var(20)
triggerall = var(43) = 1 || var(43) = 0 && var(8) = 0 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 230 && time = [5,9]
trigger5 = (stateno = [400,410]) && movecontact
trigger6 = stateno = 430 && movecontact
trigger7 = (stateno = [200,450]) && movecontact
trigger8 = (stateno = [1000,1151]) && movecontact
trigger9 = (stateno = [1400,1499]) && movecontact 
trigger10 = stateno = [740,742]
trigger10 = time >= 16

;---------------------------------------------------------------------------
; EX Hayate
[State -1, EX Hayate]
type = ChangeState
value = 2000
triggerall = var(59) = 0
triggerall = command = "EX Hayate"
triggerall = power >= 500 && !var(20)
triggerall = var(43) = 1 || var(43) = 0 && var(8) = 0 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 230 && time = [5,9]
trigger5 = stateno = 240 && movecontact
trigger6 = (stateno = [400,410]) && movecontact
trigger7 = stateno = 430 && movecontact
trigger8 = (stateno = [200,450]) && movecontact
trigger9 = (stateno = [1200,1299]) && movecontact
trigger10 = (stateno = [1100,1111]) && movecontact
trigger11 = stateno = [740,742]
trigger11 = time >= 16

;---------------------------------------------------------------------------
; Strong Karakusa
[State -1, Strong Karakusa]
type = ChangeState
value = 1410
triggerall = var(59) = 0
triggerall = command = "Strong Karakusa"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 230 && time = [5,9]
trigger5 = (stateno = [400,410]) && movecontact
trigger6 = stateno = 430 && movecontact
trigger7 = (stateno = [200,450]) && movecontact
trigger8 = (stateno = [1100,1111]) && movecontact
trigger9 = (stateno = [1400,1499]) && movecontact 
trigger10 = (stateno = [1200,1299]) && movecontact
trigger11 = stateno = 100 && time > 12
trigger12 = stateno = [740,742]
trigger12 = time >= 16

;---------------------------------------------------------------------------
; Medium Karakusa
[State -1, Medium Karakusa]
type = ChangeState
value = 1405
triggerall = var(59) = 0
triggerall = command = "Medium Karakusa"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 230 && time = [5,9]
trigger5 = (stateno = [400,410]) && movecontact
trigger6 = stateno = 430 && movecontact
trigger7 = (stateno = [200,450]) && movecontact
trigger8 = (stateno = [1100,1111]) && movecontact
trigger9 = (stateno = [1400,1499]) && movecontact 
trigger10 = (stateno = [1200,1299]) && movecontact
trigger11 = stateno = 100 && time > 12
trigger12 = stateno = [740,742]
trigger12 = time >= 16

;---------------------------------------------------------------------------
; Light Karakusa
[State -1, Light Karakusa]
type = ChangeState
value = 1400
triggerall = var(59) = 0
triggerall = command = "Light Karakusa"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 230 && time = [5,9]
trigger5 = (stateno = [400,410]) && movecontact
trigger6 = stateno = 430 && movecontact
trigger7 = (stateno = [200,450]) && movecontact
trigger8 = (stateno = [1100,1111]) && movecontact
trigger9 = (stateno = [1400,1499]) && movecontact 
trigger10 = (stateno = [1200,1299]) && movecontact
trigger11 = stateno = 100 && time > 12
trigger12 = stateno = [740,742]
trigger12 = time >= 16

;---------------------------------------------------------------------------
; Strong Tsurugi
[State -1, Strong Tsurugi]
type = ChangeState
value = 1320
triggerall = var(59) = 0
triggerall = var(50) != 1
triggerall = command = "Strong Tsurugi"
triggerall = statetype = A
triggerall = vel x >= 0
trigger1 = ctrl
trigger2 = (stateno = [600,650]) && movecontact

;---------------------------------------------------------------------------
; Medium Tsurugi
[State -1, Medium Tsurugi]
type = ChangeState
value = 1310
triggerall = var(59) = 0
triggerall = var(50) != 1
triggerall = command = "Medium Tsurugi"
triggerall = statetype = A
triggerall = vel x >= 0
trigger1 = ctrl
trigger2 = (stateno = [600,650]) && movecontact

;---------------------------------------------------------------------------
; Light Tsurugi
[State -1, Light Tsurugi]
type = ChangeState
value = 1300
triggerall = var(59) = 0
triggerall = var(50) != 1
triggerall = command = "Light Tsurugi"
triggerall = statetype = A
triggerall = vel x >= 0
trigger1 = ctrl
trigger2 = (stateno = [600,650]) && movecontact

;---------------------------------------------------------------------------
; Strong Oroshi
[State -1, Strong Oroshi]
type = ChangeState
value = 1220
triggerall = var(59) = 0
triggerall = command = "Strong Oroshi"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 230 && time = [5,9]
trigger5 = (stateno = [400,410]) && movecontact
trigger6 = stateno = 430 && movecontact
trigger7 = (stateno = [200,450]) && movecontact

;---------------------------------------------------------------------------
; Medium Oroshi
[State -1, Medium Oroshi]
type = ChangeState
value = 1210
triggerall = var(59) = 0
triggerall = command = "Medium Oroshi"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 230 && time = [5,9]
trigger5 = (stateno = [400,410]) && movecontact
trigger6 = stateno = 430 && movecontact
trigger7 = (stateno = [200,450]) && movecontact

;---------------------------------------------------------------------------
; Light Oroshi
[State -1, Light Oroshi]
type = ChangeState
value = 1200
triggerall = var(59) = 0
triggerall = command = "Light Oroshi"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 230 && time = [5,9]
trigger5 = (stateno = [400,410]) && movecontact
trigger6 = stateno = 430 && movecontact
trigger7 = (stateno = [200,450]) && movecontact

;---------------------------------------------------------------------------
; Strong Fukiage
[State -1, Strong Fukiage]
type = ChangeState
value = 1120
triggerall = var(59) = 0
triggerall = command = "Strong Fukiage"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 230 && time = [5,9]
trigger5 = (stateno = [400,410]) && movecontact
trigger6 = stateno = 430 && movecontact
trigger7 = (stateno = [200,450]) && movecontact
trigger8 = (stateno = [1200,1299]) && movecontact

;---------------------------------------------------------------------------
; Medium Fukiage
[State -1, Medium Fukiage]
type = ChangeState
value = 1110
triggerall = var(59) = 0
triggerall = command = "Medium Fukiage"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 230 && time = [5,9]
trigger5 = (stateno = [400,410]) && movecontact
trigger6 = stateno = 430 && movecontact
trigger7 = (stateno = [200,450]) && movecontact
trigger8 = (stateno = [1200,1299]) && movecontact

;---------------------------------------------------------------------------
; Light Fukiage
[State -1, Light Fukiage]
type = ChangeState
value = 1100
triggerall = var(59) = 0
triggerall = command = "Light Fukiage"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 230 && time = [5,9]
trigger5 = (stateno = [400,410]) && movecontact
trigger6 = stateno = 430 && movecontact
trigger7 = (stateno = [200,450]) && movecontact
trigger8 = (stateno = [1200,1299]) && movecontact

;---------------------------------------------------------------------------
; Strong Hayate
[State -1, Strong Hayate]
type = ChangeState
value = 1020
triggerall = var(59) = 0
triggerall = command = "Strong Hayate"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 230 && time = [5,9]
trigger5 = stateno = 240 && movecontact
trigger6 = (stateno = [400,410]) && movecontact
trigger7 = stateno = 430 && movecontact
trigger8 = (stateno = [1200,1299]) && movecontact
trigger9 = (stateno = [1100,1111]) && movecontact

;---------------------------------------------------------------------------
; Medium Hayate
[State -1, Medium Hayate]
type = ChangeState
value = 1010
triggerall = var(59) = 0
triggerall = command = "Medium Hayate"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 230 && time = [5,9]
trigger5 = stateno = 240 && movecontact
trigger6 = (stateno = [400,410]) && movecontact
trigger7 = stateno = 430 && movecontact
trigger8 = (stateno = [1200,1299]) && movecontact
trigger9 = (stateno = [1100,1111]) && movecontact

;---------------------------------------------------------------------------
; Light Hayate
[State -1, Light Hayate]
type = ChangeState
value = 1000
triggerall = var(59) = 0
triggerall = command = "Light Hayate"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,210]) && movecontact
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 230 && time = [5,9]
trigger5 = stateno = 240 && movecontact
trigger6 = (stateno = [400,410]) && movecontact
trigger7 = stateno = 430 && movecontact
trigger8 = (stateno = [1200,1299]) && movecontact
trigger9 = (stateno = [1100,1111]) && movecontact

;---------------------------------------------------------------------------
; Standing Parry
[State -1, Standing Parry]
type = hitoverride
triggerall = var(59) = 0
trigger1 = var(59)<=0
trigger1 = roundstate=2 && statetype=S
trigger1 = command="Forward" && command!="Back" && command!="Up" && command!="Down"
trigger1 = ctrl || (stateno=[700,701])
trigger1 = var(21):=1
attr = SA,AA,AP
stateno = 740
slot = 0
time = 4

;---------------------------------------------------------------------------
; Crouching Parry
[State -1, Crouching Parry]
type = hitoverride
triggerall = var(59) = 0
triggerall = var(59)<=0&&roundstate=2
triggerall = (statetype=S&&command="Down")||(statetype=C&&command="Forward")&&command!="Back"&&command!="Up"
trigger1 = ctrl||stateno=740||stateno=741
trigger1 = var(21):=2
trigger2 = (stateno=[150,153])
trigger2 = var(21):=-2
attr = C,AA,AP
stateno = 741
slot = 0
time = 4

;---------------------------------------------------------------------------
; Air Parry
[State -1, Air Parry]
type = hitoverride
triggerall = var(59) = 0
triggerall = var(59)<=0&&roundstate=2&&statetype=A
triggerall = command="Forward" && command!="Back" && command!="Up" && command!="Down"
trigger1 = ctrl||stateno=742
trigger1 = var(21):=3
trigger2 = (stateno=[154,155])
trigger2 = var(21):=-3
attr = SA,AA,AP
stateno = 742
forceair = 1
slot = 0
time = 4

;--------------------------------------------------------------------------
; Dodge Forward
[State -1, Dodge Forward]
type = ChangeState
value = 700
triggerall = var(59) = 0
triggerall = command = "x" && command = "a" && command = "holdfwd"
triggerall = statetype = S
triggerall = numexplod(700)=0
trigger1 = ctrl
trigger2 = stateno = 110

;---------------------------------------------------------------------------
; Dodge Back
[State -1, Dodge Back]
type = ChangeState
value = 701
triggerall = var(59) = 0
triggerall = command = "x" && command = "a" && command = "holdback"
triggerall = statetype = S
triggerall = numexplod(700)=0
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Zero Counter]
type = ChangeState
value = 710
triggerall = var(59) = 0
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = command = "412p" || command = "412k"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

;---------------------------------------------------------------------------
; Sidestep
[State -1, Sidestep]
type = ChangeState
value = 730
triggerall = var(59) = 0
triggerall = command = "x" && command = "a"
triggerall = statetype = S
triggerall = numexplod(700)=0
trigger1 = ctrl

;---------------------------------------------------------------------------
; Sidestep Follow Up Punch
[State -1, Sidestep Follow Up Punch]
type = ChangeState
value = 731
triggerall = var(59) = 0
triggerall = command = "x" || command = "y" || command = "z"
triggerall = statetype != A
trigger1 = StateNo = 730 && Time =[14,24]

;---------------------------------------------------------------------------
; Sidestep Follow Up Kick
[State -1, Sidestep Follow Up Kick]
type = ChangeState
value = 732
triggerall = var(59) = 0
triggerall = command = "a" || command = "b" || command = "c"
triggerall = statetype != A
trigger1 = StateNo = 730 && Time =[14,24]

;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; Taunt 2
[State -1, Taunt 2]
type = ChangeState
value = 198
triggerall = var(59) = 0
triggerall = command = "Taunt2"
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = statetype = S && ctrl && stateno != 196 && stateno != 195 && stateno != 197

;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) = 0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = statetype = S && ctrl && stateno != 195
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger2 = (stateno = 230) && time > 9

;------------------------------------------------------------------------
; Power Charge
[State -1, Power Charge]
type = ChangeState
value = 780
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = power < 3000
triggerall = !var(20)
triggerall = Var(8) = 0
triggerall = (command = "chargey" && command = "chargeb")
trigger1 = statetype != A
trigger1 = stateno != 780
trigger1 = ctrl

;---------------------------------------------------------------------------
; Custom Combo
[State -1, Custom Combo]
type = changestate
value = 790
triggerall = var(59) = 0
triggerall = Var(8) = 0
trigger1 = stateno !=780 && stateno !=790
trigger1 =  command = "c" && command = "z"
trigger1 = roundstate=2 && power>=1000 && !var(20)
trigger1 = ctrl

;-----------------------------------------------------------------------
; Run Forward
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Headbutt
[State -1, Headbutt]
type = Changestate
value = 800
triggerall = var(59) = 0
trigger1 = var(59)<=0 && roundstate = 2 && (command="2p")
trigger1 = ctrl && statetype = S && stateno != 100

;---------------------------------------------------------------------------
; Triple Threat
[State -1, Triple Threat]
type = Changestate
value = 830
triggerall = var(59) = 0
trigger1 = var(59)<=0 && roundstate = 2 && (command="2k")
trigger1 = ctrl && statetype = S && stateno != 100

;===========================================================================
;---------------------------------------------------------------------------
; Standing Light Punch (Alternate)
[State -1, Standing Light Punch (Alternate)]
type = ChangeState
value = 205
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = var(21) && statetype != A && movecontact
trigger3 = stateno=[100,110]
trigger3 = stateno != 105

;---------------------------------------------------------------------------
; Standing Light Punch
[State -1, Standing Light Punch]
type = ChangeState
value = 200
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact && (animelemtime(3) >= 0 && animelemtime(5) < 0)
trigger3 = stateno = 400 && time >= 9
trigger4 = stateno = 1500 && AnimElem = 6,>= 0
trigger5 = var(21) && statetype != A && movecontact
trigger6 = stateno=[100,110]
trigger6 = stateno != 105

;---------------------------------------------------------------------------
; Standing Light Punch (Alternate)
[State -1, Standing Medium Punch (Alternate)]
type = ChangeState
value = 215
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno=[100,110]
trigger2 = stateno != 105
trigger3 = (stateno = [200,205]) && movecontact
trigger4 = stateno = 400 && movecontact && var(21);var(41)
trigger5 = (stateno = [230,235]) && movecontact && var(21);var(41)
trigger6 = stateno = 430 && movecontact && var(21);var(41)
trigger7 = stateno = [160,164]
trigger7 = time >= 16

;---------------------------------------------------------------------------
; Standing Medium Punch
[State -1, Standing Medium Punch]
type = ChangeState
value = 210
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact && (animelemtime(3) >= 0 && animelemtime(5) < 0)
trigger3 = stateno = 210 && movecontact && (animelemtime(6) >= 0 && animelemtime(9) < 0)
trigger4 = stateno = 230 && movecontact && time = [5,6]
trigger5 = var(21) && statetype != A && movecontact
trigger6 = stateno=[100,110]
trigger6 = stateno != 105

;---------------------------------------------------------------------------
; Standing Strong Punch (Alternate)
[State -1, Standing Strong Punch (Alternate)]
type = ChangeState
value = 225
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno=[100,110]
trigger2 = stateno != 105
trigger3 = (stateno = [200,215]) && movecontact && var(21);var(41)
trigger4 = (stateno = [400,410]) && movecontact && var(21);var(41)
trigger5 = (stateno = [230,245]) && movecontact && var(21);var(41)
trigger6 = (stateno = [430,440]) && movecontact && var(21);var(41)
trigger7 = stateno = [160,164]
trigger7 = time >= 16

;---------------------------------------------------------------------------
; Standing Strong Punch
[State -1, Standing Strong Punch]
type = ChangeState
value = 220
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 205 && movecontact && (animelemtime(3) >= 0 && animelemtime(6) < 0)
trigger3 = stateno = 210 && movecontact && time = [5,6]
trigger4 = stateno = 240 && movecontact && time = [7,8]
trigger5 = var(21) && statetype != A && movecontact
trigger6 = stateno=[100,110]
trigger6 = stateno != 105


;--------------------------------------------------------------------------
; Standing Light Kick (Alternate)
[State -1, Standing Light Kick (Alternate)]
type = ChangeState
value = 235
triggerall = var(59) = 0
triggerall = var(50) != 1
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno=[100,110]
trigger2 = stateno != 105
trigger3 = (stateno = [200,205]) && movecontact && var(21);var(41)
trigger4 = stateno = 400 && movecontact && var(21);var(41)
trigger5 = stateno = [160,164]
trigger5 = time >= 16

;--------------------------------------------------------------------------
; Standing Light Kick
[State -1, Standing Light Kick]
type = ChangeState
value = 230
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = ctrl||stateno=[100,110]
trigger2 = stateno != 105
trigger3 = (stateno = [200,205]) && movecontact && var(21)
trigger4 = stateno = 400 && movecontact && var(21);var(41)

;---------------------------------------------------------------------------
; Standing Medium Kick (Alternate)
[State -1, Standing Medium Kick (Alternate)]
type = ChangeState
value = 245
triggerall = var(59) = 0
triggerall = var(50) != 1
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = ctrl||stateno=[100,110]
trigger2 = stateno != 105
trigger3 = (stateno = [200,215]) && movecontact && var(21);var(41)
trigger4 = (stateno = [400,410]) && movecontact && var(21);var(41)
trigger5 = (stateno = [230,235]) && movecontact && var(21);var(41)
trigger6 = stateno = 430 && movecontact && var(21);var(41)
trigger7 = stateno = [160,164]
trigger7 = time >= 16

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = ctrl||stateno=[100,110]
trigger2 = stateno != 105
trigger3 = stateno = 230 && movecontact && (animelemtime(2) >= 0 && animelemtime(6) < 0)

;---------------------------------------------------------------------------
; Standing Strong Kick (Alternate)
[State -1, Standing Strong Kick (Alternate)]
type = ChangeState
value = 255
triggerall = var(59) = 0
triggerall = var(50) != 1
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100 && time > 12
trigger3 = (stateno = [200,245]) && movecontact && var(21);var(41)
trigger4 = (stateno = [400,440]) && movecontact && var(21);var(41)
trigger5 = stateno = [160,164]
trigger5 = time >= 16
trigger6 = ctrl||stateno=[100,110]
trigger6 = stateno != 105

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210 && movecontact && time = [5,6]
trigger3 = stateno = 245 && movecontact && (animelemtime(10) >= 0 && animelemtime(12) < 0)
trigger4 = var(21) && statetype != A && movecontact
trigger5 = ctrl||stateno=[100,110]
trigger5 = stateno != 105

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && time >= 9
trigger3 = stateno = [160,164]
trigger3 = time >= 16
trigger4 = ctrl||stateno=[100,110]
trigger4 = stateno != 105

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = var(21) && statetype != A && movecontact
trigger3 = ctrl||stateno=[100,110]
trigger3 = stateno != 105

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact && time = [5,6]
trigger3 = var(21) && statetype != A && movecontact
trigger4 = ctrl||stateno=[100,110]
trigger4 = stateno != 105

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact && time = [4,5]
trigger3 = stateno = 210 && movecontact && time = [5,6]
trigger4 = stateno = 400 && movecontact && time = [5,6]
trigger5 = stateno = 430 && movecontact && time = [4,5]
trigger6 = var(21) && statetype != A && movecontact
trigger7 = ctrl||stateno=[100,110]
trigger7 = stateno != 105

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400 && movecontact && time = [5,6]
trigger3 = stateno = 430 && movecontact && time = [4,5]
trigger4 = var(21) && statetype != A && movecontact
trigger5 = ctrl||stateno=[100,110]
trigger5 = stateno != 105

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = var(59) = 0
triggerall = command="c"
triggerall = command="holddown"
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 430 && movecontact && time = [4,5]
trigger3 = var(21) && statetype != A && movecontact
trigger4 = ctrl||stateno=[100,110]
trigger4 = stateno != 105

;---------------------------------------------------------------------------
; Jumping Light Punch
[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerall = var(59) = 0
triggerall = var(50) != 1
triggerall = command = "x"
triggerall= Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Forward/Back Jumping Light Punch
[State -1, Forward/Back Jumping Light Punch]
type = ChangeState
value = 601
triggerall = var(59) = 0
triggerall = var(50) != 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jumping Medium Punch
[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerall = var(59) = 0
triggerall = command = "y"
triggerall= Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,601]) && movecontact
trigger3 = stateno = 630 && movecontact

;---------------------------------------------------------------------------
; Forward/Back Jumping Medium Punch
[State -1, Forward/Back Jump Medium Punch]
type = ChangeState
value = 611
triggerall = var(59) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,601]) && movecontact 
trigger3 = stateno = 630 && movecontact

;---------------------------------------------------------------------------
; Jumping Strong Punch
[State -1, Jumping Strong Punch]
type = ChangeState
value = 620
triggerall = var(59) = 0
triggerall = command = "z"
triggerall= Vel X = 0
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,611]) && movecontact
trigger3 = (stateno = [630,640]) && movecontact

;---------------------------------------------------------------------------
; Forward/Back Jumping Strong Punch
[State -1, Forward/Back Jumping Strong Punch]
type = ChangeState
value = 621
triggerall = var(59) = 0
triggerall = var(50) != 1
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,611]) && movecontact
trigger3 = (stateno = [630,640]) && movecontact

;---------------------------------------------------------------------------
; Jumping Light Kick
[State -1, Jumping Light Kick]
type = ChangeState
value = 630
triggerall = var(59) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(21) && statetype != S && movecontact

;---------------------------------------------------------------------------
; Jumping Medium Kick
[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerall = var(59) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
trigger3 = var(21) && statetype != S && movecontact

;---------------------------------------------------------------------------
; Jumping Strong Kick
[State -1, Jumping Strong Kick]
type = ChangeState
value = 650
triggerall = var(59) = 0
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
trigger3 = var(21) && statetype != S && movecontact

; --- UNIVERSAL GUARD CANCEL (Added by Script) ---
[State -1, Universal Guard Cancel]
type = ChangeState
value = 1100
triggerall = !AILevel
triggerall = StateNo = [150, 155] ; Trigger only when in block stun (standing, crouching, or air)
triggerall = power >= 1000 ; Must have at least 1 bar of power
trigger1 = command = "x" && command = "a" ; Light Punch + Light Kick
trigger1 = command = "holdfwd"
