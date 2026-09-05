; ________________________________________________
;| Angel by KarmaCharmeleon			|
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

[State 200, Voice]
type = PlaySnd
trigger1 = !Time && Random < 200
value = 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 200, Woosh]
type = PlaySnd
trigger1 = !Time
value = 1, 0
channel = 1

[State 200, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
guard.hittime = (12 + 2 * var(9)) - 6
ground.slideTime = 12 + 2 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.34468534822, -4.68937069644)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36):= -88
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48

[State 200, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 200
elem = 3
ignoreHitPause = 1

[State 200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 200, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
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
powerAdd = 18 * !var(20)
faceP2 = 1

[State 210, Voice]
type = PlaySnd
trigger1 = AnimElem = 4 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 210, Woosh]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 1
channel = 1

[State 210, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15 + 3 * var(9)
guard.hittime = (15 + 3 * var(9)) - 6
ground.slideTime = 15 + 3 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.96661202803, -7.93322405606), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -76
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 210, ChangeAnim]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 210
elem = 6
ignoreHitPause = 1

[State 210, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
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
powerAdd = 18 * !var(20)
faceP2 = 1

[State 215, Voice]
type = PlaySnd
trigger1 = AnimElem = 5 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 215, Woosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1, 1
channel = 1

[State 215, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
guard.hittime = (15 + 3 * var(9)) - 6
ground.slideTime = 15 + 3 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.96661202803, -7.93322405606), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 49), var(36) := -74
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 215, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 215, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;STANDING HEAVY PUNCH=
[StateDef 220]
type = S
physics = S
moveType = A
anim = 220
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
facep2 = 1

[State 220, Voice]
type = PlaySnd
trigger1 = AnimElem = 5 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 220, Woosh]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1,2
channel = 1

[State 220, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6
trigger2 = AnimElem = 7 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 98 < 7, 7, fvar(11) * 98)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = ifElse(PrevStateNo = 700, -4.46927374302, ifElse(var(20), -5.52547201545, -11.0509440309)), ifElse(PrevStateNo = 700, -6.5625, 0)
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = ifElse(PrevStateNo = 700, 1, 0)
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 76), var(36) := -87
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 220, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 220
elem = 7
ignoreHitPause = 1

[State 220, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
movetype = I

[State 220, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;STANDING LIGHT KICK=
guardflags = 
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

[State 230, Voice]
type = PlaySnd
trigger1 = !Time && Random < 200
value = 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 230, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 3
channel = 1

[State 230, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 0
getPower = 72 * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animtype = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2 * var(9)
guard.hittime = (12 + 2 * var(9)) - 6
ground.slideTime = 12 + 2 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.34468534822, -4.68937069644)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0*(var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -20
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 230, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 230
elem = 3
ignoreHitPause = 1

[State 230, StateTypeSet: Idle]
type = StateTypeSet
trigger1= AnimElemTime(4) >= 0
moveType = I

[State 230, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;STANDING MEDIUM KICK=
[StateDef 240]
type = S
physics = S
moveType = A
anim = 240
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 240, Voice]
type = PlaySnd
trigger1 = AnimElem = 4 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 240, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 4
channel = 1

[State 240, PosAdd]
type = PosAdd
trigger1 = AnimElem = 1
x = 5

[State 240, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = 2

[State 240, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
x = 1

[State 240, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
x = 11

[State 240, PosAdd]
type = PosAdd
trigger1 = AnimElem = 8
trigger2 = AnimElem = 9
trigger3 = AnimElem = 10
trigger4 = AnimElem = 11
x = -5

[State 240, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15 + 3 * var(9)
guard.hittime = (15 + 3 * var(9)) - 6
ground.slideTime = 15 + 3 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.96661202803, -7.93322405606), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 240, ChangeAnim]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 240
elem = 6
ignoreHitPause = 1

[State 240, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
movetype = I

[State 240, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;SENSELESS CHATTER=
[StateDef 248]
type = S
physics = S
moveType = A
anim = 248
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 248, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 4, 3
channel = 0

[State 248, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 4
channel = 1

[State 248, PosAdd 1]
type = PosAdd
trigger1 = AnimElem = 1
x = 15

[State 248, PosAdd 2]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 5
x = 5

[State 248, PosAdd 3]
type = PosAdd
trigger1 = AnimElem = 10
x = -15

[State 248, PosAdd 4]
type = PosAdd
trigger1 = AnimElem = 11
trigger2 = AnimElem = 12
trigger3 = AnimElem = 13
x = -5

[State 248, HitDef 1]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
guard.hittime = (15 + 3 * var(9)) - 6
ground.slideTime = 15 + 3 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.20367334891, -4.40734669781), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.20367334891, -4.40734669781)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 68), var(36) := -58
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 248, ChangeAnim]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 248
elem = 6
ignoreHitPause = 1

[State 248, HitDef 2]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 7
trigger2 = AnimElem = 8 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15 + 3 * var(9)
guard.hittime = (15 + 3 * var(9)) - 6
ground.slideTime = 15 + 3 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.96661202803, -7.93322405606), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -58
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 248, ChangeAnim]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 248
elem = 8
ignoreHitPause = 1

[State 248, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
movetype = I

[State 248, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;SENSELESS CHATTER (CANCELED)=
[StateDef 249]
type = S
physics = S
moveType = A
anim = 249
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 249, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 4, 3
channel = 0

[State 249, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 4
channel = 1

[State 249, PosAdd 1]
type = PosAdd
trigger1 = AnimElem = 1
x = 15

[State 249, PosAdd 2]
type = PosAdd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 5
x = 5

[State 249, PosAdd 3]
type = PosAdd
trigger1 = AnimElem = 10
x = -15

[State 249, PosAdd 4]
type = PosAdd
trigger1 = AnimElem = 11
trigger2 = AnimElem = 12
trigger3 = AnimElem = 13
x = -5

[State 249, HitDef 1]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
guard.hittime = (15 + 3 * var(9)) - 6
ground.slideTime = 15 + 3 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.20367334891, -4.40734669781), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.20367334891, -4.40734669781)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 68), var(36) := -58
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 249, ChangeAnim]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 249
elem = 6
ignoreHitPause = 1

[State 249, HitDef 2]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 7
trigger2 = AnimElem = 8 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15 + 3 * var(9)
guard.hittime = (15 + 3 * var(9)) - 6
ground.slideTime = 15 + 3 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.96661202803, -7.93322405606), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -58
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 249, ChangeAnim]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 249
elem = 8
ignoreHitPause = 1

[State 249, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
movetype = I

[State 249, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;STANDING FAR HEAVY KICK=
[StateDef 250]
type = S
physics = S
moveType = A
anim = 250
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 250, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 250, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 5
channel = 1

[State 250, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 91 < 7, 7, fvar(11) * 91)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -5.52547201545, -11.0509440309), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 50), var(36) := -100
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



;STANDING CLOSE HEAVY KICK=
[StateDef 255]
type = S
physics = S
moveType = A
anim = 255
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 255, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 255, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 5
channel = 1

[State 255, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 77 < 7, 7, fvar(11) * 77)), 0
getPower = ifElse(!var(13), 216, 72)*!var(20), 36*!var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -5.52547201545, -11.0509440309), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 35), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 255, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 255
elem = 4
ignoreHitPause = 1

[State 255, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 255, End]
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

[State 400, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 200
value = 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 400, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 0
channel = 1

[State 400, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
getPower = 72 * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2 * var(9)
guard.hittime = (12 + 2 * var(9)) - 6
ground.slideTime = 12 + 2 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.34468534822, -4.68937069644)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 58), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 400, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 400
elem = 4
ignoreHitPause = 1

[State 400, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
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
powerAdd = 18 * !var(20)
faceP2 = 1

[State 410, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 410, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 1
channel = 1

[State 410, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
guard.hittime = (15 + 3 * var(9)) - 6
ground.slideTime = 15 + 3 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.96661202803, -7.93322405606), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 58), var(36) := -45
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 410, ChangeAnim]
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
powerAdd = 18 * !var(20)
faceP2 = 1

[State 420, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 420, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 420, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = -3.35195530726, -7.5
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -3.35195530726, -7.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 420, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
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

[State 430, Voice]
type = PlaySnd
trigger1 = !Time && Random < 200
value = 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 430, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 3
channel = 1

[State 430, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 0
getPower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2 * var(9)
guard.hittime = (12 + 2 * var(9)) - 6
ground.slideTime = 12 + 2 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.34468534822, -4.68937069644)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -7
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
trigger1 = AnimElemTime(4) >= 0
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
powerAdd = 18 * !var(20)
faceP2 = 1

[State 440, Voice]
type = PlaySnd
trigger1 = !Time && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 440, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 4
channel = 1

[State 440, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getPower = ifElse(!var(13),144,72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
guard.hittime = (15 + 3 * var(9)) - 6
ground.slideTime = 15 + 3 * var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.96661202803, -7.93322405606), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -7
palFX.time = 12*var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 440, ChangeAnim]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 440
elem = 3
ignoreHitPause = 1

[State 440, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
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
powerAdd = 18 * !var(20)
faceP2 = 1

[State 450, Voice]
type = PlaySnd
trigger1 = AnimElem = 4 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 450, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 5
channel = 1

[State 450, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6 && !MoveContact && !MoveReversed
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 91 < 7, 7, fvar(11) * 91)), 0
getpower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Trip
air.type = Trip
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = -1.11731843575, -7.1875
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -1.11731843575, -7.1875
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 72), var(36) := -12
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 450, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 450
elem = 6
ignoreHitPause = 1

[State 450, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(7) >= 0
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

[State 600, Voice]
type = PlaySnd
trigger1 = !Time && Random < 200
value= 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 600, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 0
channel = 1

[State 600, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getPower = 72 * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
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
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.34468534822, -4.68937069644)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
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
sparkXY = -10 + 0 * (var(35) := 23), var(36) := -57
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 600, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 600
elem = 3
ignoreHitPause = 1

[State 600, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 600, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 600, VelAdd]
type = VelAdd
trigger1 = vel x
x = ifElse((var(3) = [2,3]), -0.03273393854, -0.02182262569) * ifElse(vel x < 0, -1, 1)

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
powerAdd = 18 * !var(20)

[State 610, Voice]
type = PlaySnd
trigger1 = !Time && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 610, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 1
channel = 1

[State 610, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
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
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
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
sparkXY = -10 + 0 * (var(35) := 23), var(36) := -57
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 610, ChangeAnim]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 610
elem = 3
ignoreHitPause = 1

[State 610, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
movetype = I

[State 610, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 610, VelAdd]
type = VelAdd
trigger1 = vel x
x = ifElse((var(3) = [2,3]), -0.03273393854, -0.02182262569) * ifElse(vel x < 0, -1, 1)

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
powerAdd = 18 * !var(20)

[State 620, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 620, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 2
channel = 1

[State 620, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 98 < 7, 7, fvar(11) * 98)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
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
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
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
sparkXY = -10 + 0 * (var(35) := -28), var(36) := -44
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 620, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 620
elem = 5
ignoreHitPause = 1

[State 620, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 620, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 620, VelAdd]
type = VelAdd
trigger1 = vel x
x = ifElse((var(3) = [2,3]), -0.03273393854, -0.02182262569) * ifElse(vel x < 0, -1, 1)

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
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 0
getPower = 72 * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
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
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.34468534822, -4.68937069644)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
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
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -65
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
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 630, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 630, VelAdd]
type = VelAdd
trigger1 = vel x
x = ifElse((var(3) = [2,3]), -0.03273393854, -0.02182262569) * ifElse(vel x < 0, -1, 1)

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
powerAdd = 18 * !var(20)

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
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
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
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
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
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -15
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 640, ChangeAnim]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 640
elem = 4
ignoreHitPause = 1

[State 640, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
movetype = I

[State 640, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 640, VelAdd]
type = VelAdd
trigger1 = vel x
x = ifElse((var(3) = [2,3]), -0.03273393854, -0.02182262569) * ifElse(vel x < 0, -1, 1)

[State 640, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;AT WASTELAND=
[StateDef 648]
type = A
physics = N
moveType = A
anim = 648
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 648, Voice]
type = PlaySnd
trigger1 = !Time
value = 4, 2
channel = 0

[State 648, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1, 4
channel = 1

[State 648, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3 && !MoveContact && !MoveReversed
trigger3 = AnimElem = 4 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
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
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.96661202803, -7.93322405606)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
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
sparkXY = -10 + 0 * (var(35) := 18), var(36) := -30
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 648, ChangeAnim]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 648
elem = 3
ignoreHitPause = 1

[State 648, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 664840, VelAdd]
type = VelAdd
trigger1 = vel x
x = ifElse((var(3) = [2,3]), -0.03273393854, -0.02182262569) * ifElse(vel x < 0, -1, 1)

[State 648, End]
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
powerAdd = 18 * !var(20)

[State 650, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 650, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 5
channel = 1

[State 650, HitDef]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
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
ground.velocity = ifElse(var(20), -2.34468534822, -4.68937069644), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.52547201545, -11.0509440309)
guard.cornerPush.velOff = 0
air.velocity = -4.46927374302, -6.5625
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
sparkXY = -10 + 0 * (var(35) := 74), var(36) := -44
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 650, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 4, 10)
value = 650
elem = 4
ignoreHitPause = 1

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
x = ifElse((var(3) = [2,3]), -0.03273393854, -0.02182262569) * ifElse(vel x < 0, -1, 1)

[State 650, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;THROW ATTEMPT=
[StateDef 800]
type = S
physics = S
movetype = A
anim = 800
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 800, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = (command = "kk")

[State 800, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = (Random < 500)

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
trigger1 = AnimElem = 3
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
p1StateNo = ifElse(ifElse(!NumExplod(92828282) && !NumExplod(92468246), command = "holdback", command = "holdfwd"), 805, 810)

[State 800, HitDef: KK Throw]
type = HitDef
trigger1 = AnimElem = 3 && var(10)
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
p1StateNo = ifElse(ifElse(!NumExplod(92828282) && !NumExplod(92468246), command = "holdback", command = "holdfwd"), 820, 805)

[State 800, Voice (Missed)]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1100, 0
channel = 0

[State 800, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1, 0
channel = 1

[State 800, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
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
edge = 31, 31
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
pos = 62, 0

[State 805, TargetBind 2]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger2 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = 10, 0

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
value = ifElse(var(10), 820, 810)


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



;TEKITOU RUSH=
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

[State 810, Width]
type = Width
trigger1 = AnimElemTime(26) < 0
edge = 38, 0

[State 810, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(26) < 0
pos = 50, 0

[State 810, Damage 1]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 5
trigger2 = NumTarget && AnimElem = 9
trigger3 = NumTarget && AnimElem = 14
value = floor(ifElse(28 * fvar(11) < 7, -7, -28 * fvar(11)))
kill = 0

[State 810, Damage 2]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 26
value = floor(ifElse(49 * fvar(11) < 7, -7, -49 * fvar(11)))

[State 810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 5
trigger2 = NumTarget && AnimElem = 9
trigger3 = NumTarget && AnimElem = 14
trigger4 = NumTarget && AnimElem = 26
value = 18

[State 810, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElem = 5 && !var(20)
trigger2 = NumTarget && AnimElem = 9 && !var(20)
trigger3 = NumTarget && AnimElem = 14 && !var(20)
trigger4 = NumTarget && AnimElem = 26 && !var(20)
value = 36

[State 810, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 5
trigger2 = NumTarget && AnimElem = 9
trigger3 = NumTarget && AnimElem = 14
trigger4 = NumTarget && AnimElem = 26
value = 1

[State 810, HitAdd]
type = VarAdd
trigger1 = NumTarget && AnimElem = 5
trigger2 = NumTarget && AnimElem = 9
trigger3 = NumTarget && AnimElem = 14
trigger4 = NumTarget && AnimElem = 26
var(13) = 1

[State 810, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 5
trigger2 = NumTarget && AnimElem = 9
trigger3 = NumTarget && AnimElem = 14
trigger4 = NumTarget && AnimElem = 26
var(15) = 1
ignoreHitPause = 1

[State 810, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 26
value = 816

[State 810, Voice 1]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 4
trigger2 = NumTarget && AnimElem = 14
value = 4, 0
channel = 0

[State 810, Voice 2]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 9
value = 4, 1
channel = 0

[State 810, Voice 3]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 25
value = 4, 2
channel = 0

[State 810, Woosh Sound 1]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 4
trigger2 = NumTarget && AnimElem = 25
value = 1, 2
channel = 1

[State 810, Woosh Sound 2]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 9
value = 1, 0
channel = 1

[State 810, Woosh Sound 3]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 14
value = 1, 5
channel = 1

[State 810, Hit Sound 1]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 5
trigger2 = NumTarget && AnimElem = 26
value = 2, 2
channel = 2

[State 810, Hit Sound 2]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 9
value = 2, 0
channel = 2

[State 810, Hit Sound 3]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 14
value = 2, 5
channel = 2

[State 810, Hit Spark 1]
type = Helper
trigger1 = NumTarget && AnimElem = 5
helperType = Normal
stateNo = 8012
ID = 8000
name = "Spark"
posType = P1
pos = 35, -72
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 810, Hit Spark 2]
type = Helper
trigger1 = NumTarget && AnimElem = 9
helperType = Normal
stateNo = 8010
ID = 8001
name = "Spark"
posType = P1
pos = 42, -86
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 810, Hit Spark 3]
type = Helper
trigger1 = NumTarget && AnimElem = 14
helperType = Normal
stateNo = 8012
ID = 8002
name = "Spark"
posType = P1
pos = 34, -86
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 810, Hit Spark 4]
type = Helper
trigger1 = NumTarget && AnimElem = 26
helperType = Normal
stateNo = 8012
ID = 8003
name = "Spark"
posType = P1
pos = 60, -85
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 810, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;TEKITOU RUSH (TARGET)=
;Being Thrown
[StateDef 815]
type = S
moveType = H
physics = N
velSet = 0,0
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
velSet = -4.46927374302, -10
sprPriority = 0

[State 816, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5030

[State 816, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = 5050

[State 816, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,1
ignoreHitPause = 1

[State 816, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.5078125

[State 816, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 816, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 816, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100



;SHADOW BEHEAD=
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

[State 820, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 825

[State 820, Width]
type = Width
trigger1 = AnimElemTime(10) < 0
edge = 38,0

[State 820, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(10) < 0
pos = 50, 0

[State 820, BindToTarget]
type = BindToTarget
trigger1 = Facing != Target, Facing
trigger1 = NumTarget
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(19) < 0
pos = 0, 0, Head

[State 820, PosAdd]
type = PosAdd
trigger1 = NumTarget && AnimElem = 19
x = 35

[State 820, PosSet]
type = PosSet
trigger1 = NumTarget && AnimElem = 19
y = -30

[State 820, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 5
trigger2 = NumTarget && AnimElem = 15
value = floor(ifElse(42 * fvar(11) < 7, -7, -42 * fvar(11)))
kill = 0

[State 820, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 19
value = floor(ifElse(42 * fvar(11) < 7, -7, -42 * fvar(11)))

[State 820, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 5
trigger2 = NumTarget && AnimElem = 15
trigger3 = NumTarget && AnimElem = 19
value = 36

[State 820, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElem = 5 && !var(20)
trigger2 = NumTarget && AnimElem = 15 && !var(20)
trigger3 = NumTarget && AnimElem = 19 && !var(20)
value = 72

[State 820, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 5
trigger2 = NumTarget && AnimElem = 15
trigger3 = NumTarget && AnimElem = 19
value = 1

[State 820, HitCount]
type = VarAdd
trigger1 = NumTarget && AnimElem = 5
trigger2 = NumTarget && AnimElem = 15
trigger3 = NumTarget && AnimElem = 19
var(13) = 1

[State 820, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 5
trigger2 = NumTarget && AnimElem = 15
trigger3 = NumTarget && AnimElem = 19
var(15) = 1
ignoreHitPause = 1

[State 820, Juggle]
type = VarSet
trigger1 = NumTarget && AnimElem = 5
trigger2 = NumTarget && AnimElem = 15
trigger3 = NumTarget && AnimElem = 19
var(16) = 1
ignoreHitPause = 1

[State 820, SprPriority 1]
type = SprPriority
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(18) < 0
value = -1

[State 820, SprPriority 2]
type = SprPriority
trigger1 = AnimElemTime(18) >= 0
value = 1

[State 820, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 11
stateType = A
physics = N

[State 820, Voice 1]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 4
value = 4, 0
channel = 0

[State 820, Woosh Sound 1]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 4
value = 1, 2
channel = 1

[State 820, Woosh Sound 2]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 18
value = 1, 5
channel = 1

[State 820, Hit Sound 1]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 5
value = 2, 2
channel = 2

[State 820, Hit Sound 2]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 15
value = 2, 820
channel = 2

[State 820, Hit Sound 3]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 19
value = 2, 5
channel = 2

[State 820, Hit Spark 1]
type = Helper
trigger1 = NumTarget && AnimElem = 5
helperType = Normal
stateNo = 8012
ID = 8000
name = "Spark"
posType = P1
pos = 35, -72
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 820, Hit Spark 2]
type = Helper
trigger1 = NumTarget && AnimElem = 19
helperType = Normal
stateNo = 8012
ID = 8000
name = "Spark"
posType = P1
pos = -52, -11
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 820, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 20
value = 826

[State 820, VelSet]
type = VelSet
trigger1 = AnimElem = 20
x = 3.35195530726
y = -6.25

[State 820, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(20) > 0
y = 0.78125

[State 820, Turn]
type = Turn
trigger1 = AnimElemTime(20) > 0
trigger1 = pos y > -vel y

[State 820, End]
type = ChangeState
trigger1 = AnimElemTime(20) > 0
trigger1 = pos y > -vel y
value = 821


;Landing
[StateDef 821]
type = S
anim = 47
physics = N
moveType = I
velSet = 0,0

[State 821, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 821, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 821, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 1

[State 821, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1



;SHADOW BEHEAD (TARGET)=
;Being Thrown
[StateDef 825]
type = S
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
trigger2 = AnimElem = 10
ignoreHitPause = 1

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
velSet = -6.70391061453, -1.25
sprPriority = 0

[State 826, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5050

[State 826, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1, 1
ignoreHitPause = 1

[State 826, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.5078125

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
value = 5940, 0
channel = 0

[State 890, Escape Sound]
type = PlaySnd
trigger1= !Time
value = 760, 0

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
