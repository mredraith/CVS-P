;***************************************************************************;
;***************************************************************************;
; CVS Maxima POTS/Infinite by Falcon Rapper
;***************************************************************************;
;***************************************************************************;
; "Porque o guerreiro de fé nunca gela" by: Racionais mc's
;***************************************************************************;
;***************************************************************************;

;
;SUPER MOVES=
;

;---------------------------------------------------------------------------
;Bunker Buster
[Statedef 3000]
type    = S
movetype= A
physics = N
velset = 0,0
poweradd= -1000
anim = 3000
ctrl = 0
sprpriority = 1

[State 3000, No Corner Push]
type=VarSet
trigger1=time=3
fvar(5)=0
[State 3000, Unguardable]
type=VarSet
trigger1=time=3 && NumEnemy
trigger1=(EnemyNear, StateNo !=[120,155])
var(17)=47
[State 3000, Super Cancel Flag]
type=VarSet
trigger1=!Time
var(21)=(PrevStateNo=[1000,2999]) && var(6)
[State 3000, Hyper Cancel Flag]
type=VarSet
trigger1=!Time
var(22)=((prevstateno=[3000,4999]) && var(7)) || var(20)
[State 3000, Super Cancel Flash]
type=PalFX
trigger1=var(21) || var(22)
trigger1=!(Time % 2) && Time <=12
time=1
add=255,255,255
ignoreHitPause=1
[State 3000, Super Cancel Juggle Reset]
type=VarSet
trigger1=!Time
trigger1=var(21) || var(22)
var(15)=0
ignoreHitPause=1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = -20,-10
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

;---------------------[Œø‰Ê‰¹]
[State 00];
type = PlaySnd
trigger1 = animelem = 1
value = 3000,0

[State 00];
type = PlaySnd
trigger1 = animtime = 0
value = 3000,1

[State 00];
type = PlaySnd
trigger1 = animtime = 0
value = 3000,2

;---------------------[ƒGƒtƒFƒNƒg]
[State removeexplod];
type = removeexplod
trigger1 = time = 0
ID = 3000

[State explod];”š”j0
type = Explod
trigger1 = animtime = 0
anim = 3055
id = 3000
sprpriority = -10
postype = p1
pos = 0,0
bindtime = 1
ignorehitpause = 1
supermovetime = 32
pausemovetime = 32
under = 0
ownpal = 1
scale = 0.15,0.45

[State explod];”š”j1
type = Explod
trigger1 = animtime = 0
anim = 3056
id = 3000
sprpriority = 20
postype = p1
pos = 0,0
bindtime = 1
ignorehitpause = 0
supermovetime = 32
pausemovetime = 32
under = 0
ownpal = 1
scale = 0.15,0.45

;---------------------[‰‰o]
[State envshake]
type = EnvShake
trigger1 = animtime = 0
time = 18
ampl = -8
freq = 75
phase = 75


;---------------------[‘ÅŒ‚–hŒä]
[state a];‘ÅŒ‚–hŒä
type = reversaldef
trigger1 = 1
reversal.attr = SCA,NA,SA,HA,NP,SP,HP
pausetime = 5,12
sparkno = s-1
sparkxy = 0,0
hitsound = s400,1
numhits = 0

;---------------------[ƒXƒe[ƒgˆÚs]
[State 200, 7]
type = ChangeState
trigger1 = animtime = 0
value = 3010

;---------------------------------------------------------------------------
;Bunker-Takeoff
[Statedef 3010]
type    = A
movetype= A
physics = N
velset = 0,0
poweradd= 0
anim = 3010
ctrl = 0
sprpriority = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
;---------------------[‰‰o]
[State 1];ƒJƒƒ‰ŒÅ’è
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,0


;---------------------[ƒwƒ‹ƒp[]
[state a];UŒ‚”»’è
type = Helper
trigger1 = time = 0
id = 3000
name = "yamibarai"
sprpriority = 5
pos = 0,0
postype = p1
stateno = 3007
helpertype = normal
pausemovetime = 0
keyctrl = 0
ownpal = 1


;---------------------[ˆÚ“®]
[state a]
type = velset
trigger1 = time = 1
y = -36

;---------------------[ƒXƒe[ƒgˆÚs]
[State 200, 7]
type = ChangeState
trigger1 = time = 32
value = 3011


;---------------------------------------------------------------------------
;Bunker-Land
[Statedef 3011]
type    = A
movetype= A
physics = N
velset = 0,32
poweradd= 0
anim = 3010
ctrl = 0
sprpriority = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
;---------------------[ƒGƒtƒFƒNƒg]
[State explod]
type = Explod
trigger1 = time = 0
anim = 3005
id = 3000
sprpriority = 20
postype = p1
pos = 0,0
bindtime = -1
removetime = -1
ignorehitpause = 1
persistent = 0
under = 0
ownpal = 1
scale = 0.5,0.5


[state a]
type = posset
trigger1 = time = 0
x = enemy,pos x
y = -520

;---------------------[‰‰o]
[State 1];ƒJƒƒ‰ŒÅ’è
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,0
;---------------------[UŒ‚]
[State 300, 2]
type = HitDef
triggerall = var(7) = 0
triggerall = enemynear,stateno != [5040,5049]
trigger1 = time = 0
attr = A, HA
animtype  = hard
hitflag = MAFD
damage    = 180,18
priority = 7, Hit
getpower = 0,0
guardflag = M
pausetime = 4,4
guard.pausetime = 0,12
sparkno = s-1
sparkxy = -12,-90
hitsound   = S2,6
guardsound = s3,1
guard.sparkno = s-1
ground.type = high
ground.slidetime = 24
ground.hittime  = 24
guard.hittime = (24) - 6
ground.velocity = 0,30
air.velocity = 0,30
air.hittime  = 120
guard.velocity = -9
yaccel = 0.45
fall = 1
fall.recover = 0
ID = 3000
nochainID = 9999
p2facing = 1
envshake.time = 12
envshake.ampl = -6
envshake.freq = 92
envshake.phase = 92
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

;---------------------[ƒXƒe[ƒgˆÚs]
[State 200, 7]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 3020


;---------------------------------------------------------------------------
;Bunker-Land
[Statedef 3020]
type    = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 3020
poweradd = 0
sprpriority = 1

;---------------------[Œø‰Ê‰¹]
[State 00];
type = PlaySnd
trigger1 = time = 0
value = 3000,3

;---------------------[‰‰o]
[State envshake]
type = EnvShake
trigger1 = time = 0
time = 26
ampl = -5
freq = 75
phase = 75

;---------------------[ƒGƒtƒFƒNƒg]
[state a]
type = removeexplod
trigger1 = time = 0
id = 3000

[State explod]
type = Explod
trigger1 = time = 0
anim = 3025
id = 7000
sprpriority = -10
postype = p1
pos = 0,0
bindtime = 1
ignorehitpause = 1
persistent = 0
under = 0
ownpal = 1
scale = 0.2,0.2

[State explod]
type = Explod
trigger1 = time = 0
anim = 3026
id = 7000
sprpriority = 20
postype = p1
pos = 0,0
bindtime = 1
ignorehitpause = 1
persistent = 0
under = 0
ownpal = 1
scale = 0.2,0.2


[State explod];”š”j0
type = Explod
trigger1 = time = 0
anim = 3055
id = 3000
sprpriority = -10
postype = p1
pos = 0,0
bindtime = 1
ignorehitpause = 1
supermovetime = 32
pausemovetime = 32
under = 0
ownpal = 1
scale = 0.15,0.25

[State explod];”š”j1
type = Explod
trigger1 = time = 0
anim = 3056
id = 3000
sprpriority = 20
postype = p1
pos = 0,0
bindtime = 1
ignorehitpause = 0
supermovetime = 32
pausemovetime = 32
under = 0
ownpal = 1
scale = 0.15,0.25

;---------------------[‘ÅŒ‚–hŒä]
[state a];‘ÅŒ‚–hŒä
type = reversaldef
trigger1 = 1
reversal.attr = SCA,NA,SA,HA,NP,SP,HP
pausetime = 5,12
sparkno = s-1
sparkxy = 0,0
hitsound = s400,1
numhits = 0

;---------------------[ˆÚ“®]
[state a]
type = posset
trigger1 = time = 0
y = 0

;---------------------[ƒXƒe[ƒgˆÚs]
[State 200, 7]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Bunker Buster MAX
[Statedef 3050]
type    = S
movetype= A
physics = N
velset = 0,0
juggle = 0
poweradd= -1000
anim = 3000
ctrl = 0
sprpriority = 1

[State 3000, No Corner Push]
type=VarSet
trigger1=time=3
fvar(5)=0
[State 3000, Unguardable]
type=VarSet
trigger1=time=3 && NumEnemy
trigger1=(EnemyNear, StateNo !=[120,155])
var(17)=47
[State 3000, Super Cancel Flag]
type=VarSet
trigger1=!Time
var(21)=(PrevStateNo=[1000,2999]) && var(6)
[State 3000, Hyper Cancel Flag]
type=VarSet
trigger1=!Time
var(22)=((prevstateno=[3000,4999]) && var(7)) || var(20)
[State 3000, Super Cancel Flash]
type=PalFX
trigger1=var(21) || var(22)
trigger1=!(Time % 2) && Time <=12
time=1
add=255,255,255
ignoreHitPause=1
[State 3000, Super Cancel Juggle Reset]
type=VarSet
trigger1=!Time
trigger1=var(21) || var(22)
var(15)=0
ignoreHitPause=1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = -20,-10
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1
[State 3300, SuperPause FX]
type=Helper
trigger1=time=3
helperType=Normal
stateNo=8525
ID=8500
name="Superpause FX"
posType = p1
pos = 10,-66
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,1
darken = 0

;---------------------[Œø‰Ê‰¹]
[State 00];
type = PlaySnd
trigger1 = animelem = 1
value = 3000,0

[State 00];
type = PlaySnd
trigger1 = animtime = 0
value = 3000,1

[State 00];
type = PlaySnd
trigger1 = animtime = 0
value = 3000,2

;---------------------[ƒGƒtƒFƒNƒg]
[State removeexplod];
type = removeexplod
trigger1 = time = 0
ID = 3000

[State explod];”š”j0
type = Explod
trigger1 = animtime = 0
anim = 3055
id = 3000
sprpriority = -10
postype = p1
pos = 0,0
bindtime = 1
ignorehitpause = 1
supermovetime = 32
pausemovetime = 32
under = 0
ownpal = 1
scale = 0.3,0.65

[State explod];”š”j1
type = Explod
trigger1 = animtime = 0
anim = 3056
id = 3000
sprpriority = 20
postype = p1
pos = 0,0
bindtime = 1
ignorehitpause = 0
supermovetime = 32
pausemovetime = 32
under = 0
ownpal = 1
scale = 0.3,0.65

;---------------------[‰‰o]
[State envshake]
type = EnvShake
trigger1 = animtime = 0
time = 18
ampl = -8
freq = 75
phase = 75


;---------------------[‘ÅŒ‚–hŒä]
[state a];‘ÅŒ‚–hŒä
type = reversaldef
trigger1 = 1
reversal.attr = SCA,NA,SA,HA,NP,SP,HP
pausetime = 5,12
sparkno = s-1
sparkxy = 0,0
hitsound = s400,1
numhits = 0

;---------------------[ƒXƒe[ƒgˆÚs]
[State 200, 7]
type = ChangeState
trigger1 = animtime = 0
value = 3060

;---------------------------------------------------------------------------
;Bunker-Takeoff
[Statedef 3060]
type    = A
movetype= A
physics = N
velset = 0,0
juggle = 0
poweradd= 0
anim = 3010
ctrl = 0
sprpriority = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
;---------------------[‰‰o]
[State 1];ƒJƒƒ‰ŒÅ’è
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,0


;---------------------[ƒwƒ‹ƒp[]
[state a];UŒ‚”»’è
type = Helper
trigger1 = time = 0
id = 3000
name = "yamibarai"
sprpriority = 5
pos = 0,0
postype = p1
stateno = 3009
helpertype = normal
pausemovetime = 0
keyctrl = 0
ownpal = 1


;---------------------[ˆÚ“®]
[state a]
type = velset
trigger1 = time = 1
y = -36

;---------------------[ƒXƒe[ƒgˆÚs]
[State 200, 7]
type = ChangeState
trigger1 = time = 32
value = 3061


;---------------------------------------------------------------------------
;Bunker-Land
[Statedef 3061]
type    = A
movetype= A
physics = N
velset = 0,32
juggle = 0
poweradd= 0
anim = 3010
ctrl = 0
sprpriority = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
;---------------------[ƒGƒtƒFƒNƒg]
[State explod]
type = Explod
trigger1 = time = 0
anim = 3005
id = 3000
sprpriority = 20
postype = p1
pos = 0,0
bindtime = -1
removetime = -1
ignorehitpause = 1
persistent = 0
under = 0
ownpal = 1
scale = 0.5,0.5


[state a]
type = posset
trigger1 = time = 0
x = enemy,pos x
y = -520

;---------------------[‰‰o]
[State 1];ƒJƒƒ‰ŒÅ’è
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,0

;---------------------[UŒ‚]
[State 300, 2]
type = HitDef
triggerall = var(7) = 0
triggerall = enemynear,stateno != [5040,5049]
trigger1 = time = 0
attr = A, HA
animtype  = hard
hitflag = MAFD
damage    = 180,18
priority = 7, Hit
getpower = 0,0
guardflag = M
pausetime = 4,4
guard.pausetime = 0,12
sparkno = s-1
sparkxy = -12,-90
hitsound   = S2,6
guardsound = s3,1
guard.sparkno = s-1
ground.type = high
ground.slidetime = 24
ground.hittime  = 24
guard.hittime = (24) - 6
ground.velocity = 0,30
air.velocity = 0,30
air.hittime  = 120
guard.velocity = -9
yaccel = 0.45
fall = 1
fall.recover = 0
ID = 3000
nochainID = 9999
p2facing = 1
envshake.time = 12
envshake.ampl = -6
envshake.freq = 92
envshake.phase = 92
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0



;---------------------[ƒXƒe[ƒgˆÚs]
[State 200, 7]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 3070


;---------------------------------------------------------------------------
;Bunker-Land
[Statedef 3070]
type    = S
movetype= A
physics = N
juggle  = 0
velset = 0,0
ctrl = 0
anim = 3020
poweradd = 0
sprpriority = 1

;---------------------[Œø‰Ê‰¹]
[State 00];
type = PlaySnd
trigger1 = time = 0
value = 3000,3

;---------------------[‰‰o]
[State envshake]
type = EnvShake
trigger1 = time = 0
time = 26
ampl = -5
freq = 75
phase = 75

;---------------------[ƒGƒtƒFƒNƒg]
[state a]
type = removeexplod
trigger1 = time = 0
id = 3000

[State explod]
type = Explod
trigger1 = time = 0
anim = 3025
id = 7000
sprpriority = -10
postype = p1
pos = 0,0
bindtime = 1
ignorehitpause = 1
persistent = 0
under = 0
ownpal = 1
scale = 0.5,0.5

[State explod]
type = Explod
trigger1 = time = 0
anim = 3026
id = 7000
sprpriority = 20
postype = p1
pos = 0,0
bindtime = 1
ignorehitpause = 1
persistent = 0
under = 0
ownpal = 1
scale = 0.5,0.5


[State explod];”š”j0
type = Explod
trigger1 = time = 0
anim = 3055
id = 3000
sprpriority = -10
postype = p1
pos = 0,0
bindtime = 1
ignorehitpause = 1
supermovetime = 32
pausemovetime = 32
under = 0
ownpal = 1
scale = 0.25,0.35

[State explod];”š”j1
type = Explod
trigger1 = time = 0
anim = 3056
id = 3000
sprpriority = 20
postype = p1
pos = 0,0
bindtime = 1
ignorehitpause = 0
supermovetime = 32
pausemovetime = 32
under = 0
ownpal = 1
scale = 0.25,0.35



;---------------------[‘ÅŒ‚–hŒä]
[state a];‘ÅŒ‚–hŒä
type = reversaldef
trigger1 = 1
reversal.attr = SCA,NA,SA,HA,NP,SP,HP
pausetime = 5,12
sparkno = s-1
sparkxy = 0,0
hitsound = s400,1
numhits = 0

;---------------------[ƒwƒ‹ƒp[]
[state a];UŒ‚”»’è
type = Helper
trigger1 = time = 0
id = 3000
name = "yamibarai"
sprpriority = 5
pos = 0,0
postype = p1
stateno = 3008
helpertype = normal
pausemovetime = 0
keyctrl = 0
ownpal = 1


;---------------------[ˆÚ“®]
[state a]
type = posset
trigger1 = time = 0
y = 0

;---------------------[ƒXƒe[ƒgˆÚs]
[State 200, 7]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------------------------------
;Maxima Revenger
[Statedef 3100]
type    = S
movetype= A
physics = N
velset = 0, 0
anim = 3100
poweradd = -1000
ctrl = 0

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 10,-101
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, No Corner Push]
type=VarSet
trigger1=time=3
fvar(5)=0
[State 3000, Unguardable]
type=VarSet
trigger1=time=3 && NumEnemy
trigger1=(EnemyNear, StateNo !=[120,155])
var(17)=47
[State 3000, Super Cancel Flag]
type=VarSet
trigger1=!Time
var(21)=(PrevStateNo=[1000,2999]) && var(6)
[State 3000, Hyper Cancel Flag]
type=VarSet
trigger1=!Time
var(22)=((prevstateno=[3000,4999]) && var(7)) || var(20)
[State 3000, Super Cancel Flash]
type=PalFX
trigger1=var(21) || var(22)
trigger1=!(Time % 2) && Time <=12
time=1
add=255,255,255
ignoreHitPause=1
[State 3000, Super Cancel Juggle Reset]
type=VarSet
trigger1=!Time
trigger1=var(21) || var(22)
var(15)=0
ignoreHitPause=1

[State 3100,Attack]
type = HitDef
trigger1 = Time < 2
trigger1 = P2StateNo != 150
trigger1 = P2StateNo != 152
trigger1 = P2StateNo != 154
attr = S, HT
hitflag = M
guardflag = None
numhits = 0
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 3111
p2stateno = 3120
p2getp1state = 1
hitsound = S2,800
id=3100

[State 3100,Attack]
type = HitDef
trigger1 = Time = 2
trigger1 = P2StateNo != 150
trigger1 = P2StateNo != 152
trigger1 = P2StateNo != 154
attr = S, HT
hitflag = M
guardflag = None
numhits = 0
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 3110
p2stateno = 3120
p2getp1state = 1
hitsound = S2,800
id=3100

[State 3100,Freeze]
type = PosFreeze
trigger1 = Time >= 0

[State 3100,Muteki]
type = NotHitBy
trigger1 = AnimElem = 2, < 0
value = SCA

[State 3100,Effect]
type = Explod
trigger1 = AnimElem = 2
anim = 2000
ID = 2000
pos = 18,-65
postype = P1
sprpriority = 4
supermove = 1
ownpal = 1
removetime = 28
bindtime = -1

[State 3100,Effect]
type = Explod
trigger1 = AnimElem = 2
anim = 2100
ID = 2100
pos = 18,-65
postype = P1
sprpriority = -2
supermove = 1
ownpal = 1
removetime = 17
bindtime = -1

[State 3100,End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------- CPU
[State 3100,cpu]
type = ChangeState
triggerall = Var(30) = 1 && Time = 0
trigger1 = P2BodyDist X >= 50
value = 3000

;P1 States 1
[Statedef 3110]
type = S
movetype = A
physics = S
anim = 3110

[State 3110,Position]
type = PosSet
triggerall = Time = 0
triggerall = FrontEdgeBodyDist < 50
trigger1 = Facing = 1
x = 100

[State 3110,Position]
type = PosSet
triggerall = Time = 0
triggerall = FrontEdgeBodyDist < 50
trigger1 = Facing = -1
x = -100

[State 3110,Muteki]
type = NotHitBy
trigger1 = Time >= 0
value = SCA

[State 3110,SuperPause]
type = SuperPause
trigger1 = AnimElem = 1
time = 30
darken = 0
anim = -1

[State 3110,Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3100, 0

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 45,-120
time = 6

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 50,-120
time = 7

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 3
pos = 28,-90
time = 4

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
pos = 34,-61
time = 5

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 5
pos = 30,-10
time = 23

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 6
pos = 28,-11
time = 7

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 7
pos = 28,-55
time = 6

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 8
pos = 28,-69
time = 6

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 9
pos = 37,-70
time = 6

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 10
pos = 43,-108
time = 4

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 11
pos = 22,-122
time = 14

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 13
pos = 20,-119
time = 8

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 14
pos = 11,-110
time = 3

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 15
pos = 29,-91
time = 5

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 16
pos = 52,-51
time = 21

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 18
pos = 22,-118
time = 12

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 19
pos = 22,-122
time = 5

[State 3110,Position1]
type = PosAdd
triggerall = FrontEdgeBodyDist > 65
trigger1 = AnimElem = 9
x = 48

[State 3110,Position2]
type = PosAdd
triggerall = FrontEdgeBodyDist > 60
trigger1 = AnimElem = 18
x = 26

[State 3110,Position3]
type = PosAdd
triggerall = FrontEdgeBodyDist > 60
trigger1 = AnimElem = 20
x = 23

[State 3110,Position4]
type = PosAdd
triggerall = FrontEdgeBodyDist > 60
trigger1 = AnimElem = 21
x = 20

[State 3110,Position5]
type = PosAdd
trigger1 = AnimElem = 34
x = 9

[State 3310,HitAdd]
type = HitAdd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 16
value = 1

[State 3110,TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 16
value = -80
kill = 0

[State 3110,Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = S2+10*var(44), 2

[State 3110,Sound]
type = PlaySnd
trigger1 = AnimElem = 16
value = S2+10*var(44), 2

[State 3110,Shake]
type = EnvShake
trigger1 = AnimElem = 5
trigger2 = AnimElem = 16
time = 30
ignorehitpause = 1

[State 3110,Shake]
type = EnvShake
trigger1 = MoveHit = 1
persistent = 0
time = 50
ignorehitpause = 1

[State 1006, HitSpark]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8005
ID = 8000
name = "Spark"
posType = P1
pos = 45,-6
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, HitSpark]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8110
ID = 8110
name = "Spark"
posType = P1
pos = 45,0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, HitSpark]
type = Helper
trigger1 = AnimElem = 16
helperType = Normal
stateNo = 8005
ID = 8000
name = "Spark"
posType = P1
pos = 53,-44
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3110,Sound]
type = PlaySnd
trigger1 = AnimElem = 20
value = 3100, 2

[State 3110,Attack]
type = HitDef
trigger1 = AnimElem = 26
attr = S, HA
hitflag = MAF
guardflag = M
animtype = Hard
damage = 180,25
pausetime = 40,40
guard.pausetime = 18,20
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1
sparkxy = -5 + 0 * (var(35) := 160), var(36):=-105
hitsound = S2,6
guardsound = S0, 0
ground.type = High
ground.slidetime = 18
ground.hittime = 18
guard.hittime = (18) - 6
guard.velocity = -7
p1facing = 1
p2facing = 1
p2stateno = 3130
fall = 1
fall.recover = 0

[State 3110,Sound]
type = PlaySnd
trigger1 = AnimElem = 26
value = 3100, 1

[State 3110,End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;P1 States 2
[Statedef 3111]
type = S
movetype = A
physics = N
anim = 3110
velset = 0,0

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 0
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 42,-120
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1
[State 3110,SuperPause]
type = SuperPause
trigger1 = time = 0
time = 38
sound = s8500,0
darken = 0
anim = -1

[State 3000, No Corner Push]
type=VarSet
trigger1=time=3
fvar(5)=0
[State 3000, Unguardable]
type=VarSet
trigger1=time=3 && NumEnemy
trigger1=(EnemyNear, StateNo !=[120,155])
var(17)=47
[State 3000, Super Cancel Flag]
type=VarSet
trigger1=!Time
var(21)=(PrevStateNo=[1000,2999]) && var(6)
[State 3000, Hyper Cancel Flag]
type=VarSet
trigger1=!Time
var(22)=((prevstateno=[3000,4999]) && var(7)) || var(20)
[State 3000, Super Cancel Flash]
type=PalFX
trigger1=var(21) || var(22)
trigger1=!(Time % 2) && Time <=12
time=1
add=255,255,255
ignoreHitPause=1
[State 3000, Super Cancel Juggle Reset]
type=VarSet
trigger1=!Time
trigger1=var(21) || var(22)
var(15)=0
ignoreHitPause=1

[State 3110,Position]
type = PosSet
triggerall = Time = 0
triggerall = FrontEdgeBodyDist < 50
trigger1 = Facing = 1
x = 100

[State 3110,Position]
type = PosSet
triggerall = Time = 0
triggerall = FrontEdgeBodyDist < 50
trigger1 = Facing = -1
x = -100

[State 3110,Muteki]
type = NotHitBy
trigger1 = Time >= 0
value = SCA

[State 3110,Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3100, 0

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 45,-120
time = 6

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 50,-120
time = 7

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 3
pos = 28,-90
time = 4

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
pos = 34,-61
time = 5

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 5
pos = 30,-10
time = 23

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 6
pos = 28,-11
time = 7

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 7
pos = 28,-55
time = 6

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 8
pos = 28,-69
time = 6

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 9
pos = 37,-70
time = 6

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 10
pos = 43,-108
time = 4

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 11
pos = 22,-122
time = 14

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 13
pos = 20,-119
time = 8

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 14
pos = 11,-110
time = 3

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 15
pos = 29,-91
time = 5

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 16
pos = 52,-51
time = 21

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 18
pos = 22,-118
time = 12

[State 3110,TargetBind]
type = TargetBind
trigger1 = AnimElem = 19
pos = 22,-122
time = 5

[State 3110,Position1]
type = PosAdd
triggerall = FrontEdgeBodyDist > 65
trigger1 = AnimElem = 9
x = 48

[State 3110,Position2]
type = PosAdd
triggerall = FrontEdgeBodyDist > 60
trigger1 = AnimElem = 18
x = 26

[State 3110,Position3]
type = PosAdd
triggerall = FrontEdgeBodyDist > 60
trigger1 = AnimElem = 20
x = 23

[State 3110,Position4]
type = PosAdd
triggerall = FrontEdgeBodyDist > 60
trigger1 = AnimElem = 21
x = 20

[State 3110,Position5]
type = PosAdd
trigger1 = AnimElem = 34
x = 9

[State 3310,HitAdd]
type = HitAdd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 16
value = 1

[State 3110,TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 16
value = -80
kill = 0

[State 3110,Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = S2+10*var(44), 2

[State 3110,Sound]
type = PlaySnd
trigger1 = AnimElem = 16
value = S2+10*var(44), 2

[State 3110,Shake]
type = EnvShake
trigger1 = AnimElem = 5
trigger2 = AnimElem = 16
time = 30
ignorehitpause = 1

[State 3110,Shake]
type = EnvShake
trigger1 = MoveHit = 1
persistent = 0
time = 50
ignorehitpause = 1

[State 1006, HitSpark]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8005
ID = 8000
name = "Spark"
posType = P1
pos = 45,-6
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, HitSpark]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8110
ID = 8110
name = "Spark"
posType = P1
pos = 45,0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, HitSpark]
type = Helper
trigger1 = AnimElem = 16
helperType = Normal
stateNo = 8005
ID = 8000
name = "Spark"
posType = P1
pos = 53,-44
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3110,Sound]
type = PlaySnd
trigger1 = AnimElem = 20
value = 3100, 2

[State 3110,Attack]
type = HitDef
trigger1 = AnimElem = 26
attr = S, HA
hitflag = MAF
guardflag = M
animtype = Hard
damage = 180,25
pausetime = 40,40
guard.pausetime = 18,20
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkno = -1
sparkxy = -5 + 0 * (var(35) := 160), var(36):=-105
hitsound = S2,6
guardsound = S0, 0
ground.type = High
ground.slidetime = 18
ground.hittime = 18
guard.hittime = (18) - 6
guard.velocity = -7
p1facing = 1
p2facing = 1
p2stateno = 3130
fall = 1
fall.recover = 0

[State 3110,Sound]
type = PlaySnd
trigger1 = AnimElem = 26
value = 3100, 1

[State 3110,End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;P2 States 1
[Statedef 3120]
type = A
movetype = H
physics = N
velset = 0, 0
ctrl = 0

[State 1];ƒJƒƒ‰ŒÅ’è
type = screenbound
trigger1 = 1
value = 1
movecamera = 1

[State 3120,Muteki]
type = NotHitBy
trigger1 = Vel Y > 0
trigger1 = P2Dist Y < -105
value = SCA

[State 3120,NoTurn]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoAutoTurn

[State 3120,Anim]
type = ChangeAnim2
trigger1 = Time = 0
value = 3120

[State 3120,Velocity]
type = VelSet
trigger1 = AnimElem = 8
x = -.3
y = -16.5

[State 3120,Accel]
type = VelAdd
trigger1 = Time > 143
y = .85

[State 3120,Anim]
type = ChangeAnim2
trigger1 = Vel Y > 0
persistent = 0
value = 3140

[State 3120,SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;P2 States 2
[Statedef 3130]
type = A
movetype = H
physics = N
velset = 0, 0
ctrl = 0

[State 1];ƒJƒƒ‰ŒÅ’è
type = screenbound
trigger1 = 1
value = 1
movecamera = 1

[State 3130,Muteki]
type = NotHitBy
trigger1 = Time >= 0
value = SCA

[State 3130,Anim]
type = ChangeAnim2
trigger1 = Time = 0
persistent = 0
value = 3130

[State 3130,Velocity]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 3130,Velocity]
type = VelSet
trigger1 = HitShakeOver = 1
persistent = 0
x = -1.5
y = -13.0

[State 3130,Accel]
type = VelAdd
trigger1 = Time > 40
y = .50

[State 3130,Anim]
type = ChangeAnim2
trigger1 = Vel Y > 0
persistent = 0
value = 3140

[State 3130,SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;---------------------------------------------------------------------
;--------------------------------------------------
;Maxima Revenger MAX
[Statedef 3150]
type    = S
movetype= A
physics = N
velset = 0, 0
anim = 3100
poweradd = -2000
ctrl = 0

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 10,-101
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1
[State 3300, SuperPause FX]
type=Helper
trigger1=time=3
helperType=Normal
stateNo=8525
ID=8500
name="Superpause FX"
posType = p1
pos = 10,-66
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,1
darken = 0

[State 3000, No Corner Push]
type=VarSet
trigger1=time=3
fvar(5)=0
[State 3000, Unguardable]
type=VarSet
trigger1=time=3 && NumEnemy
trigger1=(EnemyNear, StateNo !=[120,155])
var(17)=47
[State 3000, Super Cancel Flag]
type=VarSet
trigger1=!Time
var(21)=(PrevStateNo=[1000,2999]) && var(6)
[State 3000, Hyper Cancel Flag]
type=VarSet
trigger1=!Time
var(22)=((prevstateno=[3000,4999]) && var(7)) || var(20)
[State 3000, Super Cancel Flash]
type=PalFX
trigger1=var(21) || var(22)
trigger1=!(Time % 2) && Time <=12
time=1
add=255,255,255
ignoreHitPause=1
[State 3000, Super Cancel Juggle Reset]
type=VarSet
trigger1=!Time
trigger1=var(21) || var(22)
var(15)=0
ignoreHitPause=1

[State 3100,Attack]
type = HitDef
trigger1 = Time < 2
trigger1 = P2StateNo != 150
trigger1 = P2StateNo != 152
trigger1 = P2StateNo != 154
attr = S, HT
hitflag = M
guardflag = None
numhits = 0
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 3165
p2stateno = 3120
p2getp1state = 1
hitsound = S2,800
id = 3100

[State 3100,Attack]
type = HitDef
trigger1 = Time = 2
trigger1 = P2StateNo != 150
trigger1 = P2StateNo != 152
trigger1 = P2StateNo != 154
attr = S, HT
hitflag = M
guardflag = None
numhits = 0
sparkno = -1
p1facing = 1
p2facing = 1
p1stateno = 3160
p2stateno = 3120
p2getp1state = 1
hitsound = S2,800
id = 3100

[State 3100,Freeze]
type = PosFreeze
trigger1 = Time >= 0

[State 3100,Muteki]
type = NotHitBy
trigger1 = AnimElem = 2, < 0
value = SCA

[State 3100,Effect]
type = Explod
trigger1 = AnimElem = 2
anim = 2000
ID = 2000
pos = 18,-65
postype = P1
sprpriority = 4
supermove = 1
ownpal = 1
removetime = 28
bindtime = -1

[State 3100,Effect]
type = Explod
trigger1 = AnimElem = 2
anim = 2100
ID = 2100
pos = 18,-65
postype = P1
sprpriority = -2
supermove = 1
ownpal = 1
removetime = 17
bindtime = -1

[State 3100,End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------- CPU
[State 3100,cpu]
type = ChangeState
triggerall = Var(30) = 1 && Time = 0
trigger1 = P2BodyDist X >= 50
value = 3000

;P1 States 1
[Statedef 3160]
type = S
movetype = A
physics = S
anim = 3150

[State 3310,Position]
type = PosSet
triggerall = Time = 0
triggerall = FrontEdgeBodyDist < 50
trigger1 = Facing = 1
x = 100

[State 3310,Position]
type = PosSet
triggerall = Time = 0
triggerall = FrontEdgeBodyDist < 50
trigger1 = Facing = -1
x = -100

[State 3310,Muteki]
type = NotHitBy
trigger1 = Time >= 0
value = SCA

[State 3310,Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3100, 0

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 45,-120
time = 6

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 50,-120
time = 7

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 3
pos = 28,-90
time = 4

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
pos = 34,-61
time = 5

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 5
pos = 30,-10
time = 23

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 6
pos = 28,-11
time = 7

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 7
pos = 28,-55
time = 6

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 8
pos = 28,-69
time = 6

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 9
pos = 37,-70
time = 6

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 10
pos = 43,-108
time = 4

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 11
pos = 22,-122
time = 14

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 13
pos = 20,-119
time = 8

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 14
pos = 11,-110
time = 3

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 15
pos = 29,-91
time = 5

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 16
pos = 52,-51
time = 21

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 18
pos = 22,-118
time = 12

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 19
pos = 22,-122
time = 5

[State 3310,Position1]
type = PosAdd
triggerall = FrontEdgeBodyDist > 65
trigger1 = AnimElem = 9
x = 48

[State 3310,Position2]
type = PosAdd
triggerall = FrontEdgeBodyDist > 60
trigger1 = AnimElem = 18
x = 26

[State 3310,Position3]
type = PosAdd
triggerall = FrontEdgeBodyDist > 60
trigger1 = AnimElem = 20
x = 23

[State 3310,Position4]
type = PosAdd
triggerall = FrontEdgeBodyDist > 60
trigger1 = AnimElem = 21
trigger2 = AnimElem = 53
x = 20

[State 3310,TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 16
value = -120
kill = 0

[State 3310,HitAdd]
type = HitAdd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 16
value = 1

[State 3310,Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = S2+10*var(44), 2

[State 3310,Sound]
type = PlaySnd
trigger1 = AnimElem = 16
value = S2+10*var(44), 5

[State 3310,Shake]
type = EnvShake
trigger1 = AnimElem = 5
trigger2 = AnimElem = 16
time = 30
ignorehitpause = 1

[State 3310,Shake]
type = EnvShake
trigger1 = MoveHit = 1
time = 50
ignorehitpause = 1

[State 3310,Reset]
type = MoveHitReset
trigger1 = MoveHit = 1
ignorehitpause = 1

[State 1006, HitSpark]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8005
ID = 8000
name = "Spark"
posType = P1
pos = 45,-6
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, HitSpark]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8110
ID = 8110
name = "Spark"
posType = P1
pos = 45,0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, HitSpark]
type = Helper
trigger1 = AnimElem = 16
helperType = Normal
stateNo = 8005
ID = 8000
name = "Spark"
posType = P1
pos = 53,-44
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3310,Effect]
type = Explod
trigger1 = AnimElem = 5
anim = 2650
pos = 45, 0
postype = P1
sprpriority = 3
bindtime = 1
ownpal = 1
ignorehitpause = 1

[State 3310,Effect]
type = Explod
trigger1 = AnimElem = 16
anim = 2520
pos = 53,-44
postype = P1
sprpriority = 3
bindtime = 1
ownpal = 1
ignorehitpause = 1

[State 3310,Sound]
type = PlaySnd
trigger1 = AnimElem = 20
trigger2 = AnimElem = 30
trigger3 = AnimElem = 40
value = 3100, 1

[State 3310,Attack]
type = HitDef
trigger1 = AnimElem = 26
trigger2 = AnimElem = 36
attr = S, HA
hitflag = MAF
guardflag = M
animtype = Hard
damage = 80,10
pausetime = 10,10
guard.pausetime = 8,10
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkno = S2900
sparkxy = -5 + 0 * (var(35) := 160), var(36):=-105
hitsound = S2,6
guardsound = S0, 0
ground.type = High
ground.slidetime = 18
ground.hittime = 18
guard.hittime = (18) - 6
guard.velocity = -7
p1facing = 1
p2facing = 1
p2stateno = 3170
fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
kill = 0

[State 3310,Attack]
type = HitDef
trigger1 = AnimElem = 46
attr = S, HA
hitflag = MAF
guardflag = M
animtype = Hard
damage = 180,25
pausetime = 40,40
guard.pausetime = 18,20
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkno = S2900
sparkxy = -5 + 0 * (var(35) := 160), var(36):=-105
hitsound = S2,6
guardsound = S0, 0
ground.type = High
ground.slidetime = 18
ground.hittime = 18
guard.hittime = (18) - 6
guard.velocity = -7
p1facing = 1
p2facing = 1
p2stateno = 3180
fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
id = 3100

[State 3310,End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;P1 States 2
[Statedef 3165]
type = S
movetype = A
physics = N
anim = 3150
velset = 0,0

[State 0, VelSet]
type = VelSet
trigger1 = 1
x = 0
y = 0

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 0
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 42,-120
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1
[State 3300, SuperPause FX]
type=Helper
trigger1 = Time = 0
helperType=Normal
stateNo=8525
ID=8500
name="Superpause FX"
posType = p1
pos = 10,-66
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3110,SuperPause]
type = SuperPause
trigger1 = AnimElem = 1
time = 38
sound = s8500,1
darken = 0
anim = -1

[State 3000, No Corner Push]
type=VarSet
trigger1=time=3
fvar(5)=0
[State 3000, Unguardable]
type=VarSet
trigger1=time=3 && NumEnemy
trigger1=(EnemyNear, StateNo !=[120,155])
var(17)=47
[State 3000, Super Cancel Flag]
type=VarSet
trigger1=!Time
var(21)=(PrevStateNo=[1000,2999]) && var(6)
[State 3000, Hyper Cancel Flag]
type=VarSet
trigger1=!Time
var(22)=((prevstateno=[3000,4999]) && var(7)) || var(20)
[State 3000, Super Cancel Flash]
type=PalFX
trigger1=var(21) || var(22)
trigger1=!(Time % 2) && Time <=12
time=1
add=255,255,255
ignoreHitPause=1
[State 3000, Super Cancel Juggle Reset]
type=VarSet
trigger1=!Time
trigger1=var(21) || var(22)
var(15)=0
ignoreHitPause=1


[State 3310,Position]
type = PosSet
triggerall = Time = 0
triggerall = FrontEdgeBodyDist < 50
trigger1 = Facing = 1
x = 100

[State 3310,Position]
type = PosSet
triggerall = Time = 0
triggerall = FrontEdgeBodyDist < 50
trigger1 = Facing = -1
x = -100

[State 3310,Muteki]
type = NotHitBy
trigger1 = Time >= 0
value = SCA

[State 3310,Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3100, 0

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 45,-120
time = 6

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 50,-120
time = 7

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 3
pos = 28,-90
time = 4

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
pos = 34,-61
time = 5

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 5
pos = 30,-10
time = 23

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 6
pos = 28,-11
time = 7

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 7
pos = 28,-55
time = 6

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 8
pos = 28,-69
time = 6

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 9
pos = 37,-70
time = 6

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 10
pos = 43,-108
time = 4

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 11
pos = 22,-122
time = 14

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 13
pos = 20,-119
time = 8

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 14
pos = 11,-110
time = 3

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 15
pos = 29,-91
time = 5

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 16
pos = 52,-51
time = 21

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 18
pos = 22,-118
time = 12

[State 3310,TargetBind]
type = TargetBind
trigger1 = AnimElem = 19
pos = 22,-122
time = 5

[State 3310,Position1]
type = PosAdd
triggerall = FrontEdgeBodyDist > 65
trigger1 = AnimElem = 9
x = 48

[State 3310,Position2]
type = PosAdd
triggerall = FrontEdgeBodyDist > 60
trigger1 = AnimElem = 18
x = 26

[State 3310,Position3]
type = PosAdd
triggerall = FrontEdgeBodyDist > 60
trigger1 = AnimElem = 20
x = 23

[State 3310,Position4]
type = PosAdd
triggerall = FrontEdgeBodyDist > 60
trigger1 = AnimElem = 21
trigger2 = AnimElem = 53
x = 20

[State 3310,HitAdd]
type = HitAdd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 16
value = 1

[State 3310,TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 16
value = -120
kill = 0

[State 3310,Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = S2+10*var(44), 2

[State 3310,Sound]
type = PlaySnd
trigger1 = AnimElem = 16
value = S2+10*var(44), 5

[State 3310,Shake]
type = EnvShake
trigger1 = AnimElem = 5
trigger2 = AnimElem = 16
time = 30
ignorehitpause = 1

[State 3310,Shake]
type = EnvShake
trigger1 = MoveHit = 1
time = 50
ignorehitpause = 1

[State 3310,Reset]
type = MoveHitReset
trigger1 = MoveHit = 1
ignorehitpause = 1

[State 1006, HitSpark]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8005
ID = 8000
name = "Spark"
posType = P1
pos = 45,-6
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, HitSpark]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8110
ID = 8110
name = "Spark"
posType = P1
pos = 45,0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, HitSpark]
type = Helper
trigger1 = AnimElem = 16
helperType = Normal
stateNo = 8005
ID = 8000
name = "Spark"
posType = P1
pos = 53,-44
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3310,Effect]
type = Explod
trigger1 = AnimElem = 5
anim = 2650
pos = 45, 0
postype = P1
sprpriority = 3
bindtime = 1
ownpal = 1
ignorehitpause = 1

[State 3310,Effect]
type = Explod
trigger1 = AnimElem = 16
anim = 2520
pos = 53,-44
postype = P1
sprpriority = 3
bindtime = 1
ownpal = 1
ignorehitpause = 1

[State 3310,Sound]
type = PlaySnd
trigger1 = AnimElem = 20
trigger2 = AnimElem = 30
trigger3 = AnimElem = 40
value = 3100, 2

[State 3310,Sound]
type = PlaySnd
trigger1 = AnimElem = 26
trigger2 = AnimElem = 36
trigger3 = AnimElem = 46
value = 3100, 1

[State 3310,Attack]
type = HitDef
trigger1 = AnimElem = 26
trigger2 = AnimElem = 36
attr = S, HA
hitflag = MAF
guardflag = M
animtype = Hard
damage = 80,10
pausetime = 10,10
guard.pausetime = 8,10
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkno = S2900
sparkxy = -5 + 0 * (var(35) := 160), var(36):=-105
hitsound = S2,6
guardsound = S0, 0
ground.type = High
ground.slidetime = 18
ground.hittime = 18
guard.hittime = (18) - 6
guard.velocity = -7
p1facing = 1
p2facing = 1
p2stateno = 3170
fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
kill = 0

[State 3310,Attack]
type = HitDef
trigger1 = AnimElem = 46
attr = S, HA
hitflag = MAF
guardflag = M
animtype = Hard
damage = 180,25
pausetime = 40,40
guard.pausetime = 18,20
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkno = S2900
sparkxy = -5 + 0 * (var(35) := 160), var(36):=-105
hitsound = S2,6
guardsound = S0, 0
ground.type = High
ground.slidetime = 18
ground.hittime = 18
guard.hittime = (18) - 6
guard.velocity = -7
p1facing = 1
p2facing = 1
p2stateno = 3180
fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
id = 3100

[State 3310,End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;P2 States 1
[Statedef 3170]
type = A
movetype = H
physics = N
velset = 0, 0
ctrl = 0

[State 1];ƒJƒƒ‰ŒÅ’è
type = screenbound
trigger1 = 1
value = 1
movecamera = 1

[State 3180,Muteki]
type = NotHitBy
trigger1 = Vel Y < 0
trigger2 = Vel Y > 0
trigger2 = P2Dist Y < -105
value = SCA

[State 3180,Anim]
type = ChangeAnim2
trigger1 = Time = 0
persistent = 0
value = 3160

[State 3180,Velocity]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 3180,Velocity]
type = VelSet
trigger1 = HitShakeOver = 1
persistent = 0
y = -16.5

[State 3180,Accel]
type = VelAdd
trigger1 = Time > 10
y = .60

[State 3180,Anim]
type = ChangeAnim2
trigger1 = Vel Y > 0
persistent = 0
value = 3170

[State 3180,SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;P2 States 2
[Statedef 3180]
type = A
movetype = H
physics = N
velset = 0, 0
ctrl = 0

[State 1];ƒJƒƒ‰ŒÅ’è
type = screenbound
trigger1 = 1
value = 1
movecamera = 1

[State 3180,Muteki]
type = NotHitBy
trigger1 = Time >= 0
value = SCA

[State 3180,Anim]
type = ChangeAnim2
trigger1 = Time = 0
persistent = 0
value = 3180

[State 3180,Velocity]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 3180,Velocity]
type = VelSet
trigger1 = HitShakeOver = 1
persistent = 0
x = -1.5
y = -13.0

[State 3180,Accel]
type = VelAdd
trigger1 = Time > 40
y = .50

[State 3180,Anim]
type = ChangeAnim2
trigger1 = Vel Y > 0
persistent = 0
value = 3190

[State 3180,SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;---------------------------------------------------------------------------
; Maxima Laser
[Statedef 3500]
type    = S
movetype= A
physics = N
velset = 0,0
poweradd= -3000
anim = 3500
ctrl = 0
sprpriority = 1

[State 3000, No Corner Push]
type=VarSet
trigger1=time=3
fvar(5)=0
[State 3000, Unguardable]
type=VarSet
trigger1=time=3 && NumEnemy
trigger1=(EnemyNear, StateNo !=[120,155])
var(17)=47
[State 3000, Super Cancel Flag]
type=VarSet
trigger1=!Time
var(21)=(PrevStateNo=[1000,2999]) && var(6)
[State 3000, Hyper Cancel Flag]
type=VarSet
trigger1=!Time
var(22)=((prevstateno=[3000,4999]) && var(7)) || var(20)
[State 3000, Super Cancel Flash]
type=PalFX
trigger1=var(21) || var(22)
trigger1=!(Time % 2) && Time <=12
time=1
add=255,255,255
ignoreHitPause=1
[State 3000, Super Cancel Juggle Reset]
type=VarSet
trigger1=!Time
trigger1=var(21) || var(22)
var(15)=0
ignoreHitPause=1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = animelemtime(4) <= 0
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = P1
pos = 3,-90
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,2
darken = 0

[state turn]
type = turn
trigger1 = p2dist x < 0
trigger1 = time = 0

;---------------------[–³“G]
[state nothitby]
type = nothitby
trigger1 = animelem = 7,<0
value = SCA
time = 1

;---------------------[’´•KŽE‹Z‰‰o]
[state removeexplod]
type = removeexplod
trigger1 = time = 0
id = 3000


;---------------------[Œø‰Ê‰¹]
[State a]
type = PlaySnd
trigger1 = time = 3
value = 3500,0
channel = 0

[State a]
type = PlaySnd
trigger1 = time = 45
value = 3500,1
channel = 0

[State a]
type = PlaySnd
trigger1 = time = 47
value = 3500,3
channel = 1

[State 3050, hadouken]
type = helper
trigger1 = anim = 3500 && animelemtime(6) >= 0
helpertype = normal
stateno = 3550
ID = 3005
name = "Ryu Koku Hadouken"
size.xscale = .5
size.yscale = .5
postype = p1
ownpal = 1
persistent = 0
[State 3050, pusher]
type = helper
trigger1 = anim = 3500 && animelemtime(6) >= 0
helpertype = normal
stateno = 3552
ID = 3552
name = "Pusher"
postype = p1
pos = 40, 0
facing = -1
size.xscale = 1
size.yscale = 1
size.ground.back = 20
size.ground.front = 20
size.height = 240
persistent = 0

;---------------------[]
[state a]
type = changestate
trigger1 = Time >= 220 && !numhelper(3550)
value = 3501


;---------------------------------------------------------------------------
; Maxima Laser (End)
[Statedef 3501]
type    = S
movetype= A
physics = N
juggle  = 0
ctrl = 0
anim = 3501
poweradd = 0
sprpriority = 1

;---------------------[Œø‰Ê‰¹]
[State a]
type = PlaySnd
trigger1 = animelem = 5
value = 3500,2

;---------------------[ƒXƒe[ƒgˆÚs]
[State 200, 7]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 3520]
type    = A
movetype= H
physics = N
velset = -1,-1.5
ctrl = 0
anim = 5050

[State 3030,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 5050, 2]
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3]
type = VelAdd
trigger1 = Time > 0
y = .45

[State 1111,VelSet]
type = VelSet
trigger1 = Time > 0
trigger1 = Vel Y > 0 && Pos Y >= 0
x = -2

[State 5050, 6]
type = SelfState
trigger1 = Time > 0
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 5100

[Statedef 3525]
type    = A
movetype= H
physics = N
velset = -17,-3
ctrl = 0
anim = 5050

[State 3030,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 5050, 2]
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3]
type = VelAdd
trigger1 = Time > 0
y = .45

[State 1111,VelSet]
type = VelSet
trigger1 = Time > 0
trigger1 = Vel Y > 0 && Pos Y >= 0
x = -2

[State 5050, 6]
type = SelfState
trigger1 = Time > 0
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 5100