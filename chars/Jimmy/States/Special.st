; _________________________________________
;| Character by ZMugens |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;
;SPECIAL MOVES=
;

;---------------------------------------------------------------------------
;Red Rage
[Statedef 1000]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=72*!var(20)
facep2=1

[state 1000,Posset]
type=posset
trigger1=!time
y=0

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1000, ifElse(var(10) = 1, 1001, 1002))

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 60,0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = 60,1

[State 1000, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 20000
ID = 20000
pos = 0,0
postype = p1
ownpal = 1
bindtime = -1
removetime = -2
sprpriority = 4
removeongethit = 1
ignorehitpause = 1

[State 1000, Helper]
type = Helper
trigger1 = AnimElem = 5
id = 1010
name = "1010"
pos = 30,-70
postype = P1
stateno = 1010
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
pausemovetime = 99999999999999
size.xscale=1.0+(palno=12)*0.5
size.yscale=1.0+(palno=12)*0.5

[State 1000, Width]
type = Width
trigger1 = AnimElemTime(5) = 0
value = 45,0

[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;EX Red Rage
[Statedef 1050]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=-500
facep2=1

[State 1050, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500

[State 1050, Anim]
type=changeanim
trigger1=!time
value=1050

[State 1050,Posset]
type=posset
trigger1=!time
y=0

[State 1050, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1050, Custom Combo Juggle Points Reset]
type = varset
trigger1 = !time && var(20)
var(15) = 0
ignorehitpause = 1

[State 1050, CC Reset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1050, ExFX]
type = varset
trigger1 = !time
var(25) = 44

[State 1050, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = -10, -65
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1050, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
channel = 1

[State 1050, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 1000,0
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 60,0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = 60,1

[State 1000, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 20000
ID = 20000
pos = 0,0
postype = p1
ownpal = 1
bindtime = -1
removetime = -2
sprpriority = 4
removeongethit = 1
ignorehitpause = 1

[State 1000, Helper]
type = Helper
trigger1 = AnimElem = 5
id = 1051
name = "1051"
pos = 30,-70
postype = P1
stateno = 1051
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
pausemovetime = 99999999999999
size.xscale=1.1
size.yscale=1.1



[State 1000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Shouryuu Da
[Statedef 1100]
type = A
movetype= A
physics = N
poweradd= 30
velset = 0,0
anim = 1100
ctrl = 0


[State 1100]
type = nothitby
trigger1=time<=2
value=,AA,AP

[State 1100, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 2
value = 61,0

[State 1100, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 1
value = 61,1

[State 1100, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 21000
ID = 21000
pos = 0,0
postype = p1
ownpal = 1
bindtime = 22
removetime = -2
sprpriority = 4
removeongethit = 1
ignorehitpause = 0


[State 1100, VelSet]
type = VelSet
trigger1 = Animelem = 2
x = 2.5

[State 1100, VelSet]
type = VelSet
trigger1 = Animelem = 2
y = -5

[State 1100, VelSet]
type = VelSet
trigger1 = Animelem = 6
x = 0

[State 1100, VelAdd]
type = VelAdd
trigger1 = Animelem = 5,>= 0
y = .38

[State 1100, VelMul]
type = VelMul
trigger1 = Animelem = 2,>= 0
x = .95

[State 1100, VelMul]
type = VelMul
trigger1 = Animelem = 5,<= 0
y = .95

[State 1100, StateTypeSet]
type = StateTypeSet
trigger1 = !time
StateType = A
physics = N

[State 1130, Ground Hit 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3 && var(40) != 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 120
ground.velocity = -0.5, -10
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -0.5, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -40
palFX.time = 52
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120


[State 1130, Flame Particle Timer Set]
type = VarSet
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(3) < 0
trigger1 = !(Target, HitShakeOver)
var(45) = ifElse(var(40) = 3, 30, 52)
ignoreHitPause = 1
persistent = 0

[State 1130, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1


[State 1100, VelSet]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 1110

;Ex / Shouryuu Da Landing
[Statedef 1110]
type = S
movetype = I
physics = S
anim = 1110
ctrl = 0
velset = 0,0
sprpriority = 2

[State 1110, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 1110, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 1
value = 40,0

[State 1110, Changestate]
type = Changestate
trigger1 = Animtime = 0
value = 0
ctrl = 1

;Ex Shouryuu Da
[Statedef 1150]
type = A
movetype= A
physics = N
ctrl=0
velset=0,0
sprpriority=1
poweradd=-500
facep2=1

[State 1050, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500

[State 1050, Anim]
type=changeanim
trigger1=!time
value=1150

[State 1050,Posset]
type=posset
trigger1=!time
y=0

[State 1050, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1050, Custom Combo Juggle Points Reset]
type = varset
trigger1 = !time && var(20)
var(15) = 0
ignorehitpause = 1

[State 1050, CC Reset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1050, ExFX]
type = varset
trigger1 = !time
var(25) = 44

[State 1050, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = -10, -65
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1050, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
channel = 1
[State 1150, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 2
value = 61,0

[State 1150, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 3
value = 61,1

[State 1150, Explod]
type = Explod
trigger1 = AnimElem = 1
anim = 21500
ID = 21500
pos = 0,0
postype = p1
ownpal = 1
bindtime = 26
removetime = -2
sprpriority = 4
removeongethit = 1
ignorehitpause = 0

[State 1150, Helper]
type = Helper
trigger1 = MoveHit
trigger1 = HitPauseTime = 1
id = 8150
name = "8150"
pos =0,0
postype = P2
stateno = 8150
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 1150, VelSet]
type = VelSet
trigger1 = Animelem = 4
x = 3.5

[State 1150, VelSet]
type = VelSet
trigger1 = Animelem = 4
y = -6.5

[State 1150, VelSet]
type = VelSet
trigger1 = Animelem = 8
x = 0

[State 1150, VelAdd]
type = VelAdd
trigger1 = Animelem = 7,>= 0
y = .38

[State 1150, VelMul]
type = VelMul
trigger1 = Animelem = 4,>= 0
x = .95

[State 1150, VelMul]
type = VelMul
trigger1 = Animelem = 7,<= 0
y = .95


[State 1150, HitDef]
type = HitDef
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
attr = A, SA
animtype = Hard
damage = 35, 6
guardflag = M
hitflag = MAF
pausetime = 12, 12
ground.type = High
guard.slidetime = 18
ground.hittime = 20
guard.hittime = (20) - 6
ground.velocity = -5, -6.5
air.velocity = -5, -6.5
fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -70
palFX.time = 52
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1150, HitDef]
type = HitDef
trigger1 = AnimElem = 5
attr = A, SA
animtype = Up
damage = 55, 6
guardflag = MA
hitflag = MAF
pausetime = 12, 12
ground.type = High
guard.slidetime = 18
ground.hittime = 20
guard.hittime = (20) - 6
ground.velocity = -5, -8.5
air.velocity = -5, -8.5
fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -70
palFX.time = 52
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, Flame Particle Timer Set]
type = VarSet
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(3) < 0
trigger1 = !(Target, HitShakeOver)
var(45) = ifElse(var(40) = 3, 30, 52)
ignoreHitPause = 1
persistent = 0

[State 1130, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1150, VelSet]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 1110

;Heat Hurricane X
[Statedef 1200]
type = S
movetype = A
physics = N
poweradd = 80
velset = 0,0
ctrl = 0
anim = 1200



[State 1270];pal12
type =nothitby
triggerall=palno=12
trigger1=time=[10,15]
value=SCA

[State 1250]
type=Nothitby
trigger1=animelemtime(13)=[-1,1]
value=SCA
time=1

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 62,0
channel = 0

[State 1200, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 4
value = 62,1

[State 1200, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 13
value = 62,2

[State 1200, Explod]
type = Explod
trigger1 = AnimElem = 13
anim = 22000
ID = 22000
pos = 0,0
postype = p1
ownpal = 1
bindtime = -1
removetime = -2
sprpriority = 4
removeongethit = 1
ignorehitpause = 0


[State 1130, Flame Particles]
type = Helper
triggerall = AnimElemtime(10) > 1
trigger1 = MoveHit
trigger1 = HitPauseTime = 1
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1200, VelSet]
type = VelSet
trigger1 = Animelem = 4
x = 8.5

[State 1200, VelSet]
type = VelSet
trigger1 = Animelem = 6
x = 0

[State 1200, VelMul]
type = VelMul
trigger1 = Animelem = 4,>= 0
x = .95

[State 1200, HitDef]
type = HitDef
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger2 = MoveContact = 0
attr = S, SA
animtype = Medium
damage = 22,(palno=12)*5
guardflag = MA
pausetime = 12,12
ground.type = Low
ground.slidetime = 14
ground.hittime = 20
guard.hittime = (20) - 6
ground.velocity = -2.5
air.velocity = -2.5,-4
fall = 0
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=-65
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1200, HitDef]
type = HitDef
trigger1 = AnimElem = 9
attr = S, SA
animtype = Medium
damage = 22,(palno=12)*5
guardflag = MA
pausetime = 12,12
ground.type = High
ground.slidetime = 17
ground.hittime = 20
guard.hittime = (20) - 6
ground.velocity = -2.5
air.velocity = -2.5,-4
fall = 0
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=-65
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48


[State 1200, HitDef]
type = HitDef
trigger1 = AnimElem = 13
attr = S, SA
animtype = Up
damage = 75,15+(palno=12)*5
guardflag = M
pausetime = 16,16
ground.type = High
ground.slidetime = 20
ground.hittime = 22
guard.hittime = (22) - 6
ground.velocity = -5,-5.7
air.velocity = -3.2,-4.2
p2stateno = 241
p2facing = 1
palfx.time = 48
palfx.color = 0
palfx.invertall = 1
palfx.mul=256,64,0
palfx.sinadd = 50,200,0,8
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=-65
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48



[State 1200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;Heat Hurricane Y
[Statedef 1210]
type = S
movetype = A
physics = N
poweradd = 80
velset = 0,0
ctrl = 0
anim = 1210



[State 1270];pal12
type =nothitby
triggerall=palno=12
trigger1=time=[10,15]
value=SCA

[State 1250]
type=Nothitby
trigger1=animelemtime(13)=[-1,1]
value=SCA
time=1

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 62,0
channel = 0

[State 1200, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 4
value = 62,1

[State 1200, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 13
value = 62,2

[State 1270, Explod]
type = Explod
trigger1 = AnimElem = 12
anim = 1215
ID = 1215
pos = 0,0
postype = p1
ownpal = 1
bindtime = -1
removetime = -2
sprpriority = 4
removeongethit = 1
ignorehitpause = 0


[State 1130, Flame Particles]
type = Helper
triggerall = AnimElemtime(10) > 1
trigger1 = MoveHit
trigger1 = HitPauseTime = 1
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1200, VelSet]
type = VelSet
trigger1 = Animelem = 4
x = 8.5

[State 1200, VelSet]
type = VelSet
trigger1 = Animelem = 6
x = 0

[State 1200, VelMul]
type = VelMul
trigger1 = Animelem = 4,>= 0
x = .95

[State 1200, HitDef]
type = HitDef
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger2 = MoveContact = 0
attr = S, SA
animtype = Medium
damage = 22,(palno=12)*5
guardflag = MA
pausetime = 12,12
ground.type = Low
ground.slidetime = 14
ground.hittime = 20
guard.hittime = (20) - 6
ground.velocity = -2.5
air.velocity = -2.5,-4
fall = 0
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=-65
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1200, HitDef]
type = HitDef
trigger1 = AnimElem = 9
attr = S, SA
animtype = Medium
damage = 22,(palno=12)*5
guardflag = MA
pausetime = 12,12
ground.type = High
ground.slidetime = 17
ground.hittime = 20
guard.hittime = (20) - 6
ground.velocity = -2.5
air.velocity = -2.5,-4
fall = 0
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=-65
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48


[State 1270, HitDef]
type = HitDef
trigger1 = AnimElem = 17
attr = S, SA
animtype = Up
damage = 75, 15+(palno=12)*5
guardflag = HA
hitflag = MAF
pausetime = 12, 12
guard.pausetime=20,20
ground.type = Hight 
ground.slidetime = 20 
ground.hittime = 20 
guard.hittime = (20) - 6
ground.velocity = -1, 4
guard.velocity=-5
air.type = High 
air.velocity = -2.5, 8 
air.hittime = 12 
fall = 1
fall.recover = 0
fall.envshake.time = 14
fall.envshake.freq = 180
fall.envshake.ampl = 4
palfx.time = 48
palfx.invertall = 1
palfx.mul=256,64,0
palfx.sinadd = 50,200,0,8
getpower=220,150
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=-70
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48



[State 1200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;Heat Hurricane Z
[Statedef 1220]
type = S
movetype = A
physics = N
poweradd = 80
velset = 0,0
ctrl = 0
anim = 1220



[State 1270];pal12
type =nothitby
triggerall=palno=12
trigger1=time=[10,15]
value=SCA

[State 1250]
type=Nothitby
trigger1=animelemtime(13)=[-1,1]
value=SCA
time=1

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 62,0
channel = 0

[State 1200, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 4
value = 62,1

[State 1200, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 13
value = 62,2

[State 1280, Explod]
type = Explod
trigger1 = AnimElem = 15
anim = 22800
ID = 22800
pos = 0,0
postype = p1
ownpal = 1
bindtime = -1
removetime = -2
sprpriority = 4
removeongethit = 1
ignorehitpause = 0


[State 1130, Flame Particles]
type = Helper
triggerall = AnimElemtime(10) > 1
trigger1 = MoveHit
trigger1 = HitPauseTime = 1
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1200, VelSet]
type = VelSet
trigger1 = Animelem = 4
x = 8.5

[State 1200, VelSet]
type = VelSet
trigger1 = Animelem = 6
x = 0

[State 1200, VelMul]
type = VelMul
trigger1 = Animelem = 4,>= 0
x = .95

[State 1200, VelSet]
type = VelSet
trigger1 = Animelem = 15
x = 1

[State 1200, HitDef]
type = HitDef
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger2 = MoveContact = 0
attr = S, SA
animtype = Medium
damage = 22,(palno=12)*5
guardflag = MA
pausetime = 12,12
ground.type = Low
ground.slidetime = 14
ground.hittime = 20
guard.hittime = (20) - 6
ground.velocity = -2.5
air.velocity = -2.5,-4
fall = 0
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=-65
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1200, HitDef]
type = HitDef
trigger1 = AnimElem = 9
attr = S, SA
animtype = Medium
damage = 22,(palno=12)*5
guardflag = MA
pausetime = 12,12
ground.type = High
ground.slidetime = 17
ground.hittime = 20
guard.hittime = (20) - 6
ground.velocity = -2.5
air.velocity = -2.5,-4
fall = 0
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=-65
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48


[State 1280, HitDef]
type = HitDef
trigger1 = AnimElem = 15
attr = S, SA
animtype = Medium
damage = 22,5+(palno=12)*5
guardflag = L
pausetime = 8,8
ground.type = Low
ground.slidetime = 12
ground.hittime = 20
guard.hittime = (20) - 6
ground.velocity = -2.5
air.velocity = -2.5,-5
fall = 0
id=1220
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=-65
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1280, HitDef]
type = HitDef
trigger1 = AnimElem = 17
attr = S, SA
animtype = Up
damage = 75, 12+(palno=12)*5
guardflag = L
hitflag = MAF
pausetime = 12, 12
ground.type = High
guard.slidetime = 15
ground.hittime = 15
guard.hittime = (15) - 6
ground.velocity = -2, -7.8
air.velocity = -2, -7.8
fall = 1
fall.recover = 0
palfx.time = 32
palfx.invertall = 1
palfx.mul=256,64,0
palfx.sinadd = 50,200,0,8
id=1220
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=-70
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48




[State 1200, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;Heat Hurricane EX
[Statedef 1230]
type = S
movetype = A
physics = N
poweradd = -500
velset = 0,0
ctrl = 0


[State 1050, Anim]
type=changeanim
trigger1=!time
value=1230

[State 1050,Posset]
type=posset
trigger1=!time
y=0

[State 1050, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1050, Custom Combo Juggle Points Reset]
type = varset
trigger1 = !time && var(20)
var(15) = 0
ignorehitpause = 1

[State 1050, CC Reset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1050, ExFX]
type = varset
trigger1 = !time
var(25) = 125

[State 1050, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = -10, -65
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1050, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
channel = 1

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 62,0
channel = 0

[State 1200, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 4
value = 62,1

[State 1200, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 13
value = 62,2

[State 210, PlaySnd]
type=PlaySND
trigger1=AnimElem=18
value=s50,1


[State 1280, Explod]
type = Explod
trigger1 = animelem=15
anim = 1236
ID = 1236
pos = 0,0
postype = p1
ownpal = 1
bindtime = -1
removetime = -2
sprpriority = 4
removeongethit = 1
ignorehitpause = 0


[State 1280, Explod]
type = Explod
trigger1 = animelem=20
anim = 1235
ID = 1235
pos = -10,0
postype = p1
ownpal = 1
bindtime = -1
removetime = -2
sprpriority = 4
removeongethit = 1
ignorehitpause = 0




[State 1000, Helper]
type = Helper
trigger1 = AnimElem = 20
id = 1237
name = "1237"
pos = -10,0
postype = P1
stateno = 1237
facing=1
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
pausemovetime = 99999999999999
supermovetime=9999999999999
size.yscale=0.4
size.xscale=0.6


[State 1000, Helper]
type = Helper
trigger1 = AnimElem = 20
id = 1237
name = "1237"
pos = 10,0
postype = P1
stateno = 1237
facing=-1
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
pausemovetime = 99999999999999
supermovetime=9999999999999
size.yscale=0.4
size.xscale=0.6



[State 1200, VelSet]
type = VelSet
trigger1 = Animelem = 4
x = 8.5

[State 1200, VelSet]
type = VelSet
trigger1 = Animelem = 6
x = 0

[State 1200, VelMul]
type = VelMul
trigger1 = Animelem = 4,>= 0
x = .95

[State 1200, HitDef]
type = HitDef
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger2 = MoveContact = 0
attr = S, SA
animtype = Medium
damage = 22,(palno=12)*5
guardflag = MA
pausetime = 12,12
ground.type = Low
ground.slidetime = 14
ground.hittime = 20
guard.hittime = (20) - 6
ground.velocity = -2.5
air.velocity = -2.5,-4
fall = 0
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=-65
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48



[State 1200, HitDef]
type = HitDef
trigger1 = AnimElem = 9
attr = S, SA
animtype = Up
damage = 22,(palno=12)*5
guardflag = MA
pausetime = 12,12
ground.type = High
ground.slidetime = 17
ground.hittime = 20
guard.hittime = (20) - 6
ground.velocity = 0,-11
guard.velocity = -5.5
air.velocity = -4,-11
fall = 1
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=-65
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1200, HitDef]
type = HitDef
trigger1 = AnimElem = 20
attr = S, SA
animtype = Up
damage = 22,(palno=12)*5
guardflag = MA
hitflag = MAFD
pausetime = 12,12
ground.type = High
ground.slidetime = 17
ground.hittime = 20
guard.hittime = (20) - 6
ground.velocity = 0,2
guard.velocity = -5.5
air.velocity = -4,2
fall = 1
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8014)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=-10
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48


[State 1280, VelMul]
type = VelMul
trigger1=1
x = .95


[State 1280, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------
;-| ƒq[ƒgƒhƒ‰ƒSƒ“EŽã@Œã‚ë”h¶‚Ì‰Š |-------------------------------------------------------
;------------------------------------------------------------------------------
[Statedef 1237]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 1237
sprpriority=4

[State 1130, Flame Particle Timer Set]
type = VarSet
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
trigger1 = !(Target, HitShakeOver)
var(45) = ifElse(var(40) = 3, 30, 53)
ignoreHitPause = 1
persistent = 0

[State 1130, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1


[State 20001]
type = Hitdef
trigger1 = !movecontact&&!movereversed
attr = A, SP
damage = 50
animtype = Heavy
hitflag = MAF
guardflag = MA
pausetime = 1,10
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
guard.hittime = (18) - 6
guard.ctrltime = 10
ground.velocity = 0,0
guard.velocity = 0
air.velocity = 0, -5.5
fall = 0
fall.recover = 1
air.fall = 1
fall.recovertime=20
hitsound = s61,1
guardsound = s3,0
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=0
palFX.time = 52
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4


[State 1000, Helper]
type = Helper
triggerall=AnimElem=3
trigger1=ishelper(1237)
trigger2=ishelper(1238)
id = 1238+ishelper(1238)
name = "1237"
pos = -23,0
postype = P1
stateno = 1237
facing=1
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
pausemovetime = 99999999999999
supermovetime=9999999999999
size.yscale=0.45
size.xscale=0.6


[State 1250]
type=destroyself
trigger1=!Animtime
;---------------------------------------------------
;
[Statedef 21255]
type = S
movetype = A
physics = N
ctrl = 0
velset = 6
anim = 20001
sprpriority = 4

[State 20501, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 20501, Projectile]
type = Projectile
trigger1 = time = 1
projanim = 21255
Projhitanim = 20003
Projremanim = 9999999999
offset = 0, 0
projpriority = 1
projsprpriority = 5
velocity = 6
attr = S, SP
damage = ceil(140*root,fvar(39)),10+(root,palno=12)*10
animtype = Heavy
hitflag = MAFP
guardflag = MA
pausetime = 20,20
sparkno = S6002
guard.sparkno = S6011
sparkxy = 10, 0
hitsound = S4, 5
guardsound = S2,0
ground.type = Low
ground.slidetime = 20
ground.hittime = 26
ground.velocity = -8.5,0
guard.velocity = -7.5
air.velocity = -4, -5.5
fall = 0
fall.recover = 1
air.fall = 1
fall.recovertime=40
ProjID = 1000
getpower = 150,120
palfx.time = 32
palfx.invertall = 1
palfx.mul=256,64,0
palfx.sinadd = 50,200,0,8

[State 20501, DestroySelf]
type = DestroySelf
triggerall = time > 1
trigger1 = FrontEdgeDist <= -45

[State 20501, ChangeState]
type = ChangeState
triggerall = time > 1
trigger1 = root,NumProjID(1000) = 0
value = 20502

;Cannon Kick A e B
[Statedef 1300]
type = A
movetype= A
physics = N
poweradd= 30
velset = 0,0
anim = 1300
ctrl = 0

[State 1300, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 1
value = 63,0

[State 1300, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 1
value = 1,5

[State 1300, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 8
value = 3,4

[State 1300, VelSet]
type = VelSet
trigger1 = Animelem = 1
x = 2.5

[State 1300, VelSet]
type = VelSet
trigger1 = Animelem = 1
y = -6.5

[State 1300, VelAdd]
type = VelAdd
trigger1 = Animelem = 1,>= 0
y = .42

[State 1300, HitDef]
type = HitDef
trigger1 = !movecontact&&!movereversed
attr = A, SA
animtype = Hard
damage = 50,5
guardflag = HA
pausetime = 12,12
ground.type = High
ground.slidetime = 9
ground.hittime = 11+(P2Statetype=C)*3
guard.hittime = (11+(P2Statetype=C)*3) - 6
ground.velocity = -5.5
air.velocity = -6.5,-1
fall = 0
fall.recovertime=32
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=-65
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 1300, VelSet]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 1310

;Cannon Kick C
[Statedef 1302]
type = A
movetype= A
physics = N
poweradd= 30
velset = 0,0
anim = 1300
ctrl = 0

[State 1300, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 1
value = 63,0

[State 1300, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 1
value = 1,5

[State 1300, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 8
value = 3,4

[State 1300, VelSet]
type = VelSet
trigger1 = Animelem = 1
x = 4.5

[State 1300, VelSet]
type = VelSet
trigger1 = Animelem = 1
y = -6.5

[State 1300, VelAdd]
type = VelAdd
trigger1 = Animelem = 1,>= 0
y = .42

[State 1300, HitDef]
type = HitDef
trigger1 = !movecontact&&!movereversed
attr = A, SA
animtype = Hard
damage = 85,5
guardflag = HA
pausetime = 12,12
ground.type = High
ground.slidetime = 9
ground.hittime = 11+(P2Statetype=C)*3
guard.hittime = (11+(P2Statetype=C)*3) - 6
ground.velocity = -2,-5
air.velocity = -2,-5
fall = 1
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=-65
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48



[State 1300, VelSet]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 1310

;------------------------------------------------------------------------------
;-| ƒLƒƒƒmƒ“ƒLƒbƒN ’…’n |------------------------------------------------------
;------------------------------------------------------------------------------
[Statedef 1310]
type = S
movetype = I
physics = S
anim = 1310
ctrl = 0
velset = 0,0
sprpriority = 2

[State 1310, PosSet]
type = PosSet
trigger1 = time = 0
y = 0



[State 1310, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 1
value = 52,0

[State 1310, Changestate]
type = Changestate
trigger1 = Animtime = 0
value = 0
ctrl = 1

;Cannon Kick EX
[Statedef 1350]
type = A
movetype= A
physics = N
ctrl=0
velset=0,0
sprpriority=1
poweradd=-500
facep2=1

[State 1050, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500

[State 1050, Anim]
type=changeanim
trigger1=!time
value=1350

[State 1050,Posset]
type=posset
trigger1=!time
y=0

[State 1050, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1050, Custom Combo Juggle Points Reset]
type = varset
trigger1 = !time && var(20)
var(15) = 0
ignorehitpause = 1

[State 1050, CC Reset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1050, ExFX]
type = varset
trigger1 = !time
var(25) = 44

[State 1050, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = -10, -65
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1050, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
channel = 1

[State 1350, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 1
value = 63,0

[State 1350, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 1
value = 63,1

[State 1350, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 8
value = 3,4

[State 1350, VelSet]
type = VelSet
trigger1 = Animelem = 1
x = 5.5

[State 1350, VelSet]
type = VelSet
trigger1 = Animelem = 1
y = -6.5

[State 1350, VelAdd]
type = VelAdd
trigger1 = Animelem = 1,>= 0
y = .42

[State 1270, Explod]
type = Explod
trigger1 = AnimElem = 8
anim = 1351
ID = 1351
pos = 17,-15
postype = p1
ownpal = 1
bindtime = -1
removetime = -2
sprpriority = 4
removeongethit = 1
ignorehitpause = 0

[State 1100, HitDef]
type = HitDef
trigger1 = animelem = 9
trigger2 = animelem = 10
attr = A, SA
animtype = Hard
damage = 60, 6
guardflag = HA
hitflag = MAF
pausetime = 12, 12
ground.type = High
guard.slidetime = 16
ground.hittime = 20
guard.hittime = (20) - 6
ground.velocity = -5, 2
air.velocity = -5, 4.5
fall = 1
fall.recover = 0
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=-65
palFX.time = 52
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4

[State 1130, Flame Particle Timer Set]
type = VarSet
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(3) < 0
trigger1 = !(Target, HitShakeOver)
var(45) = ifElse(var(40) = 3, 30, 52)
ignoreHitPause = 1
persistent = 0

[State 1130, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1


[State 1350, VelSet]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 1360

;------------------------------------------------------------------------------
;-| ƒLƒƒƒmƒ“ƒLƒbƒN‹­ ’…’n |------------------------------------------------------
;------------------------------------------------------------------------------
[Statedef 1360]
type = S
movetype = I
physics = S
anim = 1360
ctrl = 0
velset = 0,0
sprpriority = 2

[State 1310, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 1310, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 1
value = 52,0


[State 1310, Changestate]
type = Changestate
trigger1 = Animtime = 0
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
sparkxy = -10 + 0*(var(35):=92), var(36):=-77
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
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = S-1 + 0*(var(33):=8013)
guard.sparkno = S-1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=76), var(36):=-83
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