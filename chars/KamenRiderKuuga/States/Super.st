; _________________________________________
;| Character by Author Name |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SUPER MOVES>========================================
;==============================================================================================

;---------------------------------------------------------------------------
;Level 1 Rider Kick (Spin)
[Statedef 3000]
type = S
physics = S
moveType = A
ctrl=0
velset=0,0
sprpriority=1
poweradd=-1000
facep2=1
anim = 3000

[State 0, VelSet]
type = VelSet
trigger1 = Time = 1
x = 0
y = 0
persistent = 1

[State 0, PosFreeze]
type = PosFreeze
trigger1 = Time = 1
value = 1
persistent = 1

[State 3000, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = ((prevstateno = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000, 4999]) && var(8)

[State 3000, CC Reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = varset
trigger1 = time = 3
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3000, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 12
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3000, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3000, Superpause FX]
type = helper
trigger1 = AnimElem = 4
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = 3,-50
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = AnimElem = 4
time = 40
movetime = 40
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 3001
ctrl = 1

;-----------------------------------------------
; Level 1 Rider Kick (Kick)
[StateDef 3001]
type = A
physics = N
moveType = A
ctrl = 0
velSet = 0,0
sprpriority = 1
faceP2 = 1
anim = 3001

[State 3500, Forced Shake]
type = EnvShake
trigger1 = MoveHit
time = 20
ampl = 10
freq = 100

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 3 && stateno != 3002 && stateno != 0 && stateno != 52
anim = 3003
ID = 3003
pos = 0,0
postype = P1 ;P2, Front, Back, Left, Right
facing = 1
vfacing = 1
bindtime = 8
removetime = 8
scale = 1,1
sprpriority = 1
ontop = 1
ownpal = 0
removeongethit = 0
persistent = 1
ignorehitpause = 1

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 8
y = 5

[State 1050, 4]
type = VelAdd
trigger1 = Time >= 1
x = .3
y = .5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S4,10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S3000,1
channel = 1

[State 3000, Corner Push]
type = varset
trigger1 = time = 3
fvar(5) = 0

;[State 3000, Unguardable]
;type = VarSet
;trigger1 = Time = 3 && NumEnemy
;trigger1 = (EnemyNear, StateNo != [120,155])
;var(17) = 40

[State 1020, Hit Near] 
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = AnimElem = 2
attr = S, SA
damage = ceil(ifElse(fvar(11) * 180< 7, 7, fvar(11) * 180)), 55
priority = 4, hit
animtype = Hard
getpower = 70 * !var(20), 30 * !var(20)
givepower = 35, 35
guardflag = MA
hitflag = MAF
hitsound = S3000,0
guardsound = S130,0
pausetime = 20,20
guard.pauseTime = 32,32
sparkNo = S3600
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 65), var(36):=-8
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime = 60
guard.hittime = (60) - 6
ground.velocity = -20, -10
air.velocity = -12,-5
guard.velocity = -10
airguard.velocity = -10, -3
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.04))
fall = 1
fall.recover = 0
forcestand = 0
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 14
envshake.ampl = 20
envShake.freq = 120

[State 1055, 3]
type = ChangeState
trigger1 = MoveHit = 1
trigger2 = MoveGuarded = 1
value = 3002

[State 1055, 4]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52

;---------------------------------------------------------------------------
; Dive/Glide (Fall after Hit)
[Statedef 3002]
type = A
movetype = I
physics = N
juggle = 0
ctrl = 0
anim = 3000

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = 1
id = 3003

[State 1051, 0]
type = StopSnd
trigger1 = time = 0
channel = 1

[State 1051, 1]
type = PosFreeze
trigger1 = Time = 0
time = 1

[State 1051, 2]
type = VelSet
trigger1 = Time = 1
x = -4
y = -4.5

[State 1051, 3]
type = VelAdd
trigger1 = Time >= 1
y = .51

[State 1051, 4]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52


;-----------------------------------------------
; Level 1 Transformation Blitz (Start)
[StateDef 3100]
type = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprpriority = 1
powerAdd = -1000
faceP2 = 1
anim = 3100

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 14
x = 7
y = 0

[State 0, 4]
type = VelAdd
trigger1 = Time >= 29
x = .7
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 14
trigger2 = AnimElem = 17
trigger3 = AnimElem = 20
trigger4 = AnimElem = 23
trigger5 = AnimElem = 26
trigger6 = AnimElem = 29
value = S100,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S70,4

[state 0,Posset]
type=posset
trigger1=!time
y=0

[State 3000, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = ((prevstateno = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000, 4999]) && var(8)

[State 3000, CC Reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = varset
trigger1 = time = 3
fvar(5) = 0

[State 3000, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 12
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3000, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3000, Superpause FX]
type = helper
trigger1 = AnimElem = 12
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = 10,-60
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = AnimElem = 12
time = 40
movetime = 40
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3500, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = !Time
ID = 3100
attr = S, HT
kill = 0
hitFlag = MFA
guardFlag = MA
priority = 4, Hit
damage = 30,35
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animtype = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 200
guard.hittime = (200) - 6
ground.slideTime = 16
air.hitTime = 200
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 0
forcenofall = 1
fall.recover = 0
forceStand = 1
hitSound = S2,2
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -73
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
p1stateno = 3102
p2stateno = 9110

[State 0, TargetBind]
type = TargetBind
trigger1 = AnimTime = 75 
pos = 60,0
ignorehitpause = 1 

[State 3500, End]
type = ChangeState
trigger1 = !AnimTime
trigger2 = MoveGuarded
value = 3101
ctrl = 1

;-----------------------------------------------
; Level 1 Transformation Blitz (Miss)
[StateDef 3101]
type = S
physics = S
moveType = I
ctrl = 0
velSet = 0,0
sprpriority = 1
;faceP2 = 1
anim = 3101

[State 3101, Turn al Final]
type = Turn
trigger1 = AnimTime = 4 

[State 3500, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;-----------------------------------------------
; Level 1 Transformation Blitz (Blitz)
[StateDef 3102]
type = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprpriority = 1
faceP2 = 1
anim = 3102

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 19
trigger2 = AnimElem = 24
trigger3 = AnimElem = 26
trigger4 = AnimElem = 35
value = S4,3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 47
value = S70,4

[State 3152, PS]
type = PlaySnd
trigger1 = AnimElem = 4
value = s70, 0

[State 3152, PS]
type = PlaySnd
trigger1 = AnimElem = 54
value = s70, 1

[State 3152, PS]
type = PlaySnd
trigger1 = AnimElem = 19
value = s69, 1

[State 3152, PS]
type = PlaySnd
trigger1 = AnimElem = 24
value = s69, 1

[State 3152, PS]
type = PlaySnd
trigger1 = AnimElem = 26
value = s69, 2

[State 3152, PS]
type = PlaySnd
trigger1 = AnimElem = 35
value = s69, 1

[State 3152, PS]
type = PlaySnd
trigger1 = AnimElem = 41
value = s69, 2

[State 3152, PS]
type = PlaySnd
trigger1 = AnimElem = 61
value = s69, 0


[State 3000, Corner Push]
type = varset
trigger1 = time = 3
fvar(5) = 0

[State 3102, EfectoVisual]
type = Explod
trigger1 = AnimElem = 62
anim = 320
ID = 320
pos = 0,0 
postype = p1
bindtime = -1
removetime = 28
sprpriority = 3
removeongethit = 1

;[State 3000, Unguardable]
;type = VarSet
;trigger1 = Time = 3 && NumEnemy
;trigger1 = (EnemyNear, StateNo != [120,155])
;var(17) = 40

[State 1020, Hit Near] 
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = AnimElem = 20
trigger2 = AnimElem = 25
trigger3 = AnimElem = 26
trigger4 = AnimElem = 33
attr = S, SA
kill = 0
damage = ceil(ifElse(fvar(11) * 30< 7, 7, fvar(11) * 30)), 7
priority = 4, hit
animtype = Hard
getpower = 70 * !var(20), 30 * !var(20)
givepower = 35, 35
guardflag = 
hitflag = MAF
hitsound = S2,2
guardsound = S130,0
pausetime = 10,10
guard.pausetime = 20,20
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 100), var(36) := -61
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime = 120
guard.hittime = (120) - 6
ground.velocity = 0,0
air.velocity = -12,-5
guard.velocity = -10
airguard.velocity = -10, -3
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.04))
fall = 0
fall.recover = 0
forcestand = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 7
envshake.ampl = 10
envShake.freq = 80

[State 1020, Hit Melee A (empuje)] 
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = AnimElem = 33
attr = S, SA
kill = 0
damage = ceil(ifElse(fvar(11) * 60< 7, 7, fvar(11) * 30)), 7
priority = 4, hit
animtype = Hard
getpower = 70 * !var(20), 30 * !var(20)
givepower = 35, 35
guardflag = MA
hitflag = MAF
hitsound = S2,2
guardsound = S130,0
pausetime = 10,10
guard.pausetime = 20,20
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 100), var(36) := -61
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime = 120
guard.hittime = (120) - 6
ground.velocity = -35,0 
air.velocity = 12,-5 
p2facing = -1 
guard.velocity = -10
airguard.velocity = -10, -3
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.04))
fall = 0
fall.recover = 0
forcestand = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 14 
envshake.ampl = 40 
envShake.freq = 200 


; Proyectile
[State 1020, Lanzar Proyectil]
type = Projectile
trigger1 = AnimElem = 68
projID = 8201
projAnim = 8201 
;projHitAnim = 3600 
projPriority = 4
projScale = 1,1
projHits = 1
projMisstime = 0
projRemove = 1
projShadow = 0
offset		= 0, -36 
postype = p1
velocity	= 100,0 
projRemoveTime = 200 
projHit = 1
projHitTime = 10
HitSound = s3000,0
projGuardSound = S130,0
projSparkNo = S3600
projRemoveOnHit = 1
projRemovetime = 10
attr = S, SP
damage = 130
getPower = 70,30
givePower = 35,35
pausetime = 10,10
guard.pausetime = 20,20
ground.velocity = -20,-30
air.velocity = -12,-30
guard.velocity = -10
airguard.velocity = -10,-3
fall = 1
yAccel = (0.5 + (ComboCount * 0.04))
envshake.time = 14
envshake.ampl = 20
envshake.freq = 120

[State 1020, Hit Near] 
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = AnimElem = 69
attr = S, SA
damage = 100
priority = 4, hit
animtype = Hard
getpower = 70 * !var(20), 30 * !var(20)
givepower = 35, 35
guardflag = MA
hitflag = MAF
hitsound = S3000
guardsound = S130,0
pausetime = 20,20
guard.pausetime = 20,20
sparkNo = S3600
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 100), var(36) := -61
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime = 18
guard.hittime = (18) - 6
ground.velocity = -1,-20
air.velocity = -1,-20
guard.velocity = -10
airguard.velocity = -10, -3
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.04))
fall = 1
fall.recover = 0
forcestand = 0
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 14
envshake.ampl = 20
envShake.freq = 120

[State 1055, 3]
type = ChangeState
trigger1 = MoveGuarded = 1
value = 3101

[State 1055, 4]
type = ChangeState
trigger1 = !animtime
value = 3103
ctrl = 1

;-----------------------------------------------
; Transformation Blitz (End)
[StateDef 3103]
type = S
physics = S
moveType = I
ctrl = 0
velSet = 0,0
sprpriority = 1
faceP2 = 1
anim = 3103

[State 3500, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-----------------------------------------------
; Level 2 Transformation Blitz (Start)
[StateDef 3150]
type = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprpriority = 1
powerAdd = -2000
faceP2 = 1
anim = 3100

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 14
x = 8
y = 0

[State 0, 4]
type = VelAdd
trigger1 = Time >= 29
x = .8
y = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 14
trigger2 = AnimElem = 17
trigger3 = AnimElem = 20
trigger4 = AnimElem = 23
trigger5 = AnimElem = 26
trigger6 = AnimElem = 29
value = S100,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S70,4

[state 0,Posset]
type=posset
trigger1=!time
y=0

[State 3000, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = ((prevstateno = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000, 4999]) && var(8)

[State 3000, CC Reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = varset
trigger1 = time = 3
fvar(5) = 0

[State 3000, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 12
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3000, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3050, Super Pause FX]
type = Helper
trigger1 = Time = 3
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 10,-60
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = AnimElem = 4
time = 40
movetime = 40
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3500, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = !Time
ID = 3100
kill = 0
attr = S, HT
hitFlag = M-
guardFlag = MA
priority = 4, Hit
damage = 30,35
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animtype = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 200
guard.hittime = (200) - 6
ground.slideTime = 16
air.hitTime = 200
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 0
forcenofall = 1
fall.recover = 0
forceStand = 1
hitSound = S2,2
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -73
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
p1stateno = 3152
p2stateno = 9110

[State 0, TargetBind]
type = TargetBind
trigger1 = AnimTime = 75
pos = 60,0
ignorehitpause = 1 

[State 3500, End]
type = ChangeState
trigger1 = !AnimTime
trigger2 = MoveGuarded
value = 3151
ctrl = 1


;-----------------------------------------------
; Level 2 Transformation Blitz (Miss)
[StateDef 3151]
type = S
physics = S
moveType = I
ctrl = 0
velSet = 0,0
sprpriority = 1
faceP2 = 1
anim = 3101

[State 3500, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;-----------------------------------------------
; Level 2 Transformation Blitz (Blitz)
[StateDef 3152]
type = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprpriority = 1
faceP2 = 1
anim = 3104

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 95
x = 20
y = 0
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 19 || AnimElem = 24 || AnimElem = 26 || AnimElem = 35
value = S4,3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 47
value = S70,4

[State 3152, PS]
type = PlaySnd
trigger1 = AnimElem = 4
value = s70, 0

[State 3152, PS]
type = PlaySnd
trigger1 = AnimElem = 56
value = s70, 2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 95
value = S4,12

[State 3152, PS]
type = PlaySnd
trigger1 = AnimElem = 19
value = s69, 1

[State 3152, PS]
type = PlaySnd
trigger1 = AnimElem = 24
value = s69, 1

[State 3152, PS]
type = PlaySnd
trigger1 = AnimElem = 26
value = s69, 2

[State 3152, PS]
type = PlaySnd
trigger1 = AnimElem = 35
value = s69, 1

[State 3152, PS]
type = PlaySnd
trigger1 = AnimElem = 41
value = s69, 2

[State 3152, PS]
type = PlaySnd
trigger1 = AnimElem = 66
value = s69, 3

[State 3152, PS]
type = PlaySnd
trigger1 = AnimElem = 71
value = s69, 4

;[State 3000, Unguardable]
;type = VarSet
;trigger1 = Time = 3 && NumEnemy
;trigger1 = (EnemyNear, StateNo != [120,155])
;var(17) = 40

; =======================
; GOLPES NORMALES
; Animaciones: 20, 25, 26, 33, 41
; =======================
[State 1020, Hit Near] 
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = AnimElem = 20
trigger2 = AnimElem = 25
trigger3 = AnimElem = 26
trigger4 = AnimElem = 33
attr = S, SA
kill = 0
damage = ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 7
priority = 4, hit
animtype = Hard
getpower = 70 * !var(20), 30 * !var(20)
givepower = 35, 35
guardflag = 
hitflag = MAF
hitsound = S2,2
guardsound = S130,0
pausetime = 10, 10
guard.pausetime = 20, 20
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 100), var(36) := -61
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime = 120
guard.hittime = (120) - 6
ground.velocity = 0,0
air.velocity = -12,-5
guard.velocity = -10
airguard.velocity = -10,-3
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.04))
fall = 0
fall.recover = 0
forcestand = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envshake.time = 7
envshake.ampl = 10
envShake.freq = 80

[State 1020, Hit Melee A (empuje)] 
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = AnimElem = 41
attr = S, SA
kill = 0
damage = ceil(ifElse(fvar(11) * 30< 7, 7, fvar(11) * 30)), 7
priority = 4, hit
animtype = Hard
getpower = 70 * !var(20), 30 * !var(20)
givepower = 35, 35
guardflag = MA
hitflag = MAF
hitsound = S2,2
guardsound = S130,0
pausetime = 10,10
guard.pausetime = 20,20
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 100), var(36) := -61
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime = 120
guard.hittime = (120) - 6
ground.velocity = -35,0 
air.velocity = 12,-5 
p2facing = -1 
guard.velocity = -10
airguard.velocity = -10, -3
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.04))
fall = 0
fall.recover = 0
forcestand = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 14 
envshake.ampl = 40 
envShake.freq = 200 

; =======================
; GOLPE QUE ATRAVIESA
; =======================
[State 1020, Hit Through]
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = AnimElem = 69
attr = S, SA
kill = 0
damage = ceil(ifElse(fvar(11) * 50 < 7, 7, fvar(11) * 50)), 7
priority = 4, hit
animtype = Hard
getpower = 70 * !var(20), 30 * !var(20)
givepower = 35, 35
guardflag = MA
hitflag = MAF
hitsound = S2,2
guardsound = S130,0
pausetime = 8, 8
guard.pausetime = 20, 20
sparkNo = S8016
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 100), var(36) := -61
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime = 120
guard.hittime = (120) - 6
ground.velocity = -7, 0 
air.velocity = 8, -5 
guard.velocity = -10
airguard.velocity = -10,-3
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.04))
fall = 0
fall.recover = 0
forcestand = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envshake.time = 7
envshake.ampl = 10
envShake.freq = 80

[State 1020, Set Vel X hacia enemigo]
type = VelSet
trigger1 = AnimElem = 67
x = P2Dist X / 10


[State 1020, VelAdd durante avance]
type = VelAdd
trigger1 = AnimElem = 67 && Time > 0
x = ifElse((P2Dist X) > 0, 0.25, -0.25)

; =======================
; (anim 71)
; =======================
[State 1020, Combo Finisher] 
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = AnimElem = 71
attr = S, SA
damage = 110
priority = 4, hit
animtype = Hard
getpower = 70 * !var(20), 30 * !var(20)
givepower = 35, 35
guardflag = 
hitflag = MAF
hitsound = S3000
guardsound = S130,0
pausetime = 20, 20
guard.pausetime = 20, 20
sparkNo = S3600
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 100), var(36) := -61
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime = 18
guard.hittime = (18) - 6
ground.velocity = -1, -25 
air.velocity = -1, -25 
guard.velocity = -10
airguard.velocity = -10,-3
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.04))
fall = 1
fall.recover = 0
fall.recovertime = 90 
fall.time = 50 
forcestand = 0
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envshake.time = 14
envshake.ampl = 20
envShake.freq = 120


[State 1055, 3]
type = ChangeState
trigger1 = MoveGuarded = 1
value = 3101

[State 1055, 4]
type = ChangeState
trigger1 = !animtime
value = 3103
ctrl = 1


;---------------------------------------------------------------------------
;Level 2 Rider Kick (Spin)
[Statedef 3050]
type=A
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=-2000
facep2=1
anim = 3000

[State 0, VelSet]
type = VelSet
trigger1 = Time = 1
x = 0
y = 0
persistent = 1

[State 0, PosFreeze]
type = PosFreeze
trigger1 = Time = 1
value = 1
persistent = 1

[State 3000, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = ((prevstateno = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000, 4999]) && var(8)

[State 3000, CC Reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = varset
trigger1 = time = 3
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3000, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 12
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3000, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3050, Super Pause FX]
type = Helper
trigger1 = Time = 3
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 3, -50
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = AnimElem = 4
time = 40
movetime = 40
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 3051
ctrl = 1

;-----------------------------------------------
; Level 2 Rider Kick (Kick)
[StateDef 3051]
type = A
physics = N
moveType = A
ctrl = 0
velSet = 0,0
sprpriority = 1
faceP2 = 1
anim = 3001

[State 3500, Forced Shake]
type = EnvShake
trigger1 = MoveHit
time = 20
ampl = 10
freq = 100

[State 3051, Vel X hacia enemigo]
type = VelSet
trigger1 = Time = 0
x = P2Dist X / 14

[State 3051, Vel Y hacia enemigo]
type = VelSet
trigger1 = Time = 0
y = P2Dist Y / 14

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 3 && stateno != 3002 && stateno != 0 && stateno != 52
anim = 3003
ID = 3003
pos = 0,0
postype = P1
facing = 1
vfacing = 1
bindtime = 8
removetime = 8
scale = 1,1
sprpriority = 1
ontop = 1
ownpal = 0
removeongethit = 0
persistent = 1
ignorehitpause = 1

[State 3051, VelAdd]
type = VelAdd
trigger1 = Time >= 1
x = 0.1
y = 0.3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S4,11

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S3000,1
channel = 1

[State 3000, Corner Push]
type = varset
trigger1 = time = 3
fvar(5) = 0

[State 1020, Hit Near] 
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = AnimElem = 2
attr = S, SA
damage = ceil(ifElse(fvar(11) * 255 < 7, 7, fvar(11) * 255)), 55
priority = 4, hit
animtype = Hard
getpower = 70 * !var(20), 30 * !var(20)
givepower = 35, 35
guardflag = MA
hitflag = MAF
hitsound = S3000,0
guardsound = S130,0
pausetime = 20,20
guard.pauseTime = 32,32
sparkNo = S3600
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 65), var(36):=-8
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.slidetime = 18
ground.hittime = 120
guard.hittime = (120) - 6
ground.velocity = -20, -10
air.velocity = -12, -5
guard.velocity = -10
airguard.velocity = -10, -3
airguard.ctrlTime = 16
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.04))
fall = 1
fall.recover = 0
forcestand = 0
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envshake.time = 14
envshake.ampl = 20
envShake.freq = 120

[State 1055, 3]
type = ChangeState
trigger1 = MoveHit = 1
trigger2 = MoveGuarded = 1
value = 3002

[State 1055, 4]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 52


;-----------------------------------------------
; ULTIMATE Form (Grab)
[StateDef 3500]
type = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprpriority = 1
powerAdd = -3000
faceP2 = 1
anim = 3500

[State 3500, Forced Shake]
type = EnvShake
trigger1 = AnimElem = 5
time = 64
ampl = 10
freq = 120

[State 3502, Explod]
type = Explod
trigger1 = AnimElem = 4 && stateno != 3002 && stateno != 0 && stateno != 52
anim = 12002 
ID = 12002 
pos = 0, 0 
postype = P1 
facing = 1
vfacing = 1
bindtime = 8
removetime = 72
scale = 1, 1
sprpriority = 3
ontop = 1
ownpal = 0
removeongethit = 0
persistent = 1
ignorehitpause = 1

[State 3502, PlaySnd]	
type = PlaySnd
trigger1 = AnimElem = 5 
value = S8600, 0 

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S70,5

[state 3500,Posset]
type=posset
trigger1=!time
y=0

[State 3000, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = ((prevstateno = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000, 4999]) && var(8)

[State 3000, CC Reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = varset
trigger1 = time = 3
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3000, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 12
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3000, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3500, Super Pause FX]
type = Helper
trigger1 = animelem = 4
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = -30, -70
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3500, Super Pause]
type = SuperPause
trigger1 = animelem = 4
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3500, Invulnerable]
type = NotHitBy
trigger1 = Time < 47
value = SCA 
time = 1

[State 3500, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = AnimElem = 8
ID = 3500
attr = S, SA
kill = 0
hitflag = MAF
guardFlag = M
priority = 4, Hit
damage = 200,150
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 62,62
animtype = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 200
guard.hittime = (200) - 6
ground.slideTime = 16
air.hitTime = 200
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
forcenofall = 1 
fall.recover = 0 
forceStand = 1 
hitSound = S1,5
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
p1stateno = 30016
p2stateno = 9111

[State 0, TargetBind]
type = TargetBind
trigger1 = movehit
pos = 2,0

[State 3500, End]
type = ChangeState
trigger1 = !AnimTime
value = 3501
ctrl = 1
;-----------------------------------------------
; ULTIMATE Form (Miss)
[StateDef 3501]
type = S
physics = S
moveType = I
ctrl = 0
velSet = 0,0
sprpriority = 1
faceP2 = 1
anim = 3501

[State 3500, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-----------------------------------------------
; ULTIMATE 1
[Statedef 30016]
type = S
movetype= A
physics = S
juggle = 1
velset = 0,0
ctrl = 0
anim = 30016

[State 3502, Explod]
type = Explod
trigger1 = AnimElem = 1 && stateno != 3002 && stateno != 0 && stateno != 52
anim = 30002 
ID = 30002 
pos = 0, 0 
postype = P1 
facing = 1
vfacing = 1
bindtime = 8
removetime = 100
scale = 1, 1
sprpriority = 3
ontop = 1
ownpal = 0
removeongethit = 0
persistent = 1
ignorehitpause = 1

[State 3502, PlaySnd]	
type = PlaySnd
trigger1 = AnimElem = 1 
value = S110, 7 



[State 4000, ¶W¥²±þ§Þ·t?®É¶¡°±¤î]
type = SuperPause
trigger1 = AnimElem = 1
anim = -1 ;¶W¥²???????????????¡C³q±`?¡ufightfx.air¡v?????¨Ï??¡B
 ;¥ª?¡us¡v?¥I???¡u¦Û¤À?air????¡v???????????¨Ï??¡C
scale = 0.5,0.5
pos = 10, -45 ;¶W¥²??????®y¼Ð¡]¢æ¶b,¢ç¶b¡^
sound = s110,6 ;¶W¥²?°Ê????¡C³q±`?¡ucommon.snd¡v?­µ?¨Ï??¡B
 ;¥ª?¡us¡v?¥I???¡u¦Û¤À?snd????¡v?­µ?¨Ï??¡C
time = 47

[State 1, µL¼Ä]
type = NotHitBy
trigger1 = time < 22
value = , NA,SA,HA,NP,SP,HP,NT,ST,HT
time = 3

[State 1, ­µ?»ï??]
type = PlaySnd
trigger1 = AnimElem = 8
value = 110, 5
freqmul = 1.3


[State -1, ?¹³]
type = Afterimage
trigger1 = AnimElem = 1
PalContrast = 200, 10, 150
palbright = 30,30,0 ;(¨ª¡B?¡B«C)©ú??
palmul = .80,.80,.80
paladd = -10,-10,-10
trans = Add
time = 10
TimeGap = 1
FrameGap = 1
length = 20

[State -1, ??????¹³];·Ï1
type = Explod
trigger1 = AnimElem = 9
anim = 11240
pos = 0, 20
postype = p1
scale = 1,0.1
ontop = 0
bindtime = 1
removetime = 20
sprpriority = 1
ownpal = 1
pausemovetime = 9999999
removeongethit = 1
vel = 0,0
trans = sub

[State -1, ??????¹³];·Ï2
type = Explod
trigger1 = AnimElem = 10
anim = 11240
pos = 0, 20
postype = p1
scale = 1,0.3
ontop = 0
bindtime = 1
removetime = 20
sprpriority = 11
ownpal = 1
pausemovetime = 9999999
removeongethit = 1
vel = 0,0
facing = -1
trans = sub


[State 4000, ???©w¸q]
type = HitDef
trigger1 = 1
attr = S, ST 
damage = 0, 0
animtype = High
guardflag = 
hitflag = MAF
priority = 3, Hit
pausetime = 7, 13
sparkno = -1
sparkxy = -10, -66
hitsound = -1
guardsound = s2, 4
ground.type = High
ground.slidetime = 42
ground.hittime = 42
guard.hittime = (42) - 6
ground.velocity = -2
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 14
getpower = 70,20
air.fall = 1
fall.recover = 0
p1Stateno = 30017
p2Stateno = 4005
p1facing = 1
p2facing = 1
envshake.time = 10
envshake.freq = 70
envshake.ampl = 1
envshake.phase = 20 


[State 195, ?????];
type = reversaldef
trigger1 = time%2 = 0
reversal.attr = SCA, AA, AT
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = 60,20
;p2stateno = 1995
hitsound = -1
attr = S, HA
hitflag = MAD
time = 1
priority = 5, hit
animtype = Hard
ground.type = Low
forcestand = 1
ground.slidetime = 2
p1Stateno = 30017
p2Stateno = 4005
p1facing = 1
p2facing = 1

[State 4000, ?????§ó]
type = ChangeState
trigger1 = AnimTime = 0
value = 30001
ctrl = 0

;-------------------------------------------------
;-------------------------------------------------
; ULTIMATE 2
[Statedef 30017];¡@¦¨¥\
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 30017
sprpriority = 2
facep2 = 1

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 3505
ID = 3505
pos = 0,-30
postype = Back 
facing = 1;ifelse(facing = 1,1,-1)
vfacing = 1
bindtime = 300
removetime = 300
supermovetime = 192
pausemovetime = 192
scale = 0.5,0.5
sprpriority = -1 

[State 3502, PlaySnd]	
type = PlaySnd
trigger1 = AnimElem = 1 
value = S110, 8 

[State 1, ]
type = posset
trigger1 = time = 0
trigger1 = facing = 1
x = -80
IgnoreHitPause = 1

[State 1, ]
type = posset
trigger1 = time = 0
trigger1 = facing = -1
x = 80
IgnoreHitPause = 1


[State 1, ???¬Û¤â?¦ì¸m¢°];TargetBind?¬Û¤â?¤@®Éªº?©ë§ô
type = TargetBind
trigger1 = 1
pos = 130,0
IgnoreHitPause = 1


[State 1, ­µ?»ï??]
type = PlaySnd
trigger1 = time >= 50
trigger1 = time%7 = 0
value = 110, 2
volume = -90

[State 1, ???¬Û¤â??????§ó];§j?­¸?
type = TargetState
trigger1 = time >= 50
trigger1 = time%7 = 0
value = 4005
IgnoreHitPause = 1


[State 1, ????¥l³ê];±Ù?????????
type = Helper
trigger1 = time >= 50
trigger1 = time%7 = 0
ID = 11260
pos = 20-floor(random/30),-30-floor(random/20)
postype = p2
facing = 1
stateno = 11260
IgnoreHitPause = 1

;¬Û¤â?­¹???ºA?®É??¾÷¯à??Target¨t??????
[State 1102, ???¬Û¤â?????´î]
type = TargetLifeAdd
trigger1 = time >= 50
trigger1 = time%7 = 0
value = -20
Kill = 0
absolute = 0


[State 1, ¾_°Ê];½Ä? ??
type = envshake
trigger1 = time >= 50
trigger1 = time%7 = 0
time = 2
freq = 130
ampl = 2
phase = 140


[State -1, ??????¹³];???
type = Explod
trigger1 = time >= 30
trigger1 = time%30 = 0
anim = 11000
pos = 0, 20
postype = p1
scale = 0.8,0.8
ontop = 0
bindtime = 1
removetime = 36
sprpriority = 11
ownpal = 1
removeongethit = 1
vel = 0,0
facing = 1
trans = sub



[State -1, ??????¹³];·Ï1
type = Explod
trigger1 = time%10 = 0
anim = 11240
pos = 0, 20
postype = p1
scale = 1,0.1
ontop = 0
bindtime = 1
removetime = 20
sprpriority = 1
ownpal = 1
pausemovetime = 9999999
removeongethit = 1
vel = 0,0
trans = sub

[State -1, ??????¹³];·Ï2
type = Explod
trigger1 = time%10 = 0
anim = 11240
pos = 0, 20
postype = p1
scale = 1,0.3
ontop = 0
bindtime = 1
removetime = 20
sprpriority = 11
ownpal = 1
pausemovetime = 9999999
removeongethit = 1
vel = 0,0
facing = -1
trans = sub


[State -1, ??????¹³];·Ï1 ¼Ä
type = Explod
trigger1 = time >= 50
trigger1 = time%15 = 0
anim = 11240
pos = 130, 10
postype = p1
scale = 0.8,0.3
ontop = 0
bindtime = 1
removetime = 20
sprpriority = 2
ownpal = 1
pausemovetime = 9999999
removeongethit = 1
vel = 0,0
trans = sub

[State -1, ??????¹³];·Ï1 ¼Ä
type = Explod
trigger1 = time >= 50
trigger1 = time%18 = 0
anim = 11240
pos = 130, 10
postype = p1
scale = 0.3,0.6
ontop = 0
bindtime = 1
removetime = 20
sprpriority = -3
ownpal = 1
pausemovetime = 9999999
removeongethit = 1
vel = 0,0
trans = sub

[State -1, ??????¹³];½Ä?ªi ²¾°Ê1¡@
type = Explod
trigger1 = time >= 50
trigger1 = time%12 = 0
anim = 12600
pos = 40, 0
postype = p1
scale = 0.7,0.6
ontop = 0
bindtime = 1
removetime = 14
sprpriority = 2
ownpal = 1
pausemovetime = 9999999
removeongethit = 1
vel = 0,0
facing = -1
vfacing = 1

[State -1, ??????¹³];½Ä?ªi ²¾°Ê2¡@
type = Explod
trigger1 = time >= 50
trigger1 = time%4 = 0
anim = 12600
pos = 40, 0
postype = p1
scale = 0.6,0.3
ontop = 0
bindtime = 1
removetime = 14
sprpriority = 2
ownpal = 1
pausemovetime = 9999999
removeongethit = 1
vel = 0,0
facing = -1
vfacing = 1

[State -2, ????¥l³ê];®·¿£1¡@
type = Helper
trigger1 = time >= 40
trigger1 = time%8 = 0
ID = 1004000
postype = p1
pos = 0-floor(random/30),-70+floor(random/10)
facing = 1
stateno = 1004000
SuperMoveTime = 999999
PauseMoveTime = 999999

[State -2, ????¥l³ê];®·¿£2
type = Helper
trigger1 = time >= 40
trigger1 = time%9 = 0
ID = 1004001
postype = p1
pos = 0-floor(random/30),-30-floor(random/10)
facing = 1
stateno = 1004000
SuperMoveTime = 999999
PauseMoveTime = 999999


[State -1];
type = Projectile
trigger1 = time >= 40
trigger1 = time%8 = 0
projID = 800
attr = S, HA
projanim = 822
projremovetime = 2
projpriority = 16
projsprpriority = 0
projedgebound = 10000
ignorehitpause = 1
pasusemovetime = 10, 25
Projhits = 1
projremove = 0
hitflag = MAFD
air.juggle = 0
postype = p1
offset = 0,0
velocity = 0
damage = 0, 0
animtype = hard
guardflag = 
pausetime = 5, 20
sparkno = -1
sparkxy = 0,0
hitsound = -1
guardsound = s2, 4
ground.type = High
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -3,-6
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -3,-6
air.hittime = 14
fall = 1
air.fall = 1
fall.recover = 0
p2Stateno = 4005
p2facing = 1


[State 4001, ?????§ó]
type = ChangeState
trigger1 = Time >= 150
value = 30018
ctrl = 0


;-------------------------------------------------
;-------------------------------------------------


; ULTIMATE 3
[Statedef 30018];¬ù§ô???³Ó§Q??¡@????????????¡@??????
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 30017
sprpriority = 2
facep2 = 1

[State 1, ???¬Û¤â??????§ó];§j?­¸?
type = TargetState
trigger1 = time = 0
value = 104005
IgnoreHitPause = 1


[State -1, ??????¹³];???
type = Explod
trigger1 = time%30 = 0
anim = 11000
pos = 0, 20
postype = p1
scale = 0.8,0.8
ontop = 0
bindtime = 1
removetime = 36
sprpriority = 11
ownpal = 1
removeongethit = 1
vel = 0,0
facing = 1
trans = sub


[State 1, ???¬Û¤â?¦ì¸m¢°];TargetBind?¬Û¤â?¤@®Éªº?©ë§ô
type = TargetBind
trigger1 = 1
pos = 130,0
IgnoreHitPause = 1

[State 104001, ?????§ó]
type = ChangeState
trigger1 = Time >= 50
value = 30019
ctrl = 0


;-------------------------------------------------
; ULTIMATE 4
[Statedef 30019];¬ù§ô???³Ó§Q??¡@????????????¡@¤î?
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 30019
sprpriority = 2
facep2 = 1

[State 3502, PlaySnd]	
type = PlaySnd
trigger1 = AnimElem = 11
value = S70, 7 

[State 1, ???¬Û¤â?¦ì¸m¢°];TargetBind?¬Û¤â?¤@®Éªº?©ë§ô
type = TargetBind
trigger1 = 1
pos = 130,0
IgnoreHitPause = 1


[State -2, ????¥l³ê];????????????¡@?????2¡@
type = Helper
trigger1 = time = 100
ID = 1004002
postype = p1
pos = 0,0
facing = 1
stateno = 1004002
SuperMoveTime = 999999
PauseMoveTime = 999999

[State -2, ®É¶¡°±¤î]
type = Pause
trigger1 = time = 100
anim = -1 
pos = 0, 0 
sound = -1
time = 100
movetime = 100
IgnoreHitPause = 1

[State 1, ­µ?»ï??]
type = PlaySnd
trigger1 = time = 100
value = 4050,0
freqmul = 1

[State 1, ­µ?»ï??]
type = PlaySnd
trigger1 = time = 100
value = 110, 1
freqmul = 1

[State 1, ­µ?»ï??]
type = PlaySnd
trigger1 = time = 100
value = 110, 3
freqmul = 1

[State 1, ­µ?»ï??]
type = PlaySnd
trigger1 = time = 40
value = 110, 1
freqmul = 2

[State 1, ­µ?»ï??]
type = PlaySnd
trigger1 = time = 40
value = 0, 1
freqmul = 1.8


[State 1, ­µ?»ï??];????
type = PlaySnd
trigger1 = time = 100
value = 3020,2
volume = 100


[State 1, ­µ?»ï??]
type = PlaySnd
trigger1 = time = 100
value = 110,4
freqmul = 1
volume = 255


[State 1, ¾_°Ê];½Ä? ??
type = envshake
trigger1 = time = 40
time = 8
freq = 130
ampl = 8
phase = 140


;¬Û¤â?­¹???ºA?®É??¾÷¯à??Target¨t??????
[State 11, ???¬Û¤â?????´î]
type = TargetLifeAdd
trigger1 = Time = 160
value = -35
Kill = 1
;absolute = 1

;¬Û¤â?­¹???ºA?®É??¾÷¯à??Target¨t??????
;[State 11, ???¬Û¤â?????´î]
;type = TargetLifeAdd
;trigger1 = Time = 159
;value = 6000000
;Kill = 1
;absolute = 1

;¬Û¤â?­¹???ºA?®É??¾÷¯à??Target¨t??????
;[State 11, ???¬Û¤â?????´î]
;type = TargetLifeAdd
;trigger1 = Time = 160
;value = -2000000
;Kill = 1
;absolute = 1

[State -1];?¤Æ
type = Projectile
trigger1 = time = 160
projID = 800
attr = S, HA
projanim = 822
projremovetime = 2
projpriority = 16
projsprpriority = 0
projedgebound = 10000
ignorehitpause = 1
pasusemovetime = 10, 25
Projhits = 1
projremove = 0
hitflag = MAFD
air.juggle = 0
postype = p1
offset = 0,0
velocity = 0
damage = 40
animtype = hard
guardflag = 
pausetime = 5, 20
sparkno = -1
sparkxy = 0,0
hitsound = -1
guardsound = s2, 4
ground.type = High
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -3,-6
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -3,-6
air.hittime = 14
fall = 1
air.fall = 1
fall.recover = 0
p2Stateno = 5110
p2facing = 1


[State -1, ??????¹³];·Ï1
type = Explod
trigger1 = time = 40
anim = 11240
pos = 0, 20
postype = p1
scale = 1,0.1
ontop = 0
bindtime = 1
removetime = 20
sprpriority = 1
ownpal = 1
pausemovetime = 9999999
removeongethit = 1
vel = 0,0
trans = sub

[State -1, ??????¹³];·Ï2
type = Explod
trigger1 = time = 40
anim = 11240
pos = 0, 20
postype = p1
scale = 1,0.3
ontop = 0
bindtime = 1
removetime = 20
sprpriority = 11
ownpal = 1
pausemovetime = 9999999
removeongethit = 1
vel = 0,0
facing = -1
trans = sub

[State -1, ??????¹³];???
type = Explod
trigger1 = time%30 = 0
anim = 11000
pos = 0, 20
postype = p1
scale = 0.8,0.8
ontop = 0
bindtime = 1
removetime = 36
sprpriority = 11
ownpal = 1
removeongethit = 1
vel = 0,0
facing = 1
trans = sub


[State 4002, ?????§ó]
type = ChangeState
trigger1 = Time >= 210
value = 30020
ctrl = 0

;-------------------------------------------------


; ULTIMATE 5
[Statedef 30020];¬ù§ô???³Ó§Q??¡@????????????¡@²×??
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 30020
sprpriority = 2
facep2 = 1

[State 30020, Super Finish Helper]
type = helper
trigger1 = enemy,life <= 0 && enemy,hitover
trigger1 = numhelper(8610) = 0
helpertype = normal
name = "AmazingMightyFinish"
ID = 8610
stateno = 8610
pos = 0,0
postype = p1
pausemovetime = -1
supermovetime = -1

[State -1]
Type = Varset
Trigger1 = Time = 0
V = 7
Value = 1
IgnoreHitPause = 1 

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 7060
ID = 7060
pos = 150,0
postype = P1 ;P2, Front, Back, Left, Right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
supermovetime = 200
pausemovetime = 200
scale = 1,1
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 0
;ignorehitpause = 
;persistent = 


;¬Û¤â?­¹???ºA?®É??¾÷¯à??Target¨t??????
[State 11, ???¬Û¤â?????´î]
type = TargetLifeAdd
trigger1 = Time = 0
value = -200
;Kill = 1
;absolute = 1

;¬Û¤â?­¹???ºA?®É??¾÷¯à??Target¨t??????
;[State 11, ???¬Û¤â?????´î]
;type = TargetLifeAdd
;trigger1 = Time = 0
;value = -100
;Kill = 1
;absolute = 1


[State 1, ???¬Û¤â?¦ì¸m¢°];TargetBind?¬Û¤â?¤@®Éªº?©ë§ô
type = TargetBind
trigger1 = time = 0
pos = 130,0
IgnoreHitPause = 1

[State 1, ???¬Û¤â??????§ó];§j?­¸?
type = TargetState
trigger1 = time = 0
value = 104006
IgnoreHitPause = 1



[State 4701, ?????§ó]
type = ChangeState
Trigger1 = Time >= 180
value = 3503
ctrl = 0

;[State 4701, ?????§ó]
;type = ChangeState
;Trigger1 = Time >= 80
;Trigger1 = WinKo
;value = 30001
;ctrl = 0


;-----------------------------------------------
; ULTIMATE Form (End)
[StateDef 3503]
type = S
physics = S
moveType = I
ctrl = 0
velSet = 0,0
sprpriority = 1
faceP2 = 1
anim = 3503

[State 3502, Explod]
type = Explod
trigger1 = AnimElem = 1 && stateno != 3002 && stateno != 0 && stateno != 52
anim = 30002 
ID = 30002 
pos = 0, 0 
postype = P1 
facing = 1
vfacing = 1
bindtime = 8
removetime = 60
scale = 1, 1
sprpriority = 3
ontop = 1
ownpal = 0
removeongethit = 0
persistent = 1
ignorehitpause = 1

[State 3502, PlaySnd]	
type = PlaySnd
trigger1 = AnimElem = 1 
value = S110, 7 


[State 3500, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------------------------
