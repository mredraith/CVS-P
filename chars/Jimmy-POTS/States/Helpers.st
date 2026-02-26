; _________________________________________
;| Character by ZMugens               |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;
;< HELPER STATES >==
[Statedef 241]
type   =A
movetype=H
physics=N
velset=0,0
sprpriority=0

[State 241, ChangeAnim2]
type=ChangeAnim2
Trigger1=time=0
value=241


[State 241, ChangeAnim2]
type=ChangeAnim2
Trigger1=hitshakeover
value=243

[State 241, VelSet]
type=VelSet
trigger1=hitshakeover
x=-12-(gethitvar(xvel)<-10)*6

[State 241, ChangeState]
type=ChangeState
trigger1=hitshakeover && BackEdgeBodyDist < 5
value=242

;---------------------------------------------------------------------------
[Statedef 242]
type   =A
movetype=H
physics=N
velset=0,0
sprpriority=0

[State 242, ChangeAnim2]
type=ChangeAnim2
Trigger1=time=0
value=242

[state 242, VelSet]
type=VelSet
trigger1=AnimElem=5
x=-3.5

[State 242, VelSet]
type=VelAdd
trigger1=Animelem=5,>=0
y=.48

[State 242, EnvShake]
type=EnvShake
trigger1=AnimElem=1
time=24
ampl=4
freq=180

[State 242, SelfState]
type=SelfState
trigger1=Vel Y > 0 && Pos Y >=0
value=5100

;
;Pal Select
[Statedef 256]
physics = N
anim = 256
velset=0,0
sprpriority=99999
 
[State 256, PosSet]
type = PosSet
trigger1 =!time 
x = root,facing*-90
y = 20
ignorehitpause = 1

[State 256, AS]
type=assertspecial
trigger1=1
flag=intro
flag2=noshadow
[State 256, Reset]
type=varset
trigger1=!time
var(29)=200
[State 256, Pal]
type=varset
trigger1=!time
var(26)=root,palno

[State 256, Varset]
type=varset
trigger1=var(26)<1||var(26)>41
var(26)=1+(var(26)<1)*40

[State 256, PlaySnd]
type = PlaySnd
trigger1 =var(10)=2 
value = S256,0
volumescale = 50
channel = 20
[State 256, PlaySnd]
type = PlaySnd
triggerall=ishelper(256)
trigger1=root,command="a"||root,command="b"||root,command="c"||root,command="x"||root,command="y"||root,command="z"||root,command="s"||roundstate=2
trigger2=var(29)<=5
value = S256,1
volumescale = 50
channel = 20
persistent =0 

[State 256, Countdown]
type = VarAdd
trigger1 =1 
var(29)=-1
[State 256, Countdown]
type = VarAdd
trigger1=!var(10)&&var(29)<150
trigger1=root,command="holdup"||root,command="holddown"||root,command="holdback"||root,command="holdfwd"
var(29)=25

[State 256, Varadd]
type=varadd
trigger1=!var(10)
trigger1=root,command="holdup"||root,command="holddown"||root,command="holdback"||root,command="holdfwd"
var(26)=1-(root,command="holddown"||root,command="holdback"&&facing=1||root,command="holdfwd"&&facing=-1)*2

[State 256, Varadd]
type=varadd
trigger1=(root,command="holdup"||root,command="holddown"||root,command="holdback"||root,command="holdfwd")&&!var(10)||var(10)
var(10)=1

[State 256, Varset]
type=varset
trigger1=!time||var(10)>=17
var(10)=0

[State 256, End]
type=destroyself
triggerall=ishelper(256)
trigger1=root,command="a"||root,command="b"||root,command="c"||root,command="x"||root,command="y"||root,command="z"||root,command="s"||roundstate=2
trigger2=var(29)<=0
trigger3=root,AILevel

[Statedef 12345]
physics = N
anim = 256
velset=0,0
sprpriority=99999
 
[State 12345, PosSet]
type = PosSet
trigger1 =!time 
x = root,facing*-90
y = 25
ignorehitpause = 1
 
[State 12345, AS]
type=assertspecial
trigger1=1
flag=intro
flag2=noshadow

[State 12345, Reset]
type=varset
trigger1=!time
fvar(38)=200

[State 12345, Pal]
type=varset
trigger1=!time
fvar(36)=root,palno
 
[State 12345, Varset]
type=varset
trigger1=fvar(36)<1||fvar(36)>6 ; last palette
fvar(36)=1+(fvar(36)<1)*5 ; subtract -1 from your last palette
 
[State 12345, PlaySnd]
type = PlaySnd
trigger1 =fvar(39)=2 
value = S256,0
volumescale = 100
channel = 20

[State 12345, PlaySnd]
type = PlaySnd
triggerall=ishelper(12345)
trigger1=root,command="a"||root,command="b"||root,command="c"||root,command="x"||root,command="y"||root,command="z"||root,command="start"||roundstate=2
value = S256,1
volumescale = 100
channel = 20
persistent =0 
 
[State 12345, Countdown]
type = VarAdd
trigger1 =1 
fvar(38)=-1

[State 12345, Countdown]
type = VarAdd
trigger1=!fvar(39)&&fvar(38)<150
trigger1=root,command="holdup"||root,command="holddown"||root,command="holdback"||root,command="holdfwd"
fvar(38)=25
 
[State 12345, Varadd]
type=varadd
trigger1=!fvar(39)
trigger1=root,command="holdup"||root,command="holddown"||root,command="holdback"||root,command="holdfwd"
fvar(36)=1-(root,command="holddown"||root,command="holdback"&&facing=1||root,command="holdfwd"&&facing=-1)*2
 
[State 12345, Varadd]
type=varadd
trigger1=(root,command="holdup"||root,command="holddown"||root,command="holdback"||root,command="holdfwd")&&!fvar(39)||fvar(39)
fvar(39)=1
 
[State 12345, Varset]
type=varset
trigger1=!time||fvar(39)>=17
fvar(39)=0
 
[State 12345, End]
type=destroyself
triggerall=ishelper(12345)
trigger1=root,command="a"||root,command="b"||root,command="c"||root,command="x"||root,command="y"||root,command="z"||root,command="start"||roundstate=2
trigger2=root,AILevel
;
;Projectile 1000
[StateDef 1010]
type = S
physics = N
moveType = A
ctrl = 0
anim = 20001
sprPriority = 3

[State 1010, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1015
ignoreHitPause = 1

[State 1010, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
persistent = 1



[State 1010, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1010, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 20001 && Anim != 1015
value = 20001

[State 1010, Button Detect]
type = VarSet
trigger1= !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1010, MAX Mode Detect]
type = VarSet
trigger1= !Time && !PrevStateNo
var(20) = Root, var(20)

[State 1010, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1010, Velocity]
type = VelSet
trigger1 = 1
x = ifElse(var(10) = 2, 5, ifElse(var(10) = 1, 4.25, 3.5))
y = 0

[State 1010, Damage Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1010, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1010, HitDef]
type = HitDef
trigger1 = !(root,var(16)) && root,var(15)<1
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * (ifElse(var(10) = 2, 70, ifElse(var(10), 63, 56)) * (ifElse(var(20), 1.1, 1))) < 7, 7, fvar(11) * (ifElse(var(10) = 2, 70, ifElse(var(10), 63, 56)) * (ifElse(var(20), 1.1, 1))))), 7
getPower = 0, 0
givePower = 35, 35
pauseTime = 0, 12
guard.pauseTime = 0, 10
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
ground.velocity = -8.25
ground.cornerPush.velOff = 0
guard.velocity = -8.25
guard.cornerPush.velOff = 0
air.velocity = -5.35, -6.15
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = .58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120;34
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3
palFX.time = 52
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4

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

[State 1010, ChangeState]
type = ChangeState
trigger1 = MoveContact = 1
value = 1011
ignoreHitPause = 1

[State 1010, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1015
ignoreHitPause = 1

[State 1010, End]
type = DestroySelf
trigger1 = Pos x != [-200,200]
trigger2 = Anim = 1015 && !AnimTime

;EX Projectile 1000
[StateDef 1051]
type = S
physics = N
moveType = A
ctrl = 0
anim = 20001
sprPriority = 3

[State 1010, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1015
ignoreHitPause = 1

[State 1010, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
persistent = 1



[State 1010, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1010, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 20001 && Anim != 1015
value = 20001

[State 1010, Button Detect]
type = VarSet
trigger1= !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1010, MAX Mode Detect]
type = VarSet
trigger1= !Time && !PrevStateNo
var(20) = Root, var(20)

[State 1010, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1010, Velocity]
type = VelSet
trigger1 = 1
x = 8
y = 0

[State 1010, Damage Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1010, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1010, HitDef]
type = HitDef
trigger1 = !(root,var(16)) && root,var(15)<1
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * (ifElse(var(10) = 2, 70, ifElse(var(10), 63, 56)) * (ifElse(var(20), 1.1, 1))) < 7, 7, fvar(11) * (ifElse(var(10) = 2, 70, ifElse(var(10), 63, 56)) * (ifElse(var(20), 1.1, 1))))), 7
getPower = 0, 0
givePower = 35, 35
pauseTime = 0, 12
guard.pauseTime = 0, 10
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
ground.velocity = -8.25
ground.cornerPush.velOff = 0
guard.velocity = -8.25
guard.cornerPush.velOff = 0
air.velocity = -5.35, -6.15
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = .58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120;34
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3
palFX.time = 52
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4



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

[State 1010, ChangeState]
type = ChangeState
trigger1 = MoveContact = 1
value = 1011
ignoreHitPause = 1

[State 1010, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1015
ignoreHitPause = 1

[State 1010, End]
type = DestroySelf
trigger1 = Pos x != [-200,200]
trigger2 = Anim = 1015 && !AnimTime

;Hit Pause
[StateDef 1011]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1

[State 1011, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1011, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
ignorehitPause = 1

[State 1011, Hit Spark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
facing = -1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1011, Counter FX]
type = Helper
trigger1 = movecontact=1 && numtarget && var(9)
trigger1 = !(target,hitshakeover)
helpertype = normal
stateno=8290
ID = 8290
name = "Counter FX"
postype = p1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1011, End]
type = ChangeState
trigger1 = Time >= 0
value = 1015

;Projectile 1000 Disperse
[Statedef 1015]
type = A
movetype = A
physics = N
anim = 1015
ctrl = 0
velSet = 0,0
sprpriority = 3
moveHitPersist = 1

[State 1015, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2,6
channel = 3
volume = -128
lowPriority = 1

[State 1015, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1
persistent = 1

[State 1015, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 1015, Muteki]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1015, End]
type = ChangeState
trigger1 = !AnimTime
value = 1016

;Wait
[StateDef 1016]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 1016, DestroySelf]
type = DestroySelf
trigger1 = !NumTarget
trigger2 = NumTarget
trigger2 = Target, Time <= 1 && !(Target, HitShakeOver)
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

[State 8600, Move Name: Gun Blow]
type = varset
trigger1 = !time && Root, StateNo=2000
var(0) = 2

[State 8600, Move Name: Max Gun Blow]
type = varset
trigger1 = !time && Root, StateNo=[2100, 2110]
var(0) = 3

[State 8600, Move Name: Hyper Gun Blow]
type = varset
trigger1 = !time && Root, StateNo=[3500, 3507]
var(0) = 4

[State 8600, Move Name: Team Duplex Sonia]
type = VarSet
trigger1= !time && Root, StateNo=[3510, 4999]
var(0) = 5

[State 8600, Move Name: Team Duplex Billy]
type = VarSet
trigger1= !time && Root, StateNo=[3520, 4999]
var(0) = 6

[State 8600, MvC]
type = explod
trigger1 = !time
anim = 8600
ID = 8600
ontop = 1
postype = left
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * gameheight / gamewidth)
bindtime = -1
removetime = 32
pausemovetime = -1
supermovetime = -1

[State 8600, Fade]
type = modifyexplod
trigger1 = numexplod(8600)
ID = 8600
trans = addalpha
alpha = ifelse(time < 16, 256, 256 -32 * (time -16)), 256

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
[StateDef 6001]
type = S
physics  = S
anim = 0
ctrl = 0

[state 6001,TURN]
type=turn
trigger1=ishelper(6001)
trigger1=facing!=root,facing
ignorehitpause=1

[State 6001,vel]
type = VelSet
trigger1 = parent,pos X > 0
x = ifelse(facing = 1,4,-4)
[State 6001,vel]
type = VelSet
trigger1 = parent,pos X < 0
x = ifelse(facing = 1,-4,4)
[State 6001,vel]
type = VelSet
trigger1 = parent,pos X = [-5,5]
x = 0

[State 6001, WIDTH]
type = Width
trigger1 = 1
value = 1,1

[State 6001, NHB]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 6001,AS]
type = AssertSpecial
Trigger1 = 1
flag = invisible
flag2 = noshadow

[State 6001,Bound]
type = ScreenBound
trigger1 =1
value =1
movecamera = 320,0
[State 6001,push]
type = PlayerPush
trigger1 =1
value = 0

[State 6001, Destroyself]
type = destroyself
trigger1 = Time = 50
trigger1 = enemy, Life >= 1
trigger2=numhelper(6001)>=2



[Statedef 30000]
type=A
movetype=I
physics=N
ctrl=0
anim=9999
sprpriority=0


[State 30000]
type=velset
trigger1=time=0
trigger1=prevstateno!=30002
x=10
y=0

[State 9741, Safety]
type=selfstate
trigger1=!ishelper
value=0

[State -2]
type=Nothitby
trigger1=1
value=SCA


[State 30000]
type=ScreenBound
trigger1=1
value=0
movecamera=0,0

[State 30000]
type=Projectile
trigger1=time=0
trigger1=prevstateno!=30002
projID=30001
projanim=9999
velocity=10, 0
projpriority=4
projsprpriority=2
projstagebound=0
projedgebound=99999
offset=0, 0
postype=right
supermovetime=99999
pausemovetime=99999
projremovetime=-1

[State -2]
type=assertspecial
trigger1=1
flag=noshadow
flag2=invisible
ignorehitpause=1

[State -2]
type=velset
trigger1=!(root,numprojID(30001))
x=0
y=0

[State -2];Šm”F—pƒXƒCƒbƒ`
type=varset
trigger1=root,var(59)<=0
trigger1=prevstateno!=30002
trigger1=!time
var(58)=0
ignorehitpause=1


[State -2];Šm”F—pƒXƒCƒbƒ`
type=poweradd
trigger1=var(58)
trigger1=root,command="start"
value=-500

[State -2];Šm”F—pƒXƒCƒbƒ`
type=varset
trigger1=root,var(59)>0
trigger2=root,command="start"&&root,command="y"
var(58)=0
ignorehitpause=1


[State -2];ˆÃ“]“™ŠÜ‚ÞA‘ŠŽè“®ìŽžŠÔ
type=varset
trigger1=playerID(root,var(57)),Stateno!=var(48)
trigger1=playerID(root,var(57)),ctrl||(var(59)=[1,10])||playerID(root,var(57)),stateno<200
trigger1=var(46)
trigger1=playerID(root,var(57)),movetype!=H
trigger2=roundstate!=2
trigger3=var(48)=-1
trigger4=playerID(root,var(57)),Stateno=0&&root,stateno=0&&!root,ctrl
var(47)=-1


[State -2];ˆÃ“]“™ŠÜ‚ÞA‘ŠŽè“®ìŽžŠÔ
type=varadd
trigger1=1
var(47)=1


[State -2];’¼‘O‚Ì‘ŠŽèƒXƒe[ƒg”Ô†
type=varset
trigger1=1
var(48)=ifelse(playerID(root,var(57)),ctrl,-1,playerID(root,var(57)),stateno)
ignorehitpause=1

[State -2]
type=varset
trigger1=1
var(59)=playerID(root,var(57)),movecontact


[State -2];’nã’†’i•‹ó’†‰º’iŠwK—p
type=varset
trigger1=root,stateno=131||(root,stateno=[152,153])
var(56)=1
ignorehitpause=1

[State -2];’nã’†’i•‹ó’†‰º’iŠwK—p
type=varset
trigger1=root,stateno=130||(root,stateno=[150,151])
var(56)=-1
ignorehitpause=1

[State -2];’nã’†’i•‹ó’†‰º’iŠwK—p
type=varset
trigger1=!((root,stateno=[130,131])||(root,stateno=[150,153]))
trigger1=root,time >=2
var(56)=0
ignorehitpause=1

[State -2];’nã’†’iŠwK—p
type=varset
trigger1=var(56)=1
trigger1=!var(55)
trigger1=root,movetype=H
trigger1=root,stateno > 200
trigger1=playerID(root,var(57)),Statetype !=A
trigger1=playerID(root,var(57)),Movetype=A
var(55)=playerID(root,var(57)),Stateno
ignorehitpause=1

[State -2];’nã’†’iŠwK—p
type=varset
trigger1=var(56)=-1
trigger1=var(55)=playerID(root,var(57)),Stateno
trigger1=root,movetype=H
trigger1=root,stateno > 200
trigger1=playerID(root,var(57)),Statetype !=A
trigger1=playerID(root,var(57)),Movetype=A
var(55)=0
ignorehitpause=1

[State -2];’nã’†’iŠwK—p
type=varset
trigger1=var(56)=1
trigger1=var(55)!=playerID(root,var(57)),Stateno
trigger1=root,movetype=H
trigger1=root,stateno > 200
trigger1=playerID(root,var(57)),Statetype !=A
trigger1=playerID(root,var(57)),Movetype=A
var(54)=playerID(root,var(57)),Stateno
ignorehitpause=1

[State -2];’nã’†’iŠwK—p
type=varset
trigger1=var(56)=-1
trigger1=var(54)=playerID(root,var(57)),Stateno
trigger1=root,movetype=H
trigger1=root,stateno > 200
trigger1=playerID(root,var(57)),Statetype !=A
trigger1=playerID(root,var(57)),Movetype=A
var(54)=0
ignorehitpause=1


[State -2];’nã’†’iŠwK—p
type=varset
trigger1=var(56)=1
trigger1=var(55)!=playerID(root,var(57)),Stateno
trigger1=var(54)!=root,P2Stateno
trigger1=root,movetype=H
trigger1=root,stateno > 200
trigger1=playerID(root,var(57)),Statetype !=A
trigger1=playerID(root,var(57)),Movetype=A
var(53)=playerID(root,var(57)),Stateno
ignorehitpause=1

[State -2];’nã’†’iŠwK—p
type=varset
trigger1=var(56)=-1
trigger1=var(53)=playerID(root,var(57)),Stateno
trigger1=root,movetype=H
trigger1=root,stateno > 200
trigger1=playerID(root,var(57)),Statetype !=A
trigger1=playerID(root,var(57)),Movetype=A
var(53)=0
ignorehitpause=1




[State -2];‹ó’†‰º’iŠwK—p
type=varset
trigger1=var(56)=-1
trigger1=!var(51)
trigger1=root,movetype=H
trigger1=root,stateno > 200
trigger1=playerID(root,var(57)),Statetype=A
trigger1=playerID(root,var(57)),Movetype=A
var(51)=playerID(root,var(57)),Stateno
ignorehitpause=1

[State -2];‹ó’†‰º’iŠwK—p
type=varset
trigger1=var(56)=1
trigger1=var(51)=playerID(root,var(57)),Stateno
trigger1=root,movetype=H
trigger1=root,stateno > 200
trigger1=playerID(root,var(57)),Statetype=A
trigger1=playerID(root,var(57)),Movetype=A
var(51)=0
ignorehitpause=1

[State -2];‹ó’†‰º’iŠwK—p
type=varset
trigger1=var(56)=-1
trigger1=var(51)!=playerID(root,var(57)),Stateno
trigger1=root,movetype=H
trigger1=root,stateno > 200
trigger1=playerID(root,var(57)),Statetype=A
trigger1=playerID(root,var(57)),Movetype=A
var(50)=playerID(root,var(57)),Stateno
ignorehitpause=1

[State -2];‹ó’†‰º’iŠwK—p
type=varset
trigger1=var(56)=1
trigger1=var(50)=playerID(root,var(57)),Stateno
trigger1=root,movetype=H
trigger1=root,stateno > 200
trigger1=playerID(root,var(57)),Statetype=A
trigger1=playerID(root,var(57)),Movetype=A
var(50)=0
ignorehitpause=1


[State -2];‹ó’†‰º’iŠwK—p
type=varset
trigger1=var(56)=-1
trigger1=var(51)!=playerID(root,var(57)),Stateno
trigger1=var(50)!=root,P2Stateno
trigger1=root,movetype=H
trigger1=root,stateno > 200
trigger1=playerID(root,var(57)),Statetype=A
trigger1=playerID(root,var(57)),Movetype=A
var(49)=playerID(root,var(57)),Stateno
ignorehitpause=1

[State -2];‹ó’†‰º’iŠwK—p
type=varset
trigger1=var(56)=1
trigger1=var(49)=playerID(root,var(57)),Stateno
trigger1=root,movetype=H
trigger1=root,stateno > 200
trigger1=playerID(root,var(57)),Statetype=A
trigger1=playerID(root,var(57)),Movetype=A
var(49)=0
ignorehitpause=1




[State -3];ƒK[ƒh“™—p‚Ì•Ï”
type=VarSet
trigger1=1
var(46)=4
IgNoreHitPause=1


[State -3];‰º’iƒK[ƒh—p
type=VarSet
TriggerAll=NumEnemy
trigger1=playerID(root,var(57)),Name="eddie"||playerID(root,var(57)),Name="jam"
trigger1=playerID(root,var(57)),stateno=210
trigger2=playerID(root,var(57)),Name="eddie"
trigger2=playerID(root,var(57)),stateno=1800||playerID(root,var(57)),stateno=1850
trigger3=playerID(root,var(57)),Name="millia"
trigger3=playerID(root,var(57)),stateno=1500
Trigger4=playerID(root,var(57)),Name="eddie"
Trigger4=playerID(root,var(57)),stateno=1000||playerID(root,var(57)),stateno=1050||playerID(root,var(57)),NumHelper(1002);||playerID(root,var(57)),NumHelper(1001)
Trigger5=playerID(root,var(57)),stateno=var(51)
Trigger6=playerID(root,var(57)),stateno=var(50)
Trigger7=playerID(root,var(57)),stateno=var(49)
var(46)=1
IgNoreHitPause=1

[State -3];’†’iƒK[ƒh—p
type=VarSet
trigger1=playerID(root,var(57)),AutHorName="muteki"||playerID(root,var(57)),AutHorName="Akutagawa"
trigger1=playerID(root,var(57)),stateno=240
trigger2=playerID(root,var(57)),AutHorName="Cannon Musume"
trigger2=playerID(root,var(57)),stateno=230
trigger3=playerID(root,var(57)),Name="testament"
trigger3=playerID(root,var(57)),stateno=205
Trigger4=playerID(root,var(57)),Name="millia"||playerID(root,var(57)),Name="BRIDGET"||playerID(root,var(57)),Name="eddie"
Trigger4=playerID(root,var(57)),stateno=215
Trigger5=playerID(root,var(57)),Name="faust"
Trigger5=playerID(root,var(57)),stateno=235
Trigger6=playerID(root,var(57)),Name="johnny"
Trigger6=playerID(root,var(57)),stateno=1500||playerID(root,var(57)),stateno=[3500,3501]
Trigger7=playerID(root,var(57)),Name="order-Sol=Badguy"
Trigger7=playerID(root,var(57)),stateno=432
Trigger8=playerID(root,var(57)),Name="eddie"
Trigger8=0;NumHelper(1600)
Trigger9=playerID(root,var(57)),Name="jam"
Trigger9=playerID(root,var(57)),stateno=215
Trigger10=playerID(root,var(57)),Name="Sion_Eltnam_Atlasia"
Trigger10=playerID(root,var(57)),stateno=[240,241]
Trigger11=playerID(root,var(57)),Name="Reimu_Hakurei"
Trigger11=playerID(root,var(57)),stateno=240
Trigger12=playerID(root,var(57)),Name="SHIN"||playerID(root,var(57)),Name="THOUTHER"||playerID(root,var(57)),Name="REI"
Trigger12=playerID(root,var(57)),stateno=250
Trigger13=playerID(root,var(57)),Name="TOKI-(NERICYA)"||playerID(root,var(57)),Name="AMIBA"
Trigger13=playerID(root,var(57)),stateno=900
Trigger14=playerID(root,var(57)),Name="Geese Howard"
Trigger14=playerID(root,var(57)),AutHorName="Cannon Musume"
Trigger14=playerID(root,var(57)),stateno=230
Trigger15=playerID(root,var(57)),Name="Ky=kiske"
Trigger15=playerID(root,var(57)),stateno=10240 || playerID(root,var(57)),stateno=240
trigger16=playerID(root,var(57)),Name="justice"
trigger16=playerID(root,var(57)),stateno=[205,206]
trigger17=playerID(root,var(57)),Name="maori"
trigger17=playerID(root,var(57)),stateno=1200
trigger18=playerID(root,var(57)),Name="potemkin"
trigger18=playerID(root,var(57)),stateno=215
trigger19=playerID(root,var(57)),Name="blackpolnareff"
trigger19=playerID(root,var(57)),stateno=1260
trigger20=playerID(root,var(57)),Name="Anji Mito"
trigger20=playerID(root,var(57)),stateno=1002 || playerID(root,var(57)),stateno=207 || playerID(root,var(57)),stateno=850
Trigger21=playerID(root,var(57)),stateno=var(55)
Trigger22=playerID(root,var(57)),stateno=var(54)
Trigger23=playerID(root,var(57)),stateno=var(53)
trigger24=playerID(root,var(57)),Name="THOUTHER" 
trigger24=playerID(root,var(57)),stateno=2200
var(46)=2
IgNoreHitPause=1

[State -3];ƒK[ƒh•s”\—p(“Š‚°)
type=VarSet
trigger1=playerID(root,var(57)),HitDefAttr=,AT
trigger2=playerID(root,var(57)),AutHorName="muteki"||AutHorName="Akutagawa"||playerID(root,var(57)),AutHorName="Warusaki3"
trigger2=playerID(root,var(57)),stateno=800
trigger3=playerID(root,var(57)),Name="eddie"
trigger3=playerID(root,var(57)),stateno=1300;
Trigger4=playerID(root,var(57)),Name="SLAYER"
Trigger4=playerID(root,var(57)),stateno=1200||playerID(root,var(57)),stateno=1300
Trigger5=playerID(root,var(57)),Name="order-Sol=Badguy"
Trigger5=playerID(root,var(57)),stateno=1500
Trigger6=playerID(root,var(57)),Name="jam"
Trigger6=playerID(root,var(57)),stateno=2500
Trigger7=playerID(root,var(57)),Name="faust"
Trigger7=playerID(root,var(57)),stateno=1500
Trigger8=playerID(root,var(57)),Name="johnny"
Trigger8=playerID(root,var(57)),var(49)
Trigger8=playerID(root,var(57)),stateno=[1000,1099]
Trigger9=playerID(root,var(57)),stateno=[7600,7601]
Trigger9=playerID(root,var(57)),Name="wind"
Trigger10=playerID(root,var(57)),stateno=4000
Trigger10=playerID(root,var(57)),Name="Shin Gouki"||playerID(root,var(57)),Name="Ryu"||playerID(root,var(57)),Name="Morrigan Aensland"||playerID(root,var(57)),Name="Sakura Kasugano"
Trigger11=playerID(root,var(57)),stateno=3300
Trigger11=playerID(root,var(57)),Name="Yuri Sakazaki"||playerID(root,var(57)),Name="cvsgouki"||playerID(root,var(57)),Name="cvsryu"||playerID(root,var(57)),Name="cvssakura"
Trigger12=playerID(root,var(57)),stateno=3200||playerID(root,var(57)),stateno=1700
Trigger12=playerID(root,var(57)),Name="cvsg_rugal"||playerID(root,var(57)),Name="cvsrugal"
Trigger13=playerID(root,var(57)),stateno=3600
Trigger13=playerID(root,var(57)),Name="Gouki"
Trigger14=playerID(root,var(57)),stateno=20080||playerID(root,var(57)),stateno=20060
Trigger14=playerID(root,var(57)),Name="Kaori Misaka"
Trigger15=playerID(root,var(57)),stateno=3890
Trigger15=playerID(root,var(57)),Name="Evil Ken"
Trigger16=playerID(root,var(57)),Name="Kohaku"
Trigger16=playerID(root,var(57)),stateno=[2050,2051]
Trigger17=playerID(root,var(57)),Name="Omega Goenitz"
Trigger17=playerID(root,var(57)),stateno=3150
Trigger18=playerID(root,var(57)),Name="RUGAL"
Trigger18=playerID(root,var(57)),stateno=2550||playerID(root,var(57)),stateno=2500
Trigger19=playerID(root,var(57)),Name="chipp_arrange"|| playerID(root,var(57)),Name="chipp"
Trigger19=playerID(root,var(57)),stateno=1400
Trigger20=playerID(root,var(57)),Name="chipp_arrange"
Trigger20=playerID(root,var(57)),stateno=3200
Trigger21=playerID(root,var(57)),Name="sol"
Trigger21=playerID(root,var(57)),stateno=1600
var(46)=3
IgNoreHitPause=1


[State -3];‘ŠŽè–³“GTime
type=VarSet
TriggerAll=NumEnemy
trigger1=playerID(root,var(57)),Name="chipp_arrange" || playerID(root,var(57)),Name="chipp"
trigger1=playerID(root,var(57)),stateno=[3100,3104]
trigger1=Statetype !=A
trigger2=AutHorName="Warusaki3"
trigger2=playerID(root,var(57)),stateno=800
trigger3=playerID(root,var(57)),Name="cvsrugal"||playerID(root,var(57)),Name="cvsg_rugal"
trigger3=playerID(root,var(57)),stateno=1800
Trigger4=playerID(root,var(57)),Name="cvsgouki"||playerID(root,var(57)),Name="cvsgouki_ex"||playerID(root,var(57)),Name="cvsgouki_normal"
Trigger4=playerID(root,var(57)),stateno=1500
Trigger5=playerID(root,var(57)),Name="cvsryu"||playerID(root,var(57)),Name="cvsryu_ex"||playerID(root,var(57)),Name="cvsryu_normal"||playerID(root,var(57)),Name="Shin Gouki"||playerID(root,var(57)),Name="Ryu"
Trigger5=playerID(root,var(57)),stateno=1400
Trigger6=playerID(root,var(57)),Name="Evil Ken"||playerID(root,var(57)),Name="Evil Ryu"||playerID(root,var(57)),Name="Evil Dan"
Trigger6=playerID(root,var(57)),stateno=[3960,3971]
Trigger7=playerID(root,var(57)),Name="Konoha"
Trigger7=playerID(root,var(57)),stateno=1200||playerID(root,var(57)),stateno=1220||playerID(root,var(57)),stateno=1610
Trigger8=AutHorName="‡H"
Trigger8=playerID(root,var(57)),stateno=[900,930]
Trigger9=playerID(root,var(57)),Name="jam"
Trigger9=playerID(root,var(57)),stateno=[1310,1311]
Trigger10=playerID(root,var(57)),Name="eddie"
Trigger10=playerID(root,var(57)),stateno=1101
Trigger11=playerID(root,var(57)),Name="testa"
Trigger11=playerID(root,var(57)),stateno=1300
Trigger12=playerID(root,var(57)),Name="justice"
Trigger12=playerID(root,var(57)),stateno=1100
Trigger13=playerID(root,var(57)),Name="TOKI-(NERICYA)"
Trigger13=(playerID(root,var(57)),stateno=[1210,1250])||(playerID(root,var(57)),stateno=[1300,1600])
Trigger14=playerID(root,var(57)),Name="OGRE"
Trigger14=playerID(root,var(57)),stateno=[980,991]
Trigger15=playerID(root,var(57)),Name="cvsgeese"
Trigger15=playerID(root,var(57)),stateno=1300||playerID(root,var(57)),stateno=1400||playerID(root,var(57)),stateno=1500
Trigger16=playerID(root,var(57)),Name="cvsrock"
Trigger16=playerID(root,var(57)),stateno=1300
Trigger17=playerID(root,var(57)),Name="Oswald"||playerID(root,var(57)),Name="Oniwarud"
Trigger17=playerID(root,var(57)),stateno=1500
Trigger18=playerID(root,var(57)),Name="joseph"
Trigger18=playerID(root,var(57)),stateno=1020
Trigger19=playerID(root,var(57)),Name="Ella"
Trigger19=(playerID(root,var(57)),stateno=[10001,10008])||playerID(root,var(57)),stateno=10090
Trigger20=playerID(root,var(57)),Name="Abe"
Trigger20=playerID(root,var(57)),stateno=1100
Trigger21=playerID(root,var(57)),Name="dio"
Trigger21=playerID(root,var(57)),stateno=1400
Trigger22=playerID(root,var(57)),Name="cvsingrid"
Trigger22=playerID(root,var(57)),stateno=1300||playerID(root,var(57)),stateno=1350
Trigger23=playerID(root,var(57)),Name="Geese Howard"
Trigger23=playerID(root,var(57)),AutHorName="Cannon Musume"
Trigger23=playerID(root,var(57)),stateno=1400||playerID(root,var(57)),stateno=1450||playerID(root,var(57)),stateno=1500
Trigger24=playerID(root,var(57)),Name="Dhalsim with clones"
Trigger24=playerID(root,var(57)),stateno=1600
Trigger25=playerID(root,var(57)),Name="Dragon Claw"
Trigger25=playerID(root,var(57)),stateno=[1300,1320]
Trigger26=playerID(root,var(57)),AutHorName="Toma & Raien Makoto"
Trigger26=playerID(root,var(57)),Name="Aoko Aozaki"||playerID(root,var(57)),Name="Shiki_Nanaya"
Trigger26=(playerID(root,var(57)),stateno=[900,920])||(playerID(root,var(57)),stateno=[950,960])||playerID(root,var(57)),stateno=1253
Trigger27=playerID(root,var(57)),Name="General"
Trigger27=playerID(root,var(57)),stateno=[1000,1012]
Trigger28=playerID(root,var(57)),Name="Omega Goenitz"
Trigger28=playerID(root,var(57)),stateno=900||playerID(root,var(57)),stateno=1000||playerID(root,var(57)),stateno=3100
Trigger29=playerID(root,var(57)),Name="Reimu_Hakurei"
Trigger29=playerID(root,var(57)),stateno=3021||playerID(root,var(57)),stateno=3026
Trigger30=playerID(root,var(57)),AutHorName="muteki"
Trigger30=playerID(root,var(57)),stateno=750||(playerID(root,var(57)),stateno=5090&&playerID(root,var(57)),vel y<=0)
Trigger31=playerID(root,var(57)),Name="SHIN"
Trigger31=playerID(root,var(57)),stateno=2400||playerID(root,var(57)),stateno=2050||(playerID(root,var(57)),stateno=2000&&var(47)<99)
Trigger32=playerID(root,var(57)),Name="Reimu_Hakurei"
Trigger32=playerID(root,var(57)),stateno=3041 || playerID(root,var(57)),stateno=3051
Trigger33=playerID(root,var(57)),Name="Magaki"
Trigger33=playerID(root,var(57)),stateno=3000
Trigger34=playerID(root,var(57)),Name="ZERO"
Trigger34=playerID(root,var(57)),stateno=3100||playerID(root,var(57)),stateno=3110||playerID(root,var(57)),stateno=3200||playerID(root,var(57)),stateno=3210
Trigger35=playerID(root,var(57)),Name="ORIGINAL ZERO"
trigger35=playerID(root,var(57)),stateno=3100||playerID(root,var(57)),stateno=3110
trigger36=playerID(root,var(57)),Name="Patchouli"
trigger36=playerID(root,var(57)),stateno=1150||playerID(root,var(57)),stateno=1160
trigger37=playerID(root,var(57)),Name="Yukari_Yakumo"
trigger37=playerID(root,var(57)),stateno=3000||playerID(root,var(57)),stateno=[3100,3101]
trigger37=playerID(root,var(57)),movetype=A
trigger38=var(33)=-1
Trigger39=playerID(root,var(57)),Name="JOHANN"
Trigger39=playerID(root,var(57)),stateno=705
var(46)=0
IgNoreHitPause=1


;v46=0=‘ŠŽè–³“GTime
;v46=1=‰º’i
;v46=2=’†’i
;v46=3=ƒK[ƒh•s”\(“Š‚°)


[State -3];ƒK[ƒh“™—p‚Ì•Ï”
type=VarSet
trigger1=var(46)=4
var(46)=ifelse(playerID(root,var(57)),statetype=A,2,1)
IgNoreHitPause=1




[State -3];juggleŒvŽZ
type=VarSet
triggerall=root,name="Nocturne"||root,name="Kung Fu Man"
trigger1=root,P2Movetype !=H
trigger2=root,P2Stateno < 200
trigger3=!playerID(root,var(57)),gethitvar(fall)
var(45)=root,Const(data.airjuggle)
IgNoreHitPause=1


[State -3];juggleŒvŽZ
Type=Varset
trigger1=root,name="Nocturne"
trigger1=(root,stateno!=[1200,1210])&&root,stateno!=1510
var(44)=1

[State -3];juggleŒvŽZ
type=Varadd
triggerall=root,name="Nocturne"
triggerall=root,time >=1
Triggerall=root,movehit=1
Triggerall=playerID(root,var(57)),Statetype=A
Triggerall=!playerID(root,var(57)),hitshakeover
Triggerall=playerID(root,var(57)),time=1
Triggerall=playerID(root,var(57)),gethitvar(fall)
trigger1=root,stateno=200
var(45)=-1
Ignorehitpause=1

[State -3];juggleŒvŽZ
type=Varadd
triggerall=root,name="Nocturne"
triggerall=root,time>=1
Triggerall=root,movehit=1
Triggerall=playerID(root,var(57)),Statetype=A
Triggerall=!playerID(root,var(57)),hitshakeover
Triggerall=playerID(root,var(57)),time=1
Triggerall=playerID(root,var(57)),gethitvar(fall)
trigger1=root,stateno=210 || root,stateno=230
trigger2=root,stateno=610||root,stateno=640
trigger3=root,stateno=1000
trigger4=(root,stateno=[1200,1210])
trigger4=var(44)
trigger5=root,stateno=[1400,1450]
trigger6=root,stateno=500
var(45)=-4


[State -3];juggleŒvŽZ
type=Varadd
triggerall=root,name="Nocturne"
triggerall=root,time>=1
Triggerall=root,movehit=1
Triggerall=playerID(root,var(57)),Statetype=A
Triggerall=!playerID(root,var(57)),hitshakeover
Triggerall=playerID(root,var(57)),time=1
Triggerall=playerID(root,var(57)),gethitvar(fall)
trigger1=root,stateno=3500
trigger2=root,stateno=3600
trigger3=root,stateno=1010
var(45)=-8


[State -3];juggleŒvŽZ
type=Varadd
triggerall=root,name="Nocturne"
triggerall=root,time >=1
Triggerall=root,movehit=1
Triggerall=playerID(root,var(57)),Statetype=A
Triggerall=!playerID(root,var(57)),hitshakeover
Triggerall=playerID(root,var(57)),time=1
Triggerall=playerID(root,var(57)),gethitvar(fall)
trigger1=root,stateno=630
var(45)=-3

[State -3];juggleŒvŽZ
type=Varadd
triggerall=root,name="Nocturne"
triggerall=root,time >=1
Triggerall=root,movehit=1
Triggerall=playerID(root,var(57)),Statetype=A
Triggerall=!playerID(root,var(57)),hitshakeover
Triggerall=playerID(root,var(57)),time=1
Triggerall=playerID(root,var(57)),gethitvar(fall)
trigger1=root,stateno=600
var(45)=-2

[State -3];juggleŒvŽZ
type=Varadd
triggerall=root,name="Nocturne"
triggerall=root,time >=1
Triggerall=root,movehit=1
Triggerall=playerID(root,var(57)),Statetype=A
Triggerall=!playerID(root,var(57)),hitshakeover
Triggerall=playerID(root,var(57)),time=1
Triggerall=playerID(root,var(57)),gethitvar(fall)
trigger1=root,stateno=240
trigger2=root,stateno=400 || root,stateno=430
var(45)=-5

[State -3];juggleŒvŽZ
type=Varadd
triggerall=root,name="Nocturne"
triggerall=root,time >=1
Triggerall=root,movehit=1
Triggerall=playerID(root,var(57)),Statetype=A
Triggerall=!playerID(root,var(57)),hitshakeover
Triggerall=playerID(root,var(57)),time=1
Triggerall=playerID(root,var(57)),gethitvar(fall)
trigger1=root,stateno=410
var(45)=-6

[State -3];juggleŒvŽZ
type=Varadd
triggerall=root,Name="Nocturne"
triggerall=root,time >=1
Triggerall=root,movehit=1
Triggerall=playerID(root,var(57)),Statetype=A
Triggerall=!playerID(root,var(57)),hitshakeover
Triggerall=playerID(root,var(57)),time=1
Triggerall=playerID(root,var(57)),gethitvar(fall)
trigger1=root,stateno=440
var(45)=-7






[State -3];juggleŒvŽZ
Type=Varset
trigger1=root,name="Nocturne"
trigger1=(root,stateno=[1200,1210])||root,stateno=1510
trigger1=root,movehit
var(44)=0


[State -2];ƒJƒEƒ“ƒg
type=varadd
trigger1=var(43) < 0
var(43)=1


[State -2];ƒJƒEƒ“ƒg
type=varadd
trigger1=var(43) > 0
var(43)=-1

[State -2];Š„‚èž‚Ý‚È‚Ç
type=varset
triggerall=root,P2BodyDist x <=100
trigger1=root,stateno=[150,159]
trigger2=root,stateno=[2110,2111]
trigger3=root,stateno=5201 || root,stateno=5210
trigger4=root,stateno=5120
var(43)=-5


[State -2];–\‚ê‚Â‚Ô‚µ‚È‚Ç
type=varset
triggerall=root,P2BodyDist x <=160
trigger1=playerID(root,var(57)),stateno=[150,159]
trigger2=playerID(root,var(57)),stateno=5120
var(43)=5



[State -2];
type=varadd
trigger1=root,stateno=150 || root,stateno=152 || root,stateno=154
trigger1=root,prevstateno !=[150,159]
trigger1=root,time=1
trigger1=root,P2bodydist x <=120
var(41)=1


[State -2];
type=varadd
triggerall=var(41) > 0
triggerall=playerID(root,var(57)),movetype !=H
triggerall=root,movetype!=H
trigger1=root,movetype=A
trigger1=root,prevstateno < 200
trigger1=root,time=1
trigger2=gametime % 600=0
var(41)=-1

[State -2];
type=varset
trigger1=var(39)>0
trigger1=playerID(root,var(57)),statetype!=A
var(39)=0

[State -2];
type=varset
trigger1=var(39)<0
trigger1=playerID(root,var(57)),statetype=A
var(39)=0

[State -2];
type=varadd
trigger1=playerID(root,var(57)),statetype!=A
var(39)=-1

[State -2];
type=varadd
trigger1=playerID(root,var(57)),statetype=A
var(39)=1



[State -2];
type=varset
triggerall=numpartner
triggerall=partner,alive
trigger1=root,name="Nocturne"||root,name="Jimmy"
trigger1=partner,name="chipp_arrange"||partner,name="Morrigan Aensland"||partner,name="ky"||partner,name="Lucario"||partner,name="dizzy"||partner,name="Hong Meirin"||partner,name="Date Masamune"||partner,name="millia"
trigger1=partner,numhelper(30000)
trigger1=partner,var(59)>0
trigger2=root,name="Nocturne"||root,name="Jimmy"
trigger2=partner,name="Alice Margatroid"
var(38)=2



[State -2];
type=varset
triggerall=numpartner
triggerall=partner,alive
trigger1=root,name="millia"
trigger1=partner,name="justice"||partner,name="Nocturne"||partner,name="Jimmy"||partner,name="Kaede"||partner,name="Katakura Kojuro"
trigger1=root,life-partner,life<=300
trigger1=partner,numhelper(30000)
trigger1=partner,var(59)>0
trigger2=root,name="millia"
trigger2=partner,name="chipp_arrange"||partner,name="Morrigan Aensland"||partner,name="ky"||partner,name="Lucario"||partner,name="Kung Fu Man"||partner,name="Date Masamune"||partner,name="millia"
trigger2=root,life-partner,life<-300
trigger2=partner,numhelper(30000)
trigger2=partner,var(59)>0
var(38)=1


[State -2];
type=varset
triggerall=numpartner
triggerall=partner,alive
trigger1=root,name="millia"
trigger1=partner,name="chipp_arrange"||partner,name="Morrigan Aensland"||partner,name="ky"||partner,name="Lucario"||partner,name="Kung Fu Man"||partner,name="Date Masamune"||partner,name="millia"
trigger1=partner,numhelper(30000)
trigger1=root,life-partner,life>300
trigger1=partner,var(59)>0
trigger2=root,name="millia"
trigger2=partner,name="Alice Margatroid"
trigger3=root,name="millia"
trigger3=partner,name="dizzy"||partner,name="Hong Meirin"
trigger3=partner,numhelper(30000)
trigger3=partner,var(59)>0
trigger4=root,name="millia"
trigger4=partner,name="justice"||partner,name="Nocturne"||partner,name="Jimmy"||partner,name="Kaede"||partner,name="Katakura Kojuro"||partner,name="Sanada Yukimura"
trigger4=root,life-partner,life>300
trigger4=partner,numhelper(30000)
trigger4=partner,var(59)>0
var(38)=2



[State -2];
type=varset
triggerall=numpartner
triggerall=partner,alive
trigger1=var(38)!=[1,2]
trigger2=root,name="millia"
trigger2=root,life-partner,life=[-300,300]
trigger2=partner,name="Morrigan Aensland"||partner,name="ky"||partner,name="Kung Fu Man"||partner,name="chipp_arrange"||partner,name="Lucario"||partner,name="Date Masamune"||partner,name="millia"
trigger2=partner,numhelper(30000)
trigger2=partner,var(59)>0
var(38)=3


[State -2];
type=varset
trigger1=var(38)>=1
trigger1=!(partner,alive)
var(38)=-1


[State -2];‘ŠŽèƒqƒbƒgƒXƒgƒbƒvŠÖŒW
type=varset
trigger1=playerID(root,var(57)),gethitvar(hitshaketime)
var(37)=playerID(root,var(57)),gethitvar(hitshaketime)-1


[State -2];‘ŠŽèƒqƒbƒgƒXƒgƒbƒvŠÖŒW
type=varset
trigger1=!playerID(root,var(57)),gethitvar(hitshaketime)
var(37)=0


[State -2];‘ŠŽè‹N‚«ã‚ª‚èŽžŠÔ
type=varset
trigger1=!time
trigger1=prevstateno!=30002
var(36)=-1

[State -2];‘ŠŽè‹N‚«ã‚ª‚èŽžŠÔ
type=varset
trigger1=playerID(root,var(57)),statetype=L
trigger1=playerID(root,var(57)),stateno>=5120
trigger1=playerID(root,var(57)),time=1
var(36)=-playerID(root,var(57)),Animtime+1


[State -2];’…’n—\‘ª‚µ‚á‚ª‚ÝƒK[ƒh
type=varadd
trigger1=var(34)>=-50
var(34)=-1

[State -2];’…’n—\‘ª‚µ‚á‚ª‚ÝƒK[ƒh
type=null
triggerall=var(34)<0
triggerall=var(35)<10
triggerall=!playerID(root,var(57)),hitpausetime
triggerall=playerID(root,var(57)),vel y>1
triggerall=playerID(root,var(57)),statetype=A
trigger1=var(34):=ceil(5+(10-var(35))*(1+random/1000.0)/2)
trigger1=playerID(root,var(57)),pos y+(playerID(root,var(57)),vel y+playerID(root,var(57)),Const(movement.yaccel)*(var(34)-3)*0.5)*(var(34)-3)>0
trigger1=random<200
trigger1=var(39):=0||1

[State 30000]
type=Changestate
trigger1=1
value=30002


;¶‘¤ƒwƒ‹ƒp[30010isuparpause,pause‚Ì‰e‹¿‚ðŽó‚¯‚éj

;var(0):‚Ì‚¯‚¼‚èŽžŠÔŒvŽZ
;var(1):–³“GŽžŠÔŒvŽZ
;var(2):ƒ_ƒEƒ“’Ç‚¢“¢‚¿”»’f—p
;var(3):‘ŠŽèŒXŒü”»’fB‹——£
;var(4):‘ŠŽèŒXŒü”»’fBs“®‹——£
;var(5)•fvar(0):‘ŠŽèŒXŒü”»’fBˆÚ“®
;var(6):Ž©•ª–³“GŽžŠÔ
;var(7):Ž©•ª“Š‚°–³“GŽžŠÔ
;var(8):‘ŠŽè‚Ì‹N‚«ã‚ª‚èŽžŠÔ(stateno=5120)
;var(9)~var(23):‘ŠŽèd’¼ŽžŠÔŠwKB‹Z‚T‚Â•ªBvar(23)‚ªAnimtime‚Ì‘ã‚í‚è‚É‚È‚é
;var(24),var(25):ŠeƒLƒƒƒ‰•Ê
;var(26)~var(29):‚Ì‚¯‚¼‚èŽžŠÔŒvŽZ
;var(30)~var(31):ƒqƒbƒgƒ|[ƒY”»’è

[Statedef 30010]
type=A
movetype=I
physics=N
ctrl=0
anim=9999
sprpriority=0

[State 30010]
type=velset
trigger1=time=0
trigger1=prevstateno!=30012
x=10
y=0

[State 9741, Safety]
type=selfstate
trigger1=!ishelper
value=0



[State 30000]
type=ScreenBound
trigger1=1
value=0
movecamera=0,0

[State 30000]
type=Projectile
trigger1=time=0
trigger1=prevstateno!=30012
projID=30011
projanim=9999
velocity=10, 0
projpriority=4
projsprpriority=2
projedgebound=99999
projstagebound=0
offset=0, 0
postype=left
supermovetime=99999
pausemovetime=99999
projremovetime=-1

[State -2]
type=assertspecial
trigger1=1
flag=noshadow
flag2=invisible
ignorehitpause=1

[State -2]
type=Nothitby
trigger1=1
value=SCA


[State -2]
type=velset
trigger1=!(root,numprojID(30011))
x=0
y=0


[State -2];‘ŠŽè–³“G”»’f—p
type=varset
trigger1=playerID(root,var(57)),movetype=H
trigger2=playerID(root,var(57)),Statetype=L
trigger3=playerID(root,var(57)),stateno=[5000,5070]
var(1)=12


[State -2];‘ŠŽè–³“G”»’f—p
type=varadd
trigger1=playerID(root,var(57)),movetype!=H
trigger1=playerID(root,var(57)),Statetype!=L
trigger1=var(1)>0
var(1)=-1


[State -2];‘ŠŽè–³“G”»’f—p
type=varadd
trigger1=var(1)<0
var(1)=1



[State -2];‘ŠŽè–³“G”»’f—p
type=varset
trigger1=playerID(root,var(57)),stateno=5210
trigger1=playerID(root,var(57)),time=1
var(1)=-14


[State 30010]
type=varadd
trigger1=var(27)>0
var(27)=-1

[State 30010]
type=varadd
trigger1=var(29)>0
var(29)=-1

[State -2];ƒK[ƒhd’¼
type=varset
triggerall=playerIDExist(var(26))
triggerall=playerID(var(26)),Movetype=H
triggerall=playerID(var(26)),stateno < 200
triggerall=playerID(var(26)),Statetype=A
triggerall=!playerID(var(26)),gethitvar(fall)
trigger1=!(playerID(var(26)),hitshakeover)
trigger1=playerID(var(26)),time=1
var(27)=playerID(var(26)),gethitvar(ctrltime)+playerID(var(26)),gethitvar(hitshaketime)+1
ignorehitpause=1

[State -2];ƒK[ƒhd’¼
type=varset
triggerall=playerIDExist(var(26))
triggerall=playerID(var(26)),Movetype=H
triggerall=playerID(var(26)),stateno < 200
triggerall=playerID(var(26)),Statetype=A
triggerall=!playerID(var(26)),gethitvar(fall)
trigger1=playerID(var(26)),stateno=155
trigger1=playerID(var(26)),time=1
trigger1=!var(30)
var(27)=playerID(var(26)),gethitvar(ctrltime)+2
ignorehitpause=1

[State -2];ƒK[ƒhd’¼
type=varset
triggerall=playerIDExist(var(26))
triggerall=playerID(var(26)),Movetype=H
triggerall=playerID(var(26)),stateno < 200
triggerall=playerID(var(26)),Statetype!=A
trigger1=!playerID(var(26)),gethitvar(fall)
trigger1=!(playerID(var(26)),hitshakeover)
trigger1=playerID(var(26)),time=1 || var(27)=0
var(27)=ifelse(playerID(var(26)),gethitvar(ctrltime)<playerID(var(26)),gethitvar(hittime),playerID(var(26)),gethitvar(ctrltime),playerID(var(26)),gethitvar(hittime))+playerID(var(26)),gethitvar(hitshaketime)+1
ignorehitpause=1

[State -2];ƒK[ƒhd’¼
type=varset
triggerall=playerIDExist(var(26))
triggerall=playerID(var(26)),Movetype=H
triggerall=playerID(var(26)),stateno < 200
triggerall=playerID(var(26)),Statetype!=A
trigger1=!playerID(var(26)),gethitvar(fall)
trigger1=playerID(var(26)),stateno=151||playerID(var(26)),stateno=153
trigger1=playerID(var(26)),time=1
trigger1=!var(30)
var(27)=ifelse(playerID(var(26)),gethitvar(ctrltime)<playerID(var(26)),gethitvar(hittime),playerID(var(26)),gethitvar(ctrltime),playerID(var(26)),gethitvar(hittime))+2
ignorehitpause=1

[State -2];‚Ì‚¯‚¼‚èŽžŠÔ
type=varset
triggerall=playerIDExist(var(26))
triggerall=playerID(var(26)),Movetype=H
triggerall=playerID(var(26)),stateno > 199
trigger1=!playerID(var(26)),gethitvar(fall)
trigger1=!(playerID(var(26)),hitshakeover)
trigger1=playerID(var(26)),time=1
var(27)=playerID(var(26)),gethitvar(hittime)+playerID(var(26)),gethitvar(hitshaketime)+1
ignorehitpause=1

[State -2];‚Ì‚¯‚¼‚èŽžŠÔ
type=varset
triggerall=playerIDExist(var(26))
triggerall=playerID(var(26)),Movetype=H
triggerall=playerID(var(26)),stateno > 199
trigger1=!playerID(var(26)),gethitvar(fall)
trigger1=playerID(var(26)),stateno=5001
trigger1=playerID(var(26)),time=1
trigger1=!var(30)
var(27)=playerID(var(26)),gethitvar(hittime)+2
ignorehitpause=1

[State -2];Žóg•s”\ŽžŠÔ
type=varset
triggerall=playerIDExist(var(26))
triggerall=playerID(var(26)),stateno > 199
triggerall=playerID(var(26)),Movetype=H
trigger1=playerID(var(26)),gethitvar(fall)
trigger1=!(playerID(var(26)),hitshakeover)
trigger1=playerID(var(26)),time=1
var(27)=playerID(var(26)),gethitvar(fall.recovertime)-1
ignorehitpause=1

[State -2];Žóg•s”\ŽžŠÔ
type=varset
triggerall=playerIDExist(var(26))
triggerall=playerID(var(26)),stateno > 199
triggerall=playerID(var(26)),Movetype=H
trigger1=playerID(var(26)),gethitvar(fall)
trigger1=playerID(var(26)),stateno=5030
trigger1=playerID(var(26)),time=1
trigger1=!var(30)
var(27)=playerID(var(26)),gethitvar(fall.recovertime)-1
ignorehitpause=1


[State -2];ƒK[ƒhd’¼
type=varset
triggerall=playerIDExist(var(28))
triggerall=playerID(var(28)),Movetype=H
triggerall=playerID(var(28)),stateno < 200
triggerall=playerID(var(28)),Statetype=A
triggerall=!playerID(var(28)),gethitvar(fall)
trigger1=!(playerID(var(28)),hitshakeover)
trigger1=playerID(var(28)),time=1
var(29)=playerID(var(28)),gethitvar(ctrltime)+playerID(var(28)),gethitvar(hitshaketime)+1
ignorehitpause=1

[State -2];ƒK[ƒhd’¼
type=varset
triggerall=playerIDExist(var(28))
triggerall=playerID(var(28)),Movetype=H
triggerall=playerID(var(28)),stateno < 200
triggerall=playerID(var(28)),Statetype=A
triggerall=!playerID(var(28)),gethitvar(fall)
trigger1=playerID(var(28)),stateno=155
trigger1=playerID(var(28)),time=1
trigger1=!var(31)
var(29)=playerID(var(28)),gethitvar(ctrltime)+2
ignorehitpause=1

[State -2];ƒK[ƒhd’¼
type=varset
triggerall=playerIDExist(var(28))
triggerall=playerID(var(28)),Movetype=H
triggerall=playerID(var(28)),stateno < 200
triggerall=playerID(var(28)),Statetype!=A
trigger1=!playerID(var(28)),gethitvar(fall)
trigger1=!(playerID(var(28)),hitshakeover)
trigger1=playerID(var(28)),time=1 || var(29)=0
var(29)=ifelse(playerID(var(28)),gethitvar(ctrltime)<playerID(var(28)),gethitvar(hittime),playerID(var(28)),gethitvar(ctrltime),playerID(var(28)),gethitvar(hittime))+playerID(var(28)),gethitvar(hitshaketime)+1
ignorehitpause=1

[State -2];ƒK[ƒhd’¼
type=varset
triggerall=playerIDExist(var(28))
triggerall=playerID(var(28)),Movetype=H
triggerall=playerID(var(28)),stateno < 200
triggerall=playerID(var(28)),Statetype!=A
trigger1=!playerID(var(28)),gethitvar(fall)
trigger1=playerID(var(28)),stateno=151||playerID(var(28)),stateno=153
trigger1=playerID(var(28)),time=1
trigger1=!var(31)
var(29)=ifelse(playerID(var(28)),gethitvar(ctrltime)<playerID(var(28)),gethitvar(hittime),playerID(var(28)),gethitvar(ctrltime),playerID(var(28)),gethitvar(hittime))+2
ignorehitpause=1

[State -2];‚Ì‚¯‚¼‚èŽžŠÔ
type=varset
triggerall=playerIDExist(var(28))
triggerall=playerID(var(28)),Movetype=H
triggerall=playerID(var(28)),stateno > 199
trigger1=!playerID(var(28)),gethitvar(fall)
trigger1=!(playerID(var(28)),hitshakeover)
trigger1=playerID(var(28)),time=1
var(29)=playerID(var(28)),gethitvar(hittime)+playerID(var(28)),gethitvar(hitshaketime)+1
ignorehitpause=1

[State -2];‚Ì‚¯‚¼‚èŽžŠÔ
type=varset
triggerall=playerIDExist(var(28))
triggerall=playerID(var(28)),Movetype=H
triggerall=playerID(var(28)),stateno > 199
trigger1=!playerID(var(28)),gethitvar(fall)
trigger1=playerID(var(28)),stateno=5001
trigger1=playerID(var(28)),time=1
trigger1=!var(31)
var(29)=playerID(var(28)),gethitvar(hittime)+2
ignorehitpause=1

[State -2];Žóg•s”\ŽžŠÔ
type=varset
triggerall=playerIDExist(var(28))
triggerall=playerID(var(28)),stateno > 199
triggerall=playerID(var(28)),Movetype=H
trigger1=playerID(var(28)),gethitvar(fall)
trigger1=!(playerID(var(28)),hitshakeover)
trigger1=playerID(var(28)),time=1
var(29)=playerID(var(28)),gethitvar(fall.recovertime)-1
ignorehitpause=1

[State -2];Žóg•s”\ŽžŠÔ
type=varset
triggerall=playerIDExist(var(28))
triggerall=playerID(var(28)),stateno > 199
triggerall=playerID(var(28)),Movetype=H
trigger1=playerID(var(28)),gethitvar(fall)
trigger1=playerID(var(28)),stateno=5030
trigger1=playerID(var(28)),time=1
trigger1=!var(31)
var(29)=playerID(var(28)),gethitvar(fall.recovertime)-1
ignorehitpause=1

[State 30010]
type=null
trigger1=time=0
trigger1=prevstateno!=30012
trigger1=var(26):=-1
trigger1=var(28):=-1
trigger2=!playerIDExist(var(26))
trigger2=var(26):=-1
trigger3=playerID(var(26)),ishelper
trigger3=var(26):=-1
trigger4=!playerIDExist(var(28))
trigger4=var(28):=-1
trigger5=playerID(var(28)),ishelper
trigger5=var(28):=-1


[State 30010]
type=varset
triggerall=var(26)=-1
trigger1=!playerID(root,var(57)),ishelper
var(26)=root,var(57)


[State 30010]
type=varset
triggerall=var(28)=-1
triggerall=numenemy>=2
trigger1=!playerID(root,var(57)),ishelper
trigger1=root,var(57)!=var(26)
var(28)=root,var(57)

[State 30010]
type=null
trigger1=var(28)=root,var(57)
trigger1=var(0):=var(29)
trigger2=var(0):=var(27)



[State 30010]
type=null
trigger1=var(30)>0
trigger1=var(30):=var(30)-1
trigger1=0
trigger2=var(31)>0
trigger2=var(31):=var(31)-1
trigger2=0
trigger3=playerIDExist(var(26))
trigger3=playerID(var(26)),gethitvar(hitshaketime)>0
trigger3=var(30):=playerID(var(26)),gethitvar(hitshaketime)+1
trigger3=0
trigger4=playerIDExist(var(28))
trigger4=playerID(var(28)),gethitvar(hitshaketime)>0
trigger4=var(31):=playerID(var(28)),gethitvar(hitshaketime)+1
trigger4=0
trigger5=var(30)<0
trigger5=var(30):=0
trigger5=0
trigger6=var(31)<0
trigger6=var(31):=0
trigger6=0


[State -2];Žóg•s”\ŽžŠÔ
type=varset
triggerall=numpartner
triggerall=partner,name="Date Masamune"
triggerall=playerID(root,var(57)),stateno > 199
triggerall=playerID(root,var(57)),Movetype=H
trigger1=playerID(root,var(57)),stateno=[555,558]
var(0)=999

[State -2];Žóg•s”\ŽžŠÔ
type=varset
triggerall=numpartner
triggerall=partner,name="Date Masamune"||partner,name="Katakura Kojuro"||partner,name="Sanada Yukimura"
triggerall=playerID(root,var(57)),stateno=[820,821]
triggerall=playerID(root,var(57)),Movetype=H
trigger1=partner,stateno=810
var(0)=999

[State -2];Žóg•s”\ŽžŠÔ
type=varset
triggerall=playerID(root,var(57)),stateno > 199
triggerall=playerID(root,var(57)),Movetype=H
trigger1=!playerID(root,var(57)),gethitvar(fall.recover)
trigger1=playerID(root,var(57)),gethitvar(fall)
trigger2=playerID(root,var(57)),stateno=[5070,5071]
var(0)=999
ignorehitpause=1



[State -2];ƒ_ƒEƒ“’Ç‚¢“¢‚¿”»’f
type=varset
triggerall=var(2)
trigger1=playerID(root,var(57)),Movetype=H
trigger1=playerID(root,var(57)),Statetype=L
trigger1=root,movetype=A
var(2)=0

[State -2];ƒ_ƒEƒ“’Ç‚¢“¢‚¿”»’f
type=varset
trigger1=playerID(root,var(57)),Movetype!=H
var(2)=1



[State -2];‘ŠŽèŒXŒü”»’fB‹——£
type=varset
trigger1=var(3)>100
trigger2=var(3)<-100
var(3)=0
ignorehitpause=1


[State -2];‘ŠŽèŒXŒü”»’fB‹——£
type=varadd
triggerall=abs(root,P2Dist y)<100
triggerall=root,movetype!=H
triggerall=root,statetype!=L
trigger1=root,P2BodyDist x <=120
trigger1=root,name="chipp_arrange"
trigger2=roundstate !=2
trigger3=root,P2BodyDist x <=50+(!root,inguarddist)*50
trigger3=root,name="Nocturne"
trigger4=root,P2BodyDist x <=30+(!root,inguarddist)*40||root,stateno=1200
trigger4=root,name="justice"
trigger5=root,name="ky"
trigger5=root,P2BodyDist x <=50+(!root,inguarddist)*50
var(3)=-1
ignorehitpause=1

[State -2];‘ŠŽèŒXŒü”»’fB‹——£
type=varadd
trigger1=root,P2BodyDist x > 120|| abs(root,P2BodyDist y)>=100
trigger1=root,name="chipp_arrange"
trigger2=root,P2BodyDist x > 50+(!root,inguarddist)*50 || abs(root,P2BodyDist y)>=100
trigger2=root,name="Nocturne"
trigger3=root,P2BodyDist x > 30+(!root,inguarddist)*50 || abs(root,P2BodyDist y)>=100
trigger3=root,name="justice"
trigger4=root,P2BodyDist x > 50+(!root,inguarddist)*50 || abs(root,P2BodyDist y)>=100
trigger4=root,name="ky"
triggerall=playerID(root,var(57)),Statetype!=L
triggerall=playerID(root,var(57)),movetype!=H
triggerall=roundstate=2
triggerall=root,statetype!=L
var(3)=1
ignorehitpause=1

[State -2];‘ŠŽèŒXŒü”»’fBs“®‹——£
type=varset
trigger1=var(4)<=-3
trigger2=var(4)>=3
var(4)=0
ignorehitpause=1

[State -2];‘ŠŽèŒXŒü”»’fBs“®‹——£
type=varadd
triggerall=playerID(root,var(57)),Statetype!=L
triggerall=playerID(root,var(57)),movetype!=H
triggerall=root,movetype!=H||root,stateno<=200
triggerall=roundstate=2
triggerall=root,statetype!=L
triggerall=playerID(root,var(57)),movetype=A||!playerID(root,var(57)),ctrl&&playerID(root,var(57)),stateno>=200
triggerall=helper(30000),var(47)=1
trigger1=abs(root,pos x-playerID(root,var(57)),pos x)<80
trigger1=root,name="chipp_arrange"
var(4)=-1
ignorehitpause=1


[State -2];‘ŠŽèŒXŒü”»’fBs“®‹——£
type=varadd
triggerall=playerID(root,var(57)),Statetype!=L
triggerall=playerID(root,var(57)),movetype!=H
triggerall=root,movetype!=H||root,stateno<=200
triggerall=roundstate=2
triggerall=playerID(root,var(57)),movetype=A||!playerID(root,var(57)),ctrl&&playerID(root,var(57)),stateno>=200
triggerall=helper(30000),var(47)=1
trigger1=abs(root,pos x-playerID(root,var(57)),pos x)>=120
trigger1=root,name="chipp_arrange"
var(4)=1
ignorehitpause=1

[State -2];‘ŠŽèŒXŒü”»’fBs“®‹——£
type=varadd
triggerall=playerID(root,var(57)),Statetype!=L
triggerall=playerID(root,var(57)),movetype!=H
triggerall=root,movetype!=H||root,stateno<=200
triggerall=roundstate=2
triggerall=playerID(root,var(57)),movetype=A||!playerID(root,var(57)),ctrl&&playerID(root,var(57)),stateno>=200
triggerall=helper(30000),var(47)=1
trigger1=abs(root,pos x-playerID(root,var(57)),pos x)>=180
trigger1=root,name="chipp_arrange"
var(4)=1
ignorehitpause=1

[State -2];‘ŠŽèŒXŒü”»’fBˆÚ“®
type=varset
trigger1=var(5)>100
trigger2=var(5)<-100
var(5)=0
ignorehitpause=1

[State -2];‘ŠŽèŒXŒü”»’fBˆÚ“®
type=varadd
triggerall=playerID(root,var(57)),movetype!=H
triggerall=root,movetype!=H||root,stateno<=200||root,statetype=L
trigger1=1
var(5)=floor(ifelse(playerID(root,var(57)),facing*playerID(root,var(57)),P2Dist x>0,1,-1)*(playerID(root,var(57)),pos x-pos x-fvar(0)))
ignorehitpause=1


[State -2];‘ŠŽèŒXŒü”»’fBˆÚ“®
type=varset
trigger1=1
fvar(0)=playerID(root,var(57)),pos x-pos x
ignorehitpause=1



[State -2];Ž©•ª–³“GŽžŠÔ
type=varset
trigger1=root,stateno=5120
var(6)=3


[State -2];Ž©•ª–³“GŽžŠÔ
type=varset
trigger1=root,stateno=5210
var(6)=3

[State -2];Ž©•ª–³“GŽžŠÔ
type=varadd
trigger1=root,stateno !=5120
trigger1=var(6) > 0
var(6)=-1



[State -2];Ž©•ª“Š‚°–³“GŽžŠÔ
type=varadd
trigger1=root,movetype!=H
trigger1=root,Statetype!=L
trigger1=var(7)>0
var(7)=-1



[State -2];Ž©•ª“Š‚°–³“GŽžŠÔ
type=varset
trigger1=root,movetype=H
trigger2=root,Statetype=L
trigger3=root,stateno=[5200,5270]
var(7)=12



[State -2];‘ŠŽè‹N‚«ã‚ª‚èŽžŠÔ
type=varset
trigger1=!time
var(8)=-1


[State -2];‘ŠŽè‹N‚«ã‚ª‚èŽžŠÔ
type=varset
trigger1=playerID(root,var(57)),Stateno=5120
trigger1=playerID(root,var(57)),time=1
var(8)=-playerID(root,var(57)),Animtime+1



[State -2];d’¼ŽžŠÔ
type=varset
trigger1=!time
var(12)=13

[State 30000];d’¼ŽžŠÔŠwK
type=varset
triggerall=!playerID(root,var(57)),ctrl
triggerall=!var(9)
triggerall=playerID(root,var(57)),movetype!=H
triggerall=playerID(root,var(57)),Stateno=[1000,1999]
triggerall=playerID(root,var(57)),time>=30
triggerall=playerID(root,var(57)),Stateno!=var(13)&&playerID(root,var(57)),Stateno!=var(15)&&playerID(root,var(57)),Stateno!=var(17)
triggerall=playerID(root,var(57)),Stateno!=var(19)&&playerID(root,var(57)),Stateno!=var(21)
trigger1=playerID(root,var(57)),Animtime>0
trigger2=playerID(root,var(57)),Animtime<var(10)+1
var(9)=playerID(root,var(57)),Stateno


[State -2];d’¼ŽžŠÔ
type=varset
trigger1=1
var(10)=playerID(root,var(57)),Animtime


[State -2];d’¼ŽžŠÔ
type=varset
trigger1=var(9)
trigger1=var(9)=playerID(root,var(57)),Stateno
var(11)=playerID(root,var(57)),time



[State -2];d’¼ŽžŠÔ
type=varadd
trigger1=var(9)
trigger1=var(9)!=playerID(root,var(57)),Stateno
trigger1=helper(30000),var(47)>0
trigger1=!playerID(root,var(57)),hitpausetime
var(11)=1


[State -2];d’¼ŽžŠÔ
type=varset
trigger1=!helper(30000),var(47)
trigger1=var(9)
trigger1=var(11)
trigger1=var(var(12)):=var(9)
trigger1=var(var(12)+1):=var(11)
trigger1=var(9):=0||1
trigger1=var(11):=0||1
var(12)=ifelse(var(12)>=21,13,var(12)+2)


[State -2];d’¼ŽžŠÔ
type=null;
trigger1=playerID(root,var(57)),stateno=var(13)
trigger1=var(23):=-var(14)+playerID(root,var(57)),time
trigger2=playerID(root,var(57)),stateno=var(15)
trigger2=var(23):=-var(16)+playerID(root,var(57)),time
trigger3=playerID(root,var(57)),stateno=var(17)
trigger3=var(23):=-var(18)+playerID(root,var(57)),time
trigger4=playerID(root,var(57)),stateno=var(19)
trigger4=var(23):=-var(20)+playerID(root,var(57)),time
trigger5=playerID(root,var(57)),stateno=var(21)
trigger5=var(23):=-var(22)+playerID(root,var(57)),time
trigger6=var(23):=playerID(root,var(57)),Animtime


[State 30020]
type=varset
trigger1=root,name="justice"
trigger1=root,stateno=200||root,stateno=205||root,stateno=400||root,stateno=1100
trigger1=root,time=2
var(24)=1


[State 30020]
type=varset
trigger1=root,name="justice"
trigger1=!root,numhelper(1350)
var(24)=0


[State -2]
type=Nothitby
trigger1=1
value=SCA


[State 30000]
type=ScreenBound
trigger1=1
value=0
movecamera=0,0



[State -2]
type=assertspecial
trigger1=1
flag=noshadow
flag2=invisible
ignorehitpause=1


[State 30000]
type=Changestate
trigger1=1
value=30012


;”ò‚Ñ“¹‹ï‘Îôƒwƒ‹ƒp[30020isuparpause,pause–³Ž‹j
;var(0):”ò‚Ñ“¹‹ï‘Îô•Ï”‚P@‘ŠŽèUŒ‚”»’f•ƒJƒEƒ“ƒgƒ_ƒEƒ“—p
;var(1):”ò‚Ñ“¹‹ï‘Îô•Ï”‚Q@”½‰ž‚Ü‚Å‚ÌƒJƒEƒ“ƒgƒAƒbƒv—p
;var(2):”ò‚Ñ“¹‹ï‚ÌŒã‚ë‘¤‚ðƒK[ƒh‚·‚é‚½‚ß‚Ì•Ï”
;var(3)~var(53):ƒwƒ‹ƒp[ƒŠƒ_ƒCƒŒƒNƒg—p
;var(54):Å‘åƒ‹[ƒv‰ñ”Ý’è
;var(55):30020,30029ƒ‹[ƒvƒJƒEƒ“ƒg—p
;var(56):30022ƒ‹[ƒvƒJƒEƒ“ƒg—p
;var(57):ƒŠƒ_ƒCƒŒƒNƒg•Ï”‚Ì‚¤‚¿AŒ»Ý‚ÌÅ‚‚Ì’l
;var(58):Œ‹‰Ê‚©‚çó‹µ”»’f
;var(59):‘ÎôƒeƒXƒg—p

;fvar(0)~fvar(x):‚˜‘¬“x‚È‚ÇBŠm—¦•Ï“®‚ÉŽg‚¤

[Statedef 30020]
ctrl=0

[State -2];ƒ‹[ƒv‰ñ”Ý’è
type=varset
trigger1=!var(54)
var(54)=40

[State -2]
type=ChangeState
triggerall=!numhelper(30021)
trigger1=var(56)!=-1||prevstateno=30029
trigger1=!playerIDexist(var(3+var(55)))
value=30022

[State -2]
type=assertspecial
trigger1=1
flag=noshadow
flag2=invisible
ignorehitpause=1

[State -2]
type=Nothitby
trigger1=1
value=SCA

[State -2]
type=posset
trigger1=1
x=(root,pos x+playerID(root,var(57)),pos x)/2.0

[State -2]
type=turn
trigger1=facing!=root,facing

[State 30020]
type=varset
trigger1=var(57)<var(3+var(55))
var(57)=var(3+var(55))

[State 30020]
type=Changestate
trigger1=!numhelper(30021)
trigger1=var(56)!=-1
trigger1=var(55)<var(54)
trigger1=var(55):=var(55)+1||1
value=30020


[State -2];ƒJƒEƒ“ƒ^‰Šú‰»
type=VarSet
trigger1=1
var(55)=0

[State -2]
type=VarAdd
trigger1=var(0)>0
var(0)=-1

[State -2]
type=VarSet
trigger1=!playerID(root,var(57)),ctrl&&playerID(root,var(57)),stateno>=200&&playerID(root,var(57)),movetype!=H
trigger2=inguarddist
trigger3=root,inguarddist
var(0)=15

[State -2]
type=VarAdd
trigger1=var(0)
var(1)=1

[State -2]
type=Varset
trigger1=!var(0)
var(1)=0


[State -2]
type=Varadd
trigger1=var(2)>0
var(2)=-1

[State -2]
type=posset
trigger1=1
x=root,pos x-facing*80

[State -2]
type=varset
trigger1=inguarddist
var(2)=5


[State 30020 ‘ÎôƒeƒXƒg]
type=varset
trigger1=1
var(59)=0

[State -2]
type=ChangeState
trigger1=1
value=30029


[Statedef 30021]
anim=9999
ctrl=0

[State 30021]
type=destroyself
trigger1=1


[Statedef 30022]
ctrl=0


[State -2]
type=varset
trigger1=prevstateno!=30022
var(3+var(55))=var(57)+1

[State -2]
type=varadd
var(56)=1
trigger1=var(56)!=-1

[State -2]
type=Varset
trigger1=prevstateno!=30022
var(56)=0

[State -2]
type=varadd
trigger1=!playerIDExist(var(3+var(55)))
trigger2=playerID(var(3+var(55))),movetype!=A||!(playerID(var(3+var(55))),hitdefattr=SCA,AA,AP,AT)
trigger2=playerID(var(3+var(55))),time>200-var(55)*10
trigger3=abs(playerID(var(3+var(55))),Screenpos x)>500
trigger4=abs(playerID(var(3+var(55))),pos y)>500
trigger5=teamside=playerID(var(3+var(55))),teamside
var(3+var(55))=1

[state -2];idŠm”F—pB‚P‚O‰ñŒJ‚è•Ô‚µ‚Ä“–‚½‚è‚ª‚±‚È‚©‚Á‚½‚çA’†Ž~‚µ‚ÄŽŸ‚É”õ‚¦‚é
type=Helper
trigger1=var(56)>10
trigger1=var(56):=-1
trigger1=!numhelper(30021)
helpertype=normal
name="id_check"
ID=30021
pos=0, 0
postype=right
facing=1
stateno=30021
ownpal=1
supermovetime=99999
pausemovetime=99999

[State -2]
type=varset
trigger1=var(56)=-1
trigger1=numhelper(30021)
var(3+var(55))=helper(30021),id

[State -2]
type=ChangeState
value=30022
triggerall=var(56)!=-1
trigger1=!playerIDExist(var(3+var(55)))
trigger2=playerID(var(3+var(55))),movetype!=A||!(playerID(var(3+var(55))),hitdefattr=SCA,AA,AP,AT)
trigger2=playerID(var(3+var(55))),time>200-var(55)*10
trigger3=abs(playerID(var(3+var(55))),Screenpos x)>500
trigger4=abs(playerID(var(3+var(55))),pos y)>500
trigger5=teamside=playerID(var(3+var(55))),teamside


[State -2]
type=ChangeState
value=30020
trigger1=1



;---------------------------------------------------------------------

[Statedef 10000]
anim=9999
ctrl=0

[State 10000, ŠÔˆá‚¢‚Å–{‘Ì‚ª—ˆ‚½‚ç—§‚¿‚ÖˆÚs]
type=selfstate
trigger1=!ishelper
value=0

[State 10000]
type=turn
trigger1=root,facing!=facing

[State 10000, ƒvƒŒƒCƒ„[”»’è]
type=varset
trigger1=command="up" && root,command="up"
trigger2=command="down" && root,command="down"
trigger3=command="back" && root,command="back"
trigger4=command="fwd" && root,command="fwd"
trigger5=command="a" && root,command="a"
trigger6=command="b" && root,command="b"
trigger7=command="c" && root,command="c"
trigger8=command="x" && root,command="x"
trigger9=command="y" && root,command="y"
trigger10=command="z" && root,command="z"
trigger11=command="start" && root,command="start"
var(59)=-1

[State 10000, —§‚Á‚½‚çÁŽ¸]
type=DestroySelf
triggerAll=isHelper
trigger1=root,var(59)&&var(59)=-1


[State 10000, Ì×¸ÞON]
type=varset
triggerall=var(59) !=-1
trigger1=command !="up" && root,command="up"&&(roundstate=2&&root,ctrl)
trigger2=command !="down" && root,command="down"&&(roundstate=2&&root,ctrl)
trigger3=command !="back" && root,command="back"&&(roundstate=2&&root,ctrl)
trigger4=command !="fwd" && root,command="fwd"&&(roundstate=2&&root,ctrl)
trigger5=command !="a" && root,command="a"
trigger6=command !="b" && root,command="b"
trigger7=command !="c" && root,command="c"
trigger8=command !="x" && root,command="x"
trigger9=command !="y" && root,command="y"
trigger10=command !="z" && root,command="z"
trigger11=command !="start" && root,command="start"
var(59)=1


;P2 State
[Statedef 4010]
type = S
movetype = H
physics = S
anim = 5002
ctrl = 0
facep2 = 1

[State 4010,1]
type = posset
trigger1 = 1
y = 0

[State 4010,2]
type = changeanim
trigger1 = time = 5
value = 5007

[State 4010,End!]
type = selfstate
trigger1 = time = 30
value = 0
ctrl = 1

;P2 State
[Statedef 4011]
type = S
movetype = H
physics = S
anim = 5011
ctrl = 0
facep2 = 1

[State 4010,1]
type = posset
trigger1 = 1
y = -5

[State 4010,2]
type = changeanim
trigger1 = time = 5
value = 5017

[State 4010,End!]
type = selfstate
trigger1 = time = 30
value = 0
ctrl = 1

[Statedef 5679]
type    = A
movetype= H
physics = N
velset = 0,0
facep2 = 1



[state 2]
type = posadd
trigger1 = time = 0
y = 8

[State 2120]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[state 2]
type = pause
trigger1 = time = [10,30]
time = 1

[State 52, 1]
type = VelSet
trigger1 = time = 0
x = -1
y = -8

[State 52, 2]
type = Veladd
trigger1 = time >= 2
y = .2

[State 810,]
type = EnvShake
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
ampl = 10
freq = 120
time = 10

[State 1830]
type = ChangeAnim2
Trigger1 = Time = 0
value = 5679

[State 1830]
type = SelfState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 5100

[Statedef 5680]
type    = A
movetype= H
physics = N
velset = 0,0
facep2 = 1



[state 2]
type = posadd
trigger1 = time = 0
y = 10

[State 2120]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[state 2]
type = pause
trigger1 = time = [10,30]
time = 1

[State 52, 1]
type = VelSet
trigger1 = time = 0
x = -2.4
y = -18

[State 52, 2]
type = Veladd
trigger1 = time >= 2
y = .5

[State 810,]
type = EnvShake
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
ampl = 10
freq = 120
time = 10

[State 1830]
type = ChangeAnim2
Trigger1 = Time = 0
value = 5679

[State 1830]
type = SelfState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 5100

;--- --Level 3 Duplex Sonia -----
[Statedef 8580]
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
anim = 8580
ID = 20
sprpriority = -16
postype = back
removetime = 40
supermovetime = -1

[State 8520, Portrait]
type = explod
trigger1 = !time
anim = 8580
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

;--- --Level 3 Duplex Billy -----
[Statedef 8581]
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
anim = 8581
ID = 20
sprpriority = -16
postype = back
removetime = 40
supermovetime = -1

[State 8520, Portrait]
type = explod
trigger1 = !time
anim = 8581
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