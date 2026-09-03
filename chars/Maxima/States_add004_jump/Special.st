;***************************************************************************;
;***************************************************************************;
; CVS Maxima POTS/Infinite by Falcon Rapper
;***************************************************************************;
;***************************************************************************;
; "Porque o guerreiro de f nunca gela" by: Racionais mc's
;***************************************************************************;
;***************************************************************************;

;
;SPECIAL MOVES=
;

;-------------------------------------------------------------------------------
; M-4 Type: Vapour Cannon
[Statedef 1000]
type=S
movetype=A
physics=S
velset=0, 0
ctrl=0
poweradd=72 * !var(20)
facep2=1

[State 200, Anim]
type=changeanim
trigger1=!time&&prevstateno
value=1000

[State 0, PosSet]
type=PosSet
trigger1 =!time
y=0

[State xxx, VarSet]
type=VarSet
trigger1 =!AILevel&& !time
var(10)=ifelse(command="x",0,ifelse(command="y",1,2))
ignorehitpause=1
[State xxx, VarSet]
type=VarSet
trigger1 =AILevel&& !time
var(10)=ifelse(random<300,1,2)
ignorehitpause=1

[State 1000,SuperArmor]
type=ReversalDef
trigger1=P2MoveType != H&&animelemtime(1)>=0&&animelemtime(6)<0
persistent=1
attr=S, SA
reversal.attr=SCA,NA,SA,NP,SP
numhits=0
getpower=10
givepower=15
pausetime=1,4
sparkno=s-1
sparkxy=10,-30
hitsound=S-1

[State 1000,Sound]
type=PlaySnd
trigger1=AnimElem=4
value=1000, 0
channel=1
[State 1000,Sound]
type=PlaySnd
trigger1=AnimElem=4
value=1000, 1
channel=2

[State 1000,Position]
type=PosAdd
trigger1=AnimElem=3
trigger1=P2BodyDist X > 10
x=26+1*var(10)
[State 1000,Position]
type=PosAdd
trigger1=AnimElem=4
trigger1=P2BodyDist X > 15
x=40+1*var(10)

[State 0, Helper]
type = Helper
trigger1=animelem=4
helpertype = normal ;player
name ="Vapor"
ID =1005
stateno =1005
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal =1
size.xscale =.575
size.yscale =.525
[State 1000,Effect]
type=Explod
trigger1=animelem=7
anim=1007
pos=105,-85
postype=P1
sprpriority=3
bindtime=1
scale=.5,.5
ownpal =1

[State 1000,Attack]
type=HitDef
trigger1=AnimElem=6&&!Numtarget(1000)
id=1000
attr=S, SA
damage=76+6*var(10),15
animtype=Hard
groundtype=High
getpower=20
givepower=30
guardflag=MA
hitflag=MAFP
pausetime=12,18
sparkno=-1
guard.sparkno=-1
sparkxy=-10,-75
hitsound=S2,6
guardsound=S3,1
ground.slidetime=30
ground.hittime =40
guard.hittime = (40) - 6
ground.velocity = -6,-3.0
air.velocity = -5.2,-2.5
yAccel = (0.5 + (ComboCount * 0.03))
air.fall=1
air.hittime=30
fall=1
fall.recover=0
envshake.time=20
envshake.ampl=7

[State 1100, HitSpark]
type=Helper
trigger1=movecontact=1 && numtarget
trigger1=(enemynear, movetype=H) && !(target, time)
helperType=Normal
stateNo=ifElse(MoveGuarded, 8001, 8005)
ID=8000
name="Spark"
pos= ceil(p2dist x),ceil(p2dist y-75)
facing=-1
ownPal=1
size.xScale=1
size.yScale=1
pauseMoveTime=65535
superMoveTime=65535
ignoreHitPause=1
persistent=4

[State 1100, Counter FX]
type=Helper
trigger1=MoveContact=1 && NumTarget && var(9)
trigger1=!(Target, HitShakeOver)
helperType=Normal
stateNo=8290
ID=8290
name="Counter FX"
posType=P1
pos= ceil(p2dist x),ceil(p2dist y-70)
ownPal=1
pauseMoveTime=65535
superMoveTime=65535
ignoreHitPause=1

[State 0, p2state]
type=targetstate
trigger1= movehit && numtarget(1000)
trigger1= target(1000),Movetype=H
ID=1000
value=1070
ignorehitpause=1
persistent=0

[State 102, Dust]
type = helper
trigger1=AnimElem=5
stateno = 8103
ID = 8100
name = "Dash Dust"
pos = -20,10
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1000,End]
type=ChangeState
trigger1=!AnimTime
value=0
ctrl=1

;-------------------------------------------------------------------------------
; M-4 Type: Vapour Cannon EX
[Statedef 1050]
type=S
movetype=A
physics=S
velset=0, 0
ctrl=0
poweradd=-500
facep2=1
anim = 1050

[State 0, PosSet]
type=PosSet
trigger1 =!time
y=0

[State 1110, VarSet]
type = VarSet
trigger1 =!time
var(10) = 3
ignorehitpause = 1
[State 1110, MAX Timer Drain]
type=VarAdd
trigger1=!Time
trigger1=var(20) > 0
var(20)=-250
[State 1110, Custom Combo Juggle Reset]
type=VarSet
trigger1=!Time && var(20)
var(15)=0
ignoreHitPause=1
[State 1110, EX Flash]
type=VarSet
trigger1=!Time
var(25)=30
[State 1110, EX FX]
type=Explod
trigger1 = AnimElemTime(1) = 0
anim=8210
sprPriority=3
posType=p1
pos=6, -110
scale=0.5, 0.5
pauseMoveTime=-1
superMoveTime=-1
bindtime = -1
ownPal=1
[State -3, EX Flash]
type=PalFX
trigger1=!(GameTime % 2)
time=1
color=0
mul=256, 224, 0
add=128, 128, 128
ignoreHitPause=1
[State 1110, EX-SND]
type=PlaySnd
trigger1 =!time
value=0,1000
channel=3

[State 1000,SuperArmor]
type=ReversalDef
trigger1=P2MoveType != H&&animelemtime(1)>=0&&animelemtime(6)<0
persistent=1
attr=S, SA
reversal.attr=SCA,NA,SA,NP,SP
numhits=0
getpower=10
givepower=15
pausetime=1,4
sparkno=s-1
sparkxy=10,-30
hitsound=S-1

[State 1000,Sound]
type=PlaySnd
trigger1=AnimElem=4
value=1000, 0
channel=1
[State 1000,Sound]
type=PlaySnd
trigger1=AnimElem=4
trigger2=AnimElem=12
value=1000, 1
channel=2

[State 1000,Position]
type=PosAdd
trigger1=AnimElem=3 || AnimElem=8 
trigger1=P2BodyDist X > 10
x=26
[State 1000,Position]
type=PosAdd
trigger1=AnimElem=4 || AnimElem=9
trigger1=P2BodyDist X > 15
x=20

[State 0, Helper]
type = Helper
trigger1=animelem=4
trigger2=animelem=9
helpertype = normal ;player
name ="Vapor"
ID =1005
stateno =1005
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal =1
size.xscale =.575
size.yscale =.525
[State 1000,Effect]
type=Explod
trigger1=AnimElem=7
trigger2=AnimElem=13
anim=1007
pos=105,-85
postype=P1
sprpriority=3
bindtime=1
scale=.5,.5
ownpal =1

[State 1000,Attack]
type=HitDef
trigger1=AnimElem=6
id=1000
attr=S, SA
damage = 100,7
animtype=Hard
groundtype=High
getpower=20
givepower=30
guardflag=MA
hitflag=MAFP
pausetime=8,14
sparkno=-1
guard.sparkno=-1
sparkxy=-10,-75
hitsound=S2,6
guardsound=S3,1
ground.slidetime=30
ground.hittime =40
guard.hittime = (40) - 6
ground.velocity = -2,-4.0
air.velocity = -2,-4.5
yAccel = (0.5 + (ComboCount * 0.03))
air.fall=1
air.hittime=30
fall=1
fall.recover=0
envshake.time=20
envshake.ampl=7

[State 1000,Attack]
type=HitDef
trigger1=AnimElem=12
id=1000
attr=S, SA
damage = IfElse(!numtarget(1000),100,30),7
animtype=Hard
groundtype=High
getpower=20
givepower=30
guardflag=MA
hitflag=MAFP
pausetime=12,18
sparkno=-1
guard.sparkno=-1
sparkxy=-10,-75
hitsound=S2,6
guardsound=S3,1
ground.slidetime=30
ground.hittime =40
guard.hittime = (40) - 6
ground.velocity = -6,-4.0
air.velocity = -5.2,-4.5
yAccel = (0.5 + (ComboCount * 0.03))
air.fall=1
air.hittime=30
fall=1
fall.recover=0
envshake.time=20
envshake.ampl=7
p2stateno = 1070

[State 1100, HitSpark]
type=Helper
trigger1=movecontact=1 && numtarget
trigger1=(enemynear, movetype=H) && !(target, time)
helperType=Normal
stateNo=ifElse(MoveGuarded, 8001, 8005)
ID=8000
name="Spark"
pos= ceil(p2dist x),ceil(p2dist y-75)
facing=-1
ownPal=1
size.xScale=1
size.yScale=1
pauseMoveTime=65535
superMoveTime=65535
ignoreHitPause=1
persistent=4

[State 1100, Counter FX]
type=Helper
trigger1=MoveContact=1 && NumTarget && var(9)
trigger1=!(Target, HitShakeOver)
helperType=Normal
stateNo=8290
ID=8290
name="Counter FX"
posType=P1
pos= ceil(p2dist x),ceil(p2dist y-70)
ownPal=1
pauseMoveTime=65535
superMoveTime=65535
ignoreHitPause=1

[State 102, Dust]
type = helper
trigger1=AnimElem=5
trigger2=AnimElem=10
stateno = 8103
ID = 8100
name = "Dash Dust"
pos = -20,10
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1000,End]
type=ChangeState
trigger1=!AnimTime
value=0
ctrl=1

;HIT WALL>=
;---Hit Pause---
[Statedef 1070]
type=A
movetype=H
physics=N
velset=0,0
[State 1125, anim]
type=changeanim
trigger1= 1
value=5012
[State 1125, end]
type=changestate
trigger1= hitshakeover
value=1071


;---Falling---
[Statedef 1071]
type=A
movetype=H
physics=N

[State 1126, vel]
type=hitvelset
trigger1= !time
x=1
y=1
[State 1126, grav]
type=veladd
trigger1= 1
y=gethitvar(yaccel)

[State 1126, screen]
type=screenbound
trigger1= 1
value=1
movecamera=0,1
[State 1126, push]
type=playerpush
trigger1= 1
value=0

[State 1126, anim]
type=changeanim
trigger1= !time
value=5030

[State 1126, bounce]
type=changestate
trigger1= backedgebodydist<=10 || frontedgebodydist<=10
value=1072
[State 1126, end]
type=selfstate
trigger1= vel y>0 && pos y>=0
value=5100


;---Hitting Wall---
[Statedef 1072]
type=A
movetype=H
physics=N

[State 1127, turn]
type=turn
trigger1= !time
trigger1= frontedgedist<backedgedist


[State 1127, pos]
type=posset
trigger1= 1
x=-160*facing
[State 1127, pos]
type=posfreeze
trigger1= 1
x=1
y=1

[State 1127, EnvShake]
type = EnvShake
trigger1 = !time
time =44
ampl = 9
ignorehitpause =1

[State 1127, screen]
type=screenbound
trigger1= 1
value=1
movecamera=0,1
[State 1127, push]
type=playerpush
trigger1= 1
value=1

[State 1127, anim]
type=changeanim
trigger1= 1
value=5000

[State 1127, snd]
type=playsnd
trigger1= !time
value=f7,0
[State 1127, fx]
type=explod
trigger1= !time
anim=f72
pos=0,floor(screenpos y)-50
postype=back
sprpriority=3

[State 1127, end]
type=changestate
trigger1= time>=4
value=1073


;---Falling---
[Statedef 1073]
type=A
movetype=H
physics=N

[State 1128, turn]
type=turn
trigger1= !time

[State 1128, grav]
type=veladd
trigger1= 1
y=.5
[State 1128, vel]
type=velset
trigger1= !time
x=-2.5
y=-9

[State 1128, anim]
type=changeanim
trigger1= !time
value=ifelse(selfanimexist(5051),5051,5030)
[State 1128, anim]
type=changeanim
trigger1= anim=5030 && !animtime
value=5050
[State 1128, Anim]
type=changeanim
trigger1= vel y>-3 && anim=5051 &&selfanimexist(5061)
value=5061

[State 1128, screen]
type=screenbound
trigger1= 1
value=1
movecamera=0,0
[State 1128, push]
type=playerpush
trigger1= 1
value=0

[State 1128, end]
type=selfstate
trigger1= vel y>0 && pos y>=0
value=5100

;---------------------------------------------------------------------
; System 1: Maxima Scramble
[Statedef 1100]
type=S
movetype=A
physics=S
velset=0,0
ctrl=0
poweradd=72 * !var(20)
juggle=2
facep2=1

[State 1500, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
pos = -20,10
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 0, PosSet]
type=PosSet
trigger1 =!time
y=0

[State xxx, VarSet]
type=VarSet
trigger1 =!AILevel&& !time
var(10)=ifelse(command="x",0,ifelse(command="y",1,2))
ignorehitpause=1
[State xxx, VarSet]
type=VarSet
trigger1 =AILevel&& !time
var(10)=ifelse(random<300,1,2)
ignorehitpause=1

[State xxx, 1]
type=ChangeAnim
Trigger1=Time=0
value=ifelse(var(10)=2,1102,ifelse(var(10)=1,1101,1100))
ignorehitpause=1

[State 1200,SuperArmor]
type=ReversalDef
trigger1=P2MoveType != H&&animelemtime(2)>=0&&animelemtime(5)<0
persistent=1
attr=S, SA
reversal.attr=SCA,NA,SA,NP,SP
numhits=0
getpower=10
givepower=15
pausetime=1,4
sparkno=s-1
sparkxy=10,-30
hitsound=S-1

[State 0, VelSet]
type=VelSet
trigger1=Animelem=2
x=3+1*var(10)
[State 0, VelSet]
type=VelSet
trigger1=Animelem=5
x=0

[State xxx, Explod]
type=Explod
trigger1=Time=0
anim=2224
ID=2224
pos=-30,20
postype=p1
facing=1
vfacing=1
bindtime=1
scale=1,1
sprpriority=0
ontop=1
ownpal=1
removeongethit=1
ignorehitpause=1
persistent=1
supermovetime=9999
pausemovetime= 9999

[State 1100,Sound]
type=PlaySnd
trigger1=Time=0
value=1100, 0
channel=1
[State 1100,Sound]
type=PlaySnd
trigger1=Time=0
value=1,2
channel=2

[State 1100,VarInitialize]
type=VarSet
trigger1=!time
var(1)=0
[State 1100,VarSet]
type=VarSet
trigger1=!AILevel&&animelemtime(4)>=0&&animelemtime(6)<=5
trigger1=Command="x"||Command="y"||Command="z"
trigger2=AILevel&&animelemtime(4)>=0&&animelemtime(6)<=5&&movehit
var(1)=1

[State 1100,Attack]
type=HitDef
trigger1=AnimElem=5
attr=S, SA
animtype =Heavy
damage =50+6*var(10), 8
getpower=10
givepower=20
guardflag=MA
hitflag=MAF
pausetime=8,20
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkxy=-15+ 0 * (var(35) := 90), var(36):=-72
hitsound=S2+10*var(44),1
guardsound=S3,0
ground.type=Low
ground.slidetime=12
ground.hittime =28
guard.hittime = (28) - 6
ground.velocity=-7
air.velocity=-6.5,-3.2
forcestand=1
envshake.time=10
envshake.ampl=5
ground.cornerPush.velOff = 0

[State 1100,ChangeState]
type=ChangeState
trigger1=AnimElem=6&&Var(1)=1
value=1110

[State 1100,End]
type=ChangeState
trigger1=!AnimTime
value=0
ctrl=1
;---------------------------------------
;System Select 2-1
[Statedef 1110]
type=S
movetype=A
physics=S
velset=0, 0
anim=1110
ctrl=0
poweradd=10 * !var(20)
juggle=1
facep2=1

[State 1500, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
pos = 0,10
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 0, VarSet]
type = VarSet
trigger1 =!time
var(2)=Ifelse(enemynear,Movetype=H,1,0)
ignorehitpause =1

[State 0, PosSet]
type=PosSet
trigger1 =!time
y=0

[State 0, VelSet]
type=VelSet
trigger1=Animelem=4
x=2+1*var(10)
[State 0, VelSet]
type=VelSet
trigger1=Animelem=8
x=0

[State xxx, Explod]
type=Explod
trigger1=Time=0
anim=2224
ID=2224
pos=-30,20
postype=p1
facing=1
vfacing=1
bindtime=1
scale=1,1
sprpriority=0
ontop=1
ownpal=1
removeongethit=1
ignorehitpause=1
persistent=1
supermovetime=9999
pausemovetime= 9999

[State 1100,Sound]
type=PlaySnd
trigger1=AnimElem=8
value=1100, 1
channel=1
[State 1100,Sound]
type=PlaySnd
trigger1=AnimElem=11
value=1100, 2
channel=2
[State 1100,Sound]
type=PlaySnd
trigger1=AnimElem=6
trigger2=AnimElem=9
value=1,2
channel=3

[State 1100,VarInitialize]
type=VarSet
trigger1=!time
var(1)=0
[State 1100,VarSet]
type=VarSet
trigger1=!AILevel&&animelemtime(8)>=0&&animelemtime(11)<=5
trigger1=Command="x"||Command="y"||Command="z"
var(1)=1
[State 1100,VarSet]
type=VarSet
trigger1=AILevel&&animelemtime(8)>=0&&animelemtime(11)<=5&&Movehit
var(1)=1

[State 1110,Position]
type=PosAdd
triggerall=P2BodyDist X > 10
trigger1=AnimElem=3
trigger2=AnimElem=4
x=20
[State 1110,Position]
type=PosAdd
trigger1=AnimElem=7
trigger1=P2BodyDist X > 15
x=43
[State 1110,Position]
type=PosAdd
trigger1=AnimElem=13
x=3

[State 1110,Attack]
type=HitDef
trigger1=Animelem=8
attr=S, SA
animtype =Heavy
damage =20+2*var(10),4
getpower=10
givepower=5
guardflag=MA
hitflag=MAF
pausetime=10,13
sparkno= -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkxy=-15+ 0 * (var(35) := 90), var(36):=-69
hitsound=S2+10*var(44),1
guardsound=S3,0
ground.type=Low
ground.slidetime=12
ground.hittime =20
guard.hittime = (20) - 6
ground.velocity=-3
air.velocity=-4.5,-3.2
guard.velocity=-5
envshake.time=10
envshake.ampl=5
ground.cornerPush.velOff = 0

[State 1110,Attack]
type=HitDef
trigger1=AnimElem=11
attr=S, SA
animtype =Heavy
damage =Ifelse(var(2),20,40)+2*var(10), 4
getpower=10
givepower=5
guardflag=MA
hitflag=MAF
pausetime=8,24
sparkno=s8710+(random%8)
guard.sparkno=S13351
sparkxy=-15,-71
hitsound=S2+10*var(44),1
guardsound=S3,0
ground.type=High
ground.slidetime=12
ground.hittime =20
guard.hittime = (20) - 6
ground.velocity=-3
air.velocity=-4.5,-3.2
guard.velocity=-5
envshake.time=10
envshake.ampl=5
ground.cornerPush.velOff = 0

[State 1110,ChangeState]
type=ChangeState
trigger1=AnimElem=12&&Var(1)=1
value=1120

[State 1110,End]
type=ChangeState
trigger1=AnimTime=0
value=0
ctrl=1
;---------------------------------------
;System Select 3-1
[Statedef 1120]
type=S
movetype=A
physics=S
velset=0, 0
anim=1120
ctrl=0
poweradd=10 * !var(20)
juggle=1
facep2=1

[State 1500, Dust Helper]
type = Helper
trigger1 = AnimElem = 1
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
pos = -20,10
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 0, VarSet]
type = VarSet
trigger1 =!time
var(2)=Ifelse(enemynear,Movetype=H,1,0)
ignorehitpause =1

[State 0, PosSet]
type=PosSet
trigger1 =!time
y=0

[State 1120,Attack]
type=HitDef
trigger1=Time=0
attr=S, SA
animtype =Heavy
damage =0
getpower=10
givepower=5
guardflag=MA
hitflag=MAF
numhits=0
guard.pausetime=12,15
sparkno= -1
guard.sparkNo = -1
sparkxy=0+ 0 * (var(35) := 90), var(36):=9999
hitsound=S2,800
guardsound=S3,0
ground.type=Low
ground.slidetime=12
ground.hittime =20
guard.hittime = (20) - 6
ground.velocity=-5
air.velocity=-4.5,-3.2
ground.cornerpush.veloff = 0
p2facing=1
p1stateno=1130
p2stateno=1140
sprpriority=-1
p2getp1state=1
hitonce=1
envshake.time=10
envshake.ampl=5

[State 1100, HitSpark]
type=Helper
trigger1=moveguarded=1 && numtarget
trigger1=(enemynear, movetype=H) && !(target, time)
helperType=Normal
stateNo=8001
ID=8000
name="GuardSpark"
pos= ceil(p2dist x),ceil(p2dist y-66)
facing=-1
ownPal=1
size.xScale=1
size.yScale=1
pauseMoveTime=65535
superMoveTime=65535
ignoreHitPause=1
persistent=4

[State 1120,End]
type=ChangeState
trigger1=AnimTime=0
value=0
ctrl=1

;-------------------------------------
;System Select Throw
[Statedef 1135]
type=S
movetype=A
physics=S
velset=0, 0
ctrl=0
anim=1135

[State -3, EX Flash]
type=PalFX
triggerall=var(10)=3
trigger1=!(GameTime % 2)
time=1
color=0
mul=256, 224, 0
add=128, 128, 128
ignoreHitPause=1

[State 1130,Freeze]
type=PosFreeze
trigger1=AnimElem=10, < 0

[State 1220,Muteki]
type=NotHitBy
trigger1=1
value=SCA

[State 1100,VarInitialize]
type=VarSet
trigger1=!time
var(1)=0
[State 1100,VarSet]
type=VarSet
trigger1=animelemtime(7)>=0&&animelemtime(10)<=0&&command="holdfwd"
trigger1=Command="x"||Command="y"||Command="z"
var(1)=1

[State 1220,TargetBind]
type=TargetBind
trigger1=AnimElem=1
pos=44, 0
time=15

[State 1220,TargetBind]
type=TargetBind
trigger1=AnimElem=2
pos=48,-108
time=5

[State 1220,TargetBind]
type=TargetBind
trigger1=AnimElem=3
pos=31,-126
time=5

[State 1220,TargetBind]
type=TargetBind
trigger1=AnimElem=4
pos=28,-123
time=5

[State 1220,TargetBind]
type=TargetBind
trigger1=AnimElem=5
pos=25,-115
time=5

[State 1220,TargetBind]
type=TargetBind
trigger1=AnimElem=6
pos=21,-103
time=5

[State 1220,TargetBind]
type=TargetBind
trigger1=AnimElem=7
pos=33,-89
time=3

[State 1220,TargetBind]
type=TargetBind
trigger1=AnimElem=8
pos=54,-50
time=6

[State 1100, HitSpark]
type=Helper
trigger1=AnimElem=8
helperType=Normal
stateNo=8005
ID=8000
name="Spark"
pos= 53,-44
facing=-1
ownPal=1
size.xScale=1
size.yScale=1
pauseMoveTime=65535
superMoveTime=65535
ignoreHitPause=1
persistent=4

[State 0, HitAdd]
type = HitAdd
trigger1=AnimElem=8
value=1

[State 1220,TargetLifeAdd]
type=TargetLifeAdd
trigger1=AnimElem=8
value=Ifelse(var(2),-25,-95)

[State 1220,Sound]
type=PlaySnd
trigger1=AnimElem=1
value=S2,800
channel=1

[State 1220,Sound]
type=PlaySnd
trigger1=AnimElem=8
value=S2+10*var(44),5
channel=1
[State 1220,Shake]
type=EnvShake
trigger1=AnimElem=8
time=25
ampl=6
ignorehitpause=1

[State 1220,Position]
type=PosAdd
trigger1=AnimElem=10
x=17

[State 1220,Position]
type=PosAdd
trigger1=AnimElem=11
x=20

[State 1220,Position]
type=PosAdd
trigger1=AnimElem=12
x=30

[State 1220,Position]
type=PosAdd
trigger1=AnimElem=13
x=19

[State 1210,ChangeState]
type=ChangeState
triggerall=AnimElem=10
trigger1=Var(1)=1
trigger2=AILevel
value=1150

[State 1220,End]
type=ChangeState
trigger1=AnimTime=0
value=0
ctrl=1
;-----------------------------------------------
;System Select-Target-2
[Statedef 1136]
type=A
movetype=H
physics=N
ctrl=0
velset=0, 0

[State 1230,Sprite]
type=Sprpriority
trigger1=Time=0
value=-1
[State 0, ScreenBound]
type = ScreenBound
trigger1 =1
value = 1
movecamera = 1,0

[State 1230,Anim]
type=ChangeAnim2
trigger1=Time=0
value=1136

[State 1230,Velocity]
type=VelSet
trigger1=AnimElem=4
x=-4.8
y=-4.5

[State 1230,Accel]
type=VelAdd
trigger1=AnimElem=4, > 0
y=.43

[State 1230,SelfState]
type=SelfState
trigger1=Vel Y > 0
trigger1=Pos Y >= 0
value=5110
;------------------------
;System Select Throw-1
[Statedef 1130]
type=S
movetype=A
physics=S
velset=0, 0
ctrl=0
anim=1130

[State -3, EX Flash]
type=PalFX
triggerall=var(10)=3
trigger1=!(GameTime % 2)
time=1
color=0
mul=256, 224, 0
add=128, 128, 128
ignoreHitPause=1

[State 0, SprPriority]
type=SprPriority
trigger1=Animelem=4
value=3

[State xxx, Explod]
type=Explod
trigger1=Time=0
anim=2224
ID=2224
pos=-30,20
postype=p1
facing=1
vfacing=1
bindtime=1
scale=1,1
sprpriority=0
ontop=1
ownpal=1
removeongethit=1
ignorehitpause=1
persistent=1
supermovetime=9999
pausemovetime= 9999

[State 1130,Freeze]
type=PosFreeze
trigger1=Time >= 0

[State 1130,Muteki]
type=NotHitBy
trigger1=1
value=SCA

[State 1130,TargetBind]
type=TargetBind
trigger1=AnimElem=1
pos=45,-135
time=16

[State 1130,TargetBind]
type=TargetBind
trigger1=AnimElem=2
pos=50,-128
time=17

[State 1130,TargetBind]
type=TargetBind
trigger1=AnimElem=3
pos=28,-78
time=4

[State 1130,TargetBind]
type=TargetBind
trigger1=AnimElem=4
pos=34,-49
time=4

[State 1130,TargetBind]
type=TargetBind
trigger1=AnimElem=5
pos=30,-10
time=10

[State 3231, Dust]
type=helper
trigger1= animelem=5
helpertype=normal
stateno=8110
ID=32310
name="Impact Dust"
postype=p2
pos= -20,70
ownpal=1
[State 0, HitAdd]
type = HitAdd
trigger1=AnimElem=5
value=1
[State 1130,TargetLifeAdd]
type=TargetLifeAdd
trigger1=AnimElem=5
value=-35

[State 1130,Shake]
type=EnvShake
trigger1=AnimElem=5
time=20
ampl=8
ignorehitpause=1

[State 1130,Sound]
type=PlaySnd
trigger1=AnimElem=1
value=1300, 0
channel=1
[State 1130,Sound]
type=PlaySnd
trigger1=AnimElem=5
value=1100, 3
channel=2
[State 1130,Sound]
type=PlaySnd
trigger1=AnimElem=5
value=S2+10*var(44),2
channel=3

[State 1130,End]
type=ChangeState
trigger1=AnimTime=0
value=0
ctrl=1

;----------------------------------------------
;System Select-Target-1
[Statedef 1140]
type=A
movetype=H
physics=N
ctrl=0
velset=0, 0

[State 1140,Anim]
type=ChangeAnim2
trigger1=Time=0
value=1140
[State 0, ScreenBound]
type = ScreenBound
trigger1 =1
value = 1
movecamera = 1,0

[State 1140,Velocity]
type=VelSet
trigger1=AnimElem=3,=18
x=-4.8
y=-4.5

[State 1140,Accel]
type=VelAdd
trigger1=AnimElem=3, > 18
y=.43

[State 1140,SelfState]
type=SelfState
trigger1=Pos Y >= 0&&Vel Y > 0
value=5110

;---------------------------------------
; Centoun Press
[Statedef 1150]
type=S
movetype=A
physics=N
ctrl=0
anim=1150
velset=0, 0
poweradd= ifElse(var(10)=3, 0, 20 * !var(20))
juggle=1

[State 1500, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
pos = 0,10
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State -3, EX Flash]
type=PalFX
triggerall=var(10)=3
trigger1=!(GameTime % 2)
time=1
color=0
mul=256, 224, 0
add=128, 128, 128
ignoreHitPause=1

[State 0, VarSet]
type = VarSet
trigger1 =!time
var(2)=Ifelse(enemynear,Movetype=H,1,0)
ignorehitpause =1
[State 1240,Sound]
type=PlaySnd
trigger1=AnimElem=4
value=1100,3
channel=1
[State 1240,StateType]
type=StateTypeSet
trigger1=AnimElem=4
statetype = A 

[State 1240,Velocity]
type=VelSet
trigger1=AnimElem=4
x=5.8
y=-4.6
[State 1240,Accel]
type=VelAdd
trigger1=AnimElem=4, > 0
y=.43

[State 1240,Attack]
type=HitDef
trigger1=Time=0
attr=A, SA
animtype =Heavy
damage =30,10
getpower=ifElse(var(10)=3, 0, 30 * !var(20))
givepower=10
guardflag=HA
hitflag=MAFD
pausetime=12,10
sparkno= -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkxy=-15+ 0 * (var(35) := 90), var(36):=-5
hitsound=S2+10*var(44),4
guardsound=S3,0
ground.type=High
ground.slidetime=12
ground.hittime =28
guard.hittime = (28) - 6
guard.velocity=-5
ground.velocity=-2.0,-2.0
airguard.velocity=-5.5,-3.2
air.velocity=-2.5,-3.2
fall.yvelocity=0
down.velocity=-2.0, 0
fall=1
fall.recover=0
air.recover=0
recover=0
envshake.time=10
envshake.ampl=5

[State 1240,Position]
type=PosAdd
triggerall=P2BodyDist X > 10
trigger1=AnimElem=1
x=38

[State 1240,Position]
type=PosAdd
triggerall=P2BodyDist X > 10
trigger1=AnimElem=3
x=24

[State 1240,Position]
type=PosAdd
triggerall=P2BodyDist X > 10
trigger1=AnimElem=5
x=20

[State 1240,Shake]
type=EnvShake
trigger1=Pos Y >= 0&&Vel Y > 0
persistent=0
time=25
ampl=8
ignorehitpause=1

[State 1240,Sound]
type=PlaySnd
trigger1=Pos Y >= 0&&Vel Y > 0
persistent=0
value=52,0

[State 1240,End]
type=ChangeState
trigger1=Pos Y >= 0&&Vel Y > 0
value=5110

;---------------------------------------------------------------------
;System 1: Maxima Scramble EX
[Statedef 1170]
type=S
movetype=A
physics=S
velset=0,0
ctrl=0
poweradd=-500
juggle=2
facep2=1
anim=1102

[State 1500, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
pos = -20,10
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 0, PosSet]
type=PosSet
trigger1 =!time
y=0

[State 1110, VarSet]
type = VarSet
trigger1 =!time
var(10) = 3
ignorehitpause = 1
[State 1110, MAX Timer Drain]
type=VarAdd
trigger1=!Time
trigger1=var(20) > 0
var(20)=-250
[State 1110, Custom Combo Juggle Reset]
type=VarSet
trigger1=!Time && var(20)
var(15)=0
ignoreHitPause=1
[State 1110, EX Flash]
type=VarSet
trigger1=!Time
var(25)=30
[State 1110, EX FX]
type=Explod
trigger1 = AnimElemTime(1) = 0
anim=8210
sprPriority=3
posType=p1
pos=6, -110
scale=0.5, 0.5
pauseMoveTime=-1
superMoveTime=-1
bindtime = -1
ownPal=1
[State -3, EX Flash]
type=PalFX
trigger1=!(GameTime % 2)
time=1
color=0
mul=256, 224, 0
add=128, 128, 128
ignoreHitPause=1
[State 1110, EX-SND]
type=PlaySnd
trigger1 =!time
value=0,1000
channel=3

[State 1200,SuperArmor]
type=ReversalDef
trigger1=P2MoveType != H&&animelemtime(2)>=0&&animelemtime(5)<0
persistent=1
attr=S, SA
reversal.attr=SCA,NA,SA,NP,SP
numhits=0
getpower=0
givepower=15
pausetime=1,4
sparkno=s-1
sparkxy=10,-30
hitsound=S-1

[State 0, VelSet]
type=VelSet
trigger1=Animelem=2
x=3+1*var(10)
[State 0, VelSet]
type=VelSet
trigger1=Animelem=5
x=0

[State xxx, Explod]
type=Explod
trigger1=Time=0
anim=2224
ID=2224
pos=-30,20
postype=p1
facing=1
vfacing=1
bindtime=1
scale=1,1
sprpriority=0
ontop=1
ownpal=1
removeongethit=1
ignorehitpause=1
persistent=1
supermovetime=9999
pausemovetime= 9999

[State 1100,Sound]
type=PlaySnd
trigger1=Time=0
value=1100, 0
channel=1
[State 1100,Sound]
type=PlaySnd
trigger1=Time=0
value=1,2
channel=2

[State 1100,VarInitialize]
type=VarSet
trigger1=!time
var(1)=0
[State 1100,VarSet]
type=VarSet
trigger1=!AILevel&&animelemtime(4)>=0&&animelemtime(6)<=5
trigger1=Command="x"||Command="y"||Command="z"
trigger2=AILevel&&animelemtime(4)>=0&&animelemtime(6)<=5&&movehit
var(1)=1

[State 1100,Attack]
type=HitDef
trigger1=AnimElem=5
attr=S, SA
animtype =Heavy
damage =50+5*var(10), 8
getpower=0
givepower=20
guardflag=MA
hitflag=MAF
pausetime=8,20
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkxy=-15+ 0 * (var(35) := 90), var(36):=-72
hitsound=S2+10*var(44),1
guardsound=S3,0
ground.type=Low
ground.slidetime=12
ground.hittime =28
guard.hittime = (28) - 6
ground.velocity=-7
air.velocity=-6.5,-3.2
forcestand=1
envshake.time=10
envshake.ampl=5

[State 1100,ChangeState]
type=ChangeState
trigger1=AnimElem=6&&Var(1)=1
value=1171

[State 1100,End]
type=ChangeState
trigger1=!AnimTime
value=0
ctrl=1
;---------------------------------------
;System Select 2-1
[Statedef 1171]
type=S
movetype=A
physics=S
velset=0, 0
anim=1110
ctrl=0
poweradd=0
juggle=1
facep2=1

[State 1500, Dust Helper]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
pos = 0,10
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State -3, EX Flash]
type=PalFX
trigger1=!(GameTime % 2)
time=1
color=0
mul=256, 224, 0
add=128, 128, 128
ignoreHitPause=1

[State 0, VarSet]
type = VarSet
trigger1 =!time
var(2)=Ifelse(enemynear,Movetype=H,1,0)
ignorehitpause =1

[State 0, PosSet]
type=PosSet
trigger1 =!time
y=0
[State xxx, VarSet]
type=VarSet
trigger1 =!AILevel&& !time
var(10)=3
ignorehitpause=1
[State xxx, VarSet]
type=VarSet
trigger1 =AILevel&& !time
var(10)=3
ignorehitpause=1

[State 0, VelSet]
type=VelSet
trigger1=Animelem=4
x=2+1*var(10)
[State 0, VelSet]
type=VelSet
trigger1=Animelem=8
x=0

[State xxx, Explod]
type=Explod
trigger1=Time=0
anim=2224
ID=2224
pos=-30,20
postype=p1
facing=1
vfacing=1
bindtime=1
scale=1,1
sprpriority=0
ontop=1
ownpal=1
removeongethit=1
ignorehitpause=1
persistent=1
supermovetime=9999
pausemovetime= 9999

[State 1100,Sound]
type=PlaySnd
trigger1=AnimElem=8
value=1100, 1
channel=1
[State 1100,Sound]
type=PlaySnd
trigger1=AnimElem=11
value=1100, 2
channel=2
[State 1100,Sound]
type=PlaySnd
trigger1=AnimElem=6
trigger2=AnimElem=9
value=1,2
channel=3

[State 1100,VarInitialize]
type=VarSet
trigger1=!time
var(1)=0
[State 1100,VarSet]
type=VarSet
trigger1=!AILevel&&animelemtime(8)>=0&&animelemtime(11)<=5
trigger1=Command="x"||Command="y"||Command="z"
var(1)=2
[State 1100,VarSet]
type=VarSet
trigger1=AILevel&&animelemtime(8)>=0&&animelemtime(11)<=5&&Movehit
var(1)=2

[State 1110,Position]
type=PosAdd
triggerall=P2BodyDist X > 10
trigger1=AnimElem=3
trigger2=AnimElem=4
x=20
[State 1110,Position]
type=PosAdd
trigger1=AnimElem=7
trigger1=P2BodyDist X > 15
x=43
[State 1110,Position]
type=PosAdd
trigger1=AnimElem=13
x=3

[State 1110,Attack]
type=HitDef
trigger1=Animelem=8
attr=S, SA
animtype =Heavy
damage =Ifelse(var(2),20,40)+2*var(10), 4
getpower=0
givepower=5
guardflag=MA
hitflag=MAF
pausetime=10,13
sparkno= -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkxy=-15+ 0 * (var(35) := 90), var(36):=-69
hitsound=S2+10*var(44),1
guardsound=S3,0
ground.type=Low
ground.slidetime=12
ground.hittime =20
guard.hittime = (20) - 6
ground.velocity=-3
air.velocity=-4.5,-3.2
guard.velocity=-5
envshake.time=10
envshake.ampl=5

[State 1110,Attack]
type=HitDef
trigger1=AnimElem=11
attr=S, SA
animtype =Heavy
damage =Ifelse(var(2),20,40)+2*var(10), 4
getpower=0
givepower=5
guardflag=MA
hitflag=MAF
pausetime=8,24
sparkno=s8710+(random%8)
guard.sparkno=S13351
sparkxy=-15,-71
hitsound=S2+10*var(44),1
guardsound=S3,0
ground.type=High
ground.slidetime=12
ground.hittime =20
guard.hittime = (20) - 6
ground.velocity=-3
air.velocity=-4.5,-3.2
guard.velocity=-5
envshake.time=10
envshake.ampl=5

[State 1110,ChangeState]
type=ChangeState
trigger1=AnimElem=12&&Var(1)=2
value=1172

[State 1110,End]
type=ChangeState
trigger1=AnimTime=0
value=0
ctrl=1
;---------------------------------------
;System Select 2-2
[Statedef 1172]
type=S
movetype=A
physics=S
velset=0, 0
anim=1115
ctrl=0
poweradd=0
juggle=1
facep2=1

[State 1500, Dust Helper]
type = Helper
trigger1 = AnimElem = 1
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
pos = -20,10
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State -3, EX Flash]
type=PalFX
trigger1=!(GameTime % 2)
time=1
color=0
mul=256, 224, 0
add=128, 128, 128
ignoreHitPause=1

[State 0, VarSet]
type = VarSet
trigger1 =!time
var(2)=Ifelse(enemynear,Movetype=H,1,0)
ignorehitpause =1

[State 0, PosSet]
type=PosSet
trigger1 =!time
y=0
[State xxx, VarSet]
type=VarSet
trigger1 =!AILevel&& !time
var(10)=3
ignorehitpause=1
[State xxx, VarSet]
type=VarSet
trigger1 =AILevel&& !time
var(10)=3
ignorehitpause=1

[State 1210,Sound]
type=PlaySnd
trigger1=AnimElem=4
value=1,2
channel=1
[State 1210,Sound]
type=PlaySnd
trigger1=AnimElem=4
value=1200, 0
channel=2

[State 1100,VarInitialize]
type=VarSet
trigger1=!time
var(1)=0
[State 1100,VarSet]
type=VarSet
trigger1=!AILevel&&animelemtime(3)>=0&&animelemtime(5)<=5&&command="holdfwd"
trigger1=Command="a"||Command="b"||Command="c"
var(1)=1

[State 1210,Position]
type=PosAdd
trigger1=AnimElem=2
x=10+4*var(10)

[State 1210,Position]
type=PosAdd
triggerall=P2BodyDist X > 10
trigger1=AnimElem=3
trigger2=AnimElem=4
x=26

[State 1210,Position]
type=PosAdd
triggerall=P2BodyDist X > 10
trigger1=AnimElem=9
x=20

[State 1210,Position]
type=PosAdd
triggerall=P2BodyDist X > 15
trigger1=AnimElem=10
x=30

[State 1210,Position]
type=PosAdd
triggerall=P2BodyDist X > 10
trigger1=AnimElem=11
x=19

[State 1210,Attack]
type=HitDef
trigger1=Time=0
attr=S, SA
animtype =Heavy
damage =0
getpower=0
givepower=5
guardflag=MA
hitflag=MAF
numhits=0
guard.pausetime=12,15
sparkno= -1
guard.sparkNo = -1
sparkxy=-10+ 0 * (var(35) := 90), var(36):=9999
hitsound=S2,800
guardsound=S3,0
ground.type=Low
ground.slidetime=12
ground.hittime =20
guard.hittime = (20) - 6
ground.velocity=-5
air.velocity=-4.5,-3.2
p2facing=1
p1stateno=1135
p2stateno=1136
p2getp1state=1
hitonce=1
envshake.time=10
envshake.ampl=5

[State 1100, HitSpark]
type=Helper
trigger1=moveguarded=1 && numtarget
trigger1=(enemynear, movetype=H) && !(target, time)
helperType=Normal
stateNo=8001
ID=8000
name="GuardSpark"
pos= ceil(p2dist x),ceil(p2dist y-73)
facing=-1
ownPal=1
size.xScale=1
size.yScale=1
pauseMoveTime=65535
superMoveTime=65535
ignoreHitPause=1
persistent=4

[State 1210,ChangeState]
type=ChangeState
triggerall=AnimElem=6
trigger1=!AILevel&&Var(1)=1
trigger2=AILevel
value=1150

[State 1210,End]
type=ChangeState
trigger1=AnimTime=0
value=0
ctrl=1

;---------------------------------------------------------------------
;M-11 Type: Dangerous Arch
[Statedef 1200]
type=S
movetype=A
physics=S
velset=0, 0
poweradd=72 * !var(20)
juggle=4
ctrl=0
facep2=1

[State 0, PosSet]
type=PosSet
trigger1 =!time
y=0
[State 0, VarSet]
type = VarSet
trigger1 =!time
var(2)=Ifelse(enemynear,Movetype=H,1,0)
ignorehitpause =1

[State xxx, VarSet]
type=VarSet
trigger1 =!AILevel&& !time
var(10)=ifelse(command="a",0,ifelse(command="b",1,2))
ignorehitpause=1
[State xxx, VarSet]
type=VarSet
trigger1 =AILevel&& !time
var(10)=ifelse(random<300,1,2)
ignorehitpause=1

[State xxx, 1]
type=ChangeAnim
Trigger1=Time=0
value=1200
ignorehitpause=1

[State xxx, Explod]
type=Explod
trigger1=Time=0
anim=2224
ID=2224
pos=-30,20
postype=p1
facing=1
vfacing=1
bindtime=1
scale=1,1
sprpriority=0
ontop=1
ownpal=1
removeongethit=1
ignorehitpause=1
persistent=1
supermovetime=9999
pausemovetime= 9999

[State 1200,SuperArmor]
type=ReversalDef
trigger1=P2MoveType != H&&animelemtime(1)>=0&&animelemtime(4)<0
persistent=1
attr=S, SA
reversal.attr=SCA,NA,SA,NP,SP
numhits=0
getpower=10
givepower=15
pausetime=1,4
sparkno=s-1
sparkxy=10,-30
hitsound=S-1

[State 1210,Sound]
type=PlaySnd
trigger1=AnimElem=4
value=1,2
channel=1
[State 0, VelSet]
type=VelSet
trigger1=Animelem=4
x=0
[State 1200,Sound]
type=PlaySnd
trigger1=Time=0
value=1200,0
channel=0

[State 1200,Attack]
type=HitDef
trigger1=Animelem=4&&(P2StateNo !=[150,155])
attr=S, ST
hitflag=M
guardflag=None
numhits=0
sparkno=-1
p1facing=1
p2facing=1
p1stateno=1210
p2stateno=1220
p2getp1state=1
hitsound=S2,800
envshake.time=10
envshake.ampl=5
forcestand=1

[State 1200,End]
type=ChangeState
trigger1=!AnimTime
value=0
ctrl=1
;-----------------------------------------------
;Plex
[Statedef 1210]
type=S
movetype=A
physics=S
anim=1210
velset=0, 0
poweradd= ifElse(var(10)=3, 0, 30 * !var(20))
ctrl=0

[State -3, EX Flash]
type=PalFX
triggerall=var(10)=3
trigger1=!(GameTime % 2)
time=1
color=0
mul=256, 224, 0
add=128, 128, 128
ignoreHitPause=1

[State 1210,Position]
type=PosAdd
trigger1=Time=0
trigger1=BackEdgeBodyDist <= 30
x=35

[State 1210,Freeze]
type=PosFreeze
trigger1=Time > 0

[State 1210,TargetLifeAdd]
type=TargetLifeAdd
trigger1=AnimElem=2
value = -50 - (var(10) * 8)
kill=0
[State 1210,Shake]
type=EnvShake
trigger1=AnimElem=2
time=10
ampl=5
ignorehitpause=1

[State 0, HitAdd]
type=HitAdd
trigger1=animelem=2
trigger2=animelem=8
value=1

[State 1210,TargetBind]
type=TargetBind
trigger1=AnimElem=1
pos=57,-72
time=10

[State 1210,TargetBind]
type=TargetBind
trigger1=AnimElem=2
pos=30,-82
time=22

[State 1210,TargetBind]
type=TargetBind
trigger1=AnimElem=3
pos=45,-74
time=9

[State 1210,TargetBind]
type=TargetBind
trigger1=AnimElem=4
pos=45,-70
time=7

[State 1210,TargetBind]
type=TargetBind
trigger1=AnimElem=5
pos=37,-79
time=5

[State 1210,TargetBind]
type=TargetBind
trigger1=AnimElem=6
pos=5,-100
time=3

[State 1210,TargetBind]
type=TargetBind
trigger1=AnimElem=7
pos=-32,-76
time=2

[State 1210,TargetBind]
type=TargetBind
trigger1=AnimElem=8
pos=-58,-20
time=15

[State 1210,Sound]
type=PlaySnd
trigger1=AnimElem=1
value = 2,800

[State 1100, HitSpark]
type=Helper
trigger1=AnimElem=2
helperType=Normal
stateNo=8005
ID=8000
name="Spark"
pos=40,-75
postype=p1
facing=-1
ownPal=1
size.xScale=1
size.yScale=1
pauseMoveTime=65535
superMoveTime=65535
ignoreHitPause=1
persistent=4
[State 1210,Sound]
type=PlaySnd
trigger1=AnimElem=2
value = 2,850
channel=2

[State 3231, Dust]
type=helper
trigger1= animelem=8
helpertype=normal
stateno=8110
ID=32310
name="Impact Dust"
postype=p1
pos= -80,10
ownpal=1

[State 1210,TargetLifeAdd]
type=TargetLifeAdd
trigger1=AnimElem=8
value=-70

[State 1210,Sound]
type=PlaySnd
trigger1=AnimElem=6
value=1200, 1
channel=1
[State 1210,Sound]
type=PlaySnd
trigger1=AnimElem=8
value=S2+10*var(44),2
channel=2
[State 1210,Shake]
type=EnvShake
trigger1=AnimElem=8
time=30
ampl=6
ignorehitpause=1

[State 1210,Turn]
type=Turn
trigger1=AnimTime=0

[State 1210,End]
type=ChangeState
trigger1=AnimTime=0
value=0
ctrl=1

;-------------------------------------------------------
;Target
[Statedef 1220]
type=A
movetype=H
physics=N
velset=0, 0
ctrl=0

[State 1220,Anim]
type=ChangeAnim2
trigger1=Time=0
value=1220
[State 0, ScreenBound]
type = ScreenBound
trigger1 =1
value = 1
movecamera = 1,0

[State 1220,NoTurn]
type=AssertSpecial
trigger1=AnimElem=6, < 0
flag=NoAutoTurn

[State 1220,Turn]
type=Turn
trigger1=AnimElem=6

[State 1220,Velocity]
type=VelSet
trigger1=AnimElem=6
x=-4.0
y=-3.8

[State 1220,Accel]
type=VelAdd
trigger1=AnimElem=6, > 0
y=.43

[State 1220,SelfState]
type=SelfState
trigger1=Vel Y > 0
trigger1=Pos Y >= 0
value=5110

;---------------------------------------------------------------------
;M-11 Type: Dangerous Arch EX
[Statedef 1250]
type=S
movetype=A
physics=S
velset=0, 0
poweradd=-500
juggle=4
ctrl=0
facep2=1
anim=1200

[State 0, PosSet]
type=PosSet
trigger1 =!time
y=0
[State 0, VarSet]
type = VarSet
trigger1 =!time
var(2)=Ifelse(enemynear,Movetype=H,1,0)
ignorehitpause =1

[State 1110, VarSet]
type = VarSet
trigger1 =!time
var(10) = 3
ignorehitpause = 1
[State 1110, MAX Timer Drain]
type=VarAdd
trigger1=!Time
trigger1=var(20) > 0
var(20)=-250
[State 1110, Custom Combo Juggle Reset]
type=VarSet
trigger1=!Time && var(20)
var(15)=0
ignoreHitPause=1
[State 1110, EX Flash]
type=VarSet
trigger1=!Time
var(25)=30
[State 1110, EX FX]
type=Explod
trigger1 = AnimElemTime(1) = 0
anim=8210
sprPriority=3
posType=p1
pos=6, -110
scale=0.5, 0.5
pauseMoveTime=-1
superMoveTime=-1
bindtime = -1
ownPal=1
[State -3, EX Flash]
type=PalFX
trigger1=!(GameTime % 2)
time=1
color=0
mul=256, 224, 0
add=128, 128, 128
ignoreHitPause=1
[State 1110, EX-SND]
type=PlaySnd
trigger1 =!time
value=0,1000
channel=3

[State xxx, Explod]
type=Explod
trigger1=Time=0
anim=2224
ID=2224
pos=-30,20
postype=p1
facing=1
vfacing=1
bindtime=1
scale=1,1
sprpriority=0
ontop=1
ownpal=1
removeongethit=1
ignorehitpause=1
persistent=1
supermovetime=9999
pausemovetime= 9999

[State 1200,SuperArmor]
type=ReversalDef
trigger1=P2MoveType != H&&animelemtime(1)>=0&&animelemtime(4)<0
persistent=1
attr=S, SA
reversal.attr=SCA,NA,SA,NP,SP
numhits=0
getpower=0
givepower=15
pausetime=1,4
sparkno=s-1
sparkxy=10,-30
hitsound=S-1

[State 1210,Sound]
type=PlaySnd
trigger1=AnimElem=4
value=1,2
channel=1
[State 0, VelSet]
type=VelSet
trigger1=Animelem=4
x=0
[State 1200,Sound]
type=PlaySnd
trigger1=Time=0
value=1200,0
channel=0

[State 1200,Attack]
type=HitDef
trigger1=Animelem=4&&(P2StateNo !=[150,155])
attr=S, ST
hitflag=M
guardflag=None
numhits=0
sparkno=-1
p1facing=1
p2facing=1
p1stateno=1210
p2stateno=1220
p2getp1state=1
hitsound=S2,800
envshake.time=10
envshake.ampl=5
forcestand=1

[State 1200,End]
type=ChangeState
trigger1=!AnimTime
value=0
ctrl=1

;---------------------------------------------------------------------
;M-19 Type: Blitz Cannon
[Statedef 1300]
type =S
movetype= A
physics=N
velset=0,0
ctrl=0
anim=1300
sprpriority=2
poweradd=72
facep2=1

[State 200, Snd]
type=playsnd
trigger1= !time
value= 4,1
channel=0

[State 0, PosSet]
type=PosSet
trigger1 =!time
y=0
[State 0, VarSet]
type = VarSet
trigger1 =!time
var(2)=Ifelse(enemynear,Movetype=H,1,0)
ignorehitpause =1
[State xxx, VarSet]
type=VarSet
trigger1 =!AILevel&& !time
var(10)=ifelse(command="a",0,ifelse(command="b",1,2))
ignorehitpause=1
[State xxx, VarSet]
type=VarSet
trigger1 =AILevel&& !time
var(10)=ifelse(random<300,1,2)
ignorehitpause=1

[State 1300,StatetypeSet]
type=StatetypeSet
trigger1=Animelem=3
statetype=A

[State 1300,VelSet]
type=VelSet
trigger1=Animelem=3
y=-8-1*var(10)
x=2+1*var(10)

[State 1300,VelSet]
type=VelSet
trigger1=Animelem=5
x=1

[State 1300,VelAdd]
type=VelAdd
trigger1=Animelem=3,>= 0
y=.5

[State 1300,HitDef]
type=HitDef
trigger1=Time=0
attr=A, ST
hitflag=AF
priority=7, Miss
sparkno=-1
sparkxy=0,0
sprpriority=1
p2facing=1
p1stateno=1310
p2stateno=1320
fall=1
fall.recover=0

[State 50, 5]
type=PlaySnd
trigger1=Animelem=2
value=s40,0
channel=1
[State 40, Dust]
type=helper
trigger1=Animelem=2
trigger2=Animelem=3
helpertype=normal
stateno=8100
ID=8100
name="JumpDust"
postype=p1
ownpal=1

[State 1300, End]
type=changestate
trigger1 = Pos Y >= 0 && Vel Y > 0
value=52
;---------------------------------------------------------------------------
;P1 States
[Statedef 1310]
type =A
movetype= A
ctrl=0
anim=1310
sprpriority=2
velset=0,0

[State 1310,Width]
type=Width
trigger1=1
value=30,-30

[State 1310,PlaySnd]
type=PlaySnd
trigger1=Time=0
value=s2,800
channel=1
ignorehitpause=1

[State 1310,PlaySnd]
type=PlaySnd
trigger1=AnimElem=3
value=s1000,0
channel=0
[State 1310,PlaySnd]
type=PlaySnd
trigger1=AnimElem=5
value=s1000,1
channel=1
[State 1000,Sound]
type=PlaySnd
trigger1=AnimElem=6
value=s2,6
channel=2
;---------------------------
[State 1310, TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 27,-60

[State 1310, TargetBind]
type = TargetBind
trigger1 = AnimElem = 2
pos = 27,-60

[State 1310, TargetBind]
type = TargetBind
trigger1 = AnimElem = 3
pos = 27,-60

[State 1310, TargetBind]
type = TargetBind
trigger1 = AnimElem = 4
pos = 35,-5

[State 1310,TargetVelSet]
type=TargetVelSet
trigger1=AnimElem=8
x=-25
y=12

[State 1310,VelSet]
type=VelSet
trigger1=Animelem=2
y=-5

[State 1310,VelSet]
type=VelSet
trigger1=Animelem=2
x=3.5

[State 1310,VelAdd]
type=VelAdd
trigger1=Time=[13,22]
y=.5

[State 1310,VelSet]
type=VelSet
trigger1=Animelem=3
x=0
y=0

[State 1310,VelAdd]
type=VelAdd
trigger1=AnimElem=9,>=0
y=.56

[State 0, HitAdd]
type=HitAdd
trigger1=animelem=6
value=1

[State 1100, HitSpark]
type=Helper
trigger1=AnimElem=6
helperType=Normal
stateNo=8005
ID=8000
name="Spark"
pos=10,-70
postype=p2
facing=-1
ownPal=1
size.xScale=1
size.yScale=1
pauseMoveTime=65535
superMoveTime=65535
ignoreHitPause=1
persistent=4


[State 0, Helper]
type = Helper
trigger1=animelem=5
helpertype = normal ;player
name ="Vapor"
ID =1305
stateno =1305
pos = 0,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal =1
size.xscale =.575
size.yscale =.525

[State 1310,TargetLifeAdd]
type=TargetLifeAdd
trigger1=animelem=6
value=Ifelse(var(2),-30-8*var(10),-122)-4*var(10)
absolute=1
persistent=0

[State 1300, End]
type=changestate
trigger1 = Pos Y >= 0 && Vel Y > 0
value=52
;---------------------------------------------------------------------------
;P2 States
[Statedef 1320]
type =A
movetype= H
ctrl=0
velset=0,0
sprpriority=-1

[State 1320,ChangeAnim2]
type=ChangeAnim2
trigger1=!Time
value=1320

[State 1320,VelSet]
type=VelSet
trigger1=Animelem=2
y=-5

[State 1320,VelSet]
type=VelSet
trigger1=Animelem=2
x=-3.5

[State 1320,VelAdd]
type=VelAdd
trigger1=Time=[13,22]
y=.5

[State 1320,VelSet]
type=VelSet
trigger1=Animelem=3
x=0
y=0

[State 1320,VelSet]
type=VelSet
trigger1=Vel Y > 0 && Pos Y >= 0
x=-2

[State 1320,EnvShake]
type=EnvShake
trigger1=Vel Y > 0 && Pos Y >= 0
time=25
ampl=-5

[State 1320,SelfState]
type=SelfState
trigger1=Vel Y > 0 && Pos Y >= 0
value=5100

;---------------------------------------------------------------------
;M-19 Type: Blitz Cannon EX
[Statedef 1350]
type =S
movetype= A
physics=N
velset=0,0
ctrl=0
anim=1300
sprpriority=2
poweradd=-500
facep2=1

[State 200, Snd]
type=playsnd
trigger1= !time
value= 4,1
channel=0

[State 0, PosSet]
type=PosSet
trigger1 =!time
y=0
[State 0, VarSet]
type = VarSet
trigger1 =!time
var(2)=Ifelse(enemynear,Movetype=H,1,0)
ignorehitpause =1

[State 1110, VarSet]
type = VarSet
trigger1 =!time
var(10) = 3
ignorehitpause = 1
[State 1110, MAX Timer Drain]
type=VarAdd
trigger1=!Time
trigger1=var(20) > 0
var(20)=-250
[State 1110, Custom Combo Juggle Reset]
type=VarSet
trigger1=!Time && var(20)
var(15)=0
ignoreHitPause=1
[State 1110, EX Flash]
type=VarSet
trigger1=!Time
var(25)=30
[State 1110, EX FX]
type=Explod
trigger1 = AnimElemTime(1) = 0
anim=8210
sprPriority=3
posType=p1
pos=6, -110
scale=0.5, 0.5
pauseMoveTime=-1
superMoveTime=-1
bindtime = -1
ownPal=1
[State -3, EX Flash]
type=PalFX
trigger1=!(GameTime % 2)
time=1
color=0
mul=256, 224, 0
add=128, 128, 128
ignoreHitPause=1
[State 1110, EX-SND]
type=PlaySnd
trigger1 =!time
value=0,1000
channel=3


[State xxx, Explod]
type=Explod
trigger1=!time
anim=2224
ID=2224
pos=-30,20
postype=p1
facing=1
vfacing=1
bindtime=1
scale=1,1
sprpriority=0
ontop=1
ownpal=1
removeongethit=1
ignorehitpause=1
persistent=1
supermovetime=9999
pausemovetime= 9999

[State 50, 5]
type=PlaySnd
trigger1=time=0
value=s40,0
channel=1
[State 40, Dust]
type=helper
trigger1= !animtime
helpertype=normal
stateno=8200
ID=8200
name="JumpDust"
postype=p1
ownpal=1

[State 1300,StatetypeSet]
type=StatetypeSet
trigger1=Animelem=3
type=A

[State 1300,VelSet]
type=VelSet
trigger1=Animelem=3
y=-8-1*var(10)
x=2+1*var(10)
[State 1300,VelSet]
type=VelSet
trigger1=Animelem=5
x=0

[State 1300,VelAdd]
type=VelAdd
trigger1=Animelem=3,>= 0
y=.5

[State 1300,HitDef]
type=HitDef
trigger1=Time=0
attr=A, ST
hitflag=AF
priority=7, Miss
sparkno=-1
sparkxy=0,0
sprpriority=1
p2facing=1
p1stateno=1310
p2stateno=1320
fall=1
fall.recover=0

[State 50, 5]
type=PlaySnd
trigger1=Animelem=2
value=s40,0
channel=1
[State 40, Dust]
type=helper
trigger1=Animelem=2
trigger2=Animelem=3
helpertype=normal
stateno=8100
ID=8100
name="JumpDust"
postype=p1
ownpal=1

[State 1300, End]
type=changestate
trigger1 = Pos Y >= 0 && Vel Y > 0
value=52

;---------------------------------------------------------------------------
;Maxima Lift
[Statedef 1500]
type = S
movetype= A
physics = N
juggle = 8
poweradd= 121
velset = 0,0
ctrl = 0
anim = 1500
sprpriority = 2


[State xxx, VarSet]
type=VarSet
trigger1 =!AILevel&& !time
var(10)=ifelse(command="a",0,ifelse(command="b",1,2))
ignorehitpause=1
[State xxx, VarSet]
type=VarSet
trigger1 =AILevel&& !time
var(10)=ifelse(random<300,1,2)
ignorehitpause=1
;----------------------------------
[State 200]
type = PlaySnd
trigger1 = animelem = 3
value = 1500,0
channel = 0
volume = 150

[State 640]
type = PlaySnd
trigger1 = animelem = 4
value = 1500,1
channel = 1
volume = 100

[State 1000, PosAdd]
type = PosAdd
trigger1 = animelem = 3
x = 15

[State 1040, VelSet]
type = VelSet
trigger1 = AnimElemTime(4)>=0
trigger1 = AnimElemTime(6)<0
x = 7+1*var(10)

[State 1040, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 801, Explod];??
type = Explod
trigger1 = animelem = 4
anim = 1550
ID = 1550
pos = -14, 3
postype = p1
facing = 1
sprpriority = 1
ownpal = 1
removeongethit = 1
vel = 8,0

[State 800, ??????]
type = ChangeState
trigger1 = animelemtime(4)>=0
trigger1 = animelemtime(7)<0
Trigger1 = p2bodydist x <= 20
value = 1501


[State 1500, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 800, ??????]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;SYSTEM3
[Statedef 1501]
type = S
movetype= A
physics = S
juggle = 8
poweradd= 0
velset = 0,0
ctrl = 0
anim = 1501
sprpriority = 2

[State 1000, PosAdd]
type = PosAdd
trigger1 = animelem = 3
x = 22

[State 1500, RemoveExplod]
type = RemoveExplod
trigger1 = time = 0
id = 1550

[State 800]
type = HitDef
trigger1 = Time = 0
trigger1 = P2StateNo != [150,155]
attr=S, SA
animtype =Heavy
damage =0
getpower=0
givepower=5
hitflag=MAF
numhits=0
guard.pausetime=12,15
sparkno= -1
guard.sparkNo = -1
sparkxy=-10+ 0 * (var(35) := 90), var(36):=9999
hitsound=S2,800
guardsound=S3,0
ground.type=Low
ground.slidetime=12
ground.hittime =20
guard.hittime = (20) - 6
ground.velocity=-5
air.velocity=-4.5,-3.2
p2facing=1
p1stateno = 1510
p2stateno = 1136
p2getp1state=1
hitonce=1
numhits = 0

[State 800]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------
;System Select Throw
[Statedef 1510]
type=S
movetype=A
physics=N
velset=0, 0
ctrl=0
anim=1135

[State -3, EX Flash]
type=PalFX
triggerall=var(10)=3
trigger1=!(GameTime % 2)
time=1
color=0
mul=256, 224, 0
add=128, 128, 128
ignoreHitPause=1

[State 1130,Freeze]
type=PosFreeze
trigger1=AnimElem=10, < 0

[State 1220,Muteki]
type=NotHitBy
trigger1=1
value=SCA

[State 1100,VarInitialize]
type=VarSet
trigger1=!time
var(1)=0
[State 1100,VarSet]
type=VarSet
trigger1=animelemtime(7)>=0&&animelemtime(10)<=0&&command="holdfwd"
trigger1=Command="a"||Command="b"||Command="c"
var(1)=1

[State 1220,TargetBind]
type=TargetBind
trigger1=AnimElem=1
pos=44, 0
time=15

[State 1220,TargetBind]
type=TargetBind
trigger1=AnimElem=2
pos=48,-108
time=5

[State 1220,TargetBind]
type=TargetBind
trigger1=AnimElem=3
pos=31,-126
time=5

[State 1220,TargetBind]
type=TargetBind
trigger1=AnimElem=4
pos=28,-123
time=5

[State 1220,TargetBind]
type=TargetBind
trigger1=AnimElem=5
pos=25,-115
time=5

[State 1220,TargetBind]
type=TargetBind
trigger1=AnimElem=6
pos=21,-103
time=5

[State 1220,TargetBind]
type=TargetBind
trigger1=AnimElem=7
pos=33,-89
time=3

[State 1220,TargetBind]
type=TargetBind
trigger1=AnimElem=8
pos=54,-50
time=6

[State 1100, HitSpark]
type=Helper
trigger1=AnimElem=8
helperType=Normal
stateNo=8005
ID=8000
name="Spark"
pos= 53,-44
facing=-1
ownPal=1
size.xScale=1
size.yScale=1
pauseMoveTime=65535
superMoveTime=65535
ignoreHitPause=1
persistent=4

[State 0, HitAdd]
type = HitAdd
trigger1=AnimElem=8
value=1

[State 1220,TargetLifeAdd]
type=TargetLifeAdd
trigger1=AnimElem=8
value=-120-4*var(10)

[State 1220,Sound]
type=PlaySnd
trigger1=AnimElem=8
value=S2+10*var(44),5
channel=1
[State 1220,Shake]
type=EnvShake
trigger1=AnimElem=8
time=25
ampl=6
ignorehitpause=1

[State 1220,Position]
type=PosAdd
trigger1=AnimElem=10
x=17

[State 1220,Position]
type=PosAdd
trigger1=AnimElem=11
x=20

[State 1220,Position]
type=PosAdd
trigger1=AnimElem=12
x=30

[State 1220,Position]
type=PosAdd
trigger1=AnimElem=13
x=19

[State 1210,ChangeState]
type=ChangeState
triggerall=AnimElem=10
trigger1=Var(1)=1
trigger2=AILevel
value=1150

[State 1220,End]
type=ChangeState
trigger1=AnimTime=0
value=0
ctrl=1


;---------------------------------------------------------------------------
;Maxima Lift EX
[Statedef 1550]
type = S
movetype= A
physics = N
juggle = 8
poweradd= -500
velset = 0,0
ctrl = 0
anim = 1500
sprpriority = 2


[State 1110, VarSet]
type = VarSet
trigger1 =!time
var(10) = 3
ignorehitpause = 1
[State 1110, MAX Timer Drain]
type=VarAdd
trigger1=!Time
trigger1=var(20) > 0
var(20)=-250
[State 1110, Custom Combo Juggle Reset]
type=VarSet
trigger1=!Time && var(20)
var(15)=0
ignoreHitPause=1
[State 1110, EX Flash]
type=VarSet
trigger1=!Time
var(25)=30
[State 1110, EX FX]
type=Explod
trigger1 = AnimElemTime(1) = 0
anim=8210
sprPriority=3
posType=p1
pos=6, -110
scale=0.5, 0.5
pauseMoveTime=-1
superMoveTime=-1
bindtime = -1
ownPal=1
[State -3, EX Flash]
type=PalFX
trigger1=!(GameTime % 2)
time=1
color=0
mul=256, 224, 0
add=128, 128, 128
ignoreHitPause=1
[State 1110, EX-SND]
type=PlaySnd
trigger1 =!time
value=0,1000
channel=3
;----------------------------------
[State 200, ?????]
type = PlaySnd
trigger1 = animelem = 3
value = 1200, 0
channel = 0
volume = 150

[State 640, ?????];???
type = PlaySnd
trigger1 = animelem = 4
value = 1500, 0
volume = 100

[State 1000, PosAdd]
type = PosAdd
trigger1 = animelem = 3
x = 15

[State 1040, VelSet]
type = VelSet
trigger1 = AnimElemTime(4)>=0
trigger1 = AnimElemTime(6)<0
x = 7+1*var(10)

[State 1040, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 801, Explod];??
type = Explod
trigger1 = animelem = 4
anim = 1550
ID = 1550
pos = -14, 3
postype = p1
facing = 1
sprpriority = 1
ownpal = 1
removeongethit = 1
vel = 8,0

[State 1500, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 800, ??????]
type = ChangeState
trigger1 = animelemtime(4)>=0
trigger1 = animelemtime(7)<0
Trigger1 = p2bodydist x <= 20
value = 1501

[State 800, ??????]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

