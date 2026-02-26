;***************************************************************************;
;******************************* Supers State ******************************;
;***************************************************************************;
;***************************************************************************;

;------------------------------------------------------------------
; Seichuzen Godanzuki Control
[Statedef 3000]
type = U
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 9999

[State 3000, 7] ;------ Level 1 Switch
type = ChangeState
triggerall = command = "Seichuzen Godanzuki"||var(59)
trigger1 = time = 0
value = 3001

;------------------------------------------------------------------
;MAX Seichuzen Godanzuki Control
[Statedef 3050]
type = U
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 9999

[State 3000, 7] ;------ Level 2 Switch
type = ChangeState
triggerall = command = "MAX Seichuzen Godanzuki"||var(59)
trigger1 = time = 0
value = ifelse(power<2000,3001,3020)

;-------------------------------------------------------------------------
; Start Light Seichuzen Godanzuki
 [Statedef 3001]
type = S
movetype = A
physics = S
juggle  = 7
velset = 0,0
ctrl = 0
anim = 3000
sprpriority = 2

[State 3000, StateType]
type = statetypeset
trigger1 = animelem = 3
movetype = A

[State 3000, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20):=0)
time = 1

[State 1000, CC Juggle]
type = varset
trigger1 = !time && var(20)
var(16) = 0
ignorehitpause = 1

[State 3000, SpiralVar]
type = varset
trigger1 = var(10)!=7
var(10) = 7

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelemtime(43) = 0
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = N         ;A,C,S,N

[State 3000, Superpause]
type = SuperPause
trigger1 = animelem = 1
time = 89
movetime = 89
anim = -1
pos = 0,0
darken = 0
p2defmul = 1
poweradd = -1000
unhittable = 0

[State 3400, 7]
type = varset
trigger1 = animelem = 1
var(9) = power

[State 3000, Super Charge]
type = helper
trigger1 = animelem = 10
helpertype = normal
stateno = 8500
ID = 8500
name = "Super Charge"
postype = p1
pos = -8,-54
ownpal = 1
persistent = 0
supermovetime = 9999

[State 1200, 3]
type = PlaySnd
trigger1 = animelem = 10
value = s75,2
volume = 255

[State 3301, Pow Effect]
type = helper
triggerall = movehit&&numtarget
trigger1 = stateno = 3000
trigger2 = !(target,time)&&(target,movetype=H)
id = 7805
name = "Pow Effect"
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(32), ceil(P2Dist x), var(32))), var(33)
postype = P1
stateno = 7805
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
pausemovetime = 99999
supermovetime = 99999
size.xscale = 1
size.yscale = 1

[State 3000, 7]
type = posadd
trigger1 = animelem = 2
trigger2 = animelem = 3
x = 12

[State 1200, 3]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = time = 0
value = S780,0
volume = 255
channel = 1

[State 1200, 3]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = time = 0
value = S790,0
volume = 255
channel = 1

[State 1200, 3]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 23
value = S3000,0
volume = 255
channel = 1

[State 1200, 3]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 23
value = S3010,0
volume = 255
channel = 1

[State 1200, 3]
type = PlaySnd
triggerall = var(39) = 2
trigger1 = animelem = 23
value = S3010,20
volume = 255
channel = 1

[State 1000, HitSound]
type = playsnd
trigger1 = movecontact=1 && numtarget
trigger1 = !(target,hitshakeover) && enemynear,time = 1
value= ifelse(moveguarded, 6, 2), ifelse(moveguarded, 0, 6)
ignorehitpause = 1

[State 3000, 8]
type = NotHitBy
trigger1 = time <= 90
value = SCA

[State 1200, 3]
type = PlaySnd
triggerall = var(39) = 2
trigger1 = animelem = 44
value = S1000,21
volume = 255
channel = 1

[State 1200, 3]
type = PlaySnd
trigger1 = animelem = 43
value = S1,2
volume = 255

[State 3000, 2]
type = HitDef
trigger1 = Time = 1
attr = S, HA
animtype  = hard
damage    = 70,5
guardflag = M
hitflag = MA
pausetime = 12,45
guard.pausetime = 10,10
sparkno = -1 * (var(30):=7030)**0
guard.sparkno = -1 * (var(31):=7305)**0
sparkxy = -10 + 0*(var(32):=40), var(33):=-40
hitsound = -1
guardsound = -1
getpower = 0,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 30
guard.hittime = (30) - 6
ground.velocity = 3
air.velocity = 3,-3.2
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
kill = 0

[State 3000, 7]
type = ChangeState
triggerall = movehit
trigger1 = animelem = 52
value = 3005

[State 3000, 7]
type = ChangeState
trigger1 = animelem = 57,1
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Light Seichuzen Godanzuki
[Statedef 3005]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3010
sprpriority = 2

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 11
trigger2 = animelem = 15
trigger3 = animelem = 19
value = 1,2
channel = 0

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 27
value = 3000,1

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 27
value = 3010,1

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 2
trigger1 = animelem = 27
value = 3010,21

[State 3000, 7]
type = posadd
trigger1 = animelem = 23
x = 10

[State 3000, 7]
type = posadd
trigger1 = animelem = 26
x = 11

[State 1000, HitSound]
type = playsnd
triggerall = time <= 60
trigger1 = movecontact=1 && numtarget
trigger1 = !(target,hitshakeover) && enemynear,time = 1
value= ifelse(moveguarded, 6, 2), ifelse(moveguarded, 0, 2)
ignorehitpause = 1

[State 1000, HitSound]
type = playsnd
triggerall = time >= 61
trigger1 = movecontact=1 && numtarget
trigger1 = !(target,hitshakeover) && enemynear,time = 1
value= ifelse(moveguarded, 6, 2), ifelse(moveguarded, 0, 6)
ignorehitpause = 1

[State 250, 2]
type = HitDef
trigger1 = animelem = 11
attr = S, HA
animtype  = Medium
damage    = 32,5
guardflag = M
hitflag = MA
pausetime = 5,16
sparkno = -1 * (var(30):=7030)**0
guard.sparkno = -1 * (var(31):=7305)**0
sparkxy = -10 + 0*(var(32):=40), var(33):=-40
hitsound   = -1
guardsound = -1
getpower = 0,0
ground.type = low
ground.slidetime = 12
ground.hittime  = 15
guard.hittime = (15) - 6
ground.velocity = 0
air.velocity = -2.2,-3.2
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
kill = 0

[State 250, 2]
type = HitDef
trigger1 = animelem = 15
attr = S, HA
animtype  = Medium
damage    = 32,5
guardflag = M
hitflag = MA
pausetime = 5,16
sparkno = -1 * (var(30):=7030)**0
guard.sparkno = -1 * (var(31):=7305)**0
sparkxy = -10 + 0*(var(32):=40), var(33):=-50
hitsound   = -1
guardsound = -1
getpower = 0,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 30
guard.hittime = (30) - 6
ground.velocity = 0
air.velocity = -2.2,-3.2
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
kill = 0

[State 250, 2]
type = HitDef
trigger1 = animelem = 19
attr = S, HA
animtype  = Medium
damage    = 32,5
guardflag = M
hitflag = MA
pausetime = 5,16
sparkno = -1 * (var(30):=7030)**0
guard.sparkno = -1 * (var(31):=7305)**0
sparkxy = -10 + 0*(var(32):=40), var(33):=-65
hitsound   = -1
guardsound = -1
getpower = 0,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 30
guard.hittime = (30) - 6
ground.velocity = 0
air.velocity = -2.2,-3.2
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
kill = 0

[State 250, 2]
type = HitDef
trigger1 = animelem = 26
attr = S, HA
animtype  = back
damage    = 100,10
guardflag = M
hitflag = MA
pausetime = 30,30
sparkno = -1 * (var(30):=7030)**0
guard.sparkno = -1 * (var(31):=7305)**0
sparkxy = -10 + 0*(var(32):=40), var(33):=-90
hitsound   = -1
guardsound = -1
getpower = 0,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 30
guard.hittime = (30) - 6
ground.velocity = -5,-35
air.velocity = -5,-30
ground.cornerpush.veloff = -20
air.cornerpush.veloff = -5
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
p2stateno = 3040
fall = 1
fall.recover = 0
kill = 1
yaccel = 0.8

[State 3301, Pow Effect]
type = helper
triggerall = movehit&&numtarget&&time>=61
trigger1 = stateno = 3010
trigger2 = !(target,time)&&(target,movetype=H)
id = 7805
name = "Pow Effect"
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(32), ceil(P2Dist x), var(32))), var(33)
postype = P1
stateno = 7805
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
pausemovetime = 99999
supermovetime = 99999
size.xscale = 1
size.yscale = 1

[State 3000, 12]
type = Explod
trigger1 = animelem = 26
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

[State 3000, 12]
type = Explod
trigger1 = animelem = 26
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
scale = .3,.3
sprpriority = 6
ownpal = 1

[State 3000, 5]
type = Helper
trigger1 = AnimElem = 26
helpertype = normal
name = "Seichuzen Dust"
ID = 7430
postype = p1
facing = 1
stateno = 7430
ownpal = 1
ignorehitpause = 1
sprpriority = 2
persistent = 1
size.xscale = .39
size.yscale = .39

[State 3000, 7]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------
; Start Medium Seichuzen Godanzuki
[Statedef 3010]
type = S
movetype = A
physics = S
juggle  = 7
velset = 0,0
ctrl = 0
anim = 3000
sprpriority = 2

[State 3000, StateType]
type = statetypeset
trigger1 = animelem = 3
movetype = A

[State 3000, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20):=0)
time = 1

[State 1000, CC Juggle]
type = varset
trigger1 = !time && var(20)
var(16) = 0
ignorehitpause = 1

[State 3000, SpiralVar]
type = varset
trigger1 = var(10)!=7
var(10) = 7

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelemtime(43) = 0
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = N         ;A,C,S,N

[State 3000, Superpause]
type = SuperPause
trigger1 = animelem = 1
time = 89
movetime = 89
anim = -1
pos = 0,0
darken = 0
p2defmul = 1
poweradd = -2000
unhittable = 0

[State 3400, 7]
type = varset
trigger1 = animelem = 1
var(9) = power

[State 1200, 3]
type = PlaySnd
trigger1 = animelem = 10
value = s75,2
volume = 255

[State 3000, Super Charge]
type = helper
trigger1 = animelem = 10
helpertype = normal
stateno = 8510
ID = 8510
name = "Super Charge"
postype = p1
pos = -8,-54
ownpal = 1
persistent = 0
supermovetime = 9999

[State 3301, Pow Effect]
type = helper
triggerall = movehit&&numtarget
trigger1 = stateno = 3131
trigger2 = !(target,time)&&(target,movetype=H)
id = 7805
name = "Pow Effect"
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(32), ceil(P2Dist x), var(32))), var(33)
postype = P1
stateno = 7805
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
pausemovetime = 99999
supermovetime = 99999
size.xscale = 1
size.yscale = 1

[State 3000, 7]
type = posadd
trigger1 = animelem = 2
trigger2 = animelem = 3
x = 12

[State 1200, 3]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = time = 0
value = S780,0
volume = 255
channel = 1

[State 1200, 3]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = time = 0
value = S790,0
volume = 255
channel = 1

[State 1200, 3]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 23
value = S3000,0
volume = 255
channel = 1

[State 1200, 3]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 23
value = S3010,0
volume = 255
channel = 1

[State 1000, HitSound]
type = playsnd
trigger1 = movecontact=1 && numtarget
trigger1 = !(target,hitshakeover) && enemynear,time = 1
value= ifelse(moveguarded, 6, 2), ifelse(moveguarded, 0, 6)
ignorehitpause = 1

[State 3000, 8]
type = NotHitBy
trigger1 = time <= 90
value = SCA

[State 1200, 3]
type = PlaySnd
trigger1 = animelem = 43
value = S1,2
volume = 255

[State 3000, 2]
type = HitDef
trigger1 = Time = 1
attr = S, HA
animtype  = hard
damage    = 70,5
guardflag = M
hitflag = MA
pausetime = 12,45
guard.pausetime = 10,10
sparkno = -1 * (var(30):=7030)**0
guard.sparkno = -1 * (var(31):=7305)**0
sparkxy = -10 + 0*(var(32):=40), var(33):=-40
hitsound = -1
guardsound = -1
getpower = 0,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 30
guard.hittime = (30) - 6
ground.velocity = 3
air.velocity = 3,-3.2
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
kill = 0

[State 3000, 7]
type = ChangeState
triggerall = movehit
trigger1 = animelem = 52
value = 3015

[State 3000, 7]
type = ChangeState
trigger1 = animelem = 57,1
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Medium Seichuzen Godanzuki
[Statedef 3015]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3010
sprpriority = 2

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 11
trigger2 = animelem = 15
trigger3 = animelem = 19
value = 1,2
channel = 0

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 27
value = 3000,1

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 27
value = 3010,1

[State 3000, 7]
type = posadd
trigger1 = animelem = 23
x = 10

[State 3000, 7]
type = posadd
trigger1 = animelem = 26
x = 11

[State 1000, HitSound]
type = playsnd
triggerall = time <= 60
trigger1 = movecontact=1 && numtarget
trigger1 = !(target,hitshakeover) && enemynear,time = 1
value= ifelse(moveguarded, 6, 2), ifelse(moveguarded, 0, 2)
ignorehitpause = 1

[State 1000, HitSound]
type = playsnd
triggerall = time >= 61
trigger1 = movecontact=1 && numtarget
trigger1 = !(target,hitshakeover) && enemynear,time = 1
value= ifelse(moveguarded, 6, 2), ifelse(moveguarded, 0, 6)
ignorehitpause = 1

[State 250, 2]
type = HitDef
trigger1 = animelem = 11
attr = S, HA
animtype  = Medium
damage    = 42,5
guardflag = M
hitflag = MA
pausetime = 5,16
sparkno = -1 * (var(30):=7030)**0
guard.sparkno = -1 * (var(31):=7305)**0
sparkxy = -10 + 0*(var(32):=40), var(33):=-40
hitsound   = -1
guardsound = -1
getpower = 0,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
guard.hittime = (15) - 6
ground.velocity = 0
air.velocity = -2.2,-3.2
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
kill = 0

[State 250, 2]
type = HitDef
trigger1 = animelem = 15
attr = S, HA
animtype  = Medium
damage    = 42,5
guardflag = M
hitflag = MA
pausetime = 5,16
sparkno = -1 * (var(30):=7030)**0
guard.sparkno = -1 * (var(31):=7305)**0
sparkxy = -10 + 0*(var(32):=40), var(33):=-50
hitsound   = -1
guardsound = -1
getpower = 0,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 30
guard.hittime = (30) - 6
ground.velocity = 0
air.velocity = -2.2,-3.2
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
kill = 0

[State 250, 2]
type = HitDef
trigger1 = animelem = 19
attr = S, HA
animtype  = Medium
damage    = 42,5
guardflag = M
hitflag = MA
pausetime = 5,16
sparkno = -1 * (var(30):=7030)**0
guard.sparkno = -1 * (var(31):=7305)**0
sparkxy = -10 + 0*(var(32):=40), var(33):=-65
hitsound   = -1
guardsound = -1
getpower = 0,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 30
guard.hittime = (30) - 6
ground.velocity = 0
air.velocity = -2.2,-3.2
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
kill = 0

[State 250, 2]
type = HitDef
trigger1 = animelem = 26
attr = S, HA
animtype  = back
damage    = 150,10
guardflag = M
hitflag = MA
pausetime = 30,30
sparkno = -1 * (var(30):=7030)**0
guard.sparkno = -1 * (var(31):=7305)**0
sparkxy = -10 + 0*(var(32):=40), var(33):=-90
hitsound   = -1
guardsound = -1
getpower = 0,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 30
guard.hittime = (30) - 6
ground.velocity = -5,-35
air.velocity = -5,-30
ground.cornerpush.veloff = -20
air.cornerpush.veloff = -5
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
p2stateno = 3040
fall = 1
fall.recover = 0
kill = 1
yaccel = 0.8

[State 3301, Pow Effect]
type = helper
triggerall = movehit&&numtarget&&time>=61
trigger1 = stateno = 3131
trigger2 = !(target,time)&&(target,movetype=H)
id = 7805
name = "Pow Effect"
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(32), ceil(P2Dist x), var(32))), var(33)
postype = P1
stateno = 7805
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
pausemovetime = 99999
supermovetime = 99999
size.xscale = 1
size.yscale = 1

[State 3000, 12]
type = Explod
trigger1 = animelem = 26
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

[State 3000, 12]
type = Explod
trigger1 = animelem = 26
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
scale = .3,.3
sprpriority = 6
ownpal = 1

[State 3000, 5]
type = Helper
trigger1 = AnimElem = 26
helpertype = normal
name = "Seichuzen Dust"
ID = 7430
postype = p1
facing = 1
stateno = 7430
ownpal = 1
ignorehitpause = 1
sprpriority = 2
persistent = 1
size.xscale = .39
size.yscale = .39

[State 3000, 7]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------
; Start Strong Seichuzen Judanzuki
[Statedef 3020]
type = S
movetype = A
physics = S
juggle  = 7
velset = 0,0
ctrl = 0
anim = 3000
sprpriority = 2

[State 3000, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20):=0)
time = 1

[State 1000, CC Juggle]
type = varset
trigger1 = !time && var(20)
var(16) = 0
ignorehitpause = 1

[State 3000, SpiralVar]
type = varset
trigger1 = var(10)!=7
var(10) = 7

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelemtime(43) = 0
statetype = A       ;S,A,C,L
movetype = A        ;I,A,H
physics = N         ;A,C,S,N

[State 3000, Superpause]
type = SuperPause
trigger1 = animelem = 1
time = 89
movetime = 89
anim = -1
pos = 0,0
darken = 0
p2defmul = 1
poweradd = -2000
unhittable = 0

[State 3400, 7]
type = varset
trigger1 = animelem = 1
var(9) = power

[State 1200, 3]
type = PlaySnd
trigger1 = animelem = 10
value = s75,2
volume = 255

[State 3000, Super Charge]
type = helper
trigger1 = animelem = 10
helpertype = normal
stateno = 8510
ID = 8510
name = "Super Charge"
postype = p1
pos = -8,-54
ownpal = 1
persistent = 0
supermovetime = 9999

[State 3301, Pow Effect]
type = helper
triggerall = movehit&&numtarget
trigger1 = stateno = 3131
trigger2 = !(target,time)&&(target,movetype=H)
id = 7805
name = "Pow Effect"
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(32), ceil(P2Dist x), var(32))), var(33)
postype = P1
stateno = 7805
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
pausemovetime = 99999
supermovetime = 99999
size.xscale = 1
size.yscale = 1

[State 3000, 7]
type = posadd
trigger1 = animelem = 2
trigger2 = animelem = 3
x = 12

[State 1200, 3]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = time = 0
value = S780,0
volume = 255
channel = 1

[State 1200, 3]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = time = 0
value = S790,0
volume = 255
channel = 1

[State 1200, 3]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 23
value = S3000,0
volume = 255
channel = 1

[State 1200, 3]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 23
value = S3010,0
volume = 255
channel = 1

[State 1000, HitSound]
type = playsnd
trigger1 = movecontact=1 && numtarget
trigger1 = !(target,hitshakeover) && enemynear,time = 1
value= ifelse(moveguarded, 6, 2), ifelse(moveguarded, 0, 6)
ignorehitpause = 1

[State 3000, 8]
type = NotHitBy
trigger1 = time <= 90
value = SCA

[State 1200, 3]
type = PlaySnd
trigger1 = animelem = 43
value = S1,2
volume = 255

[State 3000, 2]
type = HitDef
trigger1 = Time = 1
attr = S, HA
animtype  = hard
damage    = 70,5
guardflag = M
hitflag = MA
pausetime = 12,45
guard.pausetime = 10,10
sparkno = -1 * (var(30):=7030)**0
guard.sparkno = -1 * (var(31):=7305)**0
sparkxy = -10 + 0*(var(32):=40), var(33):=-40
hitsound = -1
guardsound = -1
getpower = 0,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 30
guard.hittime = (30) - 6
ground.velocity = 3
air.velocity = 3,-3.2
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
kill = 0

[State 1000, THE END]
type = playsnd
triggerall = var(39) = 0
triggerall = movehit = 1
trigger1 = !(target,hitshakeover) && enemynear,time = 1
trigger1 = target,life < 250
value= 3000,2
ignorehitpause = 1

[State 1000, THE END]
type = playsnd
triggerall = var(39) = 1
triggerall = movehit = 1
trigger1 = !(target,hitshakeover) && enemynear,time = 1
trigger1 = target,life < 350
value= 3010,2
ignorehitpause = 1

[State 3000, 7]
type = ChangeState
triggerall = movehit
trigger1 = animelem = 52
value = 3025

[State 3000, 7]
type = ChangeState
trigger1 = animelem = 57,1
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Strong Seichuzen Judanzuki
[Statedef 3025]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3020
sprpriority = 2

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 11
trigger2 = animelem = 15
trigger3 = animelem = 19
trigger4 = animelem = 22
trigger5 = animelem = 26
trigger6 = animelem = 29
trigger7 = animelem = 33
trigger8 = animelem = 37
trigger9 = animelem = 44
value = 1,2
channel = 0

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 9
value = 780,0

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 9
value = 790,0

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
triggerall = target,life < 350
trigger1 = animelem = 44
value = 3000,3
channel = 1

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
triggerall = target,life < 350
trigger1 = animelem = 44
value = 3010,3
channel = 1

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 45
value = 3000,4
channel = 1

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 45
value = 3010,4
channel = 1

[State 3000, 7]
type = posadd
trigger1 = animelem = 41
x = 10

[State 3000, 7]
type = posadd
trigger1 = animelem = 44
x = 11

[State 1000, HitSound]
type = playsnd
triggerall = time <= 80
trigger1 = movecontact=1 && numtarget
trigger1 = !(target,hitshakeover) && enemynear,time = 1
value= ifelse(moveguarded, 6, 2), ifelse(moveguarded, 0, 2)
ignorehitpause = 1

[State 1000, HitSound]
type = playsnd
triggerall = time >= 81
trigger1 = movecontact=1 && numtarget
trigger1 = !(target,hitshakeover) && enemynear,time = 1
value= ifelse(moveguarded, 6, 2), ifelse(moveguarded, 0, 6)
ignorehitpause = 1

[State 250, 2]
type = HitDef
trigger1 = animelem = 11
attr = S, HA
animtype  = Medium
damage    = 22,5
guardflag = M
hitflag = MA
pausetime = 5,16
sparkno = -1 * (var(30):=7030)**0
guard.sparkno = -1 * (var(31):=7305)**0
sparkxy = -10 + 0*(var(32):=40), var(33):=-40
hitsound   = -1
guardsound = -1
getpower = 0,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
guard.hittime = (15) - 6
ground.velocity = 0
air.velocity = -2.2,-3.2
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
kill = 0

[State 250, 2]
type = HitDef
trigger1 = animelem = 15
attr = S, HA
animtype  = Medium
damage    = 22,5
guardflag = M
hitflag = MA
pausetime = 5,16
sparkno = -1 * (var(30):=7030)**0
guard.sparkno = -1 * (var(31):=7305)**0
sparkxy = -10 + 0*(var(32):=40), var(33):=-50
hitsound   = -1
guardsound = -1
getpower = 0,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 30
guard.hittime = (30) - 6
ground.velocity = 0
air.velocity = -2.2,-3.2
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
kill = 0

[State 250, 2]
type = HitDef
trigger1 = animelem = 19
attr = S, HA
animtype  = Medium
damage    = 22,5
guardflag = M
hitflag = MA
pausetime = 5,16
sparkno = -1 * (var(30):=7030)**0
guard.sparkno = -1 * (var(31):=7305)**0
sparkxy = -10 + 0*(var(32):=40), var(33):=-65
hitsound   = -1
guardsound = -1
getpower = 0,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 30
guard.hittime = (30) - 6
ground.velocity = 0
air.velocity = -2.2,-3.2
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
kill = 0

[State 250, 2]
type = HitDef
trigger1 = animelem = 22
attr = S, HA
animtype  = Medium
damage    = 22,5
guardflag = M
hitflag = MA
pausetime = 5,16
sparkno = -1 * (var(30):=7030)**0
guard.sparkno = -1 * (var(31):=7305)**0
sparkxy = -10 + 0*(var(32):=40), var(33):=-50
hitsound   = -1
guardsound = -1
getpower = 0,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 30
guard.hittime = (30) - 6
ground.velocity = 0
air.velocity = -2.2,-3.2
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
kill = 0

[State 250, 2]
type = HitDef
trigger1 = animelem = 26
attr = S, HA
animtype  = Medium
damage    = 22,5
guardflag = M
hitflag = MA
pausetime = 5,16
sparkno = -1 * (var(30):=7030)**0
guard.sparkno = -1 * (var(31):=7305)**0
sparkxy = -10 + 0*(var(32):=40), var(33):=-65
hitsound   = -1
guardsound = -1
getpower = 0,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 30
guard.hittime = (30) - 6
ground.velocity = 0
air.velocity = -2.2,-3.2
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
kill = 0

[State 250, 2]
type = HitDef
trigger1 = animelem = 29
attr = S, HA
animtype  = Medium
damage    = 22,5
guardflag = M
hitflag = MA
pausetime = 5,16
sparkno = -1 * (var(30):=7030)**0
guard.sparkno = -1 * (var(31):=7305)**0
sparkxy = -10 + 0*(var(32):=40), var(33):=-40
hitsound   = -1
guardsound = -1
getpower = 0,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 15
guard.hittime = (15) - 6
ground.velocity = 0
air.velocity = -2.2,-3.2
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
kill = 0

[State 250, 2]
type = HitDef
trigger1 = animelem = 33
attr = S, HA
animtype  = Medium
damage    = 22,5
guardflag = M
hitflag = MA
pausetime = 5,16
sparkno = -1 * (var(30):=7030)**0
guard.sparkno = -1 * (var(31):=7305)**0
sparkxy = -10 + 0*(var(32):=40), var(33):=-50
hitsound   = -1
guardsound = -1
getpower = 0,0
ground.type = Low
ground.slidetime = 12
ground.hittime  = 30
guard.hittime = (30) - 6
ground.velocity = 0
air.velocity = -2.2,-3.2
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
kill = 0

[State 250, 2]
type = HitDef
trigger1 = animelem = 37
attr = S, HA
animtype  = Medium
damage    = 22,5
guardflag = M
hitflag = MA
pausetime = 5,16
sparkno = -1 * (var(30):=7030)**0
guard.sparkno = -1 * (var(31):=7305)**0
sparkxy = -10 + 0*(var(32):=40), var(33):=-65
hitsound   = -1
guardsound = -1
getpower = 0,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 30
guard.hittime = (30) - 6
ground.velocity = 0
air.velocity = -2.2,-3.2
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
kill = 0

[State 250, 2]
type = HitDef
trigger1 = animelem = 44
attr = S, HA
animtype  = back
damage    = 100
guardflag = M
hitflag = MA
pausetime = 50,30
sparkno = -1 * (var(30):=7030)**0
guard.sparkno = -1 * (var(31):=7305)**0
sparkxy = -10 + 0*(var(32):=40), var(33):=-90
hitsound   = -1
guardsound = -1
getpower = 0,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 30
guard.hittime = (30) - 6
ground.velocity = -5,-39
air.velocity = -5,-30
ground.cornerpush.veloff = -20
air.cornerpush.veloff = -5
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
p2stateno = 3040
fall = 1
fall.recover = 0
kill = 1
yaccel = 0.8

[State 3301, Pow Effect]
type = helper
triggerall = movehit&&numtarget&&time>=81
trigger1 = !(target,time)&&(target,movetype=H)
id = 7805
name = "Pow Effect"
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(32), ceil(P2Dist x), var(32))), var(33)
postype = P1
stateno = 7805
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
pausemovetime = 99999
supermovetime = 99999
size.xscale = 1
size.yscale = 1

[State 3000, 12]
type = Explod
trigger1 = animelem = 44
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

[State 3000, 12]
type = Explod
trigger1 = animelem = 44
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
scale = .3,.3
sprpriority = 6
ownpal = 1

[State 3000, 5]
type = Helper
trigger1 = AnimElem = 44
helpertype = normal
name = "Seichuzen Dust"
ID = 7430
postype = p1
pos = -95,-4
facing = 1
stateno = 7430
ownpal = 1
ignorehitpause = 1
sprpriority = 2
persistent = 1
size.xscale = .39
size.yscale = .39

[State 3000, 7]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Seichuzen Godanzuki P2 Final Hit State
[Statedef 3040]
type    = S
movetype= H
physics = N
velset = 0,0

[State 1026, No scroll] 
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 5000, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
trigger1 = GetHitVar(fall) = 1
value = 5030

[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 3041

;---------------------------------------------------------------------------
; Seichuzen Godanzuki P2 (initial going up)
[Statedef 3041]
type    = A
movetype= H
physics = N
ctrl = 0

[State 1026, No scroll] 
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 5030, 1]
type = VelAdd;Gravity
trigger1 = 1
y = GetHitVar(yaccel)

[State 5030, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5030, 4]
type = ChangeState
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 3044 ;HITA_FALL

[State 5030, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 3042 ;HITA_UP (transition)

;---------------------------------------------------------------------------
; Seichuzen Godanzuki P2 (initial going up)
[Statedef 3042]
type    = A
movetype= H
physics = N
ctrl = 0

[State 1026, No scroll] 
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 5030, 1]
type = VelAdd;Gravity
trigger1 = 1
y = GetHitVar(yaccel)

[State 5030, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5030, 4]
type = ChangeState
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 3044 ;HITA_FALL

[State 5030, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 3043 ;HITA_UP (transition)

;---------------------------------------------------------------------------
; Seichuzen Godanzuki P2 (transition)
[Statedef 3043]
type    = A
movetype= H
physics = N

[State 1026, No scroll] 
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 5035, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059] ;Not if in hit up anim
trigger1 = Anim != 5090 ;Not if hit off ground anim
value = 5035

[State 5035, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5035, 4]
type = ChangeState
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Anim is over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 3044 ;HITA_FALL

;---------------------------------------------------------------------------
; Seichuzen Godanzuki P2 (knocked up, falling)
[Statedef 3044]
type    = A
movetype= H
physics = N

[State 1026, No scroll] 
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5050, 6]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 5100 ;HIT_BOUNCE

;------------------------------------------------------------------
; Abare Tosanami Control
[Statedef 3100]
type = U
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 9999

[State 3000, 7] ;------ Level 1 Switch
type = ChangeState
triggerall = command = "Abare Tosanami"||var(59)
trigger1 = time = 0
value = 3101

;------------------------------------------------------------------
;MAX Abare Tosanami Control
[Statedef 3160]
type = U
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 9999

[State 3000, 7] ;------ Level 2 Switch
type = ChangeState
triggerall = command = "MAX Abare Tosanami"||var(59)
trigger1 = time = 0
value = ifelse(power<2000,3101,3120)

;---------------------------------------------------------------------------
; Start Light Abare Tosanami
[Statedef 3101]
type    = S
movetype= I
physics = S
velset = 0,0
ctrl = 0
anim = 3100
sprpriority = 2

[State 2100, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 3102
ctrl = 0

;---------------------------------------------------------------------------
; Light Abare Tosanami Jump
[Statedef 3102]
type = A
movetype = A
physics = N
anim = 3101
ctrl = 0
sprpriority = 3
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S21,2
volume = 0
channel = -1

[State 40, dust]
type = helper
trigger1 = !time
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 3129]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 2115, VelSet]
type = VelSet
trigger1 = time >= 0
x = -20
y = -10

[State 2115, VelSet]
type = VelSet
trigger1 = pos Y <= -120
y = 0

[State 2201, 8]
type = ChangeState
triggerall = pos Y <= -120
trigger1 = BackEdgeBodyDist <= 10
value = 3103

;---------------------------------------------------------------------------
; Light Abare Tosanami
[Statedef 3103]
type    = A
movetype= I
physics = N
velset = 0,0
ctrl = 0
anim = 3105
sprpriority = 2

[State 3000, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20):=0)
time = 1

[State 1000, CC Juggle]
type = varset
trigger1 = !time && var(20)
var(16) = 0
ignorehitpause = 1

[State 3000, SpiralVar]
type = varset
trigger1 = var(10)!=7
var(10) = 7

[State 3000, Superpause]
type = SuperPause
trigger1 = animelem = 1
time = 61
movetime = 61
anim = -1
sound = s75,2
pos = 0,0
darken = 0
p2defmul = 1
poweradd = -1000
unhittable = 0

[State 3400, 7]
type = varset
trigger1 = animelem = 1
var(9) = power

[State 3000, Super Charge]
type = helper
trigger1 = animelem = 1
helpertype = normal
stateno = 8500
ID = 8500
name = "Super Charge"
postype = p1
pos = 20,-60
ownpal = 1
persistent = 0
supermovetime = 9999

[State 1200, 3]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 1
value = S3100,0
volume = 255
channel = 1

[State 1200, 3]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 1
value = S3101,0
volume = 255
channel = 1

[State 3210, No scroll] 
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1
value = 0

[State 161, 0]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1205, Mashing]
type = VarSet
trigger1 = !Time
var(42) = 2

[State 1205, Mashing]
type = VarSet
trigger1 = command = "c"&&var(59)=0
var(42) = ifelse(p2bodydist x<120,1,ifelse(p2bodydist x<200,2,3))

[State 1205, Mashing]
type = VarSet
trigger1 = command = "a"&&var(59)=0
var(42) = 1

[State 1205, Mashing]
type = VarSet
trigger1 = command = "b"&&var(59)=0
var(42) = 2

[State 1205, Mashing]
type = VarSet
trigger1 = command = "c"&&var(59)=0
var(42) = 3

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3104
ctrl = 0

;---------------------------------------------------------------------------
; Light Abare Tosanami (Short-Long Range)
[Statedef 3104]
type    = A
movetype= A
physics = N
ctrl = 0
sprpriority = 2

[State 3104, ChangeAnim]
type = ChangeAnim
triggerall = var(42) = 1
trigger1 = !time
value = 3110

[State 3104, ChangeAnim]
type = ChangeAnim
triggerall = var(42) = 2
trigger1 = !time
value = 3120

[State 3104, ChangeAnim]
type = ChangeAnim
triggerall = var(42) = 3
trigger1 = !time
value = 3130

[State 3104, VelSet]
type = VelSet
triggerall = var(42) = 1
trigger1 = !time
x = 3
y = 24

[State 3104, VelSet]
type = VelSet
triggerall = var(42) = 2
trigger1 = !time
x = 16
y = 17

[State 3104, VelSet]
type = VelSet
triggerall = var(42) = 3
trigger1 = !time
x = 26
y = 12

[State 210, 1]
type = PlaySnd
trigger1 = time = 0
value = 1, 1
channel = 0

[State 210, 1]
type = PlaySnd
trigger1 = time = 0
value = 8, 1

[State 3000, 7]
type = velset
trigger1 = pos y >= 0
y = 0

[State 3000, 7]
type = posset
trigger1 = pos y >= 0
y = 0

[State 3230, 3]
type = HitDef
trigger1 = Time = 0
attr = A, HA
damage = 112,1
guardflag = H
hitflag = MA
priority = 4
pausetime = 9,16
sparkno = -1 * (var(30):=7030)**0
guard.sparkno = -1 * (var(31):=7305)**0
sparkxy = -10 + 0*(var(32):=40), var(33):=-40
hitsound = -1
guardsound = -1
animtype = hard
getpower = 0,0
ground.type = low
ground.slidetime = 17
ground.hittime  = 17
guard.hittime = (17) - 6
ground.velocity = -7
air.velocity = -3,-4
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
kill = 0

[State 1000, HitSound]
type = playsnd
trigger1 = movecontact=1 && numtarget
trigger1 = !(target,hitshakeover) && enemynear,time = 1
value= ifelse(moveguarded, 6, 2), ifelse(moveguarded, 0, 7)
ignorehitpause = 1

[State 3301, Pow Effect]
type = helper
trigger1 = movehit=1 && numtarget
trigger1 = !(target,time)&&(target,movetype=H)
id = 7805
name = "Pow Effect"
pos = 40,-40
postype = P1
stateno = 7805
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
pausemovetime = 99999
supermovetime = 99999
size.xscale = 1
size.yscale = 1

[State 220, 5]
type = varadd
triggerall = movehit
trigger1 = enemy,stateno = [5000,5300]
trigger2 = enemy,stateno = 8000
persistent = 0
ignorehitpause = 1
var(36) = ifelse(9-var(31)> 0,9-var(31),0)+1

[State 200, 7]
type = targetState
trigger1 = movehit
trigger1 = p2statetype != A
trigger1 = P2Life != 0
trigger1 = var(36) >= 64
persistent = 0
ignorehitpause = 1
value = 15000+var(37)
ctrl = 0

[State 3100, VarSet]
type = VarSet
trigger1 = !time
v = 4 
value = 0

[State 3100, VarAdd]
type = VarSet
trigger1 = movecontact
v = 4
value = 1

[State 3000, 7]
type = ChangeState
trigger1 = pos y >= 0
trigger1 = var(4) = 0
value = 3130

[State 3000, 7]
type = ChangeState
trigger1 = pos y >= 0
trigger1 = var(4) = 1
value = 3105

;---------------------------------------------------------------------------
; Light Abare Tosanami Fury
[Statedef 3105]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3140
sprpriority = 2

[State 1000, Dust]
type = helper
triggerall = anim = 3140
trigger1 = time = 0
helpertype = normal
stateno = 7200
ID = 7200
name = "Dust"
postype = p1
ownpal = 1
size.xscale = .5
size.yscale = .5

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 3140
trigger1 = time = 0
value = 21,3
volume = 255

;---------------------------------
; Light Abare Tosanami (Attack 1);
;---------------------------------

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
triggerall = anim = 3140
trigger1 = animelem = 1
value = 3100,1
channel = 0

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
triggerall = anim = 3140
trigger1 = animelem = 1
value = 3101,1
channel = 0

[State 210, 1]
type = PlaySnd
triggerall = anim = 3140
trigger1 = animelem = 6
value = 1,5

[State 230, Width 2-11];var(59)
type = velset
triggerall = anim = 3140
trigger1 = animelem = 6 &&p2bodydist x>30
x = 10
[State 230, Width 2-11];var(59)
type = velset
trigger1 = movehit
x = 0

[State 230, Width 2-11]
type = posadd
triggerall = anim = 3140
trigger1 = animelem = 6
x = 7

[State 230, Width 2-11]
type = posadd
triggerall = anim = 3140
trigger1 = animelem = 7
x = 33

[State 230, Width 2-11]
type = posadd
triggerall = anim = 3140
trigger1 = animelem = 11
x = -4

[State 230, Width 2-11]
type = posadd
triggerall = anim = 3140
trigger1 = animelem = 12
x = -7

[State 230, Width 2-11]
type = posadd
triggerall = anim = 3140
trigger1 = animelem = 13
x = -25

[State 3000, 7]
type = velset
triggerall = anim = 3140
trigger1 = time = 0
y = 0

[State 3000, 7]
type = posset
triggerall = anim = 3140
trigger1 = time = 0
y = 0

[State 3000, 2]
type = HitDef
triggerall = anim = 3140
trigger1 = time = 0
attr = S, HA
animtype  = back
air.animtype = back
damage    = 45,1
guardflag = M
hitflag = MA
pausetime = 12,12
sparkno = -1 * (var(30):=7030)**0
guard.sparkno = -1 * (var(31):=7305)**0
sparkxy = -10 + 0*(var(32):=40), var(33):=-80
hitsound = -1
guardsound = -1
getpower = 0,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 30
guard.hittime = (30) - 6
ground.velocity = -1,-5
air.velocity = -1,-3
p2stateno = 3150
envshake.time = 12
envshake.ampl = 6
envshake.freq = 100
kill = 0

[State 1000, HitSound]
type = playsnd
triggerall = anim = 3140
trigger1 = movecontact=1 && numtarget
trigger1 = !(target,hitshakeover) && enemynear,time = 1
value= ifelse(moveguarded, 6, 2), ifelse(moveguarded, 0, 5)
ignorehitpause = 1

[State 225, 7]
type = Changeanim
triggerall = anim = 3140
trigger1 = movecontact
value = anim
elem = 10
ignorehitpause = 1
persistent = 0

[State 3100, ChangeAnim]
type = ChangeAnim
triggerall = anim = 3140
trigger1 = !animtime
value = 3150

;---------------------------------
; Light Abare Tosanami (Attack 2);
;---------------------------------

[State 1000, HitSound]
type = playsnd
triggerall = anim = 3150
trigger1 = movecontact=1 && numtarget
trigger1 = !(target,hitshakeover) && enemynear,time = 1
value= ifelse(moveguarded, 6, 2), ifelse(moveguarded, 0, 5)
ignorehitpause = 1

[State 210, 1]
type = PlaySnd
triggerall = anim = 3150
trigger1 = animelem = 4
value = 1,5

[State 3000, 7]
type = posadd
triggerall = anim = 3150
trigger1 = animelem = 1
x = -8

[State 3000, 7]
type = posadd
triggerall = anim = 3150
trigger1 = animelem = 12
x = 45

[State 210, 1]
type = PlaySnd
triggerall = anim = 3150
trigger1 = animelem = 12
volume = 255
value = 100,3

[State 100, Dust]
type = helper
triggerall = anim = 3150
trigger1 = animelem = 12
helpertype = normal
stateno = 7416
ID = 7416
pos = -20,0
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 3000, 7]
type = posadd
triggerall = anim = 3150
trigger1 = animelem = 13
x = 21

[State 3000, 2]
type = HitDef
triggerall = anim = 3150
trigger1 = animelem = 5
attr = S, HA
animtype  = hard
air.animtype = back
damage = 48,1
guardflag = M
hitflag = MAF
pausetime = 6,6
sparkno = -1 * (var(30):=7030)**0
guard.sparkno = -1 * (var(31):=7305)**0
sparkxy = -10 + 0*(var(32):=70), var(33):=-90
hitsound = -1
guardsound = -1
getpower = 0,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 30
guard.hittime = (30) - 6
ground.velocity = -1,-8
air.velocity = -1,-8
yaccel = .44
p2stateno = 3150
envshake.time = 12
envshake.ampl = 6
envshake.freq = 100
kill = 0

[State 3100, ChangeState]
type = ChangeState
triggerall = anim = 3150
trigger1 = !animtime
value = 3106

;---------------------------------------------------------------------------
; Light Abare Tosanami Finale
[Statedef 3106]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3160
sprpriority = 2

[State 1000, HitSound]
type = playsnd
trigger1 = movecontact=1 && numtarget
trigger1 = !(target,hitshakeover) && enemynear,time = 1
value= ifelse(moveguarded, 6, 2), ifelse(moveguarded, 0, 6)
ignorehitpause = 1

[State 810, Width 2-11]
type = Width
trigger1 = 1
edge = 30

[State 3000, 7]
type = posadd
trigger1 = time = 0
x = 24

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 5
value = 1,2

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 6
value = 3100,2
channel = 0

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 6
value = 3101,2
channel = 0

[State 3000, 2]
type = HitDef
trigger1 = animelem = 6
attr = S, HA
animtype  = hard
air.animtype = back
damage    = 50,6
guardflag = M
hitflag = MAF
pausetime = 12,12
sparkno = -1 * (var(30):=7030)**0
guard.sparkno = -1 * (var(31):=7305)**0
sparkxy = -10 + 0*(var(32):=15), var(33):=-100
hitsound = -1
guardsound = -1
getpower = 0,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 30
guard.hittime = (30) - 6
ground.velocity = -2,-12
air.velocity = -2,-12
p2stateno = 3150
yaccel = 0.53
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
kill = 1

[State 3301, Pow Effect]
type = helper
trigger1 = movehit=1 && numtarget
trigger1 = !(target,time)&&(target,movetype=H)
id = 7805
name = "Pow Effect"
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(32), ceil(P2Dist x), var(32))), var(33)
postype = P1
stateno = 7805
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
pausemovetime = 99999
supermovetime = 99999
size.xscale = 1
size.yscale = 1

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 6
value = 0, 4
channel = 0

[State 225, 7]
type = Changeanim
trigger1 = movecontact
value = anim
elem = 7
ignorehitpause = 1
persistent = 0

[State 3000, 7]
type = ChangeState
trigger1 = animelem = 16
trigger1 = movehit
trigger2 = animelem = 23,1
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Start Medium Abare Tosanami
[Statedef 3110]
type    = S
movetype= I
physics = S
velset = 0,0
ctrl = 0
anim = 3100
sprpriority = 2

[State 2100, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 3111
ctrl = 0

;---------------------------------------------------------------------------
; Medium Abare Tosanami Jump
[Statedef 3111]
type = A
movetype = A
physics = N
anim = 3101
ctrl = 0
sprpriority = 3
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S21,2
volume = 0
channel = -1

[State 40, dust]
type = helper
trigger1 = !time
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 3129]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 2115, VelSet]
type = VelSet
trigger1 = time >= 0
x = -20
y = -10

[State 2115, VelSet]
type = VelSet
trigger1 = pos Y <= -120
y = 0

[State 2201, 8]
type = ChangeState
triggerall = pos Y <= -120
trigger1 = BackEdgeBodyDist <= 10
value = 3112

;---------------------------------------------------------------------------
; Medium Abare Tosanami
[Statedef 3112]
type    = A
movetype= I
physics = N
velset = 0,0
ctrl = 0
anim = 3105
sprpriority = 2

[State 3000, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20):=0)
time = 1

[State 1000, CC Juggle]
type = varset
trigger1 = !time && var(20)
var(16) = 0
ignorehitpause = 1

[State 3000, SpiralVar]
type = varset
trigger1 = var(10)!=7
var(10) = 7

[State 3000, Superpause]
type = SuperPause
trigger1 = animelem = 1
time = 61
movetime = 61
anim = -1
sound = s75,2
pos = 0,0
darken = 0
p2defmul = 1
poweradd = -2000
unhittable = 0

[State 3400, 7]
type = varset
trigger1 = animelem = 1
var(9) = power

[State 3000, Super Charge]
type = helper
trigger1 = animelem = 1
helpertype = normal
stateno = 8510
ID = 8510
name = "Super Charge"
postype = p1
pos = 20,-60
ownpal = 1
persistent = 0
supermovetime = 9999

[State 1200, 3]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 1
value = S3100,0
volume = 255
channel = 1

[State 1200, 3]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 1
value = S3101,0
volume = 255
channel = 1

[State 3210, No scroll] 
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1
value = 0

[State 161, 0]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1205, Mashing]
type = VarSet
trigger1 = !Time
var(42) = 2

[State 1205, Mashing]
type = VarSet
trigger1 = command = "c"&&var(59)=0
var(42) = ifelse(p2bodydist x<120,1,ifelse(p2bodydist x<200,2,3))

[State 1205, Mashing]
type = VarSet
trigger1 = command = "a"&&var(59)=0
var(42) = 1

[State 1205, Mashing]
type = VarSet
trigger1 = command = "b"&&var(59)=0
var(42) = 2

[State 1205, Mashing]
type = VarSet
trigger1 = command = "c"&&var(59)=0
var(42) = 3

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3113
ctrl = 0

;---------------------------------------------------------------------------
; Medium Abare Tosanami (Short-Long Range)
[Statedef 3113]
type    = A
movetype= A
physics = N
ctrl = 0
sprpriority = 2

[State 3104, ChangeAnim]
type = ChangeAnim
triggerall = var(42) = 1
trigger1 = !time
value = 3110

[State 3104, ChangeAnim]
type = ChangeAnim
triggerall = var(42) = 2
trigger1 = !time
value = 3120

[State 3104, ChangeAnim]
type = ChangeAnim
triggerall = var(42) = 3
trigger1 = !time
value = 3130

[State 3104, VelSet]
type = VelSet
triggerall = var(42) = 1
trigger1 = !time
x = 3
y = 24

[State 3104, VelSet]
type = VelSet
triggerall = var(42) = 2
trigger1 = !time
x = 16
y = 17

[State 3104, VelSet]
type = VelSet
triggerall = var(42) = 3
trigger1 = !time
x = 26
y = 12

[State 210, 1]
type = PlaySnd
trigger1 = time = 0
value = 1, 1
channel = 0

[State 210, 1]
type = PlaySnd
trigger1 = time = 0
value = 8, 1

[State 3000, 7]
type = velset
trigger1 = pos y >= 0
y = 0

[State 3000, 7]
type = posset
trigger1 = pos y >= 0
y = 0

[State 3230, 3]
type = HitDef
trigger1 = Time = 0
attr = A, HA
damage = 112,1
guardflag = H
hitflag = MA
priority = 4
pausetime = 9,16
sparkno = -1 * (var(30):=7030)**0
guard.sparkno = -1 * (var(31):=7305)**0
sparkxy = -10 + 0*(var(32):=40), var(33):=-40
hitsound = -1
guardsound = -1
animtype = hard
getpower = 0,0
ground.type = low
ground.slidetime = 17
ground.hittime  = 17
guard.hittime = (17) - 6
ground.velocity = -5
air.velocity = -3,-4
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
kill = 0

[State 1000, HitSound]
type = playsnd
trigger1 = movecontact=1 && numtarget
trigger1 = !(target,hitshakeover) && enemynear,time = 1
value= ifelse(moveguarded, 6, 2), ifelse(moveguarded, 0, 7)
ignorehitpause = 1

[State 3301, Pow Effect]
type = helper
trigger1 = movehit=1 && numtarget
trigger1 = !(target,time)&&(target,movetype=H)
id = 7805
name = "Pow Effect"
pos = 40,-40
postype = P1
stateno = 7805
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
pausemovetime = 99999
supermovetime = 99999
size.xscale = 1
size.yscale = 1

[State 3100, VarSet]
type = VarSet
trigger1 = !time
v = 4 
value = 0

[State 3100, VarAdd]
type = VarSet
trigger1 = movecontact
v = 4
value = 1

[State 3000, 7]
type = ChangeState
trigger1 = pos y >= 0
trigger1 = var(4) = 0
value = 3130

[State 3000, 7]
type = ChangeState
trigger1 = pos y >= 0
trigger1 = var(4) = 1
value = 3114

;---------------------------------------------------------------------------
; Medium Abare Tosanami Fury
[Statedef 3114]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3140
sprpriority = 2

[State 1000, Dust]
type = helper
triggerall = anim = 3140
trigger1 = time = 0
helpertype = normal
stateno = 7200
ID = 7200
name = "Dust"
postype = p1
ownpal = 1
size.xscale = .5
size.yscale = .5

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 3140
trigger1 = time = 0
value = 21,3
volume = 255

;----------------------------------
; Medium Abare Tosanami (Attack 1);
;----------------------------------

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
triggerall = anim = 3140
trigger1 = animelem = 1
value = 3100,1
channel = 0

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
triggerall = anim = 3140
trigger1 = animelem = 1
value = 3101,1
channel = 0

[State 210, 1]
type = PlaySnd
triggerall = anim = 3140
trigger1 = animelem = 6
value = 1,5

[State 230, Width 2-11];var(59)
type = velset
triggerall = anim = 3140
trigger1 = animelem = 6 && p2bodydist x>30
x = 10
[State 230, Width 2-11];var(59)
type = velset
trigger1 = movehit
x = 0

[State 230, Width 2-11]
type = posadd
triggerall = anim = 3140
trigger1 = animelem = 6
x = 7

[State 230, Width 2-11]
type = posadd
triggerall = anim = 3140
trigger1 = animelem = 7
x = 33

[State 230, Width 2-11]
type = posadd
triggerall = anim = 3140
trigger1 = animelem = 11
x = -4

[State 230, Width 2-11]
type = posadd
triggerall = anim = 3140
trigger1 = animelem = 12
x = -7

[State 230, Width 2-11]
type = posadd
triggerall = anim = 3140
trigger1 = animelem = 13
x = -25

[State 3000, 7]
type = velset
triggerall = anim = 3140
trigger1 = time = 0
y = 0

[State 3000, 7]
type = posset
triggerall = anim = 3140
trigger1 = time = 0
y = 0

[State 3000, 2]
type = HitDef
triggerall = anim = 3140
trigger1 = time = 0
attr = S, HA
animtype  = back
air.animtype = back
damage    = 45,1
guardflag = M
hitflag = MA
pausetime = 12,12
sparkno = -1 * (var(30):=7030)**0
guard.sparkno = -1 * (var(31):=7305)**0
sparkxy = -10 + 0*(var(32):=40), var(33):=-80
hitsound = -1
guardsound = -1
getpower = 0,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 30
guard.hittime = (30) - 6
ground.velocity = -1,-5
air.velocity = -1,-3
p2stateno = 3150
envshake.time = 12
envshake.ampl = 6
envshake.freq = 100
kill = 0

[State 1000, HitSound]
type = playsnd
triggerall = anim = 3140
trigger1 = movecontact=1 && numtarget
trigger1 = !(target,hitshakeover) && enemynear,time = 1
value= ifelse(moveguarded, 6, 2), ifelse(moveguarded, 0, 5)
ignorehitpause = 1

[State 225, 7]
type = Changeanim
triggerall = anim = 3140
trigger1 = movecontact
value = anim
elem = 10
ignorehitpause = 1
persistent = 0

[State 3100, ChangeAnim]
type = ChangeAnim
triggerall = anim = 3140
trigger1 = !animtime
value = 3150

;----------------------------------
; Medium Abare Tosanami (Attack 2);
;----------------------------------

[State 1000, HitSound]
type = playsnd
triggerall = anim = 3150
trigger1 = movecontact=1 && numtarget
trigger1 = !(target,hitshakeover) && enemynear,time = 1
value= ifelse(moveguarded, 6, 2), ifelse(moveguarded, 0, 5)
ignorehitpause = 1

[State 210, 1]
type = PlaySnd
triggerall = anim = 3150
trigger1 = animelem = 4
value = 1,5

[State 3000, 7]
type = posadd
triggerall = anim = 3150
trigger1 = animelem = 1
x = -8

[State 3000, 7]
type = posadd
triggerall = anim = 3150
trigger1 = animelem = 12
x = 45

[State 210, 1]
type = PlaySnd
triggerall = anim = 3150
trigger1 = animelem = 12
volume = 255
value = 100,3

[State 100, Dust]
type = helper
triggerall = anim = 3150
trigger1 = animelem = 12
helpertype = normal
stateno = 7416
ID = 7416
pos = -20,0
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 3000, 7]
type = posadd
triggerall = anim = 3150
trigger1 = animelem = 13
x = 21

[State 3000, 2]
type = HitDef
triggerall = anim = 3150
trigger1 = animelem = 5
attr = S, HA
animtype  = hard
air.animtype = back
damage = 98,1
guardflag = M
hitflag = MAF
pausetime = 6,6
sparkno = -1 * (var(30):=7030)**0
guard.sparkno = -1 * (var(31):=7305)**0
sparkxy = -10 + 0*(var(32):=70), var(33):=-90
hitsound = -1
guardsound = -1
getpower = 0,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 30
guard.hittime = (30) - 6
ground.velocity = -1,-8
air.velocity = -1,-8
yaccel = .44
p2stateno = 3150
envshake.time = 12
envshake.ampl = 6
envshake.freq = 100
kill = 0

[State 3100, ChangeState]
type = ChangeState
triggerall = anim = 3150
trigger1 = !animtime
value = 3115

;---------------------------------------------------------------------------
; Medium Abare Tosanami Finale
[Statedef 3115]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3160
sprpriority = 2

[State 1000, HitSound]
type = playsnd
trigger1 = movecontact=1 && numtarget
trigger1 = !(target,hitshakeover) && enemynear,time = 1
value= ifelse(moveguarded, 6, 2), ifelse(moveguarded, 0, 6)
ignorehitpause = 1

[State 810, Width 2-11]
type = Width
trigger1 = 1
edge = 30

[State 3000, 7]
type = posadd
trigger1 = time = 0
x = 24

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 5
value = 1,2

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 6
value = 3100,2
channel = 0

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 6
value = 3101,2
channel = 0

[State 3000, 2]
type = HitDef
trigger1 = animelem = 6
attr = S, HA
animtype  = hard
air.animtype = back
damage    = 80,6
guardflag = M
hitflag = MAF
pausetime = 12,12
sparkno = -1 * (var(30):=7030)**0
guard.sparkno = -1 * (var(31):=7305)**0
sparkxy = -10 + 0*(var(32):=15), var(33):=-100
hitsound = -1
guardsound = -1
getpower = 0,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 30
guard.hittime = (30) - 6
ground.velocity = -2,-12
air.velocity = -2,-12
p2stateno = 3150
yaccel = 0.53
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
kill = 1

[State 3301, Pow Effect]
type = helper
trigger1 = movehit=1 && numtarget
trigger1 = !(target,time)&&(target,movetype=H)
id = 7805
name = "Pow Effect"
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(32), ceil(P2Dist x), var(32))), var(33)
postype = P1
stateno = 7805
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
pausemovetime = 99999
supermovetime = 99999
size.xscale = 1
size.yscale = 1

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 6
value = 0, 4
channel = 0

[State 225, 7]
type = Changeanim
trigger1 = movecontact
value = anim
elem = 7
ignorehitpause = 1
persistent = 0

[State 3000, 7]
type = ChangeState
trigger1 = animelem = 16
trigger1 = movehit
trigger2 = animelem = 23,1
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Start Strong Abare Tosanami
[Statedef 3120]
type    = S
movetype= I
physics = S
velset = 0,0
ctrl = 0
anim = 3100
sprpriority = 2

[State 2100, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 3121
ctrl = 0

;---------------------------------------------------------------------------
; Strong Abare Tosanami Jump
[Statedef 3121]
type = A
movetype = A
physics = N
anim = 3101
ctrl = 0
sprpriority = 3
velset = 0,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S21,2
volume = 0
channel = -1

[State 40, dust]
type = helper
trigger1 = !time
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 3129]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 2115, VelSet]
type = VelSet
trigger1 = time >= 0
x = -20
y = -10

[State 2115, VelSet]
type = VelSet
trigger1 = pos Y <= -120
y = 0

[State 2201, 8]
type = ChangeState
triggerall = pos Y <= -120
trigger1 = BackEdgeBodyDist <= 10
value = 3122

;---------------------------------------------------------------------------
; Strong Abare Tosanami
[Statedef 3122]
type    = A
movetype= I
physics = N
velset = 0,0
ctrl = 0
anim = 3105
sprpriority = 2

[State 3000, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20):=0)
time = 1

[State 1000, CC Juggle]
type = varset
trigger1 = !time && var(20)
var(16) = 0
ignorehitpause = 1

[State 3000, SpiralVar]
type = varset
trigger1 = var(10)!=7
var(10) = 7

[State 3000, Superpause]
type = SuperPause
trigger1 = animelem = 1
time = 61
movetime = 61
anim = -1
sound = s75,2
pos = 0,0
darken = 0
p2defmul = 1
poweradd = -2000
unhittable = 0

[State 3400, 7]
type = varset
trigger1 = animelem = 1
var(9) = power

[State 3000, Super Charge]
type = helper
trigger1 = animelem = 1
helpertype = normal
stateno = 8510
ID = 8510
name = "Super Charge"
postype = p1
pos = 20,-60
ownpal = 1
persistent = 0
supermovetime = 9999

[State 1200, 3]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 1
value = S3100,0
volume = 255
channel = 1

[State 1200, 3]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 1
value = S3101,0
volume = 255
channel = 1

[State 3210, No scroll] 
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1
value = 0

[State 161, 0]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1205, Mashing]
type = VarSet
trigger1 = !Time
var(42) = 2

[State 1205, Mashing]
type = VarSet
trigger1 = command = "c"&&var(59)=0
var(42) = ifelse(p2bodydist x<120,1,ifelse(p2bodydist x<200,2,3))

[State 1205, Mashing]
type = VarSet
trigger1 = command = "a"&&var(59)=0
var(42) = 1

[State 1205, Mashing]
type = VarSet
trigger1 = command = "b"&&var(59)=0
var(42) = 2

[State 1205, Mashing]
type = VarSet
trigger1 = command = "c"&&var(59)=0
var(42) = 3

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3123
ctrl = 0

;---------------------------------------------------------------------------
; Strong Abare Tosanami (Short-Long Range)
[Statedef 3123]
type    = A
movetype= A
physics = N
ctrl = 0
sprpriority = 2

[State 3104, ChangeAnim]
type = ChangeAnim
triggerall = var(42) = 1
trigger1 = !time
value = 3110

[State 3104, ChangeAnim]
type = ChangeAnim
triggerall = var(42) = 2
trigger1 = !time
value = 3120

[State 3104, ChangeAnim]
type = ChangeAnim
triggerall = var(42) = 3
trigger1 = !time
value = 3130

[State 3104, VelSet]
type = VelSet
triggerall = var(42) = 1
trigger1 = !time
x = 3
y = 24

[State 3104, VelSet]
type = VelSet
triggerall = var(42) = 2
trigger1 = !time
x = 16
y = 17

[State 3104, VelSet]
type = VelSet
triggerall = var(42) = 3
trigger1 = !time
x = 26
y = 12

[State 210, 1]
type = PlaySnd
trigger1 = time = 0
value = 1,1
channel = 0

[State 210, 1]
type = PlaySnd
trigger1 = time = 0
value = 8,1

[State 210, 1]
type = PlaySnd
trigger1 = time = 0
value = 3100,3

[State 3000, 7]
type = velset
trigger1 = pos y >= 0
y = 0

[State 3000, 7]
type = posset
trigger1 = pos y >= 0
y = 0

[State 3230, 3]
type = HitDef
trigger1 = Time = 0
attr = A, HA
damage = 112,1
guardflag = H
hitflag = MA
priority = 4
pausetime = 9,16
sparkno = -1 * (var(30):=7030)**0
guard.sparkno = -1 * (var(31):=7305)**0
sparkxy = -10 + 0*(var(32):=40), var(33):=-40
hitsound = -1
guardsound = -1
animtype = hard
getpower = 0,0
ground.type = low
ground.slidetime = 17
ground.hittime  = 17
guard.hittime = (17) - 6
ground.velocity = -5
air.velocity = -3,-4
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
kill = 0

[State 1000, HitSound]
type = playsnd
trigger1 = movecontact=1 && numtarget
trigger1 = !(target,hitshakeover) && enemynear,time = 1
value= ifelse(moveguarded, 6, 2), ifelse(moveguarded, 0, 7)
ignorehitpause = 1

[State 3301, Pow Effect]
type = helper
trigger1 = movehit=1 && numtarget
trigger1 = !(target,time)&&(target,movetype=H)
id = 7805
name = "Pow Effect"
pos = 40,-40
postype = P1
stateno = 7805
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
pausemovetime = 99999
supermovetime = 99999
size.xscale = 1
size.yscale = 1

[State 3006, Flames]
type = helper
trigger1 = stateno = 3123
helpertype = normal
stateno = 7505
ID = 7505
name = "Flames"
postype = p1
ownpal = 1
facing = 1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1
persistent = 0

[State 3100, VarSet]
type = VarSet
trigger1 = !time
v = 4 
value = 0

[State 3100, VarAdd]
type = VarSet
trigger1 = movecontact
v = 4
value = 1

[State 3000, 7]
type = ChangeState
trigger1 = pos y >= 0
trigger1 = var(4) = 0
value = 3130

[State 3000, 7]
type = ChangeState
trigger1 = pos y >= 0
trigger1 = var(4) = 1
value = 3124

;---------------------------------------------------------------------------
; Strong Abare Tosanami Fury
[Statedef 3124]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3140
sprpriority = 2

[State 1000, Dust]
type = helper
triggerall = anim = 3140
trigger1 = time = 0
helpertype = normal
stateno = 7200
ID = 7200
name = "Dust"
postype = p1
ownpal = 1
size.xscale = .5
size.yscale = .5

[State 3006, Flames]
type = helper
triggerall = movehit&&movecontact&&numtarget
trigger1 = stateno = 3124
trigger2 = !(target,time)&&(target,movetype=H)
helpertype = normal
stateno = 7500
ID = 7500
name = "Flames"
postype = p2
ownpal = 1
facing = 1
pos = 25,-30
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = anim = 3140
trigger1 = time = 0
value = 21,3
volume = 255

;----------------------------------
; Strong Abare Tosanami (Attack 1);
;----------------------------------

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
triggerall = anim = 3140
trigger1 = animelem = 1
value = 3100,1
channel = 0

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
triggerall = anim = 3140
trigger1 = animelem = 1
value = 3101,1
channel = 0

[State 210, 1]
type = PlaySnd
triggerall = anim = 3140
trigger1 = animelem = 6
value = 1,5

[State 210, 1]
type = PlaySnd
triggerall = anim = 3140
trigger1 = animelem = 5
value = 3100,4

[State 230, Width 2-11];var(59)
type = velset
triggerall = anim = 3140
trigger1 = animelem = 6 &&p2bodydist x>30
x = 10
[State 230, Width 2-11];var(59)
type = velset
trigger1 = movehit
x = 0

[State 230, Width 2-11]
type = posadd
triggerall = anim = 3140
trigger1 = animelem = 6
x = 7

[State 230, Width 2-11]
type = posadd
triggerall = anim = 3140
trigger1 = animelem = 7
x = 33

[State 230, Width 2-11]
type = posadd
triggerall = anim = 3140
trigger1 = animelem = 11
x = -4

[State 230, Width 2-11]
type = posadd
triggerall = anim = 3140
trigger1 = animelem = 12
x = -7

[State 230, Width 2-11]
type = posadd
triggerall = anim = 3140
trigger1 = animelem = 13
x = -25

[State 3000, 7]
type = velset
triggerall = anim = 3140
trigger1 = time = 0
y = 0

[State 3000, 7]
type = posset
triggerall = anim = 3140
trigger1 = time = 0
y = 0

[State 3000, 2]
type = HitDef
triggerall = anim = 3140
trigger1 = time = 0
attr = S, HA
animtype  = back
air.animtype = back
damage    = 45,1
guardflag = M
hitflag = MA
pausetime = 12,12
sparkno = -1 * (var(30):=7030)**0
guard.sparkno = -1 * (var(31):=7305)**0
sparkxy = -10 + 0*(var(32):=40), var(33):=-80
hitsound = -1
guardsound = -1
getpower = 0,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 30
guard.hittime = (30) - 6
ground.velocity = -1,-5
air.velocity = -1,-3
p2stateno = 3150
envshake.time = 12
envshake.ampl = 6
envshake.freq = 100
kill = 0

[State 1000, HitSound]
type = playsnd
triggerall = anim = 3140
trigger1 = movecontact=1 && numtarget
trigger1 = !(target,hitshakeover) && enemynear,time = 1
value= ifelse(moveguarded, 6, 2), ifelse(moveguarded, 0, 5)
ignorehitpause = 1

[State 225, 7]
type = Changeanim
triggerall = anim = 3140
trigger1 = movecontact
value = anim
elem = 10
ignorehitpause = 1
persistent = 0

[State 3100, ChangeAnim]
type = ChangeAnim
triggerall = anim = 3140
trigger1 = !animtime
value = 3150

;----------------------------------
; Strong Abare Tosanami (Attack 2);
;----------------------------------

[State 1000, HitSound]
type = playsnd
triggerall = anim = 3150
trigger1 = movecontact=1 && numtarget
trigger1 = !(target,hitshakeover) && enemynear,time = 1
value= ifelse(moveguarded, 6, 2), ifelse(moveguarded, 0, 5)
ignorehitpause = 1

[State 210, 1]
type = PlaySnd
triggerall = anim = 3150
trigger1 = animelem = 4
value = 1,5

[State 210, 1]
type = PlaySnd
triggerall = anim = 3150
trigger1 = animelem = 3
value = 3100,4

[State 3000, 7]
type = posadd
triggerall = anim = 3150
trigger1 = animelem = 1
x = -8

[State 3000, 7]
type = posadd
triggerall = anim = 3150
trigger1 = animelem = 12
x = 45

[State 210, 1]
type = PlaySnd
triggerall = anim = 3150
trigger1 = animelem = 12
volume = 255
value = 100,3

[State 100, Dust]
type = helper
triggerall = anim = 3150
trigger1 = animelem = 12
helpertype = normal
stateno = 7416
ID = 7416
pos = -20,0
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 3000, 7]
type = posadd
triggerall = anim = 3150
trigger1 = animelem = 13
x = 21

[State 3000, 2]
type = HitDef
triggerall = anim = 3150
trigger1 = animelem = 5
attr = S, HA
animtype  = hard
air.animtype = back
damage = 98,1
guardflag = M
hitflag = MAF
pausetime = 6,6
sparkno = -1 * (var(30):=7030)**0
guard.sparkno = -1 * (var(31):=7305)**0
sparkxy = -10 + 0*(var(32):=70), var(33):=-90
hitsound = -1
guardsound = -1
getpower = 0,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 30
guard.hittime = (30) - 6
ground.velocity = -1,-8
air.velocity = -1,-8
yaccel = .44
p2stateno = 3150
envshake.time = 12
envshake.ampl = 6
envshake.freq = 100
kill = 0

[State 3100, ChangeState]
type = ChangeState
triggerall = anim = 3150
trigger1 = !animtime
value = 3125

;---------------------------------------------------------------------------
; Strong Abare Tosanami Finale
[Statedef 3125]
type    = S
movetype= A
physics = S
velset = 0,0
ctrl = 0
anim = 3160
sprpriority = 2

[State 1000, HitSound]
type = playsnd
trigger1 = movecontact=1 && numtarget
trigger1 = !(target,hitshakeover) && enemynear,time = 1
value= ifelse(moveguarded, 6, 2), ifelse(moveguarded, 0, 6)
ignorehitpause = 1

[State 210, 1]
type = PlaySnd
trigger1 = movehit=1 && numtarget
trigger1 = !(target,hitshakeover) && enemynear,time = 1
value = 3100,5
ignorehitpause = 1
channel = 1

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 5
value = 1,2

[State 810, Width 2-11]
type = Width
trigger1 = 1
edge = 30

[State 3000, 7]
type = posadd
trigger1 = time = 0
x = 24

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 6
value = 3100,2
channel = 0

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 6
value = 3101,2
channel = 0

[State 3000, 2]
type = HitDef
trigger1 = animelem = 6
attr = S, HA
animtype  = hard
air.animtype = back
damage    = 80,6
guardflag = M
hitflag = MAF
pausetime = 12,12
sparkno = -1 * (var(30):=7030)**0
guard.sparkno = -1 * (var(31):=7305)**0
sparkxy = -10 + 0*(var(32):=15), var(33):=-100
hitsound = -1
guardsound = -1
getpower = 0,0
ground.type = high
ground.slidetime = 12
ground.hittime  = 30
guard.hittime = (30) - 6
ground.velocity = -2,-16
air.velocity = -2,-16
p2stateno = 3150
yaccel = 0.53
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
palfx.time = 80
palfx.add = -80,-80,-80
palfx.sinadd = -30,-30,-30,10
kill = 1

[State 3301, Pow Effect]
type = helper
trigger1 = movehit=1 && numtarget
trigger1 = !(target,time)&&(target,movetype=H)
id = 7805
name = "Pow Effect"
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(32), ceil(P2Dist x), var(32))), var(33)
postype = P1
stateno = 7805
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
pausemovetime = 99999
supermovetime = 99999
size.xscale = 1
size.yscale = 1

[State 3301, Explosion]
type = helper
trigger1 = movehit&&movecontact&&numtarget
trigger1 = !(target,time)&&(target,movetype=H)
id = 3180
name = "Explosion"
pos = 10,-100
postype = p1
stateno = 3180
helpertype = normal
keyctrl = 0
ownpal = 1
persistent = 0
ignorehitpause = 1
pausemovetime = 99999
supermovetime = 99999

[State 3006, Flames]
type = helper
triggerall = movehit&&movecontact&&numtarget
trigger1 = stateno = 3125
trigger2 = !(target,time)&&(target,movetype=H)
helpertype = normal
stateno = 7500
ID = 7500
name = "Flames"
postype = p2
ownpal = 1
facing = 1
pos = 25,-30
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1
persistent = 0

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 6
value = 0,4
channel = 0

[State 225, 7]
type = Changeanim
trigger1 = movecontact
value = anim
elem = 7
ignorehitpause = 1
persistent = 0

[State 3000, 7]
type = ChangeState
trigger1 = animelem = 20
trigger1 = movehit
trigger2 = animelem = 25,1
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Abare Tosanami Land
[Statedef 3130]
type    = C
movetype= I
physics = C
velset = 3,0
ctrl = 0
anim = 3170
sprpriority = 2

[State 1000, Dust]
type = helper
trigger1 = time = 0
helpertype = normal
stateno = 7200
ID = 7200
name = "Dust"
postype = p1
ownpal = 1
size.xscale = .5
size.yscale = .5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 21,3
volume = 255

[State 3000, 7]
type = velset
trigger1 = time = 0
y = 0

[State 3000, 7]
type = posset
trigger1 = time = 0
y = 0

[State 3000, 7]
type = ChangeState
trigger1 = animelem = 9
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Abare Tosanami Custom State 1
[Statedef 3150]
type    = S
movetype= H
physics = N
velset = 0,0

[State 150, 2]
type = null;Changeanim
trigger1 = Life <= 0
;trigger1 = GetHitVar(animtype)=0
;trigger1 = GetHitVar(fall)=0
value = 5000
elem = 1

[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
;trigger1 = anim != 5600
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(groundtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5000, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
;trigger1 = GetHitVar(fall) = 1
value = 5030

[State 5000, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = null;ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5000, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 && GetHitVar(fall)
trigger2 = Pos Y != 0
type = a

[State 5000, 6]
type = null;ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0
value = 8001 ;HITG_SLIDE

[State 5000, 7]
type = ChangeState
;triggerall = Life > 0
trigger1 = HitShakeOver
value = 3151

[State 5000, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5000, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

[State 0, ScreenBound]
type = ScreenBound
triggerall = enemy,stateno = 3125
trigger1 = time = [0,89] 
value = 1
movecamera = 1,0

;---------------------------------------------------------------------------
; Abare Tosanami Custom State 2 (initial going up)
[Statedef 3151]
type    = A
movetype= H
physics = N
ctrl = 0

[State 5030, 1]
type = VelAdd;Gravity
trigger1 = 1
y = GetHitVar(yaccel)

[State 5030, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5030, 3]
type = null;ChangeState
triggerall = !HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 8040 ;HITA_RECOV

[State 5030, 4]
type = ChangeState
;triggerall = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 3153 ;HITA_FALL

[State 5030, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 3152 ;HITA_UP (transition)

[State 0, ScreenBound]
type = ScreenBound
triggerall = enemy,stateno = 3125
trigger1 = time = [0,89] 
value = 1
movecamera = 1,0

;---------------------------------------------------------------------------
; Abare Tosanami Custom State 3 (transition)
[Statedef 3152]
type    = A
movetype= H
physics = N

[State 5035, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059] ;Not if in hit up anim
trigger1 = Anim != 5090 ;Not if hit off ground anim
value = 5035

[State 5035, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5035, 3]
type = null;ChangeState
triggerall = !HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Animation over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 8040 ;HITA_RECOV

[State 5035, 4]
type = ChangeState
;triggerall = HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Anim is over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 3153 ;HITA_FALL

[State 0, ScreenBound]
type = ScreenBound
triggerall = enemy,stateno = 3125
trigger1 = time = [0,89] 
value = 1
movecamera = 1,0

;---------------------------------------------------------------------------
; Abare Tosanami Custom State 4 (knocked up, falling)
[Statedef 3153]
type    = A
movetype= H
physics = N

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 0, ScreenBound]
type = ScreenBound
triggerall = enemy,stateno = 3125 && time <=80
trigger1 = 1 && enemy,anim = 3160
value = 1
movecamera = 1,0

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5050, 6]
type = ChangeState
trigger1 = enemy,var(36)>= 64
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 15100 ;HIT_BOUNCE

[State 5050, 6]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 5100 ;HIT_BOUNCE

;------------------------------------------------------------------
; Tanden Renki Control
[Statedef 3200]
type = U
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 9999

[State 3000, 7] ;------ Level 1 Switch
type = ChangeState
triggerall = command = "Tanden Renki"||var(59)
trigger1 = time=0
value = 3201

;------------------------------------------------------------------
;MAX Tanden Renki Control
[Statedef 3250]
type = U
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 9999

[State 3000, 7] ;------ Level 2 Switch
type = ChangeState
triggerall = command = "MAX Tanden Renki"||var(59)
trigger1 = time=0
value = ifelse(power<2000,3201,3210)
;---------------------------------------------------------------------------
; Light Tanden Renki
[Statedef 3201]
type    = S
movetype= I
physics = S
velset = 0,0
ctrl = 0
anim = 3200
sprpriority = 2

[State 3000, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20):=0)
time = 1

[State 3400, 7]
type = varset
trigger1 = animelem = 3
var(9) = power

[State 3400, 7]
type = varset
trigger1 = animelemtime(33) <= 0
var(8) = 426

[State 1000, CC Juggle]
type = varset
trigger1 = !time && var(20)
var(16) = 0
ignorehitpause = 1

[State 3000, SpiralVar]
type = varset
trigger1 = var(10)!=7
var(10) = 7

[State 3200, var]
type = varset
trigger1 = animelemtime(33) <= 0
var(46) = 180

[State 3200, TimeBar]
type = VarSet
trigger1 = animelemtime(33) <= 0
var(48) = 1

[State 3000, Superpause]
type = SuperPause
trigger1 = animelem = 3
time = 74
movetime = 74
anim = -1
sound = s75,2
pos = 0,0
darken = 0
p2defmul = 1
poweradd = 0
unhittable = 0

[State 3000, Super Charge]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 8500
ID = 8500
name = "Super Charge"
postype = p1
pos = 0,-60
ownpal = 1
persistent = 0
supermovetime = 9999

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 3
value = 780,0
channel = 2

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 3
value = 790,0
channel = 2

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 25
value = 3100,0
channel = 2

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 25
value = 3101,0
channel = 2

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 24
value = 20,0

[State 19, Gi Flop]
type = PlaySnd
trigger1 = animelem = 24
value = s20,1

[State 161, 0]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3400, 7]
type = ctrlset
trigger1 = animelem = 33
trigger1 = var(50) != 1
value = 1

[State 3400, 7]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Medium Tanden Renki
[Statedef 3210]
type    = S
movetype= I
physics = S
velset = 0,0
ctrl = 0
anim = 3200
sprpriority = 2

[State 3000, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20):=0)
time = 1

[State 3400, 7]
type = varset
trigger1 = animelem = 3
var(9) = power

[State 1000, CC Juggle]
type = varset
trigger1 = !time && var(20)
var(16) = 0
ignorehitpause = 1

[State 3000, SpiralVar]
type = varset
trigger1 = var(10)!=7
var(10) = 7

[State 3200, var]
type = varset
trigger1 = animelemtime(33) <= 0
var(46) = 180

[State 3200, TimeBar]
type = VarSet
trigger1 = animelemtime(33) <= 0
var(48) = 2

[State 3000, Superpause]
type = SuperPause
trigger1 = animelem = 3
time = 74
movetime = 74
anim = -1
sound = s75,2
pos = 0,0
darken = 0
p2defmul = 1
poweradd = 0
unhittable = 0

[State 3000, Super Charge]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 8510
ID = 8510
name = "Super Charge"
postype = p1
pos = 0,-60
ownpal = 1
persistent = 0
supermovetime = 9999

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 3
value = 780,0
channel = 2

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 3
value = 790,0
channel = 2

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 25
value = 3100,0
channel = 2

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 25
value = 3101,0
channel = 2

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 24
value = 20,0

[State 19, Gi Flop]
type = PlaySnd
trigger1 = animelem = 24
value = s20,1

[State 3400, 7]
type = varset
trigger1 = animelemtime(33) <= 0
var(8) = 556

[State 161, 0]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3400, 7]
type = ctrlset
trigger1 = animelem = 33
value = 1

[State 3400, 7]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Strong Tanden Renki
[Statedef 3220]
type    = S
movetype= I
physics = S
velset = 0,0
ctrl = 0
anim = 3200
sprpriority = 2

[State 3000, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20):=0)
time = 1

[State 3400, 7]
type = varset
trigger1 = animelem = 3
var(9) = power

[State 1000, CC Juggle]
type = varset
trigger1 = !time && var(20)
var(16) = 0
ignorehitpause = 1

[State 3000, SpiralVar]
type = varset
trigger1 = var(10)!=7
var(10) = 7

[State 3200, var]
type = varset
trigger1 = animelemtime(33) <= 0
var(46) = 180

[State 3200, TimeBar]
type = VarSet
trigger1 = animelemtime(33) <= 0
var(48) = 3

[State 3000, Superpause]
type = SuperPause
trigger1 = animelem = 3
time = 74
movetime = 74
anim = -1
sound = s75,2
pos = 0,0
darken = 0
p2defmul = 1
poweradd = 0
unhittable = 0

[State 3000, Super Charge]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 8520
ID = 8520
name = "Super Charge"
postype = p1
pos = 0,-60
ownpal = 1
persistent = 0
supermovetime = 9999

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 3
value = 780,0
channel = 2

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 3
value = 790,0
channel = 2

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 25
value = 3100,0
channel = 2

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 25
value = 3101,0
channel = 2

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 24
value = 20,0

[State 19, Gi Flop]
type = PlaySnd
trigger1 = animelem = 24
value = s20,1

[State 3400, 7]
type = varset
trigger1 = animelemtime(33) <= 0
var(8) = 706

[State 161, 0]
type = NotHitBy
trigger1 = 1
value = SCA

[State 3400, 7]
type = ctrlset
trigger1 = animelem = 33
value = 1

[State 3400, 7]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; MAX Start Rikujou Gekiha Ken
[Statedef 3300]
type    = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 3300
sprpriority = 2

[State 3000, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20):=0)
time = 1

[State 1000, CC Juggle]
type = varset
trigger1 = !time && var(20)
var(16) = 0
ignorehitpause = 1

[State 3000, SpiralVar]
type = varset
trigger1 = var(10)!=7
var(10) = 7

[State 3000, Superpause]
type = SuperPause
trigger1 = animelem = 3
time = 54
movetime = 54
anim = -1
sound = s75,8
pos = 0,0
darken = 0
p2defmul = 1
poweradd = -2000
unhittable = 0

[State 3400, 7]
type = varset
trigger1 = animelem = 3
var(9) = power

[State 3000, Super Charge]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 8510
ID = 8510
name = "Super Charge"
postype = p1
pos = 0,-60
ownpal = 1
persistent = 0
supermovetime = 9999

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 3
value = 3300,0
channel = 2 

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 3
value = 790,0
channel = 2                  

[State 161, 0]
type = NotHitBy
trigger1 = time <= 27
value = SCA

[State 1000, 0]
type = varset
trigger1 = time = 0
var(17) = 0

[State 3400, 7]
type = ChangeState
trigger1 = animtime = 0
value = 3301
ctrl = 0

;---------------------------------------------------------------------------
; Rikujou Gekiha Ken Charge
[Statedef 3301]
type = S
movetype = I
physics = S
velset = 0,0
anim = 3301
ctrl = 0

[State 1000, 1]
type = varadd
trigger1 = time = 36
trigger2 = time = 72
trigger3 = time = 102
var(17) = 1

[State 5950, Dust]
type = explod
trigger1 = animelem = 5
trigger2 = animelem = 9
trigger3 = animelem = 14
trigger4 = animelem = 19
trigger5 = animelem = 24
trigger6 = animelem = 29
trigger7 = animelem = 33
trigger8 = animelem = 38
trigger9 = animelem = 44
trigger10 = animelem = 48
anim = 7401
sprpriority = -3
postype = p1
pos = 0,-2
scale = .8,.8
pausemovetime = -1
supermovetime = -1
ownpal = 1

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
pausemovetime = -1
supermovetime = -1

[State 3501, Particles]
type=explod
trigger1= !(time%7)
anim=8783
random = 80,10
sprpriority = 5
ownpal = 1
vel = 0,-3
accel = 0,.15
facing = -1+(random<500)*2
scale = .5,.5

[State 3501, Particles]
type=explod
trigger1= !(time%7)
anim=8783
random = 80,10
sprpriority = 5
ownpal = 1
vel = 0,-5
accel = 0,.15
facing = -1+(random<500)*2
scale = .5,.5

[State 3501, Particles]
type=explod
trigger1= !(time%4)
anim=8783
random = 80,10
sprpriority = 1
ownpal = 1
vel = 0,-3
accel = 0,.15
facing = -1+(random<500)*2
scale = .5,.5

[State 210, 1]
type = PlaySnd
trigger1 = time = 1
value = 3300,4
channel = 4

[State 1000, 2]
type = ChangeState
trigger1 = command != "holdx"
trigger1 = command != "holdy"
trigger1 = command != "holdz"
trigger1 = time >= 5
trigger2 = animtime = 0
value = 3302

;---------------------------------------------------------------------------
; Rikujou Gekiha Ken
[Statedef 3302]
type    = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 3302
sprpriority = 2

[State 0, StopSnd]
type = StopSnd
trigger1 = !time
channel = 4

[State 0, StopSnd]
type = StopSnd
trigger1 = !time
channel = 2

[State 7465, Helper]
type = Helper
trigger1 = animelem = 6
helpertype = normal
name = "Ground Smash HitBox"
stateno = 3310
pos = 0,53
postype = p1
facing = 1
ownpal = 1
ignorehitpause = 1
persistent = 1

[State 7460, Helper]
type = Helper
triggerall = var(17) = 0
trigger1 = animelem = 6
helpertype = normal ;player
name = "Ground Smash Dust"
stateno = 7450
pos = 0,4
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = .5
size.yscale = .5
ignorehitpause = 1
persistent = 1
[State 7460, Helper]
type = Helper
triggerall = var(17) = 0
trigger1 = animelem = 6
helpertype = normal ;player
name = "Ground Crack 1"
stateno = 7460
pos = 0,43
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = .35
size.yscale = .35
supermovetime = 9999
[State 7465, Helper]
type = Helper
triggerall = var(17) = 0
trigger1 = animelem = 6
helpertype = normal ;player
name = "Ground Crack 2"
stateno = 7465
pos = 0,43
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = .35
size.yscale = .35
ignorehitpause = 1
persistent = 1
supermovetime = 9999

[State 7460, Helper]
type = Helper
triggerall = var(17) = 1
trigger1 = animelem = 6
helpertype = normal ;player
name = "Ground Smash Dust"
stateno = 7450
pos = 0,4
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = .56
size.yscale = .56
ignorehitpause = 1
persistent = 1
[State 7460, Helper]
type = Helper
triggerall = var(17) = 1
trigger1 = animelem = 6
helpertype = normal ;player
name = "Ground Crack 1"
stateno = 7460
pos = 0,49
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = .41
size.yscale = .41
supermovetime = 9999
[State 7465, Helper]
type = Helper
triggerall = var(17) = 1
trigger1 = animelem = 6
helpertype = normal ;player
name = "Ground Crack 2"
stateno = 7465
pos = 0,49
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = .41
size.yscale = .41
ignorehitpause = 1
persistent = 1
supermovetime = 9999

[State 7460, Helper]
type = Helper
triggerall = var(17) = 2
trigger1 = animelem = 6
helpertype = normal ;player
name = "Ground Smash Dust"
stateno = 7450
pos = 0,4
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = .63
size.yscale = .63
ignorehitpause = 1
persistent = 1
[State 7460, Helper]
type = Helper
triggerall = var(17) = 2
trigger1 = animelem = 6
helpertype = normal ;player
name = "Ground Crack 1"
stateno = 7460
pos = 0,55
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = .45
size.yscale = .45
supermovetime = 9999
[State 7465, Helper]
type = Helper
triggerall = var(17) = 2
trigger1 = animelem = 6
helpertype = normal ;player
name = "Ground Crack 2"
stateno = 7465
pos = 0,55
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = .45
size.yscale = .45
ignorehitpause = 1
persistent = 1
supermovetime = 9999

[State 7460, Helper]
type = Helper
triggerall = var(17) = 3
trigger1 = animelem = 6
helpertype = normal ;player
name = "Ground Smash Dust"
stateno = 7450
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = .7
size.yscale = .7
ignorehitpause = 1
persistent = 1
[State 7460, Helper]
type = Helper
triggerall = var(17) = 3
trigger1 = animelem = 6
helpertype = normal ;player
name = "Ground Crack 1"
stateno = 7460
pos = 0,63
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = .5
size.yscale = .5
supermovetime = 9999
[State 7465, Helper]
type = Helper
triggerall = var(17) = 3
trigger1 = animelem = 6
helpertype = normal ;player
name = "Ground Crack 2"
stateno = 7465
pos = 0,63
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = .5
size.yscale = .5
ignorehitpause = 1
persistent = 1
supermovetime = 9999

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 6
time = 30
ampl = 9
phase = 120

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 1,2

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 4
value = 3000,3
channel = 2

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 4
value = 3010,3
channel = 2

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 6
value = 3300,1   

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 6
value = 3300,2   

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 6
value = 3300,3  

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 6
value = 3300,5          

[State 3400, 7]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Start Rikujou Gekiha Ken
[Statedef 3350]
type    = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 3300
sprpriority = 2

[State 3000, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20):=0)
time = 1

[State 1000, CC Juggle]
type = varset
trigger1 = !time && var(20)
var(16) = 0
ignorehitpause = 1

[State 3000, SpiralVar]
type = varset
trigger1 = var(10)!=7
var(10) = 7

[State 3000, Superpause]
type = SuperPause
trigger1 = animelem = 3
time = 54
movetime = 54
anim = -1
sound = s75,8
pos = 0,0
darken = 0
p2defmul = 1
poweradd = -2000
unhittable = 0

[State 3400, 7]
type = varset
trigger1 = animelem = 3
var(9) = power

[State 3000, Super Charge]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 8500
ID = 8500
name = "Super Charge"
postype = p1
pos = 0,-60
ownpal = 1
persistent = 0
supermovetime = 9999

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 3
value = 3300,0
channel = 2 

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 3
value = 790,0
channel = 2                  

[State 161, 0]
type = NotHitBy
trigger1 = time <= 27
value = SCA

[State 1000, 0]
type = varset
trigger1 = time = 0
var(17) = 0

[State 3400, 7]
type = ChangeState
trigger1 = animtime = 0
value = 3351
ctrl = 0

;---------------------------------------------------------------------------
; Rikujou Gekiha Ken Charge
[Statedef 3351]
type = S
movetype = I
physics = S
velset = 0,0
anim = 3301
ctrl = 0

[State 1000, 1]
type = varadd
trigger1 = time = 36
trigger2 = time = 72
trigger3 = time = 102
var(17) = 1

[State 5950, Dust]
type = explod
trigger1 = animelem = 5
trigger2 = animelem = 9
trigger3 = animelem = 14
trigger4 = animelem = 19
trigger5 = animelem = 24
trigger6 = animelem = 29
trigger7 = animelem = 33
trigger8 = animelem = 38
trigger9 = animelem = 44
trigger10 = animelem = 48
anim = 7401
sprpriority = -3
postype = p1
pos = 0,-2
scale = .8,.8
pausemovetime = -1
supermovetime = -1
ownpal = 1

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
pausemovetime = -1
supermovetime = -1

[State 3501, Particles]
type=explod
trigger1= !(time%7)
anim=8783
random = 80,10
sprpriority = 5
ownpal = 1
vel = 0,-3
accel = 0,.15
facing = -1+(random<500)*2
scale = .5,.5

[State 3501, Particles]
type=explod
trigger1= !(time%7)
anim=8783
random = 80,10
sprpriority = 5
ownpal = 1
vel = 0,-5
accel = 0,.15
facing = -1+(random<500)*2
scale = .5,.5

[State 3501, Particles]
type=explod
trigger1= !(time%4)
anim=8783
random = 80,10
sprpriority = 1
ownpal = 1
vel = 0,-3
accel = 0,.15
facing = -1+(random<500)*2
scale = .5,.5

[State 210, 1]
type = PlaySnd
trigger1 = time = 1
value = 3300,4
channel = 4

[State 1000, 2]
type = ChangeState
trigger1 = command != "holdx"
trigger1 = command != "holdy"
trigger1 = command != "holdz"
trigger1 = time >= 5
trigger2 = animtime = 0
trigger3 = var(59)
trigger3 = time >= 5
value = 3352

;---------------------------------------------------------------------------
; Rikujou Gekiha Ken
[Statedef 3352]
type    = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 3302
sprpriority = 2

[State 0, StopSnd]
type = StopSnd
trigger1 = !time
channel = 4

[State 0, StopSnd]
type = StopSnd
trigger1 = !time
channel = 2

[State 7465, Helper]
type = Helper
trigger1 = animelem = 6
helpertype = normal
name = "Ground Smash HitBox"
stateno = 3340
pos = 0,53
postype = p1
facing = 1
ownpal = 1
ignorehitpause = 1
persistent = 1

[State 7460, Helper]
type = Helper
triggerall = var(17) = 0
trigger1 = animelem = 6
helpertype = normal ;player
name = "Ground Smash Dust"
stateno = 7450
pos = 0,4
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = .5
size.yscale = .5
ignorehitpause = 1
persistent = 1
[State 7460, Helper]
type = Helper
triggerall = var(17) = 0
trigger1 = animelem = 6
helpertype = normal ;player
name = "Ground Crack 1"
stateno = 7460
pos = 0,43
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = .35
size.yscale = .35
supermovetime = 9999
[State 7465, Helper]
type = Helper
triggerall = var(17) = 0
trigger1 = animelem = 6
helpertype = normal ;player
name = "Ground Crack 2"
stateno = 7465
pos = 0,43
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = .35
size.yscale = .35
ignorehitpause = 1
persistent = 1
supermovetime = 9999

[State 7460, Helper]
type = Helper
triggerall = var(17) = 1
trigger1 = animelem = 6
helpertype = normal ;player
name = "Ground Smash Dust"
stateno = 7450
pos = 0,4
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = .56
size.yscale = .56
ignorehitpause = 1
persistent = 1
[State 7460, Helper]
type = Helper
triggerall = var(17) = 1
trigger1 = animelem = 6
helpertype = normal ;player
name = "Ground Crack 1"
stateno = 7460
pos = 0,49
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = .41
size.yscale = .41
supermovetime = 9999
[State 7465, Helper]
type = Helper
triggerall = var(17) = 1
trigger1 = animelem = 6
helpertype = normal ;player
name = "Ground Crack 2"
stateno = 7465
pos = 0,49
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = .41
size.yscale = .41
ignorehitpause = 1
persistent = 1
supermovetime = 9999

[State 7460, Helper]
type = Helper
triggerall = var(17) = 2
trigger1 = animelem = 6
helpertype = normal ;player
name = "Ground Smash Dust"
stateno = 7450
pos = 0,4
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = .63
size.yscale = .63
ignorehitpause = 1
persistent = 1
[State 7460, Helper]
type = Helper
triggerall = var(17) = 2
trigger1 = animelem = 6
helpertype = normal ;player
name = "Ground Crack 1"
stateno = 7460
pos = 0,55
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = .45
size.yscale = .45
supermovetime = 9999
[State 7465, Helper]
type = Helper
triggerall = var(17) = 2
trigger1 = animelem = 6
helpertype = normal ;player
name = "Ground Crack 2"
stateno = 7465
pos = 0,55
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = .45
size.yscale = .45
ignorehitpause = 1
persistent = 1
supermovetime = 9999

[State 7460, Helper]
type = Helper
triggerall = var(17) = 3
trigger1 = animelem = 6
helpertype = normal ;player
name = "Ground Smash Dust"
stateno = 7450
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = .7
size.yscale = .7
ignorehitpause = 1
persistent = 1
[State 7460, Helper]
type = Helper
triggerall = var(17) = 3
trigger1 = animelem = 6
helpertype = normal ;player
name = "Ground Crack 1"
stateno = 7460
pos = 0,63
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = .5
size.yscale = .5
supermovetime = 9999
[State 7465, Helper]
type = Helper
triggerall = var(17) = 3
trigger1 = animelem = 6
helpertype = normal ;player
name = "Ground Crack 2"
stateno = 7465
pos = 0,63
postype = p1    ;p2,front,back,left,right
facing = 1
ownpal = 1
size.xscale = .5
size.yscale = .5
ignorehitpause = 1
persistent = 1
supermovetime = 9999

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 6
time = 30
ampl = 9
phase = 120

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 1,2

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 4
value = 3000,3
channel = 2

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 4
value = 3010,3
channel = 2

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 6
value = 3300,1   

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 6
value = 3300,2   

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 6
value = 3300,3  

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 6
value = 3300,5          

[State 3400, 7]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
; Hayate no Red Hawk Start
[Statedef 3400]
type    = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 3400
sprpriority = 2

[State 3000, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20):=0)
time = 1

[State 1000, CC Juggle]
type = varset
trigger1 = !time && var(20)
var(16) = 0
ignorehitpause = 1

[State 3000, SpiralVar]
type = varset
trigger1 = var(10)!=7
var(10) = 7

[State 3000, Superpause]
type = SuperPause
trigger1 = animelem = 10
time = 64
movetime = 64
anim = -1
sound = s75,8
pos = 0,0
darken = 0
p2defmul = 1
poweradd = -3000
unhittable = 0

[State 3400, 7]
type = varset
trigger1 = animelem = 10
var(9) = power

[State 3000, Super Charge]
type = helper
trigger1 = animelem = 10
helpertype = normal
stateno = 8535
ID = 8535
name = "Super Charge"
postype = p1
pos = 0,-60
ownpal = 1
persistent = 0
supermovetime = 9999

[State 7420, dust]
type = helper
trigger1 = AnimElem = 10
helpertype = normal
stateno = 7445
ID = 7445
name = "Dust"
postype = p1
ownpal = 1
pos = -14,7
size.xscale = .15
size.yscale = .15
supermovetime = 9999

[State 3400, Helper]
type=Helper
triggerall = var(49) = 1
trigger1 = Animelemtime(12)=0
helpertype=normal ;player
name ="Red Skin"
ID = 7470
stateno = 7470
pos=0,0
postype=p1
ownpal=1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
persistent=1
supermovetime = 9999

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 10
value = 3400,0

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 3
value = 3400,10
channel = 2 

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 3
value = 790,0
channel = 2   

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = animelem = 26
value = 3400,20
channel = 2           

[State 161, 0]
type = NotHitBy
trigger1 = time <= 27
value = SCA

[State 1000, 0]
type = varset
trigger1 = time = 0
var(17) = 0

[State 1000, 0]
type = varset
trigger1 = animelemtime(18) = 0
var(28) = 2

[State 3400, 7]
type = ChangeState
trigger1 = animtime = 0
value = 3405
ctrl = 0

;---------------------------------------------------------------------------
; Hayate no Red Hawk Strike 1
[Statedef 3405]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 3402
sprpriority = 2

[State 1000, 7]
type = velset
trigger1 = animelem = 1
x = 1

[State 161, 0]
type = NotHitBy
trigger1 = time <= 2
value = SCA

[State 3000, 12]
type = Explod
trigger1 = animelem = 5
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
supermovetime = 9999

[State 3000, 12]
type = Explod
trigger1 = animelem = 5
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
supermovetime = 9999

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 5
value = 3400,1

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = animelem = 5
value = 1000,1
channel = 2

[State 200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
value = 1,2

[State 810, Width 2-11]
type = Width
trigger1 = animelem = 5,0
trigger2 = animelem = 5,1
trigger3 = animelem = 5,2
trigger4 = animelem = 5,3
trigger5 = animelem = 5,2
value = 20

[State 1000, 7]
type = velset
trigger1 = animelem = 5
x = 55;42

[State 1000, 7]
type = veladd
trigger1 = animelemtime(5) >= 0
x = 2

[State 1000, 7]
type = velset
trigger1 = animelem = 6
x = 10

[State 1000, 7]
type = veladd
trigger1 = animelemtime(6) >= 0
x = -2

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
animtype  = hard
air.animtype = back
damage = 80,4
guardflag = M
hitflag = MA
getpower = 0
pausetime = 9,8
sparkno = -1 * (var(30):=7030)**0
sparkxy = -10 + 0*(var(32):=62), var(33):=-58
guardsound = s6,0
guard.sparkno = -1 * (var(31):=7305)**0
ground.type = low
ground.slidetime = 12
ground.hittime  = 14
guard.hittime = (14) - 6
ground.velocity = -20,0
air.velocity = -6,6
envshake.time = 9
envshake.ampl = 5
yaccel = 0.53
fall = 0
air.fall = 0
kill = 0

[State 1005, hitsnd]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = target,time=0 && target,movetype=H
value = 2,6
persistent = 0
ignorehitpause = 1

[State 3301, Pow Effect]
type = helper
trigger1 = movecontact=1 && numtarget
trigger1 = !(target,time)&&(target,movetype=H)
id = 7805
name = "Pow Effect"
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(32), ceil(P2Dist x), var(32))), var(33)
postype = P1
stateno = 7805
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
pausemovetime = 99999
supermovetime = 99999
size.xscale = 1
size.yscale = 1

[State 100, Dust]
type = helper
trigger1 = animelem = 8
helpertype = normal
stateno = 7416
ID = 7416
pos = 40,0
name = "Dash Dust"
postype = p1
facing = -1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 0, TargetBind]
type = TargetBind
triggerall = enemy,statetype != A
trigger1 = movecontact
time = 1
pos = 0,0
ignorehitpause = 1
persistent = 1

[State 0, BindToTarget]
type = BindToTarget
triggerall = enemy,statetype != A
trigger1 = movecontact 
time = 1
pos = 10,0,Foot
ignorehitpause = 1

[State 1000, 7]
type = Changeanim
trigger1 = movecontact
value = 3402
elem = 7
ignorehitpause = 1
persistent = 0

[State 1000, 7]
type = velset
triggerall = movecontact
trigger1 = 1
x = 0

[State 1000, 7]
type = Changestate
trigger1 = movecontact
trigger1 = animelem = 8
value = 3406

[State 1000, 7]
type = ChangeState
trigger1 = animtime = 0
value = 3430

;---------------------------------------------------------------------------
; Hayate no Red Hawk Strike 2
[Statedef 3406]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 3405
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

[State 200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 1,2

[State 810, Width 2-11]
type = Width
trigger1 = animelem = 2,0
trigger2 = animelem = 2,1
trigger3 = animelem = 2,2
trigger4 = animelem = 2,3
trigger5 = animelem = 1,2
value = 20

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
value = 3400,1

[State 1000, 7]
type = velset
trigger1 = animelem = 2
x = 41;42

[State 1000, 7]
type = velset
trigger1 = animelem = 3
x = 8

[State 0, VarAdd]
type = VarAdd
trigger1 = movecontact 
v = 32
value = 1

[State 1000, 2]
type = HitDef
trigger1 = time = 0
attr = S, SA
animtype  = hard
air.animtype = back
damage = 50,4
guardflag = M
hitflag = MA
getpower = 0
pausetime = 6,5
sparkno = -1 * (var(30):=7030)**0
sparkxy = -10 + 0*(var(32):=62), var(33):=-58
hitsound = s2,2
guardsound = s6,0
guard.sparkno = -1 * (var(31):=7305)**0
ground.type = low
ground.slidetime = 12
ground.hittime  = 19
guard.hittime = (19) - 6
ground.velocity = -7,0
air.velocity = -6,6
envshake.time = 9
envshake.ampl = 5
yaccel = 0.53
fall = 0
air.fall = 0
kill = 0

[State 0, BindToTarget]
type = BindToTarget
triggerall = enemy,statetype != A
trigger1 = movecontact
time = 1
pos = 60,0
ignorehitpause = 1
persistent = 1

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
value = 3407

[State 1000, 7]
type = ChangeState
trigger1 = animtime = 0
value = 3430

;---------------------------------------------------------------------------
; Hayate no Red Hawk Strike 3
[Statedef 3407]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 3405
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

[State 200, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 1,2

[State 810, Width 2-11]
type = Width
trigger1 = animelem = 2,0
trigger2 = animelem = 2,1
trigger3 = animelem = 2,2
trigger4 = animelem = 2,3
trigger5 = animelem = 1,2
value = 20

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
value = 3400,1

[State 1000, 7]
type = velset
trigger1 = animelem = 2
x = 48;42

[State 1000, 7]
type = velset
trigger1 = animelem = 3
x = 8

[State 0, VarAdd]
type = VarAdd
trigger1 = movecontact 
v = 32
value = 1

[State 1000, 2]
type = HitDef
trigger1 = time = 0
attr = S, SA
animtype  = hard
air.animtype = back
damage = 85,4
guardflag = M
hitflag = MA
getpower = 0
pausetime = 9,10
sparkno = -1 * (var(30):=7030)**0
sparkxy = -10 + 0*(var(32):=62), var(33):=-58
hitsound = s2,2
guardsound = s6,0
guard.sparkno = -1 * (var(31):=7305)**0
ground.type = low
ground.slidetime = 12
ground.hittime  = 19
guard.hittime = (19) - 6
ground.velocity = 0,0
air.velocity = -6,6
envshake.time = 9
envshake.ampl = 5
p2stateno = 3440
yaccel = 0.53
fall = 0
air.fall = 0
kill = 0

[State 1000, 7]
type = Changeanim
trigger1 = movecontact
value = 3405
elem = 4
ignorehitpause = 1
persistent = 0

[State 1000, 7]
type = Changestate
trigger1 = movehit
trigger1 = animelem = 4
value = 3408

[State 1000, 7]
type = Changestate
trigger1 = moveguarded
trigger1 = animelem = 4
value = 3430

[State 1000, 7]
type = ChangeState
trigger1 = animtime = 0
value = 3430

;---------------------------------------------------------------------------
; Hayate no Red Hawk Final Strike BURST
[Statedef 3408]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0
anim = 3406
sprpriority = 2

[State 1000, 5]
type = Helper
trigger1 = AnimElemTime(1) = 0
helpertype = normal
name = "Red Hawk Charge"
ID = 7485
pos = floor(15*const(size.xscale)),floor(-95*const(size.yscale))
postype = p1
facing = 1
stateno = 7485
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 1
size.xscale = 1
size.yscale = 1

[State 1000, 5]
type = Helper
trigger1 = AnimElemTime(2) = 0
helpertype = normal
name = "Flame Burst 1"
ID = 7490
pos = 0,0
postype = p1
facing = 1
stateno = 7490
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 1
size.xscale = .5
size.yscale = .35

[State 1000, 5]
type = Helper
trigger1 = AnimElemTime(2) = 4
helpertype = normal
name = "Flame Burst 2"
ID = 7491
pos = 0,0
postype = p1
facing = 1
stateno = 7491
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 1
size.xscale = .3
size.yscale = .3

[State 1000, 5]
type = Helper
trigger1 = AnimElemTime(2) = 5
helpertype = normal
name = "Flame Burst 3"
ID = 7492
pos = 0,0
postype = p1
facing = 1
stateno = 7492
keyctrl = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 1
size.xscale = .3
size.yscale = .3

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = AnimElemTime(2) = 0
value = 3000,3
channel = 3

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = AnimElemTime(2) = 0
value = 3010,3
channel = 3

[State 1000, 7]
type = ChangeState
trigger1 = time >= 80   
value = 3420

;---------------------------------------------------------------------------
; Hayate no Red Hawk Success
[Statedef 3420]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3420
ctrl = 0
sprpriority = 2

[State 3400, 7]
type = varadd
trigger1 = animelemtime(12) >= 0
var(28) = -1

[State 3400, Helper]
type=Helper
triggerall = var(49) = 1
trigger1 = Animelemtime(12)=0
helpertype=normal ;player
name ="Red Skin"
ID = 7471
stateno = 7471
pos=0,0
postype=p1
ownpal=1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
persistent=1
supermovetime = 9999

[State 3400, Helper]
type=Helper
trigger1 = Animelemtime(12)=0
helpertype=normal ;player
name ="Steam"
ID = 7480
stateno = 7480
pos=0,16
postype=p1
ownpal=1
size.xscale =(.4 * const(size.xscale))
size.yscale =(.5 * const(size.yscale))
persistent=1
supermovetime = 9999

[State 210, 1]
type = PlaySnd
trigger1 = Animelemtime(12)=0
value = 3400,2

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 0
trigger1 = Animelemtime(9)=0
value = 3400,11
channel = 3

[State 210, 1]
type = PlaySnd
triggerall = var(39) = 1
trigger1 = Animelemtime(9)=0
value = 3400,21
channel = 3

[State 1000, 7]
type = ChangeState
trigger1 = Animelem = 16
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Hayate no Red Hawk End
[Statedef 3430]
type    = S
movetype= A
physics = S
velset = 0,0
anim = 3430
ctrl = 0
sprpriority = 2

[State 3400, 7]
type = varadd
trigger1 = animelemtime(2) >= 0
var(28) = -1

[State 3400, Helper]
type=Helper
triggerall = var(49) = 1
trigger1 = Animelemtime(2)=0
helpertype=normal ;player
name ="Red Skin"
ID = 7472
stateno = 7472
pos=0,0
postype=p1
ownpal=1
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
persistent=1
supermovetime = 9999

[State 3400, Helper]
type=Helper
trigger1 = Animelemtime(2)=0
helpertype=normal ;player
name ="Steam"
ID = 7480
stateno = 7480
pos=0,0
postype=p1
ownpal=1
size.xscale =(.25 * const(size.xscale))
size.yscale =(.5 * const(size.yscale))
persistent=1
supermovetime = 9999

[State 210, 1]
type = PlaySnd
trigger1 = Animelemtime(2)=0
value = 3400,2

[State 1000, 7]
type = ChangeState
trigger1 = Animelem = 5,1
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Custom State 1 (Stunned)
[Statedef 3440]
type    = S
movetype= H
physics = N
velset = 0,0

[State 3325, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3440
ignorehitpause =1

[State 2551, ScrBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0

[State 0, SelfState]
type = SelfState
trigger1 = time = 59
value = 0
anim = 0
ctrl = 1