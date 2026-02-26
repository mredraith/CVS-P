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
command.buffer.time = 4

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


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================

;===========================================================================

;---------------------------------------------------------------------------
; Hayate no Red Hawk
[State -1, Hayate no Red Hawk]
type = ChangeState
value = 3400
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
triggerall = command = "x" && command = "a" && command = "holdback"
triggerall = statetype = S
triggerall = numexplod(700)=0
trigger1 = ctrl

;---------------------------------------------------------------------------
[State -1, Zero Counter]
type = ChangeState
value = 710
triggerAll = !AILevel
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = command = "412p" || command = "412k"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

;---------------------------------------------------------------------------
; Sidestep
[State -1, Sidestep]
type = ChangeState
value = 730
triggerall = command = "x" && command = "a"
triggerall = statetype = S
triggerall = numexplod(700)=0
trigger1 = ctrl

;---------------------------------------------------------------------------
; Sidestep Follow Up Punch
[State -1, Sidestep Follow Up Punch]
type = ChangeState
value = 731
triggerall = command = "x" || command = "y" || command = "z"
triggerall = statetype != A
trigger1 = StateNo = 730 && Time =[14,24]

;---------------------------------------------------------------------------
; Sidestep Follow Up Kick
[State -1, Sidestep Follow Up Kick]
type = ChangeState
value = 732
triggerall = command = "a" || command = "b" || command = "c"
triggerall = statetype != A
trigger1 = StateNo = 730 && Time =[14,24]

;---------------------------------------------------------------------------
; Air Recover
[State -1, Air Recover]
type = changestate
value = ifelse((pos y >= -20),5200,5210)
triggerall = var(59) >= 1 && roundstate = 2 && stateno = 5050
trigger1 = vel y>-1 && alive && canrecover && random <200

;---------------------------------------------------------------------------
; Taunt 2
[State -1, Taunt 2]
type = ChangeState
value = 198
triggerall = command = "Taunt2"
trigger1 = statetype != A
trigger1 = ctrl
trigger1 = statetype = S && ctrl && stateno != 196 && stateno != 195 && stateno != 197

;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
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
triggerall = var(59)<=0
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
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Headbutt
[State -1, Headbutt]
type = Changestate
value = 800
trigger1 = var(59)<=0 && roundstate = 2 && (command="2p")
trigger1 = ctrl && statetype = S && stateno != 100

;---------------------------------------------------------------------------
; Triple Threat
[State -1, Triple Threat]
type = Changestate
value = 830
trigger1 = var(59)<=0 && roundstate = 2 && (command="2k")
trigger1 = ctrl && statetype = S && stateno != 100

;===========================================================================
;---------------------------------------------------------------------------
; Standing Light Punch (Alternate)
[State -1, Standing Light Punch (Alternate)]
type = ChangeState
value = 205
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
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno=[100,110]
trigger2 = stateno != 105
trigger3 = (stateno = [200,205]) && movecontact
trigger4 = stateno = 400 && movecontact && var(41)
trigger5 = (stateno = [230,235]) && movecontact && var(41)
trigger6 = stateno = 430 && movecontact && var(41)
trigger7 = stateno = [160,164]
trigger7 = time >= 16

;---------------------------------------------------------------------------
; Standing Medium Punch
[State -1, Standing Medium Punch]
type = ChangeState
value = 210
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
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno=[100,110]
trigger2 = stateno != 105
trigger3 = (stateno = [200,215]) && movecontact && var(41)
trigger4 = (stateno = [400,410]) && movecontact && var(41)
trigger5 = (stateno = [230,245]) && movecontact && var(41)
trigger6 = (stateno = [430,440]) && movecontact && var(41)
trigger7 = stateno = [160,164]
trigger7 = time >= 16

;---------------------------------------------------------------------------
; Standing Strong Punch
[State -1, Standing Strong Punch]
type = ChangeState
value = 220
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
triggerall = var(50) != 1
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno=[100,110]
trigger2 = stateno != 105
trigger3 = (stateno = [200,205]) && movecontact && var(41)
trigger4 = stateno = 400 && movecontact && var(41)
trigger5 = stateno = [160,164]
trigger5 = time >= 16

;--------------------------------------------------------------------------
; Standing Light Kick
[State -1, Standing Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = ctrl||stateno=[100,110]
trigger2 = stateno != 105
trigger3 = (stateno = [200,205]) && movecontact && var(21)
trigger4 = stateno = 400 && movecontact && var(41)

;---------------------------------------------------------------------------
; Standing Medium Kick (Alternate)
[State -1, Standing Medium Kick (Alternate)]
type = ChangeState
value = 245
triggerall = var(50) != 1
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = ctrl||stateno=[100,110]
trigger2 = stateno != 105
trigger3 = (stateno = [200,215]) && movecontact && var(41)
trigger4 = (stateno = [400,410]) && movecontact && var(41)
trigger5 = (stateno = [230,235]) && movecontact && var(41)
trigger6 = stateno = 430 && movecontact && var(41)
trigger7 = stateno = [160,164]
trigger7 = time >= 16

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
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
triggerall = var(50) != 1
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = command = "holdfwd"
triggerall = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100 && time > 12
trigger3 = (stateno = [200,245]) && movecontact && var(41)
trigger4 = (stateno = [400,440]) && movecontact && var(41)
trigger5 = stateno = [160,164]
trigger5 = time >= 16
trigger6 = ctrl||stateno=[100,110]
trigger6 = stateno != 105

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
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
triggerall = var(50) != 1
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jumping Medium Punch
[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
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
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = var(21) && statetype != S && movecontact

;---------------------------------------------------------------------------
; Jumping Medium Kick
[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
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
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact
trigger3 = var(21) && statetype != S && movecontact