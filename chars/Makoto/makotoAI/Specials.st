;***************************************************************************;
;****************************** Specials State *****************************;
;***************************************************************************;
;***************************************************************************;

;---------------------------------------------------------------------------
; Start Light Hayate
[Statedef 1000]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
poweradd = 60*!var(20)
anim = 1000
sprpriority = 2

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 4
value = 1000,0
channel = 0

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 4
value = 1001,0
channel = 0

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 2
trigger1 = animelem = 4
value = 1000,20
channel = 0

[State 1000, 0]
type = varset
trigger1 = time = 0
var(2) = 0

[State 1000, 1]
type = varadd
trigger1 = time = 7
trigger2 = time = 27
trigger3 = time = 47
trigger4 = time = 67
var(2) = 1

[State 1000, 2]
type = ChangeState
triggerall = time >= 5
trigger1 = var(59)
value = ifelse((p2statetype=A&&p2movetype!=H)||p2movetype=A||inguarddist,1035,1001)

[State 1000, 2]
type = ChangeState
trigger1 = command != "holdx"
trigger1 = time >= 5
trigger2 = animtime = 0
trigger3 = var(50) = 1
trigger3 = time = 4
value = 1001

[State 1000, 2]
type = ChangeState
triggerall = time >= 5
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
value = 1035

;---------------------------------------------------------------------------
; Light Hayate Ready
[Statedef 1001]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0

[State 1000, 7]
type = Changeanim
trigger1 = time = 0
value = 1000
elem = 4

[State 1000, 7]
type = ChangeState
trigger1 = time = 1
value = 1002

;---------------------------------------------------------------------------
; Light Hayate
[Statedef 1002]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 1001
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

[State 1000, 1]
type = varset
trigger1 = var(2) = 0
var(15) = 90

[State 1000, 1]
type = varset
trigger1 = var(2) = 1
var(15) = 110

[State 1000, 1]
type = varset
trigger1 = var(2) = 2
var(15) = 122

[State 1000, 1]
type = varset
trigger1 = var(2) = 3
var(15) = 134

[State 1000, 1]
type = varset
trigger1 = var(2) = 4
var(15) = 142

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
triggerall = var(39) = 2
trigger1 = time = 1
value = 1000,21
channel = 0

[State 210, 1]
type = PlaySnd
trigger1 = time = 1
value = 1000,2

[State 1000, 7]
type = velset
trigger1 = animelem = 2
x = 12

[State 1000, 7]
type = velset
triggerall = vel x >=12
trigger1 = animelem = 3
trigger2 = animelem = 4
x = 2

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
trigger1 = var(2) < 3
attr = S, SA
animtype = hard
air.animtype = back
damage = ceil(var(15)),1
guardflag = M
hitflag = MA
pausetime = 8,12
getpower = 36*!var(20)
sparkno = -1 * (var(30):=7020)**0
sparkxy = -10 + 0*(var(32):=62), var(33):=-58
hitsound = s2,2
guardsound = s6,0
guard.sparkno = -1 * (var(31):=7305)**0
ground.type = low
ground.slidetime = 12
ground.hittime = 17
guard.hittime = (17) - 6
ground.velocity = -5.5
air.velocity = -5.5,-4
fall.recover = 0
yAccel = (0.5 + (ComboCount * 0.06))
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120
fall = 0
air.fall = 0

[State 1000, 2]
type = HitDef
trigger1 = time = 0
trigger1 = var(2) >= 3
attr = S, SA
animtype = hard
air.animtype = back
damage = ceil(var(15)),4
guardflag = M
hitflag = MA
pausetime = 8,12
getpower = 36*!var(20)
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
yAccel = (0.5 + (ComboCount * 0.06))
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120
fall = 1
air.fall = 1

[State 1000, 7]
type = Changeanim
trigger1 = movecontact
value = 1001
elem = 4
ignorehitpause = 1
persistent = 0

[State 1000, 7]
type = ChangeState
trigger1 = !moveguarded
trigger1 = !movehit
trigger1 = animelem = 9
value = 1030

[State 1000, 7]
type = ChangeState
trigger1 = movehit
trigger1 = animelem = 7
value = 1030

[State 1000, 7]
type = ChangeState
triggerall = moveguarded
trigger1 = var(2) = 0 && Animtime = 0
trigger2 = var(2) = 1 && Animelem = 11,1
trigger3 = var(2) = 2 && Animelem = 11
trigger4 = var(2) = 3 && Animelem = 11
trigger5 = var(2) = 4 && Animelem = 10
value = 1030

;---------------------------------------------------------------------------
; Start Medium Hayate
[Statedef 1010]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
poweradd = 60*!var(20)
anim = 1000
sprpriority = 2

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 4
value = 1000,0
channel = 0

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 4
value = 1001,0
channel = 0

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 2
trigger1 = animelem = 4
value = 1000,20
channel = 0

[State 1000, 0]
type = varset
trigger1 = time = 0
var(2) = 0

[State 1000, 1]
type = varadd
trigger1 = time = 7
trigger2 = time = 27
trigger3 = time = 47
trigger4 = time = 67
var(2) = 1

[State 1000, 2]
type = ChangeState
triggerall = time >= 5
trigger1 = var(59)
value = ifelse((p2statetype=A&&p2movetype!=H)||p2movetype=A||inguarddist,1035,1011)

[State 1000, 2]
type = ChangeState
trigger1 = command != "holdy"
trigger1 = time >= 5
trigger2 = animtime = 0
trigger3 = var(50) = 1
trigger3 = time = 4
value = 1011

[State 1000, 2]
type = ChangeState
triggerall = time >= 5
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
value = 1035

;---------------------------------------------------------------------------
; Medium Hayate Ready
[Statedef 1011]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0

[State 1000, 7]
type = Changeanim
trigger1 = time = 0
value = 1000
elem = 4

[State 1000, 7]
type = ChangeState
trigger1 = time = 1
value = 1012

;---------------------------------------------------------------------------
; Medium Hayate
[Statedef 1012]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 1002
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

[State 1000, 1]
type = varset
trigger1 = var(2) = 0
var(15) = 90

[State 1000, 1]
type = varset
trigger1 = var(2) = 1
var(15) = 110

[State 1000, 1]
type = varset
trigger1 = var(2) = 2
var(15) = 122

[State 1000, 1]
type = varset
trigger1 = var(2) = 3
var(15) = 134

[State 1000, 1]
type = varset
trigger1 = var(2) = 4
var(15) = 142

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
triggerall = var(39) = 2
trigger1 = time = 1
value = 1000,21
channel = 0

[State 210, 1]
type = PlaySnd
trigger1 = time = 1
value = 1000,2

[State 1000, 7]
type = velset
trigger1 = animelem = 2
x = 18

[State 1000, 7]
type = velset
triggerall = vel x >=18
trigger1 = animelem = 4
trigger2 = animelem = 5
x = 3

[State 1000, 7]
type = statetypeset
trigger1 = animelem = 4
trigger2 = animelem = 5
statetype = S
movetype = A
physics = S

[State 1000, 2]
type = HitDef
trigger1 = time = 0
trigger1 = var(2) < 3
attr = S, SA
animtype = hard
air.animtype = back
damage = ceil(var(15)),1
guardflag = M
hitflag = MA
pausetime = 8,12
getpower = 36*!var(20)
sparkno = -1 * (var(30):=7020)**0
sparkxy = -10 + 0*(var(32):=62), var(33):=-58
hitsound = s2,2
guardsound = s6,0
guard.sparkno = -1 * (var(31):=7305)**0
ground.type = low
ground.slidetime = 12
ground.hittime = 17
guard.hittime = (17) - 6
ground.velocity = -5.5
air.velocity = -5.5,-4
fall.recover = 0
yAccel = (0.5 + (ComboCount * 0.06))
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120
fall = 0
air.fall = 0

[State 1000, 2]
type = HitDef
trigger1 = time = 0
trigger1 = var(2) >= 3
attr = S, SA
animtype = hard
air.animtype = back
damage = ceil(var(15)),4
guardflag = M
hitflag = MA
pausetime = 8,12
getpower = 36*!var(20)
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
yAccel = (0.5 + (ComboCount * 0.06))
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120
fall = 1
air.fall = 1


[State 1000, 7]
type = Changeanim
trigger1 = movecontact
value = 1001
elem = 4
ignorehitpause = 1
persistent = 0

[State 1000, 7]
type = ChangeState
trigger1 = !moveguarded
trigger1 = !movehit
trigger1 = animelem = 9
value = 1030

[State 1000, 7]
type = ChangeState
trigger1 = movehit
trigger1 = animelem = 7
value = 1030

[State 1000, 7]
type = ChangeState
triggerall = moveguarded
trigger1 = var(2) = 0 && Animtime = 0
trigger2 = var(2) = 1 && Animelem = 11,1
trigger3 = var(2) = 2 && Animelem = 11
trigger4 = var(2) = 3 && Animelem = 11
trigger5 = var(2) = 4 && Animelem = 10
value = 1030

;---------------------------------------------------------------------------
; Start Strong Hayate
[Statedef 1020]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
poweradd = 60*!var(20)
anim = 1000
sprpriority = 2

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 4
value = 1000,0
channel = 0

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 4
value = 1001,0
channel = 0

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 2
trigger1 = animelem = 4
value = 1000,20
channel = 0

[State 1000, 0]
type = varset
trigger1 = time = 0
var(2) = 0

[State 1000, 1]
type = varadd
trigger1 = time = 7
trigger2 = time = 27
trigger3 = time = 47
trigger4 = time = 67
var(2) = 1

[State 1000, 2]
type = ChangeState
triggerall = time >= 5
trigger1 = var(59)
value = ifelse((p2statetype=A&&p2movetype!=H)||p2movetype=A||inguarddist,1035,1021)

[State 1000, 2]
type = ChangeState
trigger1 = command != "holdz"
trigger1 = time >= 5
trigger2 = animtime = 0
trigger3 = var(50) = 1
trigger3 = time = 4
value = 1021

[State 1000, 2]
type = ChangeState
triggerall = time >= 5
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
value = 1035

;---------------------------------------------------------------------------
; Strong Hayate Ready
[Statedef 1021]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0

[State 1000, 7]
type = Changeanim
trigger1 = time = 0
value = 1000
elem = 4

[State 1000, 7]
type = ChangeState
trigger1 = time = 1
value = 1022

;---------------------------------------------------------------------------
; Strong Hayate
[Statedef 1022]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 1003
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

[State 1000, 1]
type = varset
trigger1 = var(2) = 0
var(15) = 90

[State 1000, 1]
type = varset
trigger1 = var(2) = 1
var(15) = 110

[State 1000, 1]
type = varset
trigger1 = var(2) = 2
var(15) = 122

[State 1000, 1]
type = varset
trigger1 = var(2) = 3
var(15) = 134

[State 1000, 1]
type = varset
trigger1 = var(2) = 4
var(15) = 142

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
triggerall = var(39) = 2
trigger1 = time = 1
value = 1000,21
channel = 0

[State 210, 1]
type = PlaySnd
trigger1 = time = 1
value = 1000,2

[State 1000, 7]
type = velset
trigger1 = animelem = 2
x = 26

[State 1000, 7]
type = velset
triggerall = vel x >=26
trigger1 = animelem = 4
trigger2 = animelem = 5
x = 4

[State 1000, 7]
type = statetypeset
trigger1 = animelem = 4
trigger2 = animelem = 5
statetype = S
movetype = A
physics = S

[State 1000, 2]
type = HitDef
trigger1 = time = 0
trigger1 = var(2) < 3
attr = S, SA
animtype = hard
air.animtype = back
damage = ceil(var(15)),1
guardflag = M
hitflag = MA
pausetime = 8,12
getpower = 36*!var(20)
sparkno = -1 * (var(30):=7020)**0
sparkxy = -10 + 0*(var(32):=62), var(33):=-58
hitsound = s2,2
guardsound = s6,0
guard.sparkno = -1 * (var(31):=7305)**0
ground.type = low
ground.slidetime = 12
ground.hittime = 17
guard.hittime = (17) - 6
ground.velocity = -5.5
air.velocity = -5.5,-4
fall.recover = 0
yAccel = (0.5 + (ComboCount * 0.06))
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120
fall = 0
air.fall = 0

[State 1000, 2]
type = HitDef
trigger1 = time = 0
trigger1 = var(2) >= 3
attr = S, SA
animtype = hard
air.animtype = back
damage = ceil(var(15)),4
guardflag = M
hitflag = MA
pausetime = 8,12
getpower = 36*!var(20)
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
yAccel = (0.5 + (ComboCount * 0.06))
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120
fall = 1
air.fall = 1

[State 1000, 7]
type = Changeanim
trigger1 = movecontact
value = 1001
elem = 4
ignorehitpause = 1
persistent = 0

[State 1000, 7]
type = ChangeState
trigger1 = !moveguarded
trigger1 = !movehit
trigger1 = animelem = 9
value = 1030

[State 1000, 7]
type = ChangeState
trigger1 = movehit
trigger1 = animelem = 7
value = 1030

[State 1000, 7]
type = ChangeState
triggerall = moveguarded
trigger1 = var(2) = 0 && Animtime = 0
trigger2 = var(2) = 1 && Animelem = 11,1
trigger3 = var(2) = 2 && Animelem = 11
trigger4 = var(2) = 3 && Animelem = 11
trigger5 = var(2) = 4 && Animelem = 10
value = 1030

;---------------------------------------------------------------------------
; Stop Hayate
[Statedef 1030]
type = S
movetype= A
physics = S
velset = 0,0
anim = 1005
ctrl = 0
sprpriority = 2

[State 1030, 2]
type = ChangeState
trigger1 = command = "start"
value = 1036

[State 1000, 7]
type = ChangeState
trigger1 = Animelem = 5,1
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hayate Faint
[Statedef 1035]
type = S
movetype= I
physics = S
velset = 0,0
anim = 1030
ctrl = 0
sprpriority = 2

[State 0, StopSnd]
type = StopSnd
trigger1 = !time
channel = 0

[State 1100, 7]
type = ChangeState
trigger1 = Animelem = 3,1
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hayate Taunt
[Statedef 1036]
type = S
movetype= I
physics = S
velset = 0,0
anim = 1035
ctrl = 0
sprpriority = 2

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 5
value = 1000,3
channel = 0

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 5
value = 1001,3
channel = 0

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 2
trigger1 = animelem = 5
value = 1000,23
channel = 0

[State 1100, 7]
type = ChangeState
trigger1 = Animelem = 13
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Light Fukiage
[Statedef 1100]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 1100
sprpriority = 2
poweradd = 30*!var(20)

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

[State 7420, dust]
type = helper
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

[State 1200, 2]
type = HitDef
trigger1 = time = 0
attr = S,SA
animtype = Medium
damage = 128,2
guardflag = M
hitflag = AF
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
yAccel = (0.5 + (ComboCount * 0.06))
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120
fall = 1
air.fall = 1

[State 1200, 7]
type = Changeanim
trigger1 = movecontact
value = 1100
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
; Medium Fukiage
[Statedef 1110]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
sprpriority = 2
poweradd = 30*!var(20)

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0 
value = 1115

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

[State 7420, dust]
type = helper
triggerall = anim = 1105
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
volume = 255
value = 100,3

[State 210, 1]
type = PlaySnd
triggerall = anim = 1115
trigger1 = animelem = 1
value = 1100,0

[State 100, 1]
type = VelAdd
triggerall = anim = 1115
trigger1 = animelem = 2
x = 15

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = anim = 1115
trigger1 = !animtime
value = 1105

[State 100, 1]
type = VelSet
triggerall = anim = 1105
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
animtype = Medium
damage = 128,2
guardflag = M
hitflag = AF
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
yAccel = (0.5 + (ComboCount * 0.06))
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120
fall = 1
air.fall = 1

[State 1200, 7]
type = Changeanim
trigger1 = movecontact
value = 1105
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
; Strong Fukiage
[Statedef 1120]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
sprpriority = 2
poweradd = 30*!var(20)

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = time = 0 
value = 1115

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
triggerall = anim = 1110
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
value = 1110

[State 100, 1]
type = VelSet
triggerall = anim = 1110
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
animtype = Medium
damage = 128,2
guardflag = M
hitflag = AF
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
yAccel = (0.5 + (ComboCount * 0.06))
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120
fall = 1
air.fall = 1

[State 1200, 7]
type = Changeanim
trigger1 = movecontact
value = 1110
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
; Light Oroshi
[Statedef 1200]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 1200
sprpriority = 2
poweradd = 30*!var(20)

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 2
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
damage = 90,3
guardflag = H
hitflag = MA
pausetime = 11,14
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
ground.velocity = -6.5
air.velocity = -2.5,10
fall.recover = 0
yAccel = (0.5 + (ComboCount * 0.06))
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120
fall = 0
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
value = 1200
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
; Medium Oroshi
[Statedef 1210]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 1210
sprpriority = 2
poweradd = 30*!var(20)

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 2
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
damage = 90,3
guardflag = H
hitflag = MA
pausetime = 11,14
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
ground.velocity = -6.5
air.velocity = -2.5,-10
fall.recover = 0
yAccel = (0.5 + (ComboCount * 0.06))
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120
fall = 0
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
value = 1210
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
; Strong Oroshi
[Statedef 1220]
type = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 1220
sprpriority = 2
poweradd = 30*!var(20)

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 2
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
damage = 90,3
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
yAccel = (0.5 + (ComboCount * 0.06))
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
value = 1220
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
; Light Tsurugi
[Statedef 1300]
type = A
movetype= A
physics = A
juggle = 2
ctrl = 0
anim = 1300
sprpriority = 2
poweradd = 30

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
trigger1 = time = [1,7]
x = 0
y = 0

[State 1600, 2]
type = velset
trigger1 = time = 8
x = fvar(0)
y = fvar(1)

[State 1600, 2]
type = veladd
trigger1 = animelem = 8,0
x = 1

[State 1600, 3]
type = HitDef
trigger1 = Time = 0
attr = A, SA
damage = 162,2
guardflag = H
hitflag = MAF
priority = 4
pausetime = 16,18
getpower = 140*!var(20),3
sparkno = -1 * (var(30):=7020)**0
sparkxy = -10 + 0*(var(32):=62), var(33):=-38
hitsound = s2,5
guardsound = s6,0
guard.sparkno = -1 * (var(31):=7305)**0
animtype = hard
air.animtype = back
ground.type = low
ground.slidetime = 15
ground.hittime = 15
guard.hittime = (15) - 6
ground.velocity = -7
air.velocity = -4,6
fall.recover = 0
yAccel = (0.5 + (ComboCount * 0.06))
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120
fall = 0
air.fall = 1
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -10

[State 1600, 7]
type = Changeanim
trigger1 = movecontact
value = 1300
elem = 13
ignorehitpause = 1
persistent = 0

;---------------------------------------------------------------------------
; Medium Tsurugi
[Statedef 1310]
type = A
movetype= A
physics = A
juggle = 2
ctrl = 0
anim = 1310
sprpriority = 2
poweradd = 30

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
trigger1 = time = [1,7]
x = 0
y = 0

[State 1600, 2]
type = velset
trigger1 = time = 8
x = fvar(0)
y = fvar(1)

[State 1600, 2]
type = veladd
trigger1 = animelem = 8,0
x = 1

[State 1600, 3]
type = HitDef
trigger1 = Time = 0
attr = A, SA
damage = 162,2
guardflag = H
hitflag = MAF
priority = 4
pausetime = 16,18
getpower = 140*!var(20),3
sparkno = -1 * (var(30):=7020)**0
sparkxy = -10 + 0*(var(32):=62), var(33):=-38
hitsound = s2,5
guardsound = s6,0
guard.sparkno = -1 * (var(31):=7305)**0
animtype = hard
air.animtype = back
ground.type = low
ground.slidetime = 16
ground.hittime = 16
guard.hittime = (16) - 6
ground.velocity = -7.5
air.velocity = -4,6
fall.recover = 0
yAccel = (0.5 + (ComboCount * 0.06))
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120
fall = 0
air.fall = 1
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -10

[State 1600, 7]
type = Changeanim
trigger1 = movecontact
value = 1310
elem = 13
ignorehitpause = 1
persistent = 0

;---------------------------------------------------------------------------
; Strong Tsurugi
[Statedef 1320]
type = A
movetype= A
physics = A
juggle = 2
ctrl = 0
anim = 1320
sprpriority = 2
poweradd = 30

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
trigger1 = time = [1,7]
x = 0
y = 0

[State 1600, 2]
type = velset
trigger1 = time = 8
x = fvar(0)
y = fvar(1)

[State 1600, 2]
type = veladd
trigger1 = animelem = 8,0
x = 1

[State 1600, 3]
type = HitDef
trigger1 = Time = 0
attr = A, SA
damage = 162,2
guardflag = H
hitflag = MAF
priority = 4
pausetime = 17,19
getpower = 140*!var(20),3
sparkno = -1 * (var(30):=7020)**0
sparkxy = -10 + 0*(var(32):=62), var(33):=-38
hitsound = s2,5
guardsound = s6,0
guard.sparkno = -1 * (var(31):=7305)**0
animtype = hard
air.animtype = back
ground.type = low
ground.slidetime = 16
ground.hittime = 16
guard.hittime = (16) - 6
ground.velocity = -3,6
air.velocity = -4,6
fall.recover = 0
yAccel = (0.5 + (ComboCount * 0.06))
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120
fall = 1
air.fall = 1
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -10

[State 1600, 7]
type = Changeanim
trigger1 = movecontact
value = 1320
elem = 13
ignorehitpause = 1
persistent = 0

;---------------------------------------------------------------------------
; Light Karakusa
[Statedef 1400]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 1400
sprpriority = 2

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
p1stateno = 1420
p2stateno = 1430
guard.dist = 0
getpower = 0,0

[State 1800, 2]
type = ChangeState
Trigger1 = Animelem = 14
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Medium Karakusa
[Statedef 1405]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 1405
sprpriority = 2

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
p1stateno = 1420
p2stateno = 1430
guard.dist = 0
getpower = 0,0

[State 1800, 2]
type = ChangeState
Trigger1 = Animelem = 14
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Strong Karakusa
[Statedef 1410]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 1410
sprpriority = 2

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
p1stateno = 1420
p2stateno = 1430
guard.dist = 0
getpower = 0,0

[State 1800, 2]
type = ChangeState
Trigger1 = Animelem = 14
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Karakusa Success
[Statedef 1420]
type = S
movetype= A
physics = N
anim = 1420
poweradd = 70

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
value = -30

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

;---------------------------------------------------------------------------
; P2 Karakusa Custom State 1
[Statedef 1430]
type = S
movetype= H
physics = N
velset = 0,0

[State 1910, No scroll] 
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 1910, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 1430

;---------------------------------------------------------------------------
; P2 Karakusa Custom State 2
[Statedef 1431]
type = S
movetype= H
physics = N
anim = 5011
velset = 0,0

[State 1911, 1]
type = ChangeAnim
Trigger1 = anim = 5011
Trigger1 = animtime = 0
value = 5016

[State 1900, State End]
type = ChangeState
trigger1 = !Alive
trigger1 = time = 0
value = 1432

[State 1911, 4] ;Hit ground
type = ChangeState
trigger1 = Alive
trigger1 = time = 16
trigger1 = enemy,var(36) >= 64
value = 15300

[State 1911, 4] ;Hit ground
type = SelfState
trigger1 = Alive
trigger1 = time = 26
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; P2 Karakusa Custom State 3
[Statedef 1432]
type = S
movetype= H
physics = N
velset = 0,0

[State -2, 1]
type = AssertSpecial
trigger1 = SelfAnimExist(5950)
flag = nokosnd

[State 1911, 1]
type = ChangeAnim
trigger1 = time = 0
trigger1 = SelfAnimExist(5950)
value = 5950

[State 1911, 1]
type = SelfState
trigger1 = time = 0
trigger1 = !SelfAnimExist(5950)
value = 5030

[State 1911, 1]
type = ChangeAnim
triggerall = anim = 5950
triggerall = SelfAnimExist(5152)
trigger1 = time = 100
value = 5152

[State 1911, 1]
type = ChangeAnim
triggerall = anim = 5950
triggerall = !SelfAnimExist(5152)
triggerall = SelfAnimExist(5150)
trigger1 = time = 100
value = 5150

[State 1911, 1]
type = ChangeAnim
triggerall = anim = 5950
triggerall = !SelfAnimExist(5152)
triggerall = !SelfAnimExist(5150)
trigger1 = time = 100
value = 5110

[State 1911, 1]
type = SelfState
trigger1 = anim = 5950
trigger1 = animtime = 0
trigger2 = (anim = 5152) || (anim = 5150)|| (anim = 5110)
value = 5150
ctrl = 0

;---------------------------------------------------------------------------
; Zero Counter
[Statedef 1500]
type = S
movetype= A
physics = S
juggle = 8
poweradd= 0
ctrl = 0
velset = 0,0
anim = 225
sprpriority = 1

[State 240, 2]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 5
value = s202,0+random%3
channel = 0
volume = 255

[State 240, 2]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 5
value = s212,0+random%3
channel = 0
volume = 255

[State 200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 6
value = 1,2

[State 810, Width 2-11]
type = Width
trigger1 = time = 0
value = 18

[State 810, Width 2-11]
type = Width
trigger1 = AnimElem = 2
value = 8

[State 215, 5]
type = velset
trigger1 = Animelem = 2,0
x = 48
[State 215, 5]
type = velset
trigger1 = Animelem = 2,1
x = 0
[State 215, 5]
type = posadd
trigger1 = Animelem = 3
x = 16
[State 215, 5]
type = posadd
trigger1 = Animelem = 4
x = 2
[State 215, 5]
type = posadd
trigger1 = Animelem = 5
x = 14
[State 215, 5]
type = posadd
trigger1 = Animelem = 6
x = 10
[State 215, 5]
type = posadd
trigger1 = Animelem = 7
x = 9
[State 215, 5]
type = posadd
trigger1 = Animelem = 13
x = -22
[State 215, 5]
type = posadd
trigger1 = Animelem = 14
x = -19
[State 215, 5]
type = posadd
trigger1 = Animelem = 15
x = -14
[State 215, 5]
type = posadd
trigger1 = Animelem = 16
x = -22
[State 215, 5]
type = posadd
trigger1 = Animelem = 17
x = -22

[State 220, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype = Hard
damage = 57
guardflag = MA
hitflag = MA
pausetime = 12,12
getpower = 36*!var(20)
sparkno = -1 * (var(30):=7010)**0
sparkxy = -10 + 0*(var(32):=62), var(33):=-59
hitsound = s2,2
guardsound = s6,0
guard.sparkno = -1 * (var(31):=7300)**0
ground.type = Low
ground.slidetime = 15
ground.hittime = 17
guard.hittime = (17) - 6
ground.velocity = -5.5
air.velocity = -2.5,-4
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 1
fall.recovertime = 120

[State 225, 7]
type = Changeanim
trigger1 = movecontact
value = 225
elem = 10
ignorehitpause = 1
persistent = 0

[State 220, 5]
type = varadd
trigger1 = movehit
trigger1 = enemy,stateno = [5000,5300]
persistent = 0
ignorehitpause = 1
var(36) = ifelse(13-var(31)> 0,13-var(31),0)+1

[State 220, 4]
type = SprPriority
trigger1 = AnimElem = 5
value = 2

[State 225, 5]
type = ChangeState
trigger1 = Animelem = 17,1
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Zero Counter
[Statedef 1510]
type = C
movetype= A
physics = C
juggle = 6
poweradd= 0
ctrl = 0
anim = 420
sprpriority = 2

[State 410, 1]
type = PlaySnd
trigger1 = Time = 1
value = 1,2

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
value = s212,0+random%3
channel = 0
volume = 255

[State 410, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = C, NA
damage = 66
animtype = Hard
hitflag = M
guardflag = L
pausetime = 12,12
getpower = 36*!var(20)
sparkno = -1 * (var(30):=7010)**0
sparkxy = -10 + 0*(var(32):=90), var(33):=-15
hitsound = s2,2
guardsound = s6,0
guard.sparkno = -1 * (var(31):=7300)**0
ground.type = trip
ground.slidetime = 12
ground.hittime = 15
guard.hittime = (15) - 6
ground.velocity = -2,-3
air.velocity = -3,-4
guard.velocity = -7
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recovertime = 120
fall = 1

[State 410, 4]
type = ChangeState
trigger1 = Animelem = 13,1
value = 11
ctrl = 1