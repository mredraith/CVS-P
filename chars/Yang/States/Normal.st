; _________________________________________________
;| Yang by KarmaCharmeleon			 |
; 
;
;NORMAL MOVES=
;

;STANDING FAR LIGHT PUNCH=
[StateDef 200]
type = S
physics = S
moveType = A
anim = 200
ctrl = 0
velset = 0,0
sprPriority = 1
powerAdd = 0
facep2 = 1

[State 200, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 103200
name = "Seiei Enbu Clone 1"
posType = P1
pos = 0, 0
ownPal = 1

[State 200, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 203200
name = "Seiei Enbu Clone 2"
posType = P1
pos = 0, 0
ownPal = 1

[State 200, Voice]
type = PlaySnd
trigger1 = !Time && Random < 200
value = 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 200, Woosh]
type = PlaySnd
trigger1 = !Time
value = 1,0
channel = 1

[State 200, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 0
getpower = 72 * !var(20) * !var(40), 36 * !var(20) * !var(40)
givepower = 36, 36
pauseTime = ifElse(var(20) || var(40), 4, 8), ifElse(var(20) || var(40), 4, 8)
guard.pauseTime = ifElse(var(20) || var(40), 4, 8), ifElse(var(20) || var(40), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
guard.hittime = (12 + 2 * var(9)) - 6
ground.slideTime = 12 + 2 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.1875, -4.375), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.1875, -4.375)
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 64), var(36):= -77
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48

[State 200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
moveType = I

[State 200, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 200, Target Combo]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(2) >= 0 && AnimElemTime(4) < 0 && MoveContact && !var(20)
trigger1 = !AILevel
;command = "a"
trigger1 = NumExplod(90000230) || command = "a"
trigger2 = AILevel && !var(14)
trigger2 = P2Dist x >= 0 && MoveHit
var(14) = 230

[State 200, Followup]
type = ChangeState
trigger1 = var(14) = 230
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
value = var(14)

[State 200, End]
type = ChangeState
trigger1 = !AnimTime
value = ifElse(AILevel && var(40) && Enemy, BackEdgeDist <= 20, 1000, 0)
ctrl = 1



;STANDING FAR MEDIUM PUNCH=
[StateDef 210]
type = S
physics = S
moveType = A
anim = 210
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(40)
faceP2 = 1

[State 210, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 103200
name = "Seiei Enbu Clone 1"
posType = P1
pos = 0, 0
ownPal = 1

[State 210, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 203200
name = "Seiei Enbu Clone 2"
posType = P1
pos = 0, 0
ownPal = 1

[State 210, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 210, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 1
channel = 1

[State 210, Dust Explod]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 10210
sprPriority = -3
posType = P1
pos = 69, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
persistent = 0
ownPal = 1

[State 210, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(PrevStateNo = 230, 35, 42) < 7, 7, fvar(11) * ifElse(PrevStateNo = 230, 35, 42))), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20) || var(40), 5, 10), ifElse(var(20) || var(40), 5, 10)
guard.pauseTime = ifElse(var(20) || var(40), 5, 10), ifElse(var(20) || var(40), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 17 + 3 * var(9)
guard.hittime = (17 + 3 * var(9)) - 6
ground.slideTime = 17 + 3 * var(9)
air.hitTime = 120
ground.velocity = ifElse(PrevStateNo = 230, ifElse(var(20), -2.1875, -4.375), ifElse(var(20), -3.75, -7.5)), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(PrevStateNo = 230, ifElse(var(20), -2.1875, -4.375), ifElse(var(20), -3.75, -7.5))
guard.cornerPush.velOff = 0
air.velocity = -3.28125, -7.65625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 82), var(36) := -59
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 210, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 210
elem = 5
ignoreHitPause = 1

[State 210, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 210, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;STANDING CLOSE MEDIUM PUNCH=
[StateDef 215]
type = S
physics = S
moveType = A
anim = 215
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(40)
faceP2 = 1

[State 215, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 103200
name = "Seiei Enbu Clone 1"
posType = P1
pos = 0, 0
ownPal = 1

[State 215, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 203200
name = "Seiei Enbu Clone 2"
posType = P1
pos = 0, 0
ownPal = 1

[State 215, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 215, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 1
channel = 1

[State 215, Dust Explod]
type = Explod
trigger1 = AnimElemTime(3) = 0
anim = 10210
sprPriority = -3
posType = P1
pos = 52, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
persistent = 0
ownPal = 1

[State 215, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20) || var(40), 5, 10), ifElse(var(20) || var(40), 5, 10)
guard.pauseTime = ifElse(var(20) || var(40), 5, 10), ifElse(var(20) || var(40), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 17 + 3 * var(9)
guard.hittime = (17 + 3 * var(9)) - 6
ground.slideTime = 17 + 3 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.4375, -6.875), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.4375, -6.875)
guard.cornerPush.velOff = 0
air.velocity = -3.24, -7.73
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 53), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 215, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 215
elem = 4
ignoreHitPause = 1

[State 215, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 215, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 215, Target Combo]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0 && MoveContact && !var(20)
trigger1 = !AILevel
;command = "z"
trigger1 = (NumExplod(90000220) || command = "z")
trigger2 = AILevel && !var(14)
trigger2 = P2Dist x >= 0 && MoveHit
var(14) = 221

[State 215, Followup]
type = ChangeState
trigger1 = var(14) = 221
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
value = var(14)

[State 215, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;STANDING FAR HEAVY PUNCH=
[StateDef 220]
type = S
physics = S
moveType = A
anim = 220
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(40)
facep2 = 1

[State 220, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 103200
name = "Seiei Enbu Clone 1"
posType = P1
pos = 0, 0
ownPal = 1

[State 220, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 203200
name = "Seiei Enbu Clone 2"
posType = P1
pos = 0, 0
ownPal = 1

[State 220, Voice]
type = PlaySnd
trigger1 = AnimElem = 4 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 220, Woosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,2
channel = 1

[State 220, Width]
type = Width
trigger1 = AnimElemTime(4) = 1
value = 10, 0

[State 220, Dust Explod]
type = Explod
trigger1 = AnimElemTime(5) = 0
anim = 10220
sprPriority = -3
posType = P1
pos = 71, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
persistent = 0
ownPal = 1

[State 220, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
guard.pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 28 + 4 * var(9)
guard.hittime = (28 + 4 * var(9)) - 6
ground.slideTime = 28 + 4 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -4.78125, -10.52)
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.78125, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -5.39, -5.65
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 104), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 220, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 220
elem = 6
ignoreHitPause = 1

[State 220, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
movetype = I

[State 220, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;TARGET COMBO 2 (PART 1)=
guardflags = 
[StateDef 221]
type = S
physics = S
moveType = A
anim = 221
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
facep2 = 1

[State 221, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 103200
name = "Seiei Enbu Clone 1"
posType = P1
pos = 0, 0
ownPal = 1

[State 221, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 203200
name = "Seiei Enbu Clone 2"
posType = P1
pos = 0, 0
ownPal = 1

[State 221, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 221, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 221, Dust Explod]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 10220
sprPriority = -3
posType = P1
pos = 71, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
persistent = 0
ownPal = 1

[State 221, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
guard.pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = -4.6875
ground.cornerPush.velOff = 0
guard.velocity = -4.6875
guard.cornerPush.velOff = 0
air.velocity = -5.39, -5.65
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 104), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 221, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 221
elem = 5
ignoreHitPause = 1

[State 221, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
movetype = I

[State 221, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 221, Target Combo]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(4) >= 0 && AnimElemTime(7) < 0 && MoveContact && !var(20)
trigger1 = !AILevel
;command = "holdback" && command = "z"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000004)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000006))
trigger1 = NumExplod(90000220) || command = "z"
trigger2 = AILevel && !var(14)
trigger2 = P2Dist x >= 0 && MoveHit
var(14) = 222

[State 221, Followup]
type = ChangeState
trigger1 = var(14) = 222
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
value = var(14)

[State 221, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;TARGET COMBO 2 (PART 2)=
[StateDef 222]
type = S
physics = S
moveType = A
anim = 222
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
facep2 = 1

[State 222, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 103200
name = "Seiei Enbu Clone 1"
posType = P1
pos = 0, 0
ownPal = 1

[State 222, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 203200
name = "Seiei Enbu Clone 2"
posType = P1
pos = 0, 0
ownPal = 1

[State 222, PosAdd]
type = PosAdd
trigger1 = !Time
x = 28

[State 222, Voice]
type = PlaySnd
trigger1 = AnimElem = 5 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 222, Woosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 2
channel = 1

[State 222, Dust Explod]
type = Explod
trigger1 = AnimElemTime(6) = 0
anim = 10220
sprPriority = -3
posType = P1
pos = 40, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
persistent = 0
ownPal = 1

[State 222, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
guard.pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = -1.25, -7.1875
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -1.25, -8.28125
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 49), var(36) := -56
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
persistent = 0

[State 222, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 222
elem = 6
ignoreHitPause = 1

[State 222, Energy Explod]
type = Explod
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
anim = 11305
ID = 11305
sprPriority = 1
posType = P1
pos = 0, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ignoreHitPause = 1
persistent = 0
ownPal = 1

[State 222, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
movetype = I

[State 222, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;STANDING CLOSE HEAVY PUNCH=
[StateDef 225]
type = S
physics = S
moveType = A
anim = 225
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
facep2 = 1

[State 225, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 103200
name = "Seiei Enbu Clone 1"
posType = P1
pos = 0, 0
ownPal = 1

[State 225, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 203200
name = "Seiei Enbu Clone 2"
posType = P1
pos = 0, 0
ownPal = 1

[State 225, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 225, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2
channel = 1

[State 225, Dust Explod]
type = Explod
trigger1 = AnimElemTime(4) = 0
anim = 10220
sprPriority = -3
posType = P1
pos = 52, 0
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
persistent = 0
ownPal = 1

[State 225, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = 
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getPower = ifElse(!var(13), 108, 36) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 18, 18
pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
guard.pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -5.625, -10.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.625, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -3.24, -7.73
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 62), var(36) := -30
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
forceStand = 1

[State 225, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getPower = ifElse(!var(13), 108, 36) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 18, 18
pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
guard.pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 23 + 4 * var(9)
guard.hittime = (23 + 4 * var(9)) - 6
ground.slideTime = 23 + 4 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -5.625, -10.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.625, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -3.24, -7.73
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 62), var(36) := -101
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
forceStand = 1

[State 225, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
movetype = I

[State 225, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;STANDING LIGHT KICK=
[StateDef 230]
type = S
physics = S
moveType = A
anim = 230
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
facep2 = 1

[State 230, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 103200
name = "Seiei Enbu Clone 1"
posType = P1
pos = 0, 0
ownPal = 1

[State 230, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 203200
name = "Seiei Enbu Clone 2"
posType = P1
pos = 0, 0
ownPal = 1

[State 230, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 200
value = 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 230, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 3
channel = 1

[State 230, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 0
getPower = 72 * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20) || var(40), 4, 8), ifElse(var(20) || var(40), 4, 8)
guard.pauseTime = ifElse(var(20) || var(40), 4, 8), ifElse(var(20) || var(40), 4, 8)
animtype = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2 * var(9)
guard.hittime = (12 + 2 * var(9)) - 6
ground.slideTime = 12 + 2 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.1875, -4.375), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.1875, -4.375)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0*(var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -25
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 230, StateTypeSet: Idle]
type = StateTypeSet
trigger1= AnimElemTime(5) >= 0
moveType = I

[State 230, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 230, Target Combo]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(4) >= 0 && AnimElemTime(6) < 0 && MoveContact && !var(20)
trigger1 = !AILevel
;command = "b"
trigger1 = NumExplod(90000240) || command = "b"
trigger2 = AILevel && !var(14)
trigger2 = (P2Dist x >= 0 && P2Dist x < 70) && MoveHit
var(14) = 245

[State 230, Followup]
type = ChangeState
trigger1 = var(14) = 245
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
value = var(14)

[State 230, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;STANDING FAR MEDIUM KICK=
[StateDef 240]
type = S
physics = S
moveType = A
anim = 240
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(40)
faceP2 = 1

[State 240, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 103200
name = "Seiei Enbu Clone 1"
posType = P1
pos = 0, 0
ownPal = 1

[State 240, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 203200
name = "Seiei Enbu Clone 2"
posType = P1
pos = 0, 0
ownPal = 1

[State 240, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 240, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,4
channel = 1

[State 240, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20) || var(40), 5, 10), ifElse(var(20) || var(40), 5, 10)
guard.pauseTime = ifElse(var(20) || var(40), 5, 10), ifElse(var(20) || var(40), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15 + 3 * var(9)
guard.hittime = (15 + 3 * var(9)) - 6
ground.slideTime = 15 + 3 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.75, -7.5), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.75, -7.5)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 101), var(36) := -84
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 240, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
movetype = I

[State 240, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;STANDING CLOSE MEDIUM KICK=
[StateDef 245]
type = S
physics = S
moveType = A
anim = 245
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(40)
faceP2 = 1

[State 245, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 103200
name = "Seiei Enbu Clone 1"
posType = P1
pos = 0, 0
ownPal = 1

[State 245, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 203200
name = "Seiei Enbu Clone 2"
posType = P1
pos = 0, 0
ownPal = 1

[State 245, Skip to penultimate startup frame for Target Combo]
type = ChangeAnim
trigger1 = !Time && PrevStateNo = 230 && var(14) = 245
value = 245
elem = 2
ignoreHitPause = 1

[State 245, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 245, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,4
channel = 1

[State 245, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
ID = 245
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(PrevStateNo = 230, 28, 35) < 7, 7, fvar(11) * ifElse(PrevStateNo = 230, 28, 35))), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20) || var(40), 5, 10), ifElse(var(20) || var(40), 5, 10)
guard.pauseTime = ifElse(var(20) || var(40), 5, 10), ifElse(var(20) || var(40), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15 + 3 * var(9)
guard.hittime = (15 + 3 * var(9)) - 6
ground.slideTime = 15 + 3 * var(9)
air.hitTime = 120
ground.velocity = ifElse(PrevStateNo = 230, -4.6875, -2.5), ifElse(PrevStateNo = 230, 0, -7.96875)
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.75, -7.5)
guard.cornerPush.velOff = 0
air.velocity = -1.25, -8.75
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = ifElse(PrevStateNo = 230, 0, 1)
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 245, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 245
elem = 5
ignoreHitPause = 1

[State 245, Juggle Reset]
type = VarSet
trigger1 = MoveHit && !var(24) && NumTarget(245)
var(15) = 0

[State 245, s.MK Juggle Flag]
type = VarAdd
trigger1 = MoveHit && NumTarget(245)
var(24) = 1
persistent = 0

[State 245, Juggle Flag]
type = VarSet
trigger1 = var(24) = 2
var(16) = 1

[State 245, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
movetype = I

[State 245, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 245, High Jump Cancel]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(4) >= 0 && AnimElemTime(7) < 0 && MoveContact && !var(20)
triggerAll = PrevStateNo != 230
trigger1 = !AILevel
;command = "highjump"
trigger1 = NumExplod(90000408)
var(14) = 246

[State 245, Target Combo]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(4) >= 0 && AnimElemTime(7) < 0 && MoveContact && !var(20) && !var(40)
triggerAll = PrevStateNo = 230
trigger1 = !AILevel
;command = "c"
trigger1 = NumExplod(90000250) || command = "c"
trigger2 = AILevel && !var(14)
trigger2 = P2Dist x >= 0 && MoveHit
var(14) = 251

[State 245, Followup]
type = ChangeState
trigger1 = var(14) = 246 || var(14) = 251
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
value = var(14)

[State 245, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;High Jump Cancel
[StateDef 246]
type = S
physics = S
moveType = I
anim = 40
ctrl = 0
velSet = 0,0
sprPriority = 1
faceP2 = 1

[State 246, Juggle Reset]
type = VarSet
trigger1 = !Time
var(15) = 0

[State 246, High Jump Cancel Flag On]
type = VarSet
trigger1 = !Time
var(43) = 1

[State 246, Direction]
type = VarSet
trigger1 = !AILevel
trigger1 = !NumExplod(94646464) && !NumExplod(92468246)
sysvar(1) = ifElse(!Time, 0, ifElse(command = "holdfwd", 1, ifElse(command = "holdback", -1, sysvar(1))))

[State 246, Direction (Reversed Commands)]
type = VarSet
trigger1 = !AILevel
trigger1 = NumExplod(94646464) || NumExplod(92468246)
sysvar(1) = ifElse(!Time, 0, ifElse(command = "holdback", 1, ifElse(command = "holdfwd", -1, sysvar(1))))

[State 246, Direction (AI)]
type = VarSet
trigger1 = AILevel
sysvar(1) = ifElse((EnemyNear, MoveType != A || BackEdgeBodyDist <= 10), 1, ifElse((EnemyNear, MoveType = A), -1, 0))

[State 246, High Jump]
type = VarSet
trigger1 = !Time
var(3) = 3

[State 246, Jump Sound]
type = PlaySnd
trigger1 = !AnimTime
value = 41,0

[State 246, Dust Helper]
type = Helper
trigger1 = !AnimTime
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 246, Velocity: Long Jump]
type = VelSet
trigger1 = !AnimTime && var(3) = 3
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = ifElse(!sysvar(1), const(velocity.runjump.y), ifElse(sysvar(1) = 1, -9.140625, -9.453125))

[State 246, End]
type = ChangeState
trigger1 = !AnimTime
value = 50
ctrl = 1



;SENPUU KYAKU=
[StateDef 248]
type = S
physics = N
moveType = A
anim = 248
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(40)
faceP2 = 1

[State 248, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 103200
name = "Seiei Enbu Clone 1"
posType = P1
pos = 0, 0
ownPal = 1

[State 248, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 203200
name = "Seiei Enbu Clone 2"
posType = P1
pos = 0, 0
ownPal = 1

[State 248, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = 10

[State 248, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
x = 6

[State 248, PosAdd]
type = PosAdd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7
x = 8

[State 248, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 248, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 0.078125
y = -4.375

[State 248, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) > 0
y = 0.78125

[State 248, Voice]
type = PlaySnd
trigger1 = AnimElem = 6
value = 4, 2
channel = 0

[State 248, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1, 4
channel = 1

[State 248, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 7
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20) || var(40), 5, 10), ifElse(var(20) || var(40), 5, 10)
guard.pauseTime = ifElse(var(20) || var(40), 7, 14), ifElse(var(20) || var(40), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
guard.hittime = (15 + 3 * var(9)) - 6
ground.slideTime = 15 + 3 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.75, -7.5), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.75, -7.5)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 248, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 249


;Landing
[StateDef 249]
type = S
anim = 249
physics = N
moveType = I
velSet = 0,0

[State 249, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 249, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = 8

[State 249, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 249, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 4

[State 249, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;STANDING FAR HEAVY KICK=
[StateDef 250]
type = S
physics = N
moveType = A
anim = 250
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(40)
faceP2 = 1

[State 250, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 103200
name = "Seiei Enbu Clone 1"
posType = P1
pos = 0, 0
ownPal = 1

[State 250, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 203200
name = "Seiei Enbu Clone 2"
posType = P1
pos = 0, 0
ownPal = 1

[State 250, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = 16

[State 250, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 8

[State 250, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 250, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 5
channel = 1

[State 250, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
guard.pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -5.625, -10.52)
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.625, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -5, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 76), var(36) := -74
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 250, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 250
elem = 5
ignoreHitPause = 1

[State 250, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 250, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;STANDING FAR HEAVY KICK (TARGET COMBO)=
[StateDef 251]
type = S
physics = N
moveType = A
anim = 251
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(40)
faceP2 = 1

[State 251, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 103200
name = "Seiei Enbu Clone 1"
posType = P1
pos = 0, 0
ownPal = 1

[State 251, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 203200
name = "Seiei Enbu Clone 2"
posType = P1
pos = 0, 0
ownPal = 1

[State 251, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = 16

[State 251, Voice]
type = PlaySnd
trigger1 = !Time && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 251, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 5
channel = 1

[State 251, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
guard.pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = -5, -6.5625
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.625, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -5, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 80), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 251, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 251
elem = 3
ignoreHitPause = 1

[State 251, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 251, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;STANDING HEAVY KICK (DODGE)=
[StateDef 252]
type = S
physics = N
moveType = A
anim = 252
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(40)
faceP2 = 1

[State 252, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 103200
name = "Seiei Enbu Clone 1"
posType = P1
pos = 0, 0
ownPal = 1

[State 252, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 203200
name = "Seiei Enbu Clone 2"
posType = P1
pos = 0, 0
ownPal = 1

[State 252, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 16

[State 252, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 252, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 5
channel = 1

[State 252, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
guard.pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = -5, -6.5625
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.625, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -5, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 78), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 252, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 252
elem = 5
ignoreHitPause = 1

[State 252, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 252, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;CROUCHING LIGHT PUNCH=
[StateDef 400]
type = C
physics = C
moveType = A
anim = 400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 400, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 103200
name = "Seiei Enbu Clone 1"
posType = P1
pos = 0, 0
ownPal = 1

[State 400, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 203200
name = "Seiei Enbu Clone 2"
posType = P1
pos = 0, 0
ownPal = 1

[State 400, Voice]
type = PlaySnd
trigger1 = !Time && Random < 200
value = 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 400, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1,0
channel = 1

[State 400, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 0
getPower = 72 * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20) || var(40), 4, 8), ifElse(var(20) || var(40), 4, 8)
guard.pauseTime = ifElse(var(20) || var(40), 4, 8), ifElse(var(20) || var(40), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2 * var(9)
guard.hittime = (12 + 2 * var(9)) - 6
ground.slideTime = 12 + 2 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.5, -4.53125), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.5, -4.531259)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -54
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 400, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 400
elem = 3
ignoreHitPause = 1

[State 400, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 400, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1



;CROUCHING MEDIUM PUNCH=
[StateDef 410]
type = C
physics = C
moveType = A
anim = 410
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(40)
faceP2 = 1

[State 410, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 103200
name = "Seiei Enbu Clone 1"
posType = P1
pos = 0, 0
ownPal = 1

[State 410, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 203200
name = "Seiei Enbu Clone 2"
posType = P1
pos = 0, 0
ownPal = 1

[State 410, Voice]
type = PlaySnd
trigger1 = !Time && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 410, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 1
channel = 1

[State 410, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20) || var(40), 5, 10), ifElse(var(20) || var(40), 5, 10)
guard.pauseTime = ifElse(var(20) || var(40), 5, 10), ifElse(var(20) || var(40), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
guard.hittime = (15 + 3 * var(9)) - 6
ground.slideTime = 15 + 3 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.75, -7.5), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.75, -7.5)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -3
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 410, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 410
elem = 4
ignoreHitPause = 1

[State 410, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 410, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1



;CROUCHING HEAVY PUNCH=
[StateDef 420]
type = C
physics = C
moveType = A
anim = 420
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(40)
faceP2 = 1

[State 420, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 103200
name = "Seiei Enbu Clone 1"
posType = P1
pos = 0, 0
ownPal = 1

[State 420, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 203200
name = "Seiei Enbu Clone 2"
posType = P1
pos = 0, 0
ownPal = 1

[State 420, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 420, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2
channel = 1

[State 420, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getPower = ifElse(!var(13), 108, 36)*!var(20), 36*!var(20)
givePower = 18, 18
pauseTime = ifElse(var(20) || var(40), 3, 6), ifElse(var(20) || var(40), 3, 6)
guard.pauseTime = ifElse(var(20) || var(40), 3, 6), ifElse(var(20) || var(40), 3, 6)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.1875, -4.375), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.1875, -4.375)
guard.cornerPush.velOff = 0
air.velocity = -3.23, -7.73
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 70), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 420, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < (1 + HitCount) || var(20))
trigger1 = AnimElem = 6
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
guard.pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -6.875, -10.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -6.875, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -3.23, -7.73
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -62
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 420, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 420
elem = 7
ignoreHitPause = 1

[State 420, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 420, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1



;CROUCHING LIGHT KICK=
[StateDef 430]
type = C
physics = C
moveType = A
anim = 430
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 430, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 103200
name = "Seiei Enbu Clone 1"
posType = P1
pos = 0, 0
ownPal = 1

[State 430, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 203200
name = "Seiei Enbu Clone 2"
posType = P1
pos = 0, 0
ownPal = 1

[State 430, Voice]
type = PlaySnd
trigger1 = !Time && Random < 200
value = 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 430, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1,3
channel = 1

[State 430, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 0
getPower = 72 * !var(20) * !var(40), 36 * !var(20) * !var(40)
givepower = 36, 36
pauseTime = ifElse(var(20) || var(40), 4, 8), ifElse(var(20) || var(40), 4, 8)
guard.pauseTime = ifElse(var(20) || var(40), 4, 8), ifElse(var(20) || var(40), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2 * var(9)
guard.hittime = (12 + 2 * var(9)) - 6
ground.slideTime = 12 + 2 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.5, -4.53125), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.5, -4.53125)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 56), var(36) := -2
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 430, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 430
elem = 4
ignoreHitPause = 1

[State 430, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 430, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1



;CROUCHING MEDIUM KICK=
[StateDef 440]
type = C
physics = C
moveType = A
anim = 440
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(40)
faceP2 = 1

[State 440, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 103200
name = "Seiei Enbu Clone 1"
posType = P1
pos = 0, 0
ownPal = 1

[State 440, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 203200
name = "Seiei Enbu Clone 2"
posType = P1
pos = 0, 0
ownPal = 1

[State 440, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 440, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,4
channel = 1

[State 440, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getPower = ifElse(!var(13),144,72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20) || var(40), 5, 10), ifElse(var(20) || var(40), 5, 10)
guard.pauseTime = ifElse(var(20) || var(40), 5, 10), ifElse(var(20) || var(40), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
guard.hittime = (15 + 3 * var(9)) - 6
ground.slideTime = 15 + 3 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.75, -7.5), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.75, -7.5)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 72), var(36) := -2
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 440, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 440
elem = 5
ignoreHitPause = 1

[State 440, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
movetype = I

[State 440, End]
type = Changestate
trigger1 = !AnimTime
value = 11
ctrl = 1



;CROUCHING HEAVY KICK=
[StateDef 450]
type = C
physics = C
moveType = A
anim = 450
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(40)
faceP2 = 1

[State 450, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 103200
name = "Seiei Enbu Clone 1"
posType = P1
pos = 0, 0
ownPal = 1

[State 450, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 203200
name = "Seiei Enbu Clone 2"
posType = P1
pos = 0, 0
ownPal = 1

[State 450, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 450, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,5
channel = 1

[State 450, PosAdd]
type = PosAdd
trigger1 = AnimElem = 4
x = 10

[State 450, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
x = 2

[State 450, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 77 < 7, 7, fvar(11) * 77)), 0
getpower = ifElse(!var(13), 216, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givepower = 36, 36
pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
guard.pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Trip
air.type = Trip
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = -1.25, -7.1875
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -1.25, -8.28125
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 73), var(36) := -2
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 450, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(6) >= 0
moveType = I

[State 450, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1



;JUMPING LIGHT PUNCH=
[StateDef 600]
type = A
physics = N
moveType = A
anim = 600
ctrl = 0
sprPriority = 1
powerAdd = 0

[State 600, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 103200
name = "Seiei Enbu Clone 1"
posType = P1
pos = 0, 0
ownPal = 1

[State 600, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 203200
name = "Seiei Enbu Clone 2"
posType = P1
pos = 0, 0
ownPal = 1

[State 600, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 200
value = 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 600, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,0
channel = 1

[State 600, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 0
getPower = 72 * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20) || var(40), 4, 8), ifElse(var(20) || var(40), 4, 8)
guard.pauseTime = ifElse(var(20) || var(40), 4, 8), ifElse(var(20) || var(40), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
guard.hittime = (12 + 2 * var(9)) - 6
ground.slideTime = 12 + 2 * var(9)
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.41, -4.49)
guard.cornerPush.velOff = 0
air.velocity = -5, -6.5625
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 34), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 600, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 600
elem = 4
ignoreHitPause = 1

[State 600, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 600, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 600, VelAdd]
type = VelAdd
trigger1 = vel x
x = ifElse((var(3) = [2,3]), -0.04577636719, -0.03051757813) * ifElse(vel x < 0, -1, 1)

[State 600, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;JUMPING MEDIUM PUNCH=
[StateDef 610]
type = A
physics = N
moveType = A
anim = 610
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(40)

[State 610, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 103200
name = "Seiei Enbu Clone 1"
posType = P1
pos = 0, 0
ownPal = 1

[State 610, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 203200
name = "Seiei Enbu Clone 2"
posType = P1
pos = 0, 0
ownPal = 1

[State 610, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 610, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 1
channel = 1

[State 610, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20) || var(40), 5, 10), ifElse(var(20) || var(40), 5, 10)
guard.pauseTime = ifElse(var(20) || var(40), 5, 10), ifElse(var(20) || var(40), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 12 + 3 * var(9)
guard.hittime = (12 + 3 * var(9)) - 6
ground.slideTime = 12 + 3 * var(9)
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 48), var(36) := -56
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 610, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
movetype = I

[State 610, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 610, VelAdd]
type = VelAdd
trigger1 = vel x
x = ifElse((var(3) = [2,3]), -0.04577636719, -0.03051757813) * ifElse(vel x < 0, -1, 1)

[State 610, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;JUMPING HEAVY PUNCH=
[StateDef 620]
type = A
physics = N
moveType = A
anim = 620
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(40)

[State 620, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 103200
name = "Seiei Enbu Clone 1"
posType = P1
pos = 0, 0
ownPal = 1

[State 620, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 203200
name = "Seiei Enbu Clone 2"
posType = P1
pos = 0, 0
ownPal = 1

[State 620, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 620, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,2
channel = 1

[State 620, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 77 < 7, 7, fvar(11) * 77)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
guard.pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
animtype = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 4 * var(9)
guard.hittime = (12 + 4 * var(9)) - 6
ground.slideTime = 12 + 4 * var(9)
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 48), var(36) := -56
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 620, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 620, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 620, VelAdd]
type = VelAdd
trigger1 = vel x
x = ifElse((var(3) = [2,3]), -0.04577636719, -0.03051757813) * ifElse(vel x < 0, -1, 1)

[State 620, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;JUMPING LIGHT KICK=
[StateDef 630]
type = A
physics = N
moveType = A
anim = 630
ctrl = 0
sprPriority = 1
powerAdd = 0

[State 630, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 103200
name = "Seiei Enbu Clone 1"
posType = P1
pos = 0, 0
ownPal = 1

[State 630, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 203200
name = "Seiei Enbu Clone 2"
posType = P1
pos = 0, 0
ownPal = 1

[State 630, Voice]
type = PlaySnd
trigger1 = !Time && Random < 200
value= 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 630, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 3
channel = 1

[State 630, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getPower = 72 * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20) || var(40), 4, 8), ifElse(var(20) || var(40), 4, 8)
guard.pauseTime = ifElse(var(20) || var(40), 4, 8), ifElse(var(20) || var(40), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
guard.hittime = (12 + 2 * var(9)) - 6
ground.slideTime = 12 + 2 * var(9)
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.41, -4.49)
guard.cornerPush.velOff = 0
air.velocity = -3.23, -7.73
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 70), var(36) := -88
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 630, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 630
elem = 3
ignoreHitPause = 1

[State 630, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 630, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 630, VelAdd]
type = VelAdd
trigger1 = vel x
x = ifElse((var(3) = [2,3]), -0.04577636719, -0.03051757813) * ifElse(vel x < 0, -1, 1)

[State 630, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;JUMPING MEDIUM KICK=
[StateDef 640]
type = A
physics = N
moveType = A
anim = 640
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(40)

[State 640, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 103200
name = "Seiei Enbu Clone 1"
posType = P1
pos = 0, 0
ownPal = 1

[State 640, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 203200
name = "Seiei Enbu Clone 2"
posType = P1
pos = 0, 0
ownPal = 1

[State 640, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 640, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 4
channel = 1

[State 640, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20) || var(40), 5, 10), ifElse(var(20) || var(40), 5, 10)
guard.pauseTime = ifElse(var(20) || var(40), 5, 10), ifElse(var(20) || var(40), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 3 * var(9)
guard.hittime = (12 + 3 * var(9)) - 6
ground.slideTime = 12 + 3 * var(9)
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -3.23, -7.73
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -40
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 640, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
movetype = I

[State 640, Followup Detection Reset]
type = VarSet
trigger1 = !Time
var(14) = 0

[State 640, Target Combo]
type = VarSet
triggerAll = (!var(14) || AILevel) && AnimElemTime(4) >= 0 && AnimElemTime(6) < 0 && MoveContact && !var(20) && !var(40)
trigger1 = !AILevel
;command = "holddown" && command = "holdfwd" && command = "b"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && NumExplod(90000003)) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && NumExplod(90000001))
trigger1 = NumExplod(90000240) || NumExplod(90000245)
trigger2 = AILevel && !var(14)
trigger2 = P2Dist x >= 0 && MoveHit
var(14) = 658

[State 640, FollowUp]
type = ChangeState
trigger1 = var(14) = 658
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
value = var(14)

[State 640, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 640, VelAdd]
type = VelAdd
trigger1 = vel x
x = ifElse((var(3) = [2,3]), -0.04577636719, -0.03051757813) * ifElse(vel x < 0, -1, 1)

[State 640, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;JUMPING HEAVY KICK=
[StateDef 650]
type = A
physics = N
moveType = A
anim = 650
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(40)

[State 650, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 103200
name = "Seiei Enbu Clone 1"
posType = P1
pos = 0, 0
ownPal = 1

[State 650, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 203200
name = "Seiei Enbu Clone 2"
posType = P1
pos = 0, 0
ownPal = 1

[State 650, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 650, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,5
channel = 1

[State 650, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 77 < 7, 7, fvar(11) * 77)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
guard.pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 4 * var(9)
guard.hittime = (12 + 4 * var(9)) - 6
ground.slideTime = 12 + 4 * var(9)
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -105
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 650, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 650, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 650, VelAdd]
type = VelAdd
trigger1 = vel x
x = ifElse((var(3) = [2,3]), -0.04577636719, -0.03051757813) * ifElse(vel x < 0, -1, 1)

[State 650, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;RAIGEKI SHUU=
[StateDef 658]
type = A
physics = N
moveType = A
anim = 658
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(40)

[State 658, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 103200
name = "Seiei Enbu Clone 1"
posType = P1
pos = 0, 0
ownPal = 1

[State 658, Helper]
type = Helper
trigger1 = !Time && var(40)
helperType = Player
stateNo = 103200
ID = 203200
name = "Seiei Enbu Clone 2"
posType = P1
pos = 0, 0
ownPal = 1

[State 658, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
;ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 658, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2BodyDist x >= 50 || var(3) = [2, 3]), 2, IfElse(P2BodyDist x >= 20 && P2BodyDist x < 50, 1, 0))

[State 658, Skip to penultimate startup frame for Target Combo]
type = ChangeAnim
trigger1 = !Time && PrevStateNo = 640 && var(14) = 658
value = 658
elem = 2
ignoreHitPause = 1

[State 658, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, 1
channel = 0

[State 658, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 5
channel = 1

[State 658, PosFreeze]
type = PosFreeze
trigger1 = AnimElemTime(3) < 0

[State 658, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 0
x = IfElse(!var(10), 2.5, ifElse(var(10) = 1, 5, 7.5))
y = 2.8125

[State 0, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 0
y = 0.390625

[State 658, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !MoveContact && !MoveReversed
ID = 658
attr = A, NA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getPower = 72 * !var(20) * !var(40), 36 * !var(20) * !var(40)
givePower = 36, 36
pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
guard.pauseTime = ifElse(var(20) || var(40), 6, 12), ifElse(var(20) || var(40), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 4 * var(9)
guard.hittime = (12 + 4 * var(9)) - 6
ground.slideTime = 12 + 4 * var(9)
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -3.66, -7.51), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -6.83, -12.64)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -6.5
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -18
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 658, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 659


;Landing
[StateDef 659]
type = S
anim = 659
physics = N
moveType = I
velSet = 0,0
moveHitPersist = 1

[State 659, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 659, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 659, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 1

[State 659, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;THROW ATTEMPT=
[StateDef 800]
type = S
physics = S
movetype = A
anim = 800
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20) * !var(40)
faceP2 = 1

[State 800, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = (command = "kk")

[State 800, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = 1

[State 800, Tech Hit Reset]
type = VarSet
trigger1 = 1
var(19) = 0

[State 800, Tech Hit]
type = VarSet
trigger1 = NumEnemy
trigger1 = EnemyNear, StateType != A
trigger1 = (EnemyNear, StateNo = [0,999]) && (EnemyNear, StateNo != [100,119]) && (EnemyNear, StateNo != [200,799])
var(19) = 7

[State 800, AttackDist]
type = AttackDist
trigger1 = 1
value = 0

[State 800, HitDef: PP Throw]
type = HitDef
trigger1 = AnimElem = 2
trigger1 = P2BodyDist x < 55
trigger1 = !var(38)
attr = S, NT
hitFlag = M-
priority = 1, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 +0 * (var(33) := 0)
guard.sparkNo = -1 +0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 +0 * (var(31) := 800)
guardSound = -1 +0 * (var(32) := 0)
fall = 1
fall.recover = 1
numHits = 0
p1StateNo = ifElse(ifElse(!NumExplod(92828282) && !NumExplod(92468246), command = "holdback", command = "holdfwd"), 820, 805)

[State 800, HitDef: KK Throw]
type = HitDef
trigger1 = AnimElem = 2 && var(10)
trigger1 = !var(38)
trigger1 = P2BodyDist x < 55
attr = S, NT
hitFlag = M-
priority = 1, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 +0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 +0 * (var(31) := 800)
guardSound = -1 +0 * (var(32) := 0)
fall = 1
fall.recover = 1
numhits = 0
p1StateNo = ifElse(ifElse(!NumExplod(92828282) && !NumExplod(92468246), command = "holdback", command = "holdfwd"), 805, 810)

[State 800, Voice (Missed)]
type = PlaySnd
trigger1 = AnimElem = 3
value = 800, 0
channel = 0

[State 800, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,0
channel = 1

[State 800, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
moveType = I

[State 800, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;THROW SWITCHING SIDES=
[StateDef 805]
type = S
moveType = A
physics = S
anim = 805
ctrl = 0
sprPriority = 0

[State 805, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 806

[State 805, TargetFacing]
type = TargetFacing
trigger1 = !Time && NumTarget
value = -1

[State 805, Width]
type = Width
trigger1 = 1
edge = 24,24
ignoreHitPause = 1

[State 805, Turn]
type = Turn
trigger1 = AnimElem = 4

[State 805, Facing]
type = TargetFacing
trigger1 = 1
value = -1

[State 805, Tech Hit]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback") && Target, command != "holdup" && Target, command != "holddown"
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 805, Tech Hit Countdown]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 805, TargetBind 1]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = 30,0

[State 805, TargetBind 2]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger2 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = 20,0

[State 805, TargetBind 3]
type = TargetBind
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = 0, 0

[State 805, SprPriority 1]
type = SprPriority
trigger1 = AnimElemTime(2) < 0 || AnimElemTime(5) >= 0
value = 1

[State 805, SprPriority 2]
type = SprPriority
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(5) < 0
value = -1

[State 805, End]
type = ChangeState
trigger1 = !NumTarget
value = 0
ctrl = 1

[State 805, End]
type = ChangeState
trigger1 = AnimElemTime(5) >= 0
value = ifElse(var(10), 810, 820)



;THROW SWITCHING SIDES (TARGET)=
[StateDef 806]
type = S
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 806, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 806, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 806

[State 806, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 806, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 1,1
ignoreHitPause = 1

[State 806, SelfState]
type = SelfState
trigger1 = Time >= 60
value = ifElse(pos y < 0, 5040, 0)
ctrl = 1



;ELBOW THROW=
[Statedef 810]
type = S
physics = N
moveType = A
anim = 810
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 810, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 810, Tech Hit]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback")
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 810, Throw Escape]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 810, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 815

[State 820, Width]
type = Width
trigger1 = AnimElemTime(4) < 0
edge = 48, 0

[State 810, TargetBind]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) < 0
pos = 60, 0

[State 810, BindToTarget 1]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = 30, 73, Head

[State 810, BindToTarget 2]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = 30, 85, Head

[State 810, BindToTarget 3]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = 40, 32, Mid

[State 810, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElemTime(6) = 0
value = floor(ifElse(112 * fvar(11) < 7, -7, -112 * fvar(11)))

[State 810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElemTime(6) = 0
value = 36

[State 810, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElemTime(6) = 0 && !var(20)
value = 72

[State 810, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElemTime(6) = 0
value = 1

[State 810, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(6) = 0
var(13) = 1

[State 810, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(6) = 0
var(15) = 1
ignoreHitPause = 1

[State 810, Throw]
type = TargetState
trigger1 = NumTarget && AnimElemTime(7) = 0
value = 816

[State 810, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 810, 0
channel = 0

[State 810, Woosh Sound]
type = PlaySnd
trigger1= AnimElem = 5
value = 1, 4
channel = 1

[State 810, Hit Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElemTime(6) = 0
value = 2, 4
channel = 2

[State 810, Hit Spark]
type = Helper
trigger1 = NumTarget && AnimElemTime(6) = 0
helperType = Normal
stateNo = 8012
ID = 8001
name = "Spark"
posType = P1
pos = 40, -30
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 810, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = -3.75
y = -3.75

[State 810, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(7) > 0
y = 0.48828125

[State 810, End]
type = ChangeState
trigger1 = AnimElemTime(7) > 0
trigger1 = pos y > -vel y
value = 811


;Landing
[StateDef 811]
type = S
anim = 811
physics = N
moveType = I
velSet = 0, 0

[State 811, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 811, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 811, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 4

[State 811, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;ELBOW THROW (TARGET)=
;Being Thrown
[StateDef 815]
type = A
moveType = H
physics = N
velSet = 0, 0
sprPriority = 0

[State 815, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 815

[State 815, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 815, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1


;After Throw
[StateDef 816]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -4.375, -5

[State 826, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5070

[State 826, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,1
ignoreHitPause = 1

[State 826, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.5126953125

[State 826, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 826, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 826, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;MONKEY TOSS=
[Statedef 820]
type = S
physics = N
moveType = A
anim = 820
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 820, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 820, Tech Hit]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback")
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 820, Throw Escape]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 820, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 825

[State 820, Width]
type = Width
trigger1 = AnimElemTime(10) < 0
edge = 50, 50

[State 820, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) < 0
pos = 60, 0

[State 820, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(7) < 0
pos = 30, 0

[State 820, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = 5, 0

[State 820, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
pos = 0, -52

[State 820, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
pos = -32, -26

[State 820, TargetBind 6]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
pos = -108, -8

[State 820, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElemTime(11) = 0
value = floor(ifElse(126 * fvar(11) < 7, -7, -126 * fvar(11)))

[State 820, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElemTime(11) = 0
value = 36

[State 820, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElemTime(11) = 0 && !var(20)
value = 72

[State 820, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElemTime(11) = 0
value = 1

[State 820, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(11) = 0
var(13) = 1

[State 820, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(11) = 0
var(15) = 1
ignoreHitPause = 1

[State 820, Throw]
type = TargetState
trigger1 = NumTarget && AnimElemTime(11) = 0
value = 826

[State 820, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 820, 0
channel = 0

[State 820, Ground Sound]
type = PlaySnd
trigger1= AnimElem = 8
value = 2, 820
channel = 4

[State 52, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 16
value = 52, 0
channel = 5

[State 820, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;MONKEY TOSS (TARGET)=
;Being Thrown
[StateDef 825]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 825, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 825

[State 825, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
trigger2 = AnimElem = 3
trigger3 = AnimElem = 5
ignoreHitPause = 1

[State 825, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
value = 2

[State 825, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(4) >= 0
value = 0

[State 825, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1


;After Throw
[StateDef 826]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 6.25, -5.78125

[State 826, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5160

[State 826, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,1
ignoreHitPause = 1

[State 826, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.5126953125

[State 826, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 826, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 826, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;THROW ESCAPED=
[StateDef 890]
type = S
physics = N
movetype = I
anim = 5945
ctrl = 0
velset = 0,0
sprPriority = 1

[State 890, TargetBind]
type = TargetBind
trigger1 = !Time && NumTarget
pos = 0,0

[State 890, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 895

[State 890, TargetFacing]
type = TargetFacing
trigger1 = !Time && NumTarget
value = -1

[State 890, PosAdd]
type = PosAdd
trigger1 = !Time
x = 24

[State 890, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 890, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 890, SprPriority 1]
type = SprPriority
trigger1 = AnimElemTime(6) >= 0
value = 1

[State 890, SprPriority -1]
type = SprPriority
trigger1 = AnimElemTime(2) <= 0
value = -1

[State 890, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 890, VelSet]
type = VelSet
trigger1 = 1
x = -1.425
y = 0

[State 890, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5940,0
channel = 0

[State 890, Escape Sound]
type = PlaySnd
trigger1= !Time
value = 760,0

[State 890, Throw Escape FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8000
ID = 8000
name = "Spark"
PosType = P1
pos = 0, -68
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

[State 890, End]
type = ChangeState
trigger1 = Time >= 27
value = 0
ctrl = 1


;Target Escape
[StateDef 895]
type = S
physics = N
moveType = I
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 895, ChangeAnim]
type = ChangeAnim
trigger1= !Time
value = ifElse(SelfAnimExist(5945), 5945, 130)

[State 895, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5945) && SelfAnimExist(5940)
value = 5940

[State 895, ChangeAnim]
type = ChangeAnim
trigger1= !Time && !SelfAnimExist(5945) && !SelfAnimExist(5940) && SelfAnimExist(5910)
value = 5910

[State 895, ChangeAnim]
type = ChangeAnim
trigger1 = Time >= 20 && Anim = 130
value = 140

[State 895, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 895, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 895, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 895, VelSet]
type = VelSet
trigger1 = 1
x = -1.425
y = 0

[State 895, End]
type = SelfState
trigger1 = Time >= 27
value = 0
ctrl = 1