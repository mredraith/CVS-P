; _________________________________________
;| Character by Author Name                |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;
;< HELPER STATES >==
;
;<SONIC BOOM PROJECTILE>==
[StateDef 1005]
type = S
physics = N
moveType = A
ctrl = 0
anim = 1005
sprPriority = 3

[State 1005, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1007
ignoreHitPause = 1

[State 1005, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1005, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1005
value = 1005

[State 1005, Button Detect]
type = VarSet
trigger1= !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1005, VelSet]
type = VelSet
trigger1 = 1
x = ifelse(var(10)=2,6,ifelse(var(10)=1,5,4))

[State 1005, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1005, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1005, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1005, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1005, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
trigger1 = Root, StateNo != 193
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 68 < 7, 7, fvar(11) * 68)), 15
getPower = ifElse(!(Root, var(13)), 144, 72) * !(Root, var(20)), 36 * !(Root, var(20))
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = ifelse(var(20), -4.36, -8.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifelse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.36, -4), -8
air.cornerPush.velOff = 0
airGuard.velocity = -5, -1.5
airGuard.cornerPush.velOff = 0
yaccel = Ifelse(var(20),.5,.6)
air.fall = 1
fall.recover = 1
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1006
ignoreHitPause = 1

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 1005, End]
type = DestroySelf
trigger1 = pos x != [-300,300]

;Hit Pause
[StateDef 1006]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1

[State 1006, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1006, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
ignorehitPause = 1

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1006, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1

[State 1006, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1006, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = [1000,1030]
var(18) = 1

[State 1006, End]
type = ChangeState
trigger1 = Time >= 0
value = ifElse(var(12) < 2 && var(10) = 3, 1035, 1007)

;Disappear
[StateDef 1007]
type = A
physics = N
moveType = A
anim = 1006
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 1007, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2,6
channel = 3
volume = -128
lowPriority = 1

[State 1007, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 1007, End]
type = ChangeState
trigger1 = !AnimTime
value = 1008

;Wait
[StateDef 1008]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 1008, End]
type = DestroySelf
trigger1 = !NumTarget
trigger2 = NumTarget
trigger2 = Target, Time <= 1 && !(Target,HitShakeOver)

[Statedef 1010]
type = A
velset = 0,0
anim = 1010
sprpriority = 3

[State 1010, End]
type = destroyself
trigger1 = root,movetype = H
trigger2 = root,stateno != 1000 || root,anim != 1000
trigger2 = root,stateno != 1030 || root,anim != 1030
trigger2 = root,stateno != 3000 || (root,anim != [3000,3002])
trigger2 = root,stateno != 3050 || (root,anim != [3000,3002])
trigger2 = root,stateno != 3200 || root,anim != 3200
trigger2 = root,stateno != 3300 || root,anim != 3300
trigger3 = (root,anim = 1000 || root,anim = 1030) && (root,animelemtime(3) < 0 || root,animelemtime (6) >= 0)
trigger4 = (root,anim = [3000,3002]) && (root,animelemtime(2) < 0 || root,animelemtime(5) >= 0)
trigger5 = root,anim = 3300 && (root,animelemtime(23) < 0 || root,animelemtime(26) >= 0)
trigger6 = root,anim = 3200 && (root,animelemtime(6) < 0 || root,animelemtime(9) >= 0)

[State 1010, Bind]
type = bindtoroot
trigger1 = 1

[State 1010, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256
ignorehitpause = 1

[State 1010, Anim]
type = changeanim
trigger1 = (root,anim = 1000 || root,anim = 1030) && root,animelemtime(3) >= 0 && root,animelemtime(4) < 0
trigger2 = root,anim = 3000 && root,animelemtime(2) >= 0 && root,animelemtime(3) < 0
value = 1010
elem = 1

[State 1010, Anim]
type = changeanim
trigger1 = (root,anim = 1000 || root,anim = 1030) && root,animelemtime(4) >= 0 && root,animelemtime(5) < 0
trigger2 = root,anim = 3000 && root,animelemtime(3) >= 0 && root,animelemtime(4) < 0
value = 1010
elem = 2

[State 1010, Anim]
type = changeanim
trigger1 = (root,anim = 1000 || root,anim = 1030) && root,animelemtime(5) >= 0 && root,animelemtime(6) < 0
trigger2 = root,anim = 3000 && root,animelemtime(4) >= 0 && root,animelemtime(5) < 0
value = 1010
elem = 3

[State 1010, Anim]
type = changeanim
trigger1 = root,anim = 3001 && root,animelemtime(2) >= 0 && root,animelemtime(3) < 0
trigger2 = root,anim = 3200 && root,animelemtime(6) >= 0 && root,animelemtime(7) < 0
value = 1010
elem = 4

[State 1010, Anim]
type = changeanim
trigger1 = root,anim = 3001 && root,animelemtime(3) >= 0 && root,animelemtime(4) < 0
trigger2 = root,anim = 3200 && root,animelemtime(7) >= 0 && root,animelemtime(8) < 0
value = 1010
elem = 5

[State 1010, Anim]
type = changeanim
trigger1 = root,anim = 3001 && root,animelemtime(4) >= 0 && root,animelemtime(5) < 0
trigger2 = root,anim = 3200 && root,animelemtime(8) >= 0 && root,animelemtime(9) < 0
value = 1010
elem = 6

[State 1010, Anim]
type=changeanim
trigger1 = root,anim = 3002 && root,animelemtime(2) >= 0 && root,animelemtime(3) < 0
trigger2 = root,anim = 3300 && root,animelemtime(23) >= 0 && root,animelemtime(24) < 0
value = 1010
elem = 7

[State 1010, Anim]
type = changeanim
trigger1 = root,anim = 3002 && root,animelemtime(3) >= 0 && root,animelemtime(4) < 0
trigger2 = root,anim = 3300 && root,animelemtime(24) >= 0 && root,animelemtime(25) < 0
value = 1010
elem = 8

[State 1010, Anim]
type = changeanim
trigger1 = root,anim = 3002 && root,animelemtime(4) >= 0 && root,animelemtime(5) < 0
trigger2 = root,anim = 3300 && root,animelemtime(25) >= 0 && root,animelemtime(26) < 0
value = 1010
elem = 9

;EX PROJ
[StateDef 1015]
type = S
physics = N
moveType = A
ctrl = 0
anim = 1005
sprPriority = 3

[State 1015, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1007
ignoreHitPause = 1

[State 1015, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1015, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1005
value = 1005

[State 1015, VelSet]
type = VelSet
trigger1 = 1
x = 4

[State 1015, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1015, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1015, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1015, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1015, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
trigger1 = Root, StateNo != 193
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = 50,10
getPower = ifElse(!(Root, var(13)), 144, 72) * !(Root, var(20)), 36 * !(Root, var(20))
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = ifelse(var(20), -4.36, -8.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifelse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.36, -4), -8
air.cornerPush.velOff = 0
airGuard.velocity = -5, -1.5
airGuard.cornerPush.velOff = 0
yaccel = Ifelse(var(20),.5,.6)
air.fall = 1
fall.recover = 1
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1015, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1006
ignoreHitPause = 1

[State 1015, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 1015, End]
type = DestroySelf
trigger1 = pos x != [-300,300]


;EX PROJ SIN
[StateDef 1016]
type = S
physics = N
moveType = A
ctrl = 0
anim = 1005
sprPriority = 3

[State 1016, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1007
ignoreHitPause = 1

[State 1016, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1016, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1005
value = 1005

[State 1016, VelSet]
type = VelSet
trigger1 = 1
x = 4
y = 2*cos(time/14); ** Originally, it was (time/4)

[State 1016, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1016, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1016, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1016, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1016, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
trigger1 = Root, StateNo != 193
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = 50,10
getPower = ifElse(!(Root, var(13)), 144, 72) * !(Root, var(20)), 36 * !(Root, var(20))
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = ifelse(var(20), -4.36, -8.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifelse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.36, -4), -8
air.cornerPush.velOff = 0
airGuard.velocity = -5, -1.5
airGuard.cornerPush.velOff = 0
yaccel = Ifelse(var(20),.5,.6)
air.fall = 1
fall.recover = 1
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1016, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1006
ignoreHitPause = 1

[State 1016, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 1016, End]
type = DestroySelf
trigger1 = pos x != [-300,300]



;EX PROJ SIN LOW
[StateDef 1017]
type = S
physics = N
moveType = A
ctrl = 0
anim = 1005
sprPriority = 3

[State 1017, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1007
ignoreHitPause = 1

[State 1017, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1017, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1005
value = 1005

[State 1017, VelSet]
type = VelSet
trigger1 = 1
x = 4
y = -2.5*cos(time/14); ** Originally, it was (time/4)

[State 1017, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1017, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1017, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1017, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1017, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
trigger1 = Root, StateNo != 193
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = 50,10
getPower = ifElse(!(Root, var(13)), 144, 72) * !(Root, var(20)), 36 * !(Root, var(20))
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = ifelse(var(20), -4.36, -8.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifelse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.36, -4), -8
air.cornerPush.velOff = 0
airGuard.velocity = -5, -1.5
airGuard.cornerPush.velOff = 0
yaccel = Ifelse(var(20),.5,.6)
air.fall = 1
fall.recover = 1
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1017, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1006
ignoreHitPause = 1

[State 1017, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 1017, End]
type = DestroySelf
trigger1 = pos x != [-300,300]



;Genee
[Statedef 1406]
type=A
physics=N
movetype=A
ctrl=0
velset=0, 0
sprpriority=5

[State 1005, ChangeAnim]
type=ChangeAnim
trigger1 =!time&&!prevstateno
value=1405

[State 1005, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause=1

[State 1005, Assert]
type=trans
trigger1=1
trans=addalpha
alpha=256, 256
ignorehitpause=1

[State 0, HitOverride]
type=hitoverride
trigger1= 1
attr=SCA,AA,AP,AT
time=-1
stateno=1409
ignorehitpause=1
[State 0, HB]
type=hitby
trigger1= 1
value=SCA,NP,SP,HP
time=-1
ignorehitpause=1

[State screen]
type = ScreenBound
trigger1 = 1
value = 0

[State 1005, HitSound]
type=playsnd
trigger1=movehit && numtarget
trigger1=target, time=0 && target, movetype=H
value=ifElse(MoveGuarded, 130,2), ifElse(MoveGuarded, 1,6)
persistent=0
ignorehitpause=1

[State 1005, High]
type=hitdef
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1=!var(12)
priority=4, Hit
attr=A, SP
damage=76,10
animtype=Hard
hitflag=MAF
guardflag=MA
pausetime=3*(var(10)=3),12/((root,var(20)>0)+1)
sparkNo=-1
guard.sparkNo=-1
sparkXY=-1
guardsound=s130,1
ground.type=High
ground.slidetime=6
ground.hittime=12
guard.hittime = (12) - 6
ground.velocity=Ifelse(root,var(20),-5,-10),Ifelse(var(10)=3,-4,0)
ground.cornerpush.veloff=Ifelse(root,var(20),0,-5)
air.velocity=Ifelse(root,var(20),-2,-4), -4
down.velocity=0,0
air.fall=1
fall=var(10)=3
fall.recover=0
getpower=Ifelse(var(10)=3,0,ifelse(p2movetype=H,72,144)*!(root,var(20))),Ifelse(var(10)=3,0,36*!(root,var(20)))
givepower=36, 36
envshake.time=12
envshake.ampl=5
sprpriority=5
yaccel=.5
airguard.ctrltime=12
airguard.velocity=ifelse((root,var(20)),-4,-8),-3
forcestand=1
palFX.time = 30
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4

[State 1005, High]
type=hitdef
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1=var(12)
priority=4, Hit
attr=A, SP
damage=76,10
animtype=Hard
hitflag=MAFD
guardflag=MA
pausetime=3*(var(10)=3),12/((root,var(20)>0)+1)
sparkNo=-1
guard.sparkNo=-1
sparkXY=-1
guardsound=s130,1
ground.type=High
ground.slidetime=6
ground.hittime=12
guard.hittime = (12) - 6
ground.velocity=Ifelse(root,var(20),-5,-10),Ifelse(var(10)=3,-4,0)
ground.cornerpush.veloff=Ifelse(root,var(20),0,-5)
air.velocity=Ifelse(root,var(20),-2,-4), -4
down.velocity=0,0
air.fall=1
fall=var(10)=3
fall.recover=0
getpower=Ifelse(var(10)=3,0,ifelse(p2movetype=H,72,144)*!(root,var(20))),Ifelse(var(10)=3,0,36*!(root,var(20)))
givepower=36, 36
envshake.time=12
envshake.ampl=5
sprpriority=5
yaccel=.5
airguard.ctrltime=12
airguard.velocity=ifelse((root,var(20)),-4,-8),-3
forcestand=1
palFX.time = 30
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1005, Counter FX]
type=Helper
trigger1=MoveContact=1 && NumTarget && var(9)
trigger1=!(Target, HitShakeOver)
helperType=Normal
stateNo=8290
ID=8290
name="Counter FX"
posType=P1
pos=ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal=1
pauseMoveTime=65535
superMoveTime=65535
ignoreHitPause=1

[State 1005, HitCount]
type=ParentVarAdd
trigger1=Movehit=1 && NumTarget
var(13)=1
ignorehitpause=1
persistent=0

[State 1005, Projhit]
type=ParentVarAdd
trigger1=Movehit=1 && NumTarget
var(47)=1
ignorehitpause=1
persistent=0

[State 1005, Juggle Points]
type=ParentVarAdd
trigger1=MoveContact=1 && NumTarget
var(15)=1
ignorehitpause=1
persistent=0

[State 1005, ProjContact]
type=VarSet
trigger1=MoveContact=1 && NumTarget
var(18)=1
ignorehitpause=1
persistent=0

[State 1005, ProjContact]
type=ParentVarSet
trigger1=MoveContact=1 && NumTarget
trigger1=Root, StateNo=[1400,1430]
var(18)=1
ignorehitpause=1
persistent=0

[State 1005, End]
type=changestate
trigger1=movecontact
value=1408
ignorehitpause=1

[State 1005, End]
type=changestate
trigger1=Time=130
value=1408
ignorehitpause=1
;--------------------------------------------------------------------------------------
;Genee
[Statedef 1407]
type=A
physics=N
movetype=A
ctrl=0
velset=0, 0
sprpriority=5

[State 1005, ChangeAnim]
type=ChangeAnim
trigger1 =!time&&!prevstateno
value=1405

[State 1005, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause=1

[State 1005, Assert]
type=trans
trigger1=1
trans=addalpha
alpha=256, 256
ignorehitpause=1

[State screen]
type = ScreenBound
trigger1 = 1
value = 0

[State 1005, High]
type=hitdef
trigger1=!var(12)
priority=4, Hit
attr=A, SP
damage=floor(Ifelse(root,var(20),60,Ifelse(var(10)=3,60,Ifelse(var(10)=3,60,76+6*var(10))))*root,fvar(10)),10
animtype=Hard
hitflag=MAF
guardflag=MA
pausetime=3*(var(10)=3),12/((root,var(20)>0)+1)
sparkNo=-1
guard.sparkNo=-1
sparkXY=-1
guardsound=s130,1
ground.type=High
ground.slidetime=6
ground.hittime=12
guard.hittime = (12) - 6
ground.velocity=Ifelse(root,var(20),-5,-10),Ifelse(var(10)=3,-4,0)
ground.cornerpush.veloff=Ifelse(root,var(20),0,-5)
air.velocity=Ifelse(root,var(20),-2,-4), -4
down.velocity=0,0
air.fall=1
fall=var(10)=3
fall.recover=0
getpower=Ifelse(var(10)=3,0,ifelse(p2movetype=H,72,144)*!(root,var(20))),Ifelse(var(10)=3,0,36*!(root,var(20)))
givepower=36, 36
envshake.time=12
envshake.ampl=5
sprpriority=5
yaccel=.5
airguard.ctrltime=12
airguard.velocity=ifelse((root,var(20)),-4,-8),-3
forcestand=1
palFX.time = 30
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4

[State 1005, High]
type=hitdef
trigger1=var(12)
priority=4, Hit
attr=A, SP
damage=floor(Ifelse(root,var(20),60,Ifelse(var(10)=3,60,Ifelse(var(10)=3,60,76+6*var(10))))*root,fvar(10)),10
animtype=Hard
hitflag=MAFD
guardflag=MA
pausetime=3*(var(10)=3),12/((root,var(20)>0)+1)
sparkNo=-1
guard.sparkNo=-1
sparkXY=-1
guardsound=s130,1
ground.type=High
ground.slidetime=6
ground.hittime=12
guard.hittime = (12) - 6
ground.velocity=Ifelse(root,var(20),-5,-10),Ifelse(var(10)=3,-4,0)
ground.cornerpush.veloff=Ifelse(root,var(20),0,-5)
air.velocity=Ifelse(root,var(20),-2,-4), -4
down.velocity=0,0
air.fall=1
fall=var(10)=3
fall.recover=0
getpower=Ifelse(var(10)=3,0,ifelse(p2movetype=H,72,144)*!(root,var(20))),Ifelse(var(10)=3,0,36*!(root,var(20)))
givepower=36, 36
envshake.time=12
envshake.ampl=5
sprpriority=5
yaccel=.5
airguard.ctrltime=12
airguard.velocity=ifelse((root,var(20)),-4,-8),-3
forcestand=1
palFX.time = 30
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1005, Counter FX]
type=Helper
trigger1=MoveContact=1 && NumTarget && var(9)
trigger1=!(Target, HitShakeOver)
helperType=Normal
stateNo=8290
ID=8290
name="Counter FX"
posType=P1
pos=ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal=1
pauseMoveTime=65535
superMoveTime=65535
ignoreHitPause=1

[State 1005, HitCount]
type=ParentVarAdd
trigger1=Movehit=1 && NumTarget
var(13)=1
ignorehitpause=1
persistent=0

[State 1005, Projhit]
type=ParentVarAdd
trigger1=Movehit=1 && NumTarget
var(47)=1
ignorehitpause=1
persistent=0

[State 1005, Juggle Points]
type=ParentVarAdd
trigger1=MoveContact=1 && NumTarget
var(15)=1
ignorehitpause=1
persistent=0

[State 1005, ProjContact]
type=VarSet
trigger1=MoveContact=1 && NumTarget
var(18)=1
ignorehitpause=1
persistent=0

[State 1005, ProjContact]
type=ParentVarSet
trigger1=MoveContact=1 && NumTarget
trigger1=Root, StateNo=[1400,1430]
var(18)=1
ignorehitpause=1
persistent=0

[State 1005, End]
type=changestate
trigger1=movecontact
value=1409
ignorehitpause=1

[State 1005, End]
type=changestate
trigger1=Time=130
value=1408
ignorehitpause=1
;Isn't a Hit
[Statedef 1408]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = 5

[State 1005, ChangeAnim]
type=ChangeAnim
trigger1 =!time
value=1411

[State 1005, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause=1

[State 1015,end]
type = DestroySelf
trigger1 = !Animtime

;Is a hit!
[Statedef 1409]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = 5

[State 1005, ChangeAnim]
type=ChangeAnim
trigger1 =!time
value=1415

[State 1005, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause=1

[State 1005, Assert]
type=trans
trigger1=1
trans=addalpha
alpha=256, 256
ignorehitpause=1

[State screen]
type = ScreenBound
trigger1 = 1
value = 0


[State 1015,end]
type = DestroySelf
trigger1 = !animtime
;--------------------------------------------------------------------------------------
;Genee
[Statedef 11206]
type=A
physics=N
movetype=A
ctrl=0
velset=0, 0
sprpriority=5

[State 1005, ChangeAnim]
type=ChangeAnim
trigger1 =!time&&!prevstateno
value=11205

[State 1005, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause=1

[State 0, HitOverride]
type=hitoverride
trigger1= 1
attr=SCA,AA,AP,AT
time=-1
stateno=11209
ignorehitpause=1
[State 0, HB]
type=hitby
trigger1= 1
value=SCA,NP,SP,HP
time=-1
ignorehitpause=1

[State screen]
type = ScreenBound
trigger1 = 1
value = 0

[State 1005, HitSound]
type=playsnd
trigger1=movehit && numtarget
trigger1=target, time=0 && target, movetype=H
value=ifElse(MoveGuarded, 130,2), ifElse(MoveGuarded, 1,6)
persistent=0
ignorehitpause=1

[State 1005, High]
type=hitdef
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1=!var(12)
priority=4, Hit
attr=A, SP
damage=76,10
animtype=Hard
hitflag=MAF
guardflag=MA
pausetime=3*(var(10)=3),12/((root,var(20)>0)+1)
sparkNo=-1
guard.sparkNo=-1
sparkXY=-1
guardsound=s130,1
ground.type=High
ground.slidetime=6
ground.hittime=12
guard.hittime = (12) - 6
ground.velocity=Ifelse(root,var(20),-5,-10),Ifelse(var(10)=3,-4,0)
ground.cornerpush.veloff=Ifelse(root,var(20),0,-5)
air.velocity=Ifelse(root,var(20),-2,-4), -4
down.velocity=0,0
air.fall=1
fall=var(10)=3
fall.recover=0
getpower=Ifelse(var(10)=3,0,ifelse(p2movetype=H,72,144)*!(root,var(20))),Ifelse(var(10)=3,0,36*!(root,var(20)))
givepower=36, 36
envshake.time=12
envshake.ampl=5
sprpriority=5
yaccel=.5
airguard.ctrltime=12
airguard.velocity=ifelse((root,var(20)),-4,-8),-3
forcestand=1
palFX.time = 30
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4

[State 1005, High]
type=hitdef
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1=var(12)
priority=4, Hit
attr=A, SP
damage=76,10
animtype=Hard
hitflag=MAFD
guardflag=MA
pausetime=3*(var(10)=3),12/((root,var(20)>0)+1)
sparkNo=-1
guard.sparkNo=-1
sparkXY=-1
guardsound=s130,1
ground.type=High
ground.slidetime=6
ground.hittime=12
guard.hittime = (12) - 6
ground.velocity=Ifelse(root,var(20),-5,-10),Ifelse(var(10)=3,-4,0)
ground.cornerpush.veloff=Ifelse(root,var(20),0,-5)
air.velocity=Ifelse(root,var(20),-2,-4), -4
down.velocity=0,0
air.fall=1
fall=var(10)=3
fall.recover=0
getpower=Ifelse(var(10)=3,0,ifelse(p2movetype=H,72,144)*!(root,var(20))),Ifelse(var(10)=3,0,36*!(root,var(20)))
givepower=36, 36
envshake.time=12
envshake.ampl=5
sprpriority=5
yaccel=.5
airguard.ctrltime=12
airguard.velocity=ifelse((root,var(20)),-4,-8),-3
forcestand=1
palFX.time = 30
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4

[State 1005, HitSpark]
type=Helper
trigger1=movecontact=1 && numtarget
trigger1=(enemynear, movetype=H) && !(target, time)
helperType=Normal
stateNo=ifElse(MoveGuarded, 8001, 8005)
ID=8000
name="Spark"
pos = (target, const(size.ground.front) -10), 0
facing=-1
ownPal=0
size.xScale=1.0
size.yScale=1.0
pauseMoveTime=65535
superMoveTime=65535
ignoreHitPause=1
persistent=0

[State 1005, Counter FX]
type=Helper
trigger1=MoveContact=1 && NumTarget && var(9)
trigger1=!(Target, HitShakeOver)
helperType=Normal
stateNo=8290
ID=8290
name="Counter FX"
posType=P1
pos=ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal=1
pauseMoveTime=65535
superMoveTime=65535
ignoreHitPause=1

[State 1005, HitCount]
type=ParentVarAdd
trigger1=Movehit=1 && NumTarget
var(13)=1
ignorehitpause=1
persistent=0

[State 1005, Projhit]
type=ParentVarAdd
trigger1=Movehit=1 && NumTarget
var(47)=1
ignorehitpause=1
persistent=0

[State 1005, Juggle Points]
type=ParentVarAdd
trigger1=MoveContact=1 && NumTarget
var(15)=1
ignorehitpause=1
persistent=0

[State 1005, ProjContact]
type=VarSet
trigger1=MoveContact=1 && NumTarget
var(18)=1
ignorehitpause=1
persistent=0

[State 1005, ProjContact]
type=ParentVarSet
trigger1=MoveContact=1 && NumTarget
trigger1=Root, StateNo=11200
var(18)=1
ignorehitpause=1
persistent=0

[State 1005, End]
type=changestate
trigger1=movecontact
value=11208
ignorehitpause=1

[State 1005, End]
type=changestate
trigger1=Time=130
value=11208
ignorehitpause=1
;--------------------------------------------------------------------------------------
;Genee
[Statedef 11207]
type=A
physics=N
movetype=A
ctrl=0
velset=0, 0
sprpriority=5

[State 1005, ChangeAnim]
type=ChangeAnim
trigger1 =!time&&!prevstateno
value=11205

[State 1005, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause=1

[State 1005, Assert]
type=trans
trigger1=1
trans=addalpha
alpha=256, 256
ignorehitpause=1

[State screen]
type = ScreenBound
trigger1 = 1
value = 0

[State 1005, High]
type=hitdef
trigger1=!var(12)
priority=4, Hit
attr=A, SP
damage=floor(Ifelse(root,var(20),60,Ifelse(var(10)=3,60,Ifelse(var(10)=3,60,76+6*var(10))))*root,fvar(10)),10
animtype=Hard
hitflag=MAF
guardflag=MA
pausetime=3*(var(10)=3),12/((root,var(20)>0)+1)
sparkNo=-1
guard.sparkNo=-1
sparkXY=-1
guardsound=s130,1
ground.type=High
ground.slidetime=6
ground.hittime=12
guard.hittime = (12) - 6
ground.velocity=Ifelse(root,var(20),-5,-10),Ifelse(var(10)=3,-4,0)
ground.cornerpush.veloff=Ifelse(root,var(20),0,-5)
air.velocity=Ifelse(root,var(20),-2,-4), -4
down.velocity=0,0
air.fall=1
fall=var(10)=3
fall.recover=0
getpower=Ifelse(var(10)=3,0,ifelse(p2movetype=H,72,144)*!(root,var(20))),Ifelse(var(10)=3,0,36*!(root,var(20)))
givepower=36, 36
envshake.time=12
envshake.ampl=5
sprpriority=5
yaccel=.5
airguard.ctrltime=12
airguard.velocity=ifelse((root,var(20)),-4,-8),-3
forcestand=1
palFX.time = 30
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4

[State 1005, High]
type=hitdef
trigger1=var(12)
priority=4, Hit
attr=A, SP
damage=floor(Ifelse(root,var(20),60,Ifelse(var(10)=3,60,Ifelse(var(10)=3,60,76+6*var(10))))*root,fvar(10)),10
animtype=Hard
hitflag=MAFD
guardflag=MA
pausetime=3*(var(10)=3),12/((root,var(20)>0)+1)
sparkNo=-1
guard.sparkNo=-1
sparkXY=-1
guardsound=s130,1
ground.type=High
ground.slidetime=6
ground.hittime=12
guard.hittime = (12) - 6
ground.velocity=Ifelse(root,var(20),-5,-10),Ifelse(var(10)=3,-4,0)
ground.cornerpush.veloff=Ifelse(root,var(20),0,-5)
air.velocity=Ifelse(root,var(20),-2,-4), -4
down.velocity=0,0
air.fall=1
fall=var(10)=3
fall.recover=0
getpower=Ifelse(var(10)=3,0,ifelse(p2movetype=H,72,144)*!(root,var(20))),Ifelse(var(10)=3,0,36*!(root,var(20)))
givepower=36, 36
envshake.time=12
envshake.ampl=5
sprpriority=5
yaccel=.5
airguard.ctrltime=12
airguard.velocity=ifelse((root,var(20)),-4,-8),-3
forcestand=1
palFX.time = 30
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4

[State 1005, HitSpark]
type=Helper
trigger1=movecontact=1 && numtarget
trigger1=(enemynear, movetype=H) && !(target, time)
helperType=Normal
stateNo=ifElse(MoveGuarded, 8001, 8005)
ID=8000
name="Spark"
pos = (target, const(size.ground.front) -10), 0
facing=-1
ownPal=0
size.xScale=1.0
size.yScale=1.0
pauseMoveTime=65535
superMoveTime=65535
ignoreHitPause=1
persistent=0

[State 1005, Counter FX]
type=Helper
trigger1=MoveContact=1 && NumTarget && var(9)
trigger1=!(Target, HitShakeOver)
helperType=Normal
stateNo=8290
ID=8290
name="Counter FX"
posType=P1
pos=ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal=1
pauseMoveTime=65535
superMoveTime=65535
ignoreHitPause=1

[State 1005, HitCount]
type=ParentVarAdd
trigger1=Movehit=1 && NumTarget
var(13)=1
ignorehitpause=1
persistent=0

[State 1005, Projhit]
type=ParentVarAdd
trigger1=Movehit=1 && NumTarget
var(47)=1
ignorehitpause=1
persistent=0

[State 1005, Juggle Points]
type=ParentVarAdd
trigger1=MoveContact=1 && NumTarget
var(15)=1
ignorehitpause=1
persistent=0

[State 1005, ProjContact]
type=VarSet
trigger1=MoveContact=1 && NumTarget
var(18)=1
ignorehitpause=1
persistent=0

[State 1005, ProjContact]
type=ParentVarSet
trigger1=MoveContact=1 && NumTarget
trigger1=Root, StateNo=11200
var(18)=1
ignorehitpause=1
persistent=0

[State 1005, End]
type=changestate
trigger1=movecontact
value=11209
ignorehitpause=1

[State 1005, End]
type=changestate
trigger1=Time=130
value=11208
ignorehitpause=1

;Isn't a Hit
[Statedef 11208]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = 5

[State 1005, ChangeAnim]
type=ChangeAnim
trigger1 =!time
value=11211

[State 1005, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause=1

[State 1015,end]
type = DestroySelf
trigger1 = !Animtime

;Is a hit!
[Statedef 11209]
type = A
movetype = A
physics = N
ctrl = 0
sprpriority = 5

[State 1005, ChangeAnim]
type=ChangeAnim
trigger1 =!time
value=11215

[State 1005, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause=1

[State screen]
type = ScreenBound
trigger1 = 1
value = 0

[State 1015,end]
type = DestroySelf
trigger1 = !animtime


;Hadou Burst Effect
[StateDef 3011]
type = S
physics = N
moveType = A
ctrl = 0
anim = 3105
sprPriority = 3

[State 1005, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 3013
ignoreHitPause = 1

[State 1005, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1005, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3105
value = 3105

[State 1005, Button Detect]
type = VarSet
trigger1= !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1005, VelSet]
type = VelSet
trigger1 = 1
x = 7

[State 1005, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1005, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1005, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1005, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1005, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
trigger1 = Root, StateNo != 193
attr = S,HP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = 40,10
getPower = 20
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = ifelse(var(20), -4.36, -8.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifelse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.36, -4), -8
air.cornerPush.velOff = 0
airGuard.velocity = -5, -1.5
airGuard.cornerPush.velOff = 0
yaccel = Ifelse(var(20),.5,.6)
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 3012
ignoreHitPause = 1

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 3013
ignoreHitPause = 1

[State 1005, End]
type = DestroySelf
trigger1 = pos x != [-300,300]

;Hit Pause
[StateDef 3012]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1

[State 30060, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 30060, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 2
ignoreHitPause = 1

[State 30060, Hit Spark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < -64, -64, ifElse(P2Dist x < 64, ceil(P2Dist x), 64)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 30060, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < -64, -64, ifElse(P2Dist x < 64, ceil(P2Dist x), 64)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 30060, End]
type = ChangeState
trigger1 = Time >= 0
value = 3013

;Disappear
[StateDef 3013]
type = A
physics = N
moveType = A
anim = 3115
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 30070, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2,6
channel = 2
volume = -128
lowPriority = 1

[State 30070, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 30070, End]
type = ChangeState
trigger1 = !AnimTime
value = 3014

;Wait
[StateDef 3014]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 1008, End]
type = DestroySelf
trigger1 = !NumTarget
trigger2 = NumTarget
trigger2 = Target, Time <= 1 && !(Target,HitShakeOver)


;Hadou Burst Helper
[StateDef 3015]
type = S
physics = N
moveType = A
ctrl = 0
anim = 3105
sprPriority = 3

[State 1005, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 3013
ignoreHitPause = 1

[State 1005, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1005, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3105
value = 3105

[State 1005, Button Detect]
type = VarSet
trigger1= !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1016, VelSet]
type = VelSet
trigger1 = 1
x = 7
y = 2.6*cos(time/14);

[State 1005, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1005, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1005, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1005, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1005, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
trigger1 = Root, StateNo != 193
attr = S,HP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = 40,10
getPower = 20
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = ifelse(var(20), -4.36, -8.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifelse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.36, -4), -8
air.cornerPush.velOff = 0
airGuard.velocity = -5, -1.5
airGuard.cornerPush.velOff = 0
yaccel = Ifelse(var(20),.5,.6)
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 3012
ignoreHitPause = 1

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 3013
ignoreHitPause = 1

[State 1005, End]
type = DestroySelf
trigger1 = pos x != [-300,300]


[StateDef 3016]
type = S
physics = N
moveType = A
ctrl = 0
anim = 3105
sprPriority = 3

[State 1005, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 3013
ignoreHitPause = 1

[State 1005, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1005, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3105
value = 3105

[State 1005, Button Detect]
type = VarSet
trigger1= !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1016, VelSet]
type = VelSet
trigger1 = 1
x = 7
y = -2.6*cos(time/14);

[State 1005, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1005, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1005, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1005, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1005, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
trigger1 = Root, StateNo != 193
attr = S,HP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = 40,10
getPower = 20
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 17
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = ifelse(var(20), -4.36, -8.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifelse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.36, -4), -8
air.cornerPush.velOff = 0
airGuard.velocity = -5, -1.5
airGuard.cornerPush.velOff = 0
yaccel = Ifelse(var(20),.5,.6)
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 3012
ignoreHitPause = 1

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 3013
ignoreHitPause = 1

[State 1005, End]
type = DestroySelf
trigger1 = pos x != [-300,300]



;<SONIC HURRICANE PROJECTILE>=
[StateDef 3505]
type = S
moveType = A
ctrl = 0
sprPriority = 4

[State 3505, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = ceil(79 * Root, const(size.xScale)), ceil(-61 * Root, const(size.yScale))
ignoreHitPause = 1

[State 3505, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
slot = 0
stateNo = 3205
ignoreHitPause = 1

[State 3505, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignoreHitPause = 1

[State 3505, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3505
value = 3505

[State 3505, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 3505, Damage Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3505, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 3505, First 11 Hits]
type = HitDef
trigger1 = Root, StateNo = 3500
trigger1 = ((Time = 6 && PrevStateNo = 3506) || (Time = 0 && !var(14))) && (var(13) < 11)
attr = S, HP
hitFlag = MAFP
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0,2
guard.pauseTime = 0,2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = ifElse(var(13) % 2 = 0, -10.52, 10.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(13) % 2 = 0, -10.52, 10.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(13) % 2 = 0, -4.31, 4.31), -1.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.sparkNo = -1
sparkXY = -10, -48
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
sprPriority = 3

[State 3505, Final Hit]
type = HitDef
trigger1 = Root, StateNo = 3500
trigger1 = (Time = 6 && PrevStateNo = 3506) && (var(13) = 11)
attr = S, HP
hitFlag = MAFP
guardFlag = M
priority = 4,Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0,12
guard.pauseTime = 0,10
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = High
ground.hitTime = 15
guard.hittime = (15) - 6
ground.slideTime = 15
air.hitTime = 60
ground.velocity = -4.32, -7.49
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.sparkNo = -1
sparkXY = -10, -48
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
sprPriority = 3

[State 3505, Miss]
type = HitDef
trigger1 = (Root, var(16)) || (Root, var(15) >= (12 + HitCount) && Parent, StateNo = 3500)
attr = S, HP
hitFlag =
sparkXY = -10,0

[State 3505, End]
type = ChangeState
trigger1 = MoveContact
value = 3506
ignoreHitPause = 1

[State 3505, End]
type = ChangeState
trigger1 = Root, MoveType = H
trigger2 = Time = 50 + var(13) * 3
trigger3 = var(14) >= 12
value = 3507
ignoreHitPause = 1


;Hit Pause
[StateDef 3506]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1
hitCountPersist = 1

[State 3506, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 3506, VarSet]
type = VarAdd
trigger1 = 1
var(14) = 1

[State 3506, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
ignoreHitPause = 1

[State 3506, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ceil(P2Dist x), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3506, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ceil(P2Dist x), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3506, Parent Hit Count]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 3506, Self Hit Count]
type = VarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 3506, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1

[State 3506, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 3506, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = 3500
var(18) = 1

[State 3506, End]
type = ChangeState
trigger1 = Time >= 0
value = 3505


;Disappear
[StateDef 3507]
type = A
physics = N
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 3507, VarSet]
type = VarSet
trigger1 = !Time
var(10) = AnimElemNo(0)

[State 3507, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 3507
elem = var(10)

[State 3507, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256 - (32 * Time), 256
ignoreHitPause = 1

[State 3507, End]
type = ChangeState
trigger1 = Time = 8
value = 1008



;<SPARKS>=
;Guard Spark (Normal)
[StateDef 8000]
type = A
physics = N
moveType = I
anim = 8000
velset = 0,0
sprPriority = 5

[State 8000, Assert: No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8000, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.125 + (0.046875 * Time), 0.125 + (0.046875 * Time)
ignoreHitPause = 1

[State 8000, Transparency]
type = Trans
trigger1 = Time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8000, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

[State 8000, End]
type = DestroySelf
trigger1 = Time >= 8


;Guard Spark (Special)
[StateDef 8001]
type = A
physics = N
moveType = I
anim = 8001
velSet = 0,0
sprPriority = 5

[State 8001, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8001, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)
ignoreHitPause = 1

[State 8001, Transparency]
type = Trans
trigger1 = time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8001, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

[State 8001, End]
type = DestroySelf
trigger1 = Time >= 8


;Weak Hit Spark
[StateDef 8010]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8010, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8010, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8010, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8010, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.3 - (Time * 0.03), 0.3 - (Time * 0.03)
ignoreHitPause = 1

[State 8010, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8010, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8010, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.15 + (0.009375 * Time), 0.15 + (0.009375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time),256

[State 8010, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.15 + (0.009375 * Time), 0.15 + (0.009375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8010, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.3 - (0.0375 * Time), 0.3 - (0.0375 * Time)
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8010, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8010, End]
type = DestroySelf
trigger1 = Time >= 16


;Medium Hit Spark
[StateDef 8011]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8011, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8011, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8011, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8011, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.35 - (Time * 0.035), 0.35 - (Time * 0.035)
ignoreHitPause = 1

[State 8011, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8011, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8011, Center]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removetime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.175 + (0.0109375 * Time), 0.175 + (0.0109375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8011, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.175 + (0.0109375 * Time), 0.175 + (0.0109375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8011, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.35 - (0.04375 * Time), 0.35 - (0.04375 * Time)
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8011, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8011, End]
type = DestroySelf
trigger1 = Time >= 16


;Strong Hit Spark
[StateDef 8012]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8012, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8012, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8012, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8012, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.4 - (Time * 0.04), 0.4 - (Time * 0.04)
ignoreHitPause = 1

[State 8012, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8012, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8012, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.2 + (0.0125 * Time), 0.2 + (0.0125 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8012, Streaks Explod]
type = Explod
trigger1 = !time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.2 + (0.0125 * Time), 0.2 + (0.0125 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8012, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.4 - (0.05 * Time), 0.4 - (0.05 * Time)
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8012, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8012, End]
type = DestroySelf
trigger1 = Time >= 16


;Special Move Hit Spark
[StateDef 8013]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8013, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8013, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8013, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8013, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.45 - (Time * 0.045), 0.45 - (Time * 0.045)
ignoreHitPause = 1

[State 8012, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8013, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8013, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.225 + (0.0140625 * Time), 0.225 + (0.0140625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8013, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.225 + (0.0140625 * Time), 0.225 + (0.0140625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8013, P2 Back Explod]
type = Explod
trigger1 = !Time
anim = 8013
ID = 3
posType = P1
facing = -1
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale P2 Back Explod]
type = ModifyExplod
trigger1= NumExplod(3)
ID = 3
scale = 0.4, 0.4
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8013, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(random < 500, -1, 1)
vFacing = ifElse(random < 500, -1, 1)
sprPriority=3
removeTime=8
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.45 - (0.05625 * Time), 0.45 - (0.05625 * Time)
trans = AddAlpha
alpha = 192 - (24 * Time), 256

[State 8013, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8013, End]
type = DestroySelf
trigger1 = Time >= 16


;Super Hit Spark
[StateDef 8014]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8014, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8014, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8014, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8014, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.5 - (Time * 0.05), 0.5 - (Time * 0.05)
ignoreHitPause = 1

[State 8014, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8014, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8014, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.25 + (0.015625 * Time), 0.25 + (0.015625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.25 + (0.015625 * Time), 0.25 + (0.015625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, P2 Back Explod]
type = Explod
trigger1 = !Time
anim = 8013
ID = 3
posType = P1
facing = ifElse((Parent, StateNo = [3000,3999]), -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale P2 Back Explod]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 0.5,0.5
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8014, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.5 - (0.0625 * Time), 0.5 - (0.0625 * Time)
trans = AddAlpha
alpha = 256 - (32 * Time),256

[State 8014, Remove Explods]
type = RemoveExplod
trigger1 = time >= 16

[State 8014, End]
type = DestroySelf
trigger1 = Time >= 16


;Reversal Spark
[StateDef 8020]
type = A
physics = N
moveType = I
anim = 8020
velSet = 0,0
sprPriority = 5

[State 8020, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8020, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.25 + (0.09375 * Time), 0.25 + (0.09375 * Time)
ignoreHitPause = 1

[State 8020, Transparency]
type = Trans
trigger1 = Time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8020, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

[State 8020, End]
type = DestroySelf
trigger1 = Time >= 8



;Jump dust
[Statedef 8100]
type = S
anim = 1
velset = 0, 0

[State 8100, Bind]
type = bindtoroot
trigger1 = time

[State 8100, Dust]
type = explod
trigger1 = !time
anim = 8100
sprpriority = 3
postype = p1
pos = 0, ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8100, Dust]
type = explod
trigger1 = !time || time = 2 || time = 6
anim = 8101
sprpriority = 3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8100, End]
type = destroyself
trigger1 = time >= 7


;Dash dust
[Statedef 8103]
type = A
anim = 1
velset = 0, 0
sprpriority = 5

[State 8103, Pos]
type = posset
trigger1 = !time = 0
y = 0

[State 8103, Dust]
type = explod
trigger1 = time = 0 || time = 3 || time = 6
anim = 8103
ID = ifelse((time = 6), 3, ifelse((time = 3), 2, 1))
postype = p1
pos = 0, -4
random = 8, 8
vel = -3 -(random / 1000.0), -2 -(random / 2000.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 16
sprpriority = 3
pausemovetime = -1
supermovetime = -1

[State 8103, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 0.1 + (0.025 * time), 0.1 + (0.025 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8103, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 0.1 + (0.025 * (time -3)), 0.1 + (0.025 * (time -3))
trans = addalpha
alpha = 256 -(16 * (time -3)), 256

[State 8103, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 0.1 + (0.025 * (time -6)), 0.1 + (0.025 * (time -6))
trans = addalpha
alpha = 256 -(16 * (time -6)), 256

[State 8103, End]
type = removeexplod
trigger1 = time >= 22

[State 8103, End]
type = destroyself
trigger1 = !numexplod

;-----------------------------------
;Ground Impact 
[Statedef 8110]
type = A
anim = 1
velset = 0, 0
sprpriority = 5

[State 8110, FX]
type = explod
trigger1 = !time
anim = 8110
ID = ifelse(time = 8, 3, ifelse(time = 4, 2, 1))
postype = p1
removetime = 8
sprpriority = -4
pausemovetime = -1
supermovetime = -1

[State 8110, FX]
type = explod
trigger1 = !time
anim = 8120
ID = 2
postype = p1
removetime = 8
sprpriority = -4
pausemovetime = -1
supermovetime = -1

[State 8110, Scale]
type = modifyexplod
trigger1 = 1
scale = 0.25 + (0.03125 * time), 0.25 + (0.03125 * time)
trans = addalpha
alpha = ifelse(time < 4, 256, 256 -(64 * (time -4))), 256

[State 8110, End]
type = removeexplod
trigger1 = time >= 8

[State 8110, End]
type = destroyself
trigger1 = !numexplod

;WALL IMPACT DUST
[StateDef 8111]
type = A
anim = 1
velSet = 0,0
sprPriority = 5

[State 8111, Impact Dust Explod 1]
type = Explod
trigger1 = !Time
anim = 8111
ID = ifElse(Time = 8, 3, ifElse(Time = 4, 2, 1))
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8111, Impact Dust Explod 2]
type = Explod
trigger1 = !Time
anim = 8121
ID = 2
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8111, Scale]
type = ModifyExplod
trigger1 = 1
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 256, 256 - (64 * (Time - 4))), 256

[State 8111, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 8

[State 8111, End]
type = DestroySelf
trigger1 = !NumExplod

;FLAMES
[Statedef 8150]
type = A
velset = 0, 0
anim = 1

[State 8150, player]
type = varset
trigger1 = !time
var(0) = parent, var(43)

[State 8150, Pos]
type = posset
trigger1 = playerIDexist(var(0))
x = ceil(playerID(var(0)), pos x)
y = ceil(playerID(var(0)), pos y) + (playerID(var(0)), const(size.mid.pos.y))

[State 8150, Pos]
type = posset
trigger1 = playerIDexist(var(0))
trigger1 = playerID(var(0)), statetype = L
x = ceil(playerID(var(0)), pos x)
y = ceil(playerID(var(0)), pos y) - 20

[State 8150, facing]
type = turn
trigger1 = playerIDexist(var(0))
trigger1 = facing != (playerID(var(0)), facing)

[State 8150, flames]
type = explod
trigger1 = playerIDexist(var(0))
anim = 8150
sprpriority = 3
postype = p1
random = 40, 40
vel = (random / 2000.0), -.5 -(random / 2000.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
scale = 0.5, 0.5
ownpal = 1

[State 8150, flames]
type = explod
trigger1 = playerIDexist(var(0))
anim = 8150
sprpriority = 3
postype = p1
random = 60, 60
vel = (random / 2000.0), -.5 -(random / 2000.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
scale = 0.5, 0.5
ownpal = 1

[State 8150, End]
type = destroyself
trigger1 = time >= 600
trigger2 = !playerIDexist(var(0))

[State 8150, End]
type = destroyself
triggerall = playerIDexist(var(0))
trigger1 = playerID(var(0)), ctrl
trigger2 = playerID(var(0)), movetype != H || playerID(var(0)), stateno = 5300
trigger3 = playerID(var(0)), statetype = L && (playerID(var(0)), stateno != [5080, 5081])

;RECOVER FX
[Statedef 8200]
type = A
velset = 0, 0
anim = 8200
sprpriority = 5

[State 8200, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow
ignoreHitPause = 1

[State 8200, Scale]
type = angledraw
trigger1 = 1
scale = 0.25 + (0.017 * time), 0.25 + (0.017 * time)
ignoreHitPause = 1

[State 8200, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = ceil(256 -17.1 * time), 256
ignoreHitPause = 1

[State 8200, End]
type = destroyself
trigger1 = time >= 15


;COUNTER FX
[Statedef 8290]
type = A
physics = N
velset = 0, 0
anim = 1

[State 8290, Circle]
type = explod
trigger1 = !numexplod(8290)
anim = 8290
ID = 8290
sprpriority = 64
postype = p1
facing = facing
removetime = 32
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8290, Scale]
type = modifyexplod
trigger1 = time < 8
ID = 8290
scale = 0.5, 0.5
trans = addalpha
alpha = 256, 0

[State 8290, Scale]
type = modifyexplod
trigger1 = time >= 8
ID = 8290
scale = 0.5 + .0625 * (time -8), 0.5 + .0625 * (time -8)
trans = addalpha
alpha = 256 -32 * (time -8), 32 * (time -8)

[State 8290, Safety]
type = removeexplod
trigger1 = time >= 16

[State 8290, End]
type = destroyself
trigger1 = time >= 16

;MAX MODE TEXT FX
[StateDef 8291]
type = A
physics = N
velSet = 0,0
anim = 1

[State 8291, "Power Up!" Text Explod]
type = Explod
trigger1 = !NumExplod(8291)
anim = 8291
ID = 8291
sprPriority = 64
posType = P1
facing = Facing
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8291, Scale]
type = ModifyExplod
trigger1 = Time < 8
ID = 8291
scale = 0.5, .5
trans = AddAlpha
alpha = 256,0

[State 8291, Scale]
type = ModifyExplod
trigger1 = Time >= 8
ID = 8291
scale = 0.5 + 0.0625 * (Time - 8), 0.5 + 0.0625 * (Time - 8)
trans = AddAlpha
alpha = 256 - 32 * (Time - 8), 32 * (Time - 8)

[State 8291, Safety]
type = RemoveExplod
trigger1 = Time >= 16

[State 8291, End]
type = DestroySelf
trigger1 = Time >= 16

;POWER CHARGE MAIN FX 
[Statedef 8330]
type = A
physics = N
movetype = I
anim = 1
ctrl = 0
velset = 0, 0

[State 8330, Bind]
type = bindtoroot
trigger1 = (root, stateno = 730)
pos = 0,0

[State 8330, Snd]
type = playsnd
trigger1 = !time
value = 730,0
channel = 0

[State 8330, Aura]
type = explod
trigger1 = !numexplod(8330)
ID = 8330
anim = 8330
sprpriority = 3
postype = p1
bindtime = -1
removetime = -1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8330, Dust]
type = explod
trigger1 = !(time % 6)
anim = 8105
sprpriority = -3
postype = p1
pos = 0, -ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8330, FX]
type = modifyexplod
trigger1 = numexplod(8330) && root, power < 3000
ID = 8330
scale = 0.5, 0.1 + 0.4 * (root, power / 3000.0)

[State 8330, FX]
type = modifyexplod
trigger1 = numexplod(8330) && root, power >= 3000
ID = 8330
scale = 0.5, 0.5

[State 8330, End]
type = stopsnd
trigger1 = root, stateno != 730
channel = 0

[State 8330, End]
type = removeexplod
trigger1 = root, stateno != 730

[State 8330, End]
type = destroyself
trigger1 = root, stateno != 730


;POWER CHARGE Particles 
[Statedef 8331]
type = A
physics = N
movetype = I
anim = 1
ctrl = 0
velset = 0, 0

[State 8331, Bind]
type=bindtoroot
trigger1= !(time%8)
pos=ceil(-153+(random/3.125)),ceil(82-(random/3.125))

[State 8331, Particle]
type=explod
trigger1= (time%8)=1
anim=8331
sprpriority=ifelse(random<750,5,-1)
postype=p1
vel= ((rootdist x+1)/32.0), ((rootdist y-75)/32.0)
scale= ifelse(random<500,.5,-.5), ifelse(random<500,.5,-.5)
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 8331, End]
type = removeexplod
trigger1 = root, stateno != 730

[State 8331, End]
type = destroyself
trigger1 = root, stateno != 730


;ZERO COUNTER PAUSE
[Statedef 8350]
type = A
physics = N
movetype = I
anim = 1
ctrl = 0
velset = 0, 0

[State 8350, BG PalFX]
type = bgpalfx
trigger1 = 1
time = 1
color = 16 * time
mul = 16 * time, 16 * time, 16 * time

[State 8350, Circle]
type = explod
trigger1 = !time
anim = 8350
ID = 1
sprpriority = 3
postype = p1
removetime = 16
supermovetime = -1
ownpal = 1

[State 8350, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = (0.0625 * time), (0.0625 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8350, Lightning]
type = explod
trigger1 = !time
anim = 8351
ID = 2
sprpriority = -2
postype = p1
pos = 0, -ceil(pos y)
supermovetime = -1
ownpal = 1

[State 8350, End]
type = destroyself
trigger1 = time >= 16


;CUSTOM COMBO
[Statedef 8400]
type = A
physics = N
movetype = I
anim = 8400
ctrl = 0
velset = 0, 0
sprpriority = 5

[State 8400, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignoreHitPause = 1

[State 8400, BG PalFX]
type = bgpalfx
trigger1 = time < 25
time = 1
mul = 128, 128, 128

[State 8400, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)

[State 8400, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 8400, Scale]
type = angledraw
trigger1 = time < 8
scale = (0.0625 * time), (0.0625 * time)
ignoreHitPause = 1

[State 8400, Scale]
type = angledraw
trigger1 = time >= 8
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8400, Trans]
type = trans
trigger1 = time < 16
trans = addalpha
alpha = 256, 256
ignoreHitPause = 1

[State 8400, Trans]
type = trans
trigger1 = time >= 16
trans = addalpha
alpha = ceil(256 - 25.6 * (time -16)), 256
ignoreHitPause = 1

[State 8400, Lines]
type = explod
trigger1 = !time
anim = 8401
ID = 1
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 16
supermovetime = -1

[State 8400, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 2 -(0.125 * time), 2 -(0.125 * time)
trans = addalpha
alpha = ifelse(time < 4, 64 * time, 256), 256

[State 8400, Circle]
type = explod
trigger1 = time = 16
anim = 8402
ID = 2
sprpriority = 5
postype = p1
removetime = 32
supermovetime = -1

[State 8400, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = (0.1 * (time -16)), (0.1 * (time -16))
trans = addalpha
alpha = ceil(256 - 25.6 * (time -16)), 256

[State 8400, Safety]
type = removeexplod
trigger1 = time >= 26

[State 8400, End]
type = destroyself
trigger1 = time >= 26


;< SUPERPAUSE FX >=
;--- --Level 1 -----
[Statedef 8500]
type = A
velset = 0, 0
anim = 8500
sprpriority = 5

[State 8500, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignoreHitPause = 1

[State 8500, BG PalFX]
type = bgpalfx
trigger1 = time < 39
time = 1
color = 0
mul = 0, 0, 256

[State 8500, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)

[State 8500, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 8500, Scale]
type = angledraw
trigger1 = time < 16
scale = (0.03125 * time), (0.03125 * time)
ignoreHitPause = 1

[State 8500, Scale]
type = angledraw
trigger1 = time >= 16
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8500, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignoreHitPause = 1

[State 8500, Lines]
type = explod
trigger1 = time = 0 || time = 8 || time = 16 || time = 24
anim = 8501
ID = ifelse(time = 24, 4, ifelse(time = 16, 3, ifelse(time = 8, 2, 1)))
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 16
supermovetime = -1

[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 1 -(0.0625 * time), 1 -(0.0625 * time)
trans = addalpha
alpha = ifelse(time < 4, 64 * time, 256), 256

[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 1 -(0.0625 * (time -8)), 1 -(0.0625 * (time -8))
trans = addalpha
alpha = ifelse((time -8) < 4, 64 * (time -8), 256), 256

[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 1 -(0.0625 * (time -16)), 1 -(0.0625 * (time -16))
trans = addalpha
alpha = ifelse((time -16) < 4, 64 * (time -16), 256), 256

[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 1 -(0.0625 * (time -24)), 1 -(0.0625 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8500, Circle]
type = explod
trigger1 = time = 24
anim = 8502
ID = 10
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 32
supermovetime = -1

[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(10)
ID = 10
scale = 2 -(0.125 * (time -24)), 2 -(0.125 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8500, Safety]
type = removeexplod
trigger1 = time >= 40

[State 8500, End]
type = destroyself
trigger1 = time >= 40


;--- --Level 2 -----
[Statedef 8510]
type = A
velset = 0, 0
anim = 8510
sprpriority = 5

[State 8510, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignoreHitPause = 1

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = time < 39
time = 1
color = 0
mul = 192, 0, 256

[State 8510, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)

[State 8510, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 8510, Scale]
type = angledraw
trigger1 = time < 16
scale = (0.03125 * time), (0.03125 * time)
ignoreHitPause = 1

[State 8510, Scale]
type = angledraw
trigger1 = time >= 16
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8510, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignoreHitPause = 1

[State 8510, Lines]
type = explod
trigger1 = time = 0 || time = 8 || time = 16 || time = 24
anim = 8511
ID = ifelse(time = 24, 4, ifelse(time = 16, 3, ifelse(time = 8, 2, 1)))
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 16
supermovetime = -1

[State 8510, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 1 -(0.0625 * time), 1 -(0.0625 * time)
trans = addalpha
alpha = ifelse(time < 4, 64 * time, 256), 256

[State 8510, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 1 -(0.0625 * (time -8)), 1 -(0.0625 * (time -8))
trans = addalpha
alpha = ifelse((time -8) < 4, 64 * (time -8), 256), 256

[State 8510, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 1 -(0.0625 * (time -16)), 1 -(0.0625 * (time -16))
trans = addalpha
alpha = ifelse((time -16) < 4, 64 * (time -16), 256), 256

[State 8510, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 1 -(0.0625 * (time -24)), 1 -(0.0625 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8510, Circle]
type = explod
trigger1 = time = 24
anim = 8512
ID = 10
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 32
supermovetime = -1

[State 8510, Scale]
type = modifyexplod
trigger1 = numexplod(10)
ID = 10
scale = 2 -(0.125 * (time -24)), 2 -(0.125 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8510, Safety]
type = removeexplod
trigger1 = time >= 40

[State 8510, End]
type = destroyself
trigger1 = time >= 40


;--- --Level 3 -----
[Statedef 8520]
type = A
velset = 0, 0
anim = 8520
sprpriority = 5

[State 8520, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignoreHitPause = 1

[State 8520, Assert]
type = assertspecial
trigger1 = time < 40
flag = nobardisplay
flag2 = noBG
flag3 = noFG

[State 8520, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)

[State 8520, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 8520, Scale]
type = angledraw
trigger1 = time < 16
scale = (0.03125 * time), (0.03125 * time)
ignoreHitPause = 1

[State 8520, Scale]
type = angledraw
trigger1 = time >= 16
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8520, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignoreHitPause = 1

[State 8520, Portrait]
type = explod
trigger1 = !time
anim = 8525
ID = 20
sprpriority = -16
postype = back
removetime = 40
supermovetime = -1

[State 8520, Portrait]
type = explod
trigger1 = !time
anim = 8525
ID = 21
sprpriority = -16
postype = back
removetime = 40
supermovetime = -1

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(20) && time < 16
ID = 20
postype = back
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 121)
scale = 1 - (0.03125 * time), 1 - (0.03125 * time)
trans = addalpha
alpha = (8 * time), 256

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(21) && time < 16
ID = 21
postype = back
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 121)
scale = 2 - (0.09375 * time), 2 - (0.09375 * time)
trans = addalpha
alpha = (8 * time), 256

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(20) && (time = [16, 32])
ID = 20
postype = back
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 121)
scale = 0.5, 0.5
trans = addalpha
alpha = 256, 256

[State 8520, Scale Portrait 2b]
type = ModifyExplod
trigger1 = NumExplod(21) && (Time = [16,32])
ID = 21
scale = 0,0

[State 8520, Scale Portrait 1c]
type = ModifyExplod
trigger1 = NumExplod(20) && Time >= 32
ID = 20
posType = Back
pos = 160 + (8 * (Time - 32)), floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 128 - 16 * (Time - 32), 256

[State 8520, Scale Portrait 2c]
type = ModifyExplod
trigger1 = NumExplod(21) && Time >= 32
ID = 21
posType = Back
pos = 160 - (8 * (Time - 32)), floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 128 - 16 * (Time - 32), 256

[State 8520, Lines]
type = explod
trigger1 = time = 0 || time = 8 || time = 16 || time = 24
anim = 8521
ID = ifelse(time = 24, 4, ifelse(time = 16, 3, ifelse(time = 8, 2, 1)))
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 16
supermovetime = -1

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 1 -(0.0625 * time), 1 -(0.0625 * time)
trans = addalpha
alpha = ifelse(time < 4, 64 * time, 256), 256

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 1 -(0.0625 * (time -8)), 1 -(0.0625 * (time -8))
trans = addalpha
alpha = ifelse((time -8) < 4, 64 * (time -8), 256), 256

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 1 -(0.0625 * (time -16)), 1 -(0.0625 * (time -16))
trans = addalpha
alpha = ifelse((time -16) < 4, 64 * (time -16), 256), 256

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 1 -(0.0625 * (time -24)), 1 -(0.0625 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8520, Circle]
type = explod
trigger1 = time = 24
anim = 8522
ID = 10
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 32
supermovetime = -1

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(10)
ID = 10
scale = 2 -(0.125 * (time -24)), 2 -(0.125 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8520, Safety]
type = removeexplod
trigger1 = time >= 40

[State 8520, End]
type = destroyself
trigger1 = time >= 40


;SUPER FINISH
[Statedef 8600]
type = A
velset = 0, 0
anim = 1

[State 8600, Sound]
type = playsnd
trigger1 = !time
value = 8600,0
channel = 1

[State 8600, Snd]
type = sndpan
trigger1 = time <= 80
channel = 1
abspan = ceil(sin(gametime / 20.0 * pi) * 160)

[State 8600, BG PalFX]
type = bgpalfx
trigger1 = time < 16
time = 1
mul = 0, 0, 0

[State 8600, BG PalFX]
type = bgpalfx
trigger1 = time = [16, 24)
time = 1
mul = 32 * (time -16), 32 * (time -16), 32 * (time -16)

[State 8600, Move Name: Custom Combo]
type = varset
trigger1 = !time && root, var(23) = 900
var(0) = 1

[State 8600, Move Name: Somersault Strike]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3000,3099])
var(0) = 2

[State 8600, Move Name: Burning]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3100,3199])
var(0) = 3

[State 8600, Move Name: MAX Triple Geyser]
type = varset
trigger1 = !time && (Root, var(23) = [3200,3299])
var(0) = 4

[State 8600, Super Finish Explod]
type = Explod
trigger1 = !Time
anim = 8600
ID = 8600
ontop = 1
postype = Left
pos = 160,120
scale = 0.5, 0.5
bindTime = -1
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Super Finish Explod Fade]
type = ModifyExplod
trigger1 = NumExplod(8600)
ID = 8600
trans = AddAlpha
alpha = ifElse(Time < 16, 256, 256 - 32 * (Time - 16)), 256

[State 8600, Text]
type = explod
trigger1 = !time && var(0)
anim = 8610 + var(0)
ID = 10
ontop = 1
postype = left
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * gameheight / gamewidth)
bindtime = -1
removetime = 32
pausemovetime = -1
supermovetime = -1

[State 8600, Text]
type = explod
trigger1 = !time && var(0)
anim = 8610 + var(0)
ID = 11
ontop = 1
postype = left
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * gameheight / gamewidth)
bindtime = -1
removetime = 8
pausemovetime = -1
supermovetime = -1

[State 8600, Fade]
type = modifyexplod
trigger1 = numexplod(10)
ID = 10
trans = addalpha
alpha = ifelse(time < 16, 256, 256 -32 * (time -16)), ifelse(time < 16, 0, 32 * (time -16))

[State 8600, Fade]
type = modifyexplod
trigger1 = numexplod(11)
ID = 11
scale = 0.5 + (0.0625 * time), 0.5 + (0.0625 * time)
trans = addalpha
alpha = 256 - (32 * time), 32 * time

[State 8600, Circle]
type = explod
trigger1 = !time
anim = 8601
ID = 8601
under = 1
postype = left
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
bindtime = -1
removetime = 16
pausemovetime = -1
supermovetime = -1

[State 8600, Fade]
type = modifyexplod
trigger1 = numexplod(8601)
ID = 8601
scale = (0.25 * time) * (1.3333333 * gameheight / gamewidth), (0.25 * time) * (1.3333333 * gameheight / gamewidth)
trans = addalpha
alpha = 256 - (16 * time), 256

[State 8600, Assert]
type = assertspecial
trigger1 = time < 16
flag = noFG

[State 8600, Assert]
type = assertspecial
trigger1 = time < 24
flag = nobardisplay

[State 8600, End]
type = removeexplod
trigger1 = time >= 24
trigger2 = roundstate < 3

[State 8600, End]
type = destroyself
trigger1 = roundstate < 3

;CAMERA CONTROL
[Statedef 8999]
type = S
velset = 0, 0
anim = 1

[State 8999, bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1
ignoreHitPause = 1

[State 8999, End]
type = destroyself
trigger1 = roundstate = 2