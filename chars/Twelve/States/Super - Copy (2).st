; _________________________________________
;| Character by Author Name                |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;
;<SUPER MOVES>==
;

;---------------------------------------------------------------------------
;Super 1
[Statedef 3000]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -1000
facep2 = 1

[State 3000, Anim]
type = changeanim
trigger1 = !time
value = 3000

[state 3000]
type = Width
trigger1 = time = [0, 1]
edge = 40,0

[state 3000, Posset]
type = posset
trigger1 = !time
y = 0

[State 3000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = 3

[State 3000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = 3

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

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S4,7

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 24
value = S1, 2

[State 3000, Superpause FX]
type = helper
trigger1 = Time = 3
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = 17, -75
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = Time = 3
time = 44
movetime = 44
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, Helper]
type = Helper
trigger1 = animelem = 26
helpertype = normal ;player
name = "Needles"
ID = 3000
stateno = 3005
pos = 90,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 3000, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(28) >= 0
moveType = I

[State 3000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;X.F.L.A.T.
[statedef 3100]
type = A
movetype=A
physics = N
ctrl = 0
velset = 0,0
anim=3100
juggle = 15

[State 3000, Helper];Dont delete this either and copy too
type = Helper
trigger1 = animelem = 5
stateno = 8500
supermovetime = 99999999
pos = ceil(10*const(size.xscale)),ceil(-90*const(size.yscale))
ownpal = 1
id = 8500

[State 3000, Superpause]
type = superpause
trigger1 = Time = 3
time = 44
movetime = 44
p2defmul = 1
unhittable = 0
anim = -1
sound = s8500,0
darken = 0

;Hit Count
[State -2, VarSet]
type = VarAdd
trigger1 = time=0
var(17) = -2*var(9)
ignorehitpause = 1

;Hit Count
[State -2, VarSet]
type = VarAdd
trigger1 = time=0
var(22) = -2*var(9)
ignorehitpause = 1

;Hit Count
[State -2, VarSet]
type = VarSet
trigger1 = time=0
var(9) = 0
ignorehitpause = 1

[state 3000]
type = varset
trigger1 = time=0
var(1) = 0

[state 3000]
type = varset
trigger1 = time=0
var(2) = 50

[State 3200]
type = Pause
trigger1 = time=2
time=50
movetime=50

;[State -3,Super]
type = Helper
trigger1 = time=1
id = 7600
name = "super_aurts"
pos = 0,-80
postype = P1
stateno = 7600
helpertype = normal
keyctrl = 0
ownpal = 1
supermovetime=var(2)
pausemovetime=var(2)
ignorehitpause = 1
persistent = 0
size.xscale = 1
size.yscale = 1

[State 4500, AfterImage]
type = AfterImage
trigger1 = Time=2
time = 999
length = 8
TimeGap  = 3
FrameGap = 2
palpostbright = 0,0,232
palContrast = 208, 208, 255

[State 3200]
type = NotHitBy
trigger1 = time=0
value = SCA
time=52

[state 3000]
type = poweradd
trigger1 = time=51
value = -1000

;Attack
[State 200,HitDef]
type = HitDef
triggerall =  !var(10) || var(11)
trigger1 = AnimElem=20
attr = A,HA
hitflag = MAF
guardflag = M
animtype = hard
priority = 7,Hit
getpower = 0*var(5),0*var(5)
givepower = 0*var(6),0
damage = 15
pausetime = 0,9
hitsound = -1 + 0*(var(31):=(var(10)))
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=66), var(36):=-80
ground.type = High
ground.slidetime = 16+(P2statetype=C)*2
guard.slidetime = 16
ground.hittime = 16+(P2statetype=C)*2
guard.hittime = (16+(P2statetype=C)*2) - 6
air.hittime = 13
yaccel = .5
ground.velocity = -6.0
guard.velocity = -6.0
air.velocity = -5.0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = -5.0
fall.recover = 0
air.fall = 1
;fall = 1
kill = 0

[state 3200]
type = PlaySnd
trigger1 = AnimElem=9
value = 3100,0
channel = 1

[state 3200]
type = VelSet
trigger1 = AnimElem=20,=1
x = 20
y = 15

;(increase amout of Stun)ƒXƒ^ƒ“’l‘‰Á
[state -2]
type = varadd
triggerall = numtarget
trigger1 = (target,stateno=[5000,5999]) && target,time=0
trigger1 = movehit=1
var(32) = ceil(5*1.0*ifelse(var(22)>=30,1.0*8/32,ifelse(var(22)>=19,1.0*(24-floor(var(22)/2))/32,ifelse(var(22)>=1,1.00*(32-var(22))/32,1))))
ignorehitpause=1

[state 3200]
type = ChangeState
trigger1 = Movehit=1 && numtarget
value = 3110
ignorehitpause=1

[State 4500, AfterImage]
type = AfterImagetime
trigger1 = Vel Y>0 && Pos Y>=40
time = 0

;ALL SAŽžê—pUŒ‚—Í•â³
[State -2,enemy's life]
type = varset
trigger1 = var(59)=3
fvar(4) = .925

[state 3200]
type = ChangeState
trigger1 = Vel Y>0 && Pos Y>=40
value = 3152

;~~~~~~~~~~X.F.L.A.T. Hit
[statedef 3110]
type = A
movetype=A
physics = N
ctrl = 0
velset = 20,15

[state 3200]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[state 3200]
type = PlayerPush
trigger1 = 1
value = 0

[state 3200]
type = NotHitBy
trigger1 = 1
value = SCA

[state 3200]
type = varset
trigger1 = time=0
var(1) = ifelse(P2statetype=A,1,0)

[State 4500, AfterImage]
type = AfterImagetime
trigger1 = Time=30
time = 0

[state 3200]
type = targetState
trigger1 = time=0
value = 3115

[state 3200]
type = targetbind
trigger1 = time=19;time=1
pos = (160-ceil(ScreenPos X))*ifelse(facing=-1,-1,1),110-ifelse(enemynear,const(size.head.pos.y)>-80,-floor(enemynear,const(size.head.pos.y)*.5),0)-ceil(ScreenPos Y)
time=1

[state 3100]
type = ChangeState
trigger1 = Time=30
value = 3111+var(1)

;~~~~~~~~~~X.F.L.A.T. Hit
[statedef 3111]
type = A
movetype=A
physics = N
ctrl = 0
velset = 0,0
anim=3107
juggle = 15

[state 3200]
type = ScreenBound
trigger1 = anim!=3108&&anim!=44
value = 0
movecamera = 0,0

[state 3200]
type = PlayerPush
trigger1 = anim!=44
value = 0

[state 3200]
type = NotHitBy
trigger1 = anim!=44
value = SCA

[State 4500, AfterImage]
type = AfterImage
trigger1 = Time=120
time = 999
length = 8
TimeGap  = 3
FrameGap = 2
palpostbright = 0,0,232
palContrast = 208, 208, 255

[state 3200]
type = VelSet
trigger1 = time=1
x = 0
y = -20

[state 3200]
type = VelSet
trigger1 = time=11
x = 15
y = 30

[state 3200]
type = VelSet
trigger1 = time=21
x = -30
y = -10

[state 3200]
type = VelSet
trigger1 = time=31
x = 30
y = 0

[state 3200]
type = VelSet
trigger1 = time=41
x = -30
y = 15

[state 3200]
type = VelSet
trigger1 = time=51
x = 30
y = -15

[state 3200]
type = VelSet
trigger1 = time=61
x = -15
y = 30

[state 3200]
type = VelSet
trigger1 = time=71
x = -15
y = -30

[state 3200]
type = VelSet
trigger1 = time=81
x = 30
y = 20

[state 3200]
type = VelSet
trigger1 = time=91
x = -30
y = 0

[state 3200]
type = VelSet
trigger1 = time=101
x = 20
y = -30

[state 3200]
type = VelSet
trigger1 = time=111
x = 0
y = 30

[state 3200]
type = VelSet
trigger1 = time=121
x = 0
y = -20

;Attack
[State 200,HitDef]
type = HitDef
trigger1 = time%10=0 && !(time=10||time=40||time=60||time=80||time=110) &&time<120
attr = A,HA
hitflag = MAF
guardflag = H
animtype = hard
air.type = Low
fall.animtype = High
priority = 7,Hit
getpower = 0*var(5),0*var(5)
givepower = 0*var(6),0
damage = 15
pausetime = 0,8;36
hitsound = -1 + 0*(var(31):=(var(10)))
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=66), var(36):=-80
ground.type = High
ground.slidetime = 16+(P2statetype=C)*2
guard.slidetime = 16
ground.hittime = 16+(P2statetype=C)*2
guard.hittime = (16+(P2statetype=C)*2) - 6
air.hittime = 13
ground.velocity = 0,-6.0
air.velocity = 0,-1.0
yaccel = .2
air.cornerpush.veloff = 0
fall.recover = 0
air.fall = 1
fall = 1
kill = 0

;Attack
[State 200,HitDef]
type = HitDef
trigger1 = (time=10||time=40||time=60||time=80||time=110) && time<120
attr = A,HA
hitflag = MAF
guardflag = H
animtype = hard
air.type = High
fall.animtype = High
priority = 7,Hit
getpower = 0*var(5),0*var(5)
givepower = 0*var(6),0
damage = 15
pausetime = 0,8;36
hitsound = -1 + 0*(var(31):=(var(10)))
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=66), var(36):=-80
ground.type = High
ground.slidetime = 16+(P2statetype=C)*2
guard.slidetime = 16
ground.hittime = 16+(P2statetype=C)*2
guard.hittime = (16+(P2statetype=C)*2) - 6
air.hittime = 13
ground.velocity = 0,-6.0
air.velocity = 0,-1.0
yaccel = .2
air.cornerpush.veloff = 0
fall.recover = 0
air.fall = 1
fall = 1
kill = 0

;Attack
[State 200,HitDef]
type = HitDef
trigger1 = time=120
trigger2 = time=123
trigger3 = time=126
attr = A,HA
hitflag = MAF
guardflag = H
animtype = UP
priority = 7,Hit
getpower = 0*var(5),0*var(5)
givepower = 0*var(6),0
damage = 15
pausetime = 0,8
hitsound = -1 + 0*(var(31):=(var(10)))
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=66), var(36):=-80
ground.type = High
ground.slidetime = 16+(P2statetype=C)*2
guard.slidetime = 16
ground.hittime = 16+(P2statetype=C)*2
guard.hittime = (16+(P2statetype=C)*2) - 6
air.hittime = 13
air.cornerpush.veloff = 0
fall.recover = 0
air.fall = 1
fall = 1
air.velocity = 0,-6
yaccel = .3
kill = 0

;Attack
[State 200,HitDef]
type = HitDef
trigger1 = time=129
trigger2 = time=132
attr = A,HA
hitflag = MAF
guardflag = H
animtype = UP
priority = 7,Hit
getpower = 0*var(5),0*var(5)
givepower = 0*var(6),0
damage = 15
pausetime = 0,8
hitsound = -1 + 0*(var(31):=(var(10)))
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=66), var(36):=-80
ground.type = High
ground.slidetime = 16+(P2statetype=C)*2
guard.slidetime = 16
ground.hittime = 16+(P2statetype=C)*2
guard.hittime = (16+(P2statetype=C)*2) - 6
air.hittime = 13
air.cornerpush.veloff = 0
fall.recover = 0
air.fall = 1
fall = 1
air.velocity = 0,-6
yaccel = .3
kill = (time=132)

[state 3200]
type = PosAdd
trigger1 = time%10=0 && time<130
x = (160-ceil(ScreenPos X))*ifelse(facing=-1,-1,1)
y = 120-ceil(ScreenPos Y)+20

[state 3200]
type = PosAdd
trigger1 = time=0
y = 160

[state 3200]
type = PosAdd
trigger1 = time=10
x = -60
y = -40

[state 3200]
type = PosAdd
trigger1 = time=20
x = 160
y = 100

[state 3200]
type = PosAdd
trigger1 = time=30
x = -130
y = 65

[state 3200]
type = PosAdd
trigger1 = time=40
x = 120

[state 3200]
type = PosAdd
trigger1 = time=50
x = -120
y = 140

[state 3200]
type = PosAdd
trigger1 = time=60
x = 40
y = -40

[state 3200]
type = PosAdd
trigger1 = time=70
x = 100
y = 140

[state 3200]
type = PosAdd
trigger1 = time=80
x = -80
y = -10

[state 3200]
type = PosAdd
trigger1 = time=90
x = 100
y = 35

[state 3200]
type = PosAdd
trigger1 = time=100
x = -35
y = 140

[state 3200]
type = PosAdd
trigger1 = time=110
x = -10
y = -60

[state 3200]
type = PosAdd
trigger1 = time=120
x = 0
y = 160

[state 3200]
type = varset
trigger1 = time%10=0
var(2) = anim

[state 3200]
type = ChangeAnim
trigger1 = time%10=0 && time>0 && time<50
value = ifelse(anim=3107,3102,ifelse(anim=3102,3117,ifelse(anim=3117,3104,ifelse(anim=3104,3114,3110))))

[state 3200]
type = ChangeAnim
trigger1 = time%10=0 && time>=50 && time<100
value = ifelse(anim=3114,3105,ifelse(anim=3105,3115,ifelse(anim=3115,3116,ifelse(anim=3116,3103,ifelse(anim=3103,3113,3110)))))

[state 3200]
type = ChangeAnim
trigger1 = time%10=0 && time>=100 && time<130
value = ifelse(anim=3113,3106,ifelse(anim=3106,3101,ifelse(anim=3101,3108,3110)))

[state 3200]
type = VelAdd
trigger1 = time>120
y = .5

[state 3200]
type = PlaySnd
trigger1 = time=120
value = 3100,1

[state 3200]
type = VelSet
trigger1 = Vel Y>0 && time>130
x = -2.0

[state 3200]
type = ChangeAnim
trigger1 = Vel Y>0 && time>130
value = 44
persistent=0

;Combo Damage
[State -2, VarAdd]
type = VarAdd
triggerall = numtarget
triggerall = (target,StateNo=5000 || target,StateNo=5010 || target,StateNo=5020 || target,StateNo=5070||target,stateno=5080) && target,Time=0
trigger1 = movehit=1
var(17) = ifelse(time<80,0,1);ifelse(time<120,1,2)
ignorehitpause = 1

;(increase amout of Stun)ƒXƒ^ƒ“’l‘‰Á
[state -2]
type = varadd
trigger1 = numtarget && movehit=1
var(32) = ceil(ifelse(time>=126,0,3)*1.0*ifelse(var(22)>=30,1.0*7/32,ifelse(var(22)>=13,1.0*(22-floor(var(22)/2))/32,ifelse(var(22)>=5,1.00*(28-var(22))/32,ifelse(var(22)>=1,1.00*(32-var(22)*2)/32,1)))))
ignorehitpause=1

;ALL SAŽžê—pUŒ‚—Í•â³
[State -2,enemy's life]
type = varset
trigger1 = var(59)=3
fvar(4) = .925

[state 3200]
type = ChangeState
trigger1 = Vel Y>0 && Pos Y>=0 && time>130
value = 3153

;~~~~~~~~~~X.F.L.A.T. Air Hit
[statedef 3112]
type = A
movetype=A
physics = N
ctrl = 0
velset = 0,0
anim=3100
juggle = 15

[state 3200]
type = ScreenBound
trigger1 = anim!=3108&&anim!=44
value = 0
movecamera = 0,0

[state 3200]
type = PlayerPush
trigger1 = anim!=44
value = 0

[state 3200]
type = NotHitBy
trigger1 = anim!=44
value = SCA

[State 4500, AfterImage]
type = AfterImage
trigger1 = Time=40
time = 999
length = 8
TimeGap  = 3
FrameGap = 2
palpostbright = 0,0,232
palContrast = 208, 208, 255

[state 3200]
type = VelSet
trigger1 = time=1
x = 30
y = -15

[state 3200]
type = VelSet
trigger1 = time=11
x = -30
y = 0

[state 3200]
type = VelSet
trigger1 = time=21
x = 20
y = -30

[state 3200]
type = VelSet
trigger1 = time=31
x = 0
y = 30

[state 3200]
type = VelSet
trigger1 = time=41
x = 0
y = -20

;Attack
[State 200,HitDef]
type = HitDef
trigger1 = time%10=0 && time<40 && time!=30
attr = A,HA
hitflag = MAF
guardflag = H
animtype = hard
fall.animtype = hard
air.type = Low
priority = 7,Hit
getpower = 0*var(5),0*var(5)
givepower = 0*var(6),0
damage = 15
pausetime = 0,36
hitsound = -1 + 0*(var(31):=(var(10)))
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=66), var(36):=-80
ground.type = High
ground.slidetime = 16+(P2statetype=C)*2
guard.slidetime = 16
ground.hittime = 16+(P2statetype=C)*2
guard.hittime = (16+(P2statetype=C)*2) - 6
air.hittime = 13
air.cornerpush.veloff = 0
fall.recover = 0
air.fall = 1
fall = 1
ground.velocity = 0,-6
air.velocity = 0,-1
yaccel = .2
kill = 0

;Attack
[State 200,HitDef]
type = HitDef
trigger1 = time=30
attr = A,HA
hitflag = MAF
guardflag = H
animtype = hard
fall.animtype = hard
air.type = High
priority = 7,Hit
getpower = 0*var(5),0*var(5)
givepower = 0*var(6),0
damage = 15
pausetime = 0,8
hitsound = -1 + 0*(var(31):=(var(10)))
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=66), var(36):=-80
ground.type = High
ground.slidetime = 16+(P2statetype=C)*2
guard.slidetime = 16
ground.hittime = 16+(P2statetype=C)*2
guard.hittime = (16+(P2statetype=C)*2) - 6
air.hittime = 13
air.cornerpush.veloff = 0
fall.recover = 0
air.fall = 1
fall = 1
ground.velocity = 0,-6
air.velocity = 0,-1
yaccel = .2
kill = 0

;Attack
[State 200,HitDef]
type = HitDef
trigger1 = time=40
trigger2 = time=43
trigger3 = time=46
attr = A,HA
hitflag = MAF
guardflag = H
animtype = hard
priority = 7,Hit
getpower = 0*var(5),0*var(5)
givepower = 0*var(6),0
damage = 15
pausetime = 0,8
hitsound = -1 + 0*(var(31):=(var(10)))
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=66), var(36):=-80
ground.type = High
ground.slidetime = 16+(P2statetype=C)*2
guard.slidetime = 16
ground.hittime = 16+(P2statetype=C)*2
guard.hittime = (16+(P2statetype=C)*2) - 6
air.hittime = 13
air.cornerpush.veloff = 0
fall.recover = 0
air.fall = 1
fall = 1
air.velocity = 0,-6
yaccel = .3
kill = 0

;Attack
[State 200,HitDef]
type = HitDef
trigger1 = time=49
trigger2 = time=52
attr = A,HA
hitflag = MAF
guardflag = H
animtype = hard
priority = 7,Hit
getpower = 0*var(5),0*var(5)
givepower = 0*var(6),0
damage = 15
pausetime = 0,8
hitsound = -1 + 0*(var(31):=(var(10)))
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=66), var(36):=-80
ground.type = High
ground.slidetime = 16+(P2statetype=C)*2
guard.slidetime = 16
ground.hittime = 16+(P2statetype=C)*2
guard.hittime = (16+(P2statetype=C)*2) - 6
air.hittime = 13
air.cornerpush.veloff = 0
fall.recover = 0
air.fall = 1
fall = 1
air.velocity = 0,-6
yaccel = .3
kill = (time=52)

[state 3200]
type = PosAdd
trigger1 = time%10=0 && time<50
x = (160-ceil(ScreenPos X))*ifelse(facing=-1,-1,1)
y = 120-ceil(ScreenPos Y)+20

[state 3200]
type = PosAdd
trigger1 = time=0
x = -120
y = 140

[state 3200]
type = PosAdd
trigger1 = time=10
x = 100
y = 50

[state 3200]
type = PosAdd
trigger1 = time=20
x = -40
y = 140

[state 3200]
type = PosAdd
trigger1 = time=30
x = -10
y = -60

[state 3200]
type = PosAdd
trigger1 = time=40
x = 0
y = 160

[state 3200]
type = varset
trigger1 = time%10=0
var(2) = anim

[state 3200]
type = ChangeAnim
trigger1 = time%10=0 && time<50
value = ifelse(anim=3100,3105,ifelse(anim=3105,3113,ifelse(anim=3113,3106,ifelse(anim=3106,3101,ifelse(anim=3101,3108,3110)))))

[state 3200]
type = VelAdd
trigger1 = time>40
y = .5

[state 3200]
type = PlaySnd
trigger1 = time=40
value = 3100,1

[state 3200]
type = VelSet
trigger1 = Vel Y>0 && time>50
x = -2.0

[state 3200]
type = ChangeAnim
trigger1 = Vel Y>0 && time>50
value = 44
persistent=0

;Combo Damage
[State -2, VarAdd]
type = VarAdd
triggerall = numtarget && time>=40
triggerall = (target,StateNo=5000 || target,StateNo=5010 || target,StateNo=5020 || target,StateNo=5070||target,stateno=5080) && target,Time=0
trigger1 = movehit=1
var(17) = 1
ignorehitpause = 1

;(increase amout of Stun)ƒXƒ^ƒ“’l‘‰Á
[state -2]
type = varadd
trigger1 = numtarget && movehit=1
var(32) = ceil(ifelse(time>=46,0,3)*1.0*ifelse(var(22)>=30,1.0*7/32,ifelse(var(22)>=13,1.0*(22-floor(var(22)/2))/32,ifelse(var(22)>=5,1.00*(28-var(22))/32,ifelse(var(22)>=1,1.00*(32-var(22)*2)/32,1)))))
ignorehitpause=1

;ALL SAŽžê—pUŒ‚—Í•â³
[State -2,enemy's life]
type = varset
trigger1 = var(59)=3
fvar(4) = .925

[state 3200]
type = ChangeState
trigger1 = Vel Y>0 && Pos Y>=0 && time>50
value = 3153

;~~~~~~~~~~X.F.L.A.T. Enemy
[statedef 3115]
type = A
movetype=H
physics = N
ctrl = 0
velset = 0,-4

[state 3200]
type = changeanim2
trigger1 = time=0
value = 3120

[state 3200]
type = ScreenBound
trigger1 = 1
value = 1

[state 3200]
type = PosFreeze
trigger1 = time>=20 && time<30
value = 1

[state 3200]
type = velset
trigger1 = time>=20 && time<30
x = 0
y = 0

[state 3200]
type = VelAdd
trigger1 = time>30
y = .5

[state 3200]
type = SelfState
trigger1 = Vel Y>0 && Pos Y>=0
value = 5100

;~~~~~~~~~~X.F.L.A.T. Land
[statedef 3152]
type = C
movetype=I
physics = C
ctrl = 0
velset = 15,0
anim=3147

[state 3200]
type = StatetypeSet
trigger1 = AnimElem=9
statetype = S
physics = S

[state 3200]
type = VelSet
trigger1 = AnimElem=9
x = 0

[state 3200]
type = PosSet
trigger1 = time=0
y = 0

[state 3200]
type = ChangeState
trigger1 = animtime=0
value = 0
ctrl = 1
;~~~~~~~~~~X.F.L.A.T. Land
[statedef 3153]
type = S
movetype=I
physics = S
ctrl = 0
velset = 0,0
anim=1353

[State 4500, AfterImage]
type = AfterImageTime
trigger1 = Time=0
time = 0

[state 3200]
type = PosSet
trigger1 = time=0
y = 0

[state 3200]
type = ChangeState
trigger1 = animtime=0
value = 0
ctrl = 1

;X.A.X.E.
[Statedef 3200]
type = S
movetype= A
physics = S
poweradd= -1000
ctrl = 0
anim = 1100

[State 3200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4,0 

[State 3000, pause]
type = SuperPause
trigger1 = time = 3
;movetime = 50
anim = -1
sound = s8500,0
darken = 0
;time = 50

[State 3000, Superpause FX]
type = helper
trigger1 = Time = 3
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = 17, -75
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3200, 2]

type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 6
trigger4 = AnimElem = 9
trigger5 = AnimElem = 12
trigger6 = AnimElem = 15
trigger7 = AnimElem = 18
trigger8 = AnimElem = 21
trigger9 = AnimElem = 24
trigger10 = AnimElem = 27
trigger11 = AnimElem = 30
attr = S, NA
damage = 55
animtype = Hard
guardflag = MA
hitflag = MAF
pausetime = 13,15
hitsound = -1 + 0*(var(31):=(var(10)))
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=66), var(36):=-80
ground.type = High
ground.slidetime = 15
ground.hittime  = 17
guard.hittime = (17) - 6
ground.velocity = -5
air.velocity = -2,-3 
fall = 0


[State 3200, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;X.D.R.I.L.L
[Statedef 2400]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 2400
juggle = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
y = -40

[State 800,SND]
type = PlaySnd
trigger1 = time = 0
value =970,0

;add to superpause:
[State 0, VarSet]
type = VarSet
trigger1 = time = 5
v = 20
value = 0

;SUPER EFFECT
;SUPER PAUSE
[State 3000, pause]
type = SuperPause
trigger1 = time = 3
;movetime = 50
anim = -1
sound = s8500,0
darken = 0
;time = 50

[State 3000, Superpause FX]
type = helper
trigger1 = Time = 3
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = 17, -75
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000,poweradd]
type = poweradd
trigger1 = Time = 0
trigger1 = var(20) <= 0
trigger1 = prevstateno != [1000,3999]
value = -1000
[State 3000,poweradd]
type = poweradd
trigger1 = Time = 0
trigger1 = var(20) <= 0
trigger1 = prevstateno = [1000,3999]
value = -2000

[State 3000,poweradd]
type = poweradd
trigger1 = Time = 0
trigger1 = var(20) > 0
trigger1 = prevstateno = [1000,3999]
value = -1000
[State 3000,poweradd]
type = poweradd
trigger1 = Time = 0
trigger1 = var(20) > 0
trigger1 = prevstateno != [1000,3999]
value = 0

[State 3000,poweradd]
type = poweradd
trigger1 = Time = 0
trigger1 = var(20) > 0
trigger1 = prevstateno = [200,799]
value = 0

[State 1001,1]
type = ChangeState
trigger1 = time = 60
value = 2410
ctrl = 0

;
[Statedef 2410]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 2410
juggle = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
y = -2
[State 0, PosAdd]
type = PosAdd
trigger1 = time = 5
y = -6

[State 0, AngleDraw]
type = null;AngleDraw
trigger1 = time >= 0
value = -20
;scale =  (winmugen only)
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = time >= 6
x = 6
y = 3

[State 0, ChangeState]
type = ChangeState
trigger1 =  vel Y > 0 && pos Y >= 0
value = 2420
ctrl = 0

[State 0, BGPalFX]
type = null;BGPalFX
triggerall = movehit = 1
trigger1 = animelem = 6
trigger2 = animelem = 8
trigger3 = animelem = 10
time = 1
add = 256,256,256
mul = 256,256,256
;sinadd = 0,0,0,10
ignorehitpause = 1

[State 0,HitDef]
type = HitDef
trigger1 = animelem = 6
trigger2 = animelem = 10
;trigger3 = animelem = 9
;trigger4 = animelem = 11
priority = 5, Hit			;2 for ??, 3 for M/H att, 4 for L att, 5 for super, 6 fot hyper
attr = A,HA			;STAND / NORMAL ATTACK
hitflag = MAF			;MIDDLE ATTACK
guardflag = M			;GUARD is MIDDLE /L is LOW
animtype = hard	 		;2p ANIM, light", "medium", "hard", "back", "up",    or "diagup"
air.animtype = hard			;2p ANIM
ground.type = high
damage = 30,3
getpower = 0 ; ifelse ( var(20) > 0,40, 120)
GivePower = ifelse ( var(20) > 0,10, 10)
pausetime = 3,6
guard.pausetime = 3,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =17
ground.velocity = -4, -8
air.velocity = -4, -8
yaccel = 0.55
guard.velocity = -12
ground.cornerpush.veloff = -5; ifelse ( var(20) > 0,-15, -25)
guard.cornerpush.veloff = -5; ifelse ( var(20) > 0,-15, -25)
;
hitsound =S5,3
guardsound = S6,1
sparkxy = -20,-20
sparkno =  S7201+(random%10)
guard.sparkno = S6060+(random%3)
;
fall = 1
air.fall = 1
fall.recover = 0
;
envshake.time = 2
envshake.freq = 110
envshake.ampl = 6
;
fall.envshake.time = 10
fall.envshake.freq = 100 ;speed
fall.envshake.ampl = 10	;strong weak

[State 0,HitDef]
type = HitDef
trigger1 = animelem = 8
;trigger2 = animelem = 10
priority = 5, Hit			;2 for ??, 3 for M/H att, 4 for L att, 5 for super, 6 fot hyper
attr = A,HA			;STAND / NORMAL ATTACK
hitflag = MAF			;MIDDLE ATTACK
guardflag = M			;GUARD is MIDDLE /L is LOW
animtype = hard	 		;2p ANIM, light", "medium", "hard", "back", "up",    or "diagup"
air.animtype = hard			;2p ANIM
ground.type = high
damage = 30,3
getpower = 0 ; ifelse ( var(20) > 0,40, 120)
GivePower = ifelse ( var(20) > 0,10, 10)
pausetime = 3,6
guard.pausetime = 3,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =17
ground.velocity = -4, -6
air.velocity = -4, -6
yaccel = 0.55
guard.velocity = -12
ground.cornerpush.veloff = -5; ifelse ( var(20) > 0,-15, -25)
guard.cornerpush.veloff = -5; ifelse ( var(20) > 0,-15, -25)
;
hitsound =S5,2
guardsound = S6,1
sparkxy = -20,-10
sparkno =  S7201+(random%10)
guard.sparkno = S6060+(random%3)
;
fall = 1
air.fall = 1
fall.recover = 0
;
envshake.time = 2
envshake.freq = 110
envshake.ampl = 6
;
fall.envshake.time = 10
fall.envshake.freq = 100 ;speed
fall.envshake.ampl = 10	;strong weak

;------------------------------------------------------------------------
[Statedef 2420]
type = S
movetype = I
physics = N
velset = 0, 0
ctrl = 0
anim = 2420

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
x = 8
[State 0, VelSet]
type = VelSet
trigger1 = time >= 4
x = 6
[State 0, VelSet]
type = VelSet
trigger1 = time >= 8
x = 4
[State 0, VelSet]
type = VelSet
trigger1 = time >= 16
x = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 4,0

;52 add landing smoke
[State 0, landing explode]
type = Explod
trigger1 = Time = 0
anim = 7215
sprpriority = 4
postype = p1
pos = 0,5
bindtime = 1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 0.6,0.6
ownpal = 1
[State 0, landing explode]
type = Explod
trigger1 = Time = 0
anim = 7220
sprpriority = 4
postype = p1
pos = 0,5
bindtime = 1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 0.6,0.6
ownpal = 1

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ChangeState]
type = ChangeState
trigger1 =  animtime = 0
value = 0
ctrl = 1

;Super 1 LV2
[Statedef 3010]
type = C
movetype=A
physics = C
ctrl = 0
velset = 0,0
anim=3000

;Hit Count
[State -2, VarSet]
type = Varadd
triggerall = !var(18)&&time=0
trigger1 = (prevstateno=[200+10000*var(41),205+10000*var(41)])||(prevstateno=[230+10000*var(41),235+10000*var(41)])||prevstateno=400+10000*var(41)||prevstateno=430+10000*var(41)
trigger2 = (prevstateno=[600+10000*var(41),605+10000*var(41)])||(prevstateno=[630+10000*var(41),635+10000*var(41)])
var(23) = -1
ignorehitpause = 1

[state 3000]
type = Width
trigger1 = time=0
player = 68-const(size.ground.front),0

[state 3000]
type = Width
trigger1 = time=1
edge = 80,0

[state 3000]
type = PlaySnd
trigger1 = Time=1
value = 3000,0
channel = 1

[state 3000]
type = NotHitBy
trigger1 = time=0
value = SCA
time=51

[state 3000]
type = varset
trigger1 = time=0
var(58) = 50

[State -3,Super]
type = null;Helper
trigger1 = time=0 && enemy,backedgebodydist>100
id = 7610
name = "super_aurts"
pos = 0,0
postype = P1
stateno = 7610
helpertype = normal
keyctrl = 0
ownpal = 1
supermovetime=var(58)
pausemovetime=var(58)
ignorehitpause = 1
persistent = 0
size.xscale = 1
size.yscale = 1

[state 3000]
type = varset
trigger1 = time=0
var(49) = 15-ifelse(frontedgedist<90,80-ceil(P2dist X),ifelse(P2bodydist X<44,68-const(size.ground.front),0))

;---------------------------------------------------------------------------------------------------
;Dont delete this code that starts with Var(4) Add it or copy paste to the new 
;hyper you gonna put .Change animelem depending when you want you characters hyper portrait to start
[State 3000, VarSet] 
type = VarSet
trigger1 = animelem = 5
var(4) = 1

[State 3000, Helper];Dont delete this either and copy too
type = Helper
trigger1 = animelem = 5
stateno = 8500
supermovetime = 99999999
pos = ceil(10*const(size.xscale)),ceil(-60*const(size.yscale))
ownpal = 1
id = 8500

;This is the MVC2 ground explod use this on Special Moves as well.
;statetype !=A code explod means it can only happen in the ground
[State 1050, Explod]
type = Explod
trigger1 = animelem = 5 && statetype !=A
anim = 8300
id = 8300
supermove = 1
sprpriority = 4
ownpal = 1

[State 3000, SuperPause];Dont delete this either and copy too part of hyper combo 
type = SuperPause
trigger1 = animelem = 5
time = 36
movetime = 36
darken = 1
anim = -1
p2defmul = 1
poweradd = -1000 ;<-------------------- this is the power level needed to start hyper combo

;There is another piece of coding for this mvc2 hyper to work go to state number 3005. 
;The rest of this code you can delete and copy the hyper from other chars.

;-----------------------------------------------------------------------------------------------------

[State -3,Super]
type = Helper
trigger1 = AnimElem=26
id = 3000
name = "Needles"
pos = ceil(92*const(size.xscale)),0
postype = P1
stateno = 3005
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
persistent = 0

;------------------------------------------------------------------------------------------------------
[State 3000, VarSet] ;Dont delete this code part of hyper combo this ends the blue hyper background
type = VarSet
trigger1 = animtime=0
var(4) = 0

[state 3000]
type = ChangeState
trigger1 = animtime=0
value = 0
ctrl = 1

;X.N.D.L.(Projectile)
[Statedef 6100]
type    = A
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 90000
sprpriority = 4

[State 6000]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 6000]
type = varset
trigger1 = time=0
var(49) = root,var(49)

[State 0, Explod]
type = Explod
;triggerall = !numexplod(3050)
trigger1 = time=0
trigger2 = time=10
trigger3 = time=20
trigger4 = time=30
anim =3050
ID =3050
pos = 0,0
postype = p1
bindtime = 1
scale = 1,1
sprpriority = 4
ownpal = 1
ignorehitpause =1

[State 0, Explod]
type = Explod
;triggerall = !numexplod(3051)
trigger1 = time=2
trigger2 = time=12
trigger3 = time=22
trigger4 = time=32
anim =3051
ID =3051
pos = 0,0
postype = p1
bindtime = 1
scale = 1,1
sprpriority = 4
ownpal = 1
ignorehitpause =1

[State 0, Explod]
type = Explod
;triggerall = !numexplod(3052)
trigger1 = time=4
trigger2 = time=14
trigger3 = time=24
anim =3052
ID =3052
pos = 0,0
postype = p1
bindtime = 1
scale = 1,1
sprpriority = 4
ownpal = 1
ignorehitpause =1

[State 0, Explod]
type = Explod
;triggerall = !numexplod(3053)
trigger1 = time=6
trigger2 = time=16
trigger3 = time=26
anim =3053
ID =3053
pos = 0,0
postype = p1
bindtime = 1
scale = 1,1
sprpriority = 4
ownpal = 1
ignorehitpause =1

[State 0, Explod]
type = Explod
;triggerall = !numexplod(3054)
trigger1 = time=8
trigger2 = time=18
trigger3 = time=28
anim =3054
ID =3054
pos = 0,0
postype = p1
bindtime = 1
scale = 1,1
sprpriority = 4
ownpal = 1
ignorehitpause =1

[State 200,VarSet]
type = varset
trigger1 = var(10)>0
var(10) = 0
ignorehitpause=1

[State 200,VarSet]
type = varAdd
trigger1 = var(24)
var(10) = 1
ignorehitpause=1

[State 200,VarSet]
type = varAdd
trigger1 = root,projcontacttime(6100)=1 && root,numtarget
var(23) = 1
ignorehitpause=1

[State 200,VarSet]
type = varAdd
trigger1 = root,projcontacttime(6100)=1
var(24) = 1
ignorehitpause=1

[State 200,VarSet]
type = varAdd
trigger1 = var(24)=1
var(10) = 1
ignorehitpause=1

[state 1000]
type = VelSet
trigger1 = time=1
x = 6.5

[State 1000,Projectile]
type = Projectile
trigger1 = time=1
trigger2 = time=3
trigger3 = time=4
trigger4 = time=6
trigger5 = time=7
trigger6 = time=8
trigger7 = time=10
trigger8 = time=11
trigger9 = time=13
trigger10 = time=14
trigger11 = time=15
trigger12 = time=17
trigger13 = time=18
trigger14 = time=20
trigger15 = time=21
trigger16 = time=22
trigger17 = time=24
trigger18 = time=25
trigger19 = time=27
trigger20 = time=28
trigger21 = time=29
projanim = ifelse(var(24)>=8,90000,3060)
projID = 6100
projshadow = -1
velocity = 0, 0
projremovetime = 4
sprpriority = 5
; HitDefs
attr = C, HP
damage = 35, 15
animtype  = Heavy
givepower = 55
guardflag = M
hitflag = MAF
pausetime = 1,11
guard.pausetime = 1,11
sparkno = s8000
guard.sparkno = s8050
sparkxy = ifelse((Abs(P2bodydist X)-10)<20,-20,-10), -40
hitsound   = s5,0
guardsound = s6,0
fall.animtype = hard
ground.type = low
ground.slidetime = 16
guard.slidetime = 15
ground.hittime  = 16
air.hittime = 13
ground.velocity = -6,-5
guard.velocity = -11.0
air.type = Low
air.velocity = -6,-5
yaccel = .5
fall = 1
air.fall = 1
fall.recover = 0
air.recover = 0
forcestand=1

[State 1000,Projectile]
type = null;Projectile
trigger1 = !root,numprojid(6100) && var(10)=1
trigger1 = var(24)<ifelse(var(30)<2,8,ifelse(var(30)<5,7,ifelse(var(30)<11,6,ifelse(var(30)<19,5,ifelse(var(30)<29,4,3)))))
projanim = 3060
projID = 6100
projshadow = -1
velocity = 6, 0
accel = 0, 0
projhits = 1
projremovetime = 33-(time)
sprpriority = 5
; HitDefs
attr = C, HP
damage    = ifelse(ceil(52*parent,fvar(0))<6,6,ceil(52*parent,fvar(0))),ifelse(ceil(ceil(52*parent,fvar(0))/16)<6,6,ceil(ceil(52*parent,fvar(0))/16))
animtype  = Heavy
getpower = 0*root,var(5),0*root,var(5)
givepower = 0*root,var(6),0*root,var(6)
guardflag = M
hitflag = MAF
pausetime = 20,19
guard.pausetime = 12,11
sparkno = s7200+random%8
guard.sparkno = s7010
sparkxy = ifelse((Abs(P2bodydist X)-10)<20,-20,-10), 0
hitsound   = S1,6
guardsound = S0,0
ground.type = low
ground.slidetime = 16+(P2statetype=C)*2
guard.slidetime = 14
ground.hittime  = 16+(P2statetype=C)*2
air.hittime = 13
ground.velocity = ifelse(var(23)=3,-5.0,-11.5),ifelse(var(23)=3,-5.0,0)
guard.velocity = -11.0
air.type = Low
air.velocity = -5.0,-5.0
yaccel = .5
fall = (var(23)=3)
air.fall = 1
fall.recover = 0
air.recover = 0
forcestand=1

[State 200]
type = null;PosFreeze
trigger1 = time>1
trigger1 = root,projcontacttime(6100)=[1,2]
value = 1

[State 200]
type = varadd
trigger1 = time>=1
trigger1 = !(root,projcontacttime(6100)=[1,2])
var(30) = 1
ignorehitpause=1

;Combo Damage
[State -2, VarAdd]
type = VarSet
trigger1 = 1
fvar(24) = root,var(24)
ignorehitpause = 1

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = Time=34 || var(30)=34