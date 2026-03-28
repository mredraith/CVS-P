; _______________________________________
;| Axel Stone by Testament             |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==
;SYSTEM STATES
;==

;STANDING
[StateDef 0]
type = S
physics = S
moveType = I
velSet = 0,0
sprPriority = 0

[State 0, Remove Explods]
type = RemoveExplod
trigger1 = IsHelper

[State 0, Destroy Helpers]
type = DestroySelf
trigger1 = IsHelper

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 0 && Anim != 5
trigger2 = Anim = 5 && !AnimTime
value = 0

[State 0, Dead]
type = ChangeState
trigger1 = !Alive
value = 5050

[State 0, Skywalker]
type = ChangeState
triggerall = pos y < 0
trigger1 = !NumEnemy
trigger2 = NumEnemy = 1
trigger2 = (Enemy, Name = "M -NES Game 1" + Enemy, Name = "M -NES Game 2" + Enemy, Name = "M -GB Game 1" + Enemy, AuthorName = "Bane84") < 2
trigger3 = Numenemy >= 2
trigger3 = (Enemy(0), Name = "M -NES Game 1" + Enemy(0), Name = "M -NES Game 2" + Enemy(0), Name = "M -GB Game 1" + Enemy(0), AuthorName = "Bane84") < 2
trigger3 = (Enemy(1), Name = "M -NES Game 1" + Enemy(1), Name = "M -NES Game 2" + Enemy(1), Name = "M -GB Game 1" + Enemy(1), AuthorName = "Bane84") < 2
value = 50



;CROUCHING
;Stand to Crouch
[StateDef 10]
type = C
physics = C
moveType = I
velSet = 0,0
sprPriority = 0

[State 10, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && Anim = 12
value = 10
elem = 3 - AnimElemNo(0)

[State 10, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 10
value = 10

[State 10, End]
type = ChangeState
trigger1 = !AnimTime
value = 11


;Crouching
[StateDef 11]
type = C
physics = C
moveType = I
anim = 11
velSet = 0,0
sprPriority = 0

[State 11, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 6 && !AnimTime
value = 11


;Crouch to Stand
[StateDef 12]
type = S
physics = S
moveType = I
velSet = 0,0
sprPriority = 0

[State 12, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && Anim = 10
value = 12
elem = 3 - AnimElemNo(0)

[State 12, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 12
value = 12

[State 12, End]
type = ChangeState
trigger1 = command = "holddown" && command != "holdup"
value = 10

[State 12, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;WALKING
[StateDef 20]
type = S
physics = S
moveType = I
sprPriority = 0

[State 20, VelSet]
type = VelSet
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 20, VelSet]
type = VelSet
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[State 20, ChangeAnim]
type = ChangeAnim
triggerAll = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimElemTime(1) >= 1
value = 20

[State 20, ChangeAnim]
type = ChangeAnim
triggerAll = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimElemTime(1) >= 1
value = 21



;JUMPING
;Jumping
[StateDef 40]
type = S
physics = S
moveType = I
anim = 40
ctrl = 0
velSet = 0,0
sprPriority = 1
faceP2 = 1

[State 40, Direction]
type = VarSet
trigger1 = !AILevel
sysvar(1) = ifElse(!Time, 0, ifElse(command = "holdfwd", 1, ifElse(command = "holdback", -1, sysvar(1))))

[State 40, Direction (AI)]
type = VarSet
trigger1 = AILevel
sysvar(1) = ifElse((EnemyNear, MoveType != A || BackEdgeBodyDist <= 10), 1, ifElse((EnemyNear, MoveType = A), -1, 0))

[State 40, High Jump]
type = VarSet
trigger1 = !Time && !AILevel
var(3) = ifElse(command = "highjump", 3, 0)

[State 40, High Jump (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(3) = ifElse((P2BodyDist x >= 160 || Random < (125 * (AILevel ** 2 / 64.0))), 3, 0)

[State 40, High Jump]
type = VarSet
trigger1 = !Time && PrevStateNo = 100
var(3) = 3

[State 40, Low Jump]
type = VarSet
trigger1 = !AILevel && command != "holdup" && (var(3) != [1,2])
var(3) = ifElse((var(3) = 3 && sysvar(1)), 2, 1)

[State 40, Low Jump (AI)]
type = VarSet
trigger1 = AILevel && (var(3) != [1,2])
trigger1 = (EnemyNear, StateType = C) && Random < 500
var(3) = ifElse((var(3) = 3 && sysvar(1)), 2, 1)

[State 40, Jump Sound]
type = PlaySnd
trigger1 = !AnimTime
value = ifElse((var(3) = [2,3]), 41, 40), 0

[State 40, Dust Helper]
type = Helper
trigger1 = !AnimTime
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 40, Velocity: Normal Jump]
type = VelSet
trigger1 = !AnimTime
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, Velocity: Low Jump]
type = VelSet
trigger1 = !AnimTime && var(3) = 1
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = 0.75 * const(velocity.jump.y)

[State 40, Velocity: Long Low Jump]
type = VelSet
trigger1 = !AnimTime && var(3) = 2
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = 0.75 * const(velocity.jump.y)

[State 40, Velocity: Long Jump]
type = VelSet
trigger1 = !AnimTime && var(3) = 3
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = ifElse(!sysvar(1), const(velocity.runjump.y), const(velocity.jump.y))

[State 40, End]
type = ChangeState
trigger1 = !AnimTime
value = 50
ctrl = 1


;In Air
[StateDef 50]
type = A
physics = N
moveType = I
sprPriority = 1

[State 50, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(!vel x , 41, ifElse(vel x > 0, 42, 43)) + 10 * (var(3) = [1,2])
persistent = 0

[State 50, Assert: No Guard]
type = AssertSpecial
trigger1 = var(3) = [1,2]
flag = NoAirGuard
ignoreHitPause = 1

[State 50, Grounded Frame]
type = PosFreeze
trigger1 = Time < 1 && PrevStateNo = 40
value = 1

[State 50, Gravity]
type = Gravity
trigger1 = Time >= 1 || PrevStateNo != 40

[State 50, Landing]
type = ChangeState
trigger1 = pos y > -vel y
value = 52


[StateDef 51]
type = A
physics = N
moveType = I
sprPriority = 1

[State 51, Gravity]
type = Gravity
trigger1 = 1

[State 51, Landing]
type = ChangeState
trigger1 = pos y > -vel y
value = 52


;Landing
[StateDef 52]
type = S
physics = S
moveType = I
anim = 47
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 52, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && (var(3) = 1 || var(3) = 2)
trigger1 = (PrevStateNo = [600,699])
value = 57

[State 52, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 52, CtrlSet]
type = CtrlSet
trigger1 = !Time && (PrevStateNo != [600,699])
trigger2 = Time = 1 && Anim != 57
value = 1

[State 52, ChangeState to Guarding]
type = ChangeState
trigger1 = ctrl && command = "holdback"
trigger1 = InGuardDist && (PrevStateNo != [600,699])
value = 120

[State 52, Assert: NoWalk]
type = AssertSpecial
trigger1 = Anim != 5
flag = NoWalk
ignoreHitPause = 1

[State 52, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 52, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 52, ChangeAnim to Turning]
type = ChangeAnim
trigger1 = ctrl && P2Dist x < 0
trigger1 = Anim != 5
value = 5

[State 52, Turn]
type = Turn
trigger1 = Anim = 5 && AnimElem = 1

[State 52, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;RUN>=
[StateDef 100]
type = S
physics = N
moveType = I
anim = 100
ctrl = 0
sprPriority = 1

[State 100, VelSet]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 100, Step Sound]
type = PlaySnd
trigger1 = (AnimElem = 3 || AnimElem = 6)
value = 100, ifElse((AnimElem = 3), 0, 1)

[State 100, Jump]
type = ChangeState
trigger1 = !AILevel
trigger1 = command = "holdfwd" && command = "holdup"
value = 40

[State 100, Jump (AI)]
type = ChangeState
trigger1 = AILevel && Random < 25
value = 40

[State 100, End]
type = ChangeState
trigger1 = !AILevel && command != "holdfwd"
trigger2 = AILevel && P2BodyDist x <= 90
value = 101


;Stop Running
[StateDef 101]
type = S
physics = S
moveType = I
anim = 101
ctrl = 0
sprPriority = 1

[State 101, Stopping Sound]
type = PlaySnd
trigger1 = !Time
value = 101,0

[State 101, Skid Dust]
type = Explod
trigger1 = !Time
anim = 8104
sprPriority=3
posType = P1
pos = 0,0
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 101, Jump]
type = ChangeState
trigger1 = !AILevel && command = "holdup"
value = 40

[State 101, End]
type = ChangeState
trigger1 = !AnimTime
value = ifElse(command = "holddown", 10, 0)
ctrl = 1



;DASH BACKWARDS
[StateDef 105]
type = A
physics = N
moveType = I
velSet = 0,0
anim = 105
ctrl = 0
sprPriority = 1

[State 105, Back Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 105,0

[State 105, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
facing = -1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 105, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = const(velocity.run.back.x); + 2.25
y = const(velocity.run.back.y)

[State 105, End]
type = ChangeState
trigger1 = !AnimTime
value = 106


;Stop Dashing Backwards
[StateDef 106]
type = S
physics = S
ctrl = 0
anim = 106
velSet = 0,0

[State 106, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 106, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 100,1

[State 106, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprpriority = -3
postype = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 106, CtrlSet]
type = CtrlSet
trigger1 = Time >= 2
value = 1

[State 106, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;DASH FORWARD>=
[StateDef 110]
type = S
physics = N
moveType = I
anim = 110
ctrl = 0
sprPriority = 1

[State 110, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 6.00

[State 110, Dash Sound]
type = PlaySnd
trigger1 = !Time
value = 110,0

[State 110, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 110, VarSet -> Running]
type = VarSet
trigger1 = !Time
sysvar(1) = 1

[State 110, VarSet -> Not Running]
type = VarSet
triggerAll = Time <= 10
trigger1 = !AILevel && command != "holdfwd"
sysvar(1) = 0

[State 110, ChangeState to Running]
type = ChangeState
trigger1 = Time = 10 && sysvar(1)
value = 100

[State 110, End]
type = ChangeState
trigger1 = !AnimTime
value = 111


;Stop Dashing Forward
[StateDef 111]
type = S
physics = S
ctrl = 1
anim = 111
velSet = 0,0

[State 111, Dash End Sound]
type = PlaySnd
trigger1 = !Time
value = 100,0

[State 111, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 111, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;DODGE
[StateDef 700]
type = S
physics = S
moveType = I
anim = 700
ctrl = 0
velSet = 0,0
sprPriority = -2

[State 700, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4,1
channel = 0

[State 700, Dodge Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,3
channel = 1

[State 700, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 700, HitBy]
type = HitBy
trigger1 = 1
value = SCA,AT
time = 1

[State 700, Attack]
type = ChangeState
trigger1 = !AILevel && Time = [15,25]
trigger1 = command = "x" || command = "y" || command = "z" || command = "a" || command = "b" || command = "c"
value = ifElse((command = "x" || command = "y" || command = "z"), 220, 250)

[State 700, Attack (AI)]
type = ChangeState
trigger1 = AILevel && (Time = [15,25]) && NumEnemy
trigger1 = (EnemyNear, MoveType != A) && (P2BodyDist x = [-60,60]) && (P2Dist y >= -60)
value = ifElse(Random < 666, 220, 250)

[State 700, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;ROLL FORWARD
[StateDef 710]
type = S
physics = N
moveType = I
anim = 710
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 710, playerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 710, HitBy]
type = HitBy
trigger1 = AnimElemTime(7) < 0
value = SCA,AT
time = 1

[State 710, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, ifElse(random < 500, 1, 0)
channel = 0

[State 710, Roll Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 110,0
channel = 1

[State 710, Start Roll]
type = VelSet
trigger1 = AnimElem = 2
x = 6.0

[State 710, End Roll]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 710, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;ROLL BACKWARDS>=
[StateDef 715]
type = S
physics = N
moveType = I
anim = 720
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 715, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 715, HitBy]
type = HitBy
trigger1 = AnimElemTime(7) < 0
value = SCA,AT
time = 1

[State 715, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4, ifElse(random < 500, 1, 0)
channel = 0

[State 715, Roll Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 110,0
channel = 1

[State 715, Start Roll]
type = VelSet
trigger1 = AnimElem = 2
x = -6.0

[State 715, Stop Roll]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 715, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;POWER CHARGE
[StateDef 730]
type = S
physics = S
moveType = I
anim = 730
velSet = 0,0
ctrl = 0

[State 730, PowerAdd]
type = PowerAdd
triggerAll = Power < const(data.power) && Power < PowerMax
trigger1 = (command = "holdb" && command = "holdy")
value = 5 + ifElse(time < 60, 0, (time - 60) / 12)

[State 730, Voice]
type = PlaySnd
trigger1 = !Time
value = 0,0
channel = 0

[State 730, Character Flash]
type = PalFX
trigger1 = 1
time = 1
add = 75 + ceil(sin(Time / 6.0 * pi) * 75),25 + ceil(sin(Time / 6.0 * pi) * 25),0

[State 730, Power Charge Helper]
type = Helper
trigger1 = !NumHelper(8330)
helperType = Normal
stateNo = 8330
ID = 8330
name = "Power Charge"
posType = P1
pos = 0,0
pauseMoveTime = 65535
superMoveTime = 65535
ownPal = 1

[State 730, Particles]
type = Helper
trigger1 = !NumHelper(8331)
helperType = Normal
stateNo = 8331
ID = 8331
name = "Particles"
postype = P1
pauseMoveTime = 65535
superMoveTime = 65535
ownPal = 1

[State 730, End]
type = ChangeState
trigger1 = Power >= const(data.power) || Power >= PowerMax || RoundState != 2
trigger2 = (command != "holdb" || command != "holdy")
value = 731
ctrl = 1


;Power Charge End
[StateDef 731]
type = S
physics = S
moveType = I
anim = 731
velSet = 0,0
ctrl = 1

[State 731, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 0

[State 730, Full Power Voice]
type = PlaySnd
trigger1 = !Time && Power >= const(data.power)
value = 0,730
channel = 0
persistent = 0

[State 730, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;ZERO COUNTER
[StateDef 750]
type = S
physics = S
moveType = I
anim = 750
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = -1000
faceP2 = 1

[State 750, Button]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = (command = "412k")
ignoreHitPause = 1

[State 750, Button (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2StateType = A), 0, ifElse((P2StateType = C), 1, ifElse(Random < 500, 0, 1)))
ignoreHitPause = 1

[State 750, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 750, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 750, Voice]
type = PlaySnd
trigger1 = !Time
value = 4,0
channel = 0

[State 750, Zero Counter FX Helper]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8350
ID = 8350
name = "Zero Counter"
posType = P1
pos = 25, -63
superMoveTime = 255
ownPal = 1

[State 750, SuperPause]
type = SuperPause
trigger1 = !Time
time = 15
moveTime = 15
p2DefMul = 1
anim = -1
sound = s750,0
darken = 0

[State 750, End]
type = ChangeState
trigger1 = Time >= 15
value = ifElse(var(10) = 1, 2910, 2900)



;PARRY
;Standing Parry
[StateDef 760]
type = S
physics = S
moveType = I
anim = 760
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = 78
faceP2 = 1

[State 760, HitBy]
type = HitBy
trigger1 = 1
value = SCA,AT
time = 1

[State 760, Pause]
type = Pause
trigger1 = !Time
time = 15
moveTime = 15
endCmdBufTime = 15
pauseBg = 0

[State 760, Stop]
type = PosFreeze
trigger1 = 1
value = 1

[State 760, No Walking]
type = VarSet
trigger1 = 1
var(26) = 7

[State 760, Voice]
type = PlaySnd
trigger1= !Time
value = 4,0
channel = 0

[State 760, Parry Sound]
type = PlaySnd
trigger1 = !Time
value = 760,0

[State 760, Player Flash]
type = PalFX
trigger1 = !Time
add = 0,64,255
sinadd = 0,-64,-255,60
time = 15

[State 760, FX]
type = Explod
trigger1 = !Time
anim = 8360
sprPriority = 5
posType = P1
pos = ceil(38 * const(size.xScale)), ceil(-82 * const(size.yScale))
pauseMoveTime = -1
superMoveTime = -1
scale = 0.5,0.5
ownPal = 1

[State 760, EnvShake]
type = EnvShake
trigger1 = !Time
time = 0
ampl = 0

[State 760, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Crouching Parry
[StateDef 761]
type = C
physics = C
moveType = I
anim = 761
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = 78
faceP2 = 1

[State 761, HitBy]
type = HitBy
trigger1 = 1
value = SCA,AT
time = 1

[State 761, Pause]
type = Pause
trigger1 = !Time
time = 15
moveTime = 15
endCmdBufTime = 15
pauseBg = 0

[State 761, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 761, No Walk]
type = VarSet
trigger1 = 1
var(26) = 7

[State 761, Voice]
type = PlaySnd
trigger1 = !Time
value = 4,0
channel = 0

[State 761, Parry Sound]
type = PlaySnd
trigger1 = !Time
value = 760,0

[State 761, Player Flash]
type = PalFX
trigger1 = !Time
add = 0,64,255
sinAdd = 0,-64,-255,60
time = 15

[State 761, Parry FX]
type = Explod
trigger1 = !Time
anim = 8360
sprpriority = 5
postype = P1
pos = ceil(20 * const(size.xScale)), ceil(-52 * const(size.yScale))
pauseMovetime = -1
superMovetime = -1
scale = 0.5,0.5
ownpal = 1

[State 761, EnvShake]
type = EnvShake
trigger1 = !time
time = 0
ampl = 0

[State 761, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1


;Jumping Parry
[StateDef 762]
type = A
physics = N
moveType = I
anim = 762
ctrl = 0
sprPriority = 2
powerAdd = 78
faceP2 = 1

[State 762, HitBy]
type = HitBy
trigger1 = 1
value = SCA,AT
time = 1

[State 762, Pause]
type = Pause
trigger1 = !Time
time = 15
moveTime = 15
endCmdBufTime = 15
pauseBg = 0

[State 762, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 762, Voice]
type = PlaySnd
trigger1 = !Time
value = 4,0
channel = 0

[State 762, Parry Sound]
type = PlaySnd
trigger1 = !Time
value = 760,0

[State 762, Player Flash]
type = PalFX
trigger1 = !Time
add = 0,64,255
sinadd = 0,-64,-255,60
time = 15

[State 762, Parry FX]
type = Explod
trigger1 = !Time
anim = 8360
sprPriority = 5
posType = P1
pos = ceil(26 * const(size.xScale)), ceil(-94 * const(size.yScale))
pauseMoveTime = -1
superMoveTime = -1
scale = 0.5,0.5
ownpal = 1

[State 762, EnvShake]
type = EnvShake
trigger1 = !Time
time = 0
ampl = 0

[State 762, End]
type = ChangeState
trigger1 = !AnimTime
value = 763
ctrl = 1


;Falling
[StateDef 763]
type = A
physics = N
movetype = I
anim = 763
ctrl = 1

[State 763, VelSet]
type = VelSet
trigger1 = !Time
x = ifElse(vel x > 2, 2, ifElse(vel x < -2, -2, vel x))
y = ifElse(vel y < -2, vel y, -2)

[State 763, Gravity]
type = Gravity
trigger1 = 1

[State 763, Landing]
type = ChangeState
trigger1 = pos y > -vel y
value=52



;CUSTOM COMBO
;Ground Version
[StateDef 900]
type = S
physics = S
moveType = A
anim = 900
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = -1000

[State 900, Corner Push]
type = VarSet
trigger1 = Time = 4
fvar(5) = 0

[State 900, Unguardable]
type = VarSet
trigger1 = Time = 4 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 30

[State 900, NotHitBy]
type = NotHitBy
trigger1 = !time
value = SCA
time = 38

[State 900, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 900, Custom Combo Time]
type = VarSet
trigger1 = Time >= 3
var(20) = 180

[State 900, Voice]
type = PlaySnd
trigger1 = Time = 3
value = 900,1
channel = 0

[State 900, Custom Combo FX Helper]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8400
ID = 8400
name = "Custom Combo FX"
posType = P1
pos = 19,-51
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 900, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 30
moveTime = 30
anim = -1
sound = s900,0
p2DefMul = 1
darken = 0

[State 900, AfterImage]
type = AfterImage
trigger1= !AnimTime
time = 2
timeGap = 1
frameGap = 4
length = 13
palBright = 0,0,0
palContrast = 64,128,192
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.75,0.75,0.75
trans = add1

[State 900, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Air Version
[Statedef 905]
type = A
physics = N
moveType = A
anim = 905
ctrl = 0
sprPriority = 2
powerAdd = -1000

[State 905, Corner Push]
type = VarSet
trigger1 = Time = 4
fvar(5) = 0

[State 905, Unguardable]
type = VarSet
trigger1 = Time = 4 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 30

[State 905, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = 38

[State 905, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 905, Custom Combo Timer]
type = VarSet
trigger1 = Time >= 4
var(20) = 180

[State 905, Voice]
type = PlaySnd
trigger1 = Time = 4
value = 900,1
channel = 0

[State 905, Custom Combo FX Helper]
type = Helper
trigger1 = Time = 4
helperType = Normal
stateNo = 8400
ID = 8400
name = "Custom Combo Startup"
posType = P1
pos = 6,-77
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 905, SuperPause]
type = SuperPause
trigger1 = Time = 4
time = 30
moveTime = 30
anim = -1
sound = s900,0
p2DefMul = 1
darken = 0

[State 905, AfterImage]
type = AfterImage
trigger1 = !AnimTime
time = 2
timeGap = 1
frameGap = 4
length = 13
palBright = 0,0,0
palContrast = 64,128,192
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.75,0.75,0.75
trans = add1

[State 905, End]
type = ChangeState
trigger1 = !AnimTime
value = 906
ctrl = 1

;Air Finish
[StateDef 906]
type = A
physics = N
moveType = I
anim = 906
ctrl = 1

[State 906, Gravity]
type = Gravity
trigger1 = 1

[State 906, Land]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;TARGET SAFE FALL
[StateDef 5205]
type = A
physics = N
moveType = H

[State 5205, ChangeAnim]
type = ChangeAnim
trigger1 = !AnimTime
trigger1 = anim = 5035
value = 5050

[State 5205, VelAdd]
type = VelAdd
trigger1 = 1
y = GetHitVar(yAccel)

[State 5205, SelfState (Ground)]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 5205, SelfState (Air)]
type = SelfState
trigger1 = Time >= 60
value = 5210



;FALL RECOVERY
[StateDef 5200]
type = A
moveType = H
physics = N

[State 5200, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 5035 && !AnimTime
value = 5050

[State 5200, VelAdd]
type = VelAdd
trigger1 = 1
y = GetHitVar(yAccel)

[State 5200, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 10
value = 5201

[StateDef 5201]
type = S
moveType = I
physics = N
anim = 5200
ctrl = 0
faceP2 = 1

[State 5201, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 5201, VelSet]
type = VelSet
trigger1 = !Time
x = -8
y = 0

[State 5201, VelMul]
type = VelMul
trigger1 = 1
x = 0.9

[State 5201, Voice]
type = PlaySnd
trigger1 = !Time
value = 4,1
channel = 0

[State 5201, Recover Sound]
type = PlaySnd
trigger1 = !Time
value = 5200,0

[State 5201, Flash]
type = PalFX
trigger1 = !Time
add = 255,255,255
sinAdd = -255,-255,-255,40
time=10

[State 5201, Recover FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8200
ID = 8200
name = "Recover FX"
posType = P1
pos = 0, ceil(-18 * const(size.yScale))
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 5201, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5201, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Air Recover
[StateDef 5210]
type = A
moveType = I
physics = N
anim = 5210
ctrl = 0

[State 5210, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.6

[State 5210, VelSet]
type = VelSet
trigger1 = !Time
x = ifElse((command = "holdfwd" && command != "holdback"), 4, ifElse((command != "holdfwd" && command = "holdback"), -4, 0))
y = -7.55

[State 5210, Voice]
type = PlaySnd
trigger1 = !Time
value = 4,1
channel = 0

[State 5210, Recover Sound]
type = PlaySnd
trigger1 = !Time
value  = 5200,0

[State 5210, Flash]
type = PalFX
trigger1 = !Time
add = 255,255,255
sinAdd = -255,-255,-255,40
time = 10

[State 5210, Recover FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8200
ID = 8200
name = "Recover FX"
posType = P1
pos = 0, ceil(-66 * const(size.yScale))
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 5210, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(7) < 0
value = SCA
time = 1

[State 5210, CtrlSet]
type = CtrlSet
trigger1 = AnimElemTime(7) >= 0
value = 1

[State 5210, Land]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;GUARD
;Guard Start
[StateDef 120]
type = U
physics = U
anim = 120 + (StateType = C) + (StateType = A) * 2

[State 120, StateTypeSet: Standing]
type = StateTypeSet
trigger1 = !Time && StateType = S
physics = S

[State 120, StateTypeSet: Crouching]
type = StateTypeSet
trigger1 = !Time && StateType = C
physics = C

[State 120, StateTypeSet: Jumping]
type = StateTypeSet
trigger1 = !Time && StateType = A
physics = A

[State 120, VelSet]
type = VelSet
trigger1 = !Time && StateType != A
x = 0
y = 0

[State 120, Stand to Crouching]
type = StateTypeSet
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = AILevel && StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
physics = C

[State 120, Crouching to Stand]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = AILevel && StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

[State 120, AI Fix]
type = CtrlSet
trigger1 = AILevel && NumEnemy
value = (EnemyNear, Time >= 120 || Time >= 180)

[State 120, Change to Guard State]
type = ChangeState
trigger1 = !AnimTime || AILevel
value = 130 + (StateType = C) + (StateType = A) * 2

[State 120, Stop Guarding]
type = ChangeState
trigger1 = (!AILevel && command != "holdback")
trigger2 = !InGuardDist
trigger3 = AILevel && NumEnemy
trigger3 = EnemyNear, HitDefAttr = SCA, AT
value = 140


;Standing Guard
[StateDef 130]
type = S
physics = S

[State 130, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 130
value = 130

[State 130, AI Fix]
type = CtrlSet
trigger1 = AILevel && NumEnemy
value = (EnemyNear, Time >= 120 || Time >= 180)

[State 130, Standing to Crouch]
type = ChangeState
trigger1 = !AILevel && command = "holddown"
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
value = 131

[State 130, Stop Guarding]
type = ChangeState
trigger1 = (!AILevel && command != "holdback")
trigger2 = !InGuardDist
trigger3 = AILevel && NumEnemy
trigger3 = EnemyNear, HitDefAttr = SCA, AT
value = 140

[State 130, Landing Sound]
type = PlaySnd
trigger1 = !Time
trigger1 = PrevStateNo = 132 || (PrevStateNo = [154,155])
value = 52,0

[State 130, Landing Dust Expod]
type = Explod
trigger1 = !Time
trigger1 = PrevStateNo = 132 || (PrevStateNo = [154,155])
anim = 8102
sprpriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1


;Crouch Guarding
[StateDef 131]
type = C
physics = C

[State 131, ChangeAnim]
type = ChangeAnim
trigger1 = anim != 131
value = 131

[State 131, Crouching to Standing]
type = ChangeState
trigger1 = !AILevel && command != "holddown"
trigger2 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
value = 130

[State 131, AI Fix]
type = CtrlSet
trigger1 = AILevel && NumEnemy
value = (EnemyNear, Time >= 120 || Time >= 180)

[State 131, Stop Guarding]
type = ChangeState
trigger1 = (!AILevel && command != "holdback")
trigger2 = !InGuardDist
trigger3 = AILevel && NumEnemy
trigger3 = EnemyNear, HitDefAttr = SCA, AT
value = 140


;Air Guard
[StateDef 132]
type = A
physics = N

[State 132, ChangeAnim]
type = ChangeAnim
trigger1 = anim != 132
value = 132

[State 132, VelAdd]
type = VelAdd
trigger1 = 1
y = const(movement.yAccel)

[State 132, VarSet]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0 && vel y > 0)

[State 132, VelSet]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 132, PosSet]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 132, AI Fix]
type = CtrlSet
trigger1 = AILevel && NumEnemy
value = (EnemyNear, Time >= 120 || Time >= 180)

[State 132, Jumping to Standing]
type = ChangeState
trigger1 = sysvar(0) && InGuardDist
trigger1 = (!AILevel && command = "holdback") || AILevel
value = 130

[State 132, Change to Falling]
type = ChangeState
trigger1 = sysvar(0)
value = 52

[State 132, Stop Guarding]
type = ChangeState
trigger1 = (!AILevel && command != "holdback")
trigger2 = !InGuardDist
trigger3 = AILevel && NumEnemy
trigger3 = EnemyNear, HitDefAttr = SCA, AT
value = 140


;Guard End
[StateDef 140]
type = U
physics = U
ctrl = 1

[State 140, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 140 + (StateType = C) + (StateType = A) * 2

[State 140, StateTypeSet: Standing]
type = StateTypeSet
trigger1 = !Time && StateType = S
physics = S

[State 140, StateTypeSet: Crouching]
type = StateTypeSet
trigger1 = !Time && StateType = C
physics = C

[State 140, StateTypeSet: Jumping]
type = StateTypeSet
trigger1 = !Time && StateType = A
physics = A

[State 140, Standing to Crouching]
type = StateTypeSet
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 140, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

[State 140, End]
type = ChangeState
trigger1 = !AnimTime
value = (StateType = C) * 11 + (StateType = A) * 51


;Hit while Guarding (Standing)
[StateDef 150]
type = S
movetype = H
physics = N
velSet = 0,0

[State 150, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 150

[State 150, End]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2 * ((!AILevel && command = "holddown") || (AILevel && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)))

[State 150, Standing to Crouching]
type = StateTypeSet
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
stateType = C
physics = C

[State 150, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = AIlevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S


;Knocked Back while Guarding (Standing)
[StateDef 151]
type = S
moveType = H
physics = S
anim = 150

[State 151, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1

[State 151, VelSet]
type = VelSet
trigger1 = Time = GetHitVar(SlideTime)
trigger2 = HitOver
x = 0

[State 151, CtrlSet]
type = CtrlSet
trigger1 = time = GetHitVar(CtrlTime)
value = 1

[State 151, Standing to Crouching]
type = StateTypeSet
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 151, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

[State 151, End]
type = ChangeState
trigger1 = HitOver
value = 130
ctrl = 1


;Hit while Guarding (Crouching)
[StateDef 152]
type = C
moveType = H
physics = N
velSet = 0,0

[State 152, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 151

[State 152, End]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2 * ((!AILevel && command = "holddown") || (AILevel && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)))

[State 152, Standing to Crouching]
type = StateTypeSet
trigger1 = !AILevel && statetype = S && command = "holddown"
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 152, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S


;Knocked Back while Guarding (Crouching)
[StateDef 153]
type = C
moveType = H
physics = C
anim = 151

[State 153, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1

[State 153, VelSet]
type = VelSet
trigger1 = Time = GetHitVar(SlideTime)
trigger2 = HitOver
x = 0

[State 153, CtrlSet]
type = CtrlSet
trigger1 = Time = GetHitVar(CtrlTime)
value = 1

[State 153, Standing to Crouching]
type = StateTypeSet
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 153, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

[State 153, End]
type = ChangeState
trigger1 = HitOver
value = 131
ctrl = 1


;Hit while Guarding (Jumping)
[StateDef 154]
type = A
moveType = H
physics = N
velSet = 0,0

[State 154, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 152

[State 154, End]
type = ChangeState
trigger1 = HitShakeOver
value = 155


;Knocked Back while Guarding (Jumping)
[StateDef 155]
type = A
moveType = H
physics = N
anim = 152

[State 155, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 155, VelAdd]
type = VelAdd
trigger1 = 1
y = const(movement.yAccel)

[State 155, CtrlSet]
type = CtrlSet
trigger1 = Time = GetHitVar(CtrlTime)
value = 1

[State 155, VarSet]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0 && vel y > 0)

[State 155, VelSet]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 155, PosSet]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 155, End]
type = ChangeState
trigger1 = sysvar(0) && InGuardDist
trigger1 = (!AILevel && command = "holdback") || AILevel
value = 130

[State 155, End]
type = ChangeState
trigger1 = sysvar(0)
value = 52



;LOSE
[StateDef 170]
type = S
ctrl = 0
anim = 170
velSet = 0,0

[State 170, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver



;DRAW GAME
[StateDef 175]
type = S
ctrl = 0
velSet = 0,0

[State 175, ChangeState]
type = ChangeState
trigger1 = !Time
value = 170



;CONTINUE?
[StateDef 5500]
type = S
anim = 5300
velSet = 0,0
ctrl = 0

[State 5500, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5500



;INITIALIZE
[StateDef 5900]
type = S

[State 5900, Int VarReset]
type = VarRangeSet
trigger1 = !RoundsExisted
value = 0

[State 5900, Float VarReset]
type = VarRangeSet
trigger1 = !RoundsExisted
fvalue = 0

[State 5900, Intro vs Mai Shiranui]
type = ChangeState
triggerAll = NumEnemy
triggerAll = RoundNo = 1 || (!(Enemy, RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul))
trigger1 = Enemy, Name = "Mai Shiranui" || Enemy, Name = "Mai" || Enemy, Name = "Mai"
value = 192

[State 5900, Intro vs Villains]
type = ChangeState
triggerAll = NumEnemy
triggerAll = RoundNo = 1 || (!(Enemy, RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul))
trigger1 = Enemy, Name = "Mr.Big_xi" || Enemy, Name = "Mr.Big" || Enemy, Name = "MrBig"
trigger2 = Enemy, Name = "CvS_KazuyaTAG" || Enemy, Name = "Kazuya" || Enemy, Name = "CvS_Kazuya"
trigger3 = Enemy, Name = "Vega" || Enemy, Name = "cvs_vega" || Enemy, Name = "cvsvega"
trigger4 = Enemy, Name = "cvsgeese" || Enemy, Name = "Geese Howard" || Enemy, Name = "Geese"|| Enemy, Name = "Aof_Geese"
trigger5 = Enemy, Name = "Heidern"
value = 194

[State 5900, Intro vs Street Girls]
type = ChangeState
triggerAll = NumEnemy
triggerAll = RoundNo = 1 || (!(Enemy, RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul))
trigger1 = Enemy, Name = "ZeroBlaze" || Enemy, Name ="RajaaMaki" || Enemy, Name = "Blaze" || Enemy, Name = "Maki" || Enemy, Name ="Sonia" || Enemy, Name = "Lucia"
value = 196

[State 5900, Turns Intro]
type = ChangeState
trigger1 = TeamMode = Turns
trigger1 = !RoundsExisted && RoundNo >= 2
value = 6900

[State 5900, Intro Decider]
type = ChangeState
trigger1 = RoundNo = 1
value = 190 + (Random % 4)

[State 5900, End]
type = ChangeState
trigger1 = 1
value = 0



;INTRO 1
;Stomping GALSIA Intro 
[Statedef 190]  ;was 730
type = S
ctrl = 0
anim = 1900001
velset = 0,10
sprpriority = 1

[State 182, 1]
type = screenbound
trigger1 = 1
movecamera = 0,0
value = 1

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 181, pos]
type = PosSet
trigger1 = !time
Y = -495

[State 181, pos]
type = PosAdd
trigger1 = !time
X = -30

[State 190, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 1030, Galsia]
type=helper
trigger1= animelemtime(1)=1
helpertype=normal
stateno=73000
ID=73000
name="Galsia"
postype=p1
pos=0,-100
ownpal=1

[State 190, 2] ;go to stomping
type = ChangeAnim
trigger1 = anim=1900001 && pos Y > -10
value = 190

[State 650, hit ground FX]
type = Explod
triggerall = anim = 190
trigger1 = animelemtime(4) = 0
trigger2 = animelemtime(9) = 0
anim = 8102
pos = 0, -ceil(pos Y)
scale=.6,.6
postype = p1
ignorehitpause = 1
;persistent = 0
sprpriority = -5
ownpal = 1


[State 650, hit ground FX]
type = Explod
triggerall = anim = 190
trigger1 = animelemtime(1) = 0
anim = 8102
pos = 0, -ceil(pos Y)
scale=.9,.9
postype = p1
ignorehitpause = 1
;persistent = 0
sprpriority = -5
ownpal = 1

[State 200, hit sfx]
type = PlaySnd
triggerall = anim = 190
trigger1 = animelemtime(5) = 0
trigger2 = animelemtime(9) = 0
value = 2,4
channel = 1

[State 5981, Hitting the Floor Sound]
type = PlaySnd
triggerall = anim = 190
trigger1 = AnimElem = 1
value = 5000,11
channel = 2





[State 13100, shake 1&2]
type = envshake
triggerall = anim = 190
trigger1 = animelemtime(1) = 0
trigger2 = animelemtime(4) = 0
time = 8
freq = 60
ampl = 1

;spark stomping
[State 1006, Hit Spark]  
type = Helper
trigger1 = anim = 190 & animelemtime(4) = 0
trigger2 = anim = 190 & animelemtime(8) = 0
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 0, ceil(P2Dist x), 0)), -12
facing = -1
ownPal = 1
size.xScale = .5
size.yScale = .5
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 13100, shake 3]
type = envshake
triggerall = anim = 190
trigger1 = animelemtime(9) = 0
time = 12
freq = 60
ampl = 3

[State 190, vel]
type = VelSet
trigger1 = anim=190
Y = 0

[State 190, 4] ;Change to jump state
type = ChangeState
trigger1 = anim=190 && !AnimTime
value = 7121
ctrl = 0


[Statedef 7121] ;was 732
type    = A
physics = N
velset = 1.38,-6
ctrl = 0

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 200, jump sound]
type = PlaySnd
trigger1 = !time
value = 41, 0
channel = 8

[State 3010, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 3010, no push]
type = playerpush
trigger1 = 1
value = 0

[State 50, 1]
type = VarSet
trigger1 = Time = 0
sysvar(1) = 1

[State 50, 2]
type = ChangeAnim
trigger1 = time = 0
value = 42

[State 50, 3]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

[State 4001, Fall]
type = VelAdd
trigger1 = vel y < 0
trigger2 = Anim = 42
Y = .55

[State 4001, Return&Landing]
type = ChangeAnim
trigger1 = Anim = 42
trigger1 = Pos Y = 0
value = 10

[State 52, Landing Dust Explod]
type = Explod
trigger1 = anim=10 && animelemtime(1)=0
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1


[State -3, Landing Sound]
type = PlaySnd
trigger1 = anim=10 && animelemtime(1)=0
value = 40, 0
channel = 9

[State 4001, StopFwd]
type = VelSet
trigger1 = Vel X = (0,0.4]
X = 0

[State 4001, Stop]
type = VelSet
trigger1 = Vel Y > abs(Pos Y)
Y = 0

[State 4001, Replace]
type = PosSet
trigger1 = Vel Y = 0
Y = 0

[State 4001, ToGround]
type = StateTypeSet
trigger1 = Anim = 10
persistent = 0
statetype = S
physics = S

[State 190, 4] ;Change elbow dash
type = ChangeState
trigger1 = anim=10 && !AnimTime
value = 7122
ctrl = 0

;--------------------
; V7.2 Dash Elbow
[Statedef 7122] ;was 733
type = S
ctrl = 0
anim = 1900002
sprpriority = 1



[State 220, voice]
type = playsnd
trigger1 = animelem=6
value = 2,2
channel = 0
volume = 300

[State 220, voice]
type = playsnd
triggerall = var(1)=2 ;Majin only
triggerall = var(55)=0		;Voice=English
trigger1 = animelem=2
value = 3,22+random%5
channel = 0
volume = 300

[State 200, snd]
type = playsnd
triggerall = var(55)=1		;Voice=Japan
trigger1 = animelem=2
value = 4,20+random%4
channel = 0
volume = 300

[State 200, snd]
type = playsnd
triggerall = var(55)=2		;Voice=Eng Sabbat
trigger1 = animelem=2
value = 3,70+random%2
channel = 0
volume = 300


[State 115, hurt Sound]
type = PlaySnd
trigger1 = ANIMELEM=7
value = 5000,6


[State 181, 1]
type = Turn
trigger1 = !time

[State 181, 1]
type = Velset
trigger1 = !time
X = 0

[State 181, 1]
type = Velset
trigger1 = animelem=6
X = 1

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[state 1215, Smoke FX]
type = explod
trigger1 = !time
anim = 1206+(var(2)=0)
id = 1206
pos = 0,0
postype = P1
sprpriority = 3
ownpal = 1
removetime = -2
persistent = 0
ignorehitpause = 1
scale = .8,.8

[State 240, 1]
type = VelMul
trigger1 = animelemtime(2)>0
X = 0.735

[State 115, dash Sound]
type = PlaySnd
trigger1 = time=0
value = 100,0
channel = 8

[State 100, snd]
type = playsnd
trigger1 = animelemtime(7)=0
value = 5,8
persistent = 0
channel = 9

[State 115, hit sfx]
type = PlaySnd
trigger1 = time = 10
value = 5,2
channel = 10


[State 1006, Hit Spark]  
type = Helper
trigger1 = time = 22
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 78, 78, ifElse(P2Dist x < 78, ceil(P2Dist x),78)), -73
facing = -1
ownPal = 1
size.xScale = .5
size.yScale = .5
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1


[State 1315, Sparks]
type=explod
trigger1 = time = 10
anim=7030
sprpriority=6
postype = P1
pos = 55, -68
removetime=-2
ownpal=1
facing=-1
ignorehitpause=1
pausemovetime=1000
supermovetime=1000
persistent = 0

[State 181, 1]
type = Turn
trigger1 = AnimTime = 0

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 0

;Intro Donovan
[Statedef 191]
type=S
physics=N
anim=192
[State 182, intro]
type=assertspecial
trigger1= 1
flag=intro
[State 182, camera]
type=helper
trigger1= !time && !numhelper(7650)
helpertype=normal
stateno=7650
ID=7650
name="Camera"
postype=p1
pos=0,0
facing=1
[State , Hurt scream]
type = PlaySnd
trigger1 = !time
value = 2, 5

[State , Spawn enemy holding weapon]
type = Helper
trigger1 = time= 10
helpertype = normal
name = "DUMMY"
ID = 1902
stateno = 1902 
pos = ifelse(facing=1, gamewidth, 0), -10
postype = left
facing = ifelse(facing=1, 1, -1)
keyctrl = 0
ownpal = 1
postype=p1
supermovetime = 0
pausemovetime = 0

[State 191, tray]
type = helper
trigger1 = time!
trigger1 = !numhelper(190100)
helpertype = normal
stateno = 190100
ID = 190100
pos=0,1
name = "Tray"
postype = p1
ownpal = 1
[State 182, bound]
type=screenbound
trigger1= 1
value=0
[State 182, Pos]
type=posadd
trigger1= !time
x=-220
[State 182, Vel]
type=velset
trigger1= anim=192
x=1.25

[State 182, Anim]
type=changeanim
trigger1= time && anim=192 && numhelper(7650)
trigger1= (helper(7650),rootdist x)>0
value=195
[State 182, Vel]
type=velset
trigger1= anim=195 && animelem=1
x=(helper(7650),rootdist x)/0
[State 182, Pos]
type=posset
trigger1= anim=195 && !animtime && numhelper(7650)
x=ceil(helper(7650),pos x)
[State 182, End]
type=changestate
trigger1= anim=195 && !animtime
value=0




;INTRO WALKING
;Walking Intro 
[StateDef 192]
type = S
moveType = I
physics = S
anim = 192
ctrl = 0

[State 192, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, bound]
type=screenbound
trigger1= 1
value=0

[State 182, camera]
type=helper
trigger1= !time && !numhelper(7650)
helpertype=normal
stateno=7650
ID=7650
name="Camera"
postype=p1
pos=0,0
facing=1

[State 192, Pos]
type=posset
trigger1= !time
x=-263*facing

[State 192, Vel]
type=velset
trigger1= anim=192
x=1.25

[State 182, Anim]
type=changeanim
trigger1= time && anim=192 && numhelper(7650)
trigger1= (helper(7650),rootdist x)>0
value=195
[State 182, Vel]
type=velset
trigger1= anim=195 && animelem=1
x=(helper(7650),rootdist x)/0
[State 182, Pos]
type=posset
trigger1= anim=195 && !animtime && numhelper(7650)
x=ceil(helper(7650),pos x)

[State 192, End]
type = ChangeState
trigger1 = time=155
value = 0


;INTRO VS MUAY THAI FIGHTERS
[StateDef 193]
type = S
physics = S
anim = 194

[State 194, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro


[State 194, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 194,0
channel = 0

[State 194, End]
type = ChangeState
trigger1 = !AnimTime
value = 0


;INTRO VS VILLAINS
[StateDef 194]
type = S
physics = S
anim = 193

[State 193, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro



[State 192, Vel]
type=velset
trigger1= anim=193 && animelem=1
x=(helper(7650),rootdist x)/-15

[State 193, End]
type = ChangeState
trigger1 = !AnimTime
value = 0

;TURNS INTRO
[StateDef 6900]
type = A
anim = 41
velSet = 0,0
ctrl = 0

[State 6900, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6900, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 6900, Camera Helper]
type = Helper
trigger1 = !NumHelper(8999)
helpertype = Normal
stateNo = 8999
ID = 8999
name = "Camera"
posType = P1

[State 6900, PosSet]
type = PosSet
trigger1 = !Time
x = (-320 + abs(pos x)) * Facing

[State 6900, VelSet]
type = VelSet
trigger1 = !Time
x = (Helper(8999), RootDist x) / -40.0
y = -10.25

[State 6900, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 6900, End]
type = ChangeState
trigger1 = Time
trigger1 = pos y > -vel y
value = 6901


;Landing
[StateDef 6901]
type = S
physics = S
anim = 40;196
velSet = 0,0

[State 6901, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6901, PosSet]
type = PosSet
trigger1 = !Time && NumHelper(8999)
x = ceil(Helper(8999), pos x)

[State 6901, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 6901, Landing Dust Expod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 6901, Intro vs Villains]
type = ChangeState
triggerAll = NumEnemy
triggerAll = !AnimTime
triggerAll = RoundNo >= 2 || (!(Enemy, RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul))
trigger1 = Enemy, Name = "Mr.Big_xi" || Enemy, Name = "Mr.Big" || Enemy, Name = "MrBig"
trigger2 = Enemy, Name = "CvS_KazuyaTAG" || Enemy, Name = "Kazuya" || Enemy, Name = "CvS_Kazuya"
trigger3 = Enemy, Name = "Vega" || Enemy, Name = "cvs_vega" || Enemy, Name = "cvsvega"
trigger4 = Enemy, Name = "cvsgeese" || Enemy, Name = "Geese Howard" || Enemy, Name = "Geese"|| Enemy, Name = "Aof_Geese"
trigger5 = Enemy, Name = "Heidern"
value = 194

[State 6901, Intro vs Street Girls]
type = ChangeState
triggerAll = NumEnemy
triggerAll = !AnimTime
triggerAll = RoundNo >= 2 || (!(Enemy, RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul))
trigger1 = Enemy, Name = "ZeroBlaze" || Enemy, Name ="RajaaMaki" || Enemy, Name = "Blaze" || Enemy, Name = "Maki" || Enemy, Name ="Sonia" || Enemy, Name = "Lucia"
value = 196


[State 6901, End]
type = ChangeState
trigger1 = !AnimTime
value = 0



;WIN POSE DECIDER
[StateDef 180]
type = S

[State 180, Generic Victory Quote]
type = VictoryQuote
trigger1 = 1
value = (Random % 34)

[State 180, Victory Quote vs. Ryu Hoshi]
type = VictoryQuote
trigger1 = Enemy, Name = "Ryu" || Enemy, Name = "cvsryu" || Enemy, Name = "Evil Ryu"
value = 34 + (Random % 3)

[State 180, Victory Quote vs. Chun-Li]
type = VictoryQuote
trigger1 = Enemy, Name = "ShinHaggar" || Enemy, Name = "Haggar" || Enemy, Name = "Mike Haggar"
value = 37+ (Random % 3)

[State 180, Victory Quote vs. Chun-Li]
type = VictoryQuote
trigger1 = Enemy, Name = "Chun-Li" || Enemy, Name = "RajaaChunli" || Enemy, Name = "cvschunli" || Enemy, Name = "Chun Li" || Enemy, Name = "ChunLi"
value = 40 + (Random % 2)

[State 180, Victory Quote vs. Cody]
type = VictoryQuote
trigger1 = Enemy, Name = "Cody" || Enemy, Name = "cvscody"
value = 42 + (Random % 2)

[State 180, Victory Quote vs. Blaze Fielding]
type = VictoryQuote
trigger1 = Enemy, Name = "ZeroBlaze" || Enemy, Name = "Blaze" || Enemy, Name = "cvsblaze"
value = 44 + (Random % 2)

[State 180, Victory Quote vs. Captain Commando]
type = VictoryQuote
trigger1 = Enemy, Name = "Commando" || Enemy, Name = "cvscommando"
value = 46 + (Random % 2)

[State 180, Victory Quote vs. Cyborgs]
type = VictoryQuote
trigger1 = Enemy, Name = "RajaaMech-Hisui" || Enemy, Name = "Mech-Hisui" || Enemy, Name = "ROBO-JAM" || Enemy, Name = "ROBO-KY" || Enemy, Name = "ROBO-SOL" || Enemy, Name = "robo-kula" || Enemy, Name = "Candy"|| Enemy, Name = "Burstman" || Enemy, Name = "Huitzil" || Enemy, Name = "Phobos"
value = 48 + (Random % 3)

[State 180, Victory Quote vs. Justice]
type = VictoryQuote
trigger1 = Enemy, Name = "justice"
value = 51

[State 180, Victory Quote vs. Guile]
type = VictoryQuote
trigger1 = Enemy, Name = "Guile" || Enemy, Name = "cvsguile"
value = 52

[State 180, Victory Quote vs. Karin]
type = VictoryQuote
trigger1 = Enemy, Name = "Karin" || Enemy, Name = "Karin Kanzuki" || Enemy, Name = "cvskarin"
value = 53+ (Random % 2)

[State 180, Victory Quote vs. Duck King]
type = VictoryQuote
trigger1 = Enemy, Name = "Duck King" || Enemy, Name = "Duck"
value = 55

[State 180, Victory Quote vs. Guy]
type = VictoryQuote
trigger1 = Enemy, Name = "Guy" || Enemy, Name = "cvsguy"
value = 56

[State 180, Victory Quote vs. Frank West]
type = VictoryQuote
trigger1 = Enemy, Name = "Frank West Arr" || Enemy, Name = "Frank West" || Enemy, Name = "Frank"
value = 57 + (Random % 4)


[State 180, Victory Quote vs. Criminal Female]
type = VictoryQuote
trigger1 = Enemy, Name = "Kimberly Browning" || Enemy, Name = "Vice" || Enemy, Name = "Mature" || Enemy, Name = "ShinIvy by CVS Artist" || Enemy, Name = "Isabella Valentine"|| Enemy, Name = "Ivy"
value = 61 + (Random % 3)

[State 180, Victory Quote vs. Ryuji Yamazaki]
type = VictoryQuote
trigger1 = Enemy, Name = "Ryuji Yamazaki" || Enemy, Name = "Yamazaki" || Enemy, Name = "cvsyamazaki"
value = 64


[State 180, Win 1]
type = ChangeState
trigger1 = command = "holdx" || command = "holdy" || command = "holdz"
value = 181

[State 180, Win 2]
type = ChangeState
trigger1 = command = "holda" || command = "holdb" || command = "holdc"
value = 182


[State 180, 1]
type = ChangeState
trigger1 = RoundNo = 3
value = 183+ (Random % 4)



[State 180, Win Decider]
type = ChangeState
trigger1 = 1
value = 181+ (Random % 2)



;WIN 1
[StateDef 181]
type = S
physics = S
anim = 181
ctrl = 0

[State 181, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver

[State 181, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 181,0
channel = 0



;WIN 2
[StateDef 182]
type = S
physics = S
anim = 182
ctrl = 0

[State 182, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver

[State 182, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 182,0
channel = 0

;WIN 3 - With MAX 
[Statedef 183]
type = S
physics = S
anim = 183
ctrl = 0
[State 187, Assert]
type=assertspecial
trigger1= time<=180 || frontedgedist>-40
flag=roundnotover

[State 187, camera]
type=helper
trigger1= !numhelper(7650)
helpertype=normal
stateno=7650
ID=7650
name="Camera"
postype=p1
pos=0,0
facing=1

[State 182, Voice]
type = PlaySnd
trigger1 = time=3
value = 182,0
channel = 0

[State 110, Dust Helper]
type = Helper
trigger1 = AnimElem = 11
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 182, E]
type = Explod
trigger1 = Time = 42
anim = 1830003
pos = -300,0
postype = P1
sprpriority = 3
scale=1.18,1.52
vel = 4.0, 0
Removetime = 200


[State 187, Anim]
type=changeanim
trigger1= time>=42 && anim!=100
value=100


[State 187, Pos]
type=posset
trigger1= pos y
y=0
[State 187, Vel]
type=velset
trigger1= anim=100
x=.75*const(velocity.run.fwd.x)
[State 187, bound]
type=screenbound
trigger1= anim=100
value=0

[State 187, pointer]
type=helper
trigger1= time=10
helpertype=normal
stateno=6005
ID=6005
name="GO!"
postype=p1
facing=1
;size.xscale=.5
;size.yscale=.5

;==Win 4 ==
[Statedef 184]
type = S
ctrl = 0
anim = 184
velset = 0,0


[State 0, VelSet]
type = VelSet
trigger1 = animelem = 5
x=.75*const(velocity.run.fwd.x)

[State 110, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 183, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 184, ScreenBound]
type= ScreenBound
trigger1= anim= 184
value = 0
;movecamera= 0

[State 187, camera]
type=helper
trigger1= !numhelper(7650)
helpertype=normal
stateno=7650
ID=7650
name="Camera"
postype=p1
pos=0,0
facing=1

[State 187, pointer]
type=helper
trigger1= time=26
helpertype=normal
stateno=6005
ID=6005
name="GO!"
postype=p1
facing=1
;size.xscale=.5
;size.yscale=.5

;==Win 4 ==
[Statedef 185]
type=S
[State 185, Assert]
type=assertspecial
trigger1= time<=180 || frontedgedist>-40
flag=roundnotover

[State 185, Anim]
type=changeanim
trigger1= time<50 && anim
value=0
[State 185, Anim]
type=changeanim
trigger1= time>=50 && anim!=185
value=185


[State 187, Vel]
type=velset
trigger1= anim=185
x=.75*const(velocity.walk.fwd.x)



[State 183, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 184, ScreenBound]
type= ScreenBound
trigger1= anim= 185
value = 0
;movecamera= 0

[State 187, camera]
type=helper
trigger1= !numhelper(7650)
helpertype=normal
stateno=7650
ID=7650
name="Camera"
postype=p1
pos=0,0
facing=1

[State 187, pointer]
type=helper
trigger1= time=5
helpertype=normal
stateno=6005
ID=6005
name="GO!"
postype=p1
facing=1
;size.xscale=.5
;size.yscale=.5

;==Win 4 ==
; Win pose
[Statedef 186]
type=S
[State 186, Assert]
type=assertspecial
trigger1= time<=180 || frontedgedist>-40
flag=roundnotover

[State 186, Anim]
type=changeanim
trigger1= time<28 && anim
value=0
[State 185, Anim]
type=changeanim
trigger1= time>=28 && anim!=100
value=100


[State 187, Vel]
type=velset
trigger1= anim=100
x=.95*const(velocity.run.fwd.x)



[State 183, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 184, ScreenBound]
type= ScreenBound
trigger1= anim= 100
value = 0
;movecamera= 0

[State 187, camera]
type=helper
trigger1= !numhelper(7650)
helpertype=normal
stateno=7650
ID=7650
name="Camera"
postype=p1
pos=0,0
facing=1

[State 187, pointer]
type=helper
trigger1= time=5
helpertype=normal
stateno=6005
ID=6005
name="GO!"
postype=p1
facing=1
;size.xscale=.5
;size.yscale=.5

[State , Go to off screen]
type = ChangeState
trigger1 = frontedgedist < 0
value = 1860

;---------------------------------------------------------------------------
; Win pose off screen
[StateDef 1860]
anim = 9741
velset = 0,0

[State , Keep the round active]
type = AssertSpecial
trigger1 = time< 345
flag = roundnotover
ignorehitpause = 1

[State , Allow to run off screen]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0


[State , Hit sound]
type = PlaySnd
trigger1 = time= 10
value = 6000,1



[State , Hit sound]
type = PlaySnd
trigger1 = time= 50
value = 2,0

[State , Hit sound]
type = PlaySnd
trigger1 = time= 60
value = 2,1

[State , Hit Sound]
type = PlaySnd
trigger1 = time= 75
value = 2,2

[State , Shake the screen]
type = EnvShake
trigger1 = time= 75
time = 10
freq = 70
ampl = -4
phase = 90

[State , Spawn enemy holding weapon]
type = Helper
trigger1 = time= 85
helpertype = normal
name = "DUMMY"
ID = 2002
stateno = 2002 
pos = ifelse(facing=1, gamewidth, -40), -30
postype = left
facing = ifelse(facing=1, -1, 1)
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0

[State 181, NHB]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;TAUNT 1
[StateDef 195]
type = S
moveType = I
physics = S
anim = 195
velSet  = 0,0
sprPriority = 1
ctrl = 0


;[State 190, Voice]
;type = PlaySnd
;trigger1 = AnimElem = 3
;value = 195,0
;channel = 0

[State 195, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;INTRO 2
[StateDef 196]
type = S
moveType = I
physics = S
anim = 191
velSet  = 0,0
sprPriority = 1
ctrl = 0

[State 191, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro


[State 196, Glove Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 190,0
channel = 1

[State 196, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 190,1
channel = 0

[State 191, End]
type = ChangeState
trigger1 = !Animtime
value = 0



;CHEAP K.O.
[StateDef 5950]
type = S
moveType = H
physics = S
anim = 5950
velSet = 0,0

[State 5950, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5950, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 5950, Assert: NoKOsnd]
type = AssertSpecial
trigger1 = 1
flag = NoKOsnd

[State 5950, StopSnd]
type = StopSnd
trigger1 = !Time && !Alive
channel = 0

[State 5950, KO Sound]
type = PlaySnd
trigger1 = AnimElem = 2 && !Alive
value = 5950,0

[State 5981, Hitting the Floor Sound]
type = PlaySnd
trigger1 = AnimElem = 10
value = F7,0

[State 5981, Hitting the Floor Explod]
type = Explod
trigger1 = AnimElem = 10
anim = F60
posType = P1
pos = 0,0
sprPriority = -3

[State 5950, End]
type = ChangeState
trigger1= !AnimTime
value = ifElse(Alive, 5110, 5150)



[Statedef 5150]
type    = L
movetype= H
physics = N
sprpriority = -3
ctrl = 0

[State 5150, 6] ;Friction
type = VelMul
trigger1 = 1
x = 0.85


[State 5150, CHEAP] ;Switch to 5110 if liedead anim does not exist
type = ChangeAnim
trigger1 = !time&& Anim = 5950
value = 5951


;AIR HIT TRANSITION
[Statedef 5035]
type = A
movetype = H
physics = N

[State 5035, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = SelfAnimExist(5035)
trigger1 = Anim = [5000,5029]
value = 5035

[State 5035, VelAdd]
type = VelAdd
trigger1 = 1
y = GetHitVar(yAccel)

[State 5035, Recover]
type = ChangeState
triggerAll = !HitFall
trigger1 = HitOver
trigger2 = !AnimTime
trigger3 = vel y > 0 && pos y >= 10
trigger4 = !Time
trigger4 = Anim != 5035
value = 5040

[State 5035, Fall]
type = ChangeState
triggerAll = HitFall
trigger1 = HitOver
trigger2 = !AnimTime
trigger3 = vel y > 0 && pos y >= 10
trigger4 = !Time
trigger4 = Anim != 5035
value = 5050



;=
;-2 STATES>=
;=
[StateDef -2]

[State -2, Hit Detection]
type = VarSet
trigger1 = MoveContact = 1 && var(30) < 0
var(30) = HitPauseTime
ignoreHitPause = 1

[State -2, Hit Sound]
type = PlaySnd
trigger1 = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = MoveHit = 1 && var(31) >= 0
value = 2, var(31)
channel = 2
ignoreHitPause = 1

[State -2, Guard Sound]
type = PlaySnd
trigger1 = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = MoveGuarded = 1 && var(32) >= 0
value = 3, var(32)
channel = 2
ignoreHitPause = 1

[State -2, Hit Sparks]
type = Helper
triggerAll = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = MoveHit = 1 && NumEnemy
trigger1 = var(33) = 8010 || var(33) = 8011 || var(33) = 8012 || var(33) = 8013 || var(33) = 8014 || var(33) = 8001
trigger2 = MoveGuarded = 1 && NumEnemy
trigger2 = var(34) = 8000 || var(34) = 8001
helperType = Normal
stateNo = ifElse(MoveGuarded, var(34), var(33))
ID = 8000
name = "Spark"
postype = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35))), var(36)
facing = -1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State -2, Counter FX]
type = Helper
trigger1 = MoveHit = 1 && var(30) = HitPauseTime
trigger1 = NumEnemy && var(9)
trigger1 = !(HitDefAttr = SCA, AT) && (EnemyNear, MoveReversed != 1)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35))), var(36)
facing = -1
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1

[State -2, Counter Flag]
type = VarSet
trigger1 = NumEnemy
var(9) = (EnemyNear, MoveType = A)
ignoreHitPause = 1

[State -2, Hit Detection]
type = VarSet
trigger1 = 1
var(30) = -1

[State -2, Hit Detection]
type = VarRangeSet
trigger1 = MoveType = I
trigger2 = MoveType = H && Time
first = 30
last = 36
value = -1
ignoreHitPause = 1

[State -2, P2 Facing]
type = TargetFacing
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver) && !(Target, HitFall) && (Target, Time <= 1)
value = ifElse(P2Dist x >= 0, -1, 1)
ignoreHitPause = 1

[State -2, P2 Safe Fall]
type = TargetState
trigger1 = NumTarget = 1
trigger1 = Target, command = "recovery"
trigger1 = Target, pos y >= -48 && Target, vel y > 0
trigger1 = Target, Alive && Target, HitFall && Target, GetHitVar(fall.recover)
trigger1 = Target, StateNo = 5030 || Target, StateNo = 5035 || Target, StateNo = 5050 || Target, StateNo = 5071
value = 5205
ignoreHitPause = 1

[State -2, Assert: UnGuardable]
type = AssertSpecial
trigger1 = var(17) > 0
trigger1 = var(17) := (var(17) - 1)
flag = UnGuardable
ignoreHitPause = 1

[State -2, Hit Count]
type = VarAdd
trigger1 = MoveHit = 1
trigger1 = !(HitDefAttr = SCA, AT)
var(13) = 1

[State -2, Hit Count Reset]
type = VarSet
trigger1 = NumEnemy && var(13)
trigger1 = (EnemyNear, MoveType != H) && (EnemyNear, StateNo != 5300)
var(13) = 0
ignoreHitPause = 1

[State -2, Juggle Count]
type = VarAdd
trigger1 = MoveHit = 1
trigger1 = !(HitDefAttr = SCA,AT)
var(15) = 1

[State -2, Juggle Reset Single]
type = VarSet
triggerAll = NumEnemy = 1 && var(15)
trigger1 = (Enemy, StateType != A) && (Enemy, StateNo != [5100,5109]) && (Enemy, Time >= 1)
trigger2 = (Enemy, MoveType != H) || (Enemy, StateNo = [120,155]) || (Enemy, Ctrl)
var(15) = 0
ignoreHitPause = 1

[State -2, Juggle Reset Simul]
type = VarSet
triggerAll = NumEnemy >= 2 && var(15)
trigger1 = (EnemyNear(0), StateType != A) && (EnemyNear(0), Time >= 1)
trigger2 = (EnemyNear(0), MoveType != H) || (EnemyNear(0), StateNo = [120,155]) || (EnemyNear(0), Ctrl)
trigger3 = (EnemyNear(1), StateType != A) && (EnemyNear(0), Time >= 1)
trigger4 = (EnemyNear(1), MoveType != H) || (EnemyNear(0), StateNo = [120,155]) || (EnemyNear(0), Ctrl)
var(15) = 0
ignoreHitPause = 1

[State -2, Free Juggling]
type = VarSet
trigger1 = RoundState != 2
var(15) = 0
ignoreHitPause = 1

[State -2, Juggle Flag]
type = VarSet
trigger1 = NumEnemy && !var(16)
trigger1 = (EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl)
var(16) = 1
ignorehitpause = 1

[State -2, Juggle Flag Reset Single]
type = VarSet
triggerAll = NumEnemy = 1 && var(16)
trigger1 = (Enemy, MoveType != H) && (Enemy, StateNo != 5040)
trigger2 = !(Enemy, HitShakeOver) || (Enemy, StateType = L) || (Enemy, Ctrl)
var(16) = 0
ignoreHitPause = 1

[State -2, Juggle Flag Reset Simul]
type = VarSet
triggerAll = NumEnemy >= 2 && var(16)
trigger1 = (EnemyNear(0), MoveType != H) && (EnemyNear(0), StateNo != 5040)
trigger2 = !(EnemyNear(0), HitShakeOver) || (EnemyNear(0), StateType = L) || (EnemyNear(0), Ctrl)
trigger3 = (EnemyNear(1), MoveType != H) && (EnemyNear(1), StateNo != 5040)
trigger4 = !(EnemyNear(1), HitShakeOver) || (EnemyNear(1), StateType = L) || (EnemyNear(1), Ctrl)
var(16) = 0
ignoreHitPause = 1

[State -2, Custom Combo End]
type = VarSet
trigger1 = var(20) < 0
trigger2 = MoveType = H
trigger3 = RoundState != 2
trigger4 = (StateNo = [3000,4999])
var(20) = 0
ignoreHitPause=1

[State -2, Custom Combo Time]
type = VarAdd
trigger1 = var(20) > 0
var(20) = -1
ignoreHitPause = 1

[State -2, Custom Combo Asserts]
type = AssertSpecial
trigger1 = var(20) > 0
flag = NoStandGuard
flag2 = NoCrouchGuard
flag3 = NoAirGuard
ignoreHitPause = 1

[State -2, Custom Combo PalFX]
type = PalFX
trigger1 = var(20) > 60
time = 2
add = 32 + ceil(sin(var(20) / 16.0 * pi) * 32), 32 + ceil(sin(var(20) / 16.0 * pi) * 32), 32 + ceil(sin(var(20) / 16.0 * pi) * 32)
ignoreHitPause = 1

[State -2, Custom Combo PalFX]
type = PalFX
trigger1 = var(20) = [1,60]
time = 2
add = 64 + ceil(sin(var(20) / 8.0 * pi) * 64), 64 + ceil(sin(var(20) / 8.0 * pi) * 64), 64 + ceil(sin(var(20) / 8.0 * pi) * 64)
ignoreHitPause = 1

[State -2, Throws Allowed]
type = VarSet
trigger1 = EnemyNear, MoveType != H
trigger1 = EnemyNear, StateNo != 140
trigger1 = (EnemyNear, ctrl && EnemyNear, Time >= 1) || (EnemyNear, Time >= 8)
trigger2 = EnemyNear, MoveType = A
trigger3 = (EnemyNear, StateNo != [0,52]) && (EnemyNear, StateNo != [120,155]) && (EnemyNear, StateNo != [5000,5120])
trigger4 = var(20) || var(21) || var(22)
var(38) = 0

[State -2, Throws Disallowed]
type = VarSet
triggerAll = NumEnemy
trigger1 = EnemyNear, StateNo = [150,155]
trigger2 = (EnemyNear, StateNo = 51 || EnemyNear, StateNo = 140) && (EnemyNear, PrevStateNo = [150, 155])
trigger3 = EnemyNear, MoveType = H && EnemyNear, StateType != A && !var(20) && !var(21) && !var(22)
trigger4 = (EnemyNear, StateNo = [5020,5040]) && EnemyNear, HitFall = 0
trigger5 = EnemyNear, StateNo = 40 && EnemyNear, PrevStateNo != 52 && (EnemyNear, Anim != [0, 29])
var(38) = 1
ignorehitpause = 1

[State -2, Dampener]
type = VarSet
trigger1 = 1
fvar(10) = ifElse(var(13) < 6, 24, ifElse(var(13) >= 23, 1, 29 - var(13))) / 24.0
ignoreHitPause = 1

[State -2, Dampener - Custom Combo]
type = VarSet
trigger1 = var(20)
fvar(10) = 0.72 * (10 - ifElse(var(13) >= 10, 10, var(13))) / 10.0
ignoreHitPause = 1

[State -2, Dampener - Custom Combo Limiter]
type = VarSet
trigger1 = var(20)
trigger1 = StateNo = 225 || StateNo = 255
fvar(10) = ifElse(var(13), 0, 0.72)
ignoreHitPause = 1

[State -2, Dampener - Supers]
type = VarSet
trigger1 = (StateNo = [3000,4999])
fvar(10) = ifElse(var(22), 0.6, ifElse(var(21), 0.8, 1.0))
ignoreHitPause = 1

[State -2, Dampener Limit]
type = VarSet
trigger1 = fvar(10) < 0
fvar(10) = 0
ignoreHitPause = 1

[State -2, Root Dampener]
type = VarSet
trigger1 = 1
fvar(11) = fvar(10) * ifElse(var(9), 1.2, 1)
ignoreHitPause = 1

[State -2, Tap Punch Decrement]
type = VarAdd
trigger1 = var(46) > 0
var(46) = -1

[State -2, Tap Punch Reset]
type = VarSet
trigger1 = var(46) <= 0
trigger2 = Time = 1
trigger2 = StateNo = 1000
var(45) = 0

[State -2, Tap Punch Increment]
type = VarAdd
trigger1 = command = "x"
trigger1 = var(46) := 14
trigger2 = command = "y"
trigger2 = var(46) := 12
trigger3 = command = "z"
trigger3 = var(46) := 10
trigger4 = command = "pp"
trigger4 = var(46) := 14
var(45) = 1

[State -2, Voice Position]
type = SndPan
trigger1 = 1
channel = 0
pan = 0
ignoreHitPause = 1

[State -2, VarSet]
type = VarSet
trigger1 = var(47) = 2
var(10) = 4

[State -2, VarSet]
type = VarSet
trigger1 = var(10) = 4
var(47) = 0

[State -2, VarSet]
type = VarSet
trigger1 = MoveGuarded && StateNo = 1330
var(41) = 1

[State -2, VarSet]
type = VarSet
trigger1 = Enemy, ctrl
var(41) = 0

[State -2, VarSet]
type = VarSet
trigger1 = var(13) = 0 && StateNo != 1330 && !var(41)
var(40) = 0

[State -2, Debug]
type = DisplayToClipboard
trigger1 = 1
text = "AI = %d Attack = %f Hits = %d Juggle = %d"
params = AILevel, fvar(11), var(13), var(15)
ignoreHitPause = 1

[State -2, Debug]
type = AppendToClipboard
trigger1 = 1
text = "\nBy Testament"
ignoreHitPause = 1



;=
;-3 STATES>=
;=
[StateDef -3]

[State -3, GameTime]
type = VarSet
trigger1 = 1
var(58) = GameTime
ignoreHitPause = 1

[State -3, ProjContact Reset]
type = VarSet
triggerAll = var(18)
trigger1 = (StateNo != [1000,1030]) && StateNo != 3000 && StateNo != 3050 && StateNo != 3300
trigger2 = (StateNo = [1000, 1030]) && AnimElemTime(4) < 0
trigger3 = (StateNo = 3000 || StateNo = 3050) && AnimElemTime(4) < 0
trigger4 = StateNo = 3100 && AnimElemTime(19) < 0
trigger5 = StateNo = 3150 && AnimElemTime(32) < 0
trigger6 = StateNo = 3300 && AnimElemTime(5) < 0
var(18) = 0

[State -3, Projectile Flag Off]
type = VarSet
trigger1 = 1
var(39) = 0
ignoreHitPause = 1

[State -3, Projectile Flag On]
type = VarSet
triggerAll = var(20) <= 0
trigger1 = NumHelper(1005)
trigger1 = Helper(1005), StateNo = 1005
trigger2 = NumHelper(3002)
trigger2 = Helper(3002), StateNo = 3002
trigger3 = NumHelper(3005)
trigger3 = Helper(3005), StateNo = 3005
trigger4 = NumHelper(3105)
trigger4 = Helper(3105), StateNo = 3105
trigger5 = NumHelper(3305)
trigger5 = Helper(3305), StateNo = 3305
var(39) = 1
ignoreHitPause = 1

[State -3, Chain Combo Reset]
type = VarSet
trigger1 = 1
var(4) = 0
ignoreHitPause = 1

[State -3, Chain Combo Check]
type = VarSet
trigger1 = var(20) && (StateNo = [200,699]) && MoveContact
trigger2 = var(20) && (StateNo = [1000,2999]) && StateType != A && (MoveContact || var(18))
var(4) = 1
ignoreHitPause = 1

[State -3, Cancel Reset]
type = VarSet
trigger1 = 1
var(6) = 0
ignoreHitPause = 1

[State -3, Cancel Check]
type = VarSet
trigger1 = var(20) && (StateNo = [200,699])
trigger2 = var(20) && (StateNo = [1000,2999]) && (MoveContact || var(18))
trigger3 = (StateNo = [200,699]) && Time <= 2
trigger4 = StateNo = 200
trigger5 = StateNo = 205
trigger6 = StateNo = 210 && AnimElemTime(5) < 0
trigger7 = StateNo = 225 && AnimElemTime(5) < 0
trigger8 = StateNo = 230
trigger9 = StateNo = 235
trigger10 = StateNo = 255 && AnimElemTime(6) < 0
trigger11 = StateNo = 400
trigger12 = StateNo = 410 && AnimElemTime(5) < 0
trigger13 = StateNo = 420 && AnimElemTime(5) < 0
trigger14 = StateNo = 430
trigger15 = StateNo = 450 && AnimElemTime(5) < 0
var(6) = 1
ignoreHitPause = 1

[State -3, Super Cancel Reset]
type = VarSet
trigger1 = 1
var(7) = 0
ignoreHitPause = 1

[State -3, Super Cancel Check]
type = VarSet
trigger1 = var(20) && (StateNo = [200,699])
trigger2 = var(20) && (StateNo = [1000,2999]) && (MoveContact || var(18))
trigger3 = (StateNo = [200,699]) && Time <= 2
trigger4 = StateNo = 200
trigger5 = StateNo = 205
trigger6 = StateNo = 210 && AnimElemTime(5) < 0
trigger7 = StateNo = 225 && AnimElemTime(6) < 0
trigger8 = StateNo = 230
trigger9 = StateNo = 235
trigger10 = StateNo = 255 && AnimElemTime(6) < 0
trigger11 = StateNo = 400
trigger12 = StateNo = 410 && AnimElemTime(5) < 0
trigger13 = StateNo = 420 && AnimElemTime(5) < 0
trigger14 = StateNo = 430
trigger15 = StateNo = 450 && AnimElemTime(5) < 0
trigger16 = StateNo = 1000 && (AnimElemTime(4) = [1,8]) && var(10) < 2
trigger17 = StateNo = 1000 && (AnimElemTime(12) = [1,8]) && var(10) = 2
trigger18 = StateNo = 1030 && (AnimElemTime(21) = [1,8])
trigger19 = (StateNo = 1200 || StateNo = 1230) && (AnimElemTime(5) < 0 && AnimElemTime(4) > 0)
trigger20 = StateNo = 1401 || StateNo = 1431
var(7) = 1
ignoreHitPause = 1

[State -3, Hyper Cancel Reset]
type = VarSet
trigger1 = 1
var(8) = 0
ignoreHitPause = 1

[State -3, Hyper Cancel Reset]
type = VarSet
trigger1 = StateNo = 3100 && AnimElemTime(3) >= 0 && AnimElemTime(38) < 0 && MoveContact
var(8) = 1
ignoreHitPause = 1

[State -3, Super Cancel Flag Reset]
type = VarSet
trigger1 = var(21)
trigger1 = (StateNo != [3000,4999]) || MoveType = H
var(21) = 0
ignoreHitPause = 1

[State -3, Hyper Cancel Flag Reset]
type = VarSet
trigger1 = var(22)
trigger1 = (StateNo != [3000,4999]) || MoveType = H
var(22) = 0
ignoreHitPause = 1


[State -3, Parry Detection]
type = Helper
triggerAll = RoundState = 2 && !NumHelper(765) && !var(20)
triggerAll = (MoveType = I && ctrl) || (StateNo = [760, 762]) || StateNo = 5120
triggerAll = (command != "rlsfwd" && command != "rlsback" && command != "rlsup" && command != "rlsdown") || AILevel
trigger1 = !AILevel && (StateType = S || StateType = C || StateNo = 5120) && (command = "fwd" || command = "down")
trigger2 = !AILevel && StateType = A && (var(3) != 1 && var(3) != 2) && command = "fwd"
trigger3 = AILevel && (StateNo != [760,762]) && InGuardDist && Random < 50
trigger4 = AILevel && (StateNo = [760,762]) && Time = 14 && Random < 667
helperType = Normal
stateNo = 765
ID = 765
name = "Parry Detection"
posType = P1
pauseMoveTime = 65535
superMoveTime = 65535

[State -3, Parry Attacks]
type = ChangeState
trigger1 = (StateNo != [760,762]) && NumHelper(765)
trigger1 = Helper(765), StateNo = 766
value = ifElse((Helper(765), Anim = 767), 762, ifElse((Helper(765), Anim = 766), 761, 760))
ignoreHitPause = 1

[State -3, Parry Projectiles]
type = HitOverride
trigger1 = (StateNo != [760,762]) && NumHelper(765)
trigger1 = !(Helper(765), var(0)) && (Helper(765), Anim = 765)
attr = SA, AP
stateNo = 760
slot = 0
time = 1
ignoreHitPause = 1

[State -3, Parry Projectiles]
type = HitOverride
trigger1 = (StateNo != [760,762]) && NumHelper(765)
trigger1 = !(Helper(765), var(0)) && (Helper(765), Anim = 766)
attr = C, AP
stateNo = 761
slot = 0
time = 1
ignoreHitPause = 1

[State -3, Parry Projectiles]
type = HitOverride
trigger1 = (StateNo != [760,762]) && NumHelper(765)
trigger1 = !(Helper(765), var(0)) && (Helper(765), Anim = 767)
attr = SCA, AP
stateNo = 762
slot = 0
time = 1
ignoreHitPause = 1

[State -3, Assert: NoWalk after Parry]
type = AssertSpecial
trigger1 = var(26) > 0
trigger1 = var(26) := (var(26)-1)
flag = NoWalk
ignoreHitPause = 1

[State -3, Corner Push]
type = VarSet
trigger1 = fvar(5)
trigger1 = NumTarget
trigger1 = Target, HitOver || (Target, GetHitVar(HitShakeTime) > 0 && Target, Time <= 0)
fvar(5) = 0

[State -3, Corner Push]
type = VarSet
trigger1 = NumTarget
trigger1 = Target, GetHitVar(HitShakeTime) <= 0
fvar(5) = fvar(5) * 0.85

[State -3, Corner Push]
type = VarSet
trigger1 = MoveContact = 1 && NumTarget
fvar(5) = Target, GetHitVar(xVel)
ignoreHitPause = 1

[State -3, Corner Push]
type = PosAdd
triggerAll = fvar(5)
triggerAll = (StateType = S || StateType = C) && NumTarget
triggerAll = !HitPauseTime && Target, GetHitVar(HitShakeTime) <= 0
triggerAll = (Target, StateType = S || Target, StateType = C) && !(Target, GetHitVar(yvel)) && !(Target, HitFall)
trigger1 = Target, FrontEdgeBodyDist <= abs(Target, vel x)
trigger1 = (Target, GetHitVar(xvel) * Target, Facing) > 0
trigger2 = Target, BackEdgeBodyDist <= abs(target, vel x)
trigger2 = (Target, GetHitVar(xvel) * Target, Facing) < 0
x = ifElse(Target, FrontEdgeBodyDist <= 0, -1, 1) * (Target, Facing) * fvar(5)

[State -3, Corner Push]
type = VarSet
trigger1 = fvar(5)
trigger1 = abs(fvar(5)) < 1.0
fvar(5) = 0

[State -3, EX FX Decrement]
type = VarAdd
trigger1 = var(25) > 0
var(25) = -1

[State -3, EX FX Reset]
type = VarSet
trigger1 = (StateNo != [1000,2999]) || MoveType = H
var(25) = 0

[State -3, EX Flash]
type = PalFX
trigger1 = !(GameTime % 2) && var(25)
time = 1
color = 0
mul = 256, 224, 0
add = 128, 128, 128
ignoreHitPause = 1

[State -3, Movement AfterImage]
type = AfterImage
triggerAll = Time = 1 && !var(20)
trigger1 = StateNo = 50 && (var(3) = 2 || var(3) = 3)
trigger2 = (StateNo = [700,715])
time = 2
timeGap = 1
frameGap = 4
length = 9
palBright = 0,0,0
palContrast = 128,128,128
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.9,0.9,0.9
trans = Add1

[State -3, Level 1 Super AfterImage]
type = AfterImage
trigger1 = (StateNo = 3100 || StateNo = 3201) && Time = 3
trigger2 = StateNo = 3000 && Time = 43
time = 2
timeGap = 1
frameGap = 10
length = 21
palBright = 0,0,0
palContrast = 128,128,128
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.75,0.75,0.75
trans = Add1

[State -3, Level 2 Super AfterImage]
type = AfterImage
trigger1 = StateNo = 3050 && Time = 43
trigger2 = StateNo = 3150 && Time = 3
trigger3 = StateNo = 3251 && Time = 3
time = 2
timeGap = 1
frameGap = 10
length = 21
palBright = 0,0,0
palContrast = 32,32,160
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.75,0.75,0.75
trans = Add1

[State -3, Level 3 Super AfterImage]
type = AfterImage
trigger1 = StateNo = 3300 && Time = 3
time = 2
timeGap = 1
frameGap = 10
length = 21
palBright = 0,0,0
palContrast = 160,32,32
palPostBright = 0,0,0
palAdd = 0,0,0
palMul= 0.75,0.75,0.75
trans = Add1

[State -3, AfterImage Persist]
type = AfterImageTime
trigger1 = StateNo = 50 || (StateNo = [600,699])
trigger1 = (var(3) = 2 || var(3) = 3) && vel y < -1
trigger2 = var(20)
trigger3 = StateNo = [700,715]
trigger4 = StateNo = [3000,4999]
time = 2

[State -3, AfterImage Off]
type = AfterImageTime
triggerAll = Time <= 1
trigger1 = StateNo = 3000 || StateNo = 3050 || StateNo = 3100 || StateNo = 3150 || StateNo = 300
trigger2 = StateNo = 3300
time = 0

[State -3, Underground Juggle Prevention]
type = TargetBind
trigger1 = MoveContact = 1
trigger1 = NumTarget && NumEnemy
trigger1 = (Target, Time = 0) && (Target, ID = EnemyNear, ID)
trigger1 = !(Target, HitShakeOver) && (Target, pos y > 0)
pos = ceil(P2Dist x), ceil(-pos y)
ignoreHitPause = 1

[State -3, Prevent Crossup]
type = Width
trigger1 = MoveType != H
edge = 8, 0
ignoreHitPause = 1

[State -3, Variable Height]
type = PlayerPush
triggerAll = StateType = A && MoveType != H && NumEnemy
triggerAll = P2BodyDist x = [-(EnemyNear, const(size.ground.back) + EnemyNear, const(size.ground.front)), 0]
trigger1 = P2StateType = S
trigger1 = P2Dist y >= (EnemyNear, const(size.height) - 12)
trigger2 = P2StateType = C
trigger2 = P2Dist y >= (EnemyNear, const(size.height) - 28)
trigger3 = P2StateType = L
trigger3 = P2Dist y >= 12
value = 0
ignoreHitPause = 1

[State -3, Get Hit Sound]
type = PlaySnd
triggerall = Alive && Time = 1
triggerall = StateNo = 5000 || StateNo = 5010
trigger1 = GetHitVar(AnimType) >= 2 && Random < 500
trigger2 = GetHitVar(AnimType) = 1 && Random < 375
trigger3 = GetHitVar(AnimType) = 0 && Random < (250 * (AILevel ** 2 / 64.0))
value = 5000,(Random % 3)
channel = 0
ignoreHitPause = 1

[State -3, Get Hit Sound]
type = PlaySnd
triggerAll = Alive && Time = 1
trigger1 = (StateNo = 5000 || StateNo = 5010) && NumEnemy
trigger1 = GetHitVar(fall) || (EnemyNear, HitDefAttr = SCA,SA,HA)
trigger2 = (StateNo = 5020 || StateNo = 5070 || StateNo = 5080)
trigger3 = (StateNo = 5050 || StateNo = 5100) && (PrevStateNo != [5000,5199])
value = 5000,(Random % 3)
channel = 0
ignoreHitPause = 1

[State -3, Cheap KO]
type = ChangeState
trigger1 = !Alive && (StateNo = [5000,5010])
trigger1 = (PrevStateNo = [130,131]) || (PrevStateNo = [140,141]) || (PrevStateNo = [150,153])
value = 5950
ignoreHitPause = 1

[State -3, Assert: NoKOsnd (Cheap KO)]
type = AssertSpecial
trigger1 = (StateNo = [5000,5010])
trigger1 = (PrevStateNo = [130,131]) || (PrevStateNo = [140,141]) || (PrevStateNo=[150,153])
flag = NoKOsnd
ignoreHitPause = 1

[State -3, Custom Combo Finish]
type = Helper
triggerAll = WinKO && var(20)
triggerAll = RoundState = 3 && !NumHelper(8600)
trigger1 = MoveHit = [1,4]
trigger2 = NumHelper(1005)
trigger2 = (Helper(1005), StateNo = [1005,1007]) && (Helper(1005), var(18))
trigger3 = StateNo = 810 && (AnimElemTime(6) = [0, 1])
trigger4 = StateNo = 821 && (AnimElemTime(4) = [0, 1])
helperType = Normal
stateNo = 8600
ID = 8600 + 0 * (var(23) := 900)
name = "Super Finish"
posType = left
pos = 160, -120
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1

[State -3, Super Finish]
type = Helper
triggerAll = WinKO
triggerAll = RoundState = 3 && !NumHelper(8600)
trigger1 = MoveHit = 1 && (StateNo = [3000,4999])
trigger1 = var(23) := StateNo
trigger2 = NumHelper(3002)
trigger2 = (Helper(3002), StateNo = [3002,3004]) && Helper(3002), var(18)
trigger2 = var(23) := 3000
trigger3 = NumHelper(3005)
trigger3 = Helper(3005), StateNo = 3005 && Helper(3005), var(18)
trigger3 = var(23) := 3000
trigger4 = (StateNo = [3100,3150]) || StateNo = 3200
trigger4 = var(23) := ifElse((StateNo = [3100,3150]), 3100, 3200)
trigger5 = NumHelper(3305)
trigger5 = Helper(3305), StateNo = 3305 && Helper(3305), var(18)
trigger5 = var(23) := 3300
helperType = Normal
stateNo = 8600
ID = 8600
name = "Super Finish"
posType = left
pos = 160,-120
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1
