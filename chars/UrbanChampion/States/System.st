; ________________________________________________
;| Urban Champion by NovaMagnolia 			|
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==
;=SYSTEM STATES==
;==

;---------------------------------------------------------------------------
; Idle
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
triggerall = var(40) < 2
trigger1 = Anim != Cond(var(40),2,0) && Anim != 5
trigger2 = Anim = 5 && !AnimTime
value = Cond(var(40),2,0)

[State 0, MESSATSU ChangeAnim]
type = ChangeAnim
triggerall = var(40) = 2
trigger1 = (Anim != 0 && Anim != 2) && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
trigger3 = Anim = 2 && P2BodyDist X < 100
trigger4 = Anim = 0 && P2BodyDist X >= 100
value = Cond(P2BodyDist X >= 100, 2, 0)

[State 0, Skywalker]
type = ChangeState
triggerall = pos y < 0
trigger1 = !NumEnemy
trigger2 = NumEnemy = 1
trigger2 = (enemy,name = "M -NES Game 1" + enemy,name = "M -NES Game 2" + enemy,name = "M -GB Game 1" + Enemy, AuthorName = "Bane84") < 2
trigger3 = Numenemy >= 2
trigger3 = (Enemy(0), Name = "M -NES Game 1" + Enemy(0), Name = "M -NES Game 2" + Enemy(0), Name = "M -GB Game 1" + Enemy(0), AuthorName = "Bane84") < 2
trigger3 = (Enemy(1), Name = "M -NES Game 1" + Enemy(1), Name = "M -NES Game 2" + Enemy(1), Name = "M -GB Game 1" + Enemy(1), AuthorName = "Bane84") < 2
value = 50

[State 0, Dead]
type = ChangeState
trigger1 = !Alive
value = 5050

;==CROUCHING==
;Stand to Crouch
[StateDef 10]
type = C
physics = C
moveType = I
velSet = 0,0
sprPriority = 0

[State 10, Reversed Commands: change to jumping]
type = ChangeState
trigger1 = !Time
trigger1 = (NumExplod(92828282) || NumExplod(92468246)) && command = "holddown"
value = 40

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

[State 12, Reversed Commands: change to "fake" crouch state]
type = ChangeState
trigger1 = !Time
trigger1 = (NumExplod(92828282) || NumExplod(92468246)) && command = "holdup"
value = 13

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

;"Fake" crouch state (for reversed commands)
[StateDef 13]
type = C
physics = C
moveType = I
velSet = 0,0
sprPriority = 0
ctrl = 1

[State 13, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 10 && Anim != 11 && Anim != 141
value = 10

[State 13, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 10 && !AnimTime
trigger2 = Anim = 141 && !AnimTime
value = 11



;==WALKING==
[StateDef 20]
type = S
physics = S
moveType = I
sprPriority = 0

[State 20, VelSet]
type = VelSet
triggerall = !AILevel
trigger1 = !NumExplod(94646464) && !NumExplod(92468246)
trigger1 = command = "holdfwd"
trigger2 = NumExplod(94646464) || NumExplod(92468246)
trigger2 = command = "holdback"
x = const(velocity.walk.fwd.x)

[State 20, VelSet]
type = VelSet
trigger1 = AILevel
x = const(velocity.walk.fwd.x)

[State 20, VelSet]
type = VelSet
triggerall = !AILevel
trigger1 = !NumExplod(94646464) && !NumExplod(92468246)
trigger1 = command = "holdback"
trigger2 = NumExplod(94646464) || NumExplod(92468246)
trigger2 = command = "holdfwd"
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



;==JUMPING==
;Jumping
[StateDef 40]
type = S
physics = S
moveType = I
ctrl = 0
velSet = 0,0
sprPriority = 1
faceP2 = 1

[State 40, Kick out AI]
type = ChangeState
trigger1 = !Time && AILevel
value = 20
ctrl = 1

[State 40, Reversed Commands: change to "fake" crouch state]
type = ChangeState
trigger1 = !Time
trigger1 = (NumExplod(92828282) || NumExplod(92468246)) && command = "holdup"
value = 13

[State 40, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 40 

[State 40, Direction]
type = VarSet
trigger1 = !AILevel
trigger1 = !NumExplod(94646464) && !NumExplod(92468246)
sysvar(1) = ifElse(!Time, 0, ifElse(command = "holdfwd", 1, ifElse(command = "holdback", -1, sysvar(1))))

[State 40, Direction (Reversed Commands)]
type = VarSet
trigger1 = !AILevel
trigger1 = NumExplod(94646464) || NumExplod(92468246)
sysvar(1) = ifElse(!Time, 0, ifElse(command = "holdback", 1, ifElse(command = "holdfwd", -1, sysvar(1))))

[State 40, Direction (AI)]
type = VarSet
trigger1 = AILevel
sysvar(1) = ifElse(var(56), 1, ifElse((EnemyNear, MoveType != A || BackEdgeBodyDist <= 10), 1, ifElse((EnemyNear, MoveType = A), -1, 0)))

[State 40, High Jump]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse(command = "highjump", 3, 0)
var(3) = ifElse(NumExplod(90000408), 3, 0)

[State 40, High Jump (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(3) = ifElse(var(56), 0, ifElse((P2BodyDist x >= 150), 3, 0))

[State 40, High Jump]
type = VarSet
trigger1 = !Time && PrevStateNo = 100
var(3) = 3

[State 40, Low Jump]
type = VarSet
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && command != "holdup" && (var(3) != [1,2])
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && command != "holddown" && (var(3) != [1,2])
var(3) = ifElse((var(3) = 3 && sysvar(1)), 2, 1)

[State 40, Low Jump (AI)]
type = VarSet
trigger1 = AILevel && (var(3) != [1,2])
trigger1 = ((EnemyNear, StateType = C) && Random < 500) || var(56)
var(3) = ifElsE(var(56), ifElse(P2BodyDist x > 75, 2, 1), ifElse((var(3) = 3 && sysvar(1) && P2BodyDist x > 50), 2, 1))

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
y = 0.75 * const(velocity.runjump.y)

[State 40, Velocity: Long Jump]
type = VelSet
trigger1 = !AnimTime && var(3) = 3
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = const(velocity.runjump.y)

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
value = ifElse(!vel x , 41, ifElse(vel x > 0, 42, 43)) ;+ 10 * (var(3) = [1,2])
persistent = 0

[State 50, 3]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

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
trigger1 = Time > 1 || PrevStateNo != 40

[State 50, VelAdd]
type = VelAdd
trigger1 = vel x
trigger1 = Time > 1 || PrevStateNo != 40
x = ifElse((var(3) = [2,3]), -0.04091742318, -0.02727828212) * ifElse(vel x < 0, -1, 1)

[State 3101, AI End]
type = ChangeState
trigger1 = time >= 9 && PrevStateNo = 55 && AILevel >= 6
value = 610

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
trigger1 = Time > 0

[State 51, VelAdd]
type = VelAdd
trigger1 = vel x
trigger1 = Time >= 1 || PrevStateNo != 40
x = ifElse((var(3) = [2,3]), -0.04091742318, -0.02727828212) * ifElse(vel x < 0, -1, 1)

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
trigger1 = (PrevStateNo = [600, 699])
value = 57

[State 52, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 52, CtrlSet]
type = CtrlSet
trigger1 = !Time && (PrevStateNo != [600, 699])
trigger2 = Time = 1 && Anim != 57
value = 1

[State 52, ChangeState to Guarding]
type = ChangeState
;ctrl && command = "holdback"
trigger1 = ctrl && (ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2dist x < 0, command = "holdfwd", command = "holdback"), ifElse(P2dist x < 0, command = "holdback", command = "holdfwd")))
trigger1 = InGuardDist && (PrevStateNo != [600, 699])
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

;High Jump Cancel
[StateDef 55]
type = S
physics = S
moveType = I
anim = 40
ctrl = 0
velSet = 0,0
sprPriority = 1
faceP2 = 1

[State 55, Juggle Reset]
type = VarSet
trigger1 = !Time
var(15) = 0

[State 55, Direction]
type = VarSet
trigger1 = !AILevel
trigger1 = !NumExplod(94646464) && !NumExplod(92468246)
sysvar(1) = ifElse(!Time, 0, ifElse(command = "holdfwd", 1, ifElse(command = "holdback", -1, sysvar(1))))

[State 55, Direction (Reversed Commands)]
type = VarSet
trigger1 = !AILevel
trigger1 = NumExplod(94646464) || NumExplod(92468246)
sysvar(1) = ifElse(!Time, 0, ifElse(command = "holdback", 1, ifElse(command = "holdfwd", -1, sysvar(1))))

[State 55, Direction (AI)]
type = VarSet
trigger1 = AILevel
sysvar(1) = 1

[State 55, High Jump]
type = VarSet
trigger1 = !Time
var(3) = 3

[State 55, Jump Sound]
type = PlaySnd
trigger1 = !AnimTime
value = 41, 0

[State 55, Dust Helper]
type = Helper
trigger1 = !AnimTime
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 55, Velocity: Long Jump]
type = VelSet
trigger1 = !AnimTime && var(3) = 3
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = ifElse(!sysvar(1), const(velocity.runjump.y), ifElse(sysvar(1) = 1, -9.140625, -9.453125))

[State 3101, End]
type = ChangeState
trigger1 = !AnimTime
value = 50
ctrl = 1

;==RUN=
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
trigger1 = (AnimElem = 2 || AnimElem = 4)
value = 100, ifElse((AnimElem = 2), 0, 1)

[State 100, Jump]
type = ChangeState
triggerAll = !AILevel
trigger1 = !NumExplod(92828282) && !NumExplod(94646464) && !NumExplod(92468246)
trigger1 = command = "holdfwd" && command = "holdup"
trigger2 = NumExplod(92828282)
trigger2 = command = "holdfwd" && command = "holddown"
trigger3 = NumExplod(94646464)
trigger3 = command = "holdback" && command = "holdup"
trigger4 = NumExplod(92468246)
trigger4 = command = "holdback" && command = "holddown"
value = 40

[State 100, Jump (AI)]
type = ChangeState
trigger1 = AILevel && Random < 25
value = 40

[State 100, End]
type = ChangeState
trigger1 = !NumExplod(94646464) && !NumExplod(92468246)
trigger1 = !AILevel && command != "holdfwd"
trigger2 = NumExplod(94646464) || NumExplod(92468246)
trigger2 = !AILevel && command != "holdback"
trigger3 = AILevel && (((EnemyNear, StateNo = 5120 || (EnemyNear, StateNo = [5200, 5201])) && EnemyNear, AnimTime > -15 && P2BodyDist x < 50) || (P2Dist x = [0, 15]) || (facing = EnemyNear, facing))
trigger4 = AILevel && InGuardDist
value = 101


;Stop Running
[StateDef 101]
type = S
physics = N
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

[State 101, VelAdd]
type = VelAdd
trigger1 = 1
x = -0.40734147226

[State 101, Jump]
type = ChangeState
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && command = "holdup"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && command = "holddown"
value = 40

[State 101, End]
type = ChangeState
trigger1 = !AnimTime
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
value = ifElse(command = "holddown", 10, 0)
ctrl = 1

[State 101, End (Reversed Commands)]
type = ChangeState
trigger1 = !AnimTime
trigger1 = NumExplod(92828282) || NumExplod(92468246)
value = ifElse(command = "holdup", 10, 0)
ctrl = 1



;==DASH BACKWARDS==
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

[State 105, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 0
x = 0.08729050279
y = 0.78125

[State 105, End]
type = ChangeState
trigger1 = AnimElemTime(2) > 0
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



;=DASH FORWARD=
[StateDef 110]
type = A
physics = N
moveType = I
ctrl = 0
sprPriority = 1

[State 110, AI ChangeState]
type = ChangeState
trigger1 = roundstate = 3 && AILevel
value = 0
ctrl = 1

[State 110, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 110

[State 110, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 2
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
triggerAll = AnimElemTime(2) <= 0 && !AILevel
trigger1 = !NumExplod(94646464) && !NumExplod(92468246)
trigger1 = command != "holdfwd"
trigger2 = NumExplod(94646464) || NumExplod(92468246)
trigger2 = command != "holdback"
sysvar(1) = 0

[State 110, VarSet -> Not Running (AI)]
type = VarSet
triggerAll = AnimElemTime(2) <= 0 && AILevel >= 5
trigger1 = enemynear,movetype = H && (enemynear,statetype = A || enemynear,statetype = L)
sysvar(1) = 0

[State 110, ChangeState to Running]
type = ChangeState
trigger1 = AnimElemTime(2) = 0 && sysvar(1)
value = 100

[State 110, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 7.2625698324
y = -4.05027932961

[State 110, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 0
x = -0.08729050279
y = 0.78125

[State 110, End]
type = ChangeState
trigger1 = AnimElemTime(2) > 0
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

[State 111, AI End]
type = ChangeState
triggerall = p2bodydist x > 50
trigger1 = AILevel >= 6 && enemynear,movetype = H && enemynear,stateno != 5120 && roundstate = 2
value = 110

[State 111, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; AI Idle Wait
[StateDef 500]
type = S
physics = S
moveType = I
velSet = 0,0
sprPriority = 0

[State 0, AI VarSet]
type = VarSet
trigger1 = !Time
var(10) = (PrevStateNo + var(10)*(PrevStateNo = [1200,1299]))

[State 0, lmao powercharge]
type = ChangeState
trigger1 = !Time && roundstate = 2
trigger1 = power < const(data.power) && power < PowerMax && !var(20) && !var(50)
value = 730

[State 0, Remove Explods]
type = RemoveExplod
trigger1 = IsHelper

[State 0, Destroy Helpers]
type = DestroySelf
trigger1 = IsHelper

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != Cond(var(40),2,0) && Anim != 5
trigger2 = Anim = 5 && !AnimTime
value = Cond(var(40),2,0)

[State 0, Skywalker]
type = ChangeState
triggerall = pos y < 0
trigger1 = !NumEnemy
trigger2 = NumEnemy = 1
trigger2 = (enemy,name = "M -NES Game 1" + enemy,name = "M -NES Game 2" + enemy,name = "M -GB Game 1" + Enemy, AuthorName = "Bane84") < 2
trigger3 = Numenemy >= 2
trigger3 = (Enemy(0), Name = "M -NES Game 1" + Enemy(0), Name = "M -NES Game 2" + Enemy(0), Name = "M -GB Game 1" + Enemy(0), AuthorName = "Bane84") < 2
trigger3 = (Enemy(1), Name = "M -NES Game 1" + Enemy(1), Name = "M -NES Game 2" + Enemy(1), Name = "M -GB Game 1" + Enemy(1), AuthorName = "Bane84") < 2
value = 50

[State 0, Combo DP]
type = ChangeState
trigger1 = var(10) = 1202 && time = 10
trigger2 = var(10) = 1035 && time = 10
value = 1100

[State 0, Target Dropped]
type = ChangeState
trigger1 = !NumTarget
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Dodge
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
trigger1 = !Time
value = 4, 0
channel = 0

[State 700, Dodge Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 3
channel = 1

[State 700, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 700, HitBy]
type = HitBy
trigger1 = AnimElemTime(4) < 0
value = SCA, AT
time = 1

[State 700, Attack]
type = ChangeState
trigger1 = !AILevel && Time = [15, 25]
;command = "x" || command = "y" || command = "z" || command = "a" || command = "b" || command = "c"
trigger1 = NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220) || NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
;ifElse((command = "x" || command = "y" || command = "z"), 220, 245)
value = ifElse((NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)), 220, 255)

[State 700, Attack (AI)]
type = ChangeState
trigger1 = AILevel && (Time = [15, 25]) && NumEnemy
trigger1 = (EnemyNear, MoveType != A) && (P2BodyDist x = [-60, 60]) && (P2Dist y >= -60)
value = ifElse(Random < 333,220, 255)

[State 700, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;---------------------------------------------------------------------------
; Roll Forward
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
trigger1 = AnimElemTime(10) < 0
value = SCA, AT
time = 1

[State 710, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, 1
channel = 0

[State 710, Roll Sound]
type = PlaySnd
trigger1 = !Time
value = 110, 0
channel = 1

[State 710, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 4.46927374302

[State 710, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 0

[State 710, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;---------------------------------------------------------------------------
; Roll Backward
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
trigger1 = AnimElemTime(10) < 0
value = SCA,AT
time = 1

[State 715, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, 1
channel = 0

[State 715, Roll Sound]
type = PlaySnd
trigger1 = !Time
value = 110,0
channel = 1

[State 715, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = -3.91061452514

[State 715, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 0

[State 715, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;---------------------------------------------------------------------------
; Power Charge
[StateDef 730]
type = S
physics = S
moveType = I
anim = 730 + 10000*Cond(var(40) = 2,random%2,var(40) = 1)
velSet = 0,0
ctrl = 0

[State 730, PowerAdd]
type = PowerAdd
triggerAll = Power < const(data.power) && Power < PowerMax
trigger1 = !AILevel && (command = "holdb" && command = "holdy")
trigger2 = AILevel
value = 2 + ifElse(time < 60, 0, (time - 60) / 12)

[State 730, Voice]
type = PlaySnd
trigger1 = !Time
value = 3000,0
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
pos = -20, 0
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
trigger1 = Cond(numhelper(90000005),helper(90000005),var(58) = 0,1)
trigger2 = !AILevel && (command != "holdb" || command != "holdy")
;trigger3 = AILevel && (InGuardDist || P2BodyDist x <= 120) && PrevStateNo != 500
value = 731
ctrl = 1

[State 730, AI End]
type = ChangeState
triggerall = AILevel
trigger1 = Power >= const(data.power) || Power >= PowerMax || RoundState != 2
trigger2 = (EnemyNear, StateNo = 5120 && EnemyNear, AnimTime = -4 || p2bodydist x <= 120 && enemynear,movetype != H && enemynear,stateno != 5120 || inguarddist)
trigger3 = var(10) = 1202 && time = 10
trigger4 = var(10) = 1035 && time = 10
trigger5 = var(10) = 1630 && Cond(NumTarget(1630),(Target(1630),stateno = 1648 && Target(1630),time >= 25),0)
value = 731
ctrl = 1

;---------------------------------------------------------------------------
; Power Charge End
[StateDef 731]
type = S
physics = S
moveType = I
anim = anim + 1
velSet = 0,0
ctrl = 1

[State 731, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 0

[State 731, Full Power Voice]
type = PlaySnd
trigger1 = !Time && Power >= const(data.power)
value = S3600,0
channel = 0
persistent = 0

[State 731, AI DP / Dash Punch Followup]
type = ChangeState
trigger1 = var(40) != 1 || (var(48) != 0 || var(50))
trigger1 = (var(10) = 1202 || var(10) = 1035 || var(10) = 1630) && !time
value = Cond((var(40) = 0 || var(40) = 2 && random > 500 && (var(48) != 0 || var(50))),1100,1600)

[State 730, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;---------------------------------------------------------------------------
; Zero Counter
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
;(command = "412k")
var(10) = NumExplod(90000230) || NumExplod(90000235) || NumExplod(90000240) || NumExplod(90000245) || NumExplod(90000250) || NumExplod(90000255)
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
value = 195,0
channel = 0

[State 750, Zero Counter FX Helper]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8350
ID = 8350
name = "Zero Counter"
posType = P1
pos = 20, -65
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
value = ifElse(var(10) = 1, 2910, 2900 + 5*(var(40) = 1))

;==PARRY==
;Standing Parry
[StateDef 760]
type = S
physics = S
moveType = I
anim = 760
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = 78 * !var(50)
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
value = 195,0
channel = 0

[State 760, Parry Sound]
type = PlaySnd
trigger1 = !Time
value = 760, 0
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
pos = 32, -82
pauseMoveTime = -1
superMoveTime = -1
scale = 0.5,0.5
ownPal = 1

[State 760, EnvShake]
type = EnvShake
trigger1 = !Time
time = 0
ampl = 0

[State 900, AI End]
type = ChangeState
trigger1 = AILevel >= 5 && NumEnemy
trigger1 = !AnimTime && (Abs(P2BodyDist X) <= 30 + 7*(p2statetype = S || var(40) != 1))
value = Cond((Abs(P2BodyDist X) <= 30),225 + 30*(p2statetype = C),420)

[State 900, 2010 End]
type = ChangeState
trigger1 = AILevel >= 5 && NumEnemy && var(40) > 0
trigger1 = !AnimTime && (p2bodydist x = [-10,Cond(p2statetype = S,100,29.9)])
trigger1 = var(40) = 1 || p2statetype = S
value = Cond(P2BodyDist x >= 30 && p2statetype != C,1400,1500) 

[State 900, AI End]
type = ChangeState
trigger1 = AILevel >= 5 && NumEnemy
trigger1 = !AnimTime && (p2bodydist x = [-10,47])
value = 200 + 200*(p2statetype = C)

[State 900, AI End]
type = ChangeState
trigger1 = AILevel >= 6 && NumEnemy
trigger1 = !AnimTime && (p2bodydist x = [-10,72])
value = Cond(p2bodydist x < 64 && power <= 1000, 450,210)

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
powerAdd = 78 * !var(50)
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

[State 760, Voice]
type = PlaySnd
trigger1= !Time
value = 195,0
channel = 0

[State 760, Parry Sound]
type = PlaySnd
trigger1 = !Time
value = 760, 0
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
pos = 27, -64
pauseMovetime = -1
superMovetime = -1
scale = 0.5,0.5
ownpal = 1

[State 761, EnvShake]
type = EnvShake
trigger1 = !Time
time = 0
ampl = 0

[State 900, AI End]
type = ChangeState
trigger1 = AILevel >= 5 && NumEnemy
trigger1 = !AnimTime && (Abs(P2BodyDist X) <= 30 + 7*(p2statetype = S || var(40) != 1))
value = Cond((Abs(P2BodyDist X) <= 30),225 + 30*(p2statetype = C),420)

[State 900, 2010 End]
type = ChangeState
trigger1 = AILevel >= 5 && NumEnemy && var(40) > 0
trigger1 = !AnimTime && (p2bodydist x = [-10,Cond(p2statetype = S,100,29.9)])
trigger1 = var(40) = 1 || p2statetype = S
value = Cond(P2BodyDist x >= 30 && p2statetype != C,1400,1500) 

[State 900, AI End]
type = ChangeState
trigger1 = AILevel >= 5 && NumEnemy
trigger1 = !AnimTime && (p2bodydist x = [-10,47])
value = 200 + 200*(p2statetype = C)

[State 900, AI End]
type = ChangeState
trigger1 = AILevel >= 6 && NumEnemy
trigger1 = !AnimTime && (p2bodydist x = [-10,72])
value = Cond(p2bodydist x < 64 && power <= 1000, 450,210)

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
powerAdd = 78 * !var(50)
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

[State 760, Voice]
type = PlaySnd
trigger1= !Time
value = 195,0
channel = 0

[State 760, Parry Sound]
type = PlaySnd
trigger1 = !Time
value = 760, 0
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
pos = 32, -85
pauseMoveTime = -1
superMoveTime = -1
scale = 0.5,0.5
ownpal = 1

[State 762, EnvShake]
type = EnvShake
trigger1 = !Time
time = 0
ampl = 0

[State 900, AI End]
type = ChangeState
trigger1 = AILevel && NumEnemy
trigger1 = !AnimTime && (p2bodydist x = [-10,72])
value = Cond(pos y < -45, 650, 640)

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
trigger1 = Time > 0

[State 763, Landing]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;==CUSTOM COMBO==
;Ground Version
[StateDef 900]
type = S
physics = S
moveType = A
anim = 900 + 10000*Cond(var(40) = 2,random%2,var(40) = 1)
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = -1000

[State 900, VarSet]
type = VarSet
trigger1 = !time
var(10) = (Anim = 10900)

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
trigger1 = Time = 4
value = 900, 1
channel = 0

[State 900, Custom Combo FX Helper]
type = Helper
trigger1 = Time = 4
helperType = Normal
stateNo = 8400
ID = 8400
name = "Custom Combo FX"
posType = P1
pos = Cond(var(10),-10,50), Cond(var(10),-40,-60)
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

[State 900, AI End]
type = ChangeState
trigger1 = AILevel && NumEnemy
trigger1 = !AnimTime
value = Cond(AILevel > 6,440,250 + (Abs(P2BodyDist X) <= 30) * 5)

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
anim = 905 + 10000*Cond(var(40) = 2,random%2,var(40) = 1)
ctrl = 0
sprPriority = 2
powerAdd = -1000

[State 905, VarSet]
type = VarSet
trigger1 = !time
var(10) = (Anim = 10905)

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
value = 900, 1
channel = 0

[State 905, Custom Combo FX Helper]
type = Helper
trigger1 = Time = 4
helperType = Normal
stateNo = 8400
ID = 8400
name = "Custom Combo Startup"
posType = P1
pos = Cond(var(10),30,50), Cond(var(10),-20,-63)
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
trigger1 = Time > 0

[State 906, Land]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;==TARGET SAFE FALL==
[StateDef 5205]
type = A
physics = N
moveType = H

[State 5205, ChangeAnim]
type = ChangeAnim
trigger1 = !AnimTime
trigger1 = Anim = 5035
value = 5050

[State 5205, VelAdd]
type = VelAdd
trigger1 = Time > 0
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



;==FALL RECOVERY==
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
trigger1 = Time > 0
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
trigger1 = !Time
y = 0

[State 5201, VelSet]
type = VelSet
trigger1 = !Time
x = -4.46927374302
y = 0

[State 5201, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, 1
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
time = 10

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
trigger1 = AnimElemTime(6) < 0
value = SCA
time = 1

[State 5201, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 0

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
trigger1 = Time > 0
y = 0.6

[State 5210, VelSet]
type = VelSet
trigger1 = !Time
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
x = ifElse((command = "holdfwd" && command != "holdback"), 4.05027932961, ifElse((command != "holdfwd" && command = "holdback"), -4.05027932961, 0))
y = -7.5

[State 5210, VelSet (Reversed commands)]
type = VelSet
trigger1 = !Time
trigger1 = NumExplod(92828282) || NumExplod(92468246)
x = ifElse((command = "holdback" && command != "holdfwd"), 4.05027932961, ifElse((command != "holdback" && command = "holdfwd"), -4.05027932961, 0))
y = -7.5

[State 5210, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, 1
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
trigger1 = AnimElemTime(5) < 0
value = SCA
time = 1

[State 5210, CtrlSet]
type = CtrlSet
trigger1 = AnimElemTime(5) >= 0
value = 1

[State 5210, Land]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52



;=GUARD==
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
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = S && command = "holdup"
trigger3 = AILevel && StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 120, Crouching to Stand]
type = StateTypeSet
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = C && command != "holdup"
trigger3 = AILevel && StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
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
trigger1 = !AILevel && (ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2dist x < 0, command != "holdfwd", command != "holdback"), ifElse(P2dist x < 0, command != "holdback", command != "holdfwd")))
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
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = S && command = "holdup"
trigger3 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
value = 131

[State 130, Stop Guarding]
type = ChangeState
trigger1 = !AILevel && (ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2dist x < 0, command != "holdfwd", command != "holdback"), ifElse(P2dist x < 0, command != "holdback", command != "holdfwd")))
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
trigger1 = Anim != 131
value = 131

[State 131, Crouching to Standing]
type = ChangeState
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = C && command != "holdup"
trigger3 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger3 = (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
value = 130

[State 131, AI Fix]
type = CtrlSet
trigger1 = AILevel && NumEnemy
value = (EnemyNear, Time >= 120 || Time >= 180)

[State 131, Stop Guarding]
type = ChangeState
trigger1 = !AILevel && (ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2dist x < 0, command != "holdfwd", command != "holdback"), ifElse(P2dist x < 0, command != "holdback", command != "holdfwd")))
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
trigger1 = Anim != 132
value = 132

[State 132, VelAdd]
type = VelAdd
trigger1 = Time > 0
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
trigger1 = (!AILevel && (ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2dist x < 0, command = "holdfwd", command = "holdback"), ifElse(P2dist x < 0, command = "holdback", command = "holdfwd")))) || AILevel
value = 130

[State 132, Change to Falling]
type = ChangeState
trigger1 = sysvar(0)
value = 52

[State 132, Stop Guarding]
type = ChangeState
trigger1 = !AILevel && (ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2dist x < 0, command != "holdfwd", command != "holdback"), ifElse(P2dist x < 0, command != "holdback", command != "holdfwd")))
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
trigger1 = !AILevel && StateType = S && (NumExplod(90000002) || NumExplod(90000001) || NumExplod(90000003))
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 140, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && (!NumExplod(90000002) && !NumExplod(90000001) && !NumExplod(90000003))
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
value = 151 + 2 * ((!AILevel && (NumExplod(90000002) || NumExplod(90000001) || NumExplod(90000003))) || (AILevel && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)))

[State 150, Standing to Crouching]
type = StateTypeSet
trigger1 = !AILevel && StateType = S && (NumExplod(90000002) || NumExplod(90000001) || NumExplod(90000003))
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
stateType = C
physics = C

[State 150, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && (!NumExplod(90000002) && !NumExplod(90000001) && !NumExplod(90000003))
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
trigger1 = !AILevel && StateType = S && (NumExplod(90000002) || NumExplod(90000001) || NumExplod(90000003))
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 151, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && (!NumExplod(90000002) && !NumExplod(90000001) && !NumExplod(90000003))
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
value = 151 + 2 * ((!AILevel && ((!NumExplod(92828282) && !NumExplod(92468246) && command = "holddown") || ((NumExplod(92828282) || NumExplod(92468246)) && command = "holdup"))) || (AILevel && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)))

[State 152, Standing to Crouching]
type = StateTypeSet
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = S && command = "holdup"
trigger3 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 152, Crouching to Standing]
type = StateTypeSet
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = C && command != "holdup"
trigger3 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger3 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
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
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = S && command = "holdup"
trigger3 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 153, Crouching to Standing]
type = StateTypeSet
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = C && command != "holdup"
trigger3 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger3 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
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
trigger1 = Time > 0
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
trigger1 = (!AILevel && (ifElse(!NumExplod(94646464) && !NumExplod(92468246), ifElse(P2dist x < 0, command != "holdfwd", command != "holdback"), ifElse(P2dist x < 0, command != "holdback", command != "holdfwd")))) || AILevel
value = 130

[State 155, End]
type = ChangeState
trigger1 = sysvar(0)
value = 52



;==LOSE==
[StateDef 170]
type = S
ctrl = 0
anim = 170
velSet = 0,0

[State 170, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver



;==DRAW GAME==
[StateDef 175]
type = S
ctrl = 0
velSet = 0,0

[State 175, ChangeState]
type = ChangeState
trigger1 = !Time
value = 170



;==CONTINUE?==
[StateDef 5500]
type = S
anim = 5300
velSet = 0,0
ctrl = 0

[State 5500, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5500



;==INITIALIZE==
[StateDef 5901]
type = S

[State 5900, 20] ;Change palette
type = RemapPal
trigger1 = 1
source = 1,1
dest = 1,palno

[State 5900, Vs. Ladies]
type = ChangeState
triggerAll = NumEnemy && enemy,SelfAnimExist(8055010) = 0 && enemy,SelfAnimExist(8055011) = 0 && enemy,SelfAnimExist(8055012) = 0
triggerAll = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = Enemy, Name = "Athena Asamiya" || Enemy, Name = "Athena" || Enemy, Name = "cvsathena" || Enemy, Name = "svcathena" || Enemy, Name = "nbcathena" || Enemy, Name = "Athena-Goddess"
trigger2 = Enemy, Name = "Cammy" || Enemy, Name = "cvscammy" || Enemy, Name = "Cammy White"
trigger3 = Enemy, Name = "Chun-Li" || Enemy, Name = "ChunLi" || Enemy, Name = "Chun Li" || Enemy, Name = "cvschunli" || Enemy, Name = "Tin's chunli" || Enemy, Name = "SF3 Chun Li"
trigger4 = Enemy, Name = "Rose" || Enemy, Name = "cvsrose"
trigger5 = Enemy, Name = "Rainbow Mika" || Enemy, Name = "R.Mika" || Enemy, Name = "RMika" || Enemy, Name = "R. Mika" || Enemy, Name = "Rainbow Mika By TAMAGO" || Enemy, Name = "cvsmika"
trigger6 = Enemy, Name = "Morrigan" || Enemy, Name = "Morrigan Aensland" || Enemy, Name = "cvsmorrigan" || Enemy, Name = "morrigan by ryokucha"
trigger7 = (Enemy, Name = "Lilith" || Enemy, Name = "Lilith Aensland" || Enemy, Name = "cvslilith") && Enemy,AuthorName != "ohgaki"
trigger8 = Enemy, Name = "Felicia" || Enemy, Name = "cvsfelicia" || Enemy, Name = "mvcfelicia"
trigger9 = Enemy, Name = "Q-Bee" || Enemy, Name = "Q.Bee" || Enemy, Name = "Q Bee" || Enemy, Name = "QBee" || Enemy, Name = "Q-Bee by M@PPY" || Enemy, Name = "cvsqbee"
trigger10 = Enemy, Name = "Mai" || Enemy, Name = "Mai Shiranui" || Enemy, Name = "Shiranui Mai" || Enemy, Name = "cvsmai" || Enemy, Name = "rbsmai"
trigger11 = Enemy, Name = "King" || Enemy, Name = "cvsking"
trigger12 = Enemy, Name = "Yuri Sakazaki" || Enemy, Name = "Yuri" || Enemy, Name = "cvsyuri" || Enemy, Name = "Yuri sakazaki 96" || Enemy, Name = "Yuri98"
trigger13 = Enemy, Name = "Athena Asamiya" || Enemy, Name = "Athena" || Enemy, Name = "cvsathena" || Enemy, Name = "svcathena" || Enemy, Name = "nbcathena" || Enemy, Name = "Athena-Goddess"
trigger14 = Enemy, Name = "Mature" || Enemy, Name = "cvsmature" || Enemy, Name = "[Vice]'s Mature"
trigger15 = Enemy, Name = "Vice" || Enemy, Name = "cvsvice"
trigger16 = Enemy, Name = "Chizuru" || Enemy, Name = "Chizuru Kagura"
trigger17 = Enemy, Name = "Samus" || Enemy, Name = "Samus Aran"
trigger18 = Enemy, Name = "Arcueid" || Enemy, Name = "Arcueid Brunestud"
trigger19 = Enemy, Name = "Baiken" || Enemy, Name = "Baiken_GGX"
trigger20 = Enemy, Name = "Blue Mary" || Enemy, Name = "BlueMary" || Enemy, Name = "B.Mary" || Enemy, Name = "Mary"
trigger21 = Enemy, Name = "Hisui" || Enemy, Name = "Mech-Hisui" || Enemy, Name = "MechHisui" || Enemy, Name = "Mech Hisui"
trigger22 = Enemy, Name = "Juri" || Enemy, Name = "Juri Han"
trigger23 = Enemy, Name = "Kohaku" || Enemy, Name = "Kohaku By Toshi"
trigger24 = Enemy, Name = "Kung Fu Girl"
trigger25 = Enemy, Name = "Midler"
trigger26 = Enemy, Name = "Poison"
trigger27 = Enemy, Name = "Princess Daisy" || Enemy, Name = "Daisy"
trigger28 = Enemy, Name = "Princess Peach" || Enemy, Name = "Peach"
trigger29 = (Enemy, Name = "Francesca" || Enemy,Name = "Doropie") && (Enemy,AuthorName = "FAMFIGHT" || Enemy,AuthorName = "KingPepe")
trigger30 = Enemy, Name = "Spiral" || Enemy, Name = "Spiral by Luchini" || Enemy, Name = "mvcspiral"
trigger31 = Enemy, Name = "Storm" || Enemy, Name = "[Shinta]'s Storm" || Enemy, Name = "mvcstorm"
trigger32 = Enemy, Name = "Psylocke" || Enemy, Name = "Psylocke by Qkrtkf!" || Enemy, Name = "cvspsylocke"
trigger33 = Enemy, Name = "Millia" || Enemy, Name = "Millia Rage" || Enemy, Name = "Millia_Rage"
trigger34 = Enemy, Name = "Linn" || Enemy, Name = "Linn Kurosawa" || Enemy, Name = "Lt. Kurosawa" || Enemy, Name = "Tin's Linn_Kurosawa"
trigger35 = Enemy, Name = "Shermie" || Enemy, Name = "cvsshermie"
trigger36 = Enemy, Name = "Leona" || Enemy, Name = "Leona Heidern" || Enemy, Name = "Tin's Leona"
trigger37 = Enemy, Name = "Wonder Woman" || Enemy, Name = "Wonder Woman Reloaded"
trigger38 = Enemy, Name = "Marrow" || Enemy, Name = "Angel"
trigger39 = Enemy, Name = "Jill" || Enemy, Name = "Jill Valentine" || Enemy, Name = "cvsjill"
trigger40 = Enemy, Name = "Tessa" || Enemy, Name = "Tabasa" || Enemy, Name = "MVCTabasa by ryokucha"
trigger41 = enemy,SelfAnimExist(8055002) && (enemy,SelfAnimExist(8055013) || enemy,SelfAnimExist(8055014)) && (enemy,SelfAnimExist(8055062) || enemy,SelfAnimExist(8055063) || enemy,SelfAnimExist(8055064))
;Most of these triggers were borrowed from Jmorphman's Benimaru. hooooooly shit that's so many girls
value = 192

[State 5901, Mirror Match Intro]
type = ChangeState
triggerAll = NumEnemy
triggerAll = RoundNo = 1 || (((!(Enemy, RoundsExisted) || !RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)))
trigger1 = enemy,name = "Urban Champion" && Enemy, AuthorName = "NovaMagnolia"
value = 6800 + (teamside = 2)

[State 5901, Mega Man Intro] ;Intro for round 1
type = ChangeState
trigger1 = enemynear,name = "Mega Man" && enemynear,AuthorName = "NovaMagnolia" && enemynear,roundsexisted = 0 && teamside = 2
value = 19870

[State 5901, Turns Intro]
type = ChangeState
trigger1 = TeamMode = Turns
trigger1 = !RoundsExisted && RoundNo >= 2
value = 6900

[State 5901, Intro Decider]
type = ChangeState
trigger1 = RoundNo = 1
value = 190 + random%2

[State 5901, End]
type = ChangeState
trigger1 = 1
value = 0

;---------------------------------------------------------------------------
; Punch Intro
[StateDef 190] ;All that punching's made you punch!
type = S
physics = S
anim = Cond(var(10),19870,190)
velset = 0,0

[State 190, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 220, Woosh]
type = PlaySnd
trigger1 = AnimElem = 5 || AnimElem = 11
value = 1, 2
channel = 1

[State 190, Voice]
type = PlaySnd
trigger1 = AnimElem = 16 || AnimElem = 18
value = 195,0
channel = 0

[State 190, Vs. Mega Man Life Fill]
type = LifeAdd
trigger1 = teammode != turns && enemy,teammode != turns || roundsexisted = 0
trigger1 = AnimElemTime(18) >= 0 && AnimElemTime(19) < 0
value = 100*lifemax/10000

[State 190, ChangeAnim]
type = ChangeAnim
trigger1 = life >= lifemax && anim = 19870
value = 190
elem = 19
persistent = 0

[State 190, End]
type = ChangeState
trigger1 = !AnimTime
value = 0

;---------------------------------------------------------------------------
; Walk Intro
[StateDef 191] ;Bro thinks he's Chun-Li
type = S
physics = N
anim = 20
velset = 0,0

[State 191, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 191, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 191, Camera Helper]
type = Helper
trigger1 = !NumHelper(8999)
helpertype = Normal
stateNo = 8999
ID = 8999
name = "Camera"
posType = P1

[State 191, PosSet]
type = PosSet
trigger1 = !time
x = (-320 + abs(pos x)) * Facing

[State 191, VelSet]
type = VelSet
trigger1 = !Time && anim = 20
x = const(velocity.walk.fwd.x)

[State 100, Step Sound]
type = PlaySnd
trigger1 = (AnimElem = 2 || AnimElem = 5) && anim = 20
value = 100, ifElse((AnimElem = 2), 0, 1)

[State 191, ChangeAnim]
type = ChangeAnim
trigger1 = Cond(facing = 1,pos x > ceil(Helper(8999), pos x) ,pos x < ceil(Helper(8999), pos x) )
value = 191
persistent = 0

[State 191, VelSet]
type = VelSet
trigger1 = anim = 191
x = 0
persistent = 0

[State 6901, PosSet]
type = PosSet
trigger1 = anim = 191 && NumHelper(8999)
x = ceil(Helper(8999), pos x)

[State 200, Woosh]
type = PlaySnd
trigger1 = anim = 191 && animelem = 1
value = 1, 0
channel = 1

[State 190, End]
type = ChangeState
trigger1 = !AnimTime && anim = 191
value = 0

;---------------------------------------------------------------------------
; Flirt Intro
[StateDef 192] ;All that punching's made you punch!
type = S
physics = S
anim = 192
velset = 0,0

[State 190, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 191, Flowerpot Fall]
type = Explod
trigger1 = !time
ID = 192
anim = 19200
pos = 0,-370
postype = p1
sprpriority = 5 
facing = 1
ownpal = 1
scale = const(size.xscale),const(size.yscale)
vel = 0,3.12*floor(const(size.yscale))
removetime = 90

[State 191, Flowerpot Crash]
type = Explod
trigger1 = time = 90
ID = 192
anim = 19201
pos = 0,ceil(-58*const(size.yscale))
postype = p1
sprpriority = 5 
facing = 1
ownpal = 1
scale = const(size.xscale),const(size.yscale)

[State 810, Hit Spark]
type = Helper
trigger1 = time = 90
helperType = Normal
stateNo = 8012
ID = 8001
name = "Spark"
posType = P1
pos = 0,ceil(-58*const(size.yscale))
ownPal = 1
size.xscale = 1
size.yscale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1210, EnvShake]
type = EnvShake
trigger1 = time = 90
time = 12
ampl = -4
freq = 120

[State 810, Hit Sound]
type = PlaySnd
trigger1 = time = 90
value = 2, 2
channel = 2

[State 190, Voice]
type = PlaySnd
trigger1 = AnimElem = 8 || AnimElem = 10
value = 195,0
channel = 0

[State 191, Flowerpot Fall]
type = PlaySnd
trigger1 = time = 44 || time = 90
value = S193,(time = 90)
channel = 1

[State 190, End]
type = ChangeState
trigger1 = !AnimTime
value = 0

;---------------------------------------------------------------------------
; Mirror Match Intro (P1)
[StateDef 6800]
type = S
physics = N
anim = 6800
velset = 0,0
sprpriority = 1

[State 190, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 191, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 191, Camera Helper]
type = Helper
trigger1 = !NumHelper(8999)
helpertype = Normal
stateNo = 8999
ID = 8999
name = "Camera"
posType = P1

[State 191, PosSet]
type = PosSet
trigger1 = !time
x = 70 * ifelse(TeamSide = 1, -1, 1)

[State 1300, Voice]
type = PlaySnd
trigger1 = AnimElem = 5 && anim = 6800
value = 1300,0
channel = 0

[State 220, Woosh]
type = PlaySnd
trigger1 = (AnimElem = 5 || AnimElem = 9) && anim = 6800
value = 1, 2 + (AnimElem = 5)
channel = 1

[State 245, 3]
type = PosAdd
trigger1 = anim = 6800
trigger1 = AnimElem = 8 || AnimElem = 9 || AnimElem = 12 
x = (6-(12*(AnimElem = 12)))*const(size.xscale)

[State 1210, EnvShake]
type = EnvShake
trigger1 = AnimElem = 9
time = 12
ampl = -4
freq = 120

[State 810, Hit Sound]
type = PlaySnd
trigger1 = AnimElem = 9
value = 2, 2
channel = 2

[State 810, Hit Spark]
type = Helper
trigger1 = AnimElem = 9
helperType = Normal
stateNo = 8012
ID = 8001
name = "Spark"
posType = P1
pos = 86, -82
ownPal = 1
size.xscale = 1
size.yscale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 190, End]
type = ChangeAnim
trigger1 = !AnimTime && anim = 6800
value = 21

[State 191, VelSet]
type = VelSet
trigger1 = anim = 21 && facing = 1
x = Cond(pos x > ceil(Helper(8999), pos x),const(velocity.walk.back.x),const(velocity.walk.fwd.x))
persistent = 0

[State 191, VelSet]
type = VelSet
trigger1 = anim = 21 && facing = -1
x = Cond(pos x < ceil(Helper(8999), pos x),const(velocity.walk.back.x),const(velocity.walk.fwd.x))
persistent = 0

[State 100, Step Sound]
type = PlaySnd
trigger1 = (AnimElem = 2 || AnimElem = 5) && anim = 20
value = 100, ifElse((AnimElem = 2), 0, 1)

[State 191, ChangeAnim]
type = ChangeAnim
triggerall = anim = 21
trigger1 = vel x = const(velocity.walk.back.x) && Cond(facing = 1,pos x < ceil(Helper(8999), pos x) ,pos x > ceil(Helper(8999), pos x) )
trigger2 = vel x = const(velocity.walk.fwd.x) && Cond(facing = 1,pos x > ceil(Helper(8999), pos x) ,pos x < ceil(Helper(8999), pos x) )
value = 191
persistent = 0

[State 191, VelSet]
type = VelSet
trigger1 = anim = 191
x = 0
persistent = 0

[State 6901, PosSet]
type = PosSet
trigger1 = anim = 191 && NumHelper(8999)
x = ceil(Helper(8999), pos x)

[State 200, Woosh]
type = PlaySnd
trigger1 = anim = 191 && animelem = 1
value = 1, 0
channel = 1

[State 190, End]
type = ChangeState
trigger1 = !AnimTime && anim = 191
value = 0

;---------------------------------------------------------------------------
; Mirror Match Intro (P2)
[StateDef 6801]
type = S
physics = N
anim = 6801
velset = 0,0
sprpriority = -1

[State 190, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 191, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 191, Camera Helper]
type = Helper
trigger1 = !NumHelper(8999)
helpertype = Normal
stateNo = 8999
ID = 8999
name = "Camera"
posType = P1

[State 191, PosSet]
type = PosSet
trigger1 = !time
x = 40 * ifelse(TeamSide = 1, -1, 1)

[State 220, Woosh]
type = PlaySnd
trigger1 = (AnimElem = 2 || AnimElem = 6 || AnimElem = 10 || AnimElem = 13)
value = 1, 1 + (AnimElem = 13)
channel = 1

[State 1000, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 13
value = 41, 0
channel = 4

[State 191, PosSet]
type = PosAdd
trigger1 = AnimElem = 12 || AnimElem = 13
x = 20

[State 6900, VelSet]
type = VelSet
trigger1 = AnimElem = 17
x = (Helper(8999), RootDist x) / -28
y = -3

[State 6900, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(17) >= 0
y = 0.2

[State 190, End]
type = Null;Pause
trigger1 = pos y > -vel y
time = 170
persistent = 0

[State 190, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 6802

;---------------------------------------------------------------------------
; Mirror Match Intro (P2 Land)
[StateDef 6802]
type = S
physics = N
anim = 6802
velset = 0,0

[State 6900, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6901, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 6901, PosSet]
type = PosSet
trigger1 = !Time && NumHelper(8999)
x = ceil(Helper(8999), pos x)

[State 1351, 9]
type = PlaySnd
trigger1 = !time
value = 2,820

[State 710, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, 1
channel = 0

[State 1210, EnvShake]
type = EnvShake
trigger1 = !time
time = 14
ampl = -4
freq = 120

[State 1210, Impact Dust]
type = Helper
trigger1 = !time
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
pos = 0, 0
facing = -1
ownPal = 1

[State 190, End]
type = ChangeState
trigger1 = !AnimTime
value = 0

;==TURNS INTRO==
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

[State 6900, ChangeAnim]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

[State 6900, End]
type = ChangeState
trigger1 = Time
trigger1 = pos y > -vel y
value = 6901

;---------------------------------------------------------------------------
; Mega Man Intro
[StateDef 19870]
type = A
anim = 1
velSet = 0,0
ctrl = 0

[State 19870, VarSet]
type = VarSet
trigger1 = !time
var(10) = 1

[State 1941, 2]
type = LifeSet
trigger1 = teammode != turns && enemy,teammode != turns || roundsexisted = 0
value = 1
persistent = 0

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

[State 6900, ChangeAnim]
type = ChangeAnim
trigger1 = enemynear,stateno = 0 && enemynear,time >= 30
value = 42
persistent = 0 

[State 6900, VelSet]
type = VelSet
trigger1 = enemynear,stateno = 0 && enemynear,time >= 30
x = (Helper(8999), RootDist x) / -40.0
y = -10.25
persistent = 0

[State 6900, VelAdd]
type = VelAdd
trigger1 = enemynear,stateno = 0 && enemynear,time >= 30
y = 0.5

[State 6900, ChangeAnim]
type = ChangeAnim
trigger1 = Vel y > -2
trigger1 = SelfAnimExist(anim + 3)
persistent = 0
value = Anim + 3

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
trigger1 = 1
y = 0

[State 6901, PosSet]
type = PosSet
trigger1 = !Time && NumHelper(8999)
x = ceil(Helper(8999), pos x)

[State 6901, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52, 0
channel = 3

[State 6901, Landing Dust Expod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 6901, End]
type = ChangeState
trigger1 = !AnimTime
value = 190

;==WIN POSE DECIDER==
[StateDef 180]
type = S

[State 180, Generic Victory Quote]
type = VictoryQuote
trigger1 = 1
value = 1 + Random % 6

[State 180, Street Fighters Victory Quote]
type = VictoryQuote
trigger1 = enemy,name = "Ryu" || enemy,name = "Evil Ryu" || enemy,name = "cvsryu" || enemy,name = "cvsryu_ex"
trigger2 = enemy,name = "Ken" || enemy,name = "Violent Ken" || enemy,name = "Ken Masters" || enemy,name = "cvsken"
trigger3 = enemy,name = "Chun-Li" || enemy,name = "ChunLi" || enemy,name = "Chun Li" || enemy,name = "cvschunli"
trigger4 = enemy,name = "Dhalsim" || enemy,name = "cvsdhalsim" || enemy,name = "RajaaDhalsim"
trigger5 = enemy,name = "Honda" || enemy,name = "E. Honda" || enemy,name = "cvshonda" || enemy,name = "E.Honda"
trigger6 = enemy,name = "Guile" || enemy,name = "cvsguile"
trigger7 = enemy,name = "Zangief" || enemy,name = "cvszangief"
trigger8 = Enemy, Name = "The Dictator"
trigger9 = enemy,name = "cvsvega" || enemy,name = "cvsvega_normal" || enemy,name = "cvsvega_ex"
trigger10 = enemy,name = "Blanka" || enemy,name = "cvsblanka"
trigger11 = enemy,name = "The Boxer" || enemy,name = "The Boxer" || enemy,name = "The Boxer"
trigger12 = enemy,name = "Sagat" || enemy,name = "cvssagat" || enemy,name = "SagatMG"
value = 7 ;Just the world warriors...

[State 180, Kung Fu Man Victory Quote]
type = VictoryQuote
trigger1 = enemy,name = "Kung Fu Man"
value = 8

[State 180, Boxers Victory Quote]
type = VictoryQuote
trigger1 = enemy,name = "Dudley" || enemy,name = "Boxer" || enemy,name = "Ed" || enemy,name = "Steve Fox"
trigger2 = enemy,SelfAnimExist(8055121)
trigger3 = enemy,name = "Vanessa" || enemy,name = "Little Mac" || enemy,name = "Axel Hawk" || enemy,name = "Franco Bash"
value = 9

[State 180, Kick Masters Victory Quote]
type = VictoryQuote
trigger1 = enemy,name = "Elena" || enemy,name = "Thonolan" || enemy,name = "Kim Kaphwan" || enemy,name = "Jhun Hoon"
trigger2 = enemy,SelfAnimExist(8055122) || enemy,name = "Juri" || enemy,name = "Juri Han"
value = 10

[State 180, Mario Victory Quote]
type = VictoryQuote
trigger1 = enemy,name = "Mario" || enemy,name = "Super Mario"
value = 11

[State 180, Mega Man Victory Quote]
type = VictoryQuote
trigger1 = enemy,name = "Mega Man" || enemy,name = "Megaman" || enemy,name = "Mega-Man"
value = 12

[State 180, Urban Champion Victory Quote]
type = VictoryQuote
trigger1 = enemy,name = "Urban Champion"
value = 13

[State 180, Police Officer Victory Quote]
type = VictoryQuote
trigger1 = enemy,name = "Kevin Rian" || enemy,name = "Stryker" || enemy,name = "LEON!!! HAAAALP!!!"
value = 14

[State 180, Fast Food Victory Quote]
type = VictoryQuote
trigger1 = enemy,name = "Ronald McDonald" || enemy,name = "Colonel Sanders"
value = 15

[State 180, Win 1]
type = ChangeState
trigger1 = command = "holdstart"
trigger2 = command = "holda" || command = "holdb" || command = "holdc"
value = 181

[State 180, Win 2]
type = ChangeState
trigger1 = command = "holdx" || command = "holdy" || command = "holdz"
value = 182

[State 180, Win Decider]
type = ChangeState
trigger1 = 1
value = 181 + (Random % 2)

;==WIN 1==
[StateDef 181]
type = S
physics = S
anim = 181
ctrl = 0

[State 181, 2]
type = PlaySnd
trigger1 = AnimElem = 4 || AnimElem = 6 || AnimElem = 11 || AnimElem = 13 || AnimElem = 17
value = S195,0

[State 181, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver

;==WIN 2==
[StateDef 182]
type = S
physics = S
anim = 182
ctrl = 0

[State 181, 2]
type = PlaySnd
trigger1 = AnimElem = 5
value = S180,0

[State 182, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver

;---------------------------------------------------------------------------
; Taunt
[StateDef 195]
type = S
moveType = I
physics = S
;anim = 195
velSet = 0, 0
sprPriority = 1
ctrl = 0

[State 195, 2010 Detect]
type = VarSet
trigger1 = !Time 
var(10) = (var(40) = 1 || var(40) = 2 && (command = "holdfwd" || AILevel && random%2))

[State 195, ChangeAnim]
type = ChangeAnim
trigger1 = !Time 
value = 195 + var(10)

[State 195, Voice]
type = PlaySnd
trigger1 = !var(10)
trigger1 = AnimElem = 5 || AnimElem = 8 || AnimElem = 11
value = 195, 0
channel = 0

[State 195, 2010 Voice]
type = PlaySnd
trigger1 = var(10)
trigger1 = AnimElem = 3 || AnimElem = 7
value = 3010, 0
channel = 0

[State 195, 2010 SFX]
type = PlaySnd
trigger1 = var(10)
trigger1 = AnimElem = 3 || AnimElem = 7
value = 196, 0
channel = 1
volumescale = 255

[State 195, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;==K.O.==
[StateDef 5150]
type = L
moveType = H
physics = N
sprPriority = -3
ctrl = 0

[State 5150, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
triggerAll = SelfAnimExist(5140)
trigger1 = (Anim != [5111, 5119]) && (Anim != [5171, 5179])
trigger2 = !SelfAnimExist(5140 + (Anim % 10))
value = 5140

[State 5150, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = (Anim = [5111, 5119]) || (Anim = [5171, 5179])
trigger1 = SelfAnimExist(5140 + (Anim % 10))
value = 5140 + (Anim % 10)

[State 5150, ChangeAnim]
type = ChangeAnim
trigger1 = MatchOver = 1
trigger1 = Anim = [5140, 5149]
trigger1 = SelfAnimExist(Anim + 10)
value = Anim + 10
persistent = 0

[State 5150, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = Anim != [5140 ,5159]
trigger1 = Anim != [5110, 5119]
value = 5110

[State 5150, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 171
trigger1 = Enemy, Anim = 184
trigger1 = NumEnemy
trigger1 = Enemy, AuthorName = "Jmorphman" && enemy,name = "Ken Masters" && (Enemy, var(40) != 1)
value = 171

[State 5150, ChangeAnimElem to sync with Ken (P2 side)]
type = ChangeAnim
trigger1 = Anim = 171 && AnimElemTime(7) >= 0
trigger1 = Enemy, Anim = 184 && Enemy, AnimElemTime(4) < 0
value = 171
elem = 6

[State 5150, ChangeAnimElem to sync with Ken (P2 side)]
type = ChangeAnim
trigger1 = Anim = 171 && AnimElemTime(7) < 0
trigger1 = Enemy, Anim = 184 && Enemy, AnimElemTime(4) >= 0
value = 171
elem = 7

[State 5150, SprPriority]
type = SprPriority
trigger1= Anim = 171
value = 3

[State 5150, VelMul]
type = VelMul
trigger1 = 1
x = 0.85

[State 5150, VelSet]
type = VelSet
trigger1 = abs(vel x) < const(movement.down.friction.threshold)
persistent = 0
x = 0

[State 5150, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1



;==CHEAP K.O.==
[StateDef 5950]
type = S
moveType = H
physics = S
anim = 5950
velSet = 0, 0

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
trigger1 = AnimElem = 4 && !Alive
value = 5950, 0

[State 5950, Hitting the Floor Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = F7, 0

[State 5950, Hitting the Floor Explod]
type = Explod
trigger1 = AnimElem = 8
anim = F60
posType = P1
pos = 0, 0
sprPriority = -3

[State 5950, End]
type = ChangeState
trigger1= !AnimTime
value = ifElse(Alive, 5110, 5150)

;==AIR HIT TRANSITION==
[Statedef 5035]
type = A
movetype = H
physics = N

[State 5035, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = SelfAnimExist(5035)
trigger1 = Anim = [5000, 5029]
value = 5035

[State 5035, VelAdd]
type = VelAdd
trigger1 = Time > 0
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



;==GET UP FROM LIE DOWN==
[Statedef 5120]
type = L
movetype = I
physics = N

[State 5120, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
trigger1 = Anim != [5111, 5119]
trigger2 = !SelfAnimExist(5120 + (Anim % 10))
value = 5120

[State 5120, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
trigger1 = Anim = [5111, 5119]
trigger1 = SelfAnimExist(5120 + (Anim % 10))
value = 5120 + (Anim % 10)

[State 5120, VelSet]
type = VelSet
trigger1 = !Time
x = 0

[State 5120, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5120, HitFallSet]
type = HitFallSet
trigger1 = !AnimTime
value = 1

[State 5120, AI ChangeState (Normal Mode)] ;Scapegoat
type = ChangeState
trigger1 = AILevel >= 5 && !AnimTime && var(40) != 1
trigger1 = (P2BodyDist x = [-10, 65]) && (!(enemynear,ctrl) || random%2) && power >= 1000
value = 3100 

[State 5120, AI ChangeState (Normal Mode)] ;Rising Champion, EX Rising Champion, Counterattack
type = ChangeState
trigger1 = AILevel >= 5 && !AnimTime && var(40) != 1
trigger1 = (P2BodyDist x = [-10, 65]) && (!(enemynear,ctrl) || random%2)
value = Cond(random > 500,1100 + 30*(random > 500 && enemynear,statetype != A),1300)

[State 5120, AI ChangeState (2010 Mode)] ;EX Street Smasher, EX Downtown Beatdown
type = ChangeState
trigger1 = AILevel >= 5 && !AnimTime && var(40) > 0 && p2statetype != A
trigger1 = (p2bodydist x = [-10,Cond(p2statetype = S,75,35.9)]) && (!(enemynear,ctrl) || random%2) && power >= 500
value = Cond(random > 500 && p2statetype != C,1430,1530)

[State 5120, AI ChangeState (2010 Mode)] ;Sure wish you had any real reversals, don't you?
type = ChangeState
trigger1 = AILevel >= 5 && !AnimTime && var(40) > 0
trigger1 = (P2BodyDist x = [-10, 65]) && (!(enemynear,ctrl) || random%2)
value = Cond(random > 500,700,710)

[State 5120, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;==HIT OTG=
[StateDef 5410]
type = L
moveType = H
physics = N
velSet = 0,0

[State 5410, PosSet]
type = PosSet
trigger1 = 1
y = 0
ignoreHitPause = 1

[State 5410, VarSet]
type = VarSet
trigger1 = !Time
sysvar(2) = 5080

[State 5410, VarAdd]
type = VarAdd
trigger1 = !Time
trigger1 = (Anim = [5081,5089]) || (Anim = [5111,5119])
trigger1 = SelfAnimExist(sysvar(2) + (Anim % 10))
sysvar(2) = Anim % 10

[State 5410, VarSet]
type = VarSet
trigger1 = !Time
trigger1 = sysvar(2) = 5090
trigger1 = !SelfAnimExist(5090)
sysvar(2) = 5030

[State 5410, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = sysvar(2)

[State 5410, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 5411


;Knocked back
[Statedef 5411]
type = L
moveType = H
physics = C

[State 5411, PosSet]
type = PosSet
trigger1 = 1
y = 0
ignoreHitPause = 1

[State 5411, VelSet]
type = VelSet
trigger1 = HitOver
x = 0

[State 5411, VarSet]
type = VarSet
trigger1 = !Time
sysvar(0) = 1

[State 5411, ChangeState]
type = ChangeState
trigger1 = HitOver && Alive
value = 5412

[State 5411, SelfState]
type = SelfState
trigger1 = HitOver && !Alive
value = 5150


;Recover
[StateDef 5412]
type = L
moveType = H
physics = N

[State 5412, FallEnvShake]
type = FallEnvShake
trigger1 = !Time

[State 5412, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(5110 + (Anim % 10))
trigger1 = Anim = [5081,5089]
value = 5110 + (Anim % 10)
persistent = 0

[State 5412, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
triggerAll = Anim != [5110,5119]
trigger1 = Anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (Anim % 10))
value = 5170

[State 5412, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
triggerAll = Anim != [5110,5119]
trigger1 = Anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (Anim % 10))
value = 5170 + (Anim % 10)

[State 5412, HitFallDamage]
type = HitFallDamage
trigger1 = !Time

[State 5412, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 5412, VarSet]
type = VarSet
trigger1 = !Time
trigger1 = GetHitVar(fall.yVel) != 0
sysvar(1) = floor(vel y)

[State 5412, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger1 = !sysvar(0)
value = F7, (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 5412, Explod]
type = Explod
trigger1 = !Time
trigger1 = !sysvar(0)
anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 0, 0
sprPriority = ifElse(sysvar(1) <= Const720p(56), -10, 10)

[State 5412, VelSet]
type = VelSet
trigger1 = !Time
y = 0

[State 5412, ChangeAnim]
type = ChangeAnim
triggerAll = Anim = [5171, 5179]
triggerAll = SelfAnimExist(5110 + (Anim % 10))
trigger1 = !AnimTime
trigger2 = sysvar(0)
value = 5110 + (Anim % 10)
persistent = 0

[State 5412, ChangeAnim]
type = ChangeAnim
triggerAll = Anim != [5111, 5119]
trigger1 = !AnimTime
trigger2 = sysvar(0)
value = 5110
persistent = 0

[State 5412, SelfState]
type = SelfState
triggerAll = !Alive
trigger1 = !AnimTime
trigger2 = sysvar(0)
trigger3 = Anim = [5110, 5119]
value = 5150

[State 5412, VarSet]
type = VarSet
trigger1 = sysVar(0)
trigger1 = !Time
sysvar(0) = 0

[State 5412, VelMul]
type = VelMul
trigger1 = 1
x = 0.85

[State 5412, VelSet]
type = VelSet
trigger1 = abs(vel x) < const(movement.down.friction.threshold)
persistent = 0
x = 0

[State 5412, SelfState]
type = SelfState
trigger1 = !Time
trigger1 = GetHitVar(chainID) != 3700 && GetHitVar(chainID) != 3705
trigger2 = HitOver
trigger2 = GetHitVar(chainID) = 3700 || GetHitVar(chainID) = 3705
value = 5120



;==SLAMMED AGAINST THE GROUND=
;Being Slammed (Standing)
[StateDef 5420]
type = A
moveType = H
physics = N
velset = 0,0

[State 5420, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = ifElse(SelfAnimExist(5111) || SelfAnimExist(5112), 5012, 5070)

[State 5420, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(5420 + (StateType = C))
value = 5420 + (StateType = C)

[State 5420, End]
type = SelfState
trigger1 = HitShakeOver && pos y < 0
trigger2 = StateType = L
value = 5030

[State 5420, End]
type = ChangeState
trigger1 = HitShakeOver && pos y >= 0
value = 5421


;Hitting the Ground
[StateDef 5421]
type = U
moveType = H
physics = N
velSet = 0,0

[State 5421, StateTypeSet: Lie Down, Physics: None]
type = StateTypeSet
trigger1 = GetHitVar(chainID) != 3800
stateType = L
physics = N

[State 5421, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5102) && PrevStateNo != 5426, 5102, ifElse(SelfAnimExist(5101) && PrevStateNo != 5426, 5101, 5100))
elem = ifElse(AuthorName = "Team Z2", 2, 1)

[State 5421, ChangeAnim]
type = ChangeAnim
triggerall = !Time && PrevStateNo != 5426
trigger1 = SelfAnimExist(5422)
value = 5422

[State 5421, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 5421, HitFallDamage]
type = HitFallDamage
trigger1 = !Time

[State 5421, EnvShake]
type = EnvShake
trigger1 = !Time
time = 14
ampl = -4

[State 5421, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = F7,1

[State 5421, Hitting the Floor FX]
type = Explod
trigger1 = !Time
anim = F61
posType = P1
pos = 0, 0
sprPriority = -3

[State 5421, End]
type = ChangeState
trigger1 = !AnimTime
trigger2 = Anim = 5100 + (Anim % 10)
trigger2 = Time = 4
trigger2 = Anim != 5422
trigger3 = Anim = 5422
trigger3 = AnimTime = 0 || Time = 12
value = ifElse(GetHitVar(chainID) = 3800, 5430, 5422)


;Bouncing Off Ground
[StateDef 5422]
type = L
moveType = H
physics = N

[State 5422, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5160 + Anim % 10), 5160 + Anim % 10, 5160)

[State 5422, ChangeAnim]
type = ChangeAnim
triggerall = !Time && Anim = 5422
trigger1 = SelfAnimExist(5424)
value = 5424

[State 5422, VelSet]
type = VelSet
trigger1 = !Time
y = -3.75

[State 5422, PosSet]
type = PosSet
trigger1 = !Time
y = const(movement.down.bounce.offset.y)

[State 5422, PosAdd]
type = PosAdd
trigger1 = !Time
x = const(movement.down.bounce.offset.x)

[State 5422, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = 0.625

[State 5422, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5424
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.down.bounce.groundlevel)
value = ifElse(SelfAnimExist(5162), 5162, ifElse(SelfAnimExist(5161), 5161, 5160))

[State 5422, Recover]
type = SelfState
trigger1 = GetHitVar(fall.recover) = 1
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.down.bounce.groundlevel)
value = 5200

[State 5422, End]
type = ChangeState
trigger1 = GetHitVar(chainID) = 3700 || GetHitVar(chainID) = 3705
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.down.bounce.groundlevel)
value = 5412

[State 5422, End]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.down.bounce.groundlevel)
value = 5110


;Aerial Being Slammed (Hitshake)
[StateDef 5425]
type = A
moveType = H
physics = N
velSet = 0,0

[State 5425, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5070

[State 5425, ChangeAnim]
type = ChangeAnim
trigger1 = Time > 0
value = Anim

[State 5425, ChangeAnim]
type = ChangeState
trigger1 = HitShakeOver
value = 5426


;Aerial Being Slammed (Knocked Away)
[StateDef 5426]
type = A
moveType = H
physics = N
ctrl = 0

[State 5426, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yaccel)

[State 5426, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 5426, ChangeState]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.trip.groundlevel)
value = 5421


;Rebounding Off Ground (Ground bounce)
[StateDef 5430]
type = A
moveType = H
physics = N

[State 5430, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
trigger1 = Anim = [5420,5422]
trigger1 = SelfAnimExist(5091)
value = 5091

[State 5430, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
trigger1 = (Anim != [5101, 5109]) && Anim != 5091
trigger2 = !SelfAnimExist(5090 + (Anim % 10))
value = 5090

[State 5430, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
trigger1 = Anim = [5101, 5109]
trigger1 = SelfAnimExist(5090 + (Anim % 10))
value = 5090 + (Anim % 10)

[State 5430, VelSet]
type = VelSet
trigger1 = !Time
x = -0.55865921787
y = -10

[State 5430, PosSet]
type = PosSet
trigger1 = !Time
y = const(movement.down.bounce.offset.y)

[State 5430, PosAdd]
type = PosAdd
trigger1 = !Time
x = const(movement.down.bounce.offset.x)

[State 5430, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = 0.537109375

[State 5430, SelfState]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.down.bounce.groundlevel)
value = 5431


;Hitting the ground from rebound (Ground bounce)
[StateDef 5431]
type = L
moveType = H
physics = N

[State 5431, FallEnvShake]
type = FallEnvShake
trigger1 = !Time

[State 5431, Save fall velocity]
type = VarSet
trigger1 = !Time
sysvar(1) = floor(vel y)

[State 5431, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5102), 5102, ifElse(SelfAnimExist(5101), 5101, 5100))
elem = ifElse(AuthorName = "Team Z2", 2, 1)

[State 5431, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 5431, VelSet]
type = VelSet
trigger1 = !Time
y = 0

[State 5431, VelMul]
type = VelMul
trigger1 = !Time
x = 0.75

[State 5431, Hitting the floor FX]
type = Explod
trigger1 = Time = 1
anim = F(60 + (sysvar(1) > const720p(20)) + (sysvar(1) > const720p(56)))
posType = P1
pos = 0, 0
sprPriority = ifElse(sysvar(1) <= const720p(56), -10, 10)

[State 5431, HitFallDamage]
type = HitFallDamage
trigger1 = Time = 3

[State 5431, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > const720p(20)) + (sysvar(1) > const720p(56))

[State 5431, PosFreeze]
type = PosFreeze
trigger1 = 1

[State 5431, SelfState]
type = SelfState
trigger1 = !AnimTime
value = 5101



;=CRUMPLE==
;Hit shake
[StateDef 5450]
type = S
movetype = H
physics = N
velset = 0,0

[State 5450, ChangeAnim: Light-Hard]
type = ChangeAnim
trigger1 = !Time && GetHitVar(AnimType) != [3, 5]
value = ifElse((GetHitVar(GroundType) = 1), 5000, 5010) + GetHitVar(AnimType)

[State 5450, ChangeAnim FailSafe]
type = ChangeAnim
trigger1 = !Time && anim != [5000,5012]
value = 5012

[State 5450, ChangeAnim: Freeze]
type = ChangeAnim
trigger1 = Time > 0
value = Anim

[State 5450, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 5451


;Knocked Back
[Statedef 5451]
type = S
movetype = H
physics = S

[State 5451, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1

[State 5451, ChangeAnim]
type = ChangeAnim
trigger1 = !AnimTime
value = 5005 + GetHitVar(AnimType) + (GetHitVar(GroundType) = 2) * 10

[State 5451, ChangeAnim FailSafe]
type = ChangeAnim
trigger1 = !AnimTime && !SelfAnimExist(5005 + GetHitVar(AnimType) + (GetHitVar(GroundType) = 2) * 10);(anim != [5005,5007]) && (anim != [5005,5017])
value = 5017

[State 5451, VelMul]
type = VelMul
trigger1 = Time >= GetHitVar(slideTime)
x = .6

[State 5451, VelSet]
type = VelSet
trigger1 = HitOver
x = 0

[State 5451, DefenceMulSet]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5451, ChangeState]
type = ChangeState
trigger1 = HitOver || !Alive && time >= 20
value = 5455


;Falling down
[StateDef 5455]
type = S
physics = N
movetype = H
ctrl = 0
velSet = 0,0

[State 5455, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
trigger1 = !SelfAnimExist(5955)
value = 5455
ignoreHitPause = 1

[State 5455, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = SelfAnimExist(5955)
value = 5955

[State 5455, VelSet]
type = VelAdd
trigger1 = pos y < 0
y = 0.58

[State 5455, PlaySnd]
type = PlaySnd
trigger1 = pos y > -vel y
value = F7, (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 5455, Explod]
type = Explod
trigger1 = pos y > -vel y
anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 0, 0
sprPriority = ifelse (sysvar(1) <= Const720p(56), -10, 10)

[State 5455, PosSet]
type = PosSet
trigger1 = pos y > -vel y
y = 0

[State 5455, PosSet]
type = VelSet
trigger1 = pos y > -vel y
y = 0

[State 5455, VarSet]
type = VarSet
trigger1 = !AnimTime
trigger2 = AnimElemTime(AnimElemNo(0) + 1) = 0
sysvar(0) = ifElse(Anim = 5455, 0, 1)

[State 5455, ChangeAnim]
type = ChangeAnim
trigger1 = !AnimTime
trigger2 = AnimElemTime(AnimElemNo(0) + 1) = 0
value = ifElse(Anim = 5955 && SelfAnimExist(5112), 5112, 5110)
persistent = 0

[State 5455, SelfState]
type = SelfState
trigger1 = !AnimTime
trigger2 = AnimElemTime(AnimElemNo(0) + 1) = 0
value = 5110



;=GUARD CRUSH==
;Pre-Crush State
[StateDef 5905]
type = U
moveType = H
physics = N
velSet = 0,0

[State 5905, ChangeAnim (Stand)]
type = ChangeAnim
trigger1 = StateType != A && StateType != C
value = 150

[State 5905, ChangeAnim (Crouch)]
type = ChangeAnim
trigger1 = StateType = C
value = 151

[State 5905, ChangeAnim (Air)]
type = ChangeAnim
trigger1 = StateType = A
value = 152

[State 5905, EnvShake]
type = EnvShake
trigger1 = !Time
time = 18
ampl = 6
freq = 120
ignoreHitPause = 1

[State 5905, Standing]
type = Changestate
trigger1 = StateType != A && StateType != C
trigger1 = HitShakeOver
value = 5910

[State 5905, Crouching]
type = Changestate
trigger1 = StateType = C
trigger1 = HitShakeOver
value = 5920

[State 5905, Jumping]
type = Changestate
trigger1 = StateType = A
trigger1 = HitShakeOver
value = 5930

[State 5905, SelfState]
type = SelfState
trigger1 = Time = 48
value = ifElse(StateType = A, 5210, 0)
ctrl = 1


;Standing Guard Crush
[Statedef 5910]
type = S
moveType = H
physics = N

[State 5910, HitFallSet]
type = HitFallSet
trigger1 = !Time
value = 0

[State 5910, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5910), 5910, 5012)

[State 5910, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim = 5910 || Anim = 5012) && AnimElemTime(AnimElemNo(0) + 1) = 0
value = ifElse(SelfAnimExist(5910), 5910, 5012)
elem = AnimElemNo(0)

[State 5910, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim = 5910 || Anim = 5012) && Time = 24
value = ifElse(SelfAnimExist(5911), 5911, 5017)

[State 5910, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim = 5911 || Anim = 5017) && AnimElemTime(AnimElemNo(0) + 1) = 0
value = ifElse(SelfAnimExist(5911), 5911, 5017)
elem = AnimElemNo(0)

[State 5910, End]
type = SelfState
trigger1 = Time = 24
value = 0
ctrl = 1


;Crouching Guard Crush
[Statedef 5920]
type = C
moveType = H
physics = N

[State 5920, HitFallSet]
type = HitFallSet
trigger1 = !Time
value = 0

[State 5920, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5920), 5920, 5022)

[State 5920, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim = 5920 || Anim = 5022) && AnimElemTime(AnimElemNo(0) + 1) = 0
value = ifElse(SelfAnimExist(5920), 5920, 5022)
elem = AnimElemNo(0)

[State 5920, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim = 5920 || Anim = 5022) && Time = 24
value = ifElse(SelfAnimExist(5921), 5921, 5027)

[State 5920, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim = 5921 || Anim = 5027) && AnimElemTime(AnimElemNo(0) + 1) = 0
value = ifElse(SelfAnimExist(5921), 5921, 5027)
elem = AnimElemNo(0)

[State 5920, End]
type = SelfState
trigger1 = Time = 24
value = 11
ctrl = 1


;Jumping Guard Crush
[Statedef 5930]
type = A
movetype = H
physics = N
velSet = -6.703910615, -1.25

[State 5930, HitFallSet]
type = HitFallSet
trigger1 = !Time
value = 0

[State 5930, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5930), 5930, 5022)

[State 5930, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim = 5930 || Anim = 5022) && AnimElemTime(AnimElemNo(0) + 1) = 0
value = ifElse(SelfAnimExist(5930), 5930, 5022)
elem = AnimElemNo(0)

[State 5930, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = 0.5859375

[State 5930, ChangeState]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 5931


;Jumping Guard Crush (Land)
[StateDef 5931]
type = C
moveType = H
physics = N
velSet = 0,0

[State 5931, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 5931, Explod]
type = Explod
trigger1 = Time = 1
anim = F60
pos = 0,0
sprPriority = -10

[State 5931, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = F7, 0

[State 5931, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(SelfAnimExist(5920), 5921, 5027)

[State 5931, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim = 5921 || Anim = 5027) && AnimElemTime(AnimElemNo(0) + 1) = 0
value = ifElse(SelfAnimExist(5921), 5921, 5027)
elem = AnimElemNo(0)

[State 5931, End]
type = SelfState
trigger1 = Time = 24
value = 11
ctrl = 1



;==ELECTROCUTION=
;Hit shake
[StateDef 9010]
type = S
moveType = H
physics = N
velset = 0,0

[State 9010, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(7696) && !SelfAnimExist(9010)
trigger1 = !Time
trigger1 = GetHitVar(AnimType) != [3, 5]
value = ifElse((GetHitVar(GroundType) = 1), 5000, 5010) + GetHitVar(AnimType)

[State 9010, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(7696) && !SelfAnimExist(9010)
trigger1 = !Time
trigger1 = GetHitVar(AnimType) = [3, 5]
value = 5030

[State 9010, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(7696) && !SelfAnimExist(9010)
trigger1 = !Time
trigger1 = (GetHitVar(AnimType) = [4, 5]) && (SelfAnimExist(5047 + GetHitVar(AnimType)))
value = 5047 + GetHitVar(AnimType)

[State 9010, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(7696) || SelfAnimExist(9010)
trigger1 = !Time
value = ifElse(SelfAnimExist(7696), 7696, 9010)

[State 9010, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 7696 && Anim != 9010
trigger1 = Time > 0
value = Anim

[State 9010, StateTypeSet]
type = StateTypeSet
trigger1 = !Time
trigger1 = GetHitVar(yVel) != 0 || GetHitVar(fall)
trigger2 = pos y != 0
StateType = A

[State 9010, SelfState]
type = SelfState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yVel) = 0 && !GetHitVar(fall)
value = 5001

[State 9010, ChangeState]
type = ChangeState
trigger1 = SelfAnimExist(7696) || SelfAnimExist(9010)
trigger1 = HitShakeOver
value = 9011

[State 9010, SelfState]
type = SelfState
trigger1 = HitShakeOver
value = 5030

[State 9010, OffSet]
type = OffSet
trigger1 = Anim = 7696 || Anim = 9010
x = ifElse(Time > 6, 4, ifElse(Time > 4, 6, 8)) * ifElse(Time % 2 = 0, 1, -1)


;Air get-hit (knocked away)
[StateDef 9011]
type = A
moveType = H
physics = N
ctrl = 0

[State 9011, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != [5000, 5199]
trigger1 = (GetHitVar(AnimType) = [4, 5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
trigger1 = Time > 10
value = 5047 + GetHitVar(AnimType)

[State 9011, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != [5000, 5199]
trigger1 = SelfAnimExist(5030)
trigger1 = Time > 10
value = 5030

[State 9011, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yAccel)

[State 9011, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 9011, SelfState]
type = SelfState
triggerAll = !HitFall
trigger1 = HitOver
trigger2 = vel y > 0
trigger2 = pos y >= const(movement.air.getHit.groundLevel)
value = 5040

[State 9011, SelfState]
type = SelfState
triggerAll = HitFall
trigger1 = HitOver
trigger2 = vel y > 0
trigger2 = pos y >= const(movement.air.getHit.groundLevel)
value = 5050

[State 9011, SelfState]
type = SelfState
trigger1 = vel y > 0
value = 5035

[State 9011, OffSet]
type = OffSet
trigger1 = Anim = 7696 || Anim = 9010
trigger1 = Time <= 10
x = 2 * ifElse(Time % 2 = 0, 1, -1)


;==TRIPPED=
[Statedef 50450]
type = A
moveType = H
physics = N
velSet = 0, 0

[State 50450, ForceFeedback]
type = ForceFeedback
trigger1 = !Time
waveForm = SineSquare
time = 12
ampl = 140

[State 50450, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 5070

[State 50450, ChangeState]
type = ChangeState
trigger1 = HitShakeOver
value = 50451


;Knocked Away
[Statedef 50451]
type = A
moveType = H
physics = N

[State 50451, HitVelSet]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 50451, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yaccel)

[State 50451, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = GetHitVar(fall.recover)
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 50451, SelfState]
type = SelfState
trigger1 = vel Y > 0
trigger1 = pos Y >= Const(movement.air.gethit.trip.groundlevel)
value = 5110



;==ELECTROCUTION (STUN)=
;Hit shake
[StateDef 59010]
type = S
moveType = H
physics = N
velset = 0,0

[State 59010, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(7696) && !SelfAnimExist(9010)
trigger1 = !Time
trigger1 = GetHitVar(AnimType) != [3, 5]
value = ifElse((GetHitVar(GroundType) = 1), 5000, 5010) + GetHitVar(AnimType)

[State 59010, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(7696) && !SelfAnimExist(9010)
trigger1 = !Time
trigger1 = GetHitVar(AnimType) = [3, 5]
value = 5030

[State 59010, ChangeAnim]
type = ChangeAnim
trigger1 = !SelfAnimExist(7696) && !SelfAnimExist(9010)
trigger1 = !Time
trigger1 = (GetHitVar(AnimType) = [4, 5]) && (SelfAnimExist(5047 + GetHitVar(AnimType)))
value = 5047 + GetHitVar(AnimType)

[State 59010, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(7696) || SelfAnimExist(9010)
trigger1 = !Time
value = ifElse(SelfAnimExist(7696), 7696, 9010)

[State 59010, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 7696 && Anim != 9010
trigger1 = Time > 0
value = Anim

[State 59010, StateTypeSet]
type = StateTypeSet
trigger1 = !Time
trigger1 = GetHitVar(yVel) != 0 || GetHitVar(fall)
trigger2 = pos y != 0
StateType = A

[State 59010, SelfState]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yVel) = 0 && !GetHitVar(fall)
value = 55001

[State 59010, ChangeState]
type = ChangeState
trigger1 = SelfAnimExist(7696) || SelfAnimExist(9010)
trigger1 = HitShakeOver
value = 59011

[State 59010, SelfState]
type = ChangeState
trigger1 = HitShakeOver
value = 55030

[State 59010, OffSet]
type = OffSet
trigger1 = Anim = 7696 || Anim = 9010
x = ifElse(Time > 6, 4, ifElse(Time > 4, 6, 8)) * ifElse(Time % 2 = 0, 1, -1)


;Air get-hit (knocked away)
[StateDef 59011]
type = A
moveType = H
physics = N
ctrl = 0

[State 59011, 1ChangeAnim]
type = ChangeAnim
trigger1 = Anim != [5000, 5199]
trigger1 = (GetHitVar(AnimType) = [4, 5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
trigger1 = Time > 10
value = 5047 + GetHitVar(AnimType)

[State 59011, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != [5000, 5199]
trigger1 = SelfAnimExist(5030)
trigger1 = Time > 10
value = 5030

[State 59011, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yAccel)

[State 59011, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 59011, SelfState]
type = ChangeState
triggerAll = !HitFall
trigger1 = HitOver
trigger2 = vel y > 0
trigger2 = pos y >= const(movement.air.getHit.groundLevel)
value = 55040

[State 59011, SelfState]
type = ChangeState
triggerAll = HitFall
trigger1 = HitOver
trigger2 = vel y > 0
trigger2 = pos y >= const(movement.air.getHit.groundLevel)
value = 55050

[State 59011, SelfState]
type = ChangeState
trigger1 = vel y > 0
value = 55035

[State 59011, OffSet]
type = OffSet
trigger1 = Anim = 7696 || Anim = 9010
trigger1 = Time <= 10
x = 2 * ifElse(Time % 2 = 0, 1, -1)



;==STUN=
;Air get-hit (knocked away)
[Statedef 55030]
type = A
physics = N
moveType = H
ctrl = 0

[State 55030, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != [5000, 5199]
trigger1 = SelfAnimExist(5030)
value = 5030

[State 55030, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yAccel)

[State 55030, HitVelSet]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 55030, SelfState]
type = SelfState
triggerAll = !HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0
trigger2 = Pos Y >= const(movement.air.gethit.groundlevel)
value = 5040

[State 55030, ChangeState]
type = ChangeState
triggerAll = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0
trigger2 = Pos Y >= const(movement.air.gethit.groundlevel)
value = 55050

[State 555030, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 55035


;Air get-hit (transition)
[Statedef 55035]
type = A
physics = N
moveType = H

[State 55035, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051, 5059]
trigger1 = Anim != 5090
value = 5035

[State 55035, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yAccel)

[State 55035, SelfState]
type = SelfState
triggerAll = !HitFall
trigger1 = HitOver
trigger2 = AnimTime = 0
trigger3 = Vel Y > 0
trigger3 = Pos Y >= const(movement.air.gethit.groundlevel)
trigger4 = Time = 0
trigger4 = Anim != 5035
value = 5040

[State 55035, ChangeState]
type = ChangeState
triggerAll = HitFall
trigger1 = HitOver
trigger2 = AnimTime = 0
trigger3 = Vel Y > 0
trigger3 = Pos Y >= const(movement.air.gethit.groundlevel)
trigger4 = Time = 0
trigger4 = Anim != 5035
value = 55050


;Air get-hit (falling)
[Statedef 55050]
type = A
physics = N
moveType = H

[State 55050, ChangeAnim]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090
value = 5050

[State 55050, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = [5050, 5059]
trigger1 = Vel Y >= ifElse(Anim = 5050, Const720p(4), Const720p(-8))
trigger1 = SelfAnimExist(Anim + 10)
value = Anim + 10
persistent = 0

[State 55050, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = GetHitVar(yaccel)

[State 55050, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifElse((Anim = [5051, 5059]) || (Anim = [5061, 5069]), 0, const(movement.air.gethit.groundlevel))
value = 55100


; Downed get-hit (hit ground from fall)
[Statedef 55100]
type = L
physics = N
moveType = H

[State 55100, FallEnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 55100, VarSet]
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[State 55100, ChangeAnim]
type = ChangeAnim
triggerAll = Time = 0
trigger1 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = !SelfAnimExist(5100 + (Anim % 10))
value = 5100

[State 55100, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (Anim = [5051,5059]) || (Anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (Anim % 10))
value = 5100 + (Anim % 10)

[State 55100, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 55100, VelSet]
type = VelSet
trigger1 = Time = 0
y = 0

[State 55100, VelMul]
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 55100, ChangeState]
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 55110

[State 55100, Explod]
type = Explod
trigger1 = Time = 1
Anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 0, 0
sprPriority = ifelse (sysvar(1) <= Const720p(56), -10, 10)

[State 55100, HitFallDamage]
type = HitFallDamage
trigger1 = Time = 3

[State 55100, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 55100, PosFreeze]
type = PosFreeze
trigger1 = 1

[State 55100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 55101

[State 55100, ForceFeedback]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20


; Downed get-hit (bounce off ground)
[Statedef 55101]
type = L
physics = N
moveType = H

[State 55101, ChangeAnim]
type = ChangeAnim
triggerAll = Time = 0
trigger1 = Anim != [5101, 5109]
trigger2 = !SelfAnimExist(5160 + (Anim % 10))
value = 5160

[State 55101, ChangeAnim]
type = ChangeAnim
triggerAll = Time = 0
trigger1 = Anim = [5101, 5109]
trigger1 = SelfAnimExist(5160 + (Anim % 10))
value = 5160 + (Anim % 10)

[State 55101, HitFallVel]
type = HitFallVel
trigger1 = Time = 0

[State 55101, PosSet]
type = PosSet
trigger1 = Time = 0
y = Const(movement.down.bounce.offset.y)

[State 55101, PosAdd]
type = PosAdd
trigger1 = Time = 0
x = Const(movement.down.bounce.offset.x)

[State 55101, VelAdd]
type = VelAdd
trigger1 = Time > 0
y = Const(movement.down.bounce.yaccel)

[State 55101, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.down.bounce.groundlevel)
value = 55110


; Downed get-hit (lying down)
[Statedef 55110]
type = L
physics = N
moveType = H

[State 55110, FallEnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 55110, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(5110 + (Anim % 10))
trigger1 = Anim = [5081, 5089]
value = 5110 + (Anim % 10)
persistent = 0

[State 55110, ChangeAnim]
type = ChangeAnim
triggerAll = Time = 0
triggerAll = Anim != [5110, 5119]
trigger1 = Anim != [5161, 5169]
trigger2 = !SelfAnimExist(5170 + (Anim % 10))
value = 5170

[State 55110, ChangeAnim]
type = ChangeAnim
triggerAll = Time = 0
triggerAll = Anim != [5110, 5119]
trigger1 = Anim = [5161, 5169]
trigger1 = SelfAnimExist(5170 + (Anim % 10))
value = 5170 + (Anim % 10)

[State 55110, HitFallDamage]
type = HitFallDamage
trigger1 = Time = 0

[State 55110, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 55110, VarSet]
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 55110, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = F7, (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 55110, Explod]
type = Explod
trigger1 = Time = 0
trigger1 = !SysVar(0)
anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
pos = 0, 0
sprPriority = ifelse (sysvar(1) <= Const720p(56), -10, 10)

[State 55110, VelSet]
type = VelSet
trigger1 = Time = 0
y = 0

[State 55110, ChangeAnim]
type = ChangeAnim
persistent = 0
triggerAll = Anim = [5171,5179]
triggerAll = SelfAnimExist(5110 + (Anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0)
value = 5110 + (Anim % 10)

[State 55110, ChangeAnim]
type = ChangeAnim
triggerAll = Anim != [5111,5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0)
value = 5110
persistent = 0

[State 55110, SelfState]
type = SelfState
triggerAll = !Alive
trigger1 = AnimTime = 0
trigger2 = SysVar(0)
trigger3 = Anim = [5110, 5119]
value = 5150

[State 55110, ChangeState]
type = ChangeState
trigger1 = Alive
trigger1 = Time >= 8
value = 55120

[State 55110, VarSet]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 55110, VelMul]
type = VelMul
trigger1 = 1
x = 0.85

[State 55110, VelSet]
type = VelSet
trigger1 = abs(Vel x) < Const(movement.down.friction.threshold)
persistent = 0
x = 0

[State 55110, ForceFeedback]
type = ForceFeedback
trigger1 = Alive
trigger1 = Time = 0
time = 8
ampl = 240
waveForm = sine

[State 55110, ForceFeedback]
type = ForceFeedback
trigger1 = !Alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveForm = sine


; Downed get-hit (getting up)
[Statedef 55120]
type = L
physics = N
moveType = H

[State 55120, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
trigger1 = Anim != [5111, 5119]
trigger2 = !SelfAnimExist(5120 + (Anim % 10))
value = 5120

[State 55120, ChangeAnim]
type = ChangeAnim
triggerAll = !Time
trigger1 = Anim = [5111, 5119]
trigger1 = SelfAnimExist(5120 + (Anim % 10))
value = 5120 + (Anim % 10)

[State 55120, VelSet]
type = VelSet
trigger1 = !Time
x = 0

[State 55120, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 55120, HitFallSet]
type = HitFallSet
trigger1 = !AnimTime
value = 1

[State 55120, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 55300


;Dizzy
[Statedef 55300]
type = S
physics = N
moveType = H
anim = 5300
velset = 0, 0
ctrl = 0

[State 55300, HitFallSet]
type = HitFallSet
trigger1 = Time = 0
value = 0

[State 55300, ChangeState]
type = SelfState
trigger1 = Time = 180
value = 0
ctrl = 1



;=
;=-2 STATES=
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
triggerAll = ((StateNo != [1200, 1299]) && (StateNo != [1750, 1799]) && (StateNo != [3200, 3299])) || var(35) > 0
trigger1 = MoveHit = 1 && NumEnemy
trigger1 = var(33) = 8010 || var(33) = 8011 || var(33) = 8012 || var(33) = 8013 || var(33) = 8014 || var(33) = 8015 || var(33) = 8016 || var(33) = 8020 || var(33) = 8001
trigger2 = MoveGuarded = 1 && NumEnemy
trigger2 = var(34) = 8000 || var(34) = 8001 || var(34) = 8005 || var(34) = 8006
helperType = Normal
stateNo = ifElse(MoveGuarded, var(34), var(33))
ID = 8000
name = "Spark"
postype = P1
pos = ceil(ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35)))), ceil(var(36))
facing = -1
ownPal = 1
size.xscale = 1
size.yscale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State -2, Hit Sparks (Behind P1)]
type = Helper
triggerAll = MoveContact = 1 && var(30) = HitPauseTime
triggerAll = (StateNo = [1200, 1299]) || (StateNo = [1750, 1799]) || (StateNo = [3200, 3299])
triggerAll = var(35) < 0
trigger1 = MoveHit = 1 && NumEnemy
trigger1 = var(33) = 8010 || var(33) = 8011 || var(33) = 8012 || var(33) = 8013 || var(33) = 8014 || var(33) = 8015 || var(33) = 8016 || var(33) = 8020 || var(33) = 8001
trigger2 = MoveGuarded = 1 && NumEnemy
trigger2 = var(34) = 8000 || var(34) = 8001 || var(34) = 8005 || var(34) = 8006
helperType = Normal
stateNo = ifElse(MoveGuarded, var(34), var(33))
ID = 8000
name = "Spark"
postype = P1
pos = ceil(ifElse(P2Dist x > 0, 0, ifElse(P2Dist x > var(35), ceil(P2Dist x), var(35)))), ceil(var(36))
facing = -1
ownPal = 1
size.xscale = 1
size.yscale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State -2, Counter FX]
type = Helper
triggerAll = MoveHit = 1 && var(30) = HitPauseTime
triggerAll = NumEnemy && var(9)
trigger1 = !(HitDefAttr = SCA, AT) && (EnemyNear, MoveReversed != 1) && (StateNo != [3100, 3199])
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ceil(ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35)))), ceil(var(36))
facing = -1
ownPal = 1
size.xscale = 1
size.yscale = 1
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
trigger1 = !IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime
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
trigger1 = !IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime
trigger1 = !(HitDefAttr = SCA,AT)
var(15) = 1

[State -2, Juggle Reset Single]
type = VarSet
triggerAll = NumEnemy = 1 && var(15)
trigger1 = (Enemy, StateType != A) && (Enemy, StateNo != [5100, 5109]) && (Enemy, Time >= 1)
trigger2 = (Enemy, MoveType != H) || (Enemy, StateNo = [120, 155]) || (Enemy, Ctrl)
var(15) = 0
ignoreHitPause = 1

[State -2, Juggle Reset Simul]
type = VarSet
triggerAll = NumEnemy >= 2 && var(15)
trigger1 = (EnemyNear(0), StateType != A) && (EnemyNear(0), Time >= 1)
trigger2 = (EnemyNear(0), MoveType != H) || (EnemyNear(0), StateNo = [120, 155]) || (EnemyNear(0), Ctrl)
trigger3 = (EnemyNear(1), StateType != A) && (EnemyNear(1), Time >= 1)
trigger4 = (EnemyNear(1), MoveType != H) || (EnemyNear(1), StateNo = [120, 155]) || (EnemyNear(1), Ctrl)
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
ignoreHitPause = 1

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
trigger1 = var(20) = [1, 60]
time = 2
add = 64 + ceil(sin(var(20) / 8.0 * pi) * 64), 64 + ceil(sin(var(20) / 8.0 * pi) * 64), 64 + ceil(sin(var(20) / 8.0 * pi) * 64)
ignoreHitPause = 1

[State -2, Playing With Power End]
type = VarSet
trigger1 = var(50) < 0
trigger2 = RoundState != 2
var(50) = 0
ignorehitpause = 1

[State -2, Playing With Power Time]
type = VarAdd
trigger1 = var(50) > 0 && StateNo != 3600
var(50) = -1
ignorehitpause = 1

[State -2, Playing With Power PalFX]
type = PalFX
trigger1 = var(50) > 60 && !var(25) && StateNo != 3600
time = 2
color = 128
mul = 256, 128, 128
add = 32 + ceil(sin(var(50) / 16.0 * pi) * 32), 32 + ceil(sin(var(50) / 16.0 * pi) * 32), 32 + ceil(sin(var(50) / 16.0 * pi) * 32)
ignoreHitPause = 1

[State -2, Playing With Power PalFX]
type = PalFX
trigger1 = (var(50) = [1, 60]) && !var(25) && StateNo != 3600
time = 2
color = 128
mul = 256, 128, 128
add = 128 + ceil(sin(var(50) / 8.0 * pi) * 64), 128 + ceil(sin(var(50) / 8.0 * pi) * 64), 128 + ceil(sin(var(50) / 8.0 * pi) * 64)
ignoreHitPause = 1

[State -2, Playing With Power PalFX]
type = PalFX
trigger1 = var(50) && !var(25) && StateNo = 3600
time = 2
color = 128
mul = 256, 128, 128
add = 128 + ceil(sin(time / 8.0 * pi) * 64), 128 + ceil(sin(time / 8.0 * pi) * 64), 128 + ceil(sin(time / 8.0 * pi) * 64)
ignoreHitPause = 1

[State -2, Power Check Reset]
type = VarSet
trigger1 = var(50) <= 0
trigger2 = RoundState != 2
var(24) = 0
ignorehitpause = 1

[State -2, Power Check]
type = PowerSet
trigger1 = var(50)
value = var(24)
ignorehitpause = 1

[State -2, Playing With Power Asserts] ;teehee
type = AssertSpecial
trigger1 = var(50) > 0 && enemynear,AILevel && (stateno = [1000,2999])
flag = unguardable
ignoreHitPause = 1

[State -2, Throws Allowed]
type = VarSet
trigger1 = EnemyNear, MoveType != H
trigger1 = EnemyNear, StateNo != 140 || EnemyNear, Time > 0
trigger1 = (EnemyNear, ctrl && (EnemyNear, Time >= 1 || EnemyNear, PrevStateNo = 140)) || (EnemyNear, Time >= 8)
trigger2 = EnemyNear, MoveType = A
trigger3 = (EnemyNear, StateNo != [0,52]) && (EnemyNear, StateNo != [120,155]) && (EnemyNear, StateNo != [5000,5120])
trigger4 = EnemyNear, Anim = 5300
var(38) = 0

[State -2, Throws Disallowed]
type = VarSet
triggerAll = NumEnemy
trigger1 = EnemyNear, StateNo = [150,155]
trigger2 = (EnemyNear, StateNo = 51 || (EnemyNear, StateNo = 140 && EnemyNear, Time <= 0)) && (EnemyNear, PrevStateNo = [150, 155])
trigger3 = EnemyNear, MoveType = H && EnemyNear, StateType != A && !(EnemyNear, Anim = 5300)
trigger4 = (EnemyNear, StateNo = [5020, 5040]) && EnemyNear, HitFall = 0
trigger5 = EnemyNear, StateNo = 40 && (EnemyNear, Anim != [0, 29])
var(38) = 1
ignoreHitPause = 1

[State -2, Throws Allowed (Command Grab)] ;GET HIT!!! NOW!!! DUMBASS!!!
type = VarSet
trigger1 = enemynear,AILevel && (StateNo = 1500 || StateNo = 1530) && PrevStateNo = 1600
trigger1 = EnemyNear, MoveType != H
var(38) = 0

[State -2, Dampener]
type = VarSet
trigger1 = 1
fvar(10) = ifElse(var(13) < 4, 24, ifelse(var(13) >= 24, 1, 27 - var(13))) / 24.0
ignoreHitPause = 1

[State -2, Dampener - Custom Combo]
type = VarSet
trigger1 = var(20)
fvar(10) = 0.72 * (10 - ifElse(var(13) >= 10, 10, var(13))) / 10.0
ignoreHitPause = 1

[State -2, Dampener - Custom Combo Limiter]
type = VarSet
trigger1 = var(20)
trigger1 = StateNo = 220 || StateNo = 240 || StateNo = 250 || StateNo = 1400 || StateNo = 1600
fvar(10) = 0.72 * (10 - ifElse(var(13) >= 10, 10, var(13))) / 30.0
ignoreHitPause = 1

[State -2, Dampener - Supers]
type = VarSet
trigger1 = (StateNo = [3000, 4999])
fvar(10) = ifElse(var(22), 0.6, ifElse(var(21), 0.8, 1.0))
ignoreHitPause = 1

[State -2, Dampener - Supers (Power Launcher / HP Fists of Fury / EX Street Upper / EX Ultimate Haymaker / ???)]
type = VarSet
trigger1 = (StateNo = [3000, 4999])
trigger1 = var(51) || var(52) || var(53) || var(54) || var(55)
fvar(10) = ifElse(var(22), 0.5, ifElse(var(21), 0.6, 0.8))
ignoreHitPause = 1

[State -2, Dampener - Crumple / Stun (EX Flowerpot Drop / Flowerpot Crash Crumple Flag / MAX Flowerpot Crash)]
type = VarSet
trigger1 = var(56) || var(57)
fvar(10) = ifElse(var(22), 0.3, ifElse(var(21), 0.4, 0.5))
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

;MESSATSU Champion essentially takes 0.35849056604 extra damage every hit
[State -2, Defense Levels]
type = LifeAdd
triggerAll = !AILevel
trigger1 = var(40) = 2
trigger1 = GetHitVar(HitCount) = 1 && GetHitVar(Damage)
trigger1 = StateNo != [760, 762]
value = -ceil(0.35849056604 * GetHitVar(Damage))
kill = 0
ignoreHitPause = 1

;MESSATSU Champion essentially takes 1.35849056604 times more damage than standard
[State -2, Defense Levels]
type = DefenceMulSet
triggerAll = !AILevel
trigger1 = var(40) = 2
value = 1.35849056604 * (const(data.fall.defence_mul) ** GetHitVar(FallCount))
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

[State -2, KO Sound]
type = PlaySnd
triggerAll = PrevStateNo != 5950
trigger1 = !Alive && var(41) = 1
trigger1 = var(41) := 2
value = 11, 1
ignoreHitPause = 1

[State -2, Collapse Sound]
type = PlaySnd
trigger1 = StateNo != 5950
trigger1 = Anim = 5950 || Anim = 5955
trigger1 = AnimElem = 8
value = F7, 0

[State -2, Collapse FX]
type = Explod
trigger1 = StateNo != 5950
trigger1 = Anim = 5950 || Anim = 5955
trigger1 = AnimElem = 8
anim = F60
posType = P1
sprpriority = -3

[State -2, Guard Crush/Throw Escape voice]
type = PlaySnd
trigger1 = Anim = 5910 || Anim = 5920 || Anim = 5930 || Anim = 15910 || Anim = 15920 || Anim = 15930
trigger1 = AnimElemTime(1) = 1
trigger2 = Anim = 5940 || Anim = 5945 || Anim = 15940 || Anim = 15945
trigger2 = AnimElem = 2 && StateNo != 890
value = 800,0
channel = 0
ignoreHitPause = 1

[State -3, Sound During Dizzy]
type = PlaySnd
triggerall = (Anim = 5300) && StateNo != 5500
trigger1 = (AnimElemTime(2) = 1 || AnimElemTime(3) = 1)
value = S5300,1
channel = 0

[State -2, Dizzy Stars]
type = Helper
trigger1 = RoundState = 2
trigger1 = !NumHelper(8970)
trigger1 = NumEnemy = 1 && NumPartner = 0
trigger1 = EnemyNear, StateNo = 55300
helperType = normal
stateNo = 8970
ID = 8970
name = "Dizzy Stars"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State -2, Air Gravity Timer Increment]
type = VarAdd
triggerAll = StateType = A
trigger1 = (StateNo = [50, 51]) || (StateNo = [600, 699]) || (StateNo = [2050, 2060])
var(2) = 1

[State -2, Air Gravity Timer Reset]
type = VarSet
trigger1 = var(2)
trigger1 = StateType != A
var(2) = 0

[State -2, Power Launcher Hit Count Reset]
type = VarSet
trigger1 = !var(13)
var(51) = 0
ignoreHitPause = 1

[State -2, HP Fists of Fury Hit Count Reset]
type = VarSet
trigger1 = !var(13)
var(52) = 0
ignoreHitPause = 1

[State -2, EX Street Upper Hit Count Reset]
type = VarSet
trigger1 = !var(13)
var(53) = 0
ignoreHitPause = 1

[State -2, EX Ultimate Haymaker Hit Count Reset]
type = VarSet
trigger1 = !var(13)
var(54) = 0
ignoreHitPause = 1

[State -2, ??? Hit Count Reset]
type = VarSet
trigger1 = !var(13)
var(55) = 0
ignoreHitPause = 1

[State -2, EX Flowerpot Drop / Flowerpot Crash Crumple Flag Reset]
type = VarSet
trigger1 = !var(13)
var(56) = 0
ignoreHitPause = 1

[State -2, MAX Flowerpot Crash Stun Flag Reset]
type = VarSet
trigger1 = !var(13)
var(57) = 0
ignoreHitPause = 1

[State -2, Lv3 Super Finish Detection]
type = VarSet
triggerAll = !(Enemy, Alive)
trigger1 = StateNo = [3300, 3399]
var(27) = 1
ignoreHitPause = 1

[State -2, Sealed by Chizuru's Reigi no Ishizue]
type = PalFX
trigger1 = NumProjID(131035)
trigger1 = GameTime % 2 = 1
time = 1
add = 0,0,92
sinAdd = 0,0,0,0
color = 0
invertAll = 0
color = 256
ignoreHitPause = 1

[State -2, SLEP CATCHER]
type = RemoveExplod
trigger1 = (enemy,AuthorName = "KingPepe" || enemy,AuthorName = "FAMFIGHT") && enemy,Name = "Black Mage"
trigger1 = !(stateno = 1156 || stateno = 1166) || anim != 5000
ID = 6550
ignorehitpause = 1

[State -2, SLEP CATCHER]
type = AssertSpecial
triggerall = NumEnemy = 1
trigger1 = (enemy,AuthorName = "KingPepe" || enemy,AuthorName = "FAMFIGHT") && enemy,Name = "Black Mage"
trigger1 = (stateno = 1156 || stateno = 1166) && anim = 5000 && movetype = H && NumExplod(6550)
flag = invisible
ignorehitpause = 1

[State -2, SLEP CATCHER]
type = Explod
triggerall = NumEnemy = 1
trigger1 = (enemy,AuthorName = "KingPepe" || enemy,AuthorName = "FAMFIGHT") && enemy,Name = "Black Mage"
trigger1 = (stateno = 1156 || stateno = 1166) && anim = 5000 && movetype = H && !NumExplod(6550)
anim = 6550
ID = 6550
;removeongethit = 1
scale = const(size.xscale),const(size.yscale)
removetime = -1
bindtime = -1
shadow = 1,1,1

[State -2, DIG DUG LVL 3]
type = ChangeAnim
triggerall = NumEnemy = 1
trigger1 = enemy,AuthorName = "KingPepe" || enemy,AuthorName = "FAMFIGHT"
trigger1 = enemy,Name = "Dig Dug" && time = 1 && movetype = H
trigger1 = stateno = 4002 && anim != 5620 && anim != 6620
value = 6620

[State -2, DIG DUG LVL 3]
type = ChangeState
triggerall = NumEnemy = 1
trigger1 = enemy,AuthorName = "KingPepe" || enemy,AuthorName = "FAMFIGHT"
trigger1 = enemy,Name = "Dig Dug" && movetype = H && enemy,NumHelper(8300)
trigger1 = stateno = 4003
value = 4004

[State -2, DIG DUG LVL 3]
type = PosSet
triggerall = NumEnemy = 1
trigger1 = enemy,AuthorName = "KingPepe" || enemy,AuthorName = "FAMFIGHT"
trigger1 = enemy,Name = "Dig Dug" && movetype = H && enemy,NumHelper(8300)
trigger1 = stateno = 4004
y = 0

[State -2, EXPLODsive Buffering Helper]
type = Helper
trigger1 = !NumHelper(90000005)
helpertype = Normal
stateNo = 90000005
ID = 90000005
name = "EXPLODsive Buffering helper"
posType = P1
facing = ifElse(Facing = 1, 1, -1)
keyCtrl = 1
ignoreHitPause = 1

[State -2, Debug]
type = DisplayToClipboard
trigger1 = 1
text = "Charge Buffer = %d Attack = %f Hits = %d Juggle = %d Mode = %d"
params = var(48), fvar(11), var(13), var(15),var(40)
ignoreHitPause = 1

[State -2, Debug]
type = AppendToClipboard
trigger1 = 1
text = "\nBy NovaMagnolia"
ignoreHitPause = 1



;=
;=-3 STATES=
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
trigger1 = StateNo != 3110
var(18) = 0

[State -3, Projectile Flag Reset]
type = VarSet
trigger1 = var(39) < 0
var(39) = 0
ignoreHitPause = 1

[State -3, Projectile Flag Off]
type = VarSet
trigger1 = !NumHelper(3105)
var(39) = 0
ignoreHitPause = 1

[State -3, Chain Combo Reset]
type = VarSet
trigger1 = 1
var(4) = 0
ignoreHitPause = 1

[State -3, Chain Combo Check]
type = VarSet
trigger1 = var(20) && (StateNo = [200, 699]) && MoveContact
trigger2 = var(20) && (StateNo = [1000, 2999]) && StateType != A && (MoveContact || var(18))
var(4) = 1
ignoreHitPause = 1

[State -3, Cancel Reset]
type = VarSet
trigger1 = 1
var(6) = 0
ignoreHitPause = 1

[State -3, Command Cancel Reset]
type = VarSet
trigger1 = 1
var(5) = 0
ignoreHitPause = 1

[State -3, Command Cancel Check]
type = VarSet
triggerAll = !var(20)
trigger1 = 0 ;lol
var(5) = 1
ignorehitpause = 1

[State -3, Cancel Check]
type = VarSet
trigger1 = var(20) && (StateNo = [200, 699])
trigger2 = var(20) && (StateNo = [1000, 2999]) && (MoveContact || var(18))
trigger3 = (StateNo = [200, 699]) && Time <= 2 && (PrevStateNo != [200, 700])
trigger4 = StateNo = 200
trigger5 = StateNo = 210 && MoveContact
trigger6 = StateNo = 218 && var(50) && MoveContact && AnimElemTime(8) < 0
trigger7 = StateNo = 220 && var(50) && MoveContact && AnimElemTime(9) < 0
trigger8 = StateNo = 225 && MoveContact && AnimElemTime(5) < 0
trigger9 = StateNo = 230 && MoveContact && AnimElemTime(5) < 0
trigger10 = StateNo = 240 && MoveContact && AnimElemTime(7) < 0
trigger11 = StateNo = 241 && var(50) && MoveContact && AnimElemTime(13) < 0
trigger12 = StateNo = 250 && var(50) && MoveContact && AnimElemTime(8) < 0
trigger13 = StateNo = 255 && MoveContact && AnimElemTime(5) < 0
trigger14 = StateNo = 400 && MoveContact
trigger15 = StateNo = 410 && MoveContact && AnimElemTime(6) < 0
trigger16 = StateNo = 420 && MoveContact && AnimElemTime(4) < 0
trigger17 = StateNo = 430
trigger18 = (StateNo = 440 || StateNo = 450) && var(50) && MoveContact && AnimElemTime(7) < 0 
;trigger15 = StateNo = 440 && MoveContact && AnimElemTime(6) < 0 && var(40) = 1
;Thought about this since he loses a lot of low prescene w/o Quick Dash...
;...but he has Dash Punch, Rekkas, and a Command Grab! So nevermind! ~_~

var(6) = 1
ignoreHitPause = 1

[State -3, Super Cancel Reset]
type = VarSet
trigger1 = 1
var(7) = 0
ignoreHitPause = 1

[State -3, Super Cancel Flag Reset]
type = VarSet
trigger1 = var(21)
trigger1 = (StateNo != [3000, 4999]) || MoveType = H
var(21) = 0
ignoreHitPause = 1

[State -3, Super Cancel Check]
type = VarSet
trigger1 = var(20) && (StateNo = [200, 699])
trigger2 = var(20) && (StateNo = [1000, 2999]) && (MoveContact || var(18))
trigger3 = (StateNo = [200, 699]) && Time <= 2 && (PrevStateNo != [200, 700])
trigger4 = StateNo = 200
trigger5 = (StateNo = [210,211]) && MoveContact && AnimElemTime(7) < 0
trigger6 = StateNo = 218 && MoveContact && AnimElemTime(8) < 0
trigger7 = StateNo = 220 && var(50) && MoveContact && AnimElemTime(9) < 0
trigger8 = StateNo = 225 && MoveContact && AnimElemTime(5) < 0
trigger9 = StateNo = 230 && MoveContact && AnimElemTime(5) < 0
trigger10 = StateNo = 240 && MoveContact && AnimElemTime(7) < 0
trigger11 = StateNo = 241 && var(50) && MoveContact && AnimElemTime(13) < 0
trigger12 = StateNo = 250 && var(50) && MoveContact && AnimElemTime(8) < 0
trigger13 = StateNo = 255 && MoveContact && AnimElemTime(5) < 0
trigger14 = StateNo = 400 && MoveContact
trigger15 = StateNo = 410 && MoveContact && AnimElemTime(6) < 0
trigger16 = StateNo = 420 && MoveContact && AnimElemTime(4) < 0
trigger17 = StateNo = 430
trigger18 = (StateNo = 440 || StateNo = 450 && var(50)) && MoveContact && AnimElemTime(7) < 0
trigger19 = StateNo = 1005 && MoveContact && AnimElemTime(4) < 0
trigger20 = StateNo = 1010 && MoveContact && AnimElemTime(4) < 0
trigger21 = StateNo = 1015 && MoveContact && AnimElemTime(6) < 0
trigger22 = StateNo = 1035 && MoveContact && AnimElemTime(4) < 0
trigger23 = StateNo = 1040 && MoveContact && AnimElemTime(4) < 0
trigger24 = StateNo = 1100 && MoveContact && StateType != A
trigger25 = StateNo = 1300 && MoveContact && AnimElemTime(8) < 0
trigger26 = StateNo = 1305 && MoveContact && AnimElemTime(6) < 0
trigger27 = StateNo = 1310 && MoveContact && AnimElemTime(8) < 0
trigger28 = StateNo = 1400 && MoveContact && AnimElemTime(6) < 0
trigger29 = StateNo = 1410 && MoveContact && AnimElemTime(6) < 0
var(7) = 1
ignoreHitPause = 1

[State -3, Hyper Cancel Reset]
type = VarSet
trigger1 = 1
var(8) = 0
ignoreHitPause = 1

[State -3, Hyper Cancel Check]
type = VarSet
trigger1 = StateNo = 3010 && AnimElemTime(28) < 0
trigger2 = StateNo = 3110 && AnimElemTime(5) < 0 && var(18)
trigger3 = StateNo = 3205 && AnimElemTime(4) < 0 && MoveContact
trigger4 = StateNo = 3400 && AnimElemTime(20) < 0 && MoveContact
trigger5 = StateNo = 3500 && AnimElemTime(9) < 0 && MoveContact
var(8) = 1
ignoreHitPause = 1

[State -3, Hyper Cancel Flag Reset]
type = VarSet
trigger1 = var(22)
trigger1 = (StateNo != [3000, 4999]) || MoveType = H
var(22) = 0
ignoreHitPause = 1

[State -3, Parry Detection]
type = Helper
triggerAll = RoundState = 2 && !NumHelper(765) && !var(20)
triggerAll = (MoveType = I && ctrl) || (StateNo = [760, 762]) || StateNo = 5120
triggerAll = (command != "rlsfwd" && command != "rlsback" && command != "rlsup" && command != "rlsdown") || AILevel
trigger1 = !AILevel && (StateType = S || StateType = C || StateNo = 5120)
;Standing/crouch, no reversed commands
trigger1 = !NumExplod(92828282) && !NumExplod(94646464) && !NumExplod(92468246)
trigger1 = ifElse(P2dist x >= 0, command = "fwd", command = "back") || command = "down"
;Air, no reversed commands
trigger2 = !AILevel && StateType = A && (var(3) != 1 && var(3) != 2)
trigger2 = !NumExplod(94646464) && !NumExplod(92468246)
trigger2 = ifElse(P2dist x >= 0, command = "fwd", command = "back")
;Standing/crouch, left/right or all directions reverse
trigger3 = !AILevel && (StateType = S || StateType = C || StateNo = 5120)
trigger3 = NumExplod(94646464) || NumExplod(92468246)
trigger3 = ifElse(P2dist x >= 0, command = "back", command = "fwd") || ifElse(NumExplod(92468246), command = "up", command = "down")
;Standing/crouch, up/down reverse only
trigger4 = !AILevel && (StateType = S || StateType = C || StateNo = 5120)
trigger4 = NumExplod(92828282) && !NumExplod(94646464) && !NumExplod(92468246)
trigger4 = ifElse(P2dist x >= 0, command = "fwd", command = "back") || command = "up"
;Air, reversed commands
trigger5 = !AILevel && StateType = A && (var(3) != 1 && var(3) != 2)
trigger5 = NumExplod(94646464) || NumExplod(92468246)
trigger5 = ifElse(P2dist x >= 0, command = "back", command = "fwd")
trigger6 = AILevel && (StateNo != [760, 762]) && InGuardDist
trigger7 = AILevel && (StateNo = [760, 762]) && Time = 14
helperType = Normal
stateNo = 765
ID = 765
name = "Parry Detection"
posType = P1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
pauseMoveTime = 65535
superMoveTime = 65535

[State -3, Parry Attacks]
type = ChangeState
trigger1 = (StateNo != [760, 762]) && NumHelper(765)
trigger1 = Helper(765), StateNo = 766
value = ifElse((Helper(765), Anim = 767), 762, ifElse((Helper(765), Anim = 766), 761, 760))
ignoreHitPause = 1

[State -3, Parry Projectiles]
type = HitOverride
trigger1 = (StateNo != [760, 762]) && NumHelper(765)
trigger1 = !(Helper(765), var(0)) && (Helper(765), Anim = 765)
attr = SA, AP
stateNo = 760
slot = 0
time = 1
ignoreHitPause = 1

[State -3, Parry Projectiles]
type = HitOverride
trigger1 = (StateNo != [760, 762]) && NumHelper(765)
trigger1 = !(Helper(765), var(0)) && (Helper(765), Anim = 766)
attr = C, AP
stateNo = 761
slot = 0
time = 1
ignoreHitPause = 1

[State -3, Parry Projectiles]
type = HitOverride
trigger1 = (StateNo != [760 ,762]) && NumHelper(765)
trigger1 = !(Helper(765), var(0)) && (Helper(765), Anim = 767)
attr = SCA, AP
stateNo = 762
slot = 0
time = 1
ignoreHitPause = 1

[State -3, Assert: NoWalk after Parry]
type = AssertSpecial
trigger1 = var(26) > 0
trigger1 = var(26) := (var(26) - 1)
flag = NoWalk
ignoreHitPause = 1

[State -3, AI Tech Roll]
type = ChangeState
triggerall = stateno = 5050 || stateno = 5071
triggerall = AILevel && NumEnemy
triggerall = Vel Y > 0
triggerall = Pos Y >= Const(movement.air.gethit.groundrecover.ground.threshold)
triggerall = alive
triggerall = CanRecover
trigger1 = random%2 || enemynear,facing = facing
value = 5200 ;Air get-hit (fall recovery on ground)

[State -2, AI Air Tech]; Recover in mid air
type = ChangeState
triggerall = stateno = 5050
triggerall = AILevel && NumEnemy
triggerall = Vel Y > Const(movement.air.gethit.airrecover.threshold)
triggerall = alive
triggerall = CanRecover
trigger1 = random%2 || enemynear,facing = facing
value = 5210 ;Air get-hit (fall recovery in air)

[State -3, Corner Push]
type = VarSet
trigger1 = fvar(5)
trigger1 = NumTarget
trigger1 = Target, HitOver || (Target, GetHitVar(HitShakeTime) > 0 && Target, Time <= 0)
fvar(5) = 0

[State -3, Corner Push]
type = VarSet
triggerAll = MoveType != H
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
trigger1 = (StateNo != [1000, 2999]) || MoveType = H
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
trigger2 = (StateNo = [700, 715]) || (StateNo = 1300) || (StateNo = 1305) || (StateNo = 1310)
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
trigger1 = (StateNo = 3000 || StateNo = 3110 || StateNo = 3200 || StateNo = 3400 || StateNo = 3500) && Time = 43
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
trigger1 = (StateNo = 3050 || StateNo = 3150 || StateNo = 3250 || StateNo = 3450 || StateNo = 3550) && Time = 43
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
trigger2 = StateNo = 3311 && Time = 149
trigger3 = StateNo = 3700 && Time = 43
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
trigger1 = StateNo = 50 || (StateNo = [600, 699])
trigger1 = (var(3) = 2 || var(3) = 3) && vel y < -1
trigger2 = var(20)
trigger3 = (StateNo = [700, 715]) || (StateNo = 1300 || StateNo = 1310) && AnimElemTime(7) < 0 || (StateNo = 1305 && AnimElemTime(4) < 0)
trigger4 = (StateNo = [2000, 2099])
trigger5 = (StateNo = [3000, 4999]) && stateno != 3100
time = 2

[State -3, AfterImage Off]
type = AfterImageTime
triggerAll = Time <= 1
trigger1 = StateNo = 3000 || StateNo = 3050 || StateNo = 3100 || StateNo = 3200 || StateNo = 3250 || StateNo = 3300
trigger2 = StateNo = 3400 || StateNo = 3450 || StateNo = 3500 || StateNo = 3600 || StateNo = 3700
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
trigger1 = P2Dist y >= (EnemyNear, const(size.height) - 34)
trigger2 = P2StateType = C
trigger2 = P2Dist y >= (EnemyNear, const(size.height) - 50)
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
value = 5000, 0;(Random % 3)
channel = 0
ignoreHitPause = 1

[State -3, Get Hit Sound]
type = PlaySnd
triggerAll = Alive && Time = 1
trigger1 = (StateNo = 5000 || StateNo = 5010) && NumEnemy
trigger1 = GetHitVar(fall) || (EnemyNear, HitDefAttr = SCA,SA,HA)
trigger2 = (StateNo = 5020 || StateNo = 5070 || StateNo = 5080)
trigger3 = (StateNo = 5050 || StateNo = 5100) && (PrevStateNo != [5000,5199])
value = 5000, 0;(Random % 3)
channel = 0
ignoreHitPause = 1

[State -3, Cheap KO]
type = ChangeState
trigger1 = !Alive && (StateNo = [5000, 5010])
trigger1 = (PrevStateNo = [130, 131]) || (PrevStateNo = [140, 141]) || (PrevStateNo = [150, 153])
value = 5950
ignoreHitPause = 1

[State -3, Assert: NoKOsnd (Cheap KO)]
type = AssertSpecial
trigger1 = (StateNo = [5000, 5010])
trigger1 = (PrevStateNo = [130, 131]) || (PrevStateNo = [140, 141]) || (PrevStateNo = [150, 153])
flag = NoKOsnd
ignoreHitPause = 1

[State -3, Stop Guarding Voice]
type = StopSnd
trigger1 = StateNo = [120, 155]
channel = 0

[State -3, Custom Combo Finish]
type = Helper
triggerAll = WinKO && var(20)
triggerAll = RoundState = 3 && !NumHelper(8600)
trigger1 = MoveHit = [1, 4]
trigger2 = StateNo = 810 && (AnimElemTime(7) = [0, 1])
trigger3 = StateNo = 820 && (AnimElemTime(7) = [1, 2])
helperType = Normal
stateNo = 8600
ID = 8600 + 0 * (var(23) := 900)
name = "Super Finish"
posType = Left
pos = 160, -120
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1

[State -3, Super Finish]
type = Helper
triggerAll = WinKO
triggerAll = RoundState = 3 && !NumHelper(8600)
;trigger1 = MoveHit = 1 && (StateNo = [3000, 4999])
;trigger1 = var(23) := StateNo
trigger1 = StateNo = [3000, 3099]
trigger1 = var(23) := 3000
trigger2 = Cond(NumHelper(3105),(Helper(3105), StateNo = [3105, 3107]) && var(18),0)
trigger2 = var(23) := 3100
trigger3 = StateNo = [3200, 3299]
trigger3 = var(23) := 3200
trigger4 = StateNo = [3300, 3399]
trigger4 = var(23) := 3300
trigger5 = StateNo = [3400, 3499]
trigger5 = var(23) := 3400
trigger6 = StateNo = [3500, 3599]
trigger6 = var(23) := 3500
trigger7 = StateNo = [3700, 3799]
trigger7 = var(23) := 3700
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

[State -3, Playing With Power Finish]
type = Helper
triggerAll = WinKO && var(50)
triggerAll = RoundState = 3 && !NumHelper(8600)
trigger1 = MoveHit = [1, 4]
trigger2 = StateNo = 810 && (AnimElemTime(7) = [0, 1])
trigger3 = StateNo = 820 && (AnimElemTime(7) = [1, 2])
helperType = Normal
stateNo = 8600
ID = 8600 + 0 * (var(23) := 3600)
name = "Super Finish"
posType = Left
pos = 160, -120
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1

[State -3, LIFE FIX] ;Skipped the special intro against Mega Man, did we?
type = LifeSet
trigger1 = (prevstateno = 19870 || prevstateno = 190) && stateno = 0
trigger1 = life != lifemax && roundsexisted = 0
value = lifemax