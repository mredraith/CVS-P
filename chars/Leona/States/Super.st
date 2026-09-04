; _________________________________________
;| Character by Author Name |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==
;SUPER MOVES
;==

;---------------------------------------------------------------------------
;V-Slasher
[StateDef 3000]
type = A
movetype= A
physics = N
juggle = 0
velset = 0,0
ctrl = 0
anim = 3000
poweradd = ifelse(var(53) > 0, 0, -1000)
sprpriority = 2

[State 3000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 3000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

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
trigger1 = !Time
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = -20,-110
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = !Time
time = 40
movetime = 3
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = 5

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = IfElse(PrevStateNo=251,9,7)
y = IfElse(PrevStateNo=251,5,7)

[State 3000, 1]
type = HitDef
triggerall = IfElse(EnemyNear,HitFall=1,Var(15)<15,1)
trigger1 = AnimElem = 3
attr = A, HA
damage = 50,5
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0,0
guard.pausetime = 10,10
sparkNo=-1 + 0 * (var(33) :=8017)
guard.sparkNo=-1 + 0 * (var(34) :=8001)
sparkXY=-10 + 0 * (var(35) :=155), var(36) :=-61
hitsound = S2,9
guardsound = S130,0
ground.type = High
ground.slidetime = 5
ground.hittime = 12
guard.hittime = (12) - 6
ground.velocity = 0
guard.velocity = -5
air.type = High
air.velocity = 0
airguard.velocity = -3
air.hittime = 12
getpower = 0
kill = 0
id = 3000
yAccel = (0.5 + (ComboCount * 0.04))
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 3000, ChangeState]
type = ChangeState
triggerall = NumTarget(3000)=1
trigger1 = MoveHit
trigger1 = Target,MoveType = H
value = 3001
ctrl = 0

[State 3000, TargetDrop]
type = TargetDrop
trigger1 = MoveHit
excludeID = 3000
keepone = 1

[State 3000, ChangeState]
type = ChangeState
trigger1 = Vel Y>0
trigger1 = Pos Y >=-Vel Y
value = 3003
ctrl = 0
;---------------------------------------------------------------------------
;V-Slasher Success (Lv. 1)
[StateDef 3001]
type = A
movetype= A
physics = N
juggle = 0
ctrl = 0
anim = 3001
poweradd = 0
sprpriority = 2
velset = 0, 0
movehitpersist = 1

[State 3001, TargetState]
type = TargetState
trigger1 = !time && numtarget
value = 53002
ID = 3000

[State 3001, PosSet]
type = PosSet
triggerall = Target,Pos Y<0
trigger1 = Time = [0,18]
y = Target,Pos Y+10

[State 3001, PosSet]
type = PosSet
triggerall = Target,Pos Y>=0
trigger1 = Time = [0,18]
y = 0

[State 3001, VelSet]
type = VelSet
trigger1 = Time = [0,18]
x = 0
y = 0

[State 3001, PosAdd]
type = PosAdd
trigger1 = !Time
x = (P2Dist X)-10

[State 3001, Explod]
type = Explod
trigger1 = Time = 0
anim = 13000
ID = 13000
pos = 10,-100
postype = p1 ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = .5,.5
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3001, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 2
y = -9.5

[State 3001, TargetState]
type = TargetState
trigger1 = Time = 19
value = 53003
ID = 3000

[State 3001, TargetLifeAdd]
type = TargetLifeAdd
trigger1 =Time = 19
value = -150
ID = 3000
kill = 1
absolute = 0

[State 3001, PlaySnd]
type = PlaySnd
trigger1 = Time = 19
value = S3010,3
volume = 0
channel = 2
freqmul = 1.0
loop = 0
pan = 0

[State 3001, Explod]
type = Explod
trigger1 = Time = 19
anim = 13013
ID = 13013
pos = 20,-80
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 0.5,0.5
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3001, EnvShake]
type = EnvShake
trigger1 = Time = 19
time = 45
freq = 90
ampl = -4
phase = 180

[State 3001, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 8
statetype = A
movetype = I
physics = A
;---------------------------------------------------------------------------
;V-Fail Landing
[StateDef 3003]
type = C
movetype = I
physics = C
juggle = 0
anim = 3003
ctrl = 0

[State 3003, VelSet]
type = VelSet
trigger1 = Time = 0
y = 0

[State 3003, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3003, PosAdd]
type = PosAdd
trigger1 = Time = [0,8]
x = IfElse(PrevStateNo=3000,2,4)

[State 3003, PosAdd]
type = PosAdd
trigger1 = Time = [9,15]
x = IfElse(PrevStateNo=3000,1,3)

[State 3003, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S101,0
volume = 0
channel = 1
freqmul = 1.0
loop = 0
pan = 0

[State 3003, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S40,1
volume = 0
channel = 2
freqmul = 1.0
loop = 0
pan = 0

[State 3003, Dust Explod 1]
type = Explod
trigger1 = !Time
anim = 10121
ID = 10120
pos = 0,5
postype = p1
scale = .8,.8
facing = -1
removetime = -2
sprpriority = 3
ownpal = 1

[State 3003, Dust Explod 2]
type = Explod
trigger1 = !Time
anim = 10121
ID = 10120
pos = 10,5
scale = 1,1
facing = -1
postype = p1
removetime = -2
sprpriority = 3
ownpal = 1

[State 3003, Dust Explod 3]
type = Explod
trigger1 = !Time
anim = 10121
ID = 10120
pos = 15,5
scale = 1.2,1.2
facing = -1
postype = p1
removetime = -2
sprpriority = 3
ownpal = 1

[State 3003, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Max V-Slasher
[StateDef 3005]
type = A
movetype= A
physics = N
juggle = 0
velset = 0,0
ctrl = 0
anim = 3000
poweradd = ifelse(var(53) > 0, -1000, -2000)
sprpriority = 2

[State 3005, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 3005, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 3005, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = ((prevstateno = [1000, 2999]) && var(7)) || var(20)

[State 3005, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000, 4999]) && var(8)

[State 3005, CC Reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3005, Corner Push]
type = varset
trigger1 = time = 3
fvar(5) = 0

[State 3005, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3005, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 12
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3005, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3005, Superpause FX]
type = helper
trigger1 = !Time
stateno = 8510
ID = 8500
name = "Superpause FX"
postype = p1
pos = -20,-110
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3005, Superpause]
type = superpause
trigger1 = !Time
time = 40
movetime = 3
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3005, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = 5

[State 3005, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 11
y = 7

[State 3005, 1]
type = HitDef
triggerall = IfElse(EnemyNear,HitFall=1,Var(15)<15,1)
trigger1 = AnimElem = 3
attr = A, HA
damage = 100,10
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0,0
sparkNo=-1 + 0 * (var(33) :=8017)
guard.sparkNo=-1 + 0 * (var(34) :=8001)
sparkXY=-10 + 0 * (var(35) :=155), var(36) :=-61
hitsound = S2,9
guardsound = S130,0
ground.type = High
ground.slidetime = 5
ground.hittime = 12
guard.hittime = (12) - 6
ground.velocity = 0
guard.velocity = -6
airguard.velocity = -4
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
getpower = 0
kill = 0
id = 3005
yAccel = (0.5 + (ComboCount * 0.04))
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 3005, ChangeState]
type = ChangeState
triggerall = NumTarget(3005)
trigger1 = MoveHit
trigger1 = Target,MoveType = H
value = 3006
ctrl = 0

[State 3005, TargetDrop]
type = TargetDrop
trigger1 = MoveHit
excludeID = 3005
keepone = 1

[State 3005, ChangeState]
type = ChangeState
trigger1 = Vel Y>0
trigger1 = Pos Y >=-Vel y
value = 3003
ctrl = 0
;---------------------------------------------------------------------------
;V-Slasher Success (Lv. 2)
[StateDef 3006]
type = A
movetype= A
physics = N
juggle = 0
ctrl = 0
anim = 3006
poweradd = 0
sprpriority = 2
velset = 0,0
movehitpersist = 1

[State 3006, TargetState]
type = TargetState
trigger1 = !time && numtarget
value = 53007
ID = 3005

[State 3006, PosSet]
type = PosSet
triggerall = Target,Pos Y<0
trigger1 = Time = [0,59]
y = Target,Pos Y+10

[State 3006, PosSet]
type = PosSet
triggerall = Target,Pos Y>=0
trigger1 = Time = [0,59]
y = 0

[State 3006, VelSet]
type = VelSet
trigger1 = !Time
x = 0
y = 0

[State 3006, PosAdd]
type = PosAdd
trigger1 = !Time
x = (P2Dist X)-10

[State 3006, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S3010,2
volume = 0
channel = 2
freqmul = 1.0
loop = 0
pan = 0

[State 3006, PlaySnd]
type = PlaySnd
trigger1 = Time = 58
value = S3005,0
volume = 0
channel = 3
freqmul = 1.0
loop = 0
pan = 0

[State 3006, Explod]
type = Explod
trigger1 = Time = 0
anim = 13005
ID = 13005
pos = 10,-100
postype = p1 ;p2,front,back,left,right
facing = -1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = .5,.5
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3006, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 3.5
y = -10.5

[State 3006, TargetState]
type = TargetState
trigger1 = Time = 94
value = 53003
ID = 3005

[State 3006, TargetLifeAdd]
type = TargetLifeAdd
trigger1 =Time = 94
value = -210
ID = 3005
kill = 1
absolute = 0

[State 3006, PlaySnd]
type = PlaySnd
trigger1 = Time = 94
value = S3010,3
volume = 0
channel = 2
freqmul = 1.0
loop = 0
pan = 0

[State 3006, Explod]
type = Explod
trigger1 = Time = 94
anim = 13013
ID = 13013
pos = 0,-90
postype = p2
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 0.5,0.5
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3006, EnvShake]
type = EnvShake
trigger1 = Time = 94
time = 45
freq = 90
ampl = -4
phase = 180

[State 3006, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 8
statetype = A
movetype = I
physics = A

;---------------------------------------------------------------------------
;Rebel Spark
[Statedef 3010]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 3010
poweradd = ifelse(var(53) > 0, 0, -1000)
sprpriority = 2
facep2 = 1

[State 3010, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 3010, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 3010, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = ((prevstateno = [1000, 2999]) && var(7)) || var(20)

[State 3010, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000, 4999]) && var(8)

[State 3010, CC Reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3010, Corner Push]
type = varset
trigger1 = time = 3
fvar(5) = 0

[State 3010, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3010, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 12
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3010, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3010, Superpause FX]
type = helper
trigger1 = !Time
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = 15, -120
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3010, Superpause]
type = superpause
trigger1 = !Time
time = 40
movetime = 15
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3010, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = 25

[State 3010, PosAdd]
type = PosAdd
trigger1 = Time >=26
x = 6.5

[State 3010, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 11
value = S100,0
volume = 0
channel = 3

[State 3010, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 13
value = S100,0
volume = 0
channel = 4

[State 3010, Width]
type = Width
trigger1 = Time >=16
trigger1 = abs(P2Dist X)>15
value = 20,0

[State 3010, ChangeState]
type = ChangeState
triggerall = Time >=16
trigger1 = abs(P2BodyDist X)=[0,15]
value = 3011
ctrl = 0
;---------------------------------------------------------------------------
[Statedef 3011]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 3011
poweradd = 0
sprpriority = 2

[State 3011, 1]
type = HitDef
triggerall = IfElse(EnemyNear,HitFall=1,Var(15)<15,1)
trigger1 = AnimElem = 3
attr = S, HA
damage = 75,5
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0,0
guard.pausetime = 10,10
sparkNo=-1 + 0 * (var(33) :=8017)
guard.sparkNo=-1 + 0 * (var(34) :=8001)
sparkXY=-10 + 0 * (var(35) :=155), var(36) :=-61
hitsound=S2,9
guardsound=S130,0
ground.type = Low
ground.slidetime = 7
ground.hittime = 12
guard.hittime = (12) - 6
ground.velocity = 0
guard.velocity = -7
ground.cornerpush.veloff = 0
airguard.velocity = -1.9,-.8
air.velocity = 0
air.hittime = 12
getpower = 0
kill = 0
guard.kill = 0
p1stateno = 3012
yAccel = (0.5 + (ComboCount * 0.04))
id = 3011
hitonce = 1
forcestand = 1
forcenofall = 1

[State 3011, TargetBind]
type = TargetBind
trigger1 = MoveHit
time = 1
id = 3011
pos = 35,0

[State 3011, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
movetype = I

[State 3011, TargetDrop]
type = TargetDrop
trigger1 = MoveHit
excludeID = 3011
keepone = 1

[State 3011, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[StateDef 3012]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 3012
poweradd = 0
sprpriority = 2
movehitpersist = 1

[State 3012, TargetState]
type = TargetState
trigger1 = !time && numtarget
value = 53012
ID = 3011

[State 3012, TargetBind]
type = TargetBind
trigger1 = Time = 0
time = 1
id = 3011
pos = 35,0

[State 3012, PosAdd]
type = PosAdd
trigger1 = AnimElem = 6
x = -25

[State 3012, PlaySnd]
type = PlaySnd
trigger1 = Time = 160
value = S3010,0
volumescale = 100
channel = 0

[State 3012, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S3010,1
volumescale = 200
channel = 3
freqmul = 1.0
loop = 0
pan = 0

[State 3012, Explod]
type = Explod
trigger1 = Time = 0
anim = 13012
ID = 13012
pos = 40,Target,const(size.mid.pos.y)
postype = p1 
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = .5,.5
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 3012, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 160
id = 13012

[State 3012, PlaySnd]
type = PlaySnd
trigger1 = Time = 215
value = S3010,2
volumescale = 200
channel = 2
freqmul = 1.0
loop = 0
pan = 0

[State 3012, PlaySnd]
type = PlaySnd
trigger1 = Time = 295
value = S3010,3
volumescale = 200
channel = 2
freqmul = 1.0
loop = 0
pan = 0

[State 3012, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time = 295
value = -150
kill = 1
absolute = 0
id = 3011

[State 3012, TargetState]
type= TargetState
trigger1= Time = 295
value = 3014
id = 3011

[State 3012, EnvShake]
type = EnvShake
trigger1 = Time = 295
time = 45
freq = 90
ampl = -4
phase = 180

[State 3012, Explod]
type = Explod
trigger1 = Time = 295
anim = 13013
ID = 13013
pos = -25,const(size.mid.pos.y)
postype = p2
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 0.5,0.5
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3012, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
[Statedef 3014]
type = A
movetype= H
physics = N
velset = -2.8,-10.5
poweradd = 80

[State 3014, PalFX]
type = PalFX
trigger1 = Time = 0
time = 70
add = 240,50,0
mul = 250,224,120
sinadd = 110,55,85,10
invertall = 1
color = 0

[State 3014, VelAdd]
type = VelAdd
trigger1 = 1
y = .5

[State 3014, end]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100
;---------------------------------------------------------------------------
;Max Rebel Spark
[Statedef 3015]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 3015
poweradd = ifelse(var(53) > 0, -1000, -2000)
sprpriority = 2
facep2 = 1

[State 3015, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 3015, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 3015, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = ((prevstateno = [1000, 2999]) && var(7)) || var(20)

[State 3015, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000, 4999]) && var(8)

[State 3015, CC Reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3015, Corner Push]
type = varset
trigger1 = time = 3
fvar(5) = 0

[State 3015, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3015, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 12
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3015, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3015, Superpause FX]
type = helper
trigger1 = !Time
stateno = 8510
ID = 8500
name = "Superpause FX"
postype = p1
pos = 0, -100
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3015, Superpause]
type = superpause
trigger1 = !Time
time = 40
movetime = 20
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3015, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = 30

[State 3015, PosAdd]
type = PosAdd
trigger1 = Time >=22
x = 7.5

[State 3015, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 10
value = S100,0
volume = 0
channel = 3

[State 3015, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 13
value = S100,0
volume = 0
channel = 4

[State 3015, Width]
type = Width
trigger1 = Time >=24
trigger1 = abs(P2BodyDist X)>15
value = 20,0

[State 3015, ChangeState]
type = ChangeState
triggerall = Time >=24
trigger1 = abs(P2BodyDist X)=[0,15]
value = 3016
ctrl = 0
;---------------------------------------------------------------------------
[Statedef 3016]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 3016
poweradd = 0
sprpriority = 2

[State 3016, 1]
type = HitDef
triggerall = IfElse(EnemyNear,HitFall=1,Var(15)<15,1)
trigger1 = AnimElem = 3
attr = S, HA
damage = 125,15
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0,0
guard.pausetime = 10,10
sparkNo=-1 + 0 * (var(33) :=8017)
guard.sparkNo=-1 + 0 * (var(34) :=8001)
sparkXY=-10 + 0 * (var(35) :=155), var(36) :=-61
hitsound=S2,9
guardsound=S130,0
ground.type = Low
ground.slidetime = 5
ground.hittime = 12
guard.hittime = (12) - 6
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.velocity = 0
air.hittime = 12
getpower = 0
kill = 0
guard.kill = 0
p1stateno = 3017
yAccel = (0.5 + (ComboCount * 0.04))
id = 3016
hitonce = 1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 3016, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
movetype = I

[State 3016, PosAdd]
type = PosAdd
trigger1 = Time = [12,23]
x = -2.5

[State 3016, TargetDrop]
type = TargetDrop
trigger1 = MoveHit
excludeID = 3016
keepone = 1

[State 3016, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[StateDef 3017]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 3017
poweradd = 0
sprpriority = 2
movehitpersist = 1

[State 3017, TargetBind]
type = TargetBind
triggerall = !Time
trigger1 = MoveHit
time = 1
id = 3016
pos = 25,0

[State 3017, TargetState]
type = TargetState
trigger1 = !time && numtarget
value = 53017
ID = 3016

[State 3017, TargetBind]
type = TargetBind
trigger1 = Time = 0
time = 1
id = 3016
pos = 25,0

[State 3017, PosAdd]
type = PosAdd
trigger1 = Time = [148,160]
x = -2.5

[State 3017, PlaySnd]
type = PlaySnd
trigger1 = Time = 171
value = S3015,0
volumescale = 100
channel = 0

[State 3017, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S3010,1
volumescale = 200
channel = 1
freqmul = 1.0
loop = 0
pan = 0

[State 3017, Explod]
type = Explod
trigger1 = Time = 0
anim = 13012
ID = 13012
pos = 35,Target,const(size.mid.pos.y)
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
pausemovetime = 0
scale = .5,.5
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 3017, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 47,=0
id = 13012

[State 3017, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 79,=0
value = S3010,3
volumescale = 200
channel = 2
freqmul = 1.0
loop = 0
pan = 0

[State 3017, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 79,=0
value = -250
kill = 1
absolute = 0
id = 3016

[State 3017, TargetState]
type= TargetState
trigger1 = AnimElem = 79,=0
value = 3019
id = 3016

[State 3017, EnvShake]
type = EnvShake
trigger1 = AnimElem = 79,=0
time = 45
freq = 90
ampl = -4
phase = 180

[State 3017, Explod]
type = Explod
trigger1 = AnimElem = 79,=0
anim = 13013
ID = 13013
pos = -25,const(size.mid.pos.y)
postype = p2 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = 0.5,0.5
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3017, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 3019]
type = A
movetype= H
physics = N
velset = -2.8,-10.5
poweradd = 120

[State 3019, PalFX]
type = PalFX
trigger1 = Time = 0
time = 70
add = 240,50,0
mul = 250,224,120
sinadd = 110,55,85,10
invertall = 1
color = 0

[State 3019, VelAdd]
type = VelAdd
trigger1 = 1
y = .5

[State 3019, end]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100
;---------------------------------------------------------------------------
;Gravity Storm
[StateDef 3020]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 3020
poweradd = ifelse(var(53) > 0, 0, -1000)
sprpriority = 2
facep2 = 1

[State 3020, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 3020, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 3020, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = ((prevstateno = [1000, 2999]) && var(7)) || var(20)

[State 3020, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000, 4999]) && var(8)

[State 3020, CC Reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3020, Corner Push]
type = varset
trigger1 = time = 3
fvar(5) = 0

[State 3020, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3020, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 12
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3020, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3020, Superpause FX]
type = helper
trigger1 = !Time
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = -16, -80
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3020, Superpause]
type = superpause
trigger1 = !Time
time = 50
movetime = 4
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3020, NotHitBy]
type = NotHitBy
trigger1 = AnimElem = 3
value = SCA
time = 7

[State 3020, PosAdd]
type = PosAdd
trigger1 = Time = [11,15]
trigger2 = Time = [19,31]
x = 3

[State 3020, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 9
value = S5,11
channel = 1

[State 3020, 1]
type = HitDef
triggerall = IfElse(EnemyNear,HitFall=1,Var(15)<15,1)
trigger1 = AnimElem = 5
attr = S, HA
damage = 40,5
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 5, 14
sparkNo=S8080
guard.sparkNo=S8082
sparkXY=-10, -70
hitsound = S2,5
guardsound = S130,0
ground.type = High
ground.slidetime = 5
ground.hittime = 35
guard.hittime = (35) - 6
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = 0
air.hittime = 35
getpower = 0
ground.cornerpush.veloff = 0
kill = 0
forcestand = 1
yAccel = (0.5 + (ComboCount * 0.04))
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 3020, 2]
type = HitDef
triggerall = IfElse(EnemyNear,HitFall=1,Var(15)<15,1)
trigger1 = AnimElem = 10
attr = S, HA
damage = 20,5
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 13, 5
sparkNo=S8080
guard.sparkNo=S8082
sparkXY=-10, -70
hitsound = S2,5
guardsound = S130,0
ground.type = High
ground.slidetime = 5
ground.hittime = 90
guard.hittime = (90) - 6
ground.velocity = 0,-14.5
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = 0,-14.5
air.hittime = 90
getpower = 0
fall = 1
fall.recover = 0
kill = 0
yAccel = (0.5 + (ComboCount * 0.04))
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
id = 3020
p2stateno = 53021

[State 3020, StateTypeSet]
type = StateTypeSet
triggerall = !MoveHit
trigger1 = AnimElem = 11
movetype = I

[State 3020, PosAdd]
type = PosAdd
triggerall = !MoveHit
trigger1 = AnimElem = 16,>=0
trigger1 = AnimElem = 22,<0
x = -1.5

[State 3020, ChangeState]
type = ChangeState
triggerall = MoveHit
triggerall = NumTarget(3020)=1
trigger1 = AnimElemTime(17) = 0
value = 3021
ctrl = 0

[State 3020, end]
type = ChangeState
triggerall = AnimTime = 0
trigger1 = !NumTarget
trigger2 = !MoveHit
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[StateDef 3021]
type = S
movetype= A
physics = N
juggle = 0
velset = 0,0
ctrl = 0
anim = 3021
poweradd = 0
sprpriority = 2

[State 3021, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1 

[State 3021, Jump Dust 1]
type = Explod
trigger1 = AnimElem = 5
anim = 10121
ID = 10121
pos = 0,15
postype = p1
removetime = -2
sprpriority = 3
ownpal = 1

[State 3021, Jump Dust 2]
type = Explod
trigger1 = AnimElem = 5
anim = 10120
ID = 10120
pos = 0,20
vel = 0,-2.5
scale = 0.8,0.8
postype = p1
removetime = -2
sprpriority = 3
ownpal = 1

[State 3021, Jump Dust 3]
type = Explod
trigger1 = AnimElem = 5
anim = 10120
ID = 10120
pos = 0,0
vel = 0,-2.5
scale = 0.6,0.6
postype = p1
removetime = -2
sprpriority = 3
ownpal = 1

[State 3021, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 2.5
y = -11.5

[State 3021, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 5
statetype = A
movetype = A
physics = A

[State 3021, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 15
length = 20
palbright = 0,0,32
palpostbright = 0,0,0
paladd = 0,0,0
palmul = .65,.75,.65
timegap = 1
framegap = 4
trans = none

[State 3021, 1]
type = HitDef
trigger1 = AnimElem = 7
attr = A, HA
damage = 0
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 10
sparkno = -1
sparkxy = -10, 0
hitsound = S2,9
guardsound = S130,0
ground.type = High
ground.slidetime = 5
ground.hittime = 12
guard.hittime = (12) - 6
ground.velocity = 0,-10
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = 0,-10
air.hittime = 12
getpower = 0
fall = 1
fall.recover = 0
p1stateno = 3022
yAccel = (0.5 + (ComboCount * 0.04))
id = 3021

;---------------------------------------------------------------------------
[StateDef 3022]
type = A
movetype= A
physics = N
juggle = 0
velset = 0,0
ctrl = 0
anim = 3022
poweradd = 0
sprpriority = -1
movehitpersist = 1

[State 3022, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 53022
ID = 3021

[State 3022, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1, >=0
trigger1 = AnimElem = 2,<0
time = 1
id = 3021
pos = 0,-135

[State 3022, VelAdd]
type = VelAdd
trigger1 = AnimElem = 2
y = -4.5

[State 3022, TargetState]
type = TargetState
trigger1 = AnimElem = 3
value = 821

[State 3022, EnvShake]
type = EnvShake
trigger1 = AnimElem = 3
time = 45
freq = 90
ampl = -4
phase = 180

[State 3022, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 3
value = -150
ID = 3021
kill = 1
absolute = 0

[State 3022, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S3010,3
volume = 0
channel = 1
freqmul = 1.0
loop = 0
pan = 0

[State 3022, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 13013
ID = 13013
pos = -25,0
postype = p2 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = 0.5,0.5
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3022, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3
statetype = A
movetype = I
physics = N

[State 3022, VelAdd]
type = VelAdd
trigger1 = AnimElem =3,>0
y = .55

[State 3022, ChangeState]
type = ChangeState
trigger1 = Vel Y>0
trigger1 = Pos Y >=-Vel Y
value = 3023
ctrl = 0
;---------------------------------------------------------------------------
;Gravity Storm Landing
[StateDef 3023]
type = C
movetype = I
physics = C
juggle = 0
anim = 3023
ctrl = 0

[State 3023, VelSet]
type = VelSet
trigger1 = Time = 0
y = 0

[State 3023, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 3023, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S40,1
volume = 0
channel = 2
freqmul = 1.0
loop = 0
pan = 0

[State 3023, Dust Explod 1]
type = Explod
trigger1 = !Time
anim = 10121
ID = 10120
pos = 0,5
postype = p1
scale = .8,.8
facing = -1
removetime = -2
sprpriority = 3
ownpal = 1

[State 3023, Dust Explod 2]
type = Explod
trigger1 = !Time
anim = 10121
ID = 10120
pos = 10,5
scale = 1,1
facing = -1
postype = p1
removetime = -2
sprpriority = 3
ownpal = 1

[State 3023, Dust Explod 3]
type = Explod
trigger1 = !Time
anim = 10121
ID = 10120
pos = 15,5
scale = 1.2,1.2
facing = -1
postype = p1
removetime = -2
sprpriority = 3
ownpal = 1

[State 3023, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Max Gravity Storm
[StateDef 3025]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 3025
poweradd = ifelse(var(53) > 0, -1000, -2000)
sprpriority = 2
facep2 = 1

[State 3025, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 3025, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 3025, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = ((prevstateno = [1000, 2999]) && var(7)) || var(20)

[State 3025, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000, 4999]) && var(8)

[State 3025, CC Reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3025, Corner Push]
type = varset
trigger1 = time = 3
fvar(5) = 0

[State 3025, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3025, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 12
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3025, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3025, Superpause FX]
type = helper
trigger1 = !Time
stateno = 8510
ID = 8500
name = "Superpause FX"
postype = p1
pos = -16, -80
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3025, Superpause]
type = superpause
trigger1 = !Time
time = 50
movetime = 4
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3025, NotHitBy]
type = NotHitBy
trigger1 = AnimElem = 3
value = SCA
time = 5

[State 3025, PosAdd]
type = PosAdd
trigger1 = Time = [11,15]
trigger2 = Time = [20,25]
trigger3 = Time = [45,50]
trigger4 = Time = [70,75]
x = 3.5

[State 3025, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 9
trigger3 = AnimElem = 20
trigger4 = AnimElem = 31
value = S5,11
channel = 1

;palbright = 0,0,255;,136
;palcontrast = 128,128,128;,136
;paladd = 0,0,0

[State 3025, AfterImage]
type = AfterImage
trigger1 = Time = 3
time = 110
length = 20
palbright = 0,0,32
palpostbright = 0,0,0
paladd = 0,0,0
palmul = .65,.75,.65
timegap = 1
framegap = 4
trans = none

[State 3025, 1]
type = HitDef
triggerall = IfElse(EnemyNear,HitFall=1,Var(15)<15,1)
trigger1 = AnimElem = 5
attr = S,HA
damage = 60,5
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 1, 18
guard.pausetime = 1,10
sparkNo=S8080
guard.sparkNo=S8082
sparkXY=-10, -70
hitsound = S2,5
guardsound = S130,0
ground.type = High
ground.slidetime = 5
ground.hittime = 12
guard.hittime = (12) - 6
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = 0
air.hittime = 12
getpower = 0
ground.cornerpush.veloff = 0
kill = 0
forcestand = 1
yAccel = (0.5 + (ComboCount * 0.04))

[State 3025, 2]
type = HitDef
triggerall = IfElse(EnemyNear,HitFall=1,Var(15)<15,1)
trigger1 = AnimElem = 10
attr = S, HA
damage = 30,5
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 1, 18
guard.pausetime = 1,10
sparkNo=S8080
guard.sparkNo=S8082
sparkXY=-10, -70
hitsound = S2,5
guardsound = S130,0
ground.type = High
ground.slidetime = 5
ground.hittime = 12
guard.hittime = (12) - 6
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = 0
air.hittime = 12
getpower = 0
ground.cornerpush.veloff = 0
kill = 0
forcestand = 1
yAccel = (0.5 + (ComboCount * 0.04))

[State 3025, 3]
type = HitDef
triggerall = IfElse(EnemyNear,HitFall=1,Var(15)<15,1)
trigger1 = AnimElem = 21
attr = S, HA
damage = 10,5
animtype = Medium
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 1, 18
guard.pausetime = 1,10
sparkNo=S8080
guard.sparkNo=S8082
sparkXY=-10, -70
hitsound = S2,5
guardsound = S130,0
ground.type = High
ground.slidetime = 5
ground.hittime = 12
guard.hittime = (12) - 6
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = 0
air.hittime = 12
getpower = 0
ground.cornerpush.veloff = 0
kill = 0
forcestand = 1
yAccel = (0.5 + (ComboCount * 0.04))

[State 3025, 4]
type = HitDef
triggerall = IfElse(EnemyNear,HitFall=1,Var(15)<15,1)
trigger1 = AnimElem = 32
attr = S, HA
damage = 5,5
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 15, 3
guard.pausetime = 1,10
sparkNo=S8080
guard.sparkNo=S8082
sparkXY=-10, -70
hitsound = S2,5
guardsound = S130,0
ground.type = High
ground.slidetime = 5
ground.hittime = 90
guard.hittime = (90) - 6
ground.velocity = 0,-16.5
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = 0,-16.5
air.hittime = 90
getpower = 0
fall = 1
fall.recover = 0
kill = 0
forcestand = 1
yAccel = (0.5 + (ComboCount * 0.04))
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
id = 3025
p2stateno = 53026

[State 3025, StateTypeSet]
type = StateTypeSet
triggerall = !MoveHit
trigger1 = AnimElem = 33
movetype = I

[State 3025, PosAdd]
type = PosAdd
triggerall = !MoveHit
trigger1 = AnimElem = 33,>=0
trigger1 = AnimElem = 39,<0
x = -1.5

[State 3025, end]
type = ChangeState
triggerall = MoveHit
triggerall = NumTarget(3025)=1
trigger1 = AnimElemTime(39) = 0
value = 3026
ctrl = 0

[State 3025, end]
type = ChangeState
triggerall = AnimTime = 0
trigger1 = !NumTarget(3025)||EnemyNear,StateNo!=53026
trigger2 = !MoveHit
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[StateDef 3026]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 3026
poweradd = 0
sprpriority = 2

[State 3026, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1 

[State 3026, Jump Dust 1]
type = Explod
trigger1 = AnimElem = 5
anim = 10121
ID = 10121
pos = 0,15
postype = p1
removetime = -2
sprpriority = 3
ownpal = 1

[State 3026, Jump Dust 2]
type = Explod
trigger1 = AnimElem = 5
anim = 10120
ID = 10120
pos = 0,20
vel = 0,-2.5
scale = 0.8,0.8
postype = p1
removetime = -2
sprpriority = 3
ownpal = 1

[State 3026, Jump Dust 3]
type = Explod
trigger1 = AnimElem = 5
anim = 10120
ID = 10120
pos = 0,0
vel = 0,-2.5
scale = 0.6,0.6
postype = p1
removetime = -2
sprpriority = 3
ownpal = 1

[State 3026, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 2.5
y = -13.5

[State 3026, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 5
statetype = A
movetype = A
physics = A

[State 3026, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 15
length = 20
palbright = 0,0,32
palpostbright = 0,0,0
paladd = 0,0,0
palmul = .65,.75,.65
timegap = 1
framegap = 4
trans = none

[State 3026, 1]
type = HitDef
trigger1 = AnimElem = 7
attr = A, HA
damage = 0
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0,0
guard.pausetime = 10,12
sparkno = -1
sparkxy = -10, 0
hitsound = S2,9
guardsound = S130,0
ground.type = High
ground.slidetime = 5
ground.hittime = 12
guard.hittime = (12) - 6
ground.velocity = 0,-10
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = 0,-10
air.hittime = 12
getpower = 0
fall = 1
fall.recover = 0
p1stateno = 3027
yAccel = (0.5 + (ComboCount * 0.04))
id = 3026
;---------------------------------------------------------------------------
[StateDef 3027]
type = A
movetype= A
physics = N
juggle = 0
velset = 0,0
ctrl = 0
anim = 3027
poweradd = 0
sprpriority = -1
movehitpersist = 1

[State 3027, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 53027
ID = 3026

[State 3027, TargetBind]
type = TargetBind
trigger1 = Time < 61
time = 1
id = 3026
pos = 0,-135

[State 3027, TargetState]
type = TargetState
trigger1 = Time = 61
value = 821

[State 3027, EnvShake]
type = EnvShake
trigger1 = Time = 61
time = 45
freq = 90
ampl = -4
phase = 180

[State 3027, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time = 61
value = -200
ID = 3026
kill = 1
absolute = 0

[State 3027, PlaySnd]
type = PlaySnd
trigger1 = Time = 61
value = S3010,3
volume = 0
channel = 1
freqmul = 1.0
loop = 0
pan = 0

[State 3027, Explod]
type = Explod
trigger1 = Time = 61
anim = 13013
ID = 13013
pos = -25,0
postype = p2 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = 0.5,0.5
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3027, Helper]
type = Helper
trigger1 = AnimElem = 9
helpertype = normal ;player
name = "Gravity Storm"
ID = 13025
stateno = 13025
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 3027, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 9
statetype = A
movetype = I
physics = A

[State 3027, VelAdd]
type = VelAdd
trigger1 = AnimElem =9,>0
y = .55

[State 3027, ChangeState]
type = ChangeState
trigger1 = Vel Y>0
trigger1 = Pos Y >=-Vel Y
value = 3023
ctrl = 0
;--------------------------------------------------------------------------
;Rider Burst
[StateDef 3030]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 3030
poweradd = ifelse(var(53) > 0, -1000, -2000)
sprpriority = 2
facep2 = 1

[State 3030, VarSet]
type = VarSet
trigger1 = PrevStateNo = [200,650]
trigger2 = PrevStateNo = [3000,3029]
v = 20 
value = 1 

[State 3030, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 3030, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 3030, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = ((prevstateno = [1000, 2999]) && var(7)) || var(20)

[State 3030, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000, 4999]) && var(8)

[State 3030, CC Reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3030, Corner Push]
type = varset
trigger1 = time = 3
fvar(5) = 0

[State 3030, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3030, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 12
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3030, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3030, Superpause FX]
type = helper
trigger1 = !Time
stateno = 8510
ID = 8500
name = "Superpause FX"
postype = p1
pos = 15, -120
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3030, Superpause]
type = superpause
trigger1 = !Time
time = 30
movetime = 23
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3030, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = 45

[State 3030, TargetState]
type = TargetState
trigger1 = PrevStateNo = 3012
trigger1 = Time = 24
value = 5300
ID = 3011

[State 3030, RemoveExplod]
type = RemoveExplod
trigger1 = PrevStateNo = 3012
trigger1 = !Time
id = 13012

[State 3030, AfterImage]
type = AfterImage
trigger1 = Time = 24
time = 25
length = 20
palbright = 0,0,32
palpostbright = 0,0,0
paladd = 0,0,0
palmul = .65,.75,.65
timegap = 1
framegap = 4
trans = none

[State 3030, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 3

[State 3030, PosAdd]
type = PosAdd
trigger1 = Time = [24,41]
x = 8

[State 3030, Width]
type = Width
trigger1 = Time = [24,41]
trigger1 = abs(P2BodyDist X)>30
value = 30,0

[State 3030, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 10
value = S100,0
channel = 3
volumescale = 100

[State 3030, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 12
value = S100,1
channel = 4
volumescale = 100

[State 3030, ChangeState]
type = ChangeState
triggerall = Time >=24
trigger1 = abs(P2BodyDist X)<=30
value = 3031
ctrl = 0

[State 3030, ChangeState]
type = ChangeState
trigger1 = Time = 42
value = 1021
ctrl = 0
;---------------------------------------------------------------------------
[StateDef 3031]
type = C
movetype= A
physics = C
juggle = 0
velset = 0,0
ctrl = 0
anim = 3031
poweradd = 0
sprpriority = 3

[State 3031, AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 106
length = 20
palbright = 0,0,32
palpostbright = 0,0,0
paladd = 0,0,0
palmul = .65,.75,.65
timegap = 1
framegap = 4
trans = none

[State 3031, PosAdd]
type = PosAdd
trigger1 = Time < 16
x = 2

[State 3031, Explod]
type = Explod
trigger1 = Time = 6
anim = 11020
ID = 11020
pos = 10,-70
postype = p1 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = .5,.5
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 0
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
p2facing = -1

[State 3031, VelSet]
type = VelSet
trigger1 = Time = [21,106]
x = 3

[State 3031, 1]
type = HitDef
triggerall = IfElse(EnemyNear,HitFall=1,Var(15)<15,1)
trigger1 = AnimElem = 2
attr = C, HA
damage = 25,15
animtype = Heavy
guardflag = LA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 20
guard.pausetime = 10,12
sparkNo=-1 + 0 * (var(33) :=8017)
guard.sparkNo=-1 + 0 * (var(34) :=8001)
sparkXY=-10 + 0 * (var(35) :=155), var(36) :=-37
hitsound=S2,9
guardsound=S130,0
ground.type = Low
ground.slidetime = 5
ground.hittime = 12
guard.hittime = (12) - 6
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.velocity = -2
air.hittime = 12
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
getpower = 0
kill = 0
forcestand = 1
;forcenofall = 1
yAccel = (0.5 + (ComboCount * 0.04))
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 3031, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
trigger2 = AnimElem = 27
trigger3 = AnimElem = 30
value = S5,10
volume = 0
channel = 1
freqmul = 1.0
loop = 0
pan = 0

[State 3031, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 19
value = S5,7
volume = 0
channel = 1
freqmul = 1.0
loop = 0
pan = 0

[State 3031, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 36
value = S5,8
volume = 0
channel = 1
freqmul = 1.0
loop = 0
pan = 0

[State 3031, 2]
type = HitDef
trigger1 = AnimElem = 10
attr = S, HA
damage = 25,5
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 0, 24
guard.pausetime = 10,12
sparkNo=-1 + 0 * (var(33) := 8014)
guard.sparkNo=-1 + 0 * (var(34) := 8001)
sparkXY=-10 + 0 * (var(35) := 155), var(36) := -75
hitsound=S2,4
guardsound=s130, 0
ground.type = High
ground.slidetime = 5
ground.hittime = 12
guard.hittime = (12) - 6
ground.velocity = -2
airguard.velocity = -1.9,-.8
air.velocity = -2
air.hittime = 12
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
getpower = 0
kill = 0
forcestand = 1
yAccel = (0.5 + (ComboCount * 0.04))
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 3031, 3]
type = HitDef
trigger1 = AnimElem = 20
attr = S, HA
damage = 35,5
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 0, 24
guard.pausetime = 10,12
sparkNo=-1 + 0 * (var(33) := 8014)
guard.sparkNo=-1 + 0 * (var(34) := 8001)
sparkXY=-10 + 0 * (var(35) := 155), var(36) := -78
hitsound=S2,1
guardsound=s130, 0
ground.type = High
ground.slidetime = 5
ground.hittime = 12
guard.hittime = (12) - 6
ground.velocity = -2
airguard.velocity = -1.9,-.8
air.velocity = -2
air.hittime = 12
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
getpower = 0
kill = 0
forcestand = 1
yAccel = (0.5 + (ComboCount * 0.04))
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 3031, 3]
type = HitDef
trigger1 = AnimElem = 28
attr = S, HA
damage = 35,5
animtype = Medium
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 0, 24
guard.pausetime = 10,12
sparkNo=-1 + 0 * (var(33) := 8011)
guard.sparkNo=-1 + 0 * (var(34) := 8000)
sparkXY=-10 + 0 * (var(35) := 155), var(36) := -69
hitsound=S2,4
guardsound=s130, 0
ground.type = Low
ground.slidetime = 5
ground.hittime = 12
guard.hittime = (12) - 6
ground.velocity = -2
airguard.velocity = -1.9,-.8
air.velocity = -2
air.hittime = 12
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
getpower = 0
kill = 0
forcestand = 1
yAccel = (0.5 + (ComboCount * 0.04))
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 3031, 4]
type = HitDef
trigger1 = AnimElem = 31
attr = S, HA
damage = 35,5
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 0, 60
guard.pausetime = 10,16
sparkNo=-1 + 0 * (var(33) := 8011)
guard.sparkNo=-1 + 0 * (var(34) := 8000)
sparkXY=-10 + 0 * (var(35) := 155), var(36) := -69
hitsound=S2,4
guardsound=s130, 0
ground.type = Low
ground.slidetime = 5
ground.hittime = 12
guard.hittime = (12) - 6
ground.velocity = -2
airguard.velocity = -1.9,-.8
air.velocity = -2
air.hittime = 12
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
getpower = 0
kill = 0
forcestand = 1
yAccel = (0.5 + (ComboCount * 0.04))
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 3031, 5]
type = HitDef
trigger1 = AnimElem = 37
attr = S, HA
damage = 35,5
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 0, 24
guard.pausetime = 10,12
sparkNo=-1 + 0 * (var(33) := 8012)
guard.sparkNo=-1 + 0 * (var(34) := 8000)
sparkXY=-10 + 0 * (var(35) := 155), var(36) := -70
hitsound=S2,2
guardsound=s130, 0
ground.type = High
ground.slidetime = 5
ground.hittime = 12
guard.hittime = (12) - 6
ground.velocity = -2
airguard.velocity = -1.9,-.8
air.velocity = -2
air.hittime = 12
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
getpower = 0
kill = 0
forcestand = 1
yAccel = (0.5 + (ComboCount * 0.04))
id = 3031
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 3031, ChangeState]
type = ChangeState
triggerall = NumTarget(3031)
trigger1 = MoveHit
trigger1 = AnimTime = 0
value = 3032
ctrl = 0

[State 3031, ChangeState]
type = ChangeState
trigger1 = !MoveHit
trigger1 = AnimTime = 0
trigger2 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[StateDef 3032]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 3032
poweradd = 0
sprpriority = 4
movehitpersist = 1

[State 3032, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 53032
ID = 3031

[State 3032, PosAdd]
type = PosAdd
trigger1 = AnimElem = 11,>=0 && AnimElem = 19,<0
x = -4

[State 3032, VelSet]
type = VelSet
trigger1 = AnimElem = 22
x = 15
y = -5

[State 3032, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1,>=0 && AnimElem = 10, <0
time = 1
id = 3031
pos = 25,0

[State 3032, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S2,9
volumescale = 200
channel = 3
freqmul = 1.0
loop = 0
pan = 0

[State 3032, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S3010,1
volumescale = 200
channel = 1
freqmul = 1.0
loop = 0
pan = 0

[State 3032, Explod]
type = Explod
trigger1 = AnimElem = 5
anim = 13012
ID = 13012
pos = 40,-80
postype = p1
facing = 1
vfacing = 1
bindtime = 180
vel = 0,0
accel = 0,0
random = 0,0
removetime = 180
pausemovetime = 0
scale = .5,.5
sprpriority = 1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 3032, HitAdd]
type = HitAdd
trigger1 = AnimElem = 8
value = 1

[State 3032, TargetState]
type = TargetState
trigger1 = AnimElem = 21
value = 5300
ID = 3031

[State 3032, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 22
statetype = A
movetype = A
physics = N

[State 3032, Explod]
type = Explod
trigger1 = AnimElem = 24
anim = 13013
ID = 13013
pos = 0,-60
postype = p2 ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = 0.5,0.5
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
trans = add

[State 3032, 2]
type = HitDef
trigger1 = AnimElem = 24
attr = A, HA
damage = 200,25
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 30,30
sparkno = -1
sparkxy = 0,0
hitsound = S2,5
guardsound = S130,0
ground.type = High
ground.slidetime = 5
ground.hittime = 12
guard.hittime = (12) - 6
ground.velocity = -2,-8
airguard.velocity = -1.9,-.8
air.velocity = -2,8
air.hittime = 12
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
getpower = 0
fall = 1
fall.recover = 0
palfx.time = 70
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
palfx.invertall = 1
yAccel = (0.5 + (ComboCount * 0.04))
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 3032, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 24
value = S3010,0
volumescale = 200
channel = 0
freqmul = 1.0
loop = 0
pan = 0

[State 3032, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 24
value = S3005,0
volumescale = 200
channel = 2
freqmul = 1.0
loop = 0
pan = 0

[State 3032, VarSet]
type = VarSet
trigger1 = MoveType = I
v = 20 
value = 0

[State 3032, StateTypeSet]
type = StateTypeSet
trigger1 = Time = 305
statetype = A
movetype = I
physics = A
;---------------------------------------------------------------------------
; V-Slasher L.D.M.
[StateDef 3040]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 3040
poweradd = ifelse(var(53) > 0, -1000, -3000)
sprpriority = 2
facep2 = 1

[State 3040, Super Pause FX]
type = Helper
trigger1 = !Time
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = 0, -50
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3040, Super Pause]
type = SuperPause
trigger1 = !Time
time = 80
moveTime = 35
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3040, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = 40

[State 3040, PosAdd]
type = PosAdd
triggerall = abs(BackEdgeDist)>=50
trigger1 = Time = [0,21]
x = -1.5

[State 3040, VelSet]
type = VelSet
trigger1 = AnimElem = 14
x = 12
y = -8

[State 3040, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 14
statetype = A
movetype = A
physics = N

[State 3040, VelAdd]
type = VelAdd
trigger1 = Time >= 39
y = .45

[State 3040, Width]
type = Width
trigger1 = Time >= 39
value = 23,0
ignorehitpause = 1

[State 3040, ChangeState]
type = ChangeState
triggerall = StateType = A
trigger1 = Vel Y>0
trigger1 = Pos Y >=-Vel Y
value = 3003
ctrl = 0

[State 3040, 1]
type = HitDef
triggerall = IfElse(EnemyNear,HitFall=1,Var(15)<15,1)
trigger1 = AnimElem = 22
attr = A, HA
damage = 25,5
animtype = Heavy
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 15, 60
guard.pausetime = 10,15
sparkno = S8080
guard.sparkno = S8082
sparkxy = -20, 0
hitsound = S2,4
guardsound = S130,0
ground.type = High
ground.slidetime = 5
ground.hittime = 30
guard.hittime = (30) - 6
ground.velocity = -2
airguard.velocity = -1.9,-.8
air.velocity = -2
air.hittime = 30
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
getpower = 0
kill = 0
forcestand = 1
forcenofall = 1
p1stateno = 3041
p2facing = 1
yAccel = (0.5 + (ComboCount * 0.04))
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 3040, ChangeState]
type = ChangeState
trigger1 = MoveGuarded
value = 3044
ctrl = 0
;---------------------------------------------------------------------------
;|
[StateDef 3041]
type = A
movetype= A
physics = N
juggle = 0
velset = 0,0
ctrl = 0
anim = 3041
poweradd = 0
sprpriority = 2

[State 3041, PosAdd]
type = PosAdd
trigger1 = Time = 0
x = P2BodyDist X - 10
y = 0

[State 3041, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = A, HA
damage = 25,5
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 60
guard.pausetime = 10,12
sparkno = S8080
guard.sparkno = S8082
sparkxy = -10, -25
hitsound = S2,9
guardsound = S130,0
ground.type = High
ground.slidetime = 5
ground.hittime = 12
guard.hittime = (12) - 6
ground.velocity = -2
airguard.velocity = -1.9,-.8
air.velocity = -2
air.hittime = 12
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
getpower = 0
kill = 0
forcestand = 1
yAccel = (0.5 + (ComboCount * 0.04))
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 3041, 2]
type = HitDef
trigger1 = AnimElem = 7
attr = A, HA
damage = 35,5
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 60
guard.pausetime = 10,12
sparkno = S8080
guard.sparkno = S8082
sparkxy = -10, -25
hitsound = S2,2
guardsound = S130,0
ground.type = High
ground.slidetime = 5
ground.hittime = 12
guard.hittime = (12) - 6
ground.velocity = -2
airguard.velocity = -1.9,-.8
air.velocity = -2
air.hittime = 12
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
getpower = 0
kill = 0
forcestand = 1
p2stateno = 5300
yAccel = (0.5 + (ComboCount * 0.04))
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0
id = 3041

[State 3041, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 11
physics = A

[State 3041, VelSet]
type = VelSet
trigger1 = AnimElem = 11
x = -1
y = -9

[State 3041, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 21
physics = N

[State 3041, VelSet]
type = VelSet
trigger1 = AnimElem = 23
x = 7.5
y = 5

[State 3041, 3]
type = HitDef
trigger1 = AnimElem = 23
attr = A, HA
damage = 0
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0,0
sparkNo=-1 + 0 * (var(33) :=8017)
guard.sparkNo=-1 + 0 * (var(34) :=8001)
sparkXY=-10 + 0 * (var(35) :=155), var(36) :=-61
hitsound = S2,9
guardsound = S130,0
ground.type = High
ground.slidetime = 5
ground.hittime = 12
guard.hittime = (12) - 6
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
getpower = 0
kill = 0
p1stateno = 3042
yAccel = (0.5 + (ComboCount * 0.04))
id = 3042
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 3041, ChangeState]
type = ChangeState
triggerall = !NumTarget(3041) || !NumTarget(3042)
trigger1 = Vel Y>0
trigger1 = Pos Y >=-Vel Y
value = 3003
ctrl = 0
;---------------------------------------------------------------------------
;|
[StateDef 3042]
type = S
movetype= A
physics = N
juggle = 0
ctrl = 0
anim = 3042
poweradd = 0
sprpriority = 2
velset = 0,0
movehitpersist = 1

[State 3042, TargetState]
type = TargetState
trigger1 = !time && numtarget
value = 53042
ID = 3042

[State 3042, PosSet]
type = PosSet
triggerall = Target,Pos Y<0
trigger1 = Time = [0,55]
y = Target,Pos Y+10

[State 3042, PosSet]
type = PosSet
triggerall = Target,Pos Y>=0
trigger1 = Time = [0,55]
y = 0

[State 3042, VelSet]
type = VelSet
trigger1 = !Time
x = 0
y = 0

[State 3042, PosAdd]
type = PosAdd
trigger1 = !Time
x = (P2Dist X)-10

[State 3042, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S3010,2
volume = 0
channel = 2
freqmul = 1.0
loop = 0
pan = 0

[State 3042, PlaySnd]
type = PlaySnd
trigger1 = Time = 58
value = S3005,0
volume = 0
channel = 3
freqmul = 1.0
loop = 0
pan = 0

[State 3042, Explod]
type = Explod
trigger1 = Time = 0
anim = 13042
ID = 13042
pos = 0,-100
postype = p1
facing = -1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = .5,.5
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3042, VelSet]
type = VelSet
trigger1 = AnimElem = 7
x = 3.5
y = -10.5

[State 3042, TargetState]
type = TargetState
trigger1 = Time = 94
value = 53003
ID = 3042

[State 3042, TargetLifeAdd]
type = TargetLifeAdd
trigger1 =Time = 94
value = -350
ID = 3042
kill = 1
absolute = 0

[State 3042, PlaySnd]
type = PlaySnd
trigger1 = Time = 94
value = S3010,3
volume = 0
channel = 2
freqmul = 1.0
loop = 0
pan = 0

[State 3042, Explod]
type = Explod
trigger1 = Time = 94
anim = 13013
ID = 13013
pos = 0,-90
postype = p2
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
scale = 0.5,0.5
sprpriority = 4
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3042, EnvShake]
type = EnvShake
trigger1 = Time = 94
time = 45
freq = 90
ampl = -4
phase = 180

[State 3042, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 8
statetype = A
movetype = I
physics = A

;---------------------------------------------------------------------------
;V
[StateDef 3044]
type = A
movetype= A
physics = A
juggle = 0
ctrl = 0
anim = 41
poweradd = 0
sprpriority = 2

[State 3044, VelSet]
type = VelSet
trigger1 = Time = 0
x = 0.5
y = -5
;---------------------------------------------------------------------------
;V-Slasher L.D.M. (Air)
[StateDef 3045]
type = A
movetype= A
physics = N
juggle = 0
velset = 0,0
ctrl = 0
anim = 3045
poweradd = ifelse(var(53) > 0, -1000, -3000)
sprpriority = 2

[State 3045, Super Pause FX]
type = Helper
trigger1 = !Time
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = 45, -110
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3045, Super Pause]
type = SuperPause
trigger1 = !Time
time = 80
moveTime = 7
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3045, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = 12

[State 3045, Helper]
type = Helper
trigger1 = AnimElem = 4
ID = 11034
pos = 15,-55
postype = P1
stateno = 11030
helpertype = normal
name = "X-Calibur"
keyctrl = 0
ownpal = 1
supermovetime = 1
size.xscale = 0.5
size.yscale = 0.5

[State 3045, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 8
y = 12

[State 3045, 1]
type = HitDef
triggerall = IfElse(EnemyNear,HitFall=1,Var(15)<15,1)
trigger1 = AnimElem = 5
attr = A, HA
damage = 25,5
animtype = Heavy
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 15, 60
guard.pausetime = 10,12
sparkno = S8080
guard.sparkno = S8082
sparkxy = -10, -76
hitsound = S2,4
guardsound = S130,0
ground.type = High
ground.slidetime = 5
ground.hittime = 12
guard.hittime = (12) - 6
ground.velocity = -2
airguard.velocity = -1.9,-.8
air.velocity = -2
air.hittime = 12
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
getpower = 0
kill = 0
guard.kill = 0
forcestand = 1
p1stateno = 3041
yAccel = (0.5 + (ComboCount * 0.04))
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 3045, ChangeState]
type = ChangeState
trigger1 = Vel Y>0
trigger1 = Pos Y >=-Vel Y
value = 1034
ctrl = 0

[State 3045, ChangeState]
type = ChangeState
trigger1 = MoveGuarded
value = 3044
ctrl = 0
;---------------------------------------------------------------------------
; Air get-hit (fall recovery on ground)
[Statedef 5201]
type = S
movetype= H
physics = N
anim = 5200

[State 5201, 1] ;Turn if not facing opponent
type = Turn
trigger1 = Time = 0
trigger1 = p2dist X < Const720p(-20)

[State 5201, 2]
type = VelSet
trigger1 = Time = 0
x = -5
y = 0

[State 5201, VelMul]
type = VelMul
trigger1 = 1
x = 0.9

[State 5201, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S100,0
volume = 0
channel = 1
freqmul = 1.0
loop = 0
pan = 0

[State 5201, 3]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5201, 4]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5201, 5] ;Blink white
type = PalFX
trigger1 = Time = 0
time = 3
add = 128,128,128 ;256,256,256

[State 5201, 6]
type = Explod
trigger1 = Time = 0
anim = F60
pos = 0, -floor(vel y)
sprpriority = -10

[State 5201, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S101,0
volume = 0
channel = 1

[State 5201, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; Dizzy
[StateDef 5300]
type = S
movetype= H
physics = N
juggle = 0
velset = 0,0
ctrl = 0
poweradd = 0
sprpriority = 2

[State 5300, PosSet]
type = PosSet
trigger1 = Pos Y>=0
y = 0

[State 5300, ChangeAnim]
type = ChangeAnim
triggerall = Pos Y=0
trigger1 = !Time
value = 5300

[State 5300, ChangeAnim2]
type = ChangeAnim2
triggerall = Pos Y<0
trigger1 = !Time
value = 3046

[State 5300, SelfState]
type = SelfState
trigger1 = Time >=60
value = IfElse(Pos Y>=0,0,5050)
;---------------------------------------------------------------------------
;P2 Rider Burst
[StateDef 53032]
type = S
movetype= H
physics = N
juggle = 0
velset = 0,0
ctrl = 0
poweradd = 0
sprpriority = 2

[State 53032, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 53032
;---------------------------------------------------------------------------
;P2 V-Slasher LDM
[Statedef 53042]
type = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 53042, PosSet]
type = PosSet
trigger1 = Time = 0
trigger1 = Pos Y >=0
y = 0

[State 53042, HitBy]
type = HitBy
trigger1 = 1
value = A, HA

[State 53043, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 53042