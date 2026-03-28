; _________________________________________
;| Character by Author Name                |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SPECIAL MOVES>========================================
;==============================================================================================

;---------------------------------------------------------------------------
;LP Moon Slasher
[StateDef 1000]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 1000
poweradd = 40
sprpriority = 2
facep2 = 1

[State 1000, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 11000
ID = 11000
pos = 20,-70
postype = p1
facing = 1
vfacing = 1
bindtime = -1
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
removeongethit = 1

[State 1000, 1]
type = HitDef
triggerall = IfElse(EnemyNear,HitFall=1,Var(15)<15,1)
trigger1 = AnimElem = 5
attr = S, SA
damage = 80,5
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 12
sparkNo=-1 + 0 * (var(33) :=8016)
guard.sparkNo=-1 + 0 * (var(34) :=8001)
sparkXY=-10 + 0 * (var(35) :=155), var(36) :=-80
hitsound=S2,9
guardsound=S130,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
guard.hittime = (12) - 6
ground.velocity = -4,-7.5
airguard.velocity = -1.9,-.8
air.velocity = -2,-7.5
air.hittime = 12
fall = 1
fall.recover = 0
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 1000, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 6
movetype = I

[State 1000, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;MP Moon Slasher
[StateDef 1001]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 1001
poweradd = 65
sprpriority = 2
facep2 = 1

[State 1001, VelAdd]
type = VelAdd
trigger1 = AnimElem = 3
x = 4

[State 1001, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 11000
ID = 11000
pos = 20,-70
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
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
removeongethit = 1

[State 1001, 1]
type = HitDef
triggerall = IfElse(EnemyNear,HitFall=1,Var(15)<15,1)
trigger1 = AnimElem = 5
attr = S, SA
damage = 90,10
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 12
sparkNo=-1 + 0 * (var(33) :=8016)
guard.sparkNo=-1 + 0 * (var(34) :=8001)
sparkXY=-10 + 0 * (var(35) :=155), var(36) :=-80
hitsound=S2,9
guardsound=S130,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
guard.hittime = (12) - 6
ground.velocity = -4,-7.5
airguard.velocity = -1.9,-.8
air.velocity = -2,-7.5
air.hittime = 12
fall = 1
fall.recover = 0
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 1001, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 6
movetype = I

[State 1001, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;HP Moon Slasher
[StateDef 1002]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 1002
poweradd = 85
sprpriority = 2
facep2 = 1

[State 1002, VelAdd]
type = VelAdd
trigger1 = AnimElem = 3
x = 5

[State 1002, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 11000
ID = 11000
pos = 20,-70
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
pausemovetime = 0
scale = .5,.5
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 1002, 1]
type = HitDef
triggerall = IfElse(EnemyNear,HitFall=1,Var(15)<15,1)
trigger1 = AnimElem = 5
attr = S, SA
damage = 100,10
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 12
sparkNo=-1 + 0 * (var(33) :=8016)
guard.sparkNo=-1 + 0 * (var(34) :=8001)
sparkXY=-10 + 0 * (var(35) :=155), var(36) :=-80
hitsound=S2,9
guardsound=S130,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
guard.hittime = (12) - 6
ground.velocity = -4,-7.5
airguard.velocity = -1.9,-.8
air.velocity = -2,-7.5
air.hittime = 12
fall = 1
fall.recover = 0
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 1002, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 6
movetype = I

[State 1002, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;EX Moon Slasher
[StateDef 1003]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd = ifelse(var(20) > 0, 0, -500)
facep2=1

[State 1003, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500

[State 1003, Anim]
type=changeanim
trigger1=!time
value=1003

[State 1003, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1003, Custom Combo Juggle Points Reset]
type = varset
trigger1 = !time && var(20)
var(15) = 0
ignorehitpause = 1

[State 1003, CC Reset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1003, ExFX]
type = varset
trigger1 = !time
var(25) = 44

[State 1003, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = 5, -50
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1003, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
channel = 2

[State 1003, VelAdd]
type = VelAdd
trigger1 = AnimElem = 3
x = 6.5

[State 1003, VelAdd]
type = VelAdd
trigger1 = AnimElem = 9
x = 7.5

[State 1003, Explod]
type = Explod
trigger1 = AnimElem = 3
anim = 11000
ID = 11000
pos = 20,-70
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
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
removeongethit = 1

[State 1003, 1]
type = HitDef
triggerall = IfElse(EnemyNear,HitFall=1,Var(15)<15,1)
trigger1 = AnimElem = 5
attr = S, SA
damage = 65,10
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8,16
pausetime = 8,12
sparkNo=-1 + 0 * (var(33) :=8016)
guard.sparkNo=-1 + 0 * (var(34) :=8001)
sparkXY=-10 + 0 * (var(35) :=155), var(36) :=-80
hitsound=S2,9
guardsound=S130,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
guard.hittime = (12) - 6
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.velocity = -2
air.hittime = 12
getpower = 0
forcestand = 1
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 1003, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = S200,2
channel = 0
volumescale = 100
ignorehitpause = 0

[State 1003, Explod]
type = Explod
trigger1 = AnimElem = 9
anim = 11003
ID = 11003
pos = 15,-80
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
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
removeongethit = 1
ignorehitpause = 1

[State 1003, 2]
type = HitDef
triggerall = IfElse(EnemyNear,HitFall=1,Var(15)<15,1)
trigger1 = AnimElem = 10
attr = S, SA
damage = 65,15
animtype = Up
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 12
sparkNo=-1 + 0 * (var(33) :=8016)
guard.sparkNo=-1 + 0 * (var(34) :=8001)
sparkXY=-10 + 0 * (var(35) :=155), var(36) :=-80
hitsound=S2,9
guardsound=S130,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
guard.hittime = (12) - 6
ground.velocity = -4,-7.5
airguard.velocity = -1.9,-.8
air.velocity = -2,-7.5
air.hittime = 12
fall = 1
fall.recover = 0
getpower = 0
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 1003, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 11
movetype = I

[State 1003, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;LP Baltic Launcher
[StateDef 1010]
type = S
movetype = A
physics = S
juggle = 0
anim = 1010
ctrl = 0
poweradd = 45
facep2 = 1

[State 1010, Helper]
type = Helper
trigger1 = time = 4
ID = 11010
pos = 55,-100
postype = P1
stateno = 11010
helpertype = normal
name = "Baltic Launcher"
keyctrl = 0
ownpal = 1
supermovetime = 1
size.xscale = 0.5
size.yscale = 0.5

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = Time = 4
value = S1010,0
channel = 0
volumescale = 100

[State 1010, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;MP Baltic Launcher
[StateDef 1011]
type = S
movetype = A
physics = S
juggle = 0
anim = 1011
ctrl = 0
poweradd = 60
facep2 = 1

[State 1011, Helper]
type = Helper
trigger1 = time = 4
ID = 11011
pos = 55,-100
postype = P1
stateno = 11010
helpertype = normal
name = "Baltic Launcher"
keyctrl = 0
ownpal = 1
supermovetime = 1
size.xscale = 0.5
size.yscale = 0.5

[State 1011, PlaySnd]
type = PlaySnd
trigger1 = Time = 6
value = S1010,0
channel = 0
volumescale = 100

[State 1011, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;HP Baltic Launcher
[StateDef 1012]
type = S
movetype = A
physics = N
juggle = 0
anim = 1012
ctrl = 0
poweradd = 85
velset = 0
facep2 = 1

[State 1012, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3
statetype = A
movetype = A
physics = N

[State 1012, VelAdd]
type = VelAdd
trigger1 = AnimElem = 3
x = 1.5
y = -7.5

[State 1012, VelAdd]
type = VelAdd
trigger1 = AnimElem = 3,>0 
y = 0.55

[State 1012, Jump Dust 1]
type = Explod
trigger1 = AnimElem = 3
anim = 10121
ID = 10121
pos = 0,15
postype = p1
removetime = -2
sprpriority = 3
ownpal = 1

[State 1012, Jump Dust 2]
type = Explod
trigger1 = AnimElem = 3
anim = 10120
ID = 10120
pos = 0,20
vel = .5,-1.5
scale = 0.8,0.8
postype = p1
removetime = -2
sprpriority = 3
ownpal = 1

[State 1012, Jump Dust 3]
type = Explod
trigger1 = AnimElem = 3
anim = 10120
ID = 10120
pos = 10,0
vel = .5,-1.5
scale = 0.6,0.6
postype = p1
removetime = -2
sprpriority = 3
ownpal = 1

[State 1012, Helper]
type = Helper
trigger1 = time = 9
ID = 11012
pos = 55,-100
postype = P1
stateno = 11010
helpertype = normal
name = "Baltic Launcher"
keyctrl = 0
ownpal = 1
supermovetime = 1
size.xscale = 0.5
size.yscale = 0.5

[State 1012, PlaySnd]
type = PlaySnd
trigger1 = Time = 6
value = S1012,0
channel = 0
volumescale = 100

[State 1012, ChangeState]
type = ChangeState
trigger1 = Vel Y>0
trigger1 = Pos Y >=-Vel Y
value = 1013
ctrl = 0
;---------------------------------------------------------------------------
;HP Baltic Launcher Landing
[StateDef 1013]
type = C
movetype = I
physics = C
juggle = 0
anim = 1013
ctrl = 0

[State 1013, VelSet]
type = VelSet
trigger1 = Time = 0
y = 0

[State 1013, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1013, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S40,1
volume = 0
channel = 2
freqmul = 1.0
loop = 0
pan = 0

[State 1013, Dust Explod 1]
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

[State 1013, Dust Explod 2]
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

[State 1013, Dust Explod 3]
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

[State 1013, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;EX Baltic Launcher
[StateDef 1014]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd = ifelse(var(20) > 0, 0, -500)
facep2=1

[State 1014, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500

[State 1014, Anim]
type=changeanim
trigger1=!time
value=1014

[State 1014, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1014, Custom Combo Juggle Points Reset]
type = varset
trigger1 = !time && var(20)
var(15) = 0
ignorehitpause = 1

[State 1014, CC Reset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1014, ExFX]
type = varset
trigger1 = !time
var(25) = 44

[State 1014, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = 5, -90
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1014, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
channel = 1

[State 1014, Helper]
type = Helper
trigger1 = time = 3
ID = 11014
pos = 55,-100
postype = P1
stateno = 11010
helpertype = normal
name = "Baltic Launcher"
keyctrl = 0
ownpal = 1
supermovetime = 1
size.xscale = 0.5
size.yscale = 0.5

[State 1014, PlaySnd]
type = PlaySnd
trigger1 = Time = 3
value = S1010,0
channel = 0
volumescale = 100

[State 1014, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;LK Grand Saber
[StateDef 1020]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 1020
poweradd = 30
sprpriority = 2
facep2 = 1

[State 1020, PosAdd]
type = PosAdd
trigger1 = Time = [7,24]
x = 7

[State 1020, Width]
type = Width
trigger1 = Time = [7,24]
value = 30,0

[State 1020, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S100,0
channel = 3
volumescale = 100

[State 1020, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = S100,1
channel = 4
volumescale = 100

[State 1020, ChangeState]
type = ChangeState
trigger1 = abs(P2BodyDist X)<=30
value = 1022
ctrl = 0

[State 1020, ChangeState]
type = ChangeState
trigger1 = Time = 25
value = 1021
ctrl = 0

;---------------------------------------------------------------------------
;Grand Saber--Stop
[StateDef 1021]
type = C
movetype= I
physics = C
juggle = 0
velset = 0,0
ctrl = 0
anim = 1021
poweradd = 0
sprpriority = 2

[State 1021, PosAdd]
type = PosAdd
trigger1 = Time = [0,5]
x = 3

[State 1021, PosAdd]
type = PosAdd
trigger1 = Time = [6,9]
x = 2

[State 1021, Dust Explod 1]
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

[State 1021, Dust Explod 2]
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

[State 1021, Dust Explod 3]
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

[State 1021, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S101,0
volume = 0
channel = 3

[State 1021, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Grand Saber--Slash
[StateDef 1022]
type = C
movetype= A
physics = C
juggle = 0
velset = 0,0
ctrl = 0
anim = 1022
poweradd = 0
sprpriority = 2

[State 1022, PowerAdd]
type = PowerAdd
trigger1 = PrevStateNo = 1020
trigger1 = Time = 0
value = 25

[State 1022, PowerAdd]
type = PowerAdd
trigger1 = PrevStateNo = 1023
trigger1 = Time = 0
value = 30

[State 1022, PowerAdd]
type = PowerAdd
trigger1 = PrevStateNo = 1024
trigger1 = Time = 0
value = 45

[State 1022, PosAdd]
type = PosAdd
trigger1 = Time < 16
x = 2

[State 1022, Explod]
type = Explod
trigger1 = Time = 6
anim = 11020
ID = 11020
pos = 10,-70
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
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

[State 1022, 1]
type = HitDef
triggerall = PrevStateNo = 1020
trigger1 = AnimElem = 2
attr = C, SA
damage = 95,10
animtype = Heavy
guardflag = LA
hitflag = MA
priority = 4, Hit
pausetime = 0, 12
sparkNo=-1 + 0 * (var(33) :=8016)
guard.sparkNo=-1 + 0 * (var(34) :=8001)
sparkXY=-10 + 0 * (var(35) :=155), var(36) :=-37
hitsound=S2,9
guardsound=S130,0
ground.type = Trip
ground.slidetime = 5
ground.hittime  = 12
guard.hittime = (12) - 6
ground.velocity = -2,-7
airguard.velocity = -1.9,-.8
air.velocity = -1.4,-7
air.hittime = 12
fall = 1
fall.recover = 0
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 1022, 2]
type = HitDef
triggerall = PrevStateNo = 1023
trigger1 = AnimElem = 2
attr = C, SA
damage = 105,10
animtype = Heavy
guardflag = LA
hitflag = MA
priority = 4, Hit
pausetime = 0, 12
sparkNo=-1 + 0 * (var(33) :=8016)
guard.sparkNo=-1 + 0 * (var(34) :=8001)
sparkXY=-10 + 0 * (var(35) :=155), var(36) :=-37
hitsound=S2,9
guardsound=S130,0
ground.type = Trip
ground.slidetime = 5
ground.hittime  = 12
guard.hittime = (12) - 6
ground.velocity = -2,-7
airguard.velocity = -1.9,-.8
air.velocity = -1.4,-7
air.hittime = 12
fall = 1
fall.recover = 0
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 1022, 3]
type = HitDef
triggerall = IfElse(EnemyNear,HitFall=1,Var(15)<15,1)
triggerall = PrevStateNo = 1024
trigger1 = AnimElem = 2
attr = C, SA
damage = 90,5
animtype = Heavy
guardflag = LA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 12
sparkNo=-1 + 0 * (var(33) :=8016)
guard.sparkNo=-1 + 0 * (var(34) :=8001)
sparkXY=-10 + 0 * (var(35) :=155), var(36) :=-37
hitsound=S2,9
guardsound=S130,0
ground.type = Trip
ground.slidetime = 5
ground.hittime  = 12
guard.hittime = (12) - 6
ground.velocity = -2,-7
airguard.velocity = -1.9,-.8
air.velocity = -1.4,-7
air.hittime = 12
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
fall = 1
fall.recover = 0
yaccel = 0.7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 1022, 4]
type = HitDef
triggerall = IfElse(EnemyNear,HitFall=1,Var(15)<15,1)
triggerall = PrevStateNo = 1027
trigger1 = AnimElem = 2
attr = C, SA
damage = 50,5
animtype = Heavy
guardflag = LA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 10
sparkNo=-1 + 0 * (var(33) :=8016)
guard.sparkNo=-1 + 0 * (var(34) :=8001)
sparkXY=-10 + 0 * (var(35) :=155), var(36) :=-37
hitsound=S2,9
guardsound=S130,0
ground.type = Trip
ground.slidetime = 5
ground.hittime  = 12
guard.hittime = (12) - 6
ground.velocity = -2,-7
airguard.velocity = -1.9,-.8
air.velocity = -1.4,-7
air.hittime = 12
fall = 1
fall.recover = 0
getpower = 0
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 1022, ChangeState]
type = ChangeState
trigger1 = PrevStateNo = 1027
trigger1 = Time = 18
value = 1028
ctrl = 0
ignorehitpause = 1

[State 1022, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3
movetype = I

[State 1022, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;MK Grand Saber
[StateDef 1023]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 1023
poweradd = 65
sprpriority = 2
facep2 = 1

[State 1023, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S100,0
channel = 3
volumescale = 100

[State 1023, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = S100,1
channel = 4
volumescale = 100

[State 1023, PosAdd]
type = PosAdd
trigger1 = Time = [7,34]
x = 6

[State 1023, Width]
type = Width
trigger1 = Time = [7,34]
value = 30,0

[State 1023, ChangeState]
type = ChangeState
trigger1 = abs(P2BodyDist X)<=30
value = 1022
ctrl = 0

[State 1023, ChangeState]
type = ChangeState
trigger1 = Time = 35
value = 1021
ctrl = 0
;---------------------------------------------------------------------------
;HK Grand Saber
[StateDef 1024]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 1024
poweradd = 80
sprpriority = 2
facep2 = 1

[State 1024, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S100,0
channel = 3
volumescale = 100

[State 1024, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = S100,1
channel = 4
volumescale = 100

[State 1024, PosAdd]
type = PosAdd
trigger1 = Time = [7,44]
x = 7

[State 1024, Width]
type = Width
trigger1 = Time = [7,44]
value = 30,0

[State 1024, ChangeState]
type = ChangeState
trigger1 = abs(P2BodyDist X)<=30
value = 1022
ctrl = 0

[State 1024, ChangeState]
type = ChangeState
trigger1 = Time = 45
value = 1021
ctrl = 0
;---------------------------------------------------------------------------
;Gliding Buster
[StateDef 1025]
type = A
movetype= A
physics = N
juggle = 0
velset = 4,-8
ctrl = 0
anim = 1025
poweradd = 65
sprpriority = 2

[State 1025, Jump Dust 1]
type = Explod
trigger1 = !Time
anim = 10121
ID = 10121
pos = 0,15
postype = p1
removetime = -2
sprpriority = 3
ownpal = 1

[State 1025, Jump Dust 2]
type = Explod
trigger1 = Time = 1
anim = 10120
ID = 10120
pos = 0,20
vel = .5,-2.5
scale = 0.8,0.8
postype = p1
removetime = -2
sprpriority = 3
ownpal = 1

[State 1025, Jump Dust 3]
type = Explod
trigger1 = Time = 1
anim = 10120
ID = 10120
pos = 10,0
vel = .5,-2.5
scale = 0.6,0.6
postype = p1
removetime = -2
sprpriority = 3
ownpal = 1
ownpal = 1

[State 1025, Explod]
type = Explod
trigger1 = Time = 0
anim = 11025
ID = 11025
pos = 20,-90
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
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
removeongethit = 1

[State 1025, 1]
type = HitDef
triggerall = IfElse(EnemyNear,HitFall=1,Var(15)<15,1)
trigger1 = AnimElem = 1
attr = A, SA
damage = 45,5
animtype = Up
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 10
sparkNo=-1 + 0 * (var(33) :=8016)
guard.sparkNo=-1 + 0 * (var(34) :=8001)
sparkXY=-10 + 0 * (var(35) :=155), var(36) :=-37
hitsound=S2,9
guardsound=S130,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
guard.hittime = (12) - 6
ground.velocity = -3,-8
airguard.velocity = -1.9,-.8
air.velocity = -2,-8
air.hittime = 12
fall = 1
fall.recover = 0
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 1025, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1000,1
channel = 2
volumescale = 100

[State 1025, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 2
movetype = I
physics = N

[State 1025, VelAdd]
type = VelAdd
trigger1 = AnimElem = 2,>=0
y = .55 

[State 1025, ChangeState]
type = ChangeState
trigger1 = Vel Y>0
trigger1 = Pos Y >=-Vel Y
value = 1026
ctrl = 0
;---------------------------------------------------------------------------
;Gliding Buster Landing
[StateDef 1026]
type = S
movetype = I
physics = S
juggle = 0
anim = 1026
ctrl = 0

[State 1026, VelSet]
type = VelSet
trigger1 = Time = 0
y = 0

[State 1026, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1026, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S40,1
volume = 0
channel = 2
freqmul = 1.0
loop = 0
pan = 0

[State 1026, Dust Explod 1]
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

[State 1026, Dust Explod 2]
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

[State 1026, Dust Explod 3]
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

[State 1026, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;EX Grand Saber
[StateDef 1027]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd = ifelse(var(20) > 0, 0, -500)
facep2=1

[State 1027, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S100,0
channel = 2
volumescale = 100

[State 1027, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = S100,1
channel = 3
volumescale = 100

[State 1027, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500

[State 1027, Anim]
type=changeanim
trigger1=!time
value=1027

[State 1027, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1027, Custom Combo Juggle Points Reset]
type = varset
trigger1 = !time && var(20)
var(15) = 0
ignorehitpause = 1

[State 1027, CC Reset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1027, ExFX]
type = varset
trigger1 = !time
var(25) = 44

[State 1027, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = 5, -80
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1027, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
channel = 1

[State 1027, PosAdd]
type = PosAdd
trigger1 = Time >=7
x = 9

[State 1027, ChangeState]
type = ChangeState
trigger1 = abs(P2BodyDist X)<=40
value = 1022
ctrl = 0
;---------------------------------------------------------------------------
;EX Gliding Buster
[StateDef 1028]
type = A
movetype= A
physics = N
juggle = 0
velset = 4,-10
ctrl = 0
anim = 1025
poweradd = 0
sprpriority = 2

[State 1028, Jump Dust 1]
type = Explod
trigger1 = !Time
anim = 10121
ID = 10121
pos = 0,15
postype = p1
removetime = -2
sprpriority = 3
ownpal = 1

[State 1028, Jump Dust 2]
type = Explod
trigger1 = Time = 1
anim = 10120
ID = 10120
pos = 0,20
vel = .5,-2.5
scale = 0.8,0.8
postype = p1
removetime = -2
sprpriority = 3
ownpal = 1

[State 1028, Jump Dust 3]
type = Explod
trigger1 = Time = 1
anim = 10120
ID = 10120
pos = 10,0
vel = .5,-2.5
scale = 0.6,0.6
postype = p1
removetime = -2
sprpriority = 3
ownpal = 1

[State 1028, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1000,1
channel = 2
volumescale = 100

[State 1028, Explod]
type = Explod
trigger1 = Time = 0
anim = 11025
ID = 11025
pos = 20,-90
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
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
removeongethit = 1

[State 1028, 1]
type = HitDef
triggerall = IfElse(EnemyNear,HitFall=1,Var(15)<15,1)
trigger1 = Time = 1
trigger2 = Time = 3
attr = A, SA
damage = 55,5
animtype = Up
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 4, 10
sparkNo=-1 + 0 * (var(33) :=8016)
guard.sparkNo=-1 + 0 * (var(34) :=8001)
sparkXY=-10 + 0 * (var(35) :=155), var(36) :=-37
hitsound=S2,9
guardsound=S130,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
guard.hittime = (12) - 6
ground.velocity = -4,-10
airguard.velocity = -1.9,-.8
air.velocity = -3,-10
air.hittime = 12
getpower = 0
fall = 1
fall.recover = 0
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 1028, StateTypeSet]
type = StateTypeSet
trigger1 = Time = 4
movetype = I

[State 1028, VelAdd]
type = VelAdd
trigger1 = Time>=4
y = .55 

[State 1028, ChangeState]
type = ChangeState
trigger1 = Vel Y>0
trigger1 = Pos Y >=-Vel Y
value = 1026
ctrl = 0
;---------------------------------------------------------------------------
;LP X-Calibur
[StateDef 1030]
type = A
movetype = A
physics = A
juggle = 0
anim = 1030
ctrl = 0
poweradd = 40

[State 1030, VelSet]
type = VelSet
trigger1 = Time = [0,22]
x = 0
y = 0

[State 1030, Helper]
type = Helper
trigger1 = time = 5
ID = 11030
pos = 25,-55
postype = P1
stateno = 11030
helpertype = normal
name = "X-Calibur"
keyctrl = 0
ownpal = 1
supermovetime = 1
size.xscale = 0.5
size.yscale = 0.5

[State 1030, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 6
statetype = A
movetype = I
physics = A

[State 1030, VelSet]
type = VelSet
trigger1 = AnimElem = 6
y = -8

[State 1030, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 6
movetype = I

;---------------------------------------------------------------------------
;MP X-Calibur
[StateDef 1031]
type = A
movetype = A
physics = A
juggle = 0
anim = 1030
ctrl = 0
poweradd = 55

[State 1031, VelSet]
type = VelSet
trigger1 = Time = [0,22]
x = 0
y = 0

[State 1031, Helper]
type = Helper
trigger1 = time = 5
ID = 11031
pos = 25,-55
postype = P1
stateno = 11030
helpertype = normal
name = "X-Calibur"
keyctrl = 0
ownpal = 1
supermovetime = 1
size.xscale = 0.5
size.yscale = 0.5

[State 1031, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 6
statetype = A
movetype = I
physics = A

[State 1031, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 3.5
y = -8

[State 1031, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 6
movetype = I

;---------------------------------------------------------------------------
;HP X-Calibur
[StateDef 1032]
type = A
movetype = A
physics = A
juggle = 0
anim = 1030
ctrl = 0
poweradd = 75

[State 1032, VelSet]
type = VelSet
trigger1 = Time = [0,22]
x = 0
y = 0

[State 1032, Helper]
type = Helper
trigger1 = time = 5
ID = 11032
pos = 25,-55
postype = P1
stateno = 11030
helpertype = normal
name = "X-Calibur"
keyctrl = 0
ownpal = 1
supermovetime = 1
size.xscale = 0.5
size.yscale = 0.5

[State 1032, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 6
statetype = A
movetype = I
physics = A

[State 1032, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = -3.5
y = -8

[State 1032, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 6
movetype = I

;---------------------------------------------------------------------------
;EX X-Calibur
[StateDef 1033]
type=A
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd = ifelse(var(20) > 0, 0, -500)
facep2=1

[State 1033, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500

[State 1033, Anim]
type=changeanim
trigger1=!time
value=1033

[State 1033, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1033 Custom Combo Juggle Points Reset]
type = varset
trigger1 = !time && var(20)
var(15) = 0
ignorehitpause = 1

[State 1033, CC Reset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1033, ExFX]
type = varset
trigger1 = !time
var(25) = 44

[State 1033, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = 5, -90
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1033, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
channel = 1

[State 1033, VelSet]
type = VelSet
trigger1 = Time = 9
x =  14
y =  10

[State 1033, Helper]
type = Helper
trigger1 = time = 5
ID = 11033
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

[State 1033, 1]
type = HitDef
;triggerall = IfElse(EnemyNear,HitFall=1,Var(15)<15,1)
;trigger1 = AnimElem = 5
trigger1 = time = 0
attr = A, SA
damage = 135,15
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0, 10
sparkNo=-1 + 0 * (var(33) :=8016)
guard.sparkNo=-1 + 0 * (var(34) :=8001)
sparkXY=-10 + 0 * (var(35) :=155), var(36) :=-60
hitsound=S2,9
guardsound=S130,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
guard.hittime = (12) - 6
ground.velocity = -4,-8
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -2,-7
air.hittime = 12
fall = 1
fall.recover = 0
getpower = 0
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
yaccel = 0.8
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 1033, StateTypeSet]
type = StateTypeSet
trigger1 = MoveContact
movetype = I
ignorehitpause = 1

[State 1033, ChangeState]
type = ChangeState
trigger1 = Vel Y>0
trigger1 = Pos Y >=-Vel Y
value = 1034
ctrl = 0
;---------------------------------------------------------------------------
;EX X-Calibur Landing
[StateDef 1034]
type = C
movetype = I
physics = C
juggle = 0
anim = 1034
ctrl = 0

[State 1034, VelSet]
type = VelSet
trigger1 = Time = 0
y = 0

[State 1034, PosSet]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1034, PosAdd]
type = PosAdd
trigger1 = Time = [0,2]
x = 3

[State 1034, PosAdd]
type = PosAdd
trigger1 = Time = [3,5]
x = 2

[State 1034, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S101,0
volume = 0
channel = 1
freqmul = 1.0
loop = 0
pan = 0

[State 1034, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S40,1
volume = 0
channel = 2
freqmul = 1.0
loop = 0
pan = 0

[State 1034, Dust Explod 1]
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

[State 1034, Dust Explod 2]
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

[State 1034, Dust Explod 3]
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

[State 1034, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;LP I-Slasher
[StateDef 1040]
type = C
movetype = I
physics = C
juggle = 0
anim = 1040
ctrl = 0
poweradd = 45
facep2 = 1
velset = 0,0

[State 1040, Helper]
type = Helper
trigger1 = AnimElem = 7,=0
ID = 11040
pos = 45,-65
postype = p1
stateno = 11040
helpertype = normal
name = "I-Slasher"
keyctrl = 0
ownpal = 1
supermovetime = 1
size.xscale = 0.5
size.yscale = 0.5

[State 1040, end]
type = ChangeState
triggerall = AnimElem = 7,>0
trigger1 = NumHelper(11040) = 0
value = 1041
ctrl = 0
;---------------------------------------------------------------------------
;I-Slasher Catch
[StateDef 1041]
type = C
movetype = I
physics = C
juggle = 0
anim = IfElse(PrevStateNo=1044,1045,1041)
ctrl = 0
velset = 0,0

[State 1041, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = S1040,1
volume = 0
channel = 3
freqmul = 1.0
loop = 0
pan = 0

[State 1041, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;MP I-Slasher
[StateDef 1042]
type = C
movetype = A
physics = C
juggle = 0
anim = 1040
ctrl = 0
poweradd = 60
facep2 = 1
velset = 0,0

[State 1042, Helper]
type = Helper
trigger1 = AnimElem = 7,=0
ID = 11041
pos = 45,-65
postype = p1
stateno = 11040
helpertype = normal
name = "I-Slasher"
keyctrl = 0
ownpal = 1
supermovetime = 1
size.xscale = 0.5
size.yscale = 0.5

[State 1042, end]
type = ChangeState
triggerall = AnimElem = 7,>0
trigger1 = NumHelper(11041) = 0
value = 1041
ctrl = 0
;---------------------------------------------------------------------------
;HP I-Slasher
[StateDef 1043]
type = C
movetype = A
physics = C
juggle = 0
anim = 1040
ctrl = 0
poweradd = 85
facep2 = 1
velset = 0,0

[State 1043, Helper]
type = Helper
trigger1 = AnimElem = 7,=0
ID = 11042
pos = 45,-65
postype = p1
stateno = 11040
helpertype = normal
name = "I-Slasher"
keyctrl = 0
ownpal = 1
supermovetime = 1
size.xscale = 0.5
size.yscale = 0.5

[State 1043, end]
type = ChangeState
triggerall = AnimElem = 7,>0
trigger1 = NumHelper(11042) = 0
value = 1041
ctrl = 0

;---------------------------------------------------------------------------
;EX I-Slasher
[StateDef 1044]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd = ifelse(var(20) > 0, 0, -500)
facep2=1

[State 1044, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500

[State 1044, Anim]
type=changeanim
trigger1=!time
value=1044

[State 1044, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1044, Custom Combo Juggle Points Reset]
type = varset
trigger1 = !time && var(20)
var(15) = 0
ignorehitpause = 1

[State 1044, CC Reset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1044, ExFX]
type = varset
trigger1 = !time
var(25) = 44

[State 1044, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = 5, -50
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1044, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
channel = 1

[State 1044, Helper]
type = Helper
trigger1 = AnimElem = 7,=0
ID = 11043
pos = 45,-65
postype = p1
stateno = 11040
helpertype = normal
name = "I-Slasher"
keyctrl = 0
ownpal = 1
supermovetime = 1
size.xscale = 0.5
size.yscale = 0.5

[State 1044, end]
type = ChangeState
trigger1 = AnimElem = 7,>0
trigger1 = NumHelper(11043) = 0
value = 1041
ctrl = 0
;---------------------------------------------------------------------------
;LK Earring Bomb
[StateDef 1050]
type = S
movetype = A
physics = S
juggle = 0
anim = 1050
ctrl = 0
facep2 = 1
poweradd = 20
velset = 0,0

[State 1050, Helper]
type = Helper
trigger1 = AnimElem = 19
ID = 11050
pos = 40,-90
postype = p1
stateno = 11050
helpertype = normal
name = "Earring Bomb"
keyctrl = 0
ownpal = 1
supermovetime = 1

[State 1050, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 20
movetype = I

[State 1050, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;MK Earring Bomb
[StateDef 1051]
type = S
movetype = A
physics = S
juggle = 0
anim = 1050
ctrl = 0
facep2 = 1
poweradd = 30
velset = 0,0

[State 1051, Helper]
type = Helper
trigger1 = AnimElem = 19
ID = 11051
pos = 40,-90
postype = p1
stateno = 11050
helpertype = normal
name = "Earring Bomb"
keyctrl = 0
ownpal = 1
supermovetime = 1

[State 1051, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 20
movetype = I

[State 1051, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;HK Earring Bomb
[StateDef 1052]
type = S
movetype = A
physics = S
juggle = 0
anim = 1052
ctrl = 0
facep2 = 1
poweradd = 40
velset = 0,0

[State 1052, Helper]
type = Helper
trigger1 = AnimElem = 19
ID = 11052
pos = 40,-90
postype = p1
stateno = 11050
helpertype = normal
name = "Earring Bomb"
keyctrl = 0
ownpal = 1
supermovetime = 1

[State 1052, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 20
movetype = I

[State 1052, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Heart Attack
[StateDef 1053]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd = ifelse(var(20) > 0, 0, -500)
facep2=1

[State 1053, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500

[State 1053, Anim]
type=changeanim
trigger1=!time
value=1053

[State 1053, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1053, Custom Combo Juggle Points Reset]
type = varset
trigger1 = !time && var(20)
var(15) = 0
ignorehitpause = 1

[State 1053, CC Reset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1053, ExFX]
type = varset
trigger1 = !time
var(25) = 44

[State 1053, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = 0, -80
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1053, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
channel = 1

[State 1053, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S1053,0
volumescale = 100
channel = 0
freqmul = 1.0
loop = 0
pan = 0

[State 1053, Helper]
type = Helper
trigger1 = AnimElem = 15
helpertype = normal ;player
name = "Heart Attack"
ID = 11053
stateno = 11053
pos = 36,-70
postype = p1 
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 1053, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 16
movetype = I

[State 1053, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Heart Attack, P1
[StateDef 1054]
type = S
movetype = A
physics = S
juggle = 0
anim = 1054
ctrl = 0
poweradd = 0

[State 1054, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = S1054,0
volumescale = 100
channel = 0
freqmul = 1.0
loop = 0
pan = 0

[State 1054, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1







;PUNCH ZERO COUNTER
[STATEDEF 2900]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 0
faceP2 = 1

[STATE 2900,POSSET]
type=posset
trigger1=!time
y=0

[STATE 2900,ANIM]
type=changeanim
trigger1=!time
value=2900

[STATE 2900,DUST]
type = helper
trigger1 = Animelem=3
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[STATE 2900,WIDTH]
type = Width
trigger1 = 1
edge = 30,0

[STATE 2900,NOT HIT BY]
type = NotHitBy
trigger1 = Anim = 2900
trigger1 = AnimElemNo(0) = [1,5]
value = SCA
time = 1

[STATE 2900,HIT]
type=hitdef
trigger1= !var(16) && (var(15)<15 || var(20))
trigger1= !Time
ID = 2900
attr = S,SA
hitflag = MAF
guardflag = M
damage = ceil(ifelse(fvar(11) * 100 < 7, 7, fvar(11) * 100)), 7
getpower = 0
givepower = 0, 0
pausetime = ceil(13*(2-(var(20)>0))/2),ceil(13*(2-(var(20)>0))/2)
guard.pausetime = ceil(10*(2-(var(20)>0))/2),ceil(10*(2-(var(20)>0))/2)
animtype = Heavy
air.animtype = Heavy
fall.animtype = Diagup
ground.type = hIGH
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -3,-7.5
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2,-7
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = S-1 + 0*(var(33):=8013)
guard.sparkno = S-1 + 0*(var(34):=8001)
sparkXY=-10 + 0 * (var(35) := 155), var(36) := -70
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120

[STATE 2900,IDLE]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[STATE 2900,CHANGE STATE]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
 
;KICK ZERO COUNTER
[STATEDEF 2910]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 0

[STATE 2910,POSSET]
type=posset
trigger1=!time
y=0

[STATE 2910,ANIM]
type=changeanim
trigger1=!time
value=2910

[STATE 2910,NOT HIT BY]
type = nothitby
trigger1 = animelemtime(6) < 0
value = SCA
time = 1
ignorehitpause = 1

[STATE 2910,WIDTH]
type = Width
trigger1 = 1
edge = 40,0

[STATE 2910,HIT]
type = hitdef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
ID = 2910
attr = S, SA
hitFlag = MAF
guardFlag = M
damage =ceil(ifelse(fvar(11) * 100 < 7, 7, fvar(11) * 100)), 7
getPower = 0, 0
givePower = 0, 0
pausetime = ceil(13*(2-(var(20)>0))/2),ceil(13*(2-(var(20)>0))/2)
guard.pausetime = ceil(10*(2-(var(20)>0))/2),ceil(10*(2-(var(20)>0))/2)
animType = Back
air.animType = Back
fall.animType = Diagup
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = -6,-5.5
ground.cornerPush.velOff = 0
guard.velocity = -6
guard.cornerPush.velOff = 0
air.velocity = -6.46, -4.25
air.cornerPush.velOff = 0
yaccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = S-1 + 0*(var(33):=8013)
guard.sparkno = S-1 + 0*(var(34):=8001)
sparkXY=-10 + 0 * (var(35) := 155), var(36) := -36
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[STATE 2910,IDLE]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
movetype = I

[STATE 2910,CHANGE STATE]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1