;***************************************************************************;
;***************************** EX Specials State ***************************;
;***************************************************************************;
;***************************************************************************;

;---------------------------------------------------------------------------
; Start EX Hayate
[Statedef 2000]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
poweradd = -500
anim = 1010
sprpriority = 2

[State 1100, 2]
type = PlaySnd
trigger1 = time = 1
value = 75,0
volume = -100
ignorehitpause = 1
persistent = 0

[State 2000, ExFX]
type = Explod
trigger1 = !time
anim = 7780
sprpriority = 3
postype = p1
pos = -10,-62
scale = .5,.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 0, VarSet]
type = VarSet
trigger1 = !time
v = 32
value = 0

[State 1000, 7]
type = ChangeState
trigger1 = !animtime
value = 2005

;---------------------------------------------------------------------------
; EX Hayate
[Statedef 2005]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 1011
sprpriority = 2

[State 3000, 12]
type = Explod
trigger1 = !time
anim = 7421
ID = 7421
pos = -40,5
postype = p1
facing = 1
vel = 0,0
accel = 0,0
random = 0,0
removeongethit = 0
removetime = 32
scale = .5,.5
sprpriority = 6
ownpal = 1
ignorehitpause = 1

[State 3000, 12]
type = Explod
trigger1 = !time
anim = 7422
ID = 7422
pos = -40,5
postype = p1
facing = 1
vel = 0,0
accel = 0,0
random = 0,0
removeongethit = 0
removetime = 32
scale = .27,.27
sprpriority = 6
ownpal = 1
ignorehitpause = 1

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = time = 1
value = 1000,1
channel = 0

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = time = 1
value = 1001,1
channel = 0

[State 210, 1]
type = PlaySnd
trigger1 = time = 1
value = 1000,2

[State 810, Width 2-11]
type = Width
trigger1 = animelem = 2,0
trigger2 = animelem = 2,1
trigger3 = animelem = 2,2
trigger4 = animelem = 2,3
trigger5 = animelem = 1,2
value = 20

[State 1000, 7]
type = velset
trigger1 = animelem = 2
x = 37;42

[State 1000, 7]
type = velset
trigger1 = animelem = 3
x = 4

[State 0, VarAdd]
type = VarAdd
trigger1 = movecontact 
v = 32
value = 1

[State 1000, 7]
type = statetypeset
trigger1 = animelem = 3
trigger2 = animelem = 4
statetype = S
movetype = A
physics = S

[State 1000, 2]
type = HitDef
trigger1 = time = 0
attr = S, SA
animtype = hard
air.animtype = back
damage = 150,4
guardflag = M
hitflag = MA
getpower = 0
pausetime = 8,12
sparkno = -1 * (var(30):=7020)**0
sparkxy = -10 + 0*(var(32):=62), var(33):=-58
hitsound = s2,2
guardsound = s6,0
guard.sparkno = -1 * (var(31):=7305)**0
ground.type = low
ground.slidetime = 12
ground.hittime = 17
guard.hittime = (17) - 6
ground.velocity = -6,-6
air.velocity = -6,-6
fall.recover = 0
yAccel = (0.5 + (ComboCount * 0.01))
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120
fall = 1
air.fall = 1

[State 1000, 7]
type = Changeanim
trigger1 = movecontact
value = 1011
elem = 4
ignorehitpause = 1
persistent = 0

[State 1000, 7]
type = Changestate
trigger1 = movecontact
trigger1 = animelem = 8
value = 1030

[State 1000, 7]
type = ChangeState
trigger1 = animtime = 0
value = 1030

;---------------------------------------------------------------------------
; EX Fukiage
[Statedef 2100]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
sprpriority = 2
poweradd = -500

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0 
value = 1115

[State 1100, 2]
type = PlaySnd
trigger1 = time = 1
value = 75,0
volume = -100
ignorehitpause = 1
persistent = 0

[State 2000, ExFX]
type = Explod
trigger1 = !time
anim = 7780
sprpriority = 3
postype = p1
pos = -10,-62
scale = .5,.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 100, Dust]
type = helper
triggerall = anim = 1115
trigger1 = animelem = 1
helpertype = normal
stateno = 7416
ID = 7416
pos = -20,0
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 210, 1]
type = PlaySnd
triggerall = anim = 1115
trigger1 = animelem = 1
volume = 255
value = 100,3

[State 7420, dust]
type = helper
triggerall = anim = 1111
trigger1 = AnimElem = 6
helpertype = normal
stateno = 7445
ID = 7445
name = "Dust"
postype = p1
ownpal = 1
pos = 0,0
size.xscale = .35
size.yscale = .35

[State 210, 1]
type = PlaySnd
triggerall = anim = 1115
trigger1 = animelem = 1
value = 1100,0

[State 100, 1]
type = VelAdd
triggerall = anim = 1115
trigger1 = animelem = 2
x = 25

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 1115
trigger1 = !animtime
value = 1111

[State 100, 1]
type = VelSet
triggerall = anim = 1111
trigger1 = animelem = 1
x = 0

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 5
value = 201,0
channel = 0

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 5
value = 211,2
channel = 0

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 6
value = 1,2

[State 1200, 2]
type = HitDef
trigger1 = time = 0
attr = S,SA
animtype = Hard
air.animtype = back
damage = 128,2
guardflag = M
hitflag = MA
pausetime = 12,12
getpower = 36*!var(20)
sparkno = -1 * (var(30):=7020)**0
sparkxy = -10 + 0*(var(32):=-5), var(33):=-100
hitsound = s2,2
guardsound = s6,0
guard.sparkno = -1 * (var(31):=7305)**0
ground.type = High
ground.slidetime = 12
ground.hittime = 15
guard.hittime = (15) - 6
ground.velocity = -2,-9
air.velocity = -2,-9
fall.recover = 0
yAccel = (0.5 + (ComboCount * 0.01))
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120
fall = 1
air.fall = 1

[State 1200, 7]
type = Changeanim
trigger1 = movecontact
value = 1111
elem = 9
ignorehitpause = 1
persistent = 0

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 24
value = 20,0

[State 1200, 7]
type = ChangeState
trigger1 = animelem = 24,1
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; EX Oroshi
[Statedef 2200]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 1230
sprpriority = 2
poweradd = -500

[State 1100, 2]
type = PlaySnd
trigger1 = time = 1
value = 75,0
volume = -100
ignorehitpause = 1
persistent = 0

[State 2000, ExFX]
type = Explod
trigger1 = !time
anim = 7780
sprpriority = 3
postype = p1
pos = -10,-62
scale = .5,.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 1
value = 1200,0
channel = 0

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 1
value = 1201,0
channel = 0

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 10
value = 1,2

[State 210, 1]
type = PlaySnd
trigger1 = animelemtime(12) = 0
value = 1200,1

[State 1400, 2]
type = HitDef
trigger1 = time = 0
attr = S, SA
animtype = hard
damage = 115,5
guardflag = H
hitflag = MA
pausetime = 12,15
getpower = 150*!var(20),3
sparkno = -1 * (var(30):=7020)**0
sparkxy = -10 + 0*(var(32):=62), var(33):=-58
hitsound = s2,2
guardsound = s6,0
guard.sparkno = -1 * (var(31):=7305)**0
ground.type = low
ground.slidetime = 17
ground.hittime = 17
guard.hittime = (17) - 6
ground.velocity = -1,5
air.velocity = -2.5,-10
fall.recover = 0
yAccel = (0.5 + (ComboCount * 0.01))
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120
fall = 1
air.fall = 1

[State 7100, dust]
type = explod
trigger1 = animelem = 12
anim = 7405
ID = 7405
sprpriority = 3
postype = p1
pos = 50,0
scale = .8,.8
ownpal = 1

[State 1400, 7]
type = Changeanim
trigger1 = movecontact
value = 1230
elem = 12
ignorehitpause = 1
persistent = 0

[State 800, 1]
type = EnvShake
trigger1 = animelem = 12
persistent = 0
ignorehitpause = 1
time = 12
ampl = 10
freq = 100
phase = 100

[State 1400, 7]
type = ChangeState
trigger1 = animelem = 21,1
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; EX Tsurugi
[Statedef 2300]
type = A
movetype= A
physics = A
juggle = 2
ctrl = 0
anim = 1330
sprpriority = 2
poweradd = -500

[State 1100, 2]
type = PlaySnd
trigger1 = time = 1
value = 75,0
volume = -100
ignorehitpause = 1
persistent = 0

[State 2000, ExFX]
type = Explod
trigger1 = !time
anim = 7780
sprpriority = 3
postype = p1
pos = -10,-62
scale = .5,.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 9
value = 1300,0
channel = 0

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 9
value = 1301,0
channel = 0

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 10
value = 1,5

[State 1600, 2]
type = varset
trigger1 = time = 0
fvar(0) = vel x

[State 1600, 2]
type = varset
trigger1 = time = 0
fvar(1) = vel y

[State 1600, 2]
type = velset
trigger1 = time = [1,10]
x = 0
y = 0

[State 1600, 2]
type = velset
trigger1 = time = 9
x = fvar(0)
y = 0

[State 1600, 2]
type = veladd
trigger1 = animelem = 8,0
x = 1

[State 1600, 3]
type = HitDef
trigger1 = AnimElem = 12
attr = A, SA
damage = 52,2
guardflag = H
hitflag = MA
priority = 4
pausetime = 8,10
getpower = 0,0
sparkno = -1 * (var(30):=7020)**0
sparkxy = -10 + 0*(var(32):=62), var(33):=-78
hitsound = s2,5
guardsound = s6,0
guard.sparkno = -1 * (var(31):=7305)**0
animtype = hard
air.animtype = back
ground.type = low
ground.slidetime = 17
ground.hittime = 17
guard.hittime = (17) - 6
ground.velocity = -1,3
air.velocity = -1,3
fall = 1
fall.recover = 0
envshake.time = 9
envshake.ampl = 5

[State 1600, 3]
type = HitDef
trigger1 = AnimElem = 13
attr = A, SA
damage = 132,5
guardflag = H
hitflag = MAF
priority = 4
pausetime = 17,19
getpower = 0,0
sparkno = -1 * (var(30):=7020)**0
sparkxy = -10 + 0*(var(32):=62), var(33):=-38
hitsound = s2,5
guardsound = s6,0
guard.sparkno = -1 * (var(31):=7305)**0
animtype = hard
air.animtype = back
ground.type = low
ground.slidetime = 17
ground.hittime = 17
guard.hittime = (17) - 6
ground.velocity = -1,3
air.velocity = -1,3
fall = 1
fall.recover = 0
envshake.time = 9
envshake.ampl = 5

;---------------------------------------------------------------------------
; EX Karakusa
[Statedef 2400]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 1415
sprpriority = 2
poweradd = -500

[State 1100, 2]
type = PlaySnd
trigger1 = time = 1
value = 75,0
volume = -100
ignorehitpause = 1
persistent = 0

[State 2000, ExFX]
type = Explod
trigger1 = !time
anim = 7780
sprpriority = 3
postype = p1
pos = -10,-62
scale = .5,.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 1,0
channel = 0

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 9
value = 800,0
volume = 255

[State 1800, 1]
type = HitDef
triggerall = p2stateno != 1431
trigger1 = animelem = 5
trigger1 = p2stateno != 40
attr = S, ST
hitflag = M-
priority = 5, Miss
sparkno = -1
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 2410
p2stateno = 1430
guard.dist = 0
getpower = 0,0

[State 1800, 2]
type = ChangeState
Trigger1 = Animelem = 14
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; EX Karakusa Success
[Statedef 2410]
type = S
movetype= A
physics = N
anim = 1420

[State 210, 1]
type = PlaySnd
trigger1 = time = 0
value = 100,6

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 18
value = 0, 2
channel = 0

[State 1900, Bind 1]
type = posadd
trigger1 = animelem = 5
x = -10

[State 1900, Bind 1]
type = posadd
trigger1 = animelem = 22
x = -12

[State 1900, Width 2-11]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(12) < 0
edge = 60,0

[State 1900, Bind 1]
type = TargetBind
trigger1 = time = 0
pos = 52, 0

[State 1900, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 3
pos = 45, 0

[State 1900, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 4
pos = 20, 0

[State 1900, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 5
pos = 5, 0

[State 1900, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 8
pos = -5, 0

[State 1900, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 9
pos = 2, -76

[State 1900, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 10
pos = 2, -81

[State 1900, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 11
pos = 2, -96

[State 1900, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 12
pos = 2, -114

[State 1900, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 13
pos = 2, -117

[State 1900, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 14
pos = -4, -117

[State 1900, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 15
pos = 0, -115

[State 1900, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 16
pos = 4, -112

[State 1900, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 17
pos = 32, -114

[State 1900, Bind 2-4]
type = TargetBind
trigger1 = AnimElem = 18
pos = 36, 0

[State 1900, Bind 2-4]
type = Targetstate
trigger1 = AnimElem = 22
value = 1431

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 2
value = 1400,0
channel = 1

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 2
value = 1401,0
channel = 1

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 14
value = 1400,1
channel = 1

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 14
value = 1401,1
channel = 1

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 14
value = 1400,2

[State 1900, Bind 2-4]
type = Targetlifeadd
trigger1 = AnimElem = 14
value = -60

[State 7010, Spark]
type = helper
trigger1 = animelem = 14
helpertype = normal
stateno = ifelse(moveguarded, 7305, 7020)
ID = 8000
name = "Spark"
postype = p1
pos = ifelse(p2dist x<0, 0, ifelse(p2dist x<14, ceil(p2dist x), 14)), -110
facing = -1
ownpal = 1
size.xscale = .5
size.yscale = .5
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1900, State End]
type = ChangeState
trigger1 = Animelem = 23
value = 0
ctrl = 1