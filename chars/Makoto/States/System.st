;***************************************************************************;
;******************************* System State ******************************;
;***************************************************************************;
;***************************************************************************;

;----------------------------------------------------------------------------
; Dodge Roll Forward
[Statedef 700]
type = S
physics = N
movetype= I
anim = 700
ctrl = 0
velset = 0,0
sprpriority = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S1,0
volume = 255
channel = -1

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 2
value = S200,1
volume = 255
channel = -1

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 2
value = S210,1
volume = 255
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S0,5
volume = 0
channel = -1

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 20
value = 20,0

[State 3001, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 810, Velocity]
type = VelSet
trigger1 = AnimElem = 2
x = 6.9

[State 810, Velocity]
type = VelSet
trigger1 = AnimElem = 10
x = 0

[State 810, HitBy]
type = HitBy
trigger1 = time <= 20
value = SCA, NT,ST,HT

[State 810, Push]
type = PlayerPush
trigger1 = AnimElemTime(2) > 0 && AnimElemTime(9) < 0
value = 0

[State 810, AfterImage]
type = Afterimage
triggerall = var(20)<=0
trigger1 = AnimElem = 3
time = 15
timegap=1
framegap=4
length=9
palbright=0,0,0
palcontrast=128,128,128
palpostbright=0,0,0
paladd=0,0,0
palmul=.9,.9,.9
trans=add1

[State 0, Explod]
type = Explod
trigger1 = animtime = 0
anim = 9741
ID = 700
removetime = 5
supermovetime =0
pausemovetime =9999
removeongethit = 1
ignorehitpause = 1

[State 0, CtrlSet]
type = CtrlSet
trigger1 = Animelem = 17,1
value = 1

[State 810, StateChange]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------------
; Dodge Roll Back
[Statedef 701]
type = S
physics = N
movetype= I
anim = 700
ctrl = 0
velset = 0,0
sprpriority = -1

[State 0, Turn]
type = Turn
trigger1 = time = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S1,0
volume = 255
channel = -1

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 2
value = S200,1
volume = 255
channel = -1

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 2
value = S210,1
volume = 255
channel = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = S0,5
volume = 0
channel = -1

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 20
value = 20,0

[State 3001, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 810, Velocity]
type = VelSet
trigger1 = AnimElem = 2
x = 6.9

[State 810, Velocity]
type = VelSet
trigger1 = AnimElem = 10
x = 0

[State 810, HitBy]
type = HitBy
trigger1 = time <= 20
value = SCA, NT,ST,HT

[State 810, Push]
type = PlayerPush
trigger1 = AnimElemTime(2) > 0
value = 0

[State 810, AfterImage]
type = Afterimage
triggerall = var(20)<=0
trigger1 = AnimElem = 3
time = 15
timegap = 1
framegap = 4
length = 9
palbright = 0,0,0
palcontrast = 128,128,128
palpostbright = 0,0,0
paladd = 0,0,0
palmul = .9,.9,.9
trans = add1

[State 0, Explod]
type = Explod
trigger1 = animtime = 0
anim = 9741
ID = 700
removetime = 5
supermovetime =0
pausemovetime = 9999
removeongethit = 1
ignorehitpause = 1

[State 0, CtrlSet]
type = CtrlSet
trigger1 = Animelem = 17,1
value = 1

[State 810, StateChange]
type = Changestate
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;ZERO COUNTER>=
[StateDef 710]
type = S
physics = S
moveType = I
anim = 710
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = -1000
faceP2 = 1

[State 750, Button]
type = VarSet
trigger1 = !Time && !AILevel
var(39) = (command = "412k")
ignoreHitPause = 1

[State 750, Button (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(39) = ifElse((P2StateType = A), 0, ifElse((P2StateType = C), 1, ifElse(Random < 500, 0, 1)))
ignoreHitPause = 1

[State 750, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 750, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 750, Voice]
type = PlaySnd
trigger1 = !Time
value = 202,1
channel = 0

[State 750, Zero Counter FX Helper]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8350
ID = 8350
name = "Zero Counter"
posType = P1
pos = ceil(-20 * const(size.xScale)), ceil(-57 * const(size.yScale))
superMoveTime = 255
ownPal = 1

[State 750, SuperPause]
type = SuperPause
trigger1 = !Time
time = 15
moveTime = 15
p2DefMul = 1
anim = -1
sound = s750,0
darken = 0

[State 750, End]
type = ChangeState
trigger1 = Time >= 15
value = ifElse(var(39) = 1, 1510, 1500)

;----------------------------------------------------------------------------
; Side Step
[Statedef 730]
type = S
physics = S
movetype = I
anim = 730
ctrl = 0
velset = 0,0
sprpriority = -1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = S1,0
volume = 255
channel = -1

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 2
value = S200,0
volume = 255
channel = -1

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 2
value = S210,0
volume = 255
channel = -1

[State 220, Position]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 810, Push]
type = PlayerPush
trigger1 = 1
value = 0

[State 800, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NT,ST,HT

[State 800, AfterImage]
type = Afterimage
triggerall = var(20)<=0
trigger1 = AnimElem = 1
time = 15
timegap = 1
framegap = 4
length = 9
palbright = 0,0,0
palcontrast = 128,128,128
palpostbright = 0,0,0
paladd = 0,0,0
palmul = .9,.9,.9
trans = add1

[State 800, StateChange]
type = ChangeState
trigger1 = Animelem = 14,1
value = 0
ctrl = 1

;----------------------------------------------------------------------------
; Side Step Follow Up Punch
[Statedef 731]
type = S
movetype = A
physics = S
juggle = 5
poweradd = 18*!var(20)
ctrl = 0
anim = 731

[State 0, VelAdd]
type = Velset
triggerall = prevstateno != 100
trigger1 = time = 0
x = 0

[State 200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 1,2

[State 200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 13
value = 20,0

[State 240, 2]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = time = 1
value = s202,0+random%3
channel = 0
volume = 255

[State 240, 2]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = time = 1
value = s212,2+random%3
channel = 0
volume = 255

[State 225, hit]
type = hitdef
trigger1 = time = 0
attr = S,NA
damage = 84,0
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4,Hit
pausetime = 12,12
sparkno = -1 * (var(30):=7010)**0
guard.sparkno = -1 * (var(31):=7300)**0
sparkxy = -10 + 0*(var(32):=62), var(33):=-71
hitsound = s2,2
guardsound = s6,0
ground.type = High
ground.slidetime = 17
ground.hittime = 17
guard.hittime = (17) - 6
ground.velocity = -10,0
air.type = Low
air.hittime = 12
air.velocity = -9.5,0
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = .5
persistent = 0
givepower = 36,36
persistent = 0
air.fall = 1

[State 220, 5]
type = ChangeState
trigger1 = Animelem = 11,1
value = 0
ctrl = 1

;----------------------------------------------------------------------------
; Side Step Follow Up Kick
[Statedef 732]
type = S
movetype = A
physics = S
juggle = 5
poweradd = 18*!var(20)
ctrl = 0
anim = 732

[State 0, VelAdd]
type = Velset
triggerall = prevstateno != 100
trigger1 = time = 0
x = 0

[State 250, 1]
type = PlaySnd
trigger1 = time = 2
value = 1,5

[State 240, 2]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 2
value = s202,2
channel = 0
volume = 255

[State 240, 2]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 2
value = s212,1
channel = 0
volume = 255

[State 225, hit]
type = hitdef
trigger1 = time = 0
attr = S,NA
damage = 89,0
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 4,Hit
pausetime = 12,12
sparkno = -1 * (var(30):=7010)**0
guard.sparkno = -1 * (var(31):=7300)**0
sparkxy = -10 + 0*(var(32):=60), var(33):=-50
hitsound = s2,5
guardsound = s6,0
ground.type = High
ground.slidetime = 17
ground.hittime = 17
guard.hittime = (17) - 6
ground.velocity = -8.5,0
air.type = Low
air.hittime = 12
air.velocity = -6,-3
airguard.velocity = -6.67,-1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = .5
persistent = 0
givepower = 36,36
persistent = 0
fall = 1
air.fall = 1

[State 250, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------------
; Standing Parry
[Statedef 740]
type = S
physics = S
movetype = I
anim = 740
velset = 0,0
ctrl = 0
sprpriority = 2
poweradd = 70

[State 740, 1]
type = hitby
trigger1 = 1
value = SCA,AT
time = 1

[State 740, stop]
type = posfreeze
trigger1 = 1
value = 1

[State 700, pause]
type = pause
trigger1 = !time && numenemy
trigger1 = (enemynear,movehit=1)
time = ifelse((enemynear,hitpausetime=[0,15]), 15-(enemynear,hitpausetime), 0)
movetime = ifelse((enemynear,hitpausetime=[0,15]), 15-(enemynear,hitpausetime), 0)
endcmdbuftime = ifelse((enemynear,hitpausetime=[0,15]), 15-(enemynear,hitpausetime), 0)
pausebg = 0

[State 700, blueflash]
type = palfx
trigger1 = !time
add = 0,50,255
sinadd = 0,-50,-255,60
time = 15

[State 700, snd]
type = playsnd
trigger1 = !time
value = 75,1
volume = 255

[State 700, snd]
type = playsnd
triggerall = var(39) = 0
trigger1 = !time
value = 200,0
volume = 255

[State 700, snd]
type = playsnd
triggerall = var(39) = 1
trigger1 = !time
value = 210,0
volume = 255

[State 700, spark]
type = explod
trigger1 = animelem=2
anim = 7310
ID = 7310
sprpriority = 5
postype=p1
pos = 30,-75
pausemovetime = 60
ownpal = 1
scale = .5,.5

[State 700, nowalk]
type = assertspecial
trigger1 = 1
flag = nowalk

[State 700, end]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;----------------------------------------------------------------------------
; Crouching Parry
[Statedef 741]
type = C
physics = C
movetype = I
anim = 741
velset = 0,0
ctrl = 0
sprpriority = 2
poweradd = 75

[State 741, pause]
type = pause
trigger1 = !time
time = 10
movetime = 10

[State 741, nhb]
type = nothitby
trigger1 = time <= 10
time = 1
value = SCA

[State 741, stop]
type = posfreeze
trigger1 = time<=10
value = 1

[State 741, blueflash]
type = palfx
trigger1 = !time&&var(21)>=0
add = 0,50,255
sinadd = 0,-50,-255,60
time = 15

[State 741, redflash]
type = palfx
trigger1 = !time&&var(21)<0
add = 255,0,0
sinadd = -255,0,0,60
time = 15

[State 740, snd]
type = playsnd
trigger1 = !time
value = 75,1
volume = 255

[State 700, snd]
type = playsnd
triggerall = var(39) = 0
trigger1 = !time
value = 200,0
volume = 255

[State 700, snd]
type = playsnd
triggerall = var(39) = 1
trigger1 = !time
value = 210,0
volume = 255

[State 740, spark]
type = explod
trigger1= animelem=2
anim = 7310
ID = 7310
sprpriority = 5
postype = p1
pos = 25,-32
pausemovetime = 60
ownpal = 1
scale = .5,.5

[State 741, asserts]
type = assertspecial
trigger1 = 1
flag = nowalk
flag2 = nostandguard
flag3 = nocrouchguard

[State 741, ctrl]
type = ctrlset
trigger1 = time>10
value = 1

[State 741, end]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1

;----------------------------------------------------------------------------
; Aerial Parry
[Statedef 742]
type = A
physics = A
movetype = I
anim = 742
ctrl = 0
sprpriority = 2
poweradd = 80

[State 742, pause]
type = pause
trigger1 = !time
time = 10
movetime = 10

[State 742, nhb]
type = nothitby
trigger1 = time<=10
time = 1
value = SCA

[State 742, sts]
type = statetypeset
trigger1 = time<=10
physics = N

[State 742, stop]
type = posfreeze
trigger1 = time<=10
value = 1

[State 742, sts]
type = statetypeset
trigger1 = time>10
physics = A

[State 742, blueflash]
type = palfx
trigger1 = !time&&var(21)>=0
add = 0,50,255
sinadd = 0,-50,-255,60
time = 15

[State 742, redflash]
type = palfx
trigger1 = !time&&var(21)<0
add = 255,0,0
sinadd = -255,0,0,60
time = 15

[State 740, snd]
type = playsnd
trigger1 = !time
value = 75,1
volume = 255

[State 700, snd]
type = playsnd
triggerall = var(39) = 0
trigger1 = !time
value = 200,0
volume = 255

[State 700, snd]
type = playsnd
triggerall = var(39) = 1
trigger1 = !time
value = 210,0
volume = 255

[State 742, spark]
type = explod
trigger1 = animelem=1
anim = 7310
ID = 7310
sprpriority = 5
postype = p1
pos = 40,-66
pausemovetime = 60
ownpal = 1
scale = .5,.5

[State 742, asserts]
type = assertspecial
trigger1 = 1
flag = noairguard

[State 742, ctrl]
type = ctrlset
trigger1 = time>10
value = 1

;------------------------------------------------------------------
; Roll Recovery
[Statedef 750]
type = A
movetype = H
physics = N

[State 5220, anim]
type = changeanim
trigger1 = anim=5035 && !animtime
value = 5050

[State 5221, nhb]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 5220, vel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[State 5220, end]
type = selfstate
trigger1 = vel y>0 && pos y>=0
value = ifelse((command="holdfwd"),751,752)

;------------------------------------------------------------------
; Roll Recovery Back
[Statedef 751]
type = A
movetype= I
physics = N
juggle = 0
velset = 0,0
ctrl = 0
anim = 901
poweradd = 0
sprpriority = -1

[State 0, PosSet]
type = PosSet
trigger1 =1
y = 0

[State 5201, flash]
type = palfx
trigger1 = !time
add = 150,150,150
sinadd = -150,-150,-150,40
time = 10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S4000,10
volume = -100
channel = 7
freqmul = 3.0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S0,5
volume = 0
channel = 8

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 8
value = S100,0
volume = 0
channel = 9

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = Animelem = 8
statetype = S
movetype = I
physics = N

[State 810, Velocity]
type = VelSet
trigger1 = AnimElem = 2
x = -6.5

[State 810, Velocity]
type = VelSet
trigger1 = Animelem = 9
x = 0

[State 5221, nhb]
type = nothitby
trigger1 = Animelemtime(8) <= 1
value = SCA
time = 1

[State 5221, push]
type = playerpush
trigger1 = 1
value = 0

[State 200, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------
; Roll Recovery Forward
[Statedef 752]
type = A
movetype= I
physics = N
juggle = 0
velset = 0,0
ctrl = 0
anim = 900
poweradd = 0
sprpriority = -1

[State 0, PosSet]
type = PosSet
trigger1 =1
y = 0

[State 5201, flash]
type = palfx
trigger1 = !time
add = 255,255,255
sinadd = -255,-255,-255,40
time = 10

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S4000,10
volume = -100
channel = 7
freqmul = 3.0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = S0,5
volume = 0
channel = 8

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
trigger2 = animelem = 8
value = S100,0
volume = 0
channel = 9

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = Animelem = 8
statetype = S
movetype = I
physics = N

[State 810, Velocity]
type = VelSet
trigger1 = AnimElem =1
x = 6.5

[State 810, Velocity]
type = VelSet
trigger1 = Animelem = 9
x = 0

[State 5221, nhb]
type = nothitby
trigger1 = Animelemtime(8) <= 1
value = SCA
time = 1

[State 5221, push]
type = playerpush
trigger1 = 1
value = 0

[State 200, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------
; Tech Flip
[Statedef 760]
type = A
movetype = H
physics = N

[State 5205, vel]
type = velset
trigger1 = !time
trigger1 = pos y<-20 && vel y<-7
y = -7

[State 5205, end]
type=selfstate
trigger1=1
value= ifelse(pos y>=-20, 5200, 5210)

;----------------------------------------------------------------------------
; Dizzy FX
[Statedef 770]
physics = N
velset = 0,0
anim = 9999
sprpriority = 4

[State 7180, assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 7180, chicks]
type = explod
trigger1 = time = 0
anim = 7730
ID = 7730
sprpriority = 3
postype = p1
vel = 0,0
pos = 0,0
bindtime = 1000
random = 0,0
removetime = -1
scale = 1,1
ownpal = 1

[State 7180, pos]
type = posadd
trigger1 = 1
x = ceil(p2dist x)
;y=ceil(p2dist y)

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = enemynear,stateno !=[5300,5301];time>=(ifelse(enemynear,statetype != A ,30,120))
trigger2 = enemynear,ctrl || (enemynear,movetype!=H) || (enemynear,statetype=L)

[State 7180, end]
type = destroyself
trigger1 = enemynear,stateno !=[5300,5301];time>=(ifelse(enemynear,statetype != A ,30,120))
trigger2 = enemynear,ctrl || (enemynear,movetype!=H) || (enemynear,statetype=L)

;----------------------------------------------------------------------------
; Power Charge
[Statedef 780]
type = S
physics = S
movetype= I
anim = 780
ctrl = 0
velset = 0,0

[State 820, PowerAdd]
type = PowerAdd
triggerall = Anim = 780
trigger1 = 1
value =2*((time+20)/30)

[State 820, Voice]
type = Playsnd
triggerall = var(39) = 0
trigger1 = Anim = 780 && AnimElem = 2
value = 780,0
channel = 0

[State 820, Voice]
type = Playsnd
triggerall = var(39) = 1
trigger1 = Anim = 780 && AnimElem = 2
value = 790,0
channel = 0

[State 820, Voice]
type = Playsnd
trigger1 = Anim = 780 && AnimElem = 3
value = 780,1
volume = 200

[State 7420, dust]
type = helper
trigger1 = Anim = 780 && AnimElem = 3
helpertype = normal
stateno = 7420
ID = 7420
name = "Dust"
postype = p1
ownpal = 1
pos = 4,0
size.xscale = 1.4
size.yscale = 1.4

[State 780, flash]
type = palfx
trigger1 = 1 && AnimElem = 3
time = 1
add = 75+ceil(sin(time/6.0*pi)*75), 25+ceil(sin(time/6.0*pi)*25), 0

[State 3001, Super]
type = Helper
trigger1 = !NumHelper(8780)
trigger1 = AnimElem = 3
id = 8780
name = "Chargefx"
pos = 0,0
postype = P1
stateno = 8780
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 820, Anim]
type = ChangeState
triggerall = time >=20
trigger1 = var(59) != 1
trigger1 = (Command != "chargey" || Command != "chargeb" || (power >= 3000))
trigger2 = var(59) = 1 && power >=3000
value = 781
persistent = 0

;----------------------------------------------------------------------------
; Power Charge End
[Statedef 781]
type = S
physics = S
movetype = I
anim = 781
velset = 0,0
ctrl = 0

[State 781, Stopsnd]
type = stopsnd
trigger1 = !time
channel = 0

[State 781, Snd]
type = playsnd
triggerall = var(39) = 0
trigger1 = !time && power >= const(data.power)
value = 780,2
channel = 0

[State 781, Snd]
type = playsnd
triggerall = var(39) = 1
trigger1 = !time && power >= const(data.power)
value = 790,2
channel = 0

[State 20, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 20,0

[State 0, CtrlSet]
type = CtrlSet
trigger1 = Animelem = 5,1
value = 1

[State 781, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;----------------------------------------------------------------------------
; Custom Combo
[Statedef 790]
type = U
physics = U
movetype = A
anim = 790+(statetype=A)
ctrl = (statetype=A)
poweradd = -1000
velset = ifelse((statetype=S),0,vel x),ifelse((statetype=S),0,vel y)

[State 820, Voice]
type = Playsnd
triggerall = var(39) = 0
trigger1 = !time
value = 900,0
volume = 255
channel = 0

[State 820, Voice]
type = Playsnd
triggerall = var(39) = 1
trigger1 = !time
value = 910,0
volume = 255
channel = 0

[State 900, Var]
type = varset
trigger1 = time >= 4
var(20) = 220

[State 790, superchargehelper]
type = helper
trigger1 = anim = 791
trigger1 = !time
helpertype = normal
stateno = 7790
ID = 7790
postype = p1
pos = 15,-90;10-(anim=761)*3,-115+(anim=761)*12
ownpal = 1
persistent = 0
supermovetime = 9999

[State 790, superchargehelper]
type = helper
trigger1 = anim = 790
trigger1 = !time
helpertype = normal
stateno = 7790
ID = 7790
postype = p1
pos = -8,-50
ownpal = 1
persistent = 0
supermovetime = 9999

[State 790, superchargepause]
type = superpause
trigger1 = anim = 790
trigger1 = !time
time = 35
anim = -1
sound = S75,6
darken = 0
movetime = 35*(anim=790)

[State 790, superchargepause]
type = superpause
trigger1 = anim = 791
trigger1 = animelem = 6
time = 35
anim = -1
sound = S75,6
darken = 0
movetime = 35*(anim=790)

[State 790, var]
type = varset
trigger1 = anim=790 && time=30
trigger2 = anim=791 && time=1
var(20) = power;300

[State 790, nhb]
type = nothitby
trigger1 = (anim=[790,791])
time = 6
value = SCA

[State 790, image]
type = afterimage
trigger1 = anim=790 && animtime=0
trigger2 = anim=791 && animtime=0
time = 2
timegap = 1
framegap = 4
length = 13
palbright = 0,0,0
palcontrast = 64,128,192
palpostbright = 0,0,0
paladd = 0,0,0
palmul = .75,.75,.75
trans = add1

[State 790, end]
type = changeanim
trigger1 = anim = 791 && !animtime
value = 44
persistent = 0

[State 790, sts]
type = statetypeset
trigger1 = anim = 44
statetype = A
physics = A

[State 790, end]
type=changestate
trigger1 = anim = 790 && !animtime
value = 0
ctrl = 1