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


;-| Super Motions |--------------------------------------------------------
[Command]
name = "TripleKFPalm"
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "SmashKFUpper"
command = ~D, DB, B, D, DB, B, x;~F, D, DF, F, D, DF, x
time = 20

[Command]
name = "SmashKFUpper"   ;Same name as above
command = ~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, y
time = 20

;-| Special Motions |------------------------------------------------------
[Command]
name = "吸氣破コマンド"
command = ~D, DB, B

[Command]
name = "吸氣破"
command = ~D, DB, B, a


[Command]
name = "昇龍脚コマンド"
command = ~B, DB, D, DF, F

[Command]
name = "昇龍脚"
command = ~B, DB, D, DF, F, y


[Command]
name = "排氣撃コマンド"
command = ~F, B, F

[Command]
name = "排氣撃"
command = ~F, B, F, x


[Command]
name = "満月斬コマンド"
command = ~D, DF, F

[Command]
name = "満月斬"
command = ~D, DF, F, x

[Command]
name = "満月斬"
command = ~D, DF, F, y

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
name = "おしっぱなしx"
command = /$x
time = 1


[Command]
name = "おしっぱなしy"
command = /$y
time = 1

[Command]
name = "おしっぱなしa"
command = /$a
time = 1

[Command]
name = "おしっぱなしb"
command = /$b
time = 1

[Command]
name = "おしっぱなしz"
command = /$z
time = 1

[Command]
name = "おしっぱなしc"
command = /$c
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
name = "F"
command = F
time = 1

[Command]
name = "B"
command = B
time = 1

[Command]
name = "U"
command = U
time = 1

[Command]
name = "D"
command = D
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




; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
;吸氣破
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 1300
triggerall = command = "吸氣破" || (command = "吸氣破コマンド" && command = "おしっぱなしa")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact

;---------------------------------------------------------------------------
;昇龍脚
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 1200
triggerall = command = "昇龍脚" || (command = "昇龍脚コマンド" && command = "おしっぱなしy")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact

;---------------------------------------------------------------------------
;排氣撃
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 1100
triggerall = command = "排氣撃" || (command = "排氣撃コマンド" && command = "おしっぱなしx")
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact

;---------------------------------------------------------------------------
;満月斬
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 1000
triggerall = command = "満月斬" || (command = "満月斬コマンド" && (command = "おしっぱなしx" || command = "おしっぱなしy"))
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]
trigger2 = movecontact

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;ウルトラバックドロップ
[State -1, Kung Fu Throw]
type = ChangeState
value = 1400
triggerall = command = "y"
triggerall = command = "holdfwd"
triggerall = statetype != A
triggerall = ctrl
trigger1 = p2dist X <= 56


;===========================================================================
;---------------------------------------------------------------------------
;挑発
[State -1, Stand Light Punch]
type = ChangeState
value = 199
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command != "holdfwd"
triggerall = command != "holdback"
triggerall = p2dist x >= 205
triggerall = stateno != 199
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ強パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ弱キック
[State -1, Crouching Light Punch]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;しゃがみ強キック
[State -1, Crouching Light Punch]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;遠距離立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2dist x >= 88
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;中距離立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2dist x < 88
triggerall = p2dist x >= 55
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 206
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2dist x < 55
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;遠距離立ち強パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2dist x >= 88
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;中距離立ち強パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 215
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2dist x < 88
triggerall = p2dist x >= 55
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ち強パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 216
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2dist x < 55
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;遠距離立ち弱キック
[State -1, Stand Light Punch]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2dist x >= 88
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;中距離立ち弱キック
[State -1, Stand Light Punch]
type = ChangeState
value = 235
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2dist x < 88
triggerall = p2dist x >= 55
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ち弱キック
[State -1, Stand Light Punch]
type = ChangeState
value = 236
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2dist x < 55
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;遠距離立ち強キック
[State -1, Stand Light Punch]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2dist x >= 88
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;中距離立ち強キック
[State -1, Stand Light Punch]
type = ChangeState
value = 245
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2dist x < 88
triggerall = p2dist x >= 55
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;近距離立ち強キック
[State -1, Stand Light Punch]
type = ChangeState
value = 246
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2dist x < 55
trigger1 = statetype != A
trigger1 = ctrl







;---------------------------------------------------------------------------
;ジャンプ弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x" || (command = "おしっぱなしx" && pos y <= -60)
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ジャンプ強パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "y" || (command = "おしっぱなしy" && pos y <= -60)
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ジャンプ弱キック
[State -1, Jump Light Punch]
type = ChangeState
value = 630
triggerall = command = "a" || (command = "おしっぱなしa" && pos y <= -60)
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ジャンプ強キック
[State -1, Jump Light Punch]
type = ChangeState
value = 630
triggerall = command = "b" || (command = "おしっぱなしb" && pos y <= -60)
trigger1 = statetype = A
trigger1 = ctrl