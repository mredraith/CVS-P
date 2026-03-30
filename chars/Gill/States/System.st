;
;SYSTEM STATES=
;

;STANDING=
[StateDef 0]
type = S
physics = S
moveType = I
velSet = 0,0
sprPriority = 0

[State 0, Explod : Flame]
type = Explod
TriggerAll = Random < 400
TriggerAll = Anim = 0
trigger1 = AnimElemTime(14) = 0
trigger2 = AnimElemTime(46) = 0
anim = 10000 + (Facing = -1) * 10
ID = 10000 + (Facing = -1) * 10
pos = ceil(14*const(size.xscale)),ceil(-105*const(size.yscale))
postype = P1
bindtime = 44
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = .5,.5
sprpriority = 3
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 1

[State 185, ModifyExplod]
type = ModifyExplod
trigger1 = var(0) = 90
ID = 10000
trans = Sub

[State 185, ModifyExplod]
type = ModifyExplod
trigger1 = var(0) = 90
ID = 10010
trans = Sub

[State 0, Explod : Ice]
type = Explod
TriggerAll = Random < 400
TriggerAll = Anim = 0
trigger1 = AnimElemTime(14) = 0
trigger2 = AnimElemTime(46) = 0
anim = 10010 - (Facing = -1) * 10
ID = 10010 - (Facing = -1) * 10
pos = ceil(54*const(size.xscale)),ceil(-98*const(size.yscale))
postype = P1
bindtime = 44
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = .5,.5
sprpriority = 3
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 1

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

;CROUCHING=
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
elem = 7 - AnimElemNo(0)

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
elem = 7 - AnimElemNo(0)

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

;WALKING=
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

;JUMPING=
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

;RUN=
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
trigger1 = (AnimElem = 4 || AnimElem = 7)
value = 100, ifElse((AnimElem = 4), 0, 1)

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
sprPriority = 3
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

;DASH BACKWARDS=
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
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 105, VelMul]
type = VelMul
trigger1 = AnimElemTime(2) > 0
x = 0.98

[State 105, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 0
y = 0.65

[State 110, Type]
type = StateTypeSet
trigger1 = AnimElemTime(2) >= 0
stateType = A
physics = N

[State 105, End]
type = ChangeState
trigger1 = AnimElemTime(2) >= 0
trigger1 = pos y > -vel y
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

;DASH FORWARD==
[StateDef 110]
type = S
physics = N
moveType = I
anim = 110
ctrl = 0
sprPriority = 1

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
triggerall = AnimElemTime(2) <= 0
trigger1 = !AILevel && command != "holdfwd"
sysvar(1) = 0

[State 110, ChangeState to Running]
type = ChangeState
trigger1 = AnimElemTime(2) = 0 && sysvar(1)
value = 100

[State 110, Type]
type = StateTypeSet
trigger1 = AnimElemTime(2) >= 0
stateType = A
physics = N

[State 110, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 8.45
y = -4.03

[State 110, VelMul]
type = VelMul
trigger1 = AnimElemTime(2) > 0
x = 0.98

[State 110, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 0
y = 0.65

[State 110, End]
type = ChangeState
trigger1 = AnimElemTime(2) >= 0
trigger1 = pos y > -vel y
value = 111

;Stop Dashing Forward
[StateDef 111]
type = S
physics = S
ctrl = 1
anim = 111
velSet = 0,0

[State 111, PosSet]
type = PosSet
trigger1 = 1
y = 0

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

;DODGE=
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
value = 4,0
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

[State 700, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(3) = 0
x = -7 * Const(Size.Xscale)

[State 700, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(4) = 0
x = -10 * Const(Size.Xscale)

[State 700, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(5) = 0
x = 12 * Const(Size.Xscale)

[State 700, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(6) = 0
x = 5 * Const(Size.Xscale)

[State 700, HitBy]
type = HitBy
trigger1 = 1
value = SCA,AT
time = 1

[State 700, Attack]
type = ChangeState
trigger1 = !AILevel && Time = [15,25]
trigger1 = command = "x" || command = "y" || command = "z" || command = "a" || command = "b" || command = "c"
value = ifElse((command = "x" || command = "y" || command = "z"), 220, 240)

[State 700, Attack (AI)]
type = ChangeState
trigger1 = AILevel && (Time = [15,25]) && NumEnemy
trigger1 = (EnemyNear, MoveType != A) && (P2BodyDist x = [-60,60]) && (P2Dist y >= -60)
value = ifElse(Random < 666, 220, 240)

[State 700, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;ROLL FORWARD=
[StateDef 710]
type = S
physics = N
moveType = I
anim = 710
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 710, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 710, HitBy]
type = HitBy
trigger1 = AnimElemTime(11) < 0
value = SCA,AT
time = 1

[State 710, Voice]
type = PlaySnd
trigger1 = !Time
value = ifElse(Random < 500, 710, 4),1
channel = 0

[State 710, Roll Sound]
type = PlaySnd
trigger1 = !Time
value = 110,0
channel = 1

[State 710, Start Roll]
type = VelSet
trigger1 = AnimElem = 2
x = 7.8

[State 710, End Roll]
type = VelSet
trigger1 = AnimElem = 9
x = 0

[State 710, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;ROLL BACKWARDS==
[StateDef 715]
type = S
physics = N
moveType = I
anim = 715
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
trigger1 = AnimElemTime(12) < 0
value = SCA,AT
time = 1

[State 715, Voice]
type = PlaySnd
trigger1 = !Time
value = ifElse(Random < 500, 710, 4),1
channel = 0

[State 715, Roll Sound]
type = PlaySnd
trigger1 = !Time
value = 110,0
channel = 1

[State 715, Start Roll]
type = VelSet
trigger1 = AnimElem = 3
x = -7.8

[State 715, End Roll]
type = VelSet
trigger1 = AnimElem = 10
x = 0

[State 715, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;POWER CHARGE=
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
trigger1 = !AILevel && (command = "holdb" && command = "holdy")
trigger2 = AILevel
value = 5 + ifElse(time < 60, 0, (time - 60) / 12)

[State 730, Voice]
type = PlaySnd
trigger1 = !Time
value = 730,1
channel = 0

[State 730, Character Flash]
type = PalFX
trigger1 = 1
time = 1
add = 75 + ceil(sin(Time / 6.0 * pi) * 75), 25 + ceil(sin(Time / 6.0 * pi) * 25),0

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
trigger2 = !AILevel && (command != "holdb" || command != "holdy")
trigger3 = AILevel && (InGuardDist || P2BodyDist x <= 120)
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

[State 731, Full Power Voice]
type = PlaySnd
trigger1 = !Time && Power >= const(data.power)
value = 731,0
channel = 0
persistent = 0

[State 730, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;ZERO COUNTER=
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
pos = 22, -65
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

;PARRY=
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
channel = 1

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
pos = 44, -85
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
channel = 1

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
pos = 37, -41
pauseMovetime = -1
superMovetime = -1
scale = 0.5,0.5
ownpal = 1

[State 761, EnvShake]
type = EnvShake
trigger1 = !Time
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
channel = 1

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
pos = 38, -97
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
value = 52

;CUSTOM COMBO=
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
trigger1 = Time >= 4
var(20) = 180

[State 900, Voice]
type = PlaySnd
trigger1 = !Time
value = 1100,0
channel = 0

[State 900, Custom Combo FX Helper]
type = Helper
trigger1 = Time = 4
helperType = Normal
stateNo = 8400
ID = 8400
name = "Custom Combo FX"
posType = P1
pos = -4, -80
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 900, SuperPause]
type = SuperPause
trigger1 = Time = 4
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
value = 810,0
channel = 0

[State 905, Custom Combo FX Helper]
type = Helper
trigger1 = Time = 4
helperType = Normal
stateNo = 8400
ID = 8400
name = "Custom Combo Startup"
posType = P1
pos = 8,-100
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

;TARGET SAFE FALL=
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

;FALL RECOVERY=
[StateDef 5200]
type = A
moveType = H
physics = N

[State 5200, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5035 && !AnimTime
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
value = 800,0
channel = 0

[State 5201, Recover Sound]
type = PlaySnd
trigger1 = !Time
value = 5200,0
channel = 1

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
faceP2 = 1

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
value = 800,0
channel = 0

[State 5210, Recover Sound]
type = PlaySnd
trigger1 = !Time
value = 5200,0
channel = 1

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
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1

[State 5210, CtrlSet]
type = CtrlSet
trigger1 = AnimElemTime(4) >= 0
value = 1

[State 5210, Land]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52

;GUARD=
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
stateType = C
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

;LOSE=
[StateDef 170]
type = S
ctrl = 0
anim = 170
velSet = 0,0

[State 170, 1]
type = Explod
trigger1 = Time = 88
anim = 8050
pos = 0, 0
postype = p1
sprpriority = 2
RemoveTime = -1
BindTime = -1
scale = const(size.xscale), const(size.yscale)

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 170, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 240
flag = RoundNotOver

;DRAW GAME=
[StateDef 175]
type = S
ctrl = 0
velSet = 0,0

[State 175, ChangeState]
type = ChangeState
trigger1 = !Time
value = 170

;TAUNT=
[StateDef 195]
type = S
moveType = I
physics = S
anim = 195
velSet = 0,0
sprPriority = 1
ctrl = 0

[State 195, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 195,0
channel = 0

[State 195, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;INITIALIZE=
[StateDef 5901]
type = S

[State 5901, RemapPal]
type = RemapPal
trigger1 = 1
trigger1 = var(0) != [50,100]
source = 1,1
dest = 1+(facing = -1),var(0)

[State 5901, RemapPal]
type = RemapPal
trigger1 = 1
trigger1 = var(0) = [50,100]
source = 1,1
dest = 1,var(0)

[State 5901, RemapPal]
type = RemapPal
trigger1 = 1
trigger1 = var(0) = [1,100]
source = 3,1
dest = 3,var(0)

[State 5901, Turns Intro]
type = ChangeState
trigger1 = TeamMode = Turns
trigger1 = !RoundsExisted && RoundNo >= 2
value = 6900

[State 5901, Intro Decider]
type = ChangeState
trigger1 = RoundNo = 1
value = IfElse(Random < 500, 190, 191)

[State 5901, End]
type = ChangeState
trigger1 = 1
value = 0

;INTRO 1=
[StateDef 190]
type = S
physics = S
sprpriority = 0
anim = 190

[State 190, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 18
value = 190, 0
channel = 0

[State 190, Normal: Chant]
type = PlaySnd
triggerAll = !Time
trigger1 = !var(2)
volumescale = 75
value = 190, 10
channel = 5

[State 190, Arranged: Chant]
type = PlaySnd
triggerAll = !Time
trigger1 = var(2)
volumescale = 75
value = 190, 11
channel = 5

[State 190, Helper]
type = Helper
trigger1 = !Time
helpertype = Normal
name = "Robe"
ID = 7000
stateno = 7000
pos = 0, 0
postype = P1 
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[State 190, Helper]
type = Helper
trigger1 = !Time
helpertype = Normal
name = "Kollin"
ID = 7001
stateno = 7001
pos = ceil(-75 * Const(Size.Xscale)), 0
postype = P1 
facing = 1
keyctrl = 0
ownpal = 1
size.xscale = const(Size.Xscale)
size.yscale = const(Size.Yscale)

[State 190, Helper]
type = Helper
trigger1 = !Time
helpertype = Normal
name = "Monks"
ID = 7002
stateno = 7002
pos = ceil(GameWidth/4),0
postype = P1
facing = facing
keyctrl = 0
ownpal = 1
size.shadowoffset = -10
size.xscale = const(Size.Xscale)
size.yscale = const(Size.Yscale)

[State 190, Helper]
type = Helper
trigger1 = !Time
helpertype = Normal
name = "Monks"
ID = 7003
stateno = 7003
pos = ceil(GameWidth/2)-240,0
postype = P1 
facing = 1
keyctrl = 0
ownpal = 1
size.shadowoffset = -10
size.xscale = const(Size.Xscale)
size.yscale = const(Size.Yscale)

[State 190, Helper]
type = Helper
trigger1 = !Time
helpertype = Normal
name = "Monks"
ID = 7004
stateno = 7003
pos = ceil(GameWidth/2)+60,0
postype = P1 
facing = -1
keyctrl = 0
ownpal = 1
size.shadowoffset = -10
size.xscale = const(Size.Xscale)
size.yscale = const(Size.Yscale)

;Palette - Portrait
[State 190, RemapPal]
type = RemapPal
triggerall = 1
trigger1 = AnimElemTime(27) >= 0
trigger1 = var(0) = [50,100]
source = 4,1
dest = 1, Var(0)

[state 190, Glowing Palette Effect]
type = RemapPal
trigger1 = var(1) = 1
trigger1 = AnimElemTime(27) >= 0
trigger1 = var(0) != [30,100]
source = 4, 1
dest = var(0) + 100, ceil(abs(6 * cos(gametime * pi / 100)))

;Palette - Gill
[State 190, RemapPal]
type = RemapPal
triggerall = 1
trigger1 = AnimElemTime(27) >= 0 
trigger1 = var(0) != [50,100]
source = 1,1
dest = 1+(Facing=-1),Var(0)

[State 190, RemapPal]
type = RemapPal
triggerall = 1
trigger1 = AnimElemTime(27) >= 0
trigger1 = var(0) = [50,100]
source = 1,1
dest = 1, Var(0)

[state 190, Glowing Palette Effect]
type = RemapPal
trigger1 = var(1) = 1
trigger1 = AnimElemTime(27) >= 0
trigger1 = var(0) != [30,100]
source = 1, 1
dest = (var(0)+100)+((facing = -1)*100), ceil(abs(6 * cos(gametime * pi / 100)))

[state 190, Glowing Palette Effect : Heaven's Will]
type = RemapPal
trigger1 = var(1) = 1
trigger1 = AnimElemTime(27) >= 0
trigger1 = var(0) = 58
source = 1, 1
dest = (var(0)+100), ceil(abs(6 * cos(gametime * pi / 100)))

[state 190, Glowing Palette Effect : Saiki]
type = RemapPal
trigger1 = var(1) = 1
trigger1 = AnimElemTime(27) >= 0
trigger1 = var(0) = 90
source = 1, 1
dest = (var(0)+100), ceil(abs(4 * cos(gametime * pi / 200)))

[State 190, End]
type = ChangeState
trigger1 = !AnimTime
value = 0

;INTRO 2=
[StateDef 191]
type = S
physics = S
sprpriority = 0
anim = 191

[State 191, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, Voice 1]
type = PlaySnd
trigger1 = AnimElemTime(6) = 20
value = 190, 1
channel = 0

[State 191, Helper]
type = Helper
trigger1 = !Time
helpertype = Normal
name = "Robe"
ID = 7010
stateno = 7010
pos = 0, 0
postype = P1 
facing = 1
keyctrl = 0
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)

[State 191, Helper]
type = Helper
trigger1 = AnimElemTime(5) = 38
helpertype = Normal
name = "Flames"
ID = 10190
stateno = 10190
pos = 0, 0
postype = P1 
facing = 1
keyctrl = 0
size.xscale = .5
size.yscale = .5

[State 191, End]
type = ChangeState
trigger1 = !AnimTime
value = 0

;TURNS INTRO=
[StateDef 6900]
type = A
anim = 42
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
anim = 6901
velSet = 0,0

[State 6901, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6901, PosSet]
type = PosSet
TriggerAll = Anim = 6901
trigger1 = !Time && NumHelper(8999)
x = ceil(Helper(8999), pos x)

[State 6901, Landing Sound]
type = PlaySnd
TriggerAll = Anim = 6901
trigger1 = !Time
value = 52,0
channel = 1

[State 6901, Landing Dust Expod]
type = Explod
TriggerAll = Anim = 6901
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 6901, Explod : Flame]
type = Explod
TriggerAll = Anim = 6901 && Facing = -1
trigger1 = AnimElemTime(6) = 0
anim = 10000
ID = 10000
pos = ceil(54*const(size.xscale)),ceil(-98*const(size.yscale))
postype = P1
bindtime = 44
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = .5,.5
sprpriority = 3
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 1

[State 6901, ModifyExplod]
type = ModifyExplod
trigger1 = var(0) = 90
ID = 10000
trans = Sub

[State 6901, ModifyExplod]
type = ModifyExplod
trigger1 = var(0) = 90
ID = 10010
trans = Sub

[State 6901, Explod : Ice]
type = Explod
TriggerAll = Anim = 6901 && Facing = 1
trigger1 = AnimElemTime(6) = 0
anim = 10010
ID = 10010
pos = ceil(54*const(size.xscale)),ceil(-98*const(size.yscale))
postype = P1
bindtime = 44
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = .5,.5
sprpriority = 3
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 1

[State 6901, Mouth]
type = Helper
TriggerAll = Anim = 6901
trigger1 = AnimElem = 7
helpertype = Normal
name = "Mouth"
ID = 6910
stateno = 6910
pos = 0,0
postype = P1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
keyctrl = 0

[State 6901, ChangeAnim]
type = ChangeAnim
TriggerAll = Anim = 6901
trigger1 = Time >= 167
value = 6902

[State 6901, End]
type = ChangeState
trigger1 = Anim = 6902 && !AnimTime
value = 0

;WIN POSE DECIDER=
[StateDef 180]
type = S

[State 180, Generic Victory Quote]
type = VictoryQuote
trigger1 = 1
value = (Random % 34)

[State 180, Victory Quote vs. Akuma]
type = VictoryQuote
trigger1 = Enemy, Name = "Akuma" || Enemy, Name = "Gouki"
value = 50

[State 180, Victory Quote vs. Alex]
type = VictoryQuote
trigger1 = Enemy, Name = "Alex"
value = 51

[State 180, Victory Quote vs. Balrog]
type = VictoryQuote
trigger1 = Enemy, Name = "The Boxer" || Enemy, Name = "Mike Bison" || Enemy, Name = "cvsbison"
value = 52

[State 180, Victory Quote vs. Cammy]
type = VictoryQuote
trigger1 = Enemy, Name = "Cammy" || Enemy, Name = "cvscammy"
value = 53

[State 180, Victory Quote vs. Chun-Li]
type = VictoryQuote
trigger1 = Enemy, Name = "Chun-Li" || Enemy, Name = "cvschunli" || Enemy, Name = "Chun Li" || Enemy, Name = "ChunLi"
value = 54

[State 180, Victory Quote vs. Dan]
type = VictoryQuote
trigger1 = Enemy, Name = "Dan" || Enemy, Name = "cvsdan" || Enemy, Name = "Dan Hibiki"
value = 55

[State 180, Victory Quote vs. Dhalsim]
type = VictoryQuote
trigger1 = Enemy, Name = "Dhalsim" || Enemy, Name = "cvsdhalsim" || Enemy, Name = "RajaaDhalsim"
value = 56

[State 180, Victory Quote vs. Dudley]
type = VictoryQuote
trigger1 = Enemy, Name = "Dudley"
value = 57

[State 180, Victory Quote vs. Elena]
type = VictoryQuote
trigger1 = Enemy, Name = "Elena"
value = 58

[State 180, Victory Quote vs. Gill]
type = VictoryQuote
trigger1 = Enemy, Name = "Gill"
value = 59

[State 180, Victory Quote vs. Guile]
type = VictoryQuote
trigger1 = Enemy, Name = "Guile" || Enemy, Name = "cvsguile"
value = 60

[State 180, Victory Quote vs. Ibuki]
type = VictoryQuote
trigger1 = Enemy, Name = "Ibuki"
value = 61

[State 180, Victory Quote vs. Iori Yagami]
type = VictoryQuote
trigger1 = Enemy, Name = "cvsiori" || Enemy, Name = "Iori" || Enemy, Name = "Iori Yagami" || (Enemy, Name = "Iori_WLS" && PalNo < 7) || Enemy, Name = "N.Iori_WLS" || Enemy, Name = "IoriMG" || Enemy, Name = "cvsiori_normal"
value = 62

[State 180, Victory Quote vs. Hugo]
type = VictoryQuote
trigger1 = Enemy, Name = "Hugo"
value = 63

[State 180, Victory Quote vs. Jin Kazama]
type = VictoryQuote
trigger1 = Enemy, Name = "Jin" || Enemy, Name = "Jin Kazama"
value = 64

[State 180, Victory Quote vs. Ken]
type = VictoryQuote
trigger1 = Enemy, Name = "Ken" || Enemy, Name = "cvsken" || Enemy, Name = "Ken Masters"
value = 65

[State 180, Victory Quote vs. M. Bison]
type = VictoryQuote
trigger1 = Enemy, Name = "The Dictator"
value = 66

[State 180, Victory Quote vs. Necro]
type = VictoryQuote
trigger1 = Enemy, Name = "Necro"
value = 67

[State 180, Victory Quote vs. Oro]
type = VictoryQuote
trigger1 = Enemy, Name = "Oro"
value = 68

[State 180, Victory Quote vs. Rose]
type = VictoryQuote
trigger1 = Enemy, Name = "Rose"
value = 69

[State 180, Victory Quote vs. Ryu]
type = VictoryQuote
trigger1 = Enemy, Name = "Ryu" || Enemy, Name = "cvsryu"
value = 70

[State 180, Victory Quote vs. Sean]
type = VictoryQuote
trigger1 = Enemy, Name = "Sean" || Enemy, Name = "cvssean" || Enemy, Name = "Sean Matsuda"
value = 71

[State 180, Victory Quote vs. Shin Akuma]
type = VictoryQuote
trigger1 = Enemy, Name = "ShinAkuma" || Enemy, Name = "ShinGouki"
trigger2 = Enemy, Name = "Shin Akuma" || Enemy, Name = "Shin Gouki"
trigger3 = Enemy, Name = "S.Akuma" || Enemy, Name = "S.Gouki"
value = 72

[State 180, Victory Quote vs. Ryu]
type = VictoryQuote
trigger1 = Enemy, Name = "Street Fighter 3's Urien" || Enemy, Name = "urien_mx" || Enemy, Name = "cvsurien" || Enemy, Name = "Urien"
value = 73

[State 180, Victory Quote vs. Yun]
type = VictoryQuote
trigger1 = Enemy, Name = "cvsyang" || Enemy, Name = "Yang" || Enemy, Name = "YangLee" || Enemy, Name = "Yang Lee"
value = 74

[State 180, Victory Quote vs. Yun]
type = VictoryQuote
trigger1 = Enemy, Name = "cvsyun" || Enemy, Name = "Yun" || Enemy, Name = "YunLee" || Enemy, Name = "Yun Lee"
value = 75

[State 183, AssertSpecial]
type = AssertSpecial
trigger1 = PrevStateNo = 185
flag = NoAutoTurn

[State 180, Go Back to Level 3 Pose]
type = ChangeState
trigger1 = PrevStateNo = 185 && !Time
value = PrevStateNo
ctrl = IfElse(RoundState = 4, 0, 1)

[State 180, Win Decider]
type = ChangeState
trigger1 = !Time
value = IfElse(Random < 333, 181, IfElse(Random < 333, 182, 184))

[State 180, Win Decider]
type = ChangeState
trigger1 = MatchOver
value = 183

;WIN 1 : KNEEL BEFORE YOUR MASTER=
[StateDef 181]
type = S
physics = S
anim = 181
ctrl = 0

[State 181, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 250
flag = RoundNotOver

[State 181, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(6) = 2
value = 181, 0
channel = 0

;WIN 2 : I AM YOUR GOD=
[StateDef 182]
type = S
physics = S
anim = 182
ctrl = 0

[State 182, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 250
flag = RoundNotOver

[State 182, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(6) = 2
value = 181, 1
channel = 0

;WIN MATCH 1 : CLUTCH=
[StateDef 183]
type = S
physics = S
anim = 183
ctrl = 0

[State 182, PlaySnd]
type = PlaySnd
trigger1 = Anim = 183 && AnimElem = 3
value = 1, 2
channel = 0

[State 182, PlaySnd]
type = PlaySnd
trigger1 = Anim = 183 && AnimElem = 3
value = 183, 10 + (Facing = 1) * 5 
channel = 1

[State 182, PlaySnd]
type = PlaySnd
trigger1 = Anim = 183 && AnimElem = 18
value = 183, 11 + (Facing = 1) * 5
channel = 2

[State 182, PlaySnd]
type = PlaySnd
trigger1 = Anim = 183 && AnimElem = 36
value = 183, 12 + (Facing = 1) * 5
channel = 3

[State 183, Ice Explod]
type = Explod
TriggerAll = Facing = 1
trigger1 = Anim = 183 && AnimElem = 4
anim = 10180
ID = 10180
pos = ceil(-55*const(size.xscale)),ceil(-102*const(size.yscale))
postype = P1
vel = -4,0
scale = .5,.5
sprpriority = 3
ownpal = 1

[State 183, Ice Explod]
type = Explod
TriggerAll = Facing = 1
trigger1 = Anim = 183 && AnimElem = 21
anim = 10181
ID = 10180
pos = ceil(-38*const(size.xscale)),ceil(-120*const(size.yscale));-32,-120
postype = P1
vel = 0,0
scale = .5,.5
sprpriority = 3
ownpal = 1

[State 6901, ModifyExplod]
type = ModifyExplod
trigger1 = var(0) = 90
ID = 10180
trans = Sub

[State 6901, ModifyExplod]
type = ModifyExplod
trigger1 = var(0) = 90
ID = 10182
trans = Sub

[State 183, Flame Explod]
type = Explod
TriggerAll = Facing = -1
trigger1 = Anim = 183 && AnimElem = 4
anim = 10182
ID = 10182
pos = ceil(-65*const(size.xscale)),ceil(-98*const(size.yscale));-65,-98
postype = P1
vel = -8,0
scale = .5,.5
sprpriority = 3
ownpal = 1

[State 183, Flame Explod]
type = Explod
TriggerAll = Facing = -1
trigger1 = Anim = 183 && AnimElem = 20
anim = 11182
ID = 10182
pos = ceil(-34*const(size.xscale)),ceil(-124*const(size.yscale));-34,-124
postype = P1
vel = 0,0
scale = .5,.5
sprpriority = 3
ownpal = 1

[State 183, Hair]
type = Helper
trigger1 = Anim = 183 && AnimElem = 10
helpertype = Normal
name = "Hair"
ID = 100183
stateno = 100183
pos = 0,0
postype = P1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
keyctrl = 0

[State 183, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 250
flag = RoundNotOver

[State 183, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 183 && !AnimTime 
value = IfElse(Random < 500, 10183, 11183)

;WIN 2 : I AM YOUR GOD=
[StateDef 184]
type = S
physics = S
anim = 184
ctrl = 0

[State 184, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(4) = 0
value = 195, 0
channel = 0

[State 184, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(28) = 0
value = 181, 1
channel = 0

[State 184, Mouth]
type = Helper
trigger1 = AnimElem = 28
helpertype = Normal
name = "Mouth"
ID = 100184
stateno = 100184
pos = 0,0
postype = P1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
keyctrl = 0

[State 184, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 300
flag = RoundNotOver

;WIN BY KO : SERAPHIC WING=
[StateDef 185]
type = S
anim = 185
ctrl = IfElse(RoundState = 4, 0, 1)

[State 185, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 350
flag = RoundNotOver

[State 185, Voice]
type = PlaySnd
triggerAll = (RoundState != 2 || RoundState != 3)
trigger1 = RoundState = 4 && !Time
value = 191, 0
volumescale = 75
channel = 0

[State 185, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 185, VelSet]
type = VelSet
trigger1 = 1
y = (Sin (GameTime * 0.0875))

[State 185, Power Charge Dust]
type = Explod
trigger1 = StateNo = 185
trigger1 = PrevStateNo = 3300 && !Time
anim = 10186
sprPriority = -3
posType = P1
pos = 0, -ceil(pos y)
scale = 0.5,0.5
removetime = -1
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 185, Chicken Wangs]
type = Explod
trigger1 = StateNo = 185
trigger1 = PrevStateNo = 3300 && !Time
ID = 10185
anim = 10185
pos = 0,ceil(-100*const(size.yscale));0,-100
postype = P1
sprpriority = -1
facing = 1
bindtime = -1
ownpal = 1
ignoreHitPause = 1
removetime = -1
pausemovetime = 999999999999
scale = .75,.75

[State 185, ModifyExplod]
type = ModifyExplod
trigger1 = var(0) = 90
ID = 10185
trans = Sub

[State 185, Holyness]
type = PlaySnd
trigger1 = !Time && PrevStateNo = 3300
value = 190, 10
volumescale = 75
channel = 2

[State 185, Read Win State]
type = ChangeState
trigger1 = Time >= 120 && RoundState = 3
value = ifelse(RoundState = 3, 180, 0)
ctrl = 1 

;CHEAP K.O.=
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

;Fake Cheap K.O.
[Statedef 5951]
type = S
movetype = H
physics = N
velset = 0,0
sprpriority = -1

[State 5951, ChangeAnim]
type = ChangeAnim
trigger1 = !HitOver
value = IfElse((GetHitVar(GroundType) = 1), 5000, 5010)
elem = 1

[State 5951, ChangeAnim]
type = ChangeAnim
trigger1 = HitOver
trigger1 = Anim != 5951
value = 5951
persistent = 0

[State 5951, NotHitBy]
type = NotHitBy
trigger1 = Anim = 5951
trigger1 = AnimelemTime(6) >= 0
value = SCA

[State 5951, StateTypeSet]
type = StateTypeSet
trigger1 = Anim = 5951
trigger1 = AnimelemTime(8) >= 0
statetype = L 

[State 5951,PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 5951, PosFreeze]
type = PosFreeze
trigger1 = !HitShakeOver

[State 5951, VelSet]
type = VelSet
trigger1 = !Time
x = -2.0 * Const(Size.XScale)

[State 5951, VelSet]
type = VelSet
trigger1 = HitOver
x = 0

[State 5951, ChangeState]
type = Changestate
trigger1 = Anim = 5951
trigger1 = Alive
trigger1 = !Animtime
value = 3400

;AIR HIT TRANSITION=
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

;---------------------------------------------------------------------------
; Air get-hit (recovering in air, not falling)
[Statedef 5040]
type = A
movetype= H
physics = N

[State 5040, 1]
type = ChangeState
trigger1 = var(45) = 1; && !Time
value = 5050
ctrl = 0

[State 5040, 1]
type = ChangeState
trigger1 = !Alive
value = 5050
ctrl = 0

[State 5040, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim != 5040
trigger2 = Time = 0
trigger2 = Anim != 5035
value = 5040

[State 5040, 3]
type = CtrlSet
trigger1 = HitOver
value = 1

[State 5040, 4]
type = StateTypeSet
trigger1 = HitOver
movetype = I

[State 5040, 5]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5040, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 52 ;Jump land

;Get up from lying down
[Statedef 5120]
type = L
movetype= I
physics = N

[State 5120, 1a] ;Get up anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5111,5119]
trigger2 = !SelfAnimExist(5120 + (anim % 10))
value = 5120

[State 5120, 1b] ;Get up anim (for hit up/diag-up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5111,5119]
trigger1 = SelfAnimExist(5120 + (anim % 10))
value = 5120 + (anim % 10)

[State 5120, 2]
type = VelSet
trigger1 = Time = 0
x = 0

[State 5120, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5120, 4]
type = HitFallSet
trigger1 = AnimTime = 0
value = 1

[State 5120, 5] ;Can't be thrown right after getting up
type = NotHitBy
trigger1 = AnimTime = 0
value = , NT,ST,HT
time = 12

[State 5120, 6] ;Can't be hit right after getting up (short time)
type = NotHitBy
trigger1 = AnimTime = 0
value2 = SCA
time = 3

[State 5120, 7]
type = ChangeState
TriggerAll = var(45) = 1
trigger1 = !Time
value = 3400
ctrl = 0

[State 5120, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;FREEZE STATUS TRANSITION=
;Freeze : Standing Hit Shake
[Statedef 5800]
type = U
movetype= H
physics = N
velset = 0,0

[State 5800, ChangeState]
type = ChangeState
trigger1 = !Time
trigger1 = StateType != S
value = 5810 + (StateType = A) * 10

[State 5800, StateTypeSet]
type = StateTypeSet
trigger1 = !Time
StateType = S

[State 5800, Hit Anim]
type = ChangeAnim
trigger1 = !Time
value = 5002

[State 5800, Freeze Anim]
type = ChangeAnim
trigger1 = Time > 0
value = Anim

[State 5800, StateTypeSet : Air]
type = StateTypeSet
trigger1 = !Time
trigger1 = GetHitVar(YVel) != 0 || GetHitVar(Fall)
trigger2 = Pos Y != 0
statetype = A

[State 5800, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(YVel) = 0 && !GetHitVar(Fall)
value = 5801

[State 5800, PalFX]
type = PalFX
trigger1 = 1
time = 1
add = 255, 255, 255
mul = 140, 140, 140
color = 0

[State 5800, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 5830

;Freeze : Standing Slide Shake
[Statedef 5801]
type = S
movetype= H
physics = S

[State 5801, ChangeAnim]
type = ChangeAnim
trigger1 = !HitOver
value = Anim

[State 5801, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1

[State 5801, VelMul : Stop Sliding]
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 5801, VelSet]
type = VelSet
trigger1 = HitOver
x = 0

[State 5801, DefenceMulSet]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5801, StateTypeSet]
type = StateTypeSet
trigger1 = HitOver
movetype = I 

[State 5801, NotHitBy]
type = NotHitBy
trigger1 = HitOver
value = , AT
time = 6
persistent = 0

[State 5801, PalFX]
type = PalFX
trigger1 = 1
time = 1
add = 255, 255, 255
mul = 140, 140, 140
color = 0

[State 5801, SelfState]
type = SelfState
trigger1 = HitOver
value = 0
ctrl = 1

;Freeze : Crouching Hit Shake
[Statedef 5810]
type = C
movetype= H
physics = N
velset = 0,0

[State 5810, Hit Anim]
type = ChangeAnim
trigger1 = !Time
value = 5022

[State 5810, Freeze Anim]
type = ChangeAnim
trigger1 = Time > 0
value = Anim

[State 5810, StateTypeSet : Air]
type = StateTypeSet
trigger1 = !Time
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = A

[State 5810, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0 && !GetHitVar(fall)
value = 5811

[State 5810, PalFX]
type = PalFX
trigger1 = 1
time = 1
add = 255, 255, 255
mul = 140, 140, 140
color = 0

[State 5810, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 5830

;Freeze : Crouching Hit Slide
[Statedef 5811]
type = C
movetype= H
physics = C

[State 5811, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = Anim

[State 5811, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1

[State 5811, VelMul]
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 5811, VelSet]
type = VelSet
trigger1 = HitOver
x = 0

[State 5811, DefenceMulSet]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5811, StateTypeSet]
type = StateTypeSet
trigger1 = HitOver
movetype = I 

[State 5811, NotHitBy]
type = NotHitBy
trigger1 = HitOver
value = , AT
time = 6
persistent = 0

[State 5811, PalFX]
type = PalFX
trigger1 = 1
time = 1
add = 255, 255, 255
mul = 140, 140, 140
color = 0

[State 5811, SelfState]
type = SelfState
trigger1 = HitOver
value = 11
ctrl = 1

;Freeze : Jumping Hit Shake
[Statedef 5820]
type = A
movetype= H
physics = N
velset = 0,0

[State 5820, Hit Anim]
type = ChangeAnim
trigger1 = !Time
value = 5002

[State 5820, Hit Anim : Gill by GM]
type = ChangeAnim
trigger1 = !Time
trigger1 = AuthorName = "GM" && Name = "Gill"
value = 5002

[State 5820, Freeze Anim]
type = ChangeAnim
trigger1 = Time > 0
value = Anim

[State 5820, PalFX]
type = PalFX
trigger1 = 1
time = 1
add = 255, 255, 255
mul = 140, 140, 140
color = 0

[State 5820, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 5830

;Freeze : Jumping Hit Lift
[Statedef 5830]
type = A
movetype= H
physics = N
ctrl = 0

[State 5830, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = Anim

[State 5830, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 5830, VelAdd]
type = VelAdd
trigger1 = 1
y = GetHitVar(YAccel)

[State 5830, PalFX]
type = PalFX
trigger1 = 1
time = 1
add = 255, 255, 255
mul = 140, 140, 140
color = 0

[State 5830, SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;
;-2 STATES=
;
[StateDef -2]

[State -2, TargetState : Freeze Status]
type = TargetState
triggerall = MoveHit
trigger1 = NumTarget(220)
trigger1 = Target(220), StateNo != [5800,5830]
trigger1 = Target(220), StateType != L
trigger2 = NumTarget(250)
trigger2 = Target(250), StateNo != [5800,5830]
trigger2 = Target(250), StateType != L
trigger3 = NumTarget(10420)
trigger3 = Target(10420), StateNo != [5800,5830]
trigger3 = Target(10420), StateType != L
trigger4 = NumTarget(10421)
trigger4 = Target(10421), StateNo != [5800,5830]
trigger4 = Target(10421), StateType != L
trigger5 = NumTarget(450)
trigger5 = Target(450), StateNo != [5800,5830]
trigger5 = Target(450), StateType != L
trigger6 = NumTarget(10620)
trigger6 = Target(10620), StateNo != [5800,5830]
trigger6 = Target(10620), StateType != L
trigger7 = NumTarget(10650)
trigger7 = Target(10650), StateNo != [5800,5830]
trigger7 = Target(10650), StateType != L
trigger8 = NumTarget(11101)
trigger8 = Target(11101), StateNo != [5800,5830]
trigger8 = Target(11101), StateType != L
trigger9 = NumTarget(2910)
trigger9 = Target(2910), StateNo != [5800,5830]
trigger9 = Target(2910), StateType != L
trigger10 = NumTarget(3103)
trigger10 = Target(3103), StateNo != [5800,5830]
trigger10 = Target(3103), StateType != L
trigger11 = NumTarget(3200)
trigger11 = Target(3200), StateNo != [5800,5830]
trigger11 = Target(3200), StateType != L
trigger12 = NumTarget(3250)
trigger12 = Target(3250), StateNo != [5800,5830]
trigger12 = Target(3250), StateType != L
value = 5800
ignorehitpause = 1

; State Controllers by Splode
[State -2, VarAdd]
type = VarAdd
trigger1 = NumHelper(3505) > 0
fvar(1)= 0.09854
ignorehitpause = 1

[State -2, VarAdd]
type = VarAdd
trigger1 = NumHelper(3515) > 0
fvar(2)= 0.09854
ignorehitpause = 1

[State -2, Assert: No Music]
type = AssertSpecial
trigger1 = StateNo = 190
trigger1 = RoundState < 2
flag = NoMusic

[State -2, StopSnd]
type = StopSnd
trigger1 = RoundState = 2
channel = 5

[State -2, Lv3 Super Finish Detection]
type = VarSet
triggerAll = !(Enemy, Alive)
trigger1 = StateNo = [3300,3399]
var(11) = 1
ignoreHitPause = 1

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
triggerAll = !NumTarget(1100)
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

[State -2, Hit Sparks (Cyber Lariat, Opponent Behind)]
type = Helper
triggerAll = MoveContact = 1 && var(30) = HitPauseTime
triggerAll = NumTarget(1100)
trigger1 = MoveHit = 1 && NumEnemy
trigger1 = var(33) = 8010 || var(33) = 8011 || var(33) = 8012 || var(33) = 8013 || var(33) = 8014 || var(33) = 8001
trigger2 = MoveGuarded = 1 && NumEnemy
trigger2 = var(34) = 8000 || var(34) = 8001
helperType = Normal
stateNo = ifElse(MoveGuarded, var(34), var(33))
ID = 8000
name = "Spark"
postype = P1
pos = ifElse(P2Dist x >= 0, 0, ifElse(P2Dist x >= var(35), ceil(P2Dist x), var(35))), var(36)
facing = 1
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
trigger2 = MoveContact = 1 && NumTarget(1232)
trigger2 = !(Target, HitShakeOver) && (Target, Time <= 1)
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

[State -2, VarSet]
type = VarSet
trigger1 = 1
var(24) = IfElse(Facing = -1, 1, 0)

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
ignoreHitPause = 1

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

[State -2, Voice Position]
type = SndPan
trigger1 = 1
channel = 0
pan = 0
ignoreHitPause = 1

[State -2, KO Sound Variable]
type = VarSet
triggerAll = StateNo != 5950
trigger1 = Alive && var(41) > 0
trigger2 = !Alive && var(41) < 2
var(41) = ifElse(Alive, 0, var(41) + 1)
ignoreHitPause = 1

;Resurrection
[State -2, PowerSet]
type = PowerSet
TriggerAll = !var(47)
trigger1 = var(45) = 2
trigger1 = !NumPartner
value = 0

[State -2, ChangeState]
type = ChangeState
TriggerAll = RoundState >= 2 && RoundState < 3
TriggerAll = StateNo = 5110
TriggerAll = AILevel || !AILevel
trigger1 = var(45) = 1
trigger1 = Alive
trigger1 = !AnimTime
value = 3400
ctrl = 0

[State -2, ChangeState]
type = ChangeState
TriggerAll = RoundState >= 2 && RoundState < 3
TriggerAll = MoveType != H
TriggerAll = AILevel || !AILevel
trigger1 = var(45) = 1
trigger1 = Alive
value = 5951
ctrl = 0

[State -2, VarSet]
type = VarSet
trigger1 = RoundState < 2
var(45) = 0

[State -2, Pause]
type = Pause
trigger1 = var(45) = 1
trigger1 = Alive
trigger1 = MoveType = H
trigger1 = Time%2 = 0
trigger1 = GetHitVar(HitShakeTime) = 0
time = 1

[State -2, LifeSet]
type = LifeSet
trigger1 = RoundState < 0;RoundState >= 2 && RoundState < 3
trigger1 = Life > var(46)
value = var(46)
ignorehitpause = 1

[State -2, LifeAdd]
type = LifeAdd
trigger1 = Power >= PowerMax
trigger1 = var(45) != 2
trigger1 = Alive
;trigger1 = movetype = H
trigger1 = StateNo != [760,763]
trigger1 = GetHitVar(Fall.Kill) = 1
trigger1 = Life <= 0 || GetHitVar(Damage) >= Life
trigger1 = var(45):= 1
value = 1
ignorehitpause = 1

[State -2, AssertSpecial]
type = AssertSpecial
triggerall = Enemy, Life != 0 && var(45) != 2
trigger1 = Power = PowerMax
trigger2 = RoundState < 2
flag = NoKO

[State -2, Life]
type = VarSet
triggerall = var(46) = [0,100]
triggerall = Time = 1
trigger1 = RoundNo = 1
trigger2 = RoundsExisted = 0
var(46) = Const(Data.Life)

;Palette - Small Portrait

[State -2, RemapPal: Switch]
type = RemapPal
triggerall = 1
trigger1 = var(0) = [1,100]
source = 4,1
dest = 1, Var(0)

[state -2, RemapPal: Glowing Palette Effect]
type = RemapPal
trigger1 = var(1) = 1
trigger1 = StateNo != 5900
trigger1 = StateNo != [190,192]
trigger1 = var(0) != [30,100]
source = 4, 1
dest = var(0) + 100, ceil(abs(6 * cos(gametime * pi / 100)))

;Palette - Gill
[State -2, RemapPal: Switch]
type = RemapPal
triggerall = 1
trigger1 = StateNo != 5900
trigger1 = StateNo != [190,192]
trigger1 = var(0) = [50,100]
source = 1,1
dest = 1, Var(0)

[State -2, RemapPal: Switch]
type = RemapPal
triggerall = 1
trigger1 = StateNo != 5900
trigger1 = StateNo != [190,192]
trigger1 = var(0) != [50,100]
source = 1,1
dest = 1+(Facing=-1),Var(0)

[State -2, RemapPal: Clothes]
type = RemapPal
triggerall = 1
trigger1 = StateNo != 5900
trigger1 = var(0) = [1,100]
source = 3, 1
dest = 3, Var(0)

[state -2, RemapPal: Glowing Palette Effect]
type = RemapPal
trigger1 = var(1) = 1
trigger1 = StateNo != 5900
trigger1 = StateNo != [190,192]
trigger1 = var(0) != [30,100]
source = 1, 1
dest = (var(0)+100)+((facing = -1)*100), ceil(abs(6 * cos(gametime * pi / 100)))

[state -2, Glowing Palette Effect : Heaven's Will]
type = RemapPal
trigger1 = var(1) = 1
trigger1 = StateNo != 5900
trigger1 = StateNo != [190,192]
trigger1 = var(0) = 58
source = 1, 1
dest = (var(0)+100), ceil(abs(6 * cos(gametime * pi / 100)))

[state -2, Glowing Palette Effect : Saiki]
type = RemapPal
trigger1 = var(1) = 1
trigger1 = StateNo != 5900
trigger1 = StateNo != [190,192]
trigger1 = var(0) = 90
source = 1, 1
dest = (var(0)+100), ceil(abs(4 * cos(gametime * pi / 200)))

[State -2, Debug]
type = DisplayToClipboard
trigger1 = 1
text = "AI = %d Attack = %f Hits = %d Juggle = %d Res = %d"
params = AILevel, fvar(11), var(13), var(15), var(45)
ignoreHitPause = 1

[State -2, Debug]
type = AppendToClipboard
trigger1 = 1
text = "\nBy Froz"
ignoreHitPause = 1

;
;-3 STATES=
;
[StateDef -3]

[State -3, GameTime]
type = VarSet
trigger1 = 1
var(58) = GameTime
ignoreHitPause = 1

[State -3, ProjContact Reset]
type = VarSet
triggerAll = var(18)
trigger1 = (StateNo != [1000,1050]) && (StateNo != [3000,3050])
var(18) = 0

[State -3, Projectile Flag Off]
type = VarSet
trigger1 = 1
var(39) = 0
ignoreHitPause = 1

[State -3, Projectile Flag On]
type = VarSet
triggerAll = var(20) <= 0
triggerAll = NumHelper(1005)
trigger1 = Helper(1005), StateNo = 1005
trigger2 = Helper(1005), StateNo = 1055
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
trigger2 = var(20) && (StateNo != [1100,1199]) && StateType != A && (MoveContact || var(18))
trigger3 = var(20) && (StateNo = [1000,1099]) && StateType != A && (MoveContact || var(18))
trigger4 = var(20) && (StateNo = [1200,2999]) && StateType != A && (MoveContact || var(18))
var(4) = 1
ignoreHitPause = 1

[State -3, Special Cancel Reset]
type = VarSet
trigger1 = 1
var(6) = 0
ignoreHitPause = 1

[State -3, Special Cancel Check]
type = VarSet
trigger1 = var(20) && (StateNo = [200,699])
trigger2 = var(20) && (StateNo = [1000,2999]) && (MoveContact || var(18))
trigger3 = (StateNo = [200,699]) && Time <= 2
trigger4 = StateNo = 200 && MoveContact
trigger5 = StateNo = 210 && AnimElemTime(4) < 0
trigger6 = StateNo = 225 && AnimElemTime(5) < 0
trigger7 = StateNo = 230 && MoveContact
trigger8 = StateNo = 245 && AnimElemTime(7) < 0
trigger9 = StateNo = 400 && MoveContact
trigger10 = StateNo = 410 && AnimElemTime(6) >= 0
trigger11 = StateNo = 420 && AnimElemTime(3) >= 0 && MoveContact
trigger12 = StateNo = 430 && MoveContact
trigger13 = StateNo = 1100 && AnimElemTime(15) >= 0
trigger14 = StateNo = 1205 && AnimElemTime(4) >= 0
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
trigger5 = StateNo = 210 && (AnimElemTime(6) < 0 || (MoveContact = [1,8]))
trigger6 = StateNo = 225 && (AnimElemTime(7) < 0 || (MoveContact = [1,8]))
trigger7 = StateNo = 230
trigger8 = StateNo = 245 && (AnimElemTime(5) < 0 || (MoveContact = [1,8]))
trigger9 = StateNo = 400
trigger10 = StateNo = 410 && (AnimElemTime(5) < 0 || (MoveContact = [1,8]))
trigger11 = StateNo = 420 && AnimElemTime(4) >= 0 && MoveContact
trigger12 = StateNo = 430
trigger13 = StateNo = 440 && (AnimElemTime(6) < 0 || (MoveContact = [1,8]))
trigger14 = StateNo = 1000 && (animelemtime(11) = [1, 8])
trigger15 = StateNo = 1100 && AnimElemTime(14) >= 0 && MoveContact
trigger16 = StateNo = 1205 && AnimElemTime(1) >= 0
var(7) = 1
ignoreHitPause = 1

[State -3, Hyper Cancel Reset]
type = VarSet
trigger1 = 1
var(8) = 0
ignoreHitPause = 1

[State -3, Hyper Cancel Reset]
type = VarSet
trigger1 = StateNo = 3200 && AnimElemTime(12) >= 0 && AnimElemTime(38) < 0 && MoveContact
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

[State -3, Corner Push]
type = VarSet
trigger1 = NumTarget
trigger1 = Target, GetHitVar(HitShakeTime) <= 0
fvar(5) = fvar(5) * 0.85

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
trigger3 = StateNo = 5983
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
trigger1 = (StateNo = 3000 || StateNo = 3100 || StateNo = 3200) && Time = 43
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
trigger2 = StateNo = 3150 && Time = 43
trigger3 = StateNo = 3250 && Time = 43
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
trigger1 = StateNo = 3300 && Time = 43
trigger2 = StateNo = 3305 && AnimElemTime(2) < 0
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
trigger4 = (StateNo = [3000,4999])
trigger5 = StateNo = 5983 && AnimElemTime(3) < 0
time = 2

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
trigger3 = StateNo = 813 && (AnimElemTime(2) = [0, 1])
trigger4 = StateNo = 820 && (AnimElemTime(21) = [0, 1])
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
trigger2 = (StateNo = [3000,3050])
trigger2 = var(23) := 3000
trigger3 = StateNo = 3103 || StateNo = 3153
trigger3 = var(23) := 3100
trigger4 = (StateNo = [3200,3299])
trigger4 = var(23) := 3200
trigger5 = StateNo = 3300
trigger5 = var(23) := 3300
trigger6 = NumHelper(3505) || NumHelper(3515)
trigger6 = var(23) := 3500
trigger7 = NumHelper(3555) || NumHelper(3565)
trigger7 = var(23) := 3600
helperType = Normal
stateNo = 8600
ID = 8600
name = "Super Finish"
posType = Left
pos = 160,-120
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1
