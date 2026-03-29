; _______________________________________________
;| Cody Travers by Trololo |
; 
;
;NORMAL MOVES=
;

;STANDING FAR LIGHT PUNCH=
[StateDef 200]
type = S
physics = S
moveType = A
anim = ifelse(var(40), 10200, 200)
ctrl = 0
velset = 0,0
sprPriority = 1
powerAdd = 0
facep2 = 1

[State 200, Voice]
type = PlaySnd
trigger1 = Anim = 10200 && AnimElem = 1
value = 4, 0
channel = 0

[State 200, Woosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,ifelse(anim = 10200, 6, 0)
channel = 1

[State 200, Light Splash]
type = Explod
trigger1 = Anim = 10200 && Time = 1
anim = 14000
pos = ceil(0 * const(size.xscale)), ceil(-86 * const(size.yscale))
postype = p1
bindtime = 1
removetime = -2
pausemovetime = 11
scale = 1,1
sprpriority = 3
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 200, HitDef: Fist]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Anim = 200 && AnimElem = 2
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 34 < 7, 7, fvar(11) * 34)), 0
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
ground.velocity = ifElse(var(20), -3.375, -6.75), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.375, -6.75)
guard.cornerPush.velOff = 0
air.velocity = -7, -7.36
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 74), var(36):= -85
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 200, HitDef: Knife]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Anim = 10200 && AnimElem = 2
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getpower = 72 * !var(20), 36 * !var(20)
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
ground.velocity = ifElse(var(20), -3.375, -6.75), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.375, -6.75)
guard.cornerPush.velOff = 0
air.velocity = -7, -7.36
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 7)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8015)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 97), var(36):= -71
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
moveType = I

[State 200, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;STANDING CLOSE LIGHT PUNCH=
[StateDef 205]
type = S
physics = S
moveType = A
anim = 205
ctrl = 0
velset = 0,0
sprPriority = 1
powerAdd = 0
facep2 = 1

[State 205, Woosh]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,0
channel = 1

[State 205, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 34 < 7, 7, fvar(11) * 34)), 0
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
ground.velocity = ifElse(var(20), -3.375, -6.75), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.375, -6.75)
guard.cornerPush.velOff = 0
air.velocity = -7, -7.36
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 72), var(36):= -76
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 205, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
moveType = I

[State 205, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;STANDING MEDIUM PUNCH=
[StateDef 210]
type = S
physics = S
moveType = A
anim = ifelse(var(40), 10210, 210)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 210, Voice]
type = PlaySnd
trigger1 = Anim = 10210 && AnimElem = 2
value = 4, 0
channel = 0

[State 210, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,ifelse(anim = 10210, 7, 1)
channel = 1

[State 210, Light Splash]
type = Explod
trigger1 = Anim = 10210 && Time = 1
anim = 14000
ID = 14000
pos = ceil(0 * const(size.xscale)), ceil(-86 * const(size.yscale))
postype = p1
bindtime = 1
removetime = -2
pausemovetime = 11
scale = 1,1
sprpriority = 3
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 210, HitDef: Fist]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Anim = 210 && AnimElem = 3
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
ground.velocity = ifElse(var(20), -5, -10), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5, -10)
guard.cornerPush.velOff = 0
air.velocity = -4, -8.5
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 210, HitDef: Knife]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Anim = 10210 && AnimElem = 3
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 67 < 7, 7, fvar(11) * 67)), 7
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
ground.velocity = ifElse(var(20), -5, -10), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5, -10)
guard.cornerPush.velOff = 0
air.velocity = -7, -7.36
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 8)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8015)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 97), var(36):= -71
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 210, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 210, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;STOMACH BLOW=
[StateDef 216]
type = S
physics = S
moveType = A
anim = 216
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 216, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,1
channel = 1

[State 216, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
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
ground.velocity = ifElse(var(20), -5, -10), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5, -10)
guard.cornerPush.velOff = 0
air.velocity = -7, -7.36
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 77), var(36) := -67
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 216, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 216, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;DODGE PUNCH=
[StateDef 217]
type = S
physics = S
moveType = A
anim = 217
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 217, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 1
channel = 0

[State 217, Woosh]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,1
channel = 1

[State 217, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
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
ground.velocity = ifElse(var(20), -5, -10), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5, -10)
guard.cornerPush.velOff = 0
air.velocity = -7, -7.36
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 82), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 217, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 217, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;STANDING HEAVY PUNCH=
[StateDef 220]
type = S
physics = S
moveType = A
anim = ifelse(var(40), 10220, 220)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
facep2 = 1

[State 220, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, ifelse(anim = 10220, 2, 3)
channel = 0

[State 220, Woosh]
type = PlaySnd
trigger1 = Anim = 220 && AnimElem = 2
trigger2 = Anim = 10220 && AnimElem = 3
value = 1,ifelse(Anim = 10220, 8, 2)
channel = 1

[State 220, Light Splash]
type = Explod
trigger1 = Anim = 10220 && Time = 1
anim = 14000
ID = 14000
pos = ceil(0 * const(size.xscale)), ceil(-86 * const(size.yscale))
postype = p1
bindtime = 1
removetime = -2
pausemovetime = 11
scale = 1,1
sprpriority = 3
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 220, HitDef: Fist]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 78 < 7, 7, fvar(11) * 78)), 0
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
ground.velocity = ifElse(var(20), -6.625, -13.25), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -6.625, -13.25)
guard.cornerPush.velOff = 0
air.velocity = -7, -7.36
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 94), var(36) := -98
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 220, HitDef: Knife]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 90 < 7, 7, fvar(11) * 90)), 7
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
ground.velocity = ifElse(var(20), -5, -10), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5, -10)
guard.cornerPush.velOff = 0
air.velocity = -7, -7.36
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8015)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 109), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 220, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = Anim = 220 && AnimElemTime(6) >= 0
trigger2 = Anim = 10220 && AnimElemTime(5) >= 0
movetype = I

[State 220, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;STANDING LIGHT KICK=
[StateDef 230]
type = S
physics = S
moveType = A
anim = ifelse(var(40), 10230, 230)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
facep2 = 1

[State 230, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,3
channel = 1

[State 230, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 39 < 7, 7, fvar(11) * 39)), 0
getPower = 72 * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2*var(9)
guard.hittime = (12 + 2*var(9)) - 6
ground.slideTime = 12 + 2*var(9)
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.375, -6.75), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.375, -6.75)
guard.cornerPush.velOff = 0
air.velocity = -7, -7.36
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0*(var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 81), var(36) := -37
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

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
anim = ifelse(var(40), 10240, 240)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 240, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
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
damage = ceil(ifElse(fvar(11) * 62 < 7, 7, fvar(11) * 62)), 0
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
ground.velocity = ifElse(var(20), -5, -10), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5, -10)
guard.cornerPush.velOff = 0
air.velocity = -7, -7.36
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 98), var(36) := -56
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 240, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 240, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;STANDING HEAVY KICK=
[StateDef 250]
type=S
physics = S
moveType = A
anim = ifelse(var(40), 10250, 250)
ctrl = 0
velSet=0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 250, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value= 4, 1
channel = 0

[State 250, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,5
channel = 1

[State 250, HitDef]
type = HitDef
triggerall = PrevStateNo != 700
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 78 < 7, 7, fvar(11) * 78)), 0
getPower = ifElse(!var(13), 216, 72)*!var(20), 36*!var(20)
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
ground.velocity = ifElse(var(20), -6.625, -13.25), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -6.625, -13.25)
guard.cornerPush.velOff = 0
air.velocity = -7, -7.36
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 111), var(36) := -93
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 256, HitDef]
type = HitDef
triggerall = PrevStateNo = 700
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 78 < 7, 7, fvar(11) * 78)), 0
getPower = ifElse(!var(13), 216, 72)*!var(20), 36*!var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = -5.75, -6.55
ground.cornerPush.velOff = 0
guard.velocity = -15
guard.cornerPush.velOff = 0
air.velocity = -5.75, -6.55
air.cornerPush.velOff = 0
yAccel = 0.475
fall = 1
fall.xvelocity = -2
fall.yvelocity = -4
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 85), var(36) := -77
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
forceStand = 1

[State 250, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 250, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;CRACK KICK=
[StateDef 256]
type=S
physics = S
moveType = A
anim = ifelse(var(40), 10256, 256)
ctrl = 0
velSet=0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 256, VelSet]
type = VelSet
trigger1 = !time
x = 3.5
y = -4.25

[State 256, StateTypeSet]
type = StateTypeSet
trigger1 = !time
statetype = A
movetype = A
physics = A

[State 256, Dust Helper]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 256, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value= 4, 2
channel = 0

[State 256, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,5
channel = 1

[State 256, Jump Sound]
type = PlaySnd
trigger1 = !Time
value = 40,0
channel = 2

[State 256, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 90 < 7, 7, fvar(11) * 90)), 0
getPower = ifElse(!var(13), 216, 72)*!var(20), 36*!var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = -5.75, -6.55
ground.cornerPush.velOff = 0
guard.velocity = -15
guard.cornerPush.velOff = 0
air.velocity = -5.75, -6.55
air.cornerPush.velOff = 0
yAccel = 0.475
fall = 1
fall.xvelocity = -2
fall.yvelocity = -4
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 85), var(36) := -77
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
forceStand = 1

[State 256, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 256, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 257

;Landing
[StateDef 257]
type = S
physics = S
moveType = I
anim = ifelse(var(40), 10257, 257)
velSet = 0,0

[State 257, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 257, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 257, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 257, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;CROUCHING LIGHT PUNCH=
[StateDef 400]
type = C
physics = C
moveType = A
anim = ifelse(var(40), 10400, 400)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 400, Voice]
type = PlaySnd
trigger1 = Anim = 10400 && AnimElem = 1
value = 4, 0
channel = 0

[State 400, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,ifelse(anim = 10400, 6, 0)
channel = 1

[State 400, Light Splash]
type = Explod
trigger1 = Anim = 10400 && Time = 1
anim = 14000
ID = 14000
pos = ceil(-9 * const(size.xscale)), ceil(-59 * const(size.yscale))
postype = p1
bindtime = 1
removetime = -2
pausemovetime = 11
scale = 1,1
sprpriority = 3
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 400, HitDef: Fist]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Anim = 400 && AnimElem = 2
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 22 < 7, 7, fvar(11) * 22)), 0
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
ground.velocity = ifElse(var(20), -3.375, -6.75), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.375, -6.75)
guard.cornerPush.velOff = 0
air.velocity = -7, -7.36
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 67), var(36) := -63
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 400, HitDef: Knife]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Anim = 10400 && AnimElem = 2
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 22 < 7, 7, fvar(11) * 22)), 7
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
ground.velocity = ifElse(var(20), -3.375, -6.75), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.375, -6.75)
guard.cornerPush.velOff = 0
air.velocity = -7, -7.36
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 7)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8015)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 97), var(36):= -56
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 400, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
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
anim = ifelse(var(40), 10410, 410)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 410, Voice]
type = PlaySnd
trigger1 = Anim = 10410 && AnimElem = 1
value = 4, 0
channel = 0

[State 410, Woosh Sound]
type = PlaySnd
trigger1 = Anim = 410 && AnimElem = 2
trigger2 = Anim = 10410 && AnimElem = 1
value = 1,ifelse(anim = 10410, 7, 1)
channel = 1

[State 410, Light Splash]
type = Explod
trigger1 = Anim = 10410 && Time = 1
anim = 14000
ID = 14000
pos = ceil(-9 * const(size.xscale)), ceil(-59 * const(size.yscale))
postype = p1
bindtime = 1
removetime = -2
pausemovetime = 11
scale = 1,1
sprpriority = 3
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 410, HitDef: Fist]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 50 < 7, 7, fvar(11) * 50)), 0
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
ground.velocity = ifElse(var(20), -5, -10), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5, -10)
guard.cornerPush.velOff = 0
air.velocity = -4, -8.5
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0*(var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 76), var(36) := -68
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 410, HitDef: Knife]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
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
ground.velocity = ifElse(var(20), -5, -10), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5, -10)
guard.cornerPush.velOff = 0
air.velocity = -7, -7.36
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 8)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8015)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 97), var(36):= -56
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 410, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = Anim = 410 && AnimElemTime(4) >= 0
trigger2 = Anim = 10410 && AnimElemTime(3) >= 0
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
anim = ifelse(var(40), 10420, 420)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 420, Voice]
type = PlaySnd
trigger1 = Anim = 10420 && AnimElem = 1
value = 4, 2
channel = 0

[State 420, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,ifelse(Anim = 10420, 8, 2)
channel = 1

[State 420, Light Splash]
type = Explod
trigger1 = Anim = 10420 && Time = 1
anim = 14000
ID = 14000
pos = ceil(-9 * const(size.xscale)), ceil(-59 * const(size.yscale))
postype = p1
bindtime = 1
removetime = -2
pausemovetime = 11
scale = 1,1
sprpriority = 3
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 420, HitDef: Fist]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Anim = 420 && AnimElem = 3
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 62 < 7, 7, fvar(11) * 62)), 0
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
ground.velocity = ifElse(var(20), -5, -10), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5, -10)
guard.cornerPush.velOff = 0
air.velocity = -7, -7.36
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 87), var(36) := -43
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 420, HitDef: Fist, Unhit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Anim = 420 && AnimElem = 4 && !movecontact
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 67 < 7, 7, fvar(11) * 67)), 0
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
ground.velocity = ifElse(var(20), -5, -10), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5, -10)
guard.cornerPush.velOff = 0
air.velocity = -3.5, -10.5
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 68), var(36) := -97
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 420, HitDef: Knife]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Anim = 10420 && AnimElem = 4
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 78 < 7, 7, fvar(11) * 78)), 7
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
ground.velocity = ifElse(var(20), -6.625, -13.25), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -6.625, -13.25)
guard.cornerPush.velOff = 0
air.velocity = -7, -7.36
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8015)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 70), var(36) := -77
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
anim = ifelse(var(40), 10430, 430)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 430, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,3
channel = 1

[State 430, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 0
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
ground.velocity = ifElse(var(20), -3.375, -6.75), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.375, -6.75)
guard.cornerPush.velOff = 0
air.velocity = -7, -7.36
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 77), var(36) := -14
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinadd= -255, -255, -255, 48

[State 430, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
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
anim = ifelse(var(40), 10440, 440)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 440, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,4
channel = 1

[State 440, Skid Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 101,0

[State 440, Skid Dust]
type = Explod
trigger1 = AnimElem = 3
anim = 8104
sprPriority=3
posType = P1
pos = 50,5
vel = -0.5,0
scale = 0.65,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 440, VelSet]
type = VelSet
trigger1 = AnimElemTime(3)>=0 && AnimElemTime(6)<0
x = 4.55

[State 440, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 67 < 7, 7, fvar(11) * 67)), 0
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
ground.velocity = ifElse(var(20), -3.375, -6.75), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.375, -6.75)
guard.cornerPush.velOff = 0
air.velocity = -7, -7.36
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 67), var(36) := -60
palFX.time = 12*var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 440, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 0

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
anim = ifelse(var(40), 10450, 450)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 450, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,5
channel = 1

[State 450, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
attr = C, NA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 78 < 7, 7, fvar(11) * 78)), 0
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
ground.velocity = -1.5, -8
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -6.625, -13.25)
guard.cornerPush.velOff = 0
air.velocity = -1.5, -8
air.cornerPush.velOff = 0
yAccel = 0.677
fall = 1
fall.recover = 0
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 87), var(36) := -38
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 450, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(5) >= 0
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
anim = ifelse(var(40), 10600, 600)
ctrl = 0
sprPriority = 1
powerAdd = 0

[State 600, Voice]
type = PlaySnd
trigger1 = Anim = 10600 && AnimElem = 1
value= 4, 0
channel = 0

[State 600, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,ifelse(anim = 10600, 6, 0)
channel = 1

[State 600, Light Splash]
type = Explod
trigger1 = Anim = 10600 && Time = 8
anim = 14000
ID = 14000
pos = ceil(3 * const(size.xscale)), ceil(-78 * const(size.yscale))
postype = p1
bindtime = 1
removetime = -2
pausemovetime = -2
scale = 1,1
sprpriority = 3
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 600, HitDef: Fist]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Anim = 600 && AnimElem = 2
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 39 < 7, 7, fvar(11) * 39)), 0
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
ground.velocity = ifElse(var(20), -3.375, -6.75), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.375, -6.75)
guard.cornerPush.velOff = 0
air.velocity = -6, -7.36
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -101
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 600, HitDef: Knife]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Anim = 10600 && AnimElem = 3
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
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
ground.velocity = ifElse(var(20), -3.375, -6.75), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.375, -6.75)
guard.cornerPush.velOff = 0
air.velocity = -7, -7.36
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 7)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8015)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 97), var(36):= -74
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 600, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = Anim = 600 && AnimElemTime(3) >= 0
trigger2 = Anim = 10600 && AnimElemTime(4) >= 0
moveType = I

[State 600, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 600, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;JUMPING MEDIUM PUNCH=
[StateDef 610]
type = A
physics = N
moveType = A
anim = ifelse(var(40), 10610, 610)
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 610, Voice]
type = PlaySnd
trigger1 = Anim = 10610 && AnimElem = 1
value= 4, 0
channel = 0

[State 610, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,ifelse(anim = 10610, 7, 1)
channel = 1

[State 610, Light Splash]
type = Explod
trigger1 = Anim = 10610 && Time = 8
anim = 14000
ID = 14000
pos = ceil(3 * const(size.xscale)), ceil(-78 * const(size.yscale))
postype = p1
bindtime = 1
removetime = -2
pausemovetime = -2
scale = 1,1
sprpriority = 3
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 610, HitDef: Fist]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Anim = 610 && AnimElem = 3
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 67 < 7, 7, fvar(11) * 67)), 0
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
ground.velocity = ifElse(var(20), -3.375, -6.75), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.375, -6.75)
guard.cornerPush.velOff = 0
air.velocity = -7, -7.36
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 50), var(36) := -59
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 610, HitDef: Knife]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Anim = 10610 && AnimElem = 3
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 62 < 7, 7, fvar(11) * 62)), 7
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
ground.velocity = ifElse(var(20), -3.375, -6.75), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.375, -6.75)
guard.cornerPush.velOff = 0
air.velocity = -7, -7.36
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 8)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8015)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 97), var(36):= -74
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 610, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
movetype = I

[State 610, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 610, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;JUMPING HEAVY PUNCH=
[StateDef 620]
type = A
physics = N
moveType = A
anim = ifelse(var(40), 10620, 620)
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 620, Voice]
type = PlaySnd
trigger1 = Anim = 10620 && AnimElem = 1
value= 4, 2
channel = 0

[State 620, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,ifelse(anim = 10620, 8, 2)
channel = 1

[State 620, Light Splash]
type = Explod
trigger1 = Anim = 10620 && Time = 8
anim = 14000
ID = 14000
pos = ceil(3 * const(size.xscale)), ceil(-78 * const(size.yscale))
postype = p1
bindtime = 1
removetime = -2
pausemovetime = -2
scale = 1,1
sprpriority = 3
shadow = 0,0,0
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 620, HitDef: Fist]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Anim = 620 && AnimElem = 3
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
ground.velocity = ifElse(var(20), -3.375, -6.75), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.375, -6.75)
guard.cornerPush.velOff = 0
air.velocity = -7, -7.36
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 79), var(36) := -73
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 620, HitDef: Knife]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Anim = 10620 && AnimElem = 3
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 84 < 7, 7, fvar(11) * 84)), 7
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
ground.velocity = ifElse(var(20), -3.375, -6.75), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.375, -6.75)
guard.cornerPush.velOff = 0
air.velocity = -7, -7.36
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 9)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8015)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 97), var(36):= -74
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 620, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 620, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 620, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;JUMPING LIGHT KICK=
[StateDef 630]
type = A
physics = N
moveType = A
anim = ifelse(var(40), 10630, 630)
ctrl = 0
sprPriority = 1
powerAdd = 0

[State 630, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,3
channel = 1

[State 630, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 39 < 7, 7, fvar(11) * 39)), 0
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
ground.velocity = ifElse(var(20), -3.375, -6.75), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.375, -6.75)
guard.cornerPush.velOff = 0
air.velocity = -4, -5.5
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -115
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 630, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 630, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 630, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52



;NEUTRAL JUMPING MEDIUM KICK=
[StateDef 640]
type = A
physics = N
moveType = A
anim = ifelse(var(40), 10640, 640)
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 640, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,4
channel = 1

[State 640, Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 62 < 7, 7, fvar(11) * 62)), 0
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
ground.velocity = ifElse(var(20), -3.375, -6.75), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.375, -6.75)
guard.cornerPush.velOff = 0
air.velocity = -7, -7.36
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 100), var(36) := -69
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 640, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
movetype = I

[State 640, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 640, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52


;ANGLED JUMPING MEDIUM KICK=
[StateDef 645]
type = A
physics = N
moveType = A
anim = ifelse(var(40), 10645, 645)
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 645, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,4
channel = 1

[State 645, Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 67 < 7, 7, fvar(11) * 67)), 0
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
ground.velocity = ifElse(var(20), -3.375, -6.75), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.375, -6.75)
guard.cornerPush.velOff = 0
air.velocity = -7, -7.36
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 100), var(36) := -69
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 645, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
movetype = I

[State 645, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 645, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52


;JUMPING HEAVY KICK=
[StateDef 650]
type = A
physics = N
moveType = A
anim = ifelse(var(40), 10650, 650)
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 650, Voice]
type = PlaySnd
trigger1 = AnimElem = 3 && Random < 500
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 650, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,5
channel = 1

[State 650, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 78 < 7, 7, fvar(11) * 78)), 0
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
ground.velocity = ifElse(var(20), -3.375, -6.75), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.375, -6.75)
guard.cornerPush.velOff = 0
air.velocity = -7, -7.36
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -50
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48

[State 650, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 650, Gravity]
type = Gravity
trigger1 = 1

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

[State 800, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = (Random < 500)

[State 800, Knife Dropped]
type = helper
triggerall = var(40)
trigger1 = !Time
name = "Knife"
id = 15000
pos = ceil(0 * const(size.xscale)), ceil(-60 * const(size.yscale))
postype = p1
stateno = 15500
size.xscale = const(Size.xscale)
size.yscale = const(Size.yscale)
helpertype = normal
ownpal = 1
keyctrl = 0
ignorehitpause = 1
size.ground.back = 18
size.ground.front = 18
supermovetime = 99999999

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

[State 0, VarSet]
type = VarSet
trigger1 = command = "kk"
v = 10
value = 1

[State 0, VarSet]
type = VarSet
trigger1 = command = "pp"
v = 10
value = 0

[State 800, HitDef: PP Throw]
type = HitDef
triggerall = !var(10)
trigger1 = AnimElem = 3
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
p1StateNo = ifElse(command = "holdback", 810, 805)

[State 800, HitDef: KK Throw]
type = HitDef
triggerall = var(10)
trigger1 = AnimElem = 3
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
p1StateNo = ifElse(command = "holdback", 805, 820)

[State 800, Voice (Missed)]
type = PlaySnd
trigger1 = AnimElem = 5
value = 800,0
channel = 0

[State 800, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,0
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
edge = 24,24
ignoreHitPause = 1

[State 805, Turn]
type = Turn
trigger1 = AnimElem = 3

[State 805, Facing]
type = TargetFacing
trigger1 = 1
value = -1

[State 805, Throw Escape]
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
trigger1 = AnimElemTime(2) < 0 || AnimElemTime(4) >= 0
pos = ceil(50 * const(size.xScale)), 0

[State 805, TargetBind 2]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
pos = ceil(11 * const(size.xScale)), 0

[State 805, SprPriority 1]
type = SprPriority
trigger1 = AnimElemTime(2) < 0 || AnimElemTime(4) >= 0
value = 1

[State 805, SprPriority -1]
type = SprPriority
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(4)< 0
value = -1

[State 805, End]
type = ChangeState
trigger1 = !NumTarget
value = 0
ctrl = 1

[State 805, End]
type = ChangeState
trigger1 = AnimElemTime(4) >= 0
value = ifElse(var(10), 820, 810)


;THROW SWITCHING SIDES (TARGET)=
[StateDef 806]
type = A
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



;PRISONER THROW=
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

[State 810, Throw]
type = TargetFacing
trigger1 = Time <= 1
value = -1

[State 810, Throw]
type = TargetFacing
trigger1 = AnimElem = 5
value = 1

[State 810, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(3) < 0
pos = ceil(50 * const(size.xScale)), ceil(0 * const(size.yScale))

[State 810, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = ceil(36 * const(size.xScale)), ceil(-85 * const(size.yScale))

[State 810, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = ceil(-16 * const(size.xScale)), ceil(-98 * const(size.yScale))

[State 810, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = ceil(-76 * const(size.xScale)), ceil(-23 * const(size.yScale))

[State 810, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 6
value = floor(ifElse(126 * fvar(11) < 7, -7, -126 * fvar(11)))

[State 810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 6
value = 36

[State 810, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElem = 6 && !var(20)
value = 72

[State 810, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 6
value = 1

[State 810, VarAdd]
type = VarAdd
trigger1 = NumTarget && AnimElem = 6
var(13) = 1

[State 810, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 6
var(15) = 1
ignoreHitPause = 1

[State 810, Juggle]
type = VarSet
trigger1 = NumTarget && AnimElem = 6
var(16) = 1
ignoreHitPause = 1

[State 810, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 810,0
channel = 0

[State 810, Woosh Sound]
type = PlaySnd
trigger1= AnimElem = 4
value = 1,5
channel = 1

[State 810, Turn]
type = Turn
trigger1 = !AnimTime

[State 810, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;PRISONER THROW (TARGET)=
;Being Thrown
[StateDef 815]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 3

[State 815, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 815

[State 815, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(4) < 0
value = 0

[State 815, Turn]
type = Turn
trigger1 = AnimElem = 6

[State 815, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 6
y = -7

[State 815, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(6) >= 0 
y = 0.55

[State 815, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 815, End]
type = SelfState
trigger1 = AnimElemTime(6) >= 0 && (pos y > -vel y)
value = 5100


;BAD STAMP=
[Statedef 820]
type = S
physics = N
moveType = A
anim = 820
ctrl = 0
velSet = 0,0
sprPriority = 2

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

[State 820, Throw]
type = TargetFacing
trigger1 = !Time && NumTarget
value = -1

[State 820, Throw]
type = TargetFacing
trigger1 = AnimElem = 5 && NumTarget
value = -1

[State 820, Width]
type = Width
trigger1 = AnimElemTime(5) >= 0
edge = 32,0
ignoreHitPause = 1

[State 820, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 820, Bind 1]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(5) < 0
pos = ceil(0 * enemy,const(size.xScale)), ceil(0 * enemy,const(size.yScale)), Head

[State 820, Bind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0
pos = ceil(-13 * const(size.xScale)), ceil(5 * const(size.yScale))

[State 820, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) >= 0
y = 0.45

[State 820, End]
type = ChangeState
trigger1 = vel y > 0 && pos y >= ceil(-15 * const(size.yScale))
value = 821

;Landing
[StateDef 821]
type = S
physics = N
movetype = A
ctrl = 0
anim = 821
velSet = 0,0
sprPriority = 1

[State 821, PosSet]
type = PosSet
trigger1 = !time
y = ceil(-15 * const(size.yScale))

[State 821, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprpriority = -3
postype = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 821, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 821, Impact Sound]
type = PlaySnd
trigger1 = !Time
value = 820,0
channel = 1

[State 821, Hit Sound]
type = PlaySnd
trigger1 = NumTarget && !Time
value = 2,5
channel = 2

[State 821, Impact Sound]
type = PlaySnd
trigger1 = NumTarget && !Time
value = 820,1
channel = 3

[State 821, EnvShake]
type = EnvShake
trigger1 = NumTarget && !Time
time = 14
ampl = -4
freq = 120

[State 821, Impact Dust]
type = Helper
trigger1 = NumTarget && !Time
helperType = Normal
stateNo = 8110
ID = 8110
name = "Impact Dust"
posType = P1
pos = ceil(0 * const(size.xScale)), ceil(15 * const(size.yScale))
facing = -1
ownPal = 1

[State 821, Hit Spark]
type = Helper
trigger1 = NumTarget && !Time
helperType = Normal
stateNo = 8012
ID = 8000
name = "Spark"
posType = P1
pos = ceil(0 * const(size.xScale)), ceil(15 * const(size.yScale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 820, TargetBind]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = ceil(0 * const(size.xScale)), ceil(7 * const(size.yScale))

[State 821, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && !Time
value = floor(ifElse(140 * fvar(11) < 7, -7, -140 * fvar(11)))
kill = 1

[State 821, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && !Time
value = 36

[State 821, Power]
type = PowerAdd
trigger1 = NumTarget && !Time && !var(20)
value = 72

[State 821, HitAdd]
type = HitAdd
trigger1 = NumTarget && !Time
value = 1

[State 821, HitCount]
type = VarAdd
trigger1 = NumTarget && !Time
var(13) = 1

[State 821, Juggle]
type = VarAdd
trigger1 = NumTarget && !Time
var(15) = 1
ignoreHitPause = 1

[State 821, Juggle]
type = VarSet
trigger1 = NumTarget && !Time
var(16) = 1
ignoreHitPause = 1

[State 821, Throw]
type = TargetState
trigger1 = NumTarget && !Time
value = 826

[State 0, VelAdd]
type = VelAdd
trigger1 = NumTarget && AnimElem = 2
x = -4
y = -5

[State 821, StateTypeSet]
type = StateTypeSet
trigger1 = NumTarget && AnimElem = 2
statetype = A
movetype = I
physics = A


;BAD STAMP/GUILTY STAMP (TARGET)=
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

[State 825, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 825, SprPriority]
type = SprPriority
trigger1 = 1
value = 2


;After Throw
[StateDef 826]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 0, 0
sprPriority = 0

[State 826, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 826

[State 826, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,0
ignoreHitPause = 1

[State 826, VelSet]
type = VelSet
trigger1 = AnimElem = 11
x = -4
y = -5

[State 826, VelAdd]
type = VelAdd
Trigger1 = AnimElemTime(11)>=0
Y = .49

[State 826, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 826, End]
type = SelfState
trigger1 = AnimElemTime(11)>=0 && (pos y > -vel y)
value = 5100

;AIR THROW ATTEMPT=
[StateDef 850]
type = A
physics = N
moveType = A
anim = 850
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 850, Knife Dropped]
type = helper
triggerall = var(40)
trigger1 = !Time
name = "Knife"
id = 15000
pos = ceil(0 * const(size.xscale)), ceil(-60 * const(size.yscale))
postype = p1
stateno = 15500
size.xscale = const(Size.xscale)
size.yscale = const(Size.yscale)
helpertype = normal
ownpal = 1
keyctrl = 0
ignorehitpause = 1
size.ground.back = 18
size.ground.front = 18
supermovetime = 99999999

[State 850, Tech Hit Reset]
type = VarSet
trigger1 = 1
var(19) = 0

[State 850, Tech Hit]
type = VarSet
trigger1 = NumEnemy
trigger1 = EnemyNear, StateType = A
trigger1 = (EnemyNear, StateNo = [0,999]) && (EnemyNear, StateNo != [100,119]) && (EnemyNear, StateNo != [200,799])
var(19) = 7

[State 850, AttackDist]
type = AttackDist
trigger1 = 1
value = 0

[State 850, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
trigger1 = !var(38)
attr = A,NT
hitFlag = AF
priority = 1,Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
fall = 1
fall.recover = 1
numHits = 0
p1StateNo = 860

[State 850, Voice (Missed)]
type = PlaySnd
trigger1 = AnimElem = 4
value = 800,0
channel = 0

[State 850, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,0
channel = 1

[State 850, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 850, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 850, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52


;GUILTY STAMP=
[Statedef 860]
type = A
physics = N
moveType = A
anim = 820
ctrl = 0
velSet = 0,0
sprPriority = 2

[State 860, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 860, Tech Hit]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback")
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 860, Throw Escape]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 860, Turn]
type = Turn
triggerAll = !Time
trigger1 = !AILevel && command = "holdback"
trigger2 = AILevel && BackEdgeDist < FrontEdgeDist

[State 860, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 825

[State 860, Throw]
type = TargetFacing
trigger1 = !Time && NumTarget
value = -1

[State 860, Throw]
type = TargetFacing
trigger1 = AnimElem = 5 && NumTarget
value = -1

[State 860, Width]
type = Width
trigger1 = AnimElemTime(5) >= 0
edge = 32,0
ignoreHitPause = 1

[State 860, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,1
ignoreHitPause = 1

[State 860, Bind 1]
type = BindToTarget
trigger1 = NumTarget
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(5) < 0
pos = ceil(0 * enemy,const(size.xScale)), ceil(0 * enemy,const(size.yScale)), Head

[State 860, Bind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0
pos = ceil(-13 * const(size.xScale)), ceil(5 * const(size.yScale))

[State 860, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) >= 0
y = 0.45

[State 860, End]
type = ChangeState
trigger1 = vel y > 0 && pos y >= ceil(-15 * const(size.yScale))
value = 821


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
value = 5000,2
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
value = ifElse(SelfAnimExist(5940), 5940, 130)

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
