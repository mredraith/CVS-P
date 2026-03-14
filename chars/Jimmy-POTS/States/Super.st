; _________________________________________
;| Character by ZMugens               |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;
;SUPER MOVES=
;

;Gun Blow
[Statedef 2000]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=-1000
facep2=1

[State 3000, Anim]
type=changeanim
trigger1=!time
value=2000
;---------------------------------------------------
[State 3000, Superpause FX]
type = helper
trigger1 = Time = 2
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = 3, -65
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = Time = 2
time = 32
movetime = 32
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0


;---------------------------------------------------

[State 2000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 64,0

[State 2000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 64,1

[State 2000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = 62,1


[State 2000, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 30000
ID = 30000
pos = 0,0
postype = p1
ownpal = 1
bindtime = -1
removetime = 31
supermove = 1
sprpriority = 3
persistent = 0
removeongethit = 1
ignorehitpause = 1

[State 2000, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 30001
ID = 30001
pos = 0,0
postype = p1
ownpal = 1
bindtime = -1
removetime = -2
supermove = 1
sprpriority = 3
persistent = 0
removeongethit = 1
ignorehitpause = 1

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


[State 2000, PosAdd]
type = PosAdd
trigger1 = Animelem = 4
trigger2 = Animelem = 5
trigger3 = Animelem = 6
trigger4 = Animelem = 12
x = 16

[State 2000, VelSet]
type = VelSet
trigger1 = Animelem = 6
x = 9+((prevstateno=[100,101])||prevstateno=250)*2

[State 2000, VelSet]
type = VelSet
trigger1 = Animelem = 12
x = 0

[State 2000, VelMul]
type = VelMul
trigger1 = Animelem = 8,>= 0
x = .95

[State 2000, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HA
animtype = Diagup
damage = ceil(ifElse(fvar(11) * 150 < 7, 7, fvar(11) * 150)), 7
guardflag = M
hitflag = MAF
getpower  = 10,5
givepower = 10,5
pausetime = 30, 30
ground.type = High
guard.slidetime = 13
ground.hittime  = 21
guard.hittime = (21) - 6
ground.velocity = -10,-2
guard.velocity=-12
air.velocity = -10,-2
fall = 1
fall.recover=0
kill=1
hitsound = s2,3200
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 55), var(36) := -65
palFX.time = 52
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4


[State 2000, ChangeState]
type = ChangeAnim
trigger1 = Moveguarded = 1&&animelemno(0)<9
value = 2000
elem=9

[State 2000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 2050]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=-1500
facep2=1



[State 3000, Anim]
type=changeanim
trigger1=!time
value=2050
;---------------------------------------------------
[State 3000, Superpause FX]
type = helper
trigger1 =!time
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = 3, -65
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 =!time
time = 32
movetime = 32
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0
;---------------------------------------------------

[State 2000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 64,0

[State 2000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 64,1

[State 2000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = 62,1

[State 2000, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 30000
ID = 30000
pos = 0,0
postype = p1
ownpal = 1
bindtime = -1
removetime = 31
supermove = 1
sprpriority = 3
persistent = 0
removeongethit = 1
ignorehitpause = 1

[State 2000, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 30001
ID = 30001
pos = 0,0
postype = p1
ownpal = 1
bindtime = -1
removetime = -2
supermove = 1
sprpriority = 3
persistent = 0
removeongethit = 1
ignorehitpause = 1

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

[State 2000, PosAdd]
type = PosAdd
trigger1 = Animelem = 4
trigger2 = Animelem = 5
trigger3 = Animelem = 6
trigger4 = Animelem = 12
x = 16

[State 2000, VelSet]
type = VelSet
trigger1 = Animelem = 6
x = 9+((prevstateno=[100,101])||prevstateno=250)*2

[State 2000, VelSet]
type = VelSet
trigger1 = Animelem = 12
x = 0

[State 2000, VelMul]
type = VelMul
trigger1 = Animelem = 8,>= 0
x = .95

[State 2000, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HA
animtype = Hard
damage = 100+((prevstateno=[100,101])||prevstateno=250)*30, 6
guardflag = M
hitflag = MAF
getpower  = 10,5
givepower = 10,5
pausetime = 32, 32
ground.type = High
guard.slidetime = 13
ground.hittime  = 21
guard.hittime = (21) - 6
ground.velocity = 0
guard.velocity=-12
air.velocity = -3,-1.5
fall = 0
fall.recover=0
palfx.time = 48
palfx.color = 0
palfx.invertall = 1
palfx.mul=256,64,0
palfx.sinadd = 50,200,0,8
kill=0
guard.kill=1
hitsound = s2,3200
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 55), var(36) := -65
palFX.time = 52
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4

[State 2000, ChangeState]
type = ChangeState
trigger1 = MoveHit = 1
value = 2060


[State 2000, ChangeState]
type = ChangeAnim
trigger1 = Moveguarded = 1&&animelemno(0)<9
value = 2050
elem=9

[State 2000, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 2060]
type    = S
movetype = A
physics = N
poweradd = 60
velset = 0,0
ctrl = 0
anim = 2060

[State 2060]
type=nothitby
trigger1=!movecontact
trigger1=time<15
value=SCA

[State 2010, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 3
value = 50,3

[State 2010, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 3
value = 62,2

[State 2010, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 30100
ID = 30100
pos = 0,0
postype = p1
ownpal = 1
bindtime = -1
removetime = -2
sprpriority = 4
removeongethit = 1
ignorehitpause = 0

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

[State 2010, VelSet]
type = VelSet
trigger1 = Animelem = 1
x = 10.5

[State 2010, VelSet]
type = VelSet
trigger1 = Animelem = 2,8
x = 0

[State 2010, VelMul]
type = VelMul
trigger1 = Animelem = 1,>= 0
x = .96

[State 2010, HitDef]
type = HitDef
trigger1 = Time = 0
attr = S, HA
animtype = Up
damage = ceil(ifElse(fvar(11) * 150 < 7, 7, fvar(11) * 150)), 7
guardflag = MA
hitflag = MAF
getpower  = 10,5
givepower = 10,5
pausetime = 32, 32
ground.type = High
guard.slidetime = 6
ground.hittime  = 15
guard.hittime = (15) - 6
ground.velocity = -1.5, -9.5
air.velocity = -1.5, -9.5
fall = 1
fall.recover = 0
envshake.time = 32
envshake.freq = 180
envshake.ampl = 4
id=2010
hitsound = s2,3200
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 55), var(36) := -70
palFX.time = 52
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4

[State 2010, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 2100]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=-2000
facep2=1

[State 3000, Anim]
type=changeanim
trigger1=!time
value=2100

;---------------------------------------------------
[State 3050, Super Pause FX]
type = Helper
trigger1 = Time = 2
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 3, -65
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3050, Super Pause]
type = SuperPause
trigger1 = Time = 2
time = 32
moveTime = 32
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0
;---------------------------------------------------

[State 2100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 64,0

[State 2100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 64,1

[State 2100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = 62,1

[State 2100, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 30000
ID = 30000
pos = 0,0
postype = p1
ownpal = 1
bindtime = -1
removetime = 31
supermove = 1
sprpriority = 3
persistent = 0
removeongethit = 1
ignorehitpause = 1

[State 2100, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 30001
ID = 30001
pos = 0,0
postype = p1
ownpal = 1
bindtime = -1
removetime = -2
supermove = 1
sprpriority = 3
persistent = 0
removeongethit = 1
ignorehitpause = 1

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


[State 2100, PosAdd]
type = PosAdd
trigger1 = Animelem = 4
trigger2 = Animelem = 5
trigger3 = Animelem = 12
x = 16

[State 2100, VelSet]
type = VelSet
trigger1 = Animelem = 6
x = 12+((prevstateno=[100,101])||prevstateno=250)*3

[State 2100, VelSet]
type = VelSet
trigger1 = Animelem = 12
x = 0

[State 2100, VelMul]
type = VelMul
trigger1 = Animelem = 8,>= 0
x = .95

[State 2100, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HA
animtype = Hard
damage = ceil(ifElse(fvar(11) * 50 < 7, 7, fvar(11) * 50)), 7
guardflag = M
hitflag = MAF
getpower  = 10,5
givepower = 10,5
pausetime = 32, 32
ground.type = High
guard.slidetime = 13
ground.hittime  = 30
guard.hittime = (30) - 6
air.hittime  = 30
ground.velocity = 0
guard.velocity=-12
air.velocity = -3.2,-1.5
fall = 0
fall.recover=0
palfx.time = 48
palfx.color = 0
palfx.invertall = 1
palfx.mul=256,64,0
palfx.sinadd = 50,200,0,8
kill=0
guard.kill=1
hitsound = s2,3200
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 55), var(36) := -65
palFX.time = 52
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4

[State 2100, ChangeState]
type = ChangeState
trigger1 = MoveHit = 1
value = 2110


[State 2000, ChangeState]
type = ChangeAnim
trigger1 = Moveguarded = 1&&animelemno(0)<9
value = 2100
elem=9

[State 2100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 2110]
type    = S
movetype = A
physics = N
poweradd = 60
velset = 0,0
ctrl = 0
anim = 2110

[State 1100]
type=targetbind
trigger1=numtarget
trigger1=!time
trigger1=P2Dist x<0
pos=20,P2Dist y

[State 1100]
type=targetbind
trigger1=numtarget
trigger1=!time
trigger1=target,statetype=A&&target,pos y>-10
pos=P2Dist x,-10

[State 1100]
type = nothitby
trigger1=time<=60
value=SCA


[State 2110, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 3
value = 50,3

[State 2110, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 3
trigger2 = AnimElem = 16
value = 62,2

[State 2110, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 15
value = 65,0

[State 2110, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 18
value = 65,1

[State 2110, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 31100
ID = 31100
pos = 0,0
postype = p1
ownpal = 1
bindtime = -1
removetime = -2
sprpriority = 4
removeongethit = 1
ignorehitpause = 0

[State 2110, Explod]
type = Explod
trigger1 = AnimElem = 18
anim = 31101
ID = 31101
pos = 0,0
postype = p1
ownpal = 1
bindtime = -1
removetime = -2
sprpriority = 4
removeongethit = 1
ignorehitpause = 0

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

[State 2110, VelSet]
type = VelSet
trigger1 = Animelem = 1
x = 11.5

[State 2110, VelSet]
type = VelSet
trigger1 = Animelem = 2,8
x = 0

[State 2110, VelMul]
type = VelMul
trigger1 = Animelem = 1,>= 0
x = .96

[State 2110, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = S, HA
animtype = Up
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 7
guardflag = MA
hitflag = MAF
getpower  = 10,5
givepower = 10,5
pausetime = 32, 32
ground.type = High
guard.slidetime = 6
ground.hittime  = 15
guard.hittime = (15) - 6
ground.velocity = -.5, -8.5
air.velocity = 0, -8.5
fall = 1
fall.recover = 0
palfx.time = 48
palfx.color = 0
palfx.invertall = 1
palfx.mul=256,64,0
palfx.sinadd = 50,200,0,8
kill=0
guard.kill=1
id=2110
hitsound = s2,3200
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 55), var(36) := -70
palFX.time = 52
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4

[State 2110, HitDef]
type = HitDef
trigger1 = AnimElem = 19
attr = S, HP
animtype = DiagUp
damage = ceil(ifElse(fvar(11) * 170 < 7, 7, fvar(11) * 170)), 7
guardflag = MA
hitflag = MAF
getpower  = 10,5
givepower = 10,5
pausetime = 20, 20
ground.type = High
guard.slidetime = 6
ground.hittime  = 15
guard.hittime = (15) - 6
ground.velocity = -6.5, -6.5
air.velocity = -6.5, -6.5
fall = 1
fall.recover = 0
envshake.time = 32
envshake.freq = 180
envshake.ampl = 4
palfx.time = 48
palfx.color = 0
palfx.invertall = 1
palfx.mul=256,64,0
palfx.sinadd = 50,200,0,8
id=2110
hitsound = s2,3200
p2stateno = 5680
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 55), var(36) := -70
palFX.time = 52
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4

[State 2110, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------------------------
;LVL 3 Super
[Statedef 3500]
type = S
physics = S
moveType = A
ctrl = 0
Anim = 3500
velSet = 0,0
sprpriority = 1
powerAdd = -3000
faceP2 = 1

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
var(22) = (prevstateno = [2000, 4999]) && var(8)

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
trigger1 = animelem = 1
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = 2, -73
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3500, Super Pause]
type = SuperPause
trigger1 = animelem = 1
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 4001,SOUND Voice]
type = Playsnd
trigger1 = time = 0
value = 3000,0

[State 4000,End!]
type = ChangeState
trigger1 = AnimTime = 0
value = 3501

;
[Statedef 3501]
type = A
movetype = A
physics = N
anim = 3501
poweradd = 0
velset = 0,0
ctrl = 0
juggle = 10

[State 4001,SOUND Voice]
type = Playsnd
trigger1 = time = 0
value = 4000,1

[State 4001,1]
type = AfterImage
trigger1 = AnimElem = 1
time = 2

[State 4001,2]
type = AfterImageTime
trigger1 = AnimElemTime(1) >= 0
time = 2

[State 4001,3]
type = velset
trigger1 = 1
x = 13

[State 4001,4]
type = velset
trigger1 = time < 2
y = -2

[State 4001,5]
type = veladd
trigger1 = time > 1
y = .15

[State 4001,Hit]
type = HitDef
trigger1 = animelem = 1
attr = S,HT
damage = 0,10
animtype = Hard
guardflag = M
hitflag = MAF
pausetime = 0,0
guard.pausetime = 0,12
ground.hittime = 17
guard.hittime = (17) - 6
ground.type = High
ground.slidetime = 17
ground.velocity = 0
guard.velocity = -3
air.velocity = -4,-6
yaccel = .5
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=-1)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=-69
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 14
envshake.ampl = 4
envShake.freq = 120
kill = 0

[State 4001,6]
type = ChangeState
trigger1 = movehit = 1
value = 3505

[State 4001,End!]
type = ChangeState
trigger1 = animtime = 0
value = 3502

;
[Statedef 3502]
type = S
movetype = A
physics = S
anim = 3502
poweradd = 0
velset = 0,0
ctrl = 0

[State 4002,1]
type = velset
trigger1 = time = 0
x = 4

[State 4002,2]
type = posset
trigger1 = time = 0
y = 0

[State 4002,End!]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 3505]
type = S
movetype = A
physics = S
velset = 0,0
anim = 3505
ctrl = 0
sprpriority = 2



[State 4005,1]
type = posset
trigger1 = time = 0
y = 0

[State 4005,2]
type = Targetstate
trigger1 = time = 0
value = 4010

[State 4005,3]
type = Targetbind
trigger1 = time = 0
pos = 30,0

[State 4001,SOUND Voice]
type = Playsnd
trigger1= !time && random<200
value= 4,0+ random%3
trigger1 = animelem = 3
trigger2 = animelem = 9
trigger3 = animelem = 15
trigger4 = animelem = 23
trigger5 = animelem = 34



[State 4005,Hit]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = animelem = 3
trigger2 = animelem = 9
trigger3 = animelem = 15
trigger4 = animelem = 23
priority = 4, hit
attr = S,HA
damage = 35
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 4,4
ground.hittime = 17
guard.hittime = (17) - 6
ground.type = Low
ground.slidetime = 17
ground.velocity = 0
air.fall = 1
air.velocity = -4,-7
yaccel = .5
p2stateno = 4010
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8014)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=-69
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 14
envshake.ampl = 4
envShake.freq = 120
kill = 0

[State 4005,Hit]
type = HitDef
trigger1 = animelem = 34
attr = S,HA
damage = 50,10
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 32,32
guard.pausetime = 5,9
ground.hittime = 17
guard.hittime = (17) - 6
ground.type = High
ground.slidetime = 17
ground.velocity = -2,-10
air.velocity = -2,-10
fall = 1
fall.recover = 0
;yaccel = .5
p2stateno = 5679
hitsound = -1 + 0*(var(31):=3200)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8014)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=-69
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 14
envshake.ampl = 4
envShake.freq = 120
kill = 0


[State 4005,End!]
type = ChangeState
trigger1 = AnimTime = 0
value = 3506
ctrl = 1

[Statedef 3506]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=1
facep2=1

[State 3000, Anim]
type=changeanim
trigger1=!time
value=3506

;---------------------------------------------------

[State 2100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 64,0

[State 2100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = 64,1

[State 2100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = 62,1

[State 2100, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 30000
ID = 30000
pos = 0,0
postype = p1
ownpal = 1
bindtime = -1
removetime = 31
supermove = 1
sprpriority = 3
persistent = 0
removeongethit = 1
ignorehitpause = 1

[State 2100, Explod]
type = Explod
trigger1 = AnimElem = 4
anim = 30001
ID = 30001
pos = 0,0
postype = p1
ownpal = 1
bindtime = -1
removetime = -2
supermove = 1
sprpriority = 3
persistent = 0
removeongethit = 1
ignorehitpause = 1

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


[State 2100, PosAdd]
type = PosAdd
trigger1 = Animelem = 4
trigger2 = Animelem = 5
trigger3 = Animelem = 12
x = 16

[State 2100, VelSet]
type = VelSet
trigger1 = Animelem = 6
x = 12+((prevstateno=[100,101])||prevstateno=250)*3

[State 2100, VelSet]
type = VelSet
trigger1 = Animelem = 12
x = 0

[State 2100, VelMul]
type = VelMul
trigger1 = Animelem = 8,>= 0
x = .95

[State 2100, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HA
animtype = Up
damage = 70+((prevstateno=[100,101])||prevstateno=250)*30, 6
guardflag = M
hitflag = MAF
getpower  = 10,5
givepower = 10,5
pausetime = 32, 32
ground.type = High
guard.slidetime = 13
ground.hittime  = 30
guard.hittime = (30) - 6
air.hittime  = 30
ground.velocity = 0
guard.velocity=-12
air.velocity = -3.2,-1.5
fall = 0
fall.recover = 0
palfx.time = 48
palfx.color = 0
palfx.invertall = 1
palfx.mul=256,64,0
palfx.sinadd = 50,200,0,8
kill=0
guard.kill=1
hitsound = s2,3200
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 55), var(36) := -65
palFX.time = 52
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4

[State 2100, ChangeState]
type = ChangeState
trigger1 = MoveHit = 1
value = 3507


[State 2000, ChangeState]
type = ChangeAnim
trigger1 = Moveguarded = 1&&animelemno(0)<9
value = 3507
elem=9

[State 2100, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 3507]
type    = S
movetype = A
physics = N
poweradd = 60
velset = 0,0
ctrl = 0
anim = 2110


[State 1100]
type=targetbind
trigger1=numtarget
trigger1=!time
trigger1=P2Dist x<0
pos=20,P2Dist y

[State 1100]
type=targetbind
trigger1=numtarget
trigger1=!time
trigger1=target,statetype=A&&target,pos y>-10
pos=P2Dist x,-10

[State 1100]
type = nothitby
trigger1=time<=60
value=SCA


[State 2110, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 3
value = 50,3

[State 2110, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 3
trigger2 = AnimElem = 16
value = 62,2

[State 2110, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 15
value = 65,0

[State 2110, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 18
value = 65,1

[State 2110, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 31100
ID = 31100
pos = 0,0
postype = p1
ownpal = 1
bindtime = -1
removetime = -2
sprpriority = 4
removeongethit = 1
ignorehitpause = 0

[State 2110, Explod]
type = Explod
trigger1 = AnimElem = 18
anim = 31101
ID = 31101
pos = 0,0
postype = p1
ownpal = 1
bindtime = -1
removetime = -2
sprpriority = 4
removeongethit = 1
ignorehitpause = 0

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

[State 2110, VelSet]
type = VelSet
trigger1 = Animelem = 1
x = 11.5

[State 2110, VelSet]
type = VelSet
trigger1 = Animelem = 2,8
x = 0

[State 2110, VelMul]
type = VelMul
trigger1 = Animelem = 1,>= 0
x = .96


[State 2110, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = S, HA
animtype = Up
damage = 65, 6
guardflag = MA
hitflag = MAF
getpower  = 10,5
givepower = 10,5
pausetime = 32, 32
ground.type = High
guard.slidetime = 6
ground.hittime  = 15
guard.hittime = (15) - 6
ground.velocity = -.5, -8.5
air.velocity = 0, -8.5
fall = 1
fall.recover = 0
palfx.time = 48
palfx.color = 0
palfx.invertall = 1
palfx.mul=256,64,0
palfx.sinadd = 50,200,0,8
kill=0
guard.kill=1
id=2110
hitsound = s2,3200
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 55), var(36) := -70
palFX.time = 52
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4

[State 2110, HitDef]
type = HitDef
trigger1 = AnimElem = 19
attr = S, HP
animtype = DiagUp
damage = 143, 6
guardflag = MA
hitflag = MAF
getpower  = 10,5
givepower = 10,5
pausetime = 20, 20
ground.type = High
guard.slidetime = 6
ground.hittime  = 15
guard.hittime = (15) - 6
ground.velocity = -6.5, -9.5
air.velocity = -6.5, -9.5
fall = 1
fall.recover = 0
envshake.time = 32
envshake.freq = 180
envshake.ampl = 4
palfx.time = 48
palfx.color = 0
palfx.invertall = 1
palfx.mul=256,64,0
palfx.sinadd = 50,200,0,8
id=2110
p2stateno = 5680
hitsound = s2,3200
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 55), var(36) := -70
palFX.time = 52
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4

[State 2110, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1



;Lv3 Sonia
[Statedef 3510]
type=S
physics=N
movetype=A
anim=4000
ctrl=0
velset=0,0
poweradd = -3000

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
var(22) = (prevstateno = [2000, 4999]) && var(8)

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
trigger1 = !time
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = 11, -65
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3500, Super Pause]
type = SuperPause
trigger1 = !time
time = 30
moveTime = 30
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 4000]
type=Nothitby
trigger1=time=[1,36]
time=1
value=SCA


[State 3200]
type=removeexplod
trigger1=prevstateno=1250
trigger1=!time
trigger1=numexplod(22000)
id=22000
[State 3200]
type=removeexplod
trigger1=prevstateno=1250
trigger1=!time
trigger1=numexplod(20001)
id=20001


[State 4000]
type = velset
trigger1=time=31
x=9
y=0

[State 2000, HitDef]
type = HitDef
trigger1 = time = 0
attr = S, HA
animtype = Hard
damage = 10, 0
guardflag = M
hitflag = MAF
getpower  = 10,5
givepower = 10,5
pausetime = 10, 10
ground.type = High
guard.slidetime = 6
ground.hittime  = 15
guard.hittime = (15) - 6
ground.velocity = -2.5
air.velocity = -2.5,-4
fall = 1
kill=0
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=-50
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 4000]
type=Targetstate
trigger1=numtarget
trigger1=movehit
value=4050

[State 4000]
type=Changestate
trigger1=numtarget
trigger1=movehit
trigger1=target,stateno=4050
value=4002


[State 4000]
type=ChangeState
trigger1=moveguarded||movereversed
value=4001
ctrl=0

[State 4000]
type=ChangeState
trigger1 = AnimTime = 0
value=101
ctrl=0


[Statedef 4001]
type=S
physics=S
movetype=I
velset=-5,0
anim=4001
ctrl=0

[State 8520, Assert]
type = assertspecial
trigger1 = time < 150
flag = nobardisplay
flag2 = noBG
flag3 = noFG


[State 4001]
type=ChangeState
trigger1=!Animtime
value=0
ctrl=1

[Statedef 4002]
type=S
physics=N
movetype=A
anim=4002
ctrl=0

[State 6001,Bound]
type = ScreenBound
trigger1 =1
value =1
movecamera = 320,0

[State 8520, Assert]
type = assertspecial
trigger1 = time < 150
flag = nobardisplay
flag2 = noBG
flag3 = noFG

[State 4002]
type=Playerpush
trigger1=1
value=0

[State 3010,  AfterImage]
type = AfterImage
trigger1 = !time
time = 111
length = 10
framegap = 3
trans = add1
palcontrast = 128,128,128
paladd = 0,0,0
palmul = 1,1,1

[State 4001]
type=targetstate
triggerall=numtarget
trigger1=animelem=3
trigger2=animelem=7
trigger3=animelem=11
trigger4=animelem=14
trigger5=animelem=19
trigger6=animelem=24
trigger7=animelem=32
value=4051

[State 4001]
type=hitadd
triggerall=numtarget
trigger1=animelem=3
trigger2=animelem=7
trigger3=animelem=11
trigger4=animelem=14
trigger5=animelem=19
trigger6=animelem=24
trigger7=animelem=32
value=1


[State 4001]
type=playsnd
triggerall=numtarget
trigger1=animelem=3
trigger2=animelem=7
trigger3=animelem=11
trigger4=animelem=14
trigger5=animelem=19
trigger6=animelem=24
trigger7=animelem=32
value=s2,0+(random%4)
channel = 1

[State 4001]
type=playsnd
triggerall=numtarget
trigger1=animelem=3
trigger2=animelem=7
trigger3=animelem=11
trigger4=animelem=14
trigger5=animelem=19
trigger6=animelem=24
trigger7=animelem=32
value=s4,0+(random%2)
channel = 2

[State 4001]
type=helper
triggerall=numtarget
trigger1=animelem=3
trigger2=animelem=7
trigger3=animelem=11
trigger4=animelem=14
trigger5=animelem=19
trigger6=animelem=24
trigger7=animelem=32
ID = 8012
stateno = 8012
Name = "8012"
pos = 40, -60
postype = p1
facing = 1
scale = 1, 1
sprpriority = 4
ownpal = 0



[State 4001]
type=targetlifeadd
triggerall=numtarget
trigger1=animelem=3
trigger2=animelem=7
trigger3=animelem=11
trigger4=animelem=14
trigger5=animelem=19
trigger6=animelem=24
trigger7=animelem=32
value=-20
kill=0

[State 4001]
type=varadd
triggerall=numtarget
trigger1=animelem=3
trigger2=animelem=7
trigger3=animelem=11
trigger4=animelem=14
trigger5=animelem=19
trigger6=animelem=24
trigger7=animelem=32
fvar(38)=-0.05


[State 4001]
type=targetbind
trigger1=numtarget
trigger1=time<100
pos=40,0
facing=-1


[State 4001]
type=targetbind
trigger1=numtarget
trigger1=time>=100
pos=40-(time-100)*8,0
facing=-1

[State 4001]
type=targetfacing
trigger1=numtarget
value=-1

[State 4001]
type=posadd
trigger1=numtarget
trigger1=time>=100
x=4

[State 4001]
type=velmul
trigger1=1
x=0.90

[State 4001]
type=velset
trigger1=abs(vel x)<0.1
trigger2=facing*(helper(30000+(facing=-1)*10),pos x-pos x)<=80
x=0



[State 4001]
type=posadd
trigger1=time<100
trigger1=facing*(helper(30000+(facing=-1)*10),pos x-pos x)>80
x=1.5

[State 4001]
type=posadd
trigger1=time<100
trigger1=facing*(helper(30000+(facing=-1)*10),pos x-pos x)<=80
value=facing*(helper(30000+(facing=-1)*10),pos x-pos x)-80

[State 4001]
type=ChangeState
trigger1=!Animtime
value=4003

[Statedef 4003]
type=S
physics=S
movetype=A
anim=4003
ctrl=0

[State 8520, Assert]
type = assertspecial
trigger1 = time < 999
flag = nobardisplay
flag2 = noBG
flag3 = noFG

[State 4003]
type=turn
trigger1=!time

[State 4003]
type=targetbind
trigger1=animelemtime(3)<0
pos=70,0

[State 4001]
type=targetstate
triggerall=numtarget
trigger1=animelem=3
value=4052

[State 4001]
type=hitadd
triggerall=numtarget
trigger1=animelem=3
value=1

[State 4001]
type=playsnd
triggerall=numtarget
trigger1=animelem=3
value=2,3200


[State 4001]
type=playsnd
triggerall=numtarget
trigger1=animelem=3
value=50,0



[State 4001]
type=helper
triggerall=numtarget
trigger1=animelem=3
ID = 8012
stateno = 8012
Name = "8012"
pos = 40, -60
postype = p1
facing = 1
scale = 1, 1
sprpriority = 4
ownpal = 0


[State 4001]
type=targetlifeadd
triggerall=numtarget
trigger1=animelem=3
value=-40
kill=0
[State 4001]
type=varadd
triggerall=numtarget
trigger1=animelem=3
fvar(38)=-0.05


[State 4003]
type=ChangeState
trigger1=!Animtime
value=4004
ctrl=1

[Statedef 4004];
type=S
physics=N
movetype=A
anim=0
ctrl=0
velset=0,0

[State 8520, Assert]
type = assertspecial
trigger1 = time < 999
flag = nobardisplay
flag2 = noBG
flag3 = noFG

[State 3500, Super Pause FX]
type = Helper
trigger1 = !time
stateNo = 8580
ID = 8500
name = "Superpause FX"
posType = p1
pos = 11, -65
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3500, Super Pause]
type = SuperPause
trigger1 = !time
time = 30
moveTime = 30
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0


[State 4000]
type=ChangeAnim
trigger1=time<30
value=0


[State 4000]
type=Targetstate
trigger1=!time
value=4053

[State 4004]
type=ChangeAnim
trigger1=time=62
value=4004


[State 1100]
type=nothitby
trigger1=1
value=SCA

[State 2110, PlaySnd]
type = PlaySND
trigger1=anim=4004
trigger1 = AnimElem = 3
value = 50,4

[State 2110, PlaySnd]
type = PlaySND
trigger1=anim=4004
trigger1 = AnimElem = 22
value = 50,1

[State 2110, PlaySnd]
type = PlaySND
trigger1=anim=4004
trigger1 = AnimElem = 3
value = 62,2

[State 2110, Explod]
type = Explod
trigger1=anim=4004
trigger1 = AnimElem = 2
anim = 30100
ID = 30100
pos = 0,0
postype = p1
ownpal = 1
bindtime = -1
removetime = -2
sprpriority = 4
removeongethit = 1
ignorehitpause = 0


[State 4001]
type=targetfacing
triggerall=numtarget
trigger1=time=47
value=1


[State 4001]
type=targetfacing
triggerall=numtarget
trigger1=Anim=4004
trigger1=animelem=5
value=-1

[State 4001]
type=targetstate
triggerall=numtarget
trigger1=time=47
trigger2=time=49
trigger3=time=51
trigger4=Anim=4004
trigger4=animelem=23
value=4054

[State 4001]
type=hitadd
triggerall=numtarget
trigger1=time=47
trigger2=time=49
trigger3=time=51
value=1


[State 4001]
type=playsnd
triggerall=numtarget
trigger1=time=47
trigger2=time=49
trigger3=time=51
value=s2,0+(random%4)


[State 4001]
type=helper
triggerall=numtarget
trigger1=time=47
trigger2=time=49
trigger3=time=51
ID = 8012
stateno = 8012
Name = "8012"
pos = 40, -40
postype = p2
facing = 1
scale = 1, 1
sprpriority = 4
ownpal = 0



[State 4001]
type=targetlifeadd
triggerall=numtarget
trigger1=time=47
trigger2=time=49
trigger3=time=51
value=-18
kill=0


[State 4001]
type=varadd
triggerall=numtarget
trigger1=time=47
trigger2=time=49
trigger3=time=51
fvar(38)=-0.05


[State 4001]
type=targetstate
triggerall=numtarget
triggerall=anim=4004
trigger1=animelem=5
value=4055

[State 4001]
type=hitadd
triggerall=numtarget
triggerall=anim=4004
trigger1=animelem=5
trigger2=animelem=23
value=1


[State 4001]
type=playsnd
triggerall=numtarget
triggerall=anim=4004
trigger1=animelem=5
trigger2=animelem=23
value=s2,5


[State 4001]
type=helper
triggerall=numtarget
triggerall=anim=4004
trigger1=animelem=5
trigger2=animelem=23
ID = 8012
stateno = 8012
Name = "8012"
pos = 40, -60
postype = p1
facing = 1
scale = 1, 1
sprpriority = 4
ownpal = 0


[State 4001]
type=targetlifeadd
triggerall=numtarget
triggerall=anim=4004
trigger1=animelem=5
trigger2=animelem=23
value=-20
kill=0


[State 4001]
type=varadd
triggerall=numtarget
triggerall=anim=4004
trigger1=animelem=5
trigger2=animelem=23
fvar(38)=-0.05


[State 4001]
type=targetbind
triggerall=anim=4004
trigger1=numtarget
trigger1=animelemtime(5)=[0,11]
pos=40,0


[State 4004]
type=ChangeState
trigger1=anim=4004
trigger1=!Animtime
trigger1=numtarget
value=4005


[State 4004]
type=ChangeState
trigger1=anim=4004
trigger1=!Animtime
value=0
ctrl=1


[Statedef 4005];
type=S
physics=N
movetype=A
anim=0
ctrl=0
velset=0,0

[State 2110, Helper]
type=Helper
trigger1=anim=4505&&animelem=10
id=8150
name="8150"
pos=0,0
postype=P2
stateno=8150
helpertype=normal
keyctrl=0
ownpal=1
ignorehitpause=1

[State 8520, Assert]
type = assertspecial
trigger1 = time < 150
flag = nobardisplay
flag2 = noBG
flag3 = noFG

[State 4005]
type=Playerpush
trigger1=1
value=0

[State 4004]
type=ChangeAnim
trigger1=time=54
value=4005

[State 4005]
type=velset
trigger1=time=54
x=7.2


[State 4005]
type=velset
trigger1=anim=4005
trigger1=animelem=3
x=0

[State 4005]
type=playsnd
trigger1=anim=4005
trigger1=animelem=3
value=50,2

[State 4001]
type=targetfacing
triggerall=numtarget
trigger1=!time
value=1

[State 4001]
type=targetfacing
triggerall=numtarget
trigger1=anim=4005&&animelem=4
value=-1


[State 4005]
type=targetstate
trigger1=anim=4005&&animelem=4
value=4056


[State 1100]
type=nothitby
trigger1=1
value=SCA


[State 2110, PlaySnd]
type = PlaySND
triggerall=anim=4005
trigger1 = AnimElem = 3
value = s2,3200

[State 2110, PlaySnd]
type = PlaySND
triggerall=anim=4005
trigger1 = AnimElem = 3
trigger2 = AnimElem = 20
value = s2,3200

[State 2110, PlaySnd]
type = PlaySND
triggerall=anim=4005
trigger1 = AnimElem = 3
trigger2 = AnimElem = 20
value = 62,2

[State 2110, PlaySnd]
type = PlaySND
trigger1=anim=4005
trigger1 = AnimElem = 20
value = 65,0

[State 2110, PlaySnd]
type = PlaySND
trigger1=anim=4005
trigger1 = AnimElem = 23
value = 65,1

[State 2110, Explod]
type = Explod
trigger1=anim=4005
trigger1 = AnimElem = 2
anim = 4006
ID = 4006
pos = 0,0
postype = p1
ownpal = 1
bindtime = -1
removetime = -2
sprpriority = 4
removeongethit = 1
ignorehitpause = 0

[State 2110, Explod]
type = Explod
trigger1=anim=4005
trigger1=AnimElem =23
anim = 4007
ID = 4007
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
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
trigger2 = stateno = 4005
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1


[State 4001]
type=targetstate
triggerall=numtarget
trigger1=time=41&&anim=0
value=4058


[State 4001]
type=targetstate
triggerall=numtarget
trigger1=anim=4005&&animelemtime(24)=8
value=4057

[State 4001]
type=targetstate
triggerall=numtarget
trigger1=!time
value=4055

[State 4001]
type=hitadd
triggerall=numtarget
trigger1=time=41&&anim=0
trigger2=!time
trigger3=anim=4005&&animelem=4
trigger4=anim=4005&&animelemtime(24)=8
value=1


[State 4001]
type=playsnd
triggerall=numtarget
trigger1=time=41&&anim=0
trigger2=!time
value=s2,3200

[State 4001]
type=playsnd
triggerall=numtarget
trigger1=anim=4005&&animelem=4
trigger2=anim=4005&&animelemtime(24)=8
value=61,1


[State 4001]
type=helper
triggerall=numtarget
trigger1=time=41&&anim=0
trigger2=!time
trigger3=anim=4005&&animelem=4
trigger4=anim=4005&&animelemtime(24)=8
ID = 8012
stateno = 8012
Name = "8012"
pos = 20, -20
postype = p2
facing = 1
scale = 1, 1
sprpriority = 4
ownpal = 0


[State 4001]
type=targetlifeadd
triggerall=numtarget
trigger1=time=41&&anim=0
value=-30
kill=0

[State 4001]
type=targetlifeadd
triggerall=numtarget
trigger1=time=41&&anim=0
trigger2=!time
value=-50
kill=0

[State 4001]
type=targetlifeadd
triggerall=numtarget
trigger1=anim=4005&&animelem=4
value=-30
kill=0

[State 4001]
type=targetlifeadd
triggerall=numtarget
trigger1=anim=4005&&animelemtime(24)=8
value=-80


[State 4001]
type=varadd
triggerall=numtarget
trigger1=time=41&&anim=0
trigger2=!time
trigger3=anim=4005&&animelem=4
trigger4=anim=4005&&animelemtime(24)=8
fvar(38)=-0.05

[State 4001]
type=targetbind
trigger1=anim=4005&&animelemtime(4)=0
pos=20,-10


[State 4001]
type=targetbind
trigger1=anim=4005&&animelemtime(24)=8
pos=20,-60


[State 4004]
type=ChangeState
trigger1=anim=4005
trigger1=!Animtime
value=0
ctrl=1

[Statedef 4050]
type=S
physics=S
movetype=H
ctrl=0

[State 8520, Assert]
type = assertspecial
trigger1 = time < 150
flag = nobardisplay
flag2 = noBG
flag3 = noFG

[State 4050]
type=nothitby
trigger1=time<120
value=SCA
time=1


[State 4050]
type=ChangeAnim
trigger1=Anim!=5005
value=5005

[State 4001]
type=SelfState
trigger1=time>=120
value=0
ctrl=1

[Statedef 4051]
type=S
physics=S
movetype=H
ctrl=0

[State 8520, Assert]
type = assertspecial
trigger1 = time < 150
flag = nobardisplay
flag2 = noBG
flag3 = noFG

[State 4050]
type=nothitby
trigger1=1
value=SCA

time=1

[State 4002]
type=Playerpush
trigger1=1
value=0


[State 4050]
type=ChangeAnim
trigger1=Anim!=5000
value=5000

[State 4001]
type=ChangeState
trigger1=time>=6
value=4050


[Statedef 4052]
type=A
physics=N
movetype=H
ctrl=0

[State 4052]
type=turn
trigger1=!time

[State 4050]
type=nothitby
trigger1=1
value=SCA

time=1


[State 4050]
type=ChangeAnim2
trigger1=!time
value=5030

[State 4001]
type=ChangeAnim2
trigger1=time=12
value=5050

[State 4001]
type=velset
trigger1=time=12
x=-6.5
y=-7.2


[State 4001]
type=veladd
trigger1=time>12
y=0.4


[State 4001]
type=SelfState
trigger1=time>12
trigger1=vel y>0
trigger1=pos y>0
value=5100


[Statedef 4053]
type=A
physics=N
movetype=H
ctrl=0


[State 4050]
type=nothitby
trigger1=1
value=SCA

time=1

[State 4001]
type=velset
trigger1=!time
x=0

[State 4001]
type=veladd
trigger1=1
y=0.4


[State 4001]
type=SelfState
trigger1=vel y>0
trigger1=pos y>0
value=5100


[Statedef 4054];‚Ó‚Á‚Æ‚Î‚µ
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 0

[State 4054]
type=posset
trigger1=!time
y=-5

[State 241, ChangeAnim2]
type = ChangeAnim2
Trigger1 = time = 0
value = 241


[State 241, ChangeAnim2]
type = ChangeAnim2
Trigger1 = time=12
value = 243

[State 241, VelSet]
type = VelSet
trigger1 = time=12
x = -8

[State 241, ChangeState]
type = ChangeState
trigger1 = time>120 && BackEdgeBodyDist < 5
value = 242


[Statedef 4058];—‹‚Ó‚Á‚Æ‚Î‚µ
type    = A
movetype= H
physics = N
velset = 0,0
sprpriority = 0

[State 4054]
type=posset
trigger1=!time
y=-5


[State 4054]
type=palfx
trigger1=!time
time = 48
color = 0
invertall = 1
mul=192,96,256
sinadd = 100,0,100,8



[State 241, ChangeAnim2]
type = ChangeAnim2
Trigger1 = time = 0
value = 241


[State 241, ChangeAnim2]
type = ChangeAnim2
Trigger1 = time=12
value = 243

[State 241, VelSet]
type = VelSet
trigger1 = time=12
x = -8

[State 241, ChangeState]
type = ChangeState
trigger1 = time>120 && BackEdgeBodyDist < 5
value = 242

[Statedef 4055]
type=A
physics=N
movetype=H
velset=0,0
ctrl=0

[State 4050]
type=nothitby
trigger1=1
value=SCA

time=1


[State 4050]
type=ChangeAnim2
trigger1=!time
value=5030

[State 4001]
type=ChangeAnim2
trigger1=time=12
value=5050

[State 4001]
type=velset
trigger1=time=12
x=-0.5
y=-6.2


[State 4001]
type=veladd
trigger1=time>12
y=0.4


[State 4001]
type=SelfState
trigger1=time>12
trigger1=vel y>0
trigger1=pos y>0
value=5100


[Statedef 4056]
type=A
physics=N
movetype=H
velset=0,0
ctrl=0

[State 4050]
type=nothitby
trigger1=1
value=SCA
time=1

[State 4057]
type=palfx
trigger1=!time
time = 52
mul=128, 128, 128
sinadd = 96, 96, 96, 4



[State 4050]
type=ChangeAnim2
trigger1=!time
value=5030

[State 4001]
type=ChangeAnim2
trigger1=time=12
value=5050

[State 4001]
type=velset
trigger1=time=12
x=0
y=-9

[State 4001]
type=veladd
trigger1=time>12
y=0.35


[State 4001]
type=SelfState
trigger1=time>12
trigger1=vel y>0
trigger1=pos y>0
value=5100


[Statedef 4057]
type=A
physics=N
movetype=H
velset=0,0
ctrl=0

[State 4050]
type=ChangeAnim2
trigger1=!time
value=5030

[State 4057]
type=palfx
trigger1=!time
time = 75
mul=128, 128, 128
sinadd = 96, 96, 96, 4




[State 4001]
type=ChangeAnim2
trigger1=time=20
value=5050

[State 4001]
type=velset
trigger1=time=20
x=-2
y=-9

[State 4001]
type=veladd
trigger1=time>20
y=0.35


[State 4001]
type=SelfState
trigger1=time>20
trigger1=vel y>0
trigger1=pos y>0
value=5100


[Statedef 4100]
type=A
physics=N
movetype=I
anim=1
ctrl=0


[State 4100]
type=varset
trigger1=!time
fvar(0)=root,fvar(0)*(prevstateno!=[4100,4199])

[State 4100]
type=Screenbound
trigger1=1
value=0





[State 4100]
type=varadd
triggerall=helper(30000),var(42)
triggerall=fvar(0)<1
trigger1=root,movehit=1
trigger1=root,hitpausetime=1
fvar(0)=0.012*((roundstate=2)+(roundstate=2&&teammode=turns)*0.5)

[State 4100]
type=varadd
triggerall=helper(30000),var(42)
triggerall=fvar(0)<1

trigger1=root,stateno=810||root,stateno=860
trigger1=root,time=1
fvar(0)=0.048*((roundstate=2)+(roundstate=2&&teammode=turns)*0.5)

[State 4100]
type=varadd
triggerall=helper(30000),var(42)
triggerall=fvar(0)<1

trigger1=root,stateno=160
trigger1=root,Animtime=-1
fvar(0)=0.198*((roundstate=2)+(roundstate=2&&teammode=turns)*0.5)


[State 4100]
type=varadd
trigger1=fvar(0)<1
trigger1=root,stateno!=[3001,3160]
fvar(0)=0.0004*((roundstate=2)+(roundstate=2&&teammode=turns)*0.5)*(helper(30000),var(42)!=0)

[State 4100]
type=varset
trigger1=fvar(0)>1
fvar(0)=1

[State 4100]
type=palfx
trigger1=fvar(0)<1
trigger2=power<2000
trigger3=power<3000
trigger3=!(root,ctrl||root,stateno=100&&root,time>=5||root,stateno=101)
trigger4=(root,stateno>=500||!root,movecontact)&&!root,ctrl&&!(root,stateno=100&&root,time>=5||root,stateno=101)
trigger4=root,stateno!=1250||!root,movecontact
trigger5=root,statetype=A
mul=ceil(fvar(0)*256),ceil(fvar(0)*256),ceil(fvar(0)*256)
time=1
color=0

[State 4100]
type=ChangeState
trigger1=root,stateno=4003
trigger1=root,numtarget
trigger1=root,animelemtime(5)>=0
value=4110


[State -2];ƒ\ƒjƒA
type=destroyself
trigger1=numenemy=1
trigger1=enemynear,name="Sonia"&&enemynear,authorname="Zmugens"
trigger2=numenemy=2
trigger2=enemynear(0),name="Sonia"&&enemynear(0),authorname="Zmugens"||enemynear(1),name="Sonia"&&enemynear(1),authorname="Zmugens"

[statedef 4110]
type=S
physics=N
movetype=A
anim=4110
ctrl=0

[State 4610]
type=varset
trigger1=!time
fvar(0)=0

[State 4110]
type=turn
trigger1=!time
trigger1=facing=root,facing


[State 4110]
type=velset
trigger1=!time
x=5
y=0

[State 4110]
type=posset
trigger1=!time
x=-facing*200
y=0


[State 4110]
type=velset
trigger1=time
trigger1=pos x*facing>=-140
x=0
y=0


[State 4110]
type=ChangeAnim
trigger1=time
trigger1=pos x*facing>=-140
trigger1=Anim!=4120
value=4120

[State 4100]
type=Screenbound
trigger1=1
value=0
movecamera=1,1


[State 4100]
type=ChangeState
trigger1=root,stateno=4004
trigger1=root,numtarget
value=4130


[State 4100]
type=ChangeState
trigger1=time>=180
value=4190


[Statedef 4130]
type=S
physics=N
movetype=A
ctrl=0


[State 4110]
type=posset
trigger1=!time
x=-facing*140
y=0

[State 4130]
type=ChangeAnim
trigger1=root,stateno=4004&&root,time<=31
value=4130

[State 4100]
type=Screenbound
trigger1=1
value=0
movecamera=1,1

[State 4100]
type=Playsnd
trigger1=anim=4130
trigger1=animelemtime(5)=0
value=3,1

[State 4100]
type=Playsnd
trigger1=anim=4130
trigger1=animelemtime(5)=0
value=4100,0

[State 4130]
type = Explod
trigger1=Anim=4130
trigger1=animelemtime(5)=0
anim = 4135
ID = 4135
pos = 20, -45
postype = p1
vel=0,0
bindtime = 1
removetime=-2
supermovetime = 99999
pausemovetime = 99999
scale = 1, 1
sprpriority = 3
shadow = -1, -1, -1
ownpal = 1

[State 4130]
type = Explod
trigger1=Anim=4130
trigger1=animelemtime(4)=0
anim = 4137
ID = 4137
pos = 32, -38
postype = p1
vel=11.5,0
bindtime = 1
removetime=-2
supermovetime = 99999
pausemovetime = 99999
scale = 1, 1
sprpriority = 3
shadow = -1, -1, -1
ownpal = 1

[State 4130]
type = Explod
trigger1=Anim=4130
trigger1=animelemtime(4)=0
anim = 4137
ID = 4138
pos = 40, -30
postype = p1
vel=11.5,0
bindtime = 1
removetime=-2
supermovetime = 99999
pausemovetime = 99999
scale = 1, 1
sprpriority = 3
shadow = -1, -1, -1
ownpal = 1

[State 4130]
type = Explod
trigger1=Anim=4130
trigger1=animelemtime(4)=0
anim = 4137
ID = 4139
pos = 48, -22
postype = p1
vel=11.5,0
bindtime = 1
removetime=-2
supermovetime = 99999
pausemovetime = 99999
scale = 1, 1
sprpriority = 3
shadow = -1, -1, -1
ownpal = 1

[State 4130]
type=removeExplod
trigger1=time=47
id=4139

[State 4130]
type=removeExplod
trigger1=time=49
id=4138

[State 4130]
type=removeExplod
trigger1=time=51
id=4137


[State 4130]
type = Explod
trigger1=Anim=4130
trigger1=time=47
anim = 4136
ID = 4136
pos = 10, -38
postype = p2
vel=2,-2
accel=0,0.28
bindtime = 1
removetime=-2
supermovetime = 99999
pausemovetime = 99999
scale = 1, 1
sprpriority = 3
shadow = -1, -1, -1
ownpal = 1

[State 4130]
type = Explod
trigger1=Anim=4130
trigger1=time=49
anim = 4136
ID = 4136
pos = 10, -30
postype = p2
vel=2,-2
accel=0,0.28
bindtime = 1
removetime=-2
supermovetime = 99999
pausemovetime = 99999
scale = 1, 1
sprpriority = 3
shadow = -1, -1, -1
ownpal = 1

[State 4130]
type = Explod
trigger1=Anim=4130
trigger1=time=51
anim = 4136
ID = 4136
pos = 10, -22
postype = p2
vel=2,-2
accel=0,0.28
bindtime = 1
removetime=-2
supermovetime = 99999
pausemovetime = 99999
scale = 1, 1
sprpriority = 3
shadow = -1, -1, -1
ownpal = 1

[State 4130]
type=ChangeAnim
trigger1=Anim=4130
trigger1=!Animtime
value=4120


[State 4130]
type=ChangeState
trigger1=root,stateno=4004
trigger1=root,time=142
value=4140


[State 4100]
type=ChangeState
trigger1=time>=180
value=4190


[Statedef 4140]
type=S
physics=N
movetype=A
anim=4140
ctrl=0


[State 4110]
type=posset
trigger1=!time
x=-facing*140
y=0

[State 4100]
type=Screenbound
trigger1=1
value=0
movecamera=1,1

[State 4100]
type=Playsnd
trigger1=anim=4140
trigger1=animelemtime(4)=0
value=3,1

[State 4100]
type=Playsnd
trigger1=anim=4140
trigger1=animelemtime(4)=0
value=4100,1


[State 4100]
type=Playsnd
trigger1=anim=4150
trigger1=animelemtime(3)=0
value=3,2

[State 4100]
type=Playsnd
trigger1=anim=4150
trigger1=animelemtime(3)=0
value=4100,2


[State 4130]
type = Explod
trigger1=anim=4150
trigger1=animelemtime(3)=0
anim = 4151
ID = 4151
pos = 50, 2
postype = p1
bindtime = -1
removetime=-2
supermovetime = 99999
pausemovetime = 99999
scale = 1, 1
sprpriority = 3
shadow = -1, -1, -1
ownpal = 1


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

[State 4130]
type=ChangeAnim
trigger1=Anim=4140
trigger1=!Animtime
value=4150

[State 4130]
type=ChangeState
trigger1=Anim=4150&&!Animtime
value=4160


[Statedef 4160]
type=S
physics=N
movetype=I
anim=4160
ctrl=0

[State 4100]
type=Screenbound
trigger1=1
value=0
movecamera=1,1

[State 4100]
type=Playsnd
trigger1=anim=4140
trigger1=animelemtime(4)=0
value=3,1



[State 4190]
type=Playsnd
trigger1=time=160
trigger1=!lose
value=4100,3

[State 4190]
type=Changestate
triggerall=time>=110
trigger1=roundstate=2
trigger2=!win
value=4190

[Statedef 4190]
type=A
physics=N
movetype=I
anim=4190
ctrl=0


[State 105, PlaySnd]
type = PlaySnd
trigger1 = Time= 0
value = 1, 1

[State 4190]
type=velset
trigger1=animelem=3
x=-7
y=-1

[State 4190]
type=ChangeState
trigger1=time>=30
value=4100


;Lvl3 Billy
[Statedef 3520]
type=S
physics=N
movetype=A
anim=4000
ctrl=0
velset=0,0
poweradd = -3000

[State 3500, Super Pause FX]
type = Helper
trigger1 = !time
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = 11, -65
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3500, Super Pause]
type = SuperPause
trigger1 = !time
time = 30
moveTime = 30
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 4000]
type=Nothitby
trigger1=time=[1,36]
time=1
value=SCA



[State 4000]
type=velset
trigger1=time=31
x=9
y=0

[State 2000, HitDef]
type=HitDef
trigger1=time=0
attr=S, HA
animtype=Hard
damage=10, 0
guardflag=M
hitflag=MAF
pausetime=10, 10
ground.type=High
guard.slidetime=6
ground.hittime =15
guard.hittime = (15) - 6
ground.velocity=-2.5
air.velocity=-2.5,-4
fall=1
kill=0
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=-50
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48


[State 4000]
type=Targetstate
trigger1=numtarget
trigger1=movehit
value=4050

[State 4000]
type=Changestate
trigger1=numtarget
trigger1=movehit
trigger1=target,stateno=4050
value=4502


[State 4000]
type=ChangeState
trigger1=moveguarded||movereversed
value=4501
ctrl=0

[State 4000]
type=ChangeState
trigger1 = AnimTime = 0
value=101
ctrl=0

[Statedef 4501]
type=S
physics=S
movetype=I
anim=4001
velset=-5,0
ctrl=0

[State 8520, Assert]
type = assertspecial
trigger1 = time < 150
flag = nobardisplay
flag2 = noBG
flag3 = noFG

[State 4001]
type=ChangeState
trigger1=!Animtime
value=0
ctrl=1

[Statedef 4502]
type=S
physics=N
movetype=A
anim=4002
ctrl=0

[State 8520, Assert]
type = assertspecial
trigger1 = time < 999
flag = nobardisplay
flag2 = noBG
flag3 = noFG

[State 4002]
type=Playerpush
trigger1=1
value=0

[State 3010,  AfterImage]
type=AfterImage
trigger1=!time
time=111
length=10
framegap=3
trans=add1
palcontrast=128,128,128
paladd=0,0,0
palmul=1,1,1

[State 4001]
type=targetstate
triggerall=numtarget
trigger1=animelem=3
trigger2=animelem=7
trigger3=animelem=11
trigger4=animelem=14
trigger5=animelem=19
trigger6=animelem=24
trigger7=animelem=32
value=4051

[State 4001]
type=hitadd
triggerall=numtarget
trigger1=animelem=3
trigger2=animelem=7
trigger3=animelem=11
trigger4=animelem=14
trigger5=animelem=19
trigger6=animelem=24
trigger7=animelem=32
value=1


[State 4001]
type=playsnd
triggerall=numtarget
trigger1=animelem=3
trigger2=animelem=7
trigger3=animelem=11
trigger4=animelem=14
trigger5=animelem=19
trigger6=animelem=24
trigger7=animelem=32
value=s2,0+(random%4)
channel = 1

[State 4001]
type=playsnd
triggerall=numtarget
trigger1=animelem=3
trigger2=animelem=7
trigger3=animelem=11
trigger4=animelem=14
trigger5=animelem=19
trigger6=animelem=24
trigger7=animelem=32
value=s4,0+(random%2)
channel = 2


[State 4001]
type=helper
triggerall=numtarget
trigger1=animelem=3
trigger2=animelem=7
trigger3=animelem=11
trigger4=animelem=14
trigger5=animelem=19
trigger6=animelem=24
trigger7=animelem=32
ID = 8012
stateno = 8012
Name = "8012"
pos = 40, -60
postype = p1
facing = 1
scale = 1, 1
sprpriority = 4
ownpal = 0


[State 4001]
type=targetlifeadd
triggerall=numtarget
trigger1=animelem=3
trigger2=animelem=7
trigger3=animelem=11
trigger4=animelem=14
trigger5=animelem=19
trigger6=animelem=24
trigger7=animelem=32
value=-20
kill=0



[State 4001]
type=varadd
triggerall=numtarget
trigger1=animelem=3
trigger2=animelem=7
trigger3=animelem=11
trigger4=animelem=14
trigger5=animelem=19
trigger6=animelem=24
trigger7=animelem=32
fvar(38)=-0.05


[State 4001]
type=targetbind
trigger1=numtarget
trigger1=time<100
pos=40,0
facing=-1


[State 4001]
type=targetbind
trigger1=numtarget
trigger1=time>=100
pos=40-(time-100)*8,0
facing=-1


[State 4001]
type=posadd
trigger1=numtarget
trigger1=time>=100
x=4


[State 4001]
type=targetfacing
trigger1=numtarget
value=-1


[State 4001]
type=velmul
trigger1=1
x=0.90

[State 4001]
type=velset
trigger1=abs(vel x)<0.1
trigger2=facing*(helper(30000+(facing=-1)*10),pos x-pos x)<=80
x=0



[State 4001]
type=posadd
trigger1=time<100
trigger1=facing*(helper(30000+(facing=-1)*10),pos x-pos x)>80
x=1.5

[State 4001]
type=posadd
trigger1=time<100
trigger1=facing*(helper(30000+(facing=-1)*10),pos x-pos x)<=80
value=facing*(helper(30000+(facing=-1)*10),pos x-pos x)-80

[State 4001]
type=ChangeState
trigger1=!Animtime
value=4503

[Statedef 4503]
type=S
physics=S
movetype=A
anim=4003
ctrl=0

[State 8520, Assert]
type = assertspecial
trigger1 = time < 999
flag = nobardisplay
flag2 = noBG
flag3 = noFG

[State 4003]
type=turn
trigger1=!time

[State 4003]
type=targetbind
trigger1=animelemtime(3)<0
pos=70,0

[State 4001]
type=targetstate
triggerall=numtarget
trigger1=animelem=3
value=4552

[State 4001]
type=hitadd
triggerall=numtarget
trigger1=animelem=3
value=1

[State 4001]
type=playsnd
triggerall=numtarget
trigger1=animelem=3
value=s2,5


[State 4001]
type=playsnd
triggerall=numtarget
trigger1=animelem=3
value=4,0


[State 4001]
type=helper
triggerall=numtarget
trigger1=animelem=3
ID = 8012
stateno = 8012
Name = "8012"
pos = 40, -60
postype = p1
facing = 1
scale = 1, 1
sprpriority = 4
ownpal = 0



[State 4001]
type=targetlifeadd
triggerall=numtarget
trigger1=animelem=3
value=-40
kill=0

[State 4001]
type=varadd
triggerall=numtarget
trigger1=animelem=3
fvar(38)=-0.05

[State 4003]
type=ChangeState
trigger1=!Animtime
trigger1=numtarget
trigger1=numhelper(4600)
trigger1=helper(4600),stateno=4610
value=4504

[State 4003]
type=ChangeState
trigger1=!Animtime
value=0
ctrl=1

[Statedef 4504];
type=S
physics=N
movetype=A
anim=0
ctrl=0
velset=0,0

[State 8520, Assert]
type = assertspecial
trigger1 = time < 999
flag = nobardisplay
flag2 = noBG
flag3 = noFG

[State 3500, Super Pause FX]
type = Helper
trigger1 = !time
stateNo = 8581
ID = 8500
name = "Superpause FX"
posType = p1
pos = 11, -65
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3500, Super Pause]
type = SuperPause
trigger1 = !time
time = 30
moveTime = 30
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0



[State 4000]
type=ChangeAnim
trigger1=time<30
value=0


[State 4000]
type=ChangeAnim
trigger1=time=30
value=4504


[State 192, PlaySnd]
type=PlaySND
trigger1=Anim=4504
trigger1=AnimElem=5,8
value=50,2

[State 192, PlaySnd]
type=PlaySND
trigger1=Anim=4504
trigger1=AnimElem=5
value=s2,5


[State 4000]
type=ChangeAnim
trigger1=anim=4504
trigger1=!Animtime
value=0


[State 1100]
type=nothitby
trigger1=1
value=SCA



[State 4001]
type=targetfacing
triggerall=numtarget
triggerall=numhelper(4600)
triggerall=helper(4600),anim=4630
trigger1=helper(4600),animelem=4
value=1

[State 4001]
type=targetfacing
triggerall=numtarget
trigger1=Anim=4004
trigger1=0
value=-1

[State 4001]
type=targetstate
triggerall=numtarget
triggerall=numhelper(4600)
triggerall=helper(4600),anim=4630
triggerall=helper(4600),animelemtime(3)>=0
triggerall=helper(4600),animelemtime(helper(4600),Anim)=0
trigger1=(helper(4600),Animelemno(0)%3)=0
value=4553
persistent=5


[State 4001]
type=targetlifeadd
triggerall=numtarget
triggerall=numhelper(4600)
triggerall=helper(4600),anim=4630
triggerall=helper(4600),animelemtime(3)>=0
triggerall=helper(4600),animelemtime(helper(4600),Anim)=0
trigger1=(helper(4600),Animelemno(0)%3)=0
value=-10
kill=0


[State 4001]
type=varadd
triggerall=numtarget
triggerall=numhelper(4600)
triggerall=helper(4600),anim=4630
triggerall=helper(4600),animelemtime(3)>=0
triggerall=helper(4600),animelemtime(helper(4600),Anim)=0
trigger1=(helper(4600),Animelemno(0)%3)=0
fvar(38)=-0.05

[State 1260, PlaySnd]
type=PlaySnd
triggerall=numtarget
triggerall=numhelper(4600)
triggerall=helper(4600),anim=4630
triggerall=helper(4600),animelemtime(3)>=0
triggerall=helper(4600),animelemtime(helper(4600),Anim)=0
trigger1=(helper(4600),Animelemno(0)%3)=0
value=s2,5
persistent=5

[State 4001]
type=hitadd
triggerall=numtarget
triggerall=numhelper(4600)
triggerall=helper(4600),anim=4630
triggerall=helper(4600),animelemtime(3)>=0
triggerall=helper(4600),animelemtime(helper(4600),Anim)=0
trigger1=(helper(4600),Animelemno(0)%3)=0
value=1
persistent=5


[State 4001]
type=helper
triggerall=numtarget
triggerall=numhelper(4600)
triggerall=helper(4600),anim=4630
triggerall=helper(4600),animelemtime(3)>=0
triggerall=helper(4600),animelemtime(helper(4600),Anim)=0
trigger1=(helper(4600),Animelemno(0)%3)=0
ID = 8012
stateno = 8012
Name = "8012"
pos = -20, -40
postype = p2
facing = 1
scale = 1, 1
sprpriority = 4
ownpal = 0



[State 4001]
type=targetlifeadd
triggerall=numtarget
triggerall=numhelper(4600)
triggerall=helper(4600),anim=4640
trigger1=helper(4600),animelem=5
value=-40
kill=0


[State 4001]
type=varadd
triggerall=numtarget
triggerall=numhelper(4600)
triggerall=helper(4600),anim=4640
trigger1=helper(4600),animelem=5
fvar(38)=-0.05


[State 4001]
type=targetstate
triggerall=numtarget
triggerall=numhelper(4600)
triggerall=helper(4600),anim=4640
trigger1=helper(4600),animelem=5
value=4555


[State 1260, PlaySnd]
type=PlaySnd
triggerall=numtarget
triggerall=numhelper(4600)
triggerall=helper(4600),anim=4640
trigger1=helper(4600),animelem=5
value=s2,3200

[State 4001]
type=hitadd
triggerall=numtarget
triggerall=numhelper(4600)
triggerall=helper(4600),anim=4640
trigger1=helper(4600),animelem=5
value=1

[State 4001]
type=helper
triggerall=numtarget
triggerall=numhelper(4600)
triggerall=helper(4600),anim=4640
trigger1=helper(4600),animelem=5
ID = 8012
stateno = 8012
Name = "8012"
pos = -20, -40
postype = p2
facing = 1
scale = 1, 1
sprpriority = 4
ownpal = 0



[State 4001]
type=varadd
triggerall=numtarget
triggerall=numhelper(4600)
triggerall=helper(4600),anim=4640
trigger1=helper(4600),animelem=5
fvar(38)=-0.05
persistent=5


[State 4004]
type=ChangeState
trigger1=numtarget
trigger1=target,stateno=4555
trigger1=target,time>=33
value=4505


[State 4004]
type=ChangeState
trigger1=!numtarget
trigger2=time>=500
value=0
ctrl=1

[Statedef 4505];
type=S
physics=N
movetype=A
anim=4505
ctrl=0
velset=0,0

[State 8520, Assert]
type = assertspecial
trigger1 = time < 999
flag = nobardisplay
flag2 = noBG
flag3 = noFG

[State 4005]
type=Playerpush
trigger1=1
value=0

[State 1100]
type=nothitby
trigger1=1
value=SCA

[State 4005]
type=playsnd
trigger1=anim=4505
trigger1=animelem=2
value=1,5

[State 4001]
type=targetfacing
triggerall=numtarget
trigger1=anim=4505&&animelem=3
value=-1

[State 2110, PlaySnd]
type=PlaySND
triggerall=anim=4505
trigger1=AnimElem=3
value=62,2

[State 2110, PlaySnd]
type=PlaySND
triggerall=anim=4505
trigger1=AnimElem=3
trigger2=animelem=20
value=s2,5

[State 2110, PlaySnd]
type=PlaySND
triggerall=anim=4505
trigger1=AnimElem=10
value=s2,3200


[State 2110, Explod]
type=Explod
trigger1=anim=4505
trigger1=AnimElem=8
anim=22800
ID=22800
pos=0,0
postype=p1
ownpal=1
bindtime=-1
removetime=-2
sprpriority=4
removeongethit=1
ignorehitpause=0




[State 4005]
type=targetstate
trigger1=anim=4505&&animelem=3
value=4556

[State 4001]
type=targetstate
triggerall=numtarget
trigger1=anim=4505&&animelem=10
value=4557


[State 4001]
type=targetstate
triggerall=numtarget
trigger1=anim=4505&&animelem=20
value=4558


[State 4001]
type=hitadd
triggerall=anim=4505
triggerall=numtarget
trigger1=animelem=3
trigger2=animelem=10
trigger3=animelem=20
value=1

[State 4001]
type=helper
triggerall=anim=4505
triggerall=numtarget
trigger1=animelem=3
trigger2=animelem=10
trigger3=animelem=20
ID = 8012
stateno = 8012
Name = "8012"
pos = 20, -60
postype = p1
facing = 1
scale = 1, 1
sprpriority = 4
ownpal = 0


[State 4001]
type=targetlifeadd
triggerall=anim=4505
triggerall=numtarget
trigger1=animelem=3
trigger2=animelem=20
value=-25
kill=0


[State 4001]
type=targetlifeadd
triggerall=anim=4505
triggerall=numtarget
trigger1=animelem=10
value=-50
kill=0


[State 4001]
type=varadd
triggerall=anim=4505
triggerall=numtarget
trigger1=animelem=3
trigger2=animelem=10
trigger3=animelem=20
fvar(38)=-0.05

[State 4001]
type=targetbind
triggerall=anim=4505
triggerall=numtarget
trigger1=animelem=3
pos=50,-5


[State 4001]
type=targetbind
triggerall=anim=4505
triggerall=numtarget
trigger1=animelem=10
pos=50,-20



[State 4001]
type=targetbind
triggerall=anim=4505
triggerall=numtarget
trigger1=animelem=20
pos=85,-20


[State 4001]
type=targetbind
triggerall=anim=4505
triggerall=numtarget
trigger1=0
pos=20,-10


[State 4004]
type=ChangeState
trigger1=!Animtime
trigger1=numtarget
value=4506

[State 4004]
type=ChangeState
trigger1=!Animtime
value=0
ctrl=1

[Statedef 4506];
type=S
physics=N
movetype=A
anim=2100
ctrl=0
velset=0,0

[State 8520, Assert]
type = assertspecial
trigger1 = time < 999
flag = nobardisplay
flag2 = noBG
flag3 = noFG

[State 2110, Helper]
type=Helper
trigger1=time=39
id=8150
name="8150"
pos=0,0
postype=P2
stateno=8150
helpertype=normal
keyctrl=0
ownpal=1
ignorehitpause=1

[State 2110, Helper]
type=Helper
trigger1=time=39
id=8150
name="8150"
pos=0,0
postype=P2
stateno=8150
helpertype=normal
keyctrl=0
ownpal=1
ignorehitpause=1

[State 4005]
type=Playerpush
trigger1=1
value=0

[State 1100]
type=nothitby
trigger1=1
value=SCA

[State 2100, SuperPause]
type=SuperPause
trigger1=Time=2
time=32
movetime=32
anim=-1
darken=0
poweradd=-1000
p2defmul=1

[State 2100, PlaySnd]
type=PlaySND
trigger1=AnimElem=1
value=5,1


[State 2100, PlaySnd]
type=PlaySND
trigger1=AnimElem=1
value=64,0

[State 2100, EnvColor]
type=EnvColor
trigger1=Time=2
ignorehitpause=1
value=0, 0, 0
time=31
under=1

[State 2100, AssertSpecial]
type=AssertSpecial
trigger1=Time=[1,31]
flag=NoFG
flag1=noshadow
ignorehitpause=1

[State 2100, Explod]
type=Explod
trigger1=Time=2
anim=6060
pos=0,-65
postype=p1
sprpriority=0
supermove=1
bindtime=1
removetime=-2
ownpal=1

[State 2100, Explod]
type=Explod
trigger1=Time=2
anim=6061
pos=0,-65
postype=p1
sprpriority=3
supermove=1
bindtime=1
removetime=-2
ownpal=1


[State 2100, Explod]
type=Explod
trigger1=Time=2
anim=6060
pos=270,-65
postype=p1
sprpriority=0
supermove=1
bindtime=1
removetime=-2
ownpal=1

[State 2100, Explod]
type=Explod
trigger1=Time=2
anim=6061
pos=270,-65
postype=p1
sprpriority=3
supermove=1
bindtime=1
removetime=-2
ownpal=1


[State 2100, PlaySnd]
type=PlaySnd
trigger1=AnimElem=4
value=64,1

[State 2100, PlaySnd]
type=PlaySnd
trigger1=AnimElem=6
value=62,1

[State 2100, Explod]
type=Explod
trigger1=AnimElem=2
anim=30000
ID=30000
pos=0,0
postype=p1
ownpal=1
bindtime=-1
removetime=31
supermove=1
sprpriority=3
persistent=0
removeongethit=1
ignorehitpause=1

[State 2100, Explod]
type=Explod
trigger1=AnimElem=4
anim=30001
ID=30001
pos=0,0
postype=p1
ownpal=1
bindtime=-1
removetime=-2
supermove=1
sprpriority=3
persistent=0
removeongethit=1
ignorehitpause=1



[State 2100, PosAdd]
type=PosAdd
trigger1=Animelem=4
trigger2=Animelem=5
trigger3=Animelem=12
x=16

[State 2100, VelSet]
type=VelSet
trigger1=Animelem=6
x=8

[State 2100, VelSet]
type=VelSet
trigger1=Animelem=12
x=0

[State 2100, VelMul]
type=VelMul
trigger1=Animelem=8,>=0
x=.95


[State 2110, PlaySnd]
type=PlaySND
trigger1=time=39
value=4,3

[State 2110, PlaySnd]
type=PlaySND
trigger1=time=39
value=4,1

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

[State 4001]
type=targetstate
triggerall=numtarget
trigger1=time=39
value=4559


[State 4001]
type=hitadd
trigger1=time=39
value=2

[State 4001]
type=helper
triggerall=numtarget
trigger1=time=39
ID = 8012
stateno = 8012
Name = "8012"
pos = 20, -60
postype = p2
facing = 1
scale = 1, 1
sprpriority = 4
ownpal = 0

[State 4001]
type=helper
triggerall=numtarget
trigger1=time=39
ID = 8012
stateno = 8012
Name = "8012"
pos = 20, -60
postype = p2
facing = 1
scale = 1, 1
sprpriority = 4
ownpal = 0


[State 4001]
type=targetlifeadd
triggerall=numtarget
trigger1=time=39
value=-50
kill=0


[State 4001]
type=varadd
triggerall=numtarget
trigger1=time=39
fvar(39)=-0.10

[State 4001]
type=targetbind
triggerall=numtarget
trigger1=time=39
pos=100,-5

[State 4001]
type=ChangeAnim
trigger1=time=[39,59]
value=2100
elem=6

[State 4001]
type=velset
trigger1=time=39
x=0

[State 4004]
type=ChangeState
trigger1=time=60
trigger1=numtarget
value=4507

[State 4004]
type=ChangeState
trigger1=!Animtime
value=0
ctrl=1


[Statedef 4507]
type    = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 4507

[State 8520, Assert]
type = assertspecial
trigger1 = time < 999
flag = nobardisplay
flag2 = noBG
flag3 = noFG


[State 1100]
type = nothitby
trigger1=1
value=SCA


[State 1100]
type=PlayerPush
trigger1=1
value=0

[State 2110, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 3
trigger2 = AnimElem = 16
value = 62,2

[State 2110, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 15
value = 65,0

[State 2110, PlaySnd]
type = PlaySND
trigger1 = AnimElem = 18
value = 65,1

[State 2110, Explod]
type = Explod
trigger1 = AnimElem = 2
anim = 4517
ID = 4517
pos = 0,0
postype = p1
ownpal = 1
bindtime = -1
removetime = -2
sprpriority = 4
removeongethit = 1
ignorehitpause = 0

[State 2110, Explod]
type = Explod
trigger1 = AnimElem = 18
anim = 4518
ID = 4518
pos = 0,0
postype = p1
ownpal = 1
bindtime = -1
removetime = -2
sprpriority = 4
removeongethit = 1
ignorehitpause = 0

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


[State 2110, VelSet]
type = VelSet
trigger1 = Animelem = 1
x = 9.5

[State 2110, VelSet]
type = VelSet
trigger1 = Animelem = 2,5
x = 0

[State 2110, VelMul]
type = VelMul
trigger1 = Animelem = 1,>= 0
x = .96

[State 4507]
type=ChangeAnim
trigger1=time=[13,45]
value=4507
elem=4

[State 4001]
type=helper
triggerall=numtarget
trigger1=time=13
ID = 8012
stateno = 8012
Name = "8012"
pos = 40, -60
postype = p1
facing = 1
scale = 1, 1
sprpriority = 4
ownpal = 0

[State 4001]
type=helper
triggerall=numtarget
trigger1=time=13
trigger2=time=85
ID = 8012
stateno = 8012
Name = "8012"
pos = 20, -30
postype = p1
facing = 1
scale = 1, 1
sprpriority = 4
ownpal = 0



[State 2100, PlaySnd]
type=PlaySnd
trigger1=time=13
trigger2=time=85
value=s2,3200
volume=200


[State 4001]
type=targetstate
triggerall=numtarget
trigger1=time=13
value=4560

[State 4001]
type=targetstate
triggerall=numtarget
trigger1=time=85
value=4561

[State 4001]
type=hitadd
triggerall=numtarget
trigger1=time=13
trigger2=time=85
value=2

[State 4001]
type=targetlifeadd
triggerall=numtarget
trigger1=time=13
value=-50
kill=0

[State 4001]
type=targetlifeadd
triggerall=numtarget
trigger1=time=85
value=-50
kill=1

[State 4001]
type=varadd
triggerall=numtarget
trigger1=time=13
trigger2=time=85
fvar(39)=-0.10

[State 4001]
type=targetbind
triggerall=numtarget
trigger1=time=13
pos=30,-30


[State 4001]
type=targetbind
triggerall=numtarget
trigger1=time=85
pos=30,-60



[State 2110, ChangeState]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 4552]
type=A
physics=N
movetype=H
ctrl=0


[State 4050]
type=playerpush
trigger1=1
value=0


[State 4052]
type=turn
trigger1=!time

[State 4050]
type=nothitby
trigger1=1
value=SCA

time=1


[State 4050]
type=ChangeAnim2
trigger1=!time
value=5030

[State 4001]
type=ChangeAnim2
trigger1=time=12
value=5050

[State 4001]
type=velset
trigger1=time=12
x=-6
y=-6.2


[State 4001]
type=veladd
trigger1=time>12
y=0.4


[State 4001]
type=SelfState
trigger1=time>12
trigger1=vel y>0
trigger1=pos y>0
value=5100


[Statedef 4553];ƒ‰ƒCƒgƒjƒ“ƒOƒeƒCƒ‹
type   =A
movetype=H
physics=N
velset=0,0
sprpriority=0


[State 4050]
type=playerpush
trigger1=1
value=0


[State 4054]
type=posset
trigger1=!time&&prevstateno!=4553
y=0


[State 4054]
type=velset
trigger1=time=7
y=-1

[State 4050]
type=nothitby
trigger1=1
value=SCA

time=1


[State 241, ChangeAnim2]
type=ChangeAnim2
Trigger1=time=0
value=4553

[State 1261, PalFX]
type=PalFX 
trigger1=Time=0
time=32
color=0
invertall=1
add=24,22,72
sinadd=22,24,40,8


[State 241, ChangeState]
type=SelfState
trigger1=time>120
value=5050


[Statedef 4554];‚Ó‚Á‚Æ‚Î‚µ
type   =A
movetype=H
physics=N
velset=0,0
sprpriority=0


[State 4050]
type=playerpush
trigger1=1
value=0


[State 4054]
type=posset
trigger1=!time
y=-5

[State 241, ChangeAnim2]
type=ChangeAnim2
Trigger1=time=0
value=241


[State 241, ChangeAnim2]
type=ChangeAnim2
Trigger1=time=12
value=243

[State 241, VelSet]
type=VelSet
trigger1=time=12
x=-8

[State 241, ChangeState]
type=ChangeState
trigger1=time>120 && BackEdgeBodyDist < 5
value=242


[Statedef 4555];ƒ‰ƒCƒgƒjƒ“ƒOƒeƒCƒ‹‚Ó‚Á‚Æ‚Î‚µ
type=A
physics=N
movetype=H
velset=0,0
ctrl=0


[State 4050]
type=playerpush
trigger1=1
value=0


[State 1261, PalFX]
type=PalFX 
trigger1=Time=0
time=32
color=0
invertall=1
add=24,22,72
sinadd=22,24,40,8

[State 4050]
type=nothitby
trigger1=1
value=SCA

time=1

[State 4001]
type=ChangeAnim
trigger1=time<=16
value=ifelse(SelfAnimExist(5052),5052,5050)

[State 4001]
type=velset
trigger1=time=16
x=-7.5
y=-4.0


[State 4001]
type=veladd
trigger1=time>16
y=0.4


[State 4001]
type=SelfState
trigger1=time>16
trigger1=vel y>0
trigger1=pos y>0
value=5100


[Statedef 4556]
type=A
physics=N
movetype=H
velset=0,0
ctrl=0

[State 4050]
type=nothitby
trigger1=1
value=SCA

time=1

[State 4050]
type=playerpush
trigger1=1
value=0

[State 4050]
type=ChangeAnim2
trigger1=!time
value=5030

[State 4001]
type=ChangeAnim2
trigger1=time=12
value=5050

[State 4001]
type=velset
trigger1=time=12
x=0
y=-4.3

[State 4001]
type=veladd
trigger1=time>12
y=0.35


[State 4001]
type=SelfState
trigger1=time>12
trigger1=vel y>0
trigger1=pos y>0
value=5100


[Statedef 4557]
type=A
physics=N
movetype=H
velset=0,0
ctrl=0

[State 4050]
type=nothitby
trigger1=1
value=SCA

time=1

[State 4050]
type=playerpush
trigger1=1
value=0


[State 4050]
type=ChangeAnim
trigger1=!time
value=5030

[State 4057]
type=palfx
trigger1=!time
time=75
invertall=1
mul=256,64,0
sinadd=50,200,0,8

[State 4001]
type=ChangeAnim
trigger1=time=16
value=5050

[State 4001]
type=velset
trigger1=time=16
x=-1
y=-6.7

[State 4001]
type=veladd
trigger1=time>16
y=0.43


[State 4001]
type=SelfState
trigger1=time>16
trigger1=vel y>0
trigger1=pos y>0
value=5100


[Statedef 4558]
type=A
physics=N
movetype=H
velset=0,0
ctrl=0


[State 4050]
type=playerpush
trigger1=1
value=0


[State 4050]
type=nothitby
trigger1=1
value=SCA

time=1

[State 4001]
type=ChangeAnim
trigger1=time<=18
value=ifelse(SelfAnimExist(5052),5052,5050)

[State 4001]
type=velset
trigger1=time=18
x=-3.6
y=-3.5

[State 4001]
type=veladd
trigger1=time>18
y=0.36


[State 4001]
type=SelfState
trigger1=time>18
trigger1=vel y>0
trigger1=pos y>0
value=5100


[Statedef 4559]
type=A
physics=N
movetype=H
velset=0,0
ctrl=0

[State 4050]
type=nothitby
trigger1=1
value=SCA

time=1

[State 4050]
type=playerpush
trigger1=1
value=0


[State 4057]
type=palfx
trigger1=1
time=1
invertall=1
mul=ceil(256*ifelse(time%16>7,(time%8+1)/8.0,(8-time%8)/8.0)),96,ceil(256*ifelse(time%16<=7,(time%8+1)/8.0,(8-time%8)/8.0))


[State 4050]
type=ChangeAnim
trigger1=time<20
value=5030

[State 4050]
type=ChangeAnim
trigger1=time=20
value=5050

[State 4001]
type=velset
trigger1=time=20
x=0
y=-6.5

[State 4001]
type=veladd
trigger1=time>20
y=0.35


[State 4001]
type=SelfState
trigger1=time>12
trigger1=vel y>0
trigger1=pos y>0
value=5100


[Statedef 4560];‚Q’i–Úƒqƒbƒg
type=A
physics=N
movetype=H
velset=0,0
ctrl=0


[State 4050]
type=playerpush
trigger1=1
value=0

[State 4050]
type=nothitby
trigger1=1
value=SCA

time=1


[State 4057]
type=palfx
trigger1=1
time=1
invertall=1
mul=ceil(256*ifelse(time%16>7,(time%8+1)/8.0,(8-time%8)/8.0)),96,ceil(256*ifelse(time%16<=7,(time%8+1)/8.0,(8-time%8)/8.0))


[State 4050]
type=ChangeAnim
trigger1=time<32
value=5030

[State 4050]
type=ChangeAnim
trigger1=time=32
value=5050

[State 4001]
type=velset
trigger1=time=32
x=0
y=-7.5

[State 4001]
type=veladd
trigger1=time>32
y=0.35


[State 4001]
type=SelfState
trigger1=time>32
trigger1=vel y>0
trigger1=pos y>0
value=5100


[Statedef 4561];‚R’i–Úƒqƒbƒg
type=A
physics=N
movetype=H
velset=0,0
ctrl=0

[State 4050]
type=screenbound
trigger1=1
value=0
movecamra=0,0

[State 4050]
type=playerpush
trigger1=time<32
value=0

[State 4050]
type=nothitby
trigger1=time<32
value=SCA

time=1


[State 4057]
type=palfx
trigger1=1
time=1
invertall=1
mul=ceil(256*ifelse(time%16>7,(time%8+1)/8.0,(8-time%8)/8.0)),96,ceil(256*ifelse(time%16<=7,(time%8+1)/8.0,(8-time%8)/8.0))


[State 4050]
type=ChangeAnim
trigger1=time<32
value=5030

[State 4050]
type=ChangeAnim
trigger1=time=32
value=5050

[State 4001]
type=velset
trigger1=time=32
x=0
y=-11

[State 4001]
type=veladd
trigger1=time>32
y=0.35


[State 4001]
type=SelfState
trigger1=time>12
trigger1=vel y>0
trigger1=pos y>0
value=5100

[Statedef 4600];ƒrƒŠ[‘Ò‹@
type=A
physics=N
movetype=I
anim=9999
ctrl=0

[State 4100]
type=varset
trigger1=!time
fvar(0)=root,fvar(1)*(prevstateno!=[4600,4699])

[State 4100]
type=Screenbound
trigger1=1
value=0


[State 4100]
type=Explod
trigger1=!numexplod(4600)
anim=4600
ID=4600
pos=ifelse((teamside=1),50+root,var(25),270-root,var(25)), 80+root,var(26)
postype=left
facing=ifelse((teamside=1),1,-1)
vfacing=1
bindtime=-1
removetime=-1
supermovetime=99999
pausemovetime=99999
scale=0.25, 0.25
sprpriority=-1
shadow=0, 0, 0
ownpal=0

[State 4100]
type=varadd
triggerall=helper(30000),var(42)
triggerall=root,movetype=A
triggerall=root,time=1
trigger1=root,stateno=[220,225]
trigger2=root,stateno=[230,235]
trigger3=root,stateno=[420,430]
trigger4=root,stateno=260||root,stateno=460
trigger5=root,stateno=1300||root,stateno=1350
trigger6=root,stateno=1500||root,stateno=1520
trigger7=root,stateno=[620,630]
trigger8=root,stateno=3040||root,stateno=3120||root,stateno=3150||root,stateno=3160
fvar(0)=0.006*(3-root,life*2.0/root,lifemax)*4/5


[State 4100]
type=varadd
triggerall=helper(30000),var(42)
triggerall=root,movetype=A
triggerall=root,time=1
trigger1=root,stateno=2000
fvar(0)=0.024*(3-root,life*2.0/root,lifemax)*4/5


[State 4100]
type=varadd
triggerall=helper(30000),var(42)
triggerall=root,movetype=A
triggerall=root,time=1
trigger1=root,stateno=2100
fvar(0)=0.048*(3-root,life*2.0/root,lifemax)*4/5

[State 4100]
type=varadd
triggerall=helper(30000),var(42)
trigger1=root,stateno=100
trigger1=root,time=1
trigger1=playerID(root,var(57)),statetype!=L
trigger2=root,stateno=1250
trigger2=root,time=1
fvar(0)=0.012*(3-root,life*2.0/root,lifemax)*4/5


[State 4100]
type=varadd
triggerall=helper(30000),var(42)
triggerall=fvar(0)<1

trigger1=root,stateno=160
trigger1=root,Animtime=-1
fvar(0)=0.048*(3-root,life*2.0/root,lifemax)*4/5

[State 4100]
type=varadd
triggerall=helper(30000),var(42)
triggerall=root,movetype=A
triggerall=root,time=1
triggerall=playerID(root,var(57)),statetype!=L||playerID(root,var(57)),stateno>=5120
trigger1=root,stateno=250||root,stateno=450||root,stateno=260||root,stateno=460
fvar(0)=0.012*(3-root,life*2.0/root,lifemax)*4/5

[State 4100]
type=varadd
triggerall=helper(30000),var(42)
triggerall=root,movetype=A
triggerall=root,time=1
triggerall=playerID(root,var(57)),statetype!=L||playerID(root,var(57)),stateno>=5120
trigger1=0
trigger2=root,stateno=1400||root,stateno=1500||root,stateno=1510||root,stateno=1520||root,stateno=1515||root,stateno=1525
trigger3=root,stateno=1600
trigger4=root,stateno=2100||root,stateno=2000
trigger4=root,prevstateno=250||root,prevstateno=450||root,prevstateno=100||root,prevstateno=101
fvar(0)=0.018*(3-root,life*2.0/root,lifemax)*4/5

[State 4100]
type=varadd
trigger1=fvar(0)<1
trigger1=root,stateno!=[3001,3160]
fvar(0)=0.0001*((roundstate=2)+(roundstate=2&&teammode=turns)*0.5)*(helper(30000),var(42)!=0)*(3-root,life*2.0/root,lifemax)*4/5

[State 4100]
type=varset
trigger1=fvar(0)>1
fvar(0)=1


[State 4100]
type=palfx
trigger1=fvar(0)<1
trigger2=power<2000-(root,life<=root,lifemax*0.3)*1000
trigger3=power<3000-(root,life<=root,lifemax*0.3)*1000
trigger3=!(root,ctrl||root,stateno=100&&root,time>=5||root,stateno=101)
trigger4=(root,stateno>=500||!root,movecontact)&&!root,ctrl&&!(root,stateno=100&&root,time>=5||root,stateno=101)
trigger4=root,stateno!=1250||!root,movecontact
trigger5=root,statetype=A
mul=ceil(fvar(0)*256),ceil(fvar(0)*256),ceil(fvar(0)*256)
time=1
color=0


[State -2];ƒrƒŠ[
type=destroyself
trigger1=numenemy=1
trigger1=enemynear,name="Billy"&&enemynear,authorname="RYO 2005"
trigger2=numenemy=2
trigger2=enemynear(0),name="Billy"&&enemynear(0),authorname="RYO 2005"||enemynear(1),name="Billy"&&enemynear(1),authorname="RYO 2005"

[State 4100]
type=ChangeState
trigger1=root,stateno=4503
trigger1=root,numtarget
trigger1=root,animelemtime(5)>=0
value=4610

[statedef 4610]
type=S
physics=N
movetype=A
anim=4610
ctrl=0
sprpriority=3

[State 4610]
type=varset
trigger1=!time
fvar(0)=0

[State 4110]
type=turn
trigger1=!time
trigger1=facing=root,facing


[State 4110]
type=velset
trigger1=!time
x=5
y=0

[State 4110]
type=posset
trigger1=!time
x=-facing*200
y=0


[State 4110]
type=velset
trigger1=time
trigger1=pos x*facing>=-140
x=0
y=0


[State 4110]
type=ChangeAnim
trigger1=time
trigger1=pos x*facing>=-140
trigger1=Anim!=4620
value=4620

[State 4100]
type=Screenbound
trigger1=1
value=0
movecamera=1,1


[State 4100]
type=ChangeState
trigger1=root,stateno=4504
trigger1=root,time>=30
value=4630


[State 4100]
type=ChangeState
trigger1=time>=180
value=4690


[Statedef 4630]
type=S
physics=N
movetype=A
ctrl=0


[State 4110]
type=posset
trigger1=!time
x=-facing*140
y=0

[State 4630]
type=ChangeAnim
trigger1=root,stateno=4504
trigger1=root,time<=30
value=4630

[State 4100]
type=Screenbound
trigger1=1
value=0
movecamera=1,1


[State 1260]
type=ChangeAnim
triggerall=anim=4630
trigger1=!Animtime
value=4640


[State 1260, Explod]
type=Explod
trigger1=anim=4640
trigger1=animelem=4
anim=4645
ID=4645
pos=0,0
postype=p1
ownpal=1
bindtime=-1
removetime=-2
sprpriority=4
removeongethit=1
ignorehitpause=1


[State 4130]
type=ChangeState
trigger1=anim=4640
trigger1=!Animtime
value=4650


[State 4100]
type=ChangeState
trigger1=time>=180
value=4690


[Statedef 4650]
type=S
physics=N
movetype=A
anim=4625
ctrl=0

[State 4100]
type=PlayerPush
trigger1=1
value=0

[State 4100]
type=Screenbound
trigger1=1
value=0
movecamera=1,1

[State 4100]
type=Playsnd
trigger1=anim=4625&&animelemtime(3)=10
value=4600,3

[State 4130]
type=ChangeAnim
trigger1=Anim=4625
trigger1=!Animtime
value=4620

[State 4130]
type=ChangeState
trigger1=root,stateno=4506
value=4660

[State 4130]
type=ChangeState
trigger1=!root,numtarget
trigger2=root,stateno!=[4500,4549]
value=4690

[Statedef 4660]
type=S
physics=N
movetype=I
anim=4650
ctrl=0


[State 4110]
type=posset
trigger1=!time
x=-facing*140
y=0

[State 4660]
type=posadd
trigger1=time<=1
x=5

[State 4100]
type=Screenbound
trigger1=1
value=0
movecamera=1,1

[State 4100]
type=Playsnd
trigger1=anim=4140
trigger1=animelemtime(4)=0
value=3,1

[State 4660]
type=velset
trigger1=animelem=8
x=11


[State 4660]
type=velset
trigger1=root,time=[39,48]
x=0

[State 4660]
type=ChangeAnim
trigger1=root,time=[39,48]
value=4650
elem=12

[State 1300, Explod]
type = Explod
trigger1=anim=4650
trigger1 = AnimElem = 6
anim = 4655
ID = 4655
pos = 0,0
postype = p1
ownpal = 1
bindtime = -1
removetime = -2
sprpriority = 4
removeongethit = 1
ignorehitpause = 0
supermovetime=999999
pausemovetime=999999

[State 1300, Explod]
type = Explod
trigger1=anim=4650
trigger1 = AnimElem = 6
anim = 4656
ID = 4656
pos = 0,0
postype = p1
ownpal = 1
bindtime = 1
removetime = -2
sprpriority = 4
removeongethit = 1
ignorehitpause = 1
supermovetime=999999
pausemovetime=999999


[State 4660]
type=Changestate
trigger1=!Animtime
value=4670


[State 4660]
type=Changestate
trigger1=time>=110
value=4690



[Statedef 4670]
type=S
physics=N
movetype=A
anim=4660+(prevstateno=4670)*10
velset=0,0
ctrl=0
sprpriority=3

[State 2100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger1=prevstateno!=4670
value = 4600,1

[State 2100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4600,2

[State 2100, Explod]
type = Explod
trigger1 = AnimElem = 3,2
anim = 4665
ID = 4665
pos = 0,0
postype = p1
ownpal = 1
bindtime = 1
removetime = -2
sprpriority = 4
removeongethit = 1
ignorehitpause = 1

[State 2100, VelSet]
type = VelSet
trigger1 = Animelem = 3
x = 0.5
y = -6.8-(prevstateno=4670)*3

[State 2100, VelAdd]
type = VelAdd
trigger1 = Animelem = 4,>= 0
y = .36

[State 2100, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
StateType = A
physics = N

[State 2100, EnvShake]
type = EnvShake
trigger1 = AnimElem = 4
time = 24
ampl = 4
freq = 180

[State 2100, VelSet]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= 0
value=4670+(prevstateno=4670)*10



[Statedef 4680]
type=S
physics=N
velset=0,0
movetype=I
anim=4680
ctrl=0
sprpriority=3

[State 4680]
type=posset
trigger1=!time
y=0



[State 4680]
type=posadd
trigger1=!time
x=-30

[State 105, PlaySnd]
type=PlaySnd
trigger1=Time=0
value=1, 1



[State 4190]
type=ChangeState
triggerall=!Animtime
trigger1=roundstate=2
trigger2=!win
value=4690


[State 4190]
type=ChangeState
trigger1=!Animtime
value=4695


[Statedef 4690]
type=A
physics=N
movetype=I
anim=4690
ctrl=0
sprpriority=3


[State 105, PlaySnd]
type=PlaySnd
trigger1=Time=0
value=1, 1

[State 4190]
type=velset
trigger1=animelem=2
x=-7
y=-1

[State 4190]
type=ChangeState
trigger1=time>=30
value=4600


[Statedef 4695]
type=A
physics=N
movetype=I
anim=4620
ctrl=0
sprpriority=3

[State 4695]
type=ChangeAnim
trigger1=Anim!=4695
trigger1=root,stateno=[180,182]
value=4695

[State 4190]
type=ChangeState
trigger1=roundstate=2
trigger2=!win
value=4690