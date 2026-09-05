; ___________________________________
;| Nakoruru by Phantom.of.the.Server |
; 
;==============================================================================================
;=======================================<HELPER STATES>========================================
;==============================================================================================

;========================<BLADE>=============================
[Statedef 6000]
type = A
physics = N
anim = 9999
sprpriority = 2
ctrl = 0

[State 6000, Bind]
type = bindtoroot
trigger1 = 1
facing = 1
[State 6000, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 6000, movevar]
type = varset
trigger1 = !time
var(0) = (root, stateno)
[State 6000, movevar]
type = varset
trigger1 = !(root, hitpausetime)
var(1) = (root, animelemno(0))

[State 6000, SfMP]
type = changeanim
trigger1 = root, stateno = 210
value = 6000
elem = (root, animelemno(0))
[State 6000, ScMP]
type = changeanim
trigger1 = root, stateno = 211
value = 6001
elem = (root, animelemno(0))
[State 6000, SfHP]
type = changeanim
trigger1 = root, stateno = 220
value = 6002
elem = (root, animelemno(0))
[State 6000, ScHP]
type = changeanim
trigger1 = root, stateno = 221
value = 6003
elem = (root, animelemno(0))

[State 6000, CMP]
type = changeanim
trigger1 = root, stateno = 410
value = 6010
elem = (root, animelemno(0))
[State 6000, CHP]
type = changeanim
trigger1 = root, stateno = 420
value = 6011
elem = (root, animelemno(0))
[State 6000, CHP2]
type = changeanim
trigger1 = root, stateno = 425
value = 6012
elem = (root, animelemno(0))

[State 6000, AMP]
type = changeanim
trigger1 = root, stateno = 610
value = 6020
elem = (root, animelemno(0))
[State 6000, AHP]
type = changeanim
trigger1 = root, stateno = 620
value = 6021
elem = (root, animelemno(0))

[State 6000, MLP]
type = changeanim
trigger1 = root, stateno = 670
value = 6030
elem = (root, animelemno(0))
[State 6000, MMP]
type = changeanim
trigger1 = root, stateno = 675
value = 6031
elem = (root, animelemno(0))
[State 6000, MHP]
type = changeanim
trigger1 = root, stateno = 660
value = 6032
elem = (root, animelemno(0))

[State 6000, Throw]
type = changeanim
trigger1 = root, stateno = 830
value = 6009
elem = (root, animelemno(0))

[State 6000, Issen]
type = changeanim
trigger1 = root, stateno = 2900
value = 6040
elem = (root, animelemno(0))

[State 6000, super]
type = changeanim
trigger1 = root, stateno = 3410
value = 6050
elem = (root, animelemno(0))

[State 6000, spr]
type = sprpriority
trigger1 = 1
value = 2
[State 6000, spr]
type = sprpriority
trigger1 = anim = [6030, 6031]
value = -1

[State 6000, End]
type = destroyself
trigger1 = (root, stateno) != var(0)
trigger2 = anim != [6000, 6099]


;--- Win Pose 5 ---
[Statedef 6090]
type = A
physics = N
anim = 6090
sprpriority = 2
ctrl = 0

[State 6090, Bind]
type = bindtoroot
trigger1 = 1
pos = -2, -60
facing = 1
[State 6090, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 6090, Angle]
type = angledraw
trigger1 = 1
value = 22.5 * time

[State 6090, End]
type = destroyself
trigger1 = root, stateno != 185
trigger2 = root, stateno = 185 && root, animelemtime(19) >= 0


;========================<KAMUI RIMSE REFLECTION>=============================
[Statedef 1250]
type = A
physics = N
movetype = I
anim = 1250
ctrl = 0
velset = 0, 0

[State 1250, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AT, HP
time = -1
slot = 0
stateno = 1251
ignorehitpause = 1
[State 1250, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA, NP, SP
time = -1
slot = 1
stateno = 1255
ignorehitpause = 1

[State 1250, NHB]
type = nothitby
trigger1 = 1
time = -1
value = SCA
ignorehitpause = 1
[State 1250, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP
time = -1
ignorehitpause = 1

[State 1250, Bind]
type = bindtoroot
trigger1 = 1
facing = 1

[State 1250, Reversal]
type = reversaldef
trigger1 = 0
attr =
reversal.attr = SCA, NP, SP
pausetime = 0, 0
sparkno = -1
sparkxy = 0, 0
hitsound = -1
p1stateno = 1255
p2stateno = 1251
numhits = 0

[State 1250, End]
type = destroyself
trigger1 = root, movetype = H
trigger2 = root, stateno != 1200 && root, stateno != 1220 && root, stateno != 3500
trigger3 = root, stateno = 1200 && (root, animelemtime(5) < 0 || root, animelemtime(7) >= 0)
trigger4 = root, stateno = 1220
trigger4 = (root, animelemtime(5) < 0 || (root, animelemtime(7) >= 0 && root, animelemtime(12) < 0) || (root, animelemtime(14) >= 0 && root, animelemtime(19) < 0) || root, animelemtime(21) >= 0)
trigger5 = root, stateno = 3500
trigger5 = root, animelemtime(7) < 0 || (root, animelemtime(9) >= 0 && root, animelemtime(14) < 0) || (root, animelemtime(16) >= 0 && root, animelemtime(22) < 0) || (root, animelemtime(24) >= 0 && root, animelemtime(26) < 0) || (root, animelemtime(28) >= 0 && root, animelemtime(34) < 0) || root, animelemtime(36) >= 0


[Statedef 1251]
type = A
physics = N
movetype = I
ctrl = 0
velset = 0, 0
[State 1251, NHB]
type = nothitby
trigger1 = 1
time = -1
value = SCA
[State 1251, End]
type = destroyself
trigger1 = time
ignorehitpause = 1


;--- Reflect Projectile ---
[Statedef 1255]
type = A
physics = N
movetype = I
anim = 9999
ctrl = 0
velset = 0, 0

[State 1255, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 1255, Snd]
type = playsnd
trigger1 = !time
value = 7, 3

[State 1255, Reflected]
type = helper
trigger1 = time = 0
helpertype = normal
stateno = 1260
ID = 1260
name = "Reflected Projectile"
postype = p1
pos = 80, -55
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1255, End]
type = destroyself
trigger1 = time >= 0


;========================<REFLECTED PROJECTILE =============================
[Statedef 1260]
type = S
physics = N
movetype = A
ctrl = 0
sprpriority = 4

[State 1260, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 1261
ignorehitpause = 1
[State 1260, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

[State 1260, Anim]
type = changeanim
trigger1 = anim != 1260
value = 1260

[State 1260, Vel]
type = velset
trigger1 = 1
x = 5
y = 0

[State 1260, counterflag]
type = varset
trigger1 = numenemy
trigger1 = movecontact != 1
var(9) = (enemynear, movetype = A)
[State 1260, dampener]
type = varset
trigger1 = !time
trigger1 = prevstateno != [1260, 1261]
fvar(10) = root, fvar(10)
[State 1260, dampener]
type = varset
trigger1 = 1
fvar(11) = fvar(10) * ifelse(var(9), 1.2, 1)

[State 1260, Snd]
type = angleadd
trigger1 = 1
value = -9
[State 1260, Snd]
type = angledraw
trigger1 = 1
[State 1260, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1260, Sparkles]
type = explod
trigger1 = !(time % 2)
anim = 8160
sprpriority = 3
postype = p1
pos = 0, 0
random = 32, 32
accel = 0, 0.125
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
scale = 0.5, 0.5
ownpal = 1

[State 1260, miss]
type = hitdef
trigger1 = 1
attr = S, SP
hitflag =
sparkxy = -10, 0

[State 1260, Hit]
type = hitdef
trigger1 = (root, var(15) < 1 || root, var(20))
attr = S, SP
hitflag = MAF
guardflag = HA
guarddist = root, const(size.proj.attack.dist)
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 60 < 7, 7, fvar(11) * 60)), 7
getpower = 0, 0
givepower = 40, 40
pausetime = 0, 4
guard.pausetime = 0, 4
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = High
air.type = High
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 60
ground.velocity = -10.52, 0
guard.velocity = -10.52
air.velocity = -4.31, -7.27
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
guard.dist = const(size.proj.attack.dist)
yAccel = (0.5 + (ComboCount * 0.01))
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 20
p2facing = ifelse((p2stateno != [5020, 5119]) && p2statetype != L, 1, 0)
forcestand = 1
sparkno = -1
guard.sparkno = -1
sparkxy = -10, -13
hitsound = -1
guardsound = -1
sprpriority = 4

[State 1260, Stun System - Add]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = target, gethitvar(damage) > 0
trigger1 = root, var(42) >= 0
trigger1 = root, var(20) <= 0
var(42) = ceil(100 * root, fvar(11))
ignorehitpause = 1

[State 1260, Stun System - Dizzy]
type = targetstate
trigger1 = movehit = 1
trigger1 = numenemy = 1 && numpartner = 0
trigger1 = roundstate = 2 && numtarget
trigger1 = target, gethitvar(damage) < target, life
trigger1 = root, var(42) >= (target, const(data.life))
value = 1115310
ignorehitpause = 1

[State 1260, End]
type = changestate
trigger1 = movecontact
value = 1261
ignorehitpause = 1
[State 1260, End]
type = destroyself
trigger1 = frontedgedist < -80 || backedgedist < -80


;--- Hitpause ---
[Statedef 1261]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 4
movehitpersist = 1

[State 1261, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 1261, HitSound]
type = playsnd
trigger1 = movecontact = 1
value = ifelse((movehit && numtarget), 2, 3), ifelse((movehit && numtarget), 2, 0)
channel = 2
ignorehitpause = 1

[State 1261, Spark]
type = helper
trigger1 = root, fvar(31)
trigger1 = movecontact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helpertype = normal
stateno = ifelse(moveguarded, 8001, 8020)
ID = 8000
name = "Spark"
postype = p1
pos = ifelse(p2dist x < 0, 0, ifelse(p2dist x < 20, ceil(p2dist x), 20)), 0
facing = -1
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1261, Spark]
type = explod
trigger1 = !(root, fvar(31))
trigger1 = movecontact = 1 && numtarget
trigger1 = !(target, hitshakeover)
anim = Fifelse(moveguarded, 40, 2)
ID = 8000
postype = p1
pos = ifelse(p2dist x < 0, 0, ifelse(p2dist x < 20, ceil(p2dist x), 20)), 0
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 1261, Counter FX]
type = helper
trigger1 = movecontact = 1 && numtarget && var(9)
trigger1 = !(target, hitshakeover)
helpertype = normal
stateno = 8290
ID = 8290
name = "Counter FX"
postype = p2
pos = (target, const(size.ground.front) -10) * (target, facing) * (-facing), floor(pos y -target, pos y)
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 1261, ProjContact]
type = varset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
var(18) = 1
ignorehitpause = 1

[State 1261, End]
type = changestate
trigger1 = time >= 0
value = 1262


;--- Disappear ---
[Statedef 1262]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4
movehitpersist = 1

[State 1262, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 1262, Snd]
type = angleadd
trigger1 = 1
value = -9
[State 1262, Snd]
type = angledraw
trigger1 = 1
scale = 1 + (0.045 * time), 1 + (0.045 * time)
[State 1262, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 -floor(11.6 * time), 256
ignorehitpause = 1

[State 1261, End]
type = destroyself
trigger1 = time >= 22


;========================<ANNU MUTSUBE>=============================
;--- Main ---
[Statedef 1005]
type = A
physics = N
anim = 1005
sprpriority = 3
ctrl = 0

[State 1005, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1005, Sparkles]
type = explod
trigger1 = !(time % 2)
anim = 8160
sprpriority = 3
postype = p1
pos = -10, -10
random = 20, 20
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
scale = 0.5, 0.5
ownpal = 1

[State 1005, Forward]
type = varset
trigger1 = !time
trigger1 = root, stateno = 1000 || root, stateno = 1020
var(0) = 0
[State 1005, Upward]
type = varset
trigger1 = !time
trigger1 = root, stateno = 1100 || root, stateno = 1120
var(0) = 1
[State 1005, Downward]
type = varset
trigger1 = !time
trigger1 = root, stateno = 1550 || root, stateno = 1560 || root, stateno = 3010
var(0) = 2

[State 1005, Bind]
type = bindtoroot
trigger1 = var(0) = 0
pos = 56, -16
[State 1005, Bind]
type = bindtoroot
trigger1 = var(0) = 1
pos = 60, -60
[State 1005, Bind]
type = bindtoroot
trigger1 = var(0) = 2
pos = 27, -4

[State 1005, Angle]
type = angleset
trigger1 = 1
value = ifelse(var(0) = 2, 315, ifelse(var(0) = 1, 45, 0))

[State 1005, Scale]
type = angledraw
trigger1 = var(0) = 0
scale = 0.5 + (0.15 * time), ifelse(time <= 2, 0.5 + (0.25 * time), 1 -0.125 * (time -2))
[State 1005, Scale]
type = angledraw
trigger1 = var(0) = 1 || var(0) = 2
scale = 0.5 + (0.1875 * time), ifelse(time <= 2, 0.5 + (0.25 * time), 1 -0.167 * (time -2))

[State 1005, End]
type = destroyself
trigger1 = root, movetype = H
trigger2 = var(0) = 0 && time >= 10
trigger3 = (var(0) = 1 || var(0) = 2) && time >= 8


;--- Circle ---
[Statedef 1006]
type = A
physics = N
anim = 1006
sprpriority = 3
ctrl = 0

[State 1006, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 -ceil(time * 25.6), 256
ignorehitpause = 1

[State 1006, Vel]
type = velmul
trigger1 = 1
x = 0.85
y = 0.85
[State 1006, Vel]
type = velset
trigger1 = !time
x = -(root, vel x)
y = -(root, vel y)

[State 1006, Forward]
type = varset
trigger1 = !time
trigger1 = root, stateno = 1000 || root, stateno = 1020
var(0) = 0
[State 1006, Upward]
type = varset
trigger1 = !time
trigger1 = root, stateno = 1100 || root, stateno = 1120
var(0) = 1
[State 1006, Downward]
type = varset
trigger1 = !time
trigger1 = root, stateno = 1550 || root, stateno = 1560 || root, stateno = 3010
var(0) = 2

[State 1006, Angle]
type = angleset
trigger1 = 1
value = ifelse(var(0) = 2, 315, ifelse(var(0) = 1, 45, 0))

[State 1006, Scale]
type = angledraw
trigger1 = 1
scale = 0.75 + (0.125 * time), 0.75 + (0.125 * time)

[State 1006, End]
type = destroyself
trigger1 = time >= 10
trigger2 = root, movetype = H


;========================<I.Y.L. GLOW>=============================
[Statedef 3305]
type = A
physics = N
anim = 3305
sprpriority = 3
ctrl = 0

[State 3305, Bind]
type = bindtoroot
trigger1 = root, anim = 3300 && root, animelemtime(7) >= 0 && root, animelemtime(8) < 0
pos = -15, -101
[State 3305, Bind]
type = bindtoroot
trigger1 = root, anim = 3300 && root, animelemtime(8) >= 0
pos = 18, -52

[State 3305, Sparkles]
type = explod
trigger1 = 0; !(time % 2)
anim = 8160
sprpriority = 3
postype = p1
pos = 0, 0
random = 40, 40
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
scale = 0.5, 0.5
ownpal = 1

[State 3305, Scale]
type = varset
trigger1 = 1
fvar(0) = 0.5 + (random / 2000.0)

[State 3305, Angle]
type = angleadd
trigger1 = 1
value = 6
[State 3305, Scale]
type = angledraw
trigger1 = 1
scale = fvar(0), fvar(0)

[State 3305, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 192 + ceil(64 * random / 1000.0), 256
ignorehitpause = 1

[State 3305, End]
type = destroyself
trigger1 = root, stateno != 3300 || root, movetype = H


;========================<G.L.M. FX>=============================
[Statedef 3405]
type = A
physics = N
anim = 3405
sprpriority = 3
ctrl = 0

[State 3405, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3405, Sparkles]
type = explod
trigger1 = !(time % 2)
anim = 8160
sprpriority = 3
postype = p1
pos = -10, -10
random = 20, 20
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
scale = 0.5, 0.5
ownpal = 1

[State 3405, Bind]
type = bindtoroot
trigger1 = 1
pos = 56, -16

[State 3405, End]
type = destroyself
trigger1 = root, stateno != 3400 || root, movetype = H
trigger2 = root, stateno = 3400
trigger2 = root, animelemtime(10) < 0 || root, animelemtime(12) >= 0


;====================<AMUBE YATORO FX>====================
[Statedef 10205]
type = A
velset = 0, 0
anim = 10205
sprpriority = 4

[State 1205, Bind]
type = bindtoparent
trigger1 = 1
pos = 8, -6
facing = 1

[State 10205, Trans]
type = trans
trigger1 = time < 8
trans = addalpha
alpha = (time * 24), 256
[State 10205, Trans]
type = trans
trigger1 = time >= 8
trans = addalpha
alpha = 192 - 32 * (time % 3), 256

[State 10205, Flames]
type = explod
trigger1 = 1
anim = 8150
sprpriority = 3
postype = p1
pos = -6, -6
random = 12, 12
vel = -5 + (random / 100.0), -(random / 200.0)
scale = 0.5, 0.5
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
trans = addalpha
alpha = 128, 256
ownpal = 1

[State 10205, End]
type = destroyself
trigger1 = parent, movetype = H
trigger2 = parent, stateno != [10200, 10201]


;========================<SHICHIKAPU KAMUI IRUSHIKA FX>=============================
[Statedef 10415]
type = A
physics = N
anim = 9999
ctrl = 0

[State 10415, End]
type = changestate
trigger1 = !playerIDexist(parent, ID)
value = 10416
[State 10415, End]
type = changestate
triggerall = playerIDexist(parent, ID)
trigger1 = parent, movetype != A
trigger2 = parent, stateno != [10410, 10411]
value = 10416

[State 10415, Bind]
type = bindtoparent
trigger1 = 1
pos = 16, -21

[State 10415, FX]
type = explod
trigger1 = !numexplod(104150)
anim = 10415
ID = 104150
sprpriority = 4
postype = p1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 10415, FX]
type = explod
trigger1 = !numexplod(104151)
anim = 10415
ID = 104151
sprpriority = 4
postype = p1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 10415, Scale]
type = modifyexplod
trigger1 = numexplod(104150)
ID = 104150
scale = 0.4, 0.20 + (random / 2500.0)
trans = addalpha
alpha = 192, 256

[State 10415, Scale]
type = modifyexplod
trigger1 = numexplod(104151)
ID = 104151
scale = 0.4, 0.20 + (random / 2500.0)
trans = addalpha
alpha = 192, 256

[State 10415, Scale]
type = modifyexplod
trigger1 = time <= 4 && numexplod(104150)
ID = 104150
trans = addalpha
alpha = 48 * time, 256
[State 10415, Scale]
type = modifyexplod
trigger1 = time <= 4 && numexplod(104151)
ID = 104151
trans = addalpha
alpha = 48 * time, 256


;--- Fading ---
[Statedef 10416]
type = A
physics = N
anim = 9999
ctrl = 0

[State 10416, Bind]
type = bindtoparent
trigger1 = playerIDexist(parent, ID)
pos = 16, -21

[State 10416, Scale]
type = modifyexplod
trigger1 = numexplod(104150)
ID = 104150
scale = 0.5, (1 - 0.0625 * time) * (0.25 + random / 2000.0)
trans = addalpha
alpha = 192 - 12 * time, 256
[State 10416, Scale]
type = modifyexplod
trigger1 = numexplod(104151)
ID = 104151
scale = 0.5, (1 - 0.0625 * time) * (0.25 + random / 2000.0)
trans = addalpha
alpha = 192 - 12 * time, 256

[State 10416, End]
type = removeexplod
trigger1 = time >= 16
[State 10416, End]
type = destroyself
trigger1 = time >= 16


;====================<IRUSUKA YATORO LISE FX>====================
[Statedef 10615]
type = A
velset = 0, 0
anim = 10615
sprpriority = 4

[State 10615, End]
type = changestate
trigger1 = !playerIDexist(parent, ID)
value = 10616
[State 10615, End]
type = changestate
triggerall = playerIDexist(parent, ID)
trigger1 = parent, movetype != A
trigger2 = parent, stateno != [10610, 10611]
value = 10616

[State 10615, Bind]
type = bindtoparent
trigger1 = 1
pos = 8, -6
facing = 1

[State 10615, Trans]
type = angledraw
trigger1 = 1
scale = 1 + 0.05 * (gametime % 5), 1 + 0.05 * (gametime % 5)
[State 10615, Trans]
type = trans
trigger1 = time < 4
trans = addalpha
alpha = (time * 64), 256
[State 10615, Trans]
type = trans
trigger1 = time >= 4
trans = addalpha
alpha = 256, 256

[State 10615, Flames]
type = explod
trigger1 = 1
anim = 8150
sprpriority = 3
postype = p1
pos = -40, -50
random = 80, 100
vel = -5 + (random / 100.0), -(random / 200.0)
scale = 0.5, 0.5
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
trans = addalpha
alpha = 128, 256
ownpal = 1


;--- Fading ---
[Statedef 10616]
type = A
physics = N
anim = 10615
ctrl = 0

[State 10616, Bind]
type = bindtoparent
trigger1 = playerIDexist(parent, ID)
trigger1 = parent, stateno != [10610, 10611]
pos = 8, -6

[State 10616, Trans]
type = angledraw
trigger1 = 1
scale = 1 + 0.05 * (gametime % 5), 1 + 0.05 * (gametime % 5)
[State 10616, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 -(time * 16), 256

[State 10616, End]
type = destroyself
trigger1 = time >= 16


;--- Fire Pillar ---
[Statedef 10625]
type = A
physics = N
anim = 9999
ctrl = 0

[State 10625, Pos]
type = posset
trigger1 = 1
y = 0

[State 10625, FX]
type = playsnd
trigger1 = !time
value = 7, 8

[State 10625, FX]
type = explod
trigger1 = !time
anim = 10625
ID = 10625
sprpriority = 4
postype = p1
pos = 0, -ceil(pos y)
facing = ifelse(random < 500, -1, 1)
scale = 0.5, 0.5
ownpal = 1

[State 10625, FX]
type = explod
trigger1 = !time
anim = 8105
sprpriority = -3
postype = p1
pos = 0, -ceil(pos y)
scale = 0.5, 0.5
ownpal = 1

[State 10625, Flames]
type = explod
trigger1 = time >= 4
anim = 8150
sprpriority = 3
postype = p1
pos = -40, -120
random = 80, 240
vel = -2 + (random / 250.0), -(random / 200.0)
scale = 0.5, 0.5
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
trans = addalpha
alpha = 128, 256
ownpal = 1

[State 10625, End]
type = destroyself
trigger1 = time >= 16


;========================<HEALING FX>=============================
[Statedef 3210]
type = A
physics = N
movetype = I
anim = 3210
ctrl = 0
sprpriority = 4

[State 3210, Bind]
type = bindtoroot
trigger1 = 1
pos = -6, 0

[State 3210, Snd]
type = playsnd
trigger1 = !time
value = 7, 5
channel = 0

[State 3210, bottom]
type = explod
trigger1 = !numexplod(3211)
anim = 3211
ID = 3211
sprpriority = 4
postype = p1
scale = 0.5, 0.5
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1

[State 3210, Scale]
type = angledraw
trigger1 = 1
scale = 0.75 + (0.25 * sin(time / 16.0 * pi)), 1
[State 3210, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 160 + ceil(-sin(time / 16.0 * pi) * 32), 256
[State 3210, bottom]
type = modifyexplod
trigger1 = numexplod(3211)
ID = 3211
scale = 0.375 + (0.125 * sin(time / 16.0 * pi)), 0.5
trans = addalpha
alpha = 160 + ceil(-sin(time / 16.0 * pi) * 32), 256

[State 3210, sphere]
type = explod
trigger1 = !numexplod(3212)
anim = 3212
ID = 3212
sprpriority = 4
postype = p1
scale = 0.5, 0.5
facing = ifelse(random < 500, -1, 1)
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 3210, Particles]
type = explod
trigger1 = 1
anim = 8161
ID = 8161
sprpriority = ifelse(random < 750, 5, -1)
postype = p1
pos = -45 + (random % 90), -(random % 480)
vel = 0, -1 -(random / 1000.0)
scale = ifelse(random < 500, 0.5, -0.5), ifelse(random < 500, 0.5, -0.5)
removetime = 32
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 3210, End]
type = changestate
trigger1 = root, stateno != 3201 || root, movetype = H
value = 3211
ignorehitpause = 1


[Statedef 3211]
type = A
physics = N
movetype = I
ctrl = 0
anim = 3210
velset = 0, 0
sprpriority = 5

[State 3211, Shrink]
type = angledraw
trigger1 = 1
scale = 1 -(time / 16.0), 1
[State 3211, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 128 -(time * 8), 256
[State 3210, bottom]
type = modifyexplod
trigger1 = numexplod(3211)
ID = 3211
scale = 0.5 -(time / 32.0), 0.5
trans = addalpha
alpha = 128 -(time * 8), 256

[State 3211, sphere]
type = modifyexplod
trigger1 = numexplod(3212)
ID = 3212
trans = addalpha
alpha = 256 -(time * 16), 256
[State 3211, Particles]
type = modifyexplod
trigger1 = numexplod(8161)
ID = 8161
trans = addalpha
alpha = 256 -(time * 16), 256

[State 3211, Snd]
type = stopsnd
trigger1 = time >= 16
channel = 0

[State 3211, End]
type = removeexplod
trigger1 = time >= 16
[State 3211, End]
type = destroyself
trigger1 = time >= 16


;--- Finish ---
[Statedef 3215]
type = A
physics = N
movetype = I
anim = 3215
sprpriority = 3

[State 3215, Bind]
type = bindtoroot
trigger1 = 1
pos = 4, -68

[State 3215, Snd]
type = playsnd
trigger1 = !time
value = 7, 6
channel = 0

[State 3215, Scale]
type = angleset
trigger1 = !time
value = 9 * (random % 40)
[State 3215, Scale]
type = angleadd
trigger1 = 1
value = 9

[State 3215, Scale]
type = angledraw
trigger1 = 1
scale = 1 -(time / 20.0), 1 -(time / 20.0)
[State 3215, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 3215, End]
type = destroyself
trigger1 = time >= 20
trigger2 = root, stateno != 3202 || root, movetype = H


;========================<SOUL>=============================
[Statedef 4005]
type = A
physics = N
anim = 4005
sprpriority = 1
ctrl = 0

[State 4005, Trans]
type = trans
trigger1 = time < 60
trans = addalpha
alpha = ceil(4.27 * time), 256 -ceil(4.27 * time)
ignorehitpause = 1
[State 4005, Trans]
type = trans
trigger1 = time = [60, 120]
trans = addalpha
alpha = 256 -ceil(4.27 * (time -30)), ceil(4.27 * (time -30))
ignorehitpause = 1

[State 4005, Accel]
type = veladd
trigger1 = vel y > -2
y = -0.05

[State 4005, End]
type = destroyself
trigger1 = time >= 120


;========================<STABBED BLADE>=============================
[Statedef 4121]
type = A
physics = N
anim = 4121
sprpriority = -4
ctrl = 0

[State 4121, Bind]
type = bindtoroot
trigger1 = 1
facing = 1

[State 4121, End]
type = destroyself
trigger1 = root, movetype = H
trigger2 = root, stateno != 4120 && root, stateno != 4130 && root, stateno != 4131
trigger3 = root, stateno = 4120 && root, anim = 4120
trigger3 = root, animelemtime(4) < 0 || (root, animelemtime(6) >= 0 && root, animelemtime(8) < 0) || (root, animelemtime(10) >= 0 && root, animelemtime(12) < 0) || root, animelemtime(16) >= 0
trigger4 = root, stateno = 4130
trigger4 = root, anim = 4130 && root, animelemtime(20) < 0


;====================<MANARI>====================
;--- Intro ---
[Statedef 6100]
type = S
physics = S
anim = 6100
velset = 0, 0
ctrl = 0
sprpriority = 1
[State 6100, End]
type = changestate
trigger1 = !animtime
value = 6101


[Statedef 6101]
type = S
physics = N
anim = 6101
velset = 0, 0
ctrl = 0
sprpriority = -1

[State 6101, Turn]
type = turn
trigger1 = !time
[State 6101, Vel]
type = velset
trigger1 = 1
x = 3

[State 6101, step]
type = playsnd
trigger1 = (animelem = 3 || animelem = 6)
value = 0, ifelse((animelem = 3), 103, 106)

[State 6101, End]
type = destroyself
trigger1 = frontedgedist < -60 || backedgedist < -60


;--- Win Pose ---
[Statedef 6110]
type = S
physics = N
anim = 6101
velset = 0, 0
ctrl = 0
sprpriority = -1

[State 6110, Turn]
type = turn
trigger1 = rootdist x < 0
[State 6110, Vel]
type = velset
trigger1 = 1
x = 3

[State 6110, step]
type = playsnd
trigger1 = (animelem = 3 || animelem = 6)
value = 0, ifelse((animelem = 3), 103, 106)

[State 6110, End]
type = changestate
trigger1 = rootdist x < 160
value = 6111


[Statedef 6111]
type = S
physics = N
anim = 6111
velset = 0, 0
ctrl = 0
sprpriority = 1

[State 6111, Pos]
type = posadd
trigger1 = animelem = 2
x = 40
[State 6111, Vel]
type = velset
trigger1 = animelem = 2
x = 4
[State 6111, Vel]
type = velset
trigger1 = animelem = 4
x = 0

[State 6111, Snd]
type = playsnd
trigger1 = animelem = 4
value = 0, 5100
[State 6111, Dust]
type = explod
trigger1 = animelem = 4
anim = 8105
sprpriority = -3
postype = p1
pos = 0, 0
scale = 0.5, 0.5
ownpal = 1


;========================<SPARKS>=============================
;--- Guard Normal ---
[Statedef 8000]
type = A
physics = N
movetype = I
anim = 9999
velset = 0, 0
sprpriority = 99

[State 8000, Main]
type = explod
trigger1 = !time
anim = 8000
ID = 1
postype = p1
ontop = 1
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8010, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 0.1 + (0.0375 * time), 0.1 + (0.0375 * time)
trans = addalpha
alpha = ifelse(time < 4, 256, 256 - 64 * (time - 4)), 256

[State 8000, End]
type = removeexplod
trigger1 = time >= 8
trigger2 = time >= 4
trigger2 = numhelper > (56 / (1 + numenemy + numpartner))

[State 8000, End]
type = destroyself
trigger1 = !numexplod


;--- Guard Special ---
[Statedef 8001]
type = A
physics = N
movetype = I
anim = 9999
velset = 0, 0
sprpriority = 99

[State 8001, Main]
type = explod
trigger1 = !time
anim = 8001
ID = 1
postype = p1
ontop = 1
removetime = 16
pausemovetime = -1
supermovetime = -1
[State 8001, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 0.2 + (0.025 * time), 0.2 + (0.025 * time)
trans = addalpha
alpha = ifelse(time < 4, 256, 256 - 64 * (time - 4)), 256

[State 8001, End]
type = removeexplod
trigger1 = time >= 8
trigger2 = time >= 4
trigger2 = numhelper > (56 / (1 + numenemy + numpartner))

[State 8001, End]
type = destroyself
trigger1 = !numexplod


;--- Normal ---
[Statedef 8010]
type = A
anim = 8010
velset = 0, 0
sprpriority = 99
[State 8010, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8010, Angle]
type = angleset
trigger1 = !time
value = 15 * (random % 24)

[State 8010, Scale]
type = angledraw
trigger1 = time < 10
scale = 1 + (time * 0.3), 1 -(time * 0.1)
[State 8010, Scale]
type = angledraw
trigger1 = time >= 10
scale = 0, 0

[State 8010, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 8010, Center]
type = explod
trigger1 = !time
anim = 8012
ID = 8012
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
scale = 0.5, 0.5
sprpriority = 99
pausemovetime = -1
supermovetime = -1

[State 8010, Particles]
type = explod
trigger1 = time <= 4
trigger1 = random < (1000.0 / numhelper(8000))
anim = 8011
ID = 8011
postype = p1
vel = -10 + (random / 50.0), -10 + (random / 50.0)
scale = 0.4 + (random / 5000.0), 0.4 + (random / 5000.0)
sprpriority = 99
pausemovetime = -1
supermovetime = -1
[State 8010, Particles Scale]
type = modifyexplod
trigger1 = numexplod(8011)
ID = 8011
trans = addalpha
alpha = 256 -16 * time, 256

[State 8010, End]
type = removeexplod
trigger1 = time >= 16
[State 8010, End]
type = destroyself
trigger1 = time >= 16


;--- Normal Cut ---
[Statedef 8015]
type = A
anim = 8015
velset = 0, 0
sprpriority = 99
[State 8015, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8015, Angle]
type = angleset
trigger1 = !time
value = 15 * (random % 24)

[State 8015, Scale]
type = angledraw
trigger1 = time < 10
scale = 0.5 + (time * 0.15), 1 -(time * 0.1)
[State 8015, Scale]
type = angledraw
trigger1 = time >= 10
scale = 0, 0

[State 8015, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 8015, Particles]
type = explod
trigger1 = time <= 4
trigger1 = random < (1000.0 / numhelper(8000))
anim = 8011
ID = 8011
postype = p1
vel = -10 + (random / 50.0), -10 + (random / 50.0)
scale = 0.4 + (random / 5000.0), 0.4 + (random / 5000.0)
sprpriority = 99
pausemovetime = -1
supermovetime = -1
[State 8015, Particles Scale]
type = modifyexplod
trigger1 = numexplod(8011)
ID = 8011
trans = addalpha
alpha = 256 -16 * time, 256

[State 8015, End]
type = removeexplod
trigger1 = time >= 16
[State 8015, End]
type = destroyself
trigger1 = time >= 16


;--- Special ---
[Statedef 8020]
type = A
anim = 8020
velset = 0, 0
sprpriority = 99
[State 8020, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8020, Angle]
type = angleset
trigger1 = !time
value = 15 * (random % 24)

[State 8020, Scale]
type = angledraw
trigger1 = time < 10
scale = 1 + (time * 0.3), 1 -(time * 0.1)
[State 8020, Scale]
type = angledraw
trigger1 = time >= 10
scale = 0, 0

[State 8020, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 8020, Center]
type = explod
trigger1 = !time
anim = 8012
ID = 8012
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
scale = 0.565, 0.565
sprpriority = 99
pausemovetime = -1
supermovetime = -1

[State 8020, Circle]
type = explod
trigger1 = !time
anim = 8023
ID = 8023
postype = p1
removetime = 10
sprpriority = 99
pausemovetime = -1
supermovetime = -1
[State 8020, Circle Scale]
type = modifyexplod
trigger1 = numexplod(8023)
ID = 8023
scale = 0.25 + (0.025 * time), 0.25 + (0.025 * time)
trans = addalpha
alpha = ceil(256 -25.6 * time), 256

[State 8020, Particles]
type = explod
trigger1 = time <= 4
trigger1 = random < (1000.0 / numhelper(8000))
anim = 8021
ID = 8021
postype = p1
vel = -10 + (random / 50.0), -10 + (random / 50.0)
scale = 0.4 + (random / 5000.0), 0.4 + (random / 5000.0)
sprpriority = 99
pausemovetime = -1
supermovetime = -1
[State 8020, Particles Scale]
type = modifyexplod
trigger1 = numexplod(8021)
ID = 8021
trans = addalpha
alpha = 256 -16 * time, 256

[State 8020, End]
type = removeexplod
trigger1 = time >= 16
[State 8020, End]
type = destroyself
trigger1 = time >= 16


;--- Special Cut ---
[Statedef 8025]
type = A
anim = 8025
velset = 0, 0
sprpriority = 99
[State 8025, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8025, Angle]
type = angleset
trigger1 = !time
value = 15 * (random % 24)

[State 8025, Scale]
type = angledraw
trigger1 = time < 10
scale = 0.5 + (time * 0.15), 1 -(time * 0.1)
[State 8025, Scale]
type = angledraw
trigger1 = time >= 10
scale = 0, 0

[State 8025, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 8025, Circle]
type = explod
trigger1 = !time
anim = 8023
ID = 8023
postype = p1
removetime = 10
sprpriority = 99
pausemovetime = -1
supermovetime = -1
[State 8025, Circle Scale]
type = modifyexplod
trigger1 = numexplod(8023)
ID = 8023
scale = 0.25 + (0.025 * time), 0.25 + (0.025 * time)
trans = addalpha
alpha = ceil(256 -25.6 * time), 256

[State 8025, Particles]
type = explod
trigger1 = time <= 4
trigger1 = random < (1000.0 / numhelper(8000))
anim = 8021
ID = 8021
postype = p1
vel = -10 + (random / 50.0), -10 + (random / 50.0)
scale = 0.4 + (random / 5000.0), 0.4 + (random / 5000.0)
sprpriority = 99
pausemovetime = -1
supermovetime = -1
[State 8025, Particles Scale]
type = modifyexplod
trigger1 = numexplod(8021)
ID = 8021
trans = addalpha
alpha = 256 -16 * time, 256

[State 8025, End]
type = removeexplod
trigger1 = time >= 16
[State 8025, End]
type = destroyself
trigger1 = time >= 16


;--- Super ---
[Statedef 8030]
type = A
anim = 8030
velset = 0, 0
sprpriority = 99
[State 8030, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8030, Angle]
type = angleset
trigger1 = !time
value = 15 * (random % 24)

[State 8030, Scale]
type = angledraw
trigger1 = time < 10
scale = 1 + (time * 0.3), 1 -(time * 0.1)
[State 8030, Scale]
type = angledraw
trigger1 = time >= 10
scale = 0, 0

[State 8030, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 8030, Center]
type = explod
trigger1 = !time
anim = 8012
ID = 8012
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
scale = 0.625, 0.625
sprpriority = 99
pausemovetime = -1
supermovetime = -1

[State 8030, Circle]
type = explod
trigger1 = !time
anim = 8023
ID = 8023
postype = p1
removetime = 10
sprpriority = 99
pausemovetime = -1
supermovetime = -1
[State 8030, Circle Scale]
type = modifyexplod
trigger1 = numexplod(8023)
ID = 8023
scale = 0.3 + (0.03 * time), 0.3 + (0.03 * time)
trans = addalpha
alpha = ceil(256 -25.6 * time), 256

[State 8030, Particles]
type = explod
trigger1 = time <= 4
trigger1 = random < (1000.0 / numhelper(8000))
anim = 8031
ID = 8031
postype = p1
vel = -10 + (random / 50.0), -10 + (random / 50.0)
scale = 0.4 + (random / 5000.0), 0.4 + (random / 5000.0)
sprpriority = 99
pausemovetime = -1
supermovetime = -1
[State 8030, Particles Scale]
type = modifyexplod
trigger1 = numexplod(8031)
ID = 8031
trans = addalpha
alpha = 256 -16 * time, 256

[State 8030, End]
type = removeexplod
trigger1 = time >= 16
[State 8030, End]
type = destroyself
trigger1 = time >= 16


;--- Super Cut ---
[Statedef 8035]
type = A
anim = 8035
velset = 0, 0
sprpriority = 99
[State 8035, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8035, Angle]
type = angleset
trigger1 = !time
value = 15 * (random % 24)

[State 8035, Scale]
type = angledraw
trigger1 = time < 10
scale = 0.5 + (time * 0.15), 1 -(time * 0.1)
[State 8035, Scale]
type = angledraw
trigger1 = time >= 10
scale = 0, 0

[State 8035, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 8035, Circle]
type = explod
trigger1 = !time
anim = 8023
ID = 8023
postype = p1
removetime = 10
sprpriority = 99
pausemovetime = -1
supermovetime = -1
[State 8035, Circle Scale]
type = modifyexplod
trigger1 = numexplod(8023)
ID = 8023
scale = 0.25 + (0.025 * time), 0.25 + (0.025 * time)
trans = addalpha
alpha = ceil(256 -25.6 * time), 256

[State 8035, Particles]
type = explod
trigger1 = time <= 4
trigger1 = random < (1000.0 / numhelper(8000))
anim = 8021
ID = 8021
postype = p1
vel = -10 + (random / 50.0), -10 + (random / 50.0)
scale = 0.4 + (random / 5000.0), 0.4 + (random / 5000.0)
sprpriority = 99
pausemovetime = -1
supermovetime = -1
[State 8035, Particles Scale]
type = modifyexplod
trigger1 = numexplod(8021)
ID = 8021
trans = addalpha
alpha = 256 -16 * time, 256

[State 8035, End]
type = removeexplod
trigger1 = time >= 16
[State 8035, End]
type = destroyself
trigger1 = time >= 16


;========================<BLOOD>=============================
;--- Small ---
[Statedef 8050]
type = A
anim = 9999
velset = 0, 0

[State 8050, Small]
type = explod
trigger1 = !time
anim = 8050
ID = 8050
postype = p1
vel = -3 + (random / 166.7), -7.5 -(random / 400.0)
accel = 0, 0.5
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
trans = addalpha
alpha = 256, 128
sprpriority = 5
scale = 0.5, 0.5
ownpal = 1
[State 8050, Small]
type = explod
trigger1 = !time
anim = 8050
ID = 8050
postype = p1
vel = -3 + (random / 166.7), -7.5 -(random / 400.0)
accel = 0, 0.5
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
trans = addalpha
alpha = 256, 128
sprpriority = 5
scale = 0.5, 0.5
ownpal = 1
[State 8050, Small]
type = explod
trigger1 = !time
anim = 8050
ID = 8050
postype = p1
vel = -3 + (random / 166.7), -7.5 -(random / 400.0)
accel = 0, 0.5
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
trans = addalpha
alpha = 256, 128
sprpriority = 5
scale = 0.5, 0.5
ownpal = 1

[State 8050, End]
type = destroyself
trigger1 = 1


;--- Medium ---
[Statedef 8051]
type = A
anim = 9999
velset = 0, 0

[State 8051, Medium]
type = explod
trigger1 = !time
anim = 8051
ID = 8050
postype = p1
vel = -10 + (random / 50.0), -5 -(random / 200.0)
accel = 0, 0.5
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
trans = addalpha
alpha = 256, 128
sprpriority = 5
scale = 0.5, 0.5
ownpal = 1

[State 8051, Small]
type = explod
trigger1 = !time
anim = 8050
ID = 8050
postype = p1
vel = -4 + (random / 125.0), -7.5 -(random / 400.0)
accel = 0, 0.5
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
trans = addalpha
alpha = 256, 128
sprpriority = 5
scale = 0.5, 0.5
ownpal = 1
[State 8051, Small]
type = explod
trigger1 = !time
anim = 8050
ID = 8050
postype = p1
vel = -4 + (random / 125.0), -7.5 -(random / 400.0)
accel = 0, 0.5
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
trans = addalpha
alpha = 256, 128
sprpriority = 5
scale = 0.5, 0.5
ownpal = 1
[State 8051, Small]
type = explod
trigger1 = !time
anim = 8050
ID = 8050
postype = p1
vel = -4 + (random / 125.0), -7.5 -(random / 400.0)
accel = 0, 0.5
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
trans = addalpha
alpha = 256, 128
sprpriority = 5
scale = 0.5, 0.5
ownpal = 1

[State 8051, End]
type = destroyself
trigger1 = 1


;--- Large ---
[Statedef 8052]
type = A
anim = 9999
velset = 0, 0

[State 8052, Large]
type = explod
trigger1 = !time
anim = 8052
ID = 8050
postype = p1
vel = -(random / 333.3), -2.5 -(random / 400.0)
accel = 0, 0.25
trans = addalpha
alpha = 256, 128
sprpriority = 5
scale = 0.5, 0.5
ownpal = 1

[State 8052, Medium]
type = explod
trigger1 = !time
anim = 8051
ID = 8050
postype = p1
vel = -10 + (random / 50.0), -5 -(random / 200.0)
accel = 0, 0.5
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
trans = addalpha
alpha = 256, 128
sprpriority = 5
scale = 0.5, 0.5
ownpal = 1
[State 8052, Medium]
type = explod
trigger1 = !time
anim = 8051
ID = 8050
postype = p1
vel = -10 + (random / 50.0), -5 -(random / 200.0)
accel = 0, 0.5
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
trans = addalpha
alpha = 256, 128
sprpriority = 5
scale = 0.5, 0.5
ownpal = 1

[State 8052, Small]
type = explod
trigger1 = !time
anim = 8050
ID = 8050
postype = p1
vel = -5 + (random / 100.0), -7.5 -(random / 400.0)
accel = 0, 0.5
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
trans = addalpha
alpha = 256, 128
sprpriority = 5
scale = 0.5, 0.5
ownpal = 1
[State 8052, Small]
type = explod
trigger1 = !time
anim = 8050
ID = 8050
postype = p1
vel = -5 + (random / 100.0), -7.5 -(random / 400.0)
accel = 0, 0.5
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
trans = addalpha
alpha = 256, 128
sprpriority = 5
scale = 0.5, 0.5
ownpal = 1
[State 8052, Small]
type = explod
trigger1 = !time
anim = 8050
ID = 8050
postype = p1
vel = -5 + (random / 100.0), -7.5 -(random / 400.0)
accel = 0, 0.5
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
trans = addalpha
alpha = 256, 128
sprpriority = 5
scale = 0.5, 0.5
ownpal = 1

[State 8052, End]
type = destroyself
trigger1 = 1


;========================<DUST>=============================
;--- Jump ---
[Statedef 8100]
type = S
velset = 0, 0
anim = 9999

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
trigger1 = !numexplod
trigger2 = time >= 60


;--- Dash ---
[Statedef 8102]
type = A
anim = 9999
velset = 0, 0
sprpriority = 5

[State 8102, Pos]
type = posset
trigger1 = !time = 0
y = 0

[State 8102, Dust]
type = explod
trigger1 = time = 0 || time = 3 || time = 6
anim = 8102
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

[State 8102, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 0.1 + (0.025 * time), 0.1 + (0.025 * time)
trans = addalpha
alpha = 256 -(16 * time), 256
[State 8102, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 0.1 + (0.025 * (time -3)), 0.1 + (0.025 * (time -3))
trans = addalpha
alpha = 256 -(16 * (time -3)), 256
[State 8102, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 0.1 + (0.025 * (time -6)), 0.1 + (0.025 * (time -6))
trans = addalpha
alpha = 256 -(16 * (time -6)), 256

[State 8102, End]
type = removeexplod
trigger1 = time >= 22
[State 8102, End]
type = destroyself
trigger1 = !numexplod


;========================<FLAMES>=============================
[Statedef 8150]
type = A
velset = 0, 0
anim = 9999

[State 8150, Player]
type = varset
trigger1 = !time
var(0) = parent, var(40)

[State 8150, Time]
type = varadd
trigger1 = 1
var(1) = -1

[State 8150, Time]
type = varset
trigger1 = !time
trigger2 = numhelper(10000)
trigger2 = helper(10000), stateno = 10200 && helper(10000), time <= 1
trigger3 = numhelper(10000)
trigger3 = helper(10000), stateno = 10410 && helper(10000), time <= 1
trigger4 = numhelper(10000)
trigger4 = helper(10000), stateno = 10610 && helper(10000), time <= 1
trigger5 = numhelper(10000)
trigger5 = helper(10000), stateno = 10620 && helper(10000), time <= 1
var(1) = 60

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

[State 8150, Turn]
type = turn
trigger1 = playerIDexist(var(0))
trigger1 = facing != (playerID(var(0)), facing)

[State 8150, Snd]
type = playsnd
trigger1 = playerIDexist(var(0))
trigger1 = playerID(var(0)), hitshakeover
value = 7, 10
persistent = 0

[State 8150, Flames]
type = explod
trigger1 = playerIDexist(var(0))
anim = 8150
sprpriority = 3
postype = p1
random = 40, 40
vel = (random / 2000.0), -0.5 -(random / 2000.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
scale = 0.5, 0.5
ownpal = 1

[State 8150, Flames]
type = explod
trigger1 = playerIDexist(var(0))
anim = 8150
sprpriority = -1
postype = p1
random = 60, 60
vel = (random / 2000.0), -0.5 -(random / 2000.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
scale = 0.5, 0.5
ownpal = 1

[State 8150, End]
type = destroyself
trigger1 = !playerIDexist(var(0))
trigger2 = var(1) <= 0


;========================<SPARKLES>=============================
[Statedef 8160]
type = A
velset = 0, 0
anim = 9999

[State 8160, Player]
type = varset
trigger1 = !time
var(0) = parent, var(40)

[State 8160, Time]
type = varadd
trigger1 = 1
var(1) = -1

[State 8160, Time]
type = varset
trigger1 = !time
trigger2 = root, stateno = 1000
trigger2 = root, movehit = 1 && root, hitpausetime = 10
trigger3 = root, stateno = 1020
trigger3 = root, movehit = 1 && root, hitpausetime = 10
trigger4 = root, stateno = 1100
trigger4 = root, movehit = 1 && root, hitpausetime = 10
trigger5 = root, stateno = 1120
trigger5 = root, movehit = 1 && root, hitpausetime = 10
trigger6 = root, stateno = 1200
trigger6 = root, movehit = 1 && root, hitpausetime = 4
trigger7 = root, stateno = 1210
trigger7 = root, movehit = 1 && root, hitpausetime = 10
trigger8 = root, stateno = 1220
trigger8 = root, movehit = 1 && root, hitpausetime = 4
trigger9 = root, stateno = 1550
trigger9 = root, movehit = 1 && root, hitpausetime = 10
trigger10 = root, stateno = 1560
trigger10 = root, movehit = 1 && root, hitpausetime = 6
trigger11 = root, stateno = 3020
trigger11 = root, movehit = 1 && root, hitpausetime = 10
trigger12 = root, stateno = 3400
trigger12 = root, movehit = 1 && root, hitpausetime = 10
trigger13 = root, stateno = 3500
trigger13 = root, movehit = 1 && root, hitpausetime = 2
var(1) = 60

[State 8160, Pos]
type = posset
trigger1 = playerIDexist(var(0))
x = ceil(playerID(var(0)), pos x)
y = ceil(playerID(var(0)), pos y) + (playerID(var(0)), const(size.mid.pos.y))

[State 8160, Pos]
type = posset
trigger1 = playerIDexist(var(0))
trigger1 = playerID(var(0)), statetype = L
x = ceil(playerID(var(0)), pos x)
y = ceil(playerID(var(0)), pos y) - 20

[State 8160, Turn]
type = turn
trigger1 = playerIDexist(var(0))
trigger1 = facing != (playerID(var(0)), facing)

[State 8150, Snd]
type = playsnd
trigger1 = playerIDexist(var(0))
trigger1 = playerID(var(0)), hitshakeover
value = 7, 3
persistent = 0

[State 8160, Sparkles]
type = explod
trigger1 = !(time % 2)
trigger1 = playerIDexist(var(0))
anim = 8160
sprpriority = 3
postype = p1
random = 60, 60
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
scale = 0.5, 0.5
ownpal = 1

[State 8160, End]
type = destroyself
trigger1 = !playerIDexist(var(0))
trigger2 = var(1) <= 0


;========================<RECOVER FX>=============================
[Statedef 8200]
type = A
velset = 0, 0
anim = 8200
sprpriority = 5

[State 8200, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8200, Scale]
type = angledraw
trigger1 = 1
scale = 0.25 + (0.017 * time), 0.25 + (0.017 * time)

[State 8200, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - (16 * time), 256

[State 8200, End]
type = destroyself
trigger1 = time >= 16


;========================<COUNTER FX>=============================
[Statedef 8290]
type = A
physics = N
velset = 0, 0
anim = 9999

[State 8290, Circle]
type = explod
trigger1 = !numexplod(8290)
anim = 8290
ID = 8290
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8290, Scale]
type = modifyexplod
trigger1 = numexplod(8290)
ID = 8290
scale = 0.2 + (0.05 * time), 0.2 + (0.05 * time)
trans = addalpha
alpha = ceil(256 -(16 * time)), 256

[State 8290, Safety]
type = removeexplod
trigger1 = time >= 16

[State 8290, End]
type = destroyself
trigger1 = !numexplod


;====================<POWER CHARGE>====================
;--- MAIN FX ---
[Statedef 8330]
type = S
anim = 9999
velset = 0, 0
ctrl = 0

[State 8330, Bind]
type = bindtoroot
trigger1 = (root, stateno = 730)
pos = 0, 0
[State 8330, Snd]
type = playsnd
trigger1 = !time
value = 0, 730
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
trigger1 = numexplod(8330) && (root, power < 3000)
ID = 8330
scale = 0.5, 0.1 + 0.4 * (root, power / 3000.0)
[State 8330, FX]
type = modifyexplod
trigger1 = numexplod(8330) && (root, power >= 3000)
ID = 8330
scale = 0.5, 0.5

[State 8330, End]
type = removeexplod
trigger1 = root, stateno != 730
[State 8330, End]
type = stopsnd
trigger1 = root, stateno != 730
channel = 0
[State 8330, End]
type = destroyself
trigger1 = root, stateno != 730


;--- PARTICLES ---
[Statedef 8332]
type = S
anim = 9999
velset = 0, 0
ctrl = 0

[State 8332, Bind]
type = bindtoroot
trigger1 = !(time % 8)
pos = ceil(-157 + (random / 3.125)), ceil(95 -(random / 3.125))

[State 8332, Particle]
type = explod
trigger1 = (time % 8) = 1
anim = 8332
sprpriority = ifelse(random < 750, 5, -1)
postype = p1
vel = ((rootdist x -3) / 32.0), ((rootdist y -65) / 32.0)
scale = ifelse(random < 500, 0.5, -0.5), ifelse(random < 500, 0.5, -0.5)
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8332, End]
type = removeexplod
trigger1 = root, stateno != 730
[State 8332, End]
type = destroyself
trigger1 = root, stateno != 730


;====================<ZERO COUNTER CHARGE>====================
[Statedef 8350]
type = S
anim = 9999
velset = 0, 0

[State 8350, BG PalFX]
type = bgpalfx
trigger1 = 1
time = 1
add = ceil(-255 + 17.1 * time), ceil(-128 + 8.5 * time), ceil(-32 + 2.1 * time)
color = 17 * time

[State 8350, Dust]
type = explod
trigger1 = !time
anim = 8105
sprpriority = -3
postype = p1
pos = 0, -ceil(pos y)
scale = 0.5, 0.5
supermovetime = -1
ownpal = 1
[State 8350, thunder]
type = explod
trigger1 = !time
anim = 8350
ID = 8350
sprpriority = -2
postype = p1
pos = 0, -ceil(pos y)
supermovetime = -1
ownpal = 1
[State 8350, Circle]
type = explod
trigger1 = !time
anim = 8351
ID = 8351
sprpriority = 3
postype = p1
removetime = 15
supermovetime = -1
ownpal = 1

[State 8350, Circle]
type = modifyexplod
trigger1 = numexplod(8351)
ID = 8351
scale = 0.2 + (0.12 * time), 0.2 + (0.12 * time)
trans = addalpha
alpha = (256 -17 * time), 256

[State 8350, No Shadow]
type = assertspecial
trigger1 = 1
flag = invisible
flag2 = noshadow
[State 8350, End]
type = destroyself
trigger1 = time >= 15


;========================<ORIGINAL COMBO>=============================
[Statedef 8400]
type = A
velset = 0, 0
anim = 9999

[State 8400, BG PalFX]
type = bgpalfx
trigger1 = !time
time = 35
add = -255, -128, -128
sinadd = 255, 128, 128, 140

[State 8400, FX]
type = explod
trigger1 = !time
anim = 8400
ID = 8400
sprpriority = 5
postype = p1
removetime = 20
supermovetime = -1
[State 8400, FX]
type = explod
trigger1 = time = 15
anim = 8401
ID = 8401
sprpriority = 5
postype = p1
supermovetime = -1
[State 8400, FX]
type = explod
trigger1 = !time
anim = 8402
ID = 8402
sprpriority = 5
postype = p1
removetime = 15
supermovetime = -1

[State 8400, Scale]
type = modifyexplod
trigger1 = numexplod(8400)
ID = 8400
scale = 0.02 * time, 0.02 * time
[State 8400, Scale]
type = modifyexplod
trigger1 = numexplod(8400) && time >= 15
ID = 8400
scale = 0.02 * time, 0.02 * time
trans = addalpha
alpha = ceil(256 -(51.2 * (time -15))), 256

[State 8400, Scale]
type = modifyexplod
trigger1 = numexplod(8401)
ID = 8401
scale = 0.1 + (0.1 * (time -15)), 0.1 + (0.1 * (time -15))
trans = addalpha
alpha = ceil(256 -(25.6 * (time -15))), 256

[State 8400, Scale]
type = modifyexplod
trigger1 = numexplod(8402)
ID = 8402
scale = 2 -(0.133 * time), 2 -(0.133 * time)

[State 8400, Safety]
type = removeexplod
trigger1 = time >= 26
[State 8400, End]
type = destroyself
trigger1 = time >= 30


;========================<ORIGINAL COMBO TIMER>=============================
[Statedef 8405]
physics = N
velset = 0, 0
anim = 9999
[State 8405, Turn]
type = turn
trigger1 = facing = -1

[State 8405, back]
type = explod
trigger1 = !numexplod(8406)
anim = 8406
ID = 8406
postype = p1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
[State 8495, front]
type = explod
trigger1 = !numexplod(8407)
anim = 8407
ID = 8407
postype = p1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1
[State 8405, frame]
type = explod
trigger1 = !numexplod(8405)
anim = 8405
ID = 8405
postype = p1
bindtime = -1
removetime = -1
pausemovetime = -1
supermovetime = -1
ontop = 1

[State 8405, Scale]
type = modifyexplod
trigger1 = numexplod(8407)
ID = 8407
scale = (root, var(20)) / 180.0, 1

[State 8405, Bind]
type = bindtoroot
trigger1 = 1
pos = 20 * (root, facing), 4
time = -1
[State 8405, Safety]
type = removeexplod
trigger1 = (root, var(20) <= 0)
[State 8405, End]
type = destroyself
trigger1 = (root, var(20) <= 0)


;========================<SUPERPAUSE FX>=============================
;----- Level 1 -----
[Statedef 8500]
type = A
velset = 0, 0
anim = 8500
sprpriority = 5

[State 8500, Bind]
type = varset
trigger1 = !time
fvar(24) = -rootdist x

[State 8500, Bind]
type = varset
trigger1 = !time
fvar(25) = -rootdist y

[State 8500, Bind]
type = bindtoroot
trigger1 = 1
pos = fvar(24), fvar(25)

[State 8500, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

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
[State 8500, Scale]
type = angledraw
trigger1 = time >= 16
scale = 0.5, 0.5
[State 8500, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 8500, Lines]
type = explod
trigger1 = time = 0 || time = 8 || time = 16 || time = 24
anim = 8501
ID = ifelse(time = 24, 4, ifelse(time = 16, 3, ifelse(time = 8, 2, 1)))
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
bindtime = -1
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
bindtime = -1
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


;----- Level 2 -----
[Statedef 8510]
type = A
velset = 0, 0
anim = 8510
sprpriority = 5

[State 8510, Bind]
type = varset
trigger1 = !time
fvar(24) = -rootdist x

[State 8510, Bind]
type = varset
trigger1 = !time
fvar(25) = -rootdist y

[State 8510, Bind]
type = bindtoroot
trigger1 = 1
pos = fvar(24), fvar(25)

[State 8510, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

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
[State 8510, Scale]
type = angledraw
trigger1 = time >= 16
scale = 0.5, 0.5
[State 8510, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 8510, Lines]
type = explod
trigger1 = time = 0 || time = 8 || time = 16 || time = 24
anim = 8511
ID = ifelse(time = 24, 4, ifelse(time = 16, 3, ifelse(time = 8, 2, 1)))
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
bindtime = -1
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
bindtime = -1
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


;----- Level 3 -----
[Statedef 8520]
type = A
velset = 0, 0
anim = 8520
sprpriority = 5

[State 8520, Bind]
type = varset
trigger1 = !time
fvar(24) = -rootdist x

[State 8520, Bind]
type = varset
trigger1 = !time
fvar(25) = -rootdist y

[State 8520, Bind]
type = bindtoroot
trigger1 = 1
pos = fvar(24), fvar(25)

[State 8520, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

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
[State 8520, Scale]
type = angledraw
trigger1 = time >= 16
scale = 0.5, 0.5
[State 8520, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 8520, Portrait]
type = explod
trigger1 = !time
anim = 8525
ID = 20
sprpriority = -16
postype = back
bindtime = -1
removetime = 40
supermovetime = -1
[State 8520, Portrait]
type = explod
trigger1 = !time
anim = 8525
ID = 21
sprpriority = -16
postype = back
bindtime = -1
removetime = 40
supermovetime = -1

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(20) && time < 16
ID = 20
postype = back
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 100, 120)
scale = 1 - (0.03125 * time), 1 - (0.03125 * time)
trans = addalpha
alpha = (8 * time), 256
[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(21) && time < 16
ID = 21
postype = back
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 100, 120)
scale = 2 - (0.09375 * time), 2 - (0.09375 * time)
trans = addalpha
alpha = (8 * time), 256

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(20) && (time = [16, 32])
ID = 20
postype = back
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 100, 120)
scale = 0.5, 0.5
trans = addalpha
alpha = 256, 256
[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(21) && (time = [16, 32])
ID = 21
scale = 0, 0

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(20) && time >= 32
ID = 20
postype = back
pos = 160 + (8 * (time -32)), ifelse((gamewidth / gameheight) > 1.55, 100, 120)
scale = 0.5, 0.5
trans = addalpha
alpha = 128 - 16 * (time -32), 256
[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(21) && time >= 32
ID = 21
postype = back
pos = 160 - (8 * (time -32)), ifelse((gamewidth / gameheight) > 1.55, 100, 120)
scale = 0.5, 0.5
trans = addalpha
alpha = 128 - 16 * (time -32), 256

[State 8520, Lines]
type = explod
trigger1 = time = 0 || time = 8 || time = 16 || time = 24
anim = 8521
ID = ifelse(time = 24, 4, ifelse(time = 16, 3, ifelse(time = 8, 2, 1)))
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
bindtime = -1
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
bindtime = -1
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


;========================<SUPER FINISH>=============================
[Statedef 8600]
type = A
velset = 0, 0
anim = 9999

[State 8600, Bind]
type = posset
trigger1 = 1
x = 0
y = ceil(pos y -screenpos y) + 120

[State 8600, Sound]
type = playsnd
trigger1 = !time
value = 0, 8600
channel = 1

[State 8600, Snd]
type = sndpan
trigger1 = time <= 80
channel = 1
abspan = ceil(sin(gametime / 20.0 * pi) * 160)

[State 8600, Snd]
type = assertspecial
trigger1 = time <= 80
flag = nomusic

[State 8600, BG PalFX]
type = bgpalfx
trigger1 = time < 10
time = 1
mul = 0, 0, 0
[State 8600, BG PalFX]
type = bgpalfx
trigger1 = time = [10, 20]
time = 1
mul = (time -10) * 25, (time -10) * 25, (time -10) * 25

[State 8600, Text]
type = varset
trigger1 = !time && (root, var(23) = [3010, 3020])
var(0) = 1
[State 8600, Text]
type = varset
trigger1 = !time && (root, var(23) = 3100)
var(0) = 2
[State 8600, Text]
type = varset
trigger1 = !time && (root, var(23) = 3300)
var(0) = 3
[State 8600, Text]
type = varset
trigger1 = !time && (root, var(23) = 3500)
var(0) = 4
[State 8600, Text]
type = varset
trigger1 = !time && (root, var(23) = [4100, 4131])
var(0) = 5
[State 8600, Text]
type = varset
trigger1 = !time && (root, var(23) = [3400, 3411])
var(0) = 6

[State 8600, Text]
type = explod
trigger1 = !time && var(0)
anim = 8610 + var(0)
ID = 8610
ontop = 1
postype = left
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 80, 120)
scale = 0.5, 0.5 * (1.3333333 * gameheight / gamewidth)
bindtime = -1
removetime = 20
pausemovetime = -1
supermovetime = -1
[State 8600, Fade]
type = modifyexplod
trigger1 = numexplod(8610)
ID = 8610
trans = addalpha
alpha = ifelse(time < 10, 256, ceil(256 -(time -10) * 25.6)), ifelse(time < 10, 0, ceil((time -10) * 25.6))

[State 8600, MvC]
type = explod
trigger1 = !time
anim = 8600
ID = 8600
ontop = 1
postype = left
pos = 0, 0
scale = 1, (1.3333333 * gameheight / gamewidth)
bindtime = -1
removetime = 20
pausemovetime = -1
supermovetime = -1
[State 8600, Fade]
type = modifyexplod
trigger1 = numexplod(8600)
ID = 8600
trans = addalpha
alpha = ifelse(time < 10, 256, ceil(256 -(time -10) * 25.6)), 256

[State 8600, Circle]
type = explod
trigger1 = !time
anim = 8601
ID = 8601
sprpriority = -255
postype = left
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 80, 120)
bindtime = -1
removetime = 20
pausemovetime = -1
supermovetime = -1
[State 8600, Scale]
type = modifyexplod
trigger1 = numexplod(8601)
ID = 8601
scale = (0.25 * time) * (1.3333333 * gameheight / gamewidth), (0.25 * time) * (1.3333333 * gameheight / gamewidth)
trans = addalpha
alpha = ceil(256 -12.8 * time), 256

[State 8600, Safety]
type = removeexplod
trigger1 = time > 20 && numexplod
trigger2 = roundstate < 3
[State 8600, nobars]
type = assertspecial
trigger1 = time <= 20
flag = nobardisplay
flag2 = noFG
flag3 = globalnoshadow

[State 8600, Stop Shake]
type = envshake
trigger1 = numexplod
time = 1
ampl = 0

[State 8600, End]
type = removeexplod
trigger1 = roundstate < 3
[State 8600, End]
type = destroyself
trigger1 = roundstate < 3


;========================<EXCEL FINISH>=============================
[Statedef 8650]
type = A
velset = 0, 0
anim = 9999

[State 8650, Bind]
type = posset
trigger1 = 1
x = 0
y = ceil(pos y -screenpos y) + 120

[State 8650, Sound]
type = playsnd
trigger1 = !time
value = 0, 8600
channel = 1

[State 8650, Snd]
type = sndpan
trigger1 = time <= 80
channel = 1
abspan = ceil(sin(gametime / 20.0 * pi) * 160)

[State 8650, Snd]
type = assertspecial
trigger1 = time <= 80
flag = nomusic

[State 8650, BG PalFX]
type = bgpalfx
trigger1 = time < 10
time = 1
mul = 0, 0, 0
[State 8650, BG PalFX]
type = bgpalfx
trigger1 = time = [10, 20]
time = 1
mul = (time -10) * 25, (time -10) * 25, (time -10) * 25

[State 8650, MvC]
type = explod
trigger1 = !time
anim = 8650
ID = 8650
sprpriority = 5
postype = left
pos = 0, 0
scale = 1, (1.3333333 * gameheight / gamewidth)
bindtime = -1
removetime = 20
pausemovetime = -1
supermovetime = -1
ontop = 1

[State 8650, Fade]
type = modifyexplod
trigger1 = numexplod(8650)
ID = 8650
scale = 1, 1
trans = addalpha
alpha = ifelse(time < 10, 256, ceil(256 -(time -10) * 25.6)), 256

[State 8650, Circle]
type = explod
trigger1 = !time
anim = 8651
ID = 8651
sprpriority = -5
postype = left
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 80, 120)
bindtime = -1
removetime = 20
pausemovetime = -1
supermovetime = -1
sprpriority = -5

[State 8650, Shrink]
type = modifyexplod
trigger1 = numexplod(8651)
ID = 8651
scale = (0.25 * time) * (1.3333333 * gameheight / gamewidth), (0.25 * time) * (1.3333333 * gameheight / gamewidth)
trans = addalpha
alpha = ceil(256 -12.8 * time), 256

[State 8650, Text]
type = explod
trigger1 = !time
anim = 8403
ID = 8502
sprpriority = -5
postype = left
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 80, 120)
scale = 0.75 * (1.3333333 * gameheight / gamewidth), 0.75 * (1.3333333 * gameheight / gamewidth)
bindtime = -1
removetime = 20
pausemovetime = -1
supermovetime = -1
sprpriority = -5
[State 8650, Fade]
type = modifyexplod
trigger1 = numexplod(8502)
ID = 8502
trans = addalpha
alpha = ifelse(time < 10, 256, ceil(256 -(time -10) * 25.6)), 256

[State 8650, Safety]
type = removeexplod
trigger1 = time > 20 && numexplod
trigger2 = roundstate < 3
[State 8650, nobars]
type = assertspecial
trigger1 = time <= 20
flag = nobardisplay
flag2 = noFG
[State 8650, End]
type = destroyself
trigger1 = roundstate < 3


;========================<DIZZY STARS>=============================
[Statedef 8970]
type = A
physics = N
movetype = I
anim = 9999
velset = 0, 0
sprpriority = 0

[State 8970, Bullet time]
type = bgpalfx
trigger1 = !time
time = 5
sinadd = 128, 128, 128, 10
ignorehitpause = 1
persistent = 0

[State 8970, Bullet time]
type = varadd
trigger1= numenemy
trigger1 = enemynear, hitshakeover
trigger2 = var(0)
var(0) = 1

[State 8970, Bullet time]
type = pause
triggerall = numenemy
triggerall = enemynear, hitshakeover
trigger1 = var(0) = [1, 16]
trigger2 = var(0) = [17, 32]
trigger2 = !(var(0) % 2)
time = 1

[State 8970, Pos]
type = posset
trigger1 = numenemy
x = enemynear, pos x
y = (enemynear, pos y) + (enemynear, const(size.head.pos.y)) - 16

[State 8970, Pos]
type = posset
trigger1 = numenemy = 1
trigger1 = (enemynear, pos y) > 0
y = (enemynear, const(size.head.pos.y)) - 16

[State 8970, Star]
type = explod
trigger1 = !numexplod(1)
anim = 8970
ID = 1
postype = p1
pos = 0, 0
sprpriority = 5
bindtime = -1
removetime = -1
scale = 0.5, 0.5

[State 8970, Star]
type = explod
trigger1 = !numexplod(2)
anim = 8970
ID = 2
postype = p1
pos = 0, 0
sprpriority = 5
bindtime = -1
removetime = -1
scale = 0.5, 0.5

[State 8970, Star]
type = explod
trigger1 = !numexplod(3)
anim = 8970
ID = 3
postype = p1
pos = 0, 0
sprpriority = 5
bindtime = -1
removetime = -1
scale = 0.5, 0.5

[State 8970, Star]
type = explod
trigger1 = !numexplod(4)
anim = 8970
ID = 4
postype = p1
pos = 0, 0
sprpriority = 5
bindtime = -1
removetime = -1
scale = 0.5, 0.5

[State 8970, Circle around]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
postype = p1
pos = ceil(32 * cos((gametime + 0) / 32.0 * pi)), ceil(8 * sin((gametime + 0) / 32.0 * pi))
scale = 0.375 + 0.125 * sin((gametime + 0) / 32.0 * pi), 0.375 + 0.125 * sin((gametime + 0) / 32.0 * pi)
sprpriority = ifelse(sin((gametime + 0) / 32.0 * pi) >= 0, 5, -5)

[State 8970, Circle around]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
postype = p1
pos = ceil(32 * cos((gametime + 32) / 32.0 * pi)), ceil(8 * sin((gametime + 32) / 32.0 * pi))
scale = 0.375 + 0.125 * sin((gametime + 32) / 32.0 * pi), 0.375 + 0.125 * sin((gametime + 32) / 32.0 * pi)
sprpriority = ifelse(sin((gametime + 32) / 32.0 * pi) >= 0, 5, -5)

[State 8970, Circle around]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
postype = p1
pos = ceil(32 * cos((gametime + 16) / 32.0 * pi)), ceil(8 * sin((gametime + 16) / 32.0 * pi))
scale = 0.375 + 0.125 * sin((gametime + 16) / 32.0 * pi), 0.375 + 0.125 * sin((gametime + 16) / 32.0 * pi)
sprpriority = ifelse(sin((gametime + 16) / 32.0 * pi) >= 0, 5, -5)

[State 8970, Circle around]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
postype = p1
pos = ceil(32 * cos((gametime + 48) / 32.0 * pi)), ceil(8 * sin((gametime + 48) / 32.0 * pi))
scale = 0.375 + 0.125 * sin((gametime + 48) / 32.0 * pi), 0.375 + 0.125 * sin((gametime + 48) / 32.0 * pi)
sprpriority = ifelse(sin((gametime + 48) / 32.0 * pi) >= 0, 5, -5)

[State 8970, Snd]
type = playsnd
trigger1 = 1
value = 0, 5300
lowpriority = 1
volumescale = 50
channel = 0

[State 8970, End]
type = stopsnd
trigger1 = !numenemy
trigger2 = numenemy
trigger2 = enemynear, stateno != [1115300, 1115319]
channel = 0

[State 8970, End]
type = removeexplod
trigger1 = !numenemy
trigger2 = numenemy
trigger2 = enemynear, stateno != [1115300, 1115319]

[State 8970, End]
type = destroyself
trigger1 = !numexplod


;========================<MOVELIST>=============================
[Statedef 8980]
type = A
physics = N
movetype = I
anim = 9999

[State 8980, Root]
type = varset
trigger1 = !time
sysvar(0) = root, ID

[State 8980, Turn]
type = turn
trigger1 = !time
trigger1 = facing = -1

[State 8980, Pos]
type = posset
trigger1 = 1
x = 0
y = pos y - screenpos y

[State 8980, Assert]
type = assertspecial
trigger1 = 1
flag = nobardisplay

[State 8980, Explod]
type = explod
trigger1 = !numexplod(8989)
anim = 8989
ID = 8989
postype = left
pos = 160, 120
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
pausemovetime = -1
scale = 8, 8
ontop = 1
ownpal = 0

[State 8980, Snd]
type = playsnd
trigger1 = !time
value = 0, 8980
channel = 0

[State 8980, Pos Y]
type = varadd
trigger1 = root, command = "holdup"
var(1) = 4
[State 8980, Pos Y]
type = varadd
trigger1 = root, command = "holddown"
var(1) = -4

[State 8980, Pos Y]
type = varadd
trigger1 = root, facing = 1 && root, command = "back"
trigger2 = root, facing = -1 && root, command = "fwd"
var(1) = 240
[State 8980, Pos Y]
type = varadd
trigger1 = root, facing = 1 && root, command = "fwd"
trigger2 = root, facing = -1 && root, command = "back"
var(1) = -240

[State 8980, Pos Y];-Half of image height
type = varset
trigger1 = var(1) < (-462 + ifelse((gamewidth / gameheight) > 1.67, 142, 204))
var(1) = ceil(-462 + ifelse((gamewidth / gameheight) > 1.67, 142, 204))

[State 8980, Pos Y]
type = varset
trigger1 = var(1) > 0
var(1) = 0

[State 8980, Explod]
type = explod
trigger1 = !numexplod(8980)
anim = 8980
ID = 8980
postype = left
pausemovetime = -1

[State 8980, Explod]
type = modifyexplod
trigger1 = numexplod(8980)
anim = 8980
ID = 8980
postype = left
pos = 160, 18 + var(1)
facing = 1
vfacing = 1
bindtime = -1
removetime = -1
scale = 0.5, 0.5
ontop = 1
ownpal = 0

[State 8980, Pause]
type = pause
trigger1 = 1
time = 2
movetime = 2

[State 8980, End]
type = changestate
trigger1 = !playerIDexist(sysvar(0))
trigger2 = root, AIlevel
trigger3 = time
trigger3 = root, command = "start"
value = 8981


;--- Remove ---
[Statedef 8981]
type = A
physics = N
movetype = I
anim = 9999

[State 8981, Snd]
type = playsnd
trigger1 = !time
value = 0, 8981
channel = 0

[State 8981, End]
type = removeexplod
trigger1 = !time

[State 8981, End]
type = destroyself
trigger1 = time >= 30


;========================<CAMERA CONTROL>=============================
[Statedef 8999]
type = S
velset = 0, 0
anim = 9999

[State 8999, bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1

[State 8999, End]
type = destroyself
trigger1 = roundstate = 2


;========================<DIRECTIONAL INPUT CONTROLLER>=============================
[Statedef 9999]
type = A
physics = N
movetype = I
anim = 9999

[State 9999, Root]
type = varset
trigger1 = !time
sysvar(0) = root, ID

[State 9999, End]
type = destroyself
trigger1 = !playerIDexist(sysvar(0))
trigger2 = root, AIlevel

[State -1, Catarl]
type = ctrlset
trigger1 = ctrl
value = 0

[State 9999, Bind]
type = bindtoroot
trigger1 = 1
pos = 0, ifelse((root, numtarget), 6, 3)

[State 9999, All for this]
type = turn
triggerall = p2dist x < 0
trigger1 = (root, backedgebodydist) <= 0
trigger2 = (root, p2dist x) < -(root, const(size.ground.back))
trigger3 = (root, p2dist x) > (root, const(size.ground.front))

[State 9999, Debug]
type = displaytoclipboard
trigger1 = 1
text = "Facing = %d"
params = facing * (root, facing)
