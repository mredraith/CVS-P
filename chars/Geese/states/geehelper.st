; _______________________________________
;| Geese Howard by Phantom.of.the.Server |
; 
;==============================================================================================
;=======================================<HELPER STATES>========================================
;==============================================================================================

;========================<REPPUKEN>=============================
[Statedef 1005]
type = S
physics = N
movetype = A
ctrl = 0
anim = 1005
sprpriority = 3

[State 1005, Override]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 1007
ignorehitpause = 1

[State 1005, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

[State 1005, Anim]
type = changeanim
trigger1 = anim != 1005
value = 1005

[State 1005, Strength]
type = mapset
trigger1 = !time
trigger1 = !prevstateno
map = "strength"
value = root, map(strength)

; Damage Scaling was here

[State 1005, Vel]
type = velset
trigger1 = 1
x = ifelse(map(strength) = 2, 6.65, ifelse(map(strength) = 1, 5.33, 4))
y = 0

[State 1005, Left or Right]
type = sprpriority
trigger1 = 1
value = ifelse(map(strength) = 1, 3, -1)

[State 1005, Left or Right]
type = offset
trigger1 = 1
y = ifelse(map(strength) = 1, 2, -4)

[State 1005, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1005, Hit]
type = hitdef
trigger1 = 1
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, SP
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = 60, 15
dizzypoints = 100 * !(root, map(customcombo))
getpower = 0, 0
givepower = 40, 40
pausetime = 0, 12
guard.pausetime = 0, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 18; + 2 * map(counterhit_buffer)
guard.hittime = (1 + 18; + 2 * map(counterhit_buffer)) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
airguard.ctrltime = 1 + 16
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.0, -6.0
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
guard.dist = const(size.proj.attack.dist)
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -30) * (map(sparkx.max) := 0), map(sparky) := -32
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
p1sprpriority = sprpriority

[State 1005, Connected]
type = changestate
trigger1 = movecontact || movereversed
value = 1006
ignorehitpause = 1

[State 1005, End]
type = destroyself
trigger1 = frontedgedist < -80 || backedgedist < -80


;----- Hitpause -----
[Statedef 1006]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 3
movehitpersist = 1

[State 1006, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 1006, Getpower]
type = poweradd
trigger1 = movecontact = 1
trigger1 = numtarget
value = ifelse(moveguarded, 25, 50) * root, map(meterscaling)
ignorehitpause = 1

[State 1006, HitSound]
type = playsnd
trigger1 = !time
trigger1 = movehit
value = ifelse(numtarget, 2, 3), ifelse(numtarget, 6, 0)
channel = 2
ignorehitpause = 1

[State 1006, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 1000
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 1006, ProjContact Double Reppuken]
type = null
trigger1 = ishelper(1020)
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 1010
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 1006, End]
type = changestate
trigger1 = time >= 0
value = 1007


;----- Disappear -----
[Statedef 1007]
type = A
physics = N
movetype = I
anim = 1007
ctrl = 0
velset = 0, 0
sprpriority = 3
movehitpersist = 1

[State 1007, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = hitoverridden || prevmovetype = H
value = 3, 0
channel = 2
volumescale = 33

[State 1007, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1007, End]
type = destroyself
trigger1 = !animtime


;========================<DOUBLE REPPUKEN>=============================
;----- Stationary -----
[Statedef 1015]
type = S
physics = N
movetype = A
ctrl = 0
anim = 1015
sprpriority = 3

[State 1015, Override]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 1017
ignorehitpause = 1

[State 1015, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

[State 1015, Anim]
type = changeanim
trigger1 = anim != 1015
value = 1015

; Damage Scaling was here

[State 1015, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1015, Hit]
type = hitdef
trigger1 = 1
air.juggle = 0 * (map(juggle_start) := 0 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, SP
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = 30, 8
dizzypoints = 50 * !(root, map(customcombo))
getpower = 0, 0
givepower = 40, 40
pausetime = 0, 12
guard.pausetime = 0, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 18; + 2 * map(counterhit_buffer)
guard.hittime = (1 + 18; + 2 * map(counterhit_buffer)) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
airguard.ctrltime = 1 + 16
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.31, -7.36
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
guard.dist = const(size.proj.attack.dist)
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -30) * (map(sparkx.max) := 0), map(sparky) := -32
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
p1sprpriority = sprpriority

[State 1015, Connected]
type = changestate
trigger1 = movecontact || movereversed
value = 1016
ignorehitpause = 1

[State 1015, End]
type = changestate
trigger1 = root, movetype = H || root, stateno != 1010
trigger2 = root, stateno = 1010 && root, animelemtime(9) >= 0
trigger3 = time >= 60
value = 1018
ignorehitpause = 1

[State 1015, End]
type = destroyself
trigger1 = frontedgedist < -80 || backedgedist < -80


;----- Hitpause -----
[Statedef 1016]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 3
movehitpersist = 1

[State 1016, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 1016, Getpower]
type = poweradd
trigger1 = movecontact = 1
trigger1 = numtarget
value = ifelse(moveguarded, 25, 50) * root, map(meterscaling)
ignorehitpause = 1

[State 1016, HitSound]
type = playsnd
trigger1 = !time
trigger1 = movehit
value = ifelse(numtarget, 2, 3), ifelse(numtarget, 6, 0)
channel = 2
ignorehitpause = 1

[State 1016, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 1010
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 1016, End]
type = changestate
trigger1 = time >= 0
value = 1017


;----- Disappear -----
[Statedef 1017]
type = A
physics = N
movetype = I
anim = 1007
ctrl = 0
velset = 0, 0
sprpriority = 3
movehitpersist = 1

[State 1017, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = hitoverridden || prevmovetype = H
value = 3, 0
channel = 2
volumescale = 33

[State 1017, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1017, End]
type = destroyself
trigger1 = !animtime


;----- Fade -----
[Statedef 1018]
type = A
physics = N
movetype = I
ctrl = 0
velset = 0, 0
sprpriority = 3
movehitpersist = 1

[State 1018, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 1018, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - (64 * time), 256
ignorehitpause = 1

[State 1018, End]
type = destroyself
trigger1 = time >= 4


;----- Moving -----
[Statedef 1020]
type = S
physics = N
movetype = A
ctrl = 0
anim = 1020
sprpriority = 3

[State 1020, Override]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 1022
ignorehitpause = 1

[State 1020, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

; Damage Scaling was here

[State 1020, Anim]
type = changeanim
trigger1 = anim != 1020
value = 1020

[State 1020, Vel]
type = velset
trigger1 = 1
x = 6.65
y = 0

[State 1020, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1020, Hit]
type = hitdef
trigger1 = 1
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, SP
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = 80, 20
dizzypoints = 100 * !(root, map(customcombo))
getpower = 0, 0
givepower = 40, 40
pausetime = 0, 12
guard.pausetime = 0, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 18; + 2 * map(counterhit_buffer)
guard.hittime = (1 + 18; + 2 * map(counterhit_buffer)) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
airguard.ctrltime = 1 + 16
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.0, -6.0
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
guard.dist = const(size.proj.attack.dist)
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -30) * (map(sparkx.max) := 0), map(sparky) := -48
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
p1sprpriority = sprpriority

[State 1020, Connected]
type = changestate
trigger1 = movecontact || movereversed
value = 1021
ignorehitpause = 1

[State 1020, End]
type = destroyself
trigger1 = frontedgedist < -80 || backedgedist < -80


;----- Hitpause -----
[Statedef 1021]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 3
movehitpersist = 1

[State 1021, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 1021, Getpower]
type = poweradd
trigger1 = movecontact = 1
trigger1 = numtarget
value = ifelse(moveguarded, 25, 50) * root, map(meterscaling)
ignorehitpause = 1

[State 1021, HitSound]
type = playsnd
trigger1 = !time
trigger1 = movehit
value = ifelse(numtarget, 2, 3), ifelse(numtarget, 6, 0)
channel = 2
ignorehitpause = 1

[State 1021, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 1010
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 1021, End]
type = changestate
trigger1 = time >= 0
value = 1022


;----- Disappear -----
[Statedef 1022]
type = A
physics = N
movetype = I
anim = 1022
ctrl = 0
velset = 0, 0
sprpriority = 3
movehitpersist = 1

[State 1022, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = hitoverridden || prevmovetype = H
value = 3, 0
channel = 2
volumescale = 33

[State 1022, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1022, End]
type = destroyself
trigger1 = !animtime


;========================<EX REPPUKEN>=============================
[Statedef 1035]
type = S
physics = N
movetype = A
ctrl = 0
;anim = 1036
sprpriority = 3

[State 1035, Anim]
type = changeanim
trigger1 = anim != 1036
value = 1036

[State 1035, Override]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 1037
ignorehitpause = 1

[State 1035, HB]
type = hitby
trigger1 = 1
value = SCA, HP
time = -1
ignorehitpause = 1

; Damage Scaling was here

[State 1035, FX]
type = explod
trigger1 = !(gametime % 2)
anim = 1035
sprpriority = 3
postype = p1
scale = 0.5, 0.35 + 0.05 * sin(gametime / 8.0 * pi)

[State 1035, Vel]
type = velset
trigger1 = 1
x = 6.65
y = 0

[State 1035, Hit]
type = hitdef
trigger1 = !((movecontact + movereversed) % 3)
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 3)
attr = S, SP
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 15, 4
dizzypoints = 25 * !(root, map(customcombo))
getpower = 0, 0
givepower = 40, 40
pausetime = 0, 12
guard.pausetime = 0, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 18; + 2 * map(counterhit_buffer)
guard.hittime = (1 + 18; + 2 * map(counterhit_buffer)) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.31, -6.00
air.cornerpush.veloff = 0
guard.dist = const(size.proj.attack.dist)
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -30) * (map(sparkx.max) := 0), map(sparky) := -40
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667

[State 1035, Hit High]
type = modifyhitdef
trigger1 = p2dist x < -56; Half Clsn1
ground.type = High

[State 1035, Connected]
type = changestate
trigger1 = movecontact || movereversed
value = 1036
ignorehitpause = 1

[State 1035, End]
type = changestate
trigger1 = frontedgedist < -120 || backedgedist < -120
value = 1037


;----- Hitpause -----
[Statedef 1036]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 3
movehitpersist = 1

[State 1036, Total Hits]
type = mapadd
trigger1 = !time
map = "fireball_hits"
value = 1

[State 1036, HitSound]
type = playsnd
trigger1 = !time
trigger1 = movehit
value = ifelse(numtarget, 2, 3), ifelse(numtarget, 6, 0)
channel = 2
ignorehitpause = 1

[State 1036, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 1030
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 1036, FX]
type = explod
trigger1 = !(gametime % 2)
anim = 1035
sprpriority = 3
postype = p1
scale = 0.5, 0.35 + 0.05 * sin(gametime / 8.0 * pi)

[State 1036, End]
type = changestate
trigger1 = map(fireball_hits) >= 8
trigger2 = movehitvar(ID); Parry. Because the new code currently freezes the fireball
trigger2 = movehitvar(overridden)
trigger2 = playerID(movehitvar(ID)), ctrl = 0
trigger2 = playerID(movehitvar(ID)), ishelper = 0
value = 1037

[State 3006, Hit More]
type = changestate
trigger1 = time >= ifelse(numtarget, 2, 0)
value = 1035


;----- Disappear -----
[Statedef 1037]
type = A
physics = N
movetype = I
anim = 9999
ctrl = 0
velset = 0, 0
movehitpersist = 1

[State 1037, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = hitoverridden || prevmovetype = H
value = 3, 0
channel = 2
volumescale = 33

[State 1037, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1037, End]
type = destroyself
trigger1 = !animtime


;========================<SHIPPUKEN>=============================
[Statedef 1305]
type = A
physics = N
movetype = A
ctrl = 0
anim = 1305
sprpriority = 3

[State 1305, Override]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 1307
ignorehitpause = 1

[State 1305, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

; Damage Scaling was here

[State 1305, Anim]
type = changeanim
trigger1 = anim != 1305
value = 1305

[State 1305, Strength]
type = mapset
trigger1 = !time
trigger1 = !prevstateno
map = "strength"
value = root, map(strength)

[State 1305, Vel]
type = velset
trigger1 = 1
x = ifelse(map(strength) = 2, 5.32, ifelse(map(strength) = 1, 4.66, 4))
y = ifelse(map(strength) = 2, 5.32, ifelse(map(strength) = 1, 4.66, 4))

[State 1305, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1305, Hit]
type = hitdef
trigger1 = 1
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
ID = 1305
attr = A, SP
hitflag = MAFD
guardflag = MA
priority = 4, Hit
damage = ifelse(map(strength) = 2, 60, ifelse(map(strength) = 2, 55, 50)), ifelse(map(strength) = 2, 15, ifelse(map(strength) = 2, 14, 13))
dizzypoints = 100 * !(root, map(customcombo))
getpower = 0, 0
givepower = 40, 40
pausetime = 0, 12
guard.pausetime = 0, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 18; + 2 * map(counterhit_buffer)
guard.hittime = (1 + 18; + 2 * map(counterhit_buffer)) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
airguard.ctrltime = 1 + 16
down.hittime = 20
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.31, -6.00
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
down.velocity = 0, 0
down.cornerpush.veloff = 0
guard.dist = const(size.proj.attack.dist)
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1; root
guardsound = -1; root
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -30) * (map(sparkx.max) := 0), map(sparky) := 0
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
p1sprpriority = sprpriority

[State 1305, Connected]
type = changestate
trigger1 = movecontact || movereversed
value = 1306
ignorehitpause = 1

[State 1306, End]
type = changestate
trigger1 = pos y >= 0
value = 1307

[State 1305, End]
type = destroyself
trigger1 = frontedgedist < -80 || backedgedist < -80


;----- Hitpause -----
[Statedef 1306]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 3
movehitpersist = 1

[State 1306, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 1306, Getpower]
type = poweradd
trigger1 = !ishelper(1325)
trigger1 = !(root, map(customcombo))
trigger1 = movecontact = 1
trigger1 = numtarget
value = ifelse(moveguarded, 25, 50) * root, map(meterscaling)
ignorehitpause = 1

[State 1306, HitSound]
redirectID = root, ID
type = playsnd
trigger1 = !time
trigger1 = movecontact || movereversed
value = ifelse(movehit && numtarget, 2, 3), ifelse(movehit && numtarget, 6, 0)
channel = 2
abspan = ceil(pos x)
persistent = 0
ignorehitpause = 1

[State 1306, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 1300
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 1306, End]
type = changestate
trigger1 = time >= 0
value = 1307


;----- Disappear -----
[Statedef 1307]
type = A
physics = N
movetype = I
anim = 1307
ctrl = 0
velset = 0, 0
sprpriority = 3
movehitpersist = 1

[State 1307, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = hitoverridden || prevmovetype = H
value = 3, 0
channel = 2
volumescale = 33

[State 1307, Sound]
type = playsnd
trigger1 = !time
trigger1 = prevstateno != 1306
value = 3, 0
channel = 2
lowpriority = 1

[State 1307, Pos]
type = posset
trigger1 = pos y > 0
y = 0

[State 1307, Dust]
type = explod
trigger1 = !time
trigger1 = pos y >= 0
anim = 8102
sprpriority = -3
postype = p1
pos = -10, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1307, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1307, End]
type = destroyself
trigger1 = !animtime


;========================<EX SHIPPUKEN>=============================
[Statedef 1325]
type = A
physics = N
movetype = A
ctrl = 0
anim = 1305
sprpriority = 3

[State 1325, Override]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 1307
ignorehitpause = 1

[State 1325, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

; Damage Scaling was here

[State 1325, Anim]
type = changeanim
trigger1 = anim != 1305
value = 1305

[State 1325, Vel]
type = velset
trigger1 = 1
x = 6
y = 6

[State 1325, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1325, Hit]
type = hitdef
trigger1 = 1
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 2)
ID = 1325
attr = A, SP
hitflag = MAFD
guardflag = MA
priority = 4, Hit
damage = 50, 13
dizzypoints = 75 * !(root, map(customcombo))
getpower = 0, 0
givepower = 40, 40
pausetime = 0, 12
guard.pausetime = 0, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 18; + 2 * map(counterhit_buffer)
guard.hittime = (1 + 18; + 2 * map(counterhit_buffer)) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
airguard.ctrltime = 1 + 16
down.hittime = 20
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.31, -6.00
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
down.velocity = 0, 0
down.cornerpush.veloff = 0
guard.dist = const(size.proj.attack.dist)
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = -1
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -30) * (map(sparkx.max) := 0), map(sparky) := -32
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
p1sprpriority = sprpriority

[State 1325, Connected]
type = changestate
trigger1 = movecontact || movereversed
value = 1306
ignorehitpause = 1

[State 1325, End]
type = changestate
trigger1 = pos y >= 0
value = 1307

[State 1325, End]
type = destroyself
trigger1 = frontedgedist < -80 || backedgedist < -80


;========================<RAGING STORM>=============================
[Statedef 3005]
type = S
physics = N
movetype = A
ctrl = 0
sprpriority = 3
hitcountpersist = 1

[State 3005, Override]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 3005
ignorehitpause = 1

[State 3005, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

; Damage Scaling was here

[State 3005, Anim]
type = changeanim
trigger1 = anim != 3005
value = 3005

[State 3005, Bind]
type = bindtoroot
trigger1 = 1
pos = 8, 0
facing = 1

[State 3005, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3005, Hit]
type = hitdef
trigger1 = root, stateno = 3001
trigger1 = root, time = 2 || root, time = 10 || root, time = 18 || root, time = 26 || root, time = 34
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 5)
attr = S, HP
hitflag = MAFP
guardflag = M
priority = 4, Hit
damage = 45, 11
dizzypoints = 0
getpower = 0, 0
givepower = 40, 40
pausetime = 0, 12
guard.pausetime = 0, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 1 + 15
guard.hittime = (1 + 15) - 6
ground.slidetime = 15
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
ground.velocity = -4.17, -7.73
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.17, -7.73
air.cornerpush.veloff = 0
guard.dist = 320
yaccel = 0.4850
fall = 1
fall.recover = 0
down.recover = 1
forcestand = 1
hitsound = -1
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -64) * (map(sparkx.max) := 64), map(sparky) := (p2dist y - 64)
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
p1sprpriority = sprpriority

[State 3005, Connected]
type = changestate
trigger1 = movecontact || movereversed
value = 3006
ignorehitpause = 1

[State 3005, End]
type = changestate
trigger1 = root, movetype = H
trigger2 = root, stateno != 3001
value = 3007
ignorehitpause = 1


;----- Hitpause -----
[Statedef 3006]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 3
movehitpersist = 1
hitcountpersist = 1

[State 3006, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 3006, HitSound]
type = playsnd
trigger1 = !time
trigger1 = movehit
value = ifelse(numtarget, 2, 3), ifelse(numtarget, 6, 0)
channel = 2
ignorehitpause = 1

[State 3006, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 3001
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 3006, End]
type = changestate
trigger1 = time >= 0
value = 3005


;----- Disappear -----
[Statedef 3007]
type = A
physics = N
movetype = I
anim = 3006
ctrl = 0
velset = 0, 0
sprpriority = 3
movehitpersist = 1

[State 3007, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3007, End]
type = destroyself
trigger1 = !animtime


;========================<THUNDER BREAK LARGE>=============================
[Statedef 3055]
type = S
physics = N
movetype = A
ctrl = 0
sprpriority = 3

[State 3055, Anim]
type = changeanim
trigger1 = anim != 3055
value = 3055

[State 3055, Override]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 3055
ignorehitpause = 1

[State 3055, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

; Damage Scaling was here

[State 3055, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3055, Hit]
type = hitdef
trigger1 = !map(projcontact)
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 5)
ID = 3055
nochainID = 3055
attr = S, HP
hitflag = MAFP
guardflag = M
priority = 4, Hit
damage = 200, 25
dizzypoints = 0
getpower = 0, 0
givepower = 40, 40
pausetime = 0, 4
guard.pausetime = 0, 12
animtype = Up
air.animtype = Up
fall.animtype = Up
ground.type = High
air.type = Low
ground.hittime = 1 + 15
guard.hittime = (1 + 15) - 6
ground.slidetime = 15
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
ground.velocity = 0, -10.0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = 0, -10.0
air.cornerpush.veloff = 0
guard.dist = 320
yaccel = 0.4850
fall = 1
fall.recover = 0
down.recover = 0; cannot mash
down.recovertime = 30
forcestand = 1
hitsound = -1
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -64) * (map(sparkx.max) := 64), map(sparky) := (p2dist y - 48)
palfx.time = 60
palfx.color = -256
palfx.invertall = 1
palfx.sinadd = 255, 255, 255, 4
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
p1sprpriority = sprpriority

[State 3055, Connected]
type = changestate
trigger1 = movecontact || movereversed
value = 3056
ignorehitpause = 1

[State 3055, End]
type = destroyself
trigger1 = !animtime


;----- Hitpause -----
[Statedef 3056]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = ifelse(pos y <= -10, 0, ifelse(pos y <= 0, 1, 3))
movehitpersist = 1

[State 3056, Shocked]
type = targetstate
trigger1 = movehit && numtarget(3055)
trigger1 = target(3055), selfanimexist(7696)
trigger1 = (target(3055), stateno = 5000) || (target(3055), stateno = 5010) || (target(3055), stateno = 5020)
value = 1113060
ID = 3055
ignorehitpause = 1

[State 3056, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 3056, HitSound]
type = playsnd
trigger1 = !time
trigger1 = movehit
value = ifelse(numtarget, 2, 3), ifelse(numtarget, 8, 0)
channel = 2
ignorehitpause = 1

[State 3056, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 3051
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 3056, End]
type = changestate
trigger1 = time >= 0
value = 3057


;----- Disappear -----
[Statedef 3057]
type = A
physics = N
movetype = I
ctrl = 0
velset = 0, 0
sprpriority = 3
movehitpersist = 1

[State 3057, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3057, End]
type = destroyself
trigger1 = !animtime


;========================<THUNDER BREAK SMALL>=============================
[Statedef 3060]
type = S
physics = N
movetype = A
ctrl = 0
sprpriority = 3

[State 3060, Anim]
type = changeanim
trigger1 = anim != 3060
value = 3060

[State 3060, Override]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 3062
ignorehitpause = 1

[State 3060, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

; Damage Scaling was here

[State 3060, Sprite Priority]
type = sprpriority
trigger1 = 1
value = ifelse(pos y <= -10, -1, ifelse(pos y <= 0, 1, 3))

[State 3060, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3060, Hit]
type = hitdef
trigger1 = 1
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 16)
ID = 3060
attr = S, HP
hitflag = MAFDP
guardflag = M
priority = 4, Hit
damage = 10, 3
dizzypoints = 0
getpower = 0, 0
givepower = 40, 40
pausetime = 0, 4
guard.pausetime = 0, 4
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 15
guard.hittime = (1 + 15) - 6
ground.slidetime = 15
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
down.hittime = 60
ground.velocity = ifelse(rootdist x < 8, 1.5, -1.55), -4.0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = ifelse(rootdist x < 8, 1.5, -1.5), -4.0
air.cornerpush.veloff = 0
down.velocity = ifelse(rootdist x < 8, 1.5, -1.5), -4.0
down.cornerpush.veloff = 0
guard.dist = 320
yaccel = 0.4850
fall = 1
fall.recover = 0
down.recover = 0; cannot mash
down.recovertime = 30
forcestand = 1
hitsound = -1
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -20) * (map(sparkx.max) := 20), map(sparky) := (p2dist y - 64)
palfx.time = 60
palfx.color = -256
palfx.invertall = 1
palfx.sinadd = 255, 255, 255, 4
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
p1sprpriority = sprpriority

[State 3060, Connected]
type = changestate
trigger1 = movecontact || movereversed
value = 3061
ignorehitpause = 1

[State 3060, End]
type = destroyself
trigger1 = !animtime


;----- Hitpause -----
[Statedef 3061]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = ifelse(pos y <= -10, 0, ifelse(pos y <= 0, 1, 3))
movehitpersist = 1

[State 3061, Shocked]
type = targetstate
trigger1 = movehit && numtarget(3060)
trigger1 = target, selfanimexist(7696)
trigger1 = (target(3060), stateno = 5000) || (target(3060), stateno = 5010) || (target(3060), stateno = 5020)
value = 1113060
ID = 3060
ignorehitpause = 1

[State 3061, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 3061, HitSound]
type = playsnd
trigger1 = !time
trigger1 = movehit
value = ifelse(numtarget, 2, 3), ifelse(numtarget, 7, 0)
channel = 2
ignorehitpause = 1

[State 3061, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 3051
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 3061, End]
type = changestate
trigger1 = time >= 0
value = 3062


;----- Disappear -----
[Statedef 3062]
type = A
physics = N
movetype = I
ctrl = 0
velset = 0, 0
sprpriority = 3
movehitpersist = 1

[State 3062, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3062, End]
type = destroyself
trigger1 = !animtime


;========================<KYOKUU REPPUU ZAN>=============================
;----- Front -----
[Statedef 3305]
type = S
physics = N
movetype = A
ctrl = 0
anim = 3305
sprpriority = 3

[State 3305, Override]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 3309
ignorehitpause = 1

[State 3305, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

; Damage Scaling was here

[State 3305, Anim]
type = changeanim
trigger1 = anim != 3305
value = 3305

[State 3305, Bind]
type = bindtoroot
trigger1 = 1

[State 3305, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3305, Hit]
type = hitdef
trigger1 = animelem = 8 || animelem = 9 || animelem = 10
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 2)
attr = S, HP
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 25, 6
dizzypoints = 0
getpower = 0, 0
givepower = 40, 40
pausetime = 0, 12
guard.pausetime = 0, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -3.50, -4.00
air.cornerpush.veloff = 0
guard.dist = 320
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 0
down.recover = 1
forcestand = 1
hitsound = -1
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 0) * (map(sparkx.max) := 120), map(sparky) := -60
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
p1sprpriority = sprpriority

[State 3305, HitSound]
type = playsnd
trigger1 = movehit = 1 || movereversed = 1
value = ifelse(numtarget, 2, 3), ifelse(numtarget, 9, 0)
channel = 2
ignorehitpause = 1

[State 3305, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 3300 || root, stateno = 3350
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 3305, End]
type = destroyself
trigger1 = !animtime
trigger2 = root, movetype = H
trigger3 = (root, stateno != 3300 && root, stateno != 3350) || root, time <= 1


;----- Back -----
[Statedef 3306]
type = S
physics = N
movetype = A
ctrl = 0
anim = 3306
sprpriority = -1

[State 3306, Override]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 3309
ignorehitpause = 1

[State 3306, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

; Damage Scaling was here

[State 3306, Anim]
type = changeanim
trigger1 = anim != 3306
value = 3306

[State 3306, Bind]
type = bindtoroot
trigger1 = 1

[State 3306, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3306, Hit]
type = hitdef
trigger1 = animelem = 8 || animelem = 9 || animelem = 10
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 4)
attr = S, HP
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 25, 6
dizzypoints = 0
getpower = 0, 0
givepower = 40, 40
pausetime = 0, 12
guard.pausetime = 0, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -3.50, -4.00
air.cornerpush.veloff = 0
guard.dist = 320
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 0
down.recover = 1
forcestand = 1
hitsound = -1
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 0) * (map(sparkx.max) := 120), map(sparky) := -60
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
p1sprpriority = sprpriority

[State 3306, HitSound]
type = playsnd
trigger1 = movehit = 1 || movereversed = 1
value = ifelse(numtarget, 2, 3), ifelse(numtarget, 9, 0)
channel = 2
ignorehitpause = 1

[State 3306, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 3300 || root, stateno = 3350
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 3306, End]
type = destroyself
trigger1 = !animtime
trigger2 = root, movetype = H
trigger3 = (root, stateno != 3300 && root, stateno != 3350) || root, time <= 1


;----- Blast -----
[Statedef 3307]
type = S
physics = N
movetype = A
ctrl = 0
anim = 3307
sprpriority = 3

[State 3307, Override]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 3309
ignorehitpause = 1

[State 3307, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

; Damage Scaling was here

[State 3307, Anim]
type = changeanim
trigger1 = anim != 3307
value = 3307

[State 3307, Bind]
type = bindtoroot
trigger1 = 1
pos = 32, -80

[State 3307, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3307, Hit]
type = hitdef
trigger1 = !movecontact && !movereversed
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 6)
attr = S, HP
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 60, 15
dizzypoints = 0
getpower = 0, 0
givepower = 40, 40
pausetime = 0, 12
guard.pausetime = 0, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = -6, -7.24
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -6, -7.24
air.cornerpush.veloff = 0
guard.dist = 320
yaccel = 0.4850
fall = 1
fall.recover = 0
down.recover = 1
forcestand = 1
hitsound = -1
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 0) * (map(sparkx.max) := 120), map(sparky) := 0
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
p1sprpriority = sprpriority

[State 3307, HitSound]
type = playsnd
trigger1 = movehit = 1 || movereversed = 1
value = ifelse(numtarget, 2, 3), ifelse(numtarget, 2, 0)
channel = 2
ignorehitpause = 1

[State 3307, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 3300
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 3307, End]
type = destroyself
trigger1 = !animtime
trigger2 = root, movetype = H
trigger3 = root, stateno != 3300


;========================<ASHURA SHIPPUKEN>=============================
[Statedef 3355]
type = A
physics = N
movetype = A
ctrl = 0
anim = 3355
sprpriority = 3

[State 3355, Override]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 1307
ignorehitpause = 1

[State 3355, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

; Damage Scaling was here

[State 3355, Anim]
type = changeanim
trigger1 = anim != 3355
value = 3355

[State 3355, Strength]
type = mapset
trigger1 = !time
trigger1 = !prevstateno
map = "strength"
value = root, map(strength)

[State 3355, Vel]
type = velset
trigger1 = 1
x = 6
y = 6

[State 3355, Size]
type = angledraw
trigger1 = time < 2
trigger1 = !prevstateno
scale = 0.5 + (0.25 * time), 0.5 + (0.25 * time)

[State 3355, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3355, Hit]
type = hitdef
trigger1 = 1
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 18)
attr = A, HP
hitflag = MAFD
guardflag = MA
priority = 4, Hit
damage = 10, 3
dizzypoints = 0
getpower = 0, 0
givepower = 40, 40
pausetime = 0, 12
guard.pausetime = 0, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
airguard.ctrltime = 1 + 16
down.hittime = 20
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.0, -6.0
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
down.velocity = 0, 0
down.cornerpush.veloff = 0
guard.dist = 320
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 0
down.recover = 0; cannot mash
down.recovertime = 30
forcestand = 1
hitsound = -1; root
guardsound = -1; root
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -40) * (map(sparkx.max) := 20), map(sparky) := 0
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
p1sprpriority = sprpriority

[State 3355, Connected]
type = changestate
trigger1 = movecontact || movereversed
value = 3356
ignorehitpause = 1

[State 3355, End]
type = changestate
trigger1 = pos y >= 0
value = 1307

[State 3355, End]
type = destroyself
trigger1 = frontedgedist < -80 || backedgedist < -80


;----- Hitpause -----
[Statedef 3356]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 3
movehitpersist = 1

[State 3356, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 3356, HitSound]
redirectID = root, ID
type = playsnd
trigger1 = !time
trigger1 = movecontact || movereversed
value = ifelse(movehit && numtarget, 2, 3), ifelse(movehit && numtarget, 6, 0)
channel = 2
abspan = ceil(pos x)
persistent = 0
ignorehitpause = 1

[State 3356, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 3351
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 3356, End]
type = changestate
trigger1 = time >= 0
value = 3357


;----- Disappear -----
[Statedef 3357]
type = A
physics = N
movetype = I
anim = 1307
ctrl = 0
velset = 0, 0
sprpriority = 3
movehitpersist = 1

[State 3357, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = hitoverridden || prevmovetype = H
value = 3, 0
channel = 2
volumescale = 33

[State 3357, Pos]
type = posset
trigger1 = pos y > 0
y = 0

[State 3357, Dust]
type = explod
trigger1 = !time
trigger1 = pos y >= 0
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 3357, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3357, End]
type = destroyself
trigger1 = !animtime


;========================<DEAD END FIREBALL>=============================
[Statedef 3425]
type = A
physics = N
movetype = A
ctrl = 0
anim = 3425
sprpriority = 3

[State 3425, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

; Damage Scaling was here

[State 3425, Anim]
type = changeanim
trigger1 = anim != 3425
value = 3425

[State 3425, Rotate]
type = angleadd
trigger1 = 1
value = -10

[State 3425, Scale]
type = angledraw
trigger1 = time < 16
scale = 0.0625 + (0.0625 * time), 0.0625 + (0.0625 * time)
ignorehitpause = 1

[State 3425, Scale]
type = angledraw
trigger1 = time >= 16
scale = 0.8 + 0.2 * cos(time / 4.0 * pi), 0.8 + 0.2 * cos(time / 4.0 * pi)
scale = 1, 1
ignorehitpause = 1

[State 3425, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3425, Vel]
type = velset
trigger1 = 1
x = 0
y = 6

[State 3425, Vel]
type = velset
trigger1 = movehit = [1, 4]
trigger2 = (moveguarded = [1, 2]) || (movereversed = [1, 2])
x = 0
y = 0

[State 3425, Hit]
type = hitdef
trigger1 = hitcount < 12
trigger1 = !((movecontact + movereversed) % 4)
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 99)
attr = A, HP
hitflag = MAFD
guardflag = M
priority = 4, Hit
damage = 25, 6
dizzypoints = 0
getpower = 0, 0
givepower = 40, 40
pausetime = 0, 12
guard.pausetime = 0, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
down.hittime = 20
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.31, -5.25
air.cornerpush.veloff = 0
down.velocity = 0, 0
down.cornerpush.veloff = 0
guard.dist = 320
yaccel = 0.4850
fall = 1
fall.recover = 0
down.recover = 0; cannot mash
down.recovertime = 30
forcestand = 1
hitsound = -1
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -60) * (map(sparkx.max) := 60), map(sparky) := 0
palfx.time = 60
palfx.color = 0
palfx.sinadd = 128, 128, 128, 4
palfx.mul = root, map(palfx2_r), root, map(palfx2_g), root, map(palfx2_b)
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
p1sprpriority = sprpriority

[State 3425, Hit Final]
type = hitdef
trigger1 = hitcount = 12
trigger1 = !((movecontact + movereversed) % 4)
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 99)
attr = A, HP
hitflag = MAFD
guardflag = M
priority = 4, Hit
damage = 25, 6
dizzypoints = 0
getpower = 0, 0
givepower = 40, 40
pausetime = 0, 12
guard.pausetime = 0, 12
animtype = Up
air.animtype = Up
fall.animtype = Up
ground.type = Low
air.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
down.hittime = 20
ground.velocity = -6.46, -5.25
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -6.46, -5.25
air.cornerpush.veloff = 0
down.velocity = -10.52, 0
down.cornerpush.veloff = 0
guard.dist = 320
yaccel = 0.4850
fall = 1
fall.recover = 0
down.recover = 0; cannot mash
down.recovertime = 30
forcestand = 1
hitsound = -1
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -60) * (map(sparkx.max) := 60), map(sparky) := 0
palfx.time = 60
palfx.color = 0
palfx.sinadd = 128, 128, 128, 4
palfx.mul = root, map(palfx2_r), root, map(palfx2_g), root, map(palfx2_b)
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
p1sprpriority = sprpriority

[State 3425, HitSound]
type = playsnd
trigger1 = movecontact = 1
value = ifelse(moveguarded, 3, 2), ifelse(moveguarded, 0, ifelse(hitcount = 13, 8, 2))
channel = 2
ignorehitpause = 1

[State 3425, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 3420
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 3425, End]
type = changestate
trigger1 = pos y >= 0 || hitcount >= 13
trigger2 = time >= 180
trigger3 = frontedgedist < -160 || backedgedist < -160
value = 3427


;----- Disappear -----
[Statedef 3427]
type = A
physics = N
movetype = I
ctrl = 0
velset = 0, 0
movehitpersist = 1

[State 3427, Rotate]
type = angleadd
trigger1 = 1
value = -30

[State 3427, Scale]
type = angledraw
trigger1 = 1
scale = 1 + (0.0625 * time), 1 + (0.0625 * time)
ignorehitpause = 1

[State 3427, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - (16 * time), 256
ignorehitpause = 1

[State 3427, Sound]
type = playsnd
trigger1 = !time
value = 7, 12

[State 3427, Flames]
type = explod
trigger1 = !time || time = 2 || time = 4 || time = 6
anim = 1146
sprpriority = 3
postype = p1
pos = 0, 0
random = 80, 80
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
scale = 0.5, 0.5
ownpal = 1

[State 3427, Flames]
type = explod
trigger1 = 1
anim = 8150
sprpriority = 3
postype = p1
pos = 40, 0
random = 80, 80
vel = 2 + (random / 250.0), -4 + (random / 125.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
scale = 0.5, 0.5
ownpal = 1

[State 3427, End]
type = destroyself
trigger1 = time >= 16


;========================<FLOOR THROW>=============================
[Statedef 841]
type = A
velset = 0, 0
anim = 841
sprpriority = 4

[State 841, Rotate]
type = angleset
trigger1 = !time
value = 0

[State 841, Scale]
type = angledraw
trigger1 = time < 8
scale = 0.0556 * (time + 1), 0.0556 * (time + 1)

[State 841, Scale]
type = angledraw
trigger1 = time >= 8
scale = 0.5 + (0.03125 * (time -8)), 0.5 - (0.03125 * (time -8))

[State 841, Trans]
type = trans
trigger1 = time < 8
trans = addalpha
alpha = 256, 256

[State 841, Trans]
type = trans
trigger1 = time >= 8
trans = addalpha
alpha = 256 -32 * (time -8), 256

[State 841, Sound]
type = playsnd
trigger1 = time = 2
value = 7, 6

[State 841, Lightning]
type = explod
trigger1 = !time
anim = 842
ID = 1
sprpriority = 3
postype = p1
facing = ifelse(random < 500, -1, 1)
scale = 0.5, ifelse(screenpos y <= 240, 0.5, 0.5 + (screenpos y - 240) / 240.0)

[State 841, Safety]
type = removeexplod
trigger1 = time >= 16

[State 841, End]
type = destroyself
trigger1 = time >= 16


;========================<REPPUKEN FX>=============================
;----- Front -----
[Statedef 1003]
type = A
physics = N
movetype = I
anim = 1003
velset = 0, 0
sprpriority = 3

[State 1003, Bind]
type = bindtoroot
trigger1 = 1
facing = 1

[State 1003, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 1003, End]
type = destroyself
trigger1 = !animtime || root, movetype = H
trigger2 = root, stateno != [1000, 1030]


;----- Back -----
[Statedef 1004]
type = A
physics = N
movetype = I
anim = 1004
velset = 0, 0
sprpriority = 2

[State 1004, Bind]
type = bindtoroot
trigger1 = 1
facing = 1

[State 1004, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 1004, End]
type = destroyself
trigger1 = !animtime || root, movetype = H
trigger2 = root, stateno != [1000, 1010]


;----- Shippuken -----
[Statedef 1304]
type = A
physics = N
movetype = I
anim = 1304
velset = 0, 0
sprpriority = 3

[State 1304, Bind]
type = bindtoroot
trigger1 = 1
facing = 1

[State 1304, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 1304, End]
type = destroyself
trigger1 = !animtime || root, movetype = H
trigger2 = root, stateno != 1300 && root, stateno != 1320 && root, stateno != 3351


;========================<JAEIKEN FX>=============================
;----- Held -----
[Statedef 1105]
type = A
physics = N
movetype = I
anim = 1105
velset = 0, 0
sprpriority = 3

[State 1105, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 1105, Bind]
type = bindtoparent
trigger1 = parent, stateno = 1100
trigger1 = parent, animelemtime(4) >= 0 && parent, animelemtime(5) < 0
pos = 14, -71
facing = 1

[State 1105, Bind]
type = bindtoparent
trigger1 = parent, stateno = 1100
trigger1 = parent, animelemtime(5) >= 0
pos = 15, -58
facing = 1

[State 1105, Bind]
type = bindtoparent
trigger1 = parent, stateno = 1110
trigger1 = parent, animelemtime(2) < 0
pos = -5, -65
facing = 1

[State 1105, Bind]
type = bindtoparent
trigger1 = parent, stateno = 1110
trigger1 = parent, animelemtime(2) >= 0 && parent, animelemtime(3) < 0
pos = -2, -65
facing = 1

[State 1105, Bind]
type = bindtoparent
trigger1 = parent, stateno = 1110
trigger1 = parent, animelemtime(3) >= 0 && parent, animelemtime(4) < 0
pos = -4, -68
facing = 1

[State 1105, Bind]
type = bindtoparent
trigger1 = parent, stateno = 1110
trigger1 = parent, animelemtime(4) >= 0 && parent, animelemtime(5) < 0
pos = -5, -70
facing = 1

[State 1105, Bind]
type = bindtoparent
trigger1 = parent, stateno = 1110
trigger1 = parent, animelemtime(5) >= 0 && parent, animelemtime(6) < 0
pos = -10, -68
facing = 1

[State 1105, Bind]
type = bindtoparent
trigger1 = parent, stateno = 1110
trigger1 = parent, animelemtime(6) >= 0 && parent, animelemtime(7) < 0
pos = -5, -63
facing = 1

[State 1105, Bind]
type = bindtoparent
trigger1 = parent, stateno = 1110
trigger1 = parent, animelemtime(7) >= 0 && parent, animelemtime(8) < 0
pos = 0, -74
facing = 1

[State 1105, Bind]
type = bindtoparent
trigger1 = parent, stateno = 1110
trigger1 = parent, animelemtime(8) >= 0 && parent, animelemtime(9) < 0
pos = -8, -74
facing = 1

[State 1105, Sprite Priority]
type = sprpriority
trigger1 = 1
value = 3

[State 1105, Sprite Priority]
type = sprpriority
trigger1 = parent, stateno = 1110 && parent, animelemtime(3) >= 0
value = 1

[State 1105, End]
type = destroyself
trigger1 = parent, movetype = H
trigger2 = parent, stateno != 1100 && parent, stateno != 1110
trigger3 = parent, stateno = 1100 && parent, animelemtime(4) < 0

[State 1105, End]
type = changestate
trigger1 = parent, stateno = 1110 && parent, animelemtime(9) >= 0
value = 1115


;----- Fired -----
[Statedef 1115]
type = A
physics = N
movetype = I
anim = 1115
velset = 0, 0
sprpriority = 3

[State 1115, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 1115, Bind]
type = bindtoparent
trigger1 = parent, stateno = 1110
pos = 25, -65
facing = 1

[State 1115, End]
type = destroyself
trigger1 = parent, movetype = H
trigger2 = !animtime


;========================<EX JAEIKEN FX>=============================
;----- Held -----
[Statedef 1135]
type = A
physics = N
movetype = I
anim = 1135
velset = 0, 0
sprpriority = 3

[State 1135, Scale]
type = angledraw
trigger1 = 1
scale = 0.875 + 0.125 * cos(time / 3.0 * pi), 0.875 + 0.125 * cos(time / 3.0 * pi)

[State 1135, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 1135, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1135, Bind]
type = bindtoparent
trigger1 = 1
pos = 15, -58
facing = 1

[State 1135, Bind]
type = bindtoparent
trigger1 = parent, stateno = 1130
trigger1 = parent, animelemtime(4) >= 0 && parent, animelemtime(5) < 0
pos = 14, -71
facing = 1

[State 1135, Flames]
type = explod
trigger1 = 1
anim = 8150
sprpriority = 3
postype = p1
pos = -50, 0
random = 60, 60
vel = -(random / 2000.0), -2.0 - (random / 500.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
scale = 0.5, 0.5
ownpal = 1

[State 1135, End]
type = changestate
trigger1 = parent, movetype = H
trigger2 = parent, stateno != 1130 && parent, stateno != 1140
trigger3 = parent, stateno = 1130 && parent, animelemtime(4) < 0
value = 1136

[State 1135, End]
type = changestate
trigger1 = parent, stateno = 1140 && parent, animelemtime(8) >= 0
value = 1145


;----- Fade out -----
[Statedef 1136]
type = A
physics = N
movetype = I
velset = 0, 0
sprpriority = 3

[State 1136, Scale]
type = angledraw
trigger1 = 1
scale = 1 - 0.125 * time, 1 - 0.125 * time
[State 1136, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - (32 * time), 256

[State 1136, End]
type = destroyself
trigger1 = time >= 8


;----- Fired -----
[Statedef 1145]
type = A
physics = N
movetype = I
anim = 1145
velset = 0, 0
sprpriority = 3

[State 1145, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 1145, Bind]
type = bindtoparent
trigger1 = parent, stateno = 1140
pos = 65, -60
facing = 1

[State 1145, Flames]
type = explod
trigger1 = !time
anim = 1146
sprpriority = 3
postype = p1
vel = 4, -2
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
scale = 0.5, 0.5
ownpal = 1

[State 1135, Flames]
type = explod
trigger1 = 1
anim = 8150
sprpriority = 3
postype = p1
pos = 40, 0
random = 80, 80
vel = 2 + (random / 250.0), -4 + (random / 125.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
scale = 0.5, 0.5
ownpal = 1

[State 1145, End]
type = destroyself
trigger1 = parent, movetype = H
trigger2 = !animtime


;========================<HISHOU NICHIRIN ZAN FX>=============================
[Statedef 1405]
type = A
physics = N
movetype = I
anim = 1405
velset = 0, 0
sprpriority = 3

[State 1405, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 1405, Bind]
type = bindtoparent
trigger1 = 1
pos = 64, -48
facing = 1

[State 1405, End]
type = destroyself
trigger1 = !animtime
trigger2 = parent, movetype = H
trigger3 = parent, stateno != 1400 && parent, stateno != 1403 && parent, stateno != 1420
trigger4 = parent, stateno = 1400 && parent, animelemtime(7) < 0
trigger5 = parent, stateno = 1420 && parent, animelemtime(8) < 0


;========================<DEADLY RAVE FX>=============================
;----- Held -----
[Statedef 3105]
type = A
physics = N
movetype = I
anim = 3105
velset = 0, 0
sprpriority = 3

[State 3105, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 3105, Bind]
type = bindtoparent
trigger1 = parent, stateno = 3100
pos = 14, -71
facing = 1

[State 3105, Bind]
type = bindtoparent
trigger1 = parent, stateno = 3101 || parent, stateno = 3110
pos = 15, -58
facing = 1

[State 3105, Bind]
type = bindtoparent
trigger1 = parent, stateno = [3111, 3118]
pos = 13 + cos(gametime / 16.0 * pi) * 41, -54 + sin(gametime / 24.0 * pi) * 54
facing = 1

[State 3105, Fired]
type = velset
trigger1 = parent, stateno = 3120 && (parent, time = 1)
x = (parentdist x + 32) / (-1.0 * parent, animelemtime(4))
y = (parentdist y -80) / (-1.0 * parent, animelemtime(4))

[State 3105, Fired]
type = changestate
trigger1 = parent, stateno = 3120 && parent, animelemtime(4) >= 0
value = 3125

[State 3105, End]
type = changestate
trigger1 = parent, movetype = H
trigger2 = (parent, stateno != [3100, 3101]) && (parent, stateno != [3110, 3120])
trigger3 = parent, stateno = 3110 && parent, animelemtime(5) >= 0
value = 3106


;----- Fade -----
[Statedef 3106]
type = A
physics = N
movetype = I
anim = 3105
velset = 0, 0
sprpriority = 3

[State 3106, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - (8 * time), 256

[State 3106, Bind]
type = bindtoparent
trigger1 = 1
pos = 13 + cos(gametime / 16.0 * pi) * 41, -54 + sin(gametime / 24.0 * pi) * 54
facing = 1

[State 3106, End]
type = destroyself
trigger1 = time >= 32


;----- Fired -----
[Statedef 3125]
type = A
physics = N
movetype = I
anim = 3125
velset = 0, 0
sprpriority = 3

[State 3125, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 3125, Bind]
type = bindtoparent
trigger1 = 1
pos = 32, -80
facing = 1

[State 3125, End]
type = destroyself
trigger1 = parent, movetype = H
trigger2 = !animtime


;========================<RASHOUMON AURA>=============================
;----- Looping -----
[Statedef 3255]
type = A
physics = N
movetype = I
anim = 9999
velset = 0, 0

[State 3255, Bind]
type = bindtoparent
trigger1 = 1
pos = 0, 0

[State 3255, FX]
type = explod
trigger1 = !numexplod(1)
anim = 3255
ID = 1
sprpriority = 3
postype = p1
bindtime = -1
removetime = -1
scale = 0.5, 0.5
ownpal = 1

[State 3255, FX]
type = explod
trigger1 = !numexplod(2)
anim = 3256
ID = 2
sprpriority = -1
postype = p1
bindtime = -1
removetime = -1
scale = 0.5, 0.5
ownpal = 1

[State 3255, FX]
type = modifyexplod
trigger1 = time <= 16
trans = addalpha
alpha = (16 * time), 256

[State 3255, End]
type = changestate
trigger1 = parent, movetype = H
trigger2 = parent, stateno != 3260
trigger3 = parent, stateno = 3260 && parent, animelemtime(21) >= 0
value = 3256


;----- Fading -----
[Statedef 3256]
type = A
physics = N
movetype = I
anim = 9999
velset = 0, 0

[State 3256, FX]
type = modifyexplod
trigger1 = 1
trans = addalpha
alpha = 256 - (16 * time), 256

[State 3256, End]
type = removeexplod
trigger1 = time >= 16

[State 3256, End]
type = destroyself
trigger1 = !numexplod


;========================<RASHOUMON FX>=============================
[Statedef 3261]
type = A
physics = N
movetype = I
anim = 9999
velset = 0, 0

[State 3261, Bind]
type = bindtoparent
trigger1 = 1
facing = 1

[State 3261, Ball]
type = explod
trigger1 = !numexplod(1)
anim = 3261
ID = 1
sprpriority = 3
postype = p1
pos = -57 * parent, const(size.xscale), -118 * parent, const(size.yscale)
bindtime = -1
removetime = -1
scale = 0.125, 0.125
ownpal = 1

[State 3261, Ball]
type = explod
trigger1 = !numexplod(2)
anim = 3261
ID = 2
sprpriority = 3
postype = p1
pos = 38 * parent, const(size.xscale), -122 * parent, const(size.yscale)
bindtime = -1
removetime = -1
scale = 0.125, 0.125
ownpal = 1

[State 3261, Modify]
type = modifyexplod
trigger1 = numexplod(1)
trigger1 = parent, animelemtime(4) >= 0 && parent, animelemtime(5) < 0
ID = 1
postype = p1
pos = ceil(-39 * parent, const(size.xscale)), ceil(-97 * parent, const(size.yscale))
scale = 0.375 + 0.125 * cos(time / 3.0 * pi), 0.375 + 0.125 * cos(time / 3.0 * pi)
trans = addalpha
alpha = 256, 256

[State 3261, Modify]
type = modifyexplod
trigger1 = numexplod(2)
trigger1 = parent, animelemtime(4) >= 0 && parent, animelemtime(5) < 0
ID = 2
postype = p1
pos = ceil(46 * parent, const(size.xscale)), ceil(-122 * parent, const(size.yscale))
scale = 0.375 + 0.125 * cos(time / 3.0 * pi), 0.375 + 0.125 * cos(time / 3.0 * pi)
trans = addalpha
alpha = 256, 256

[State 3261, Modify]
type = modifyexplod
trigger1 = numexplod(1)
trigger1 = parent, animelemtime(5) >= 0 && parent, animelemtime(6) < 0
ID = 1
postype = p1
pos = ceil(-27 * parent, const(size.xscale)), ceil(-129 * parent, const(size.yscale))
scale = 0.375 + 0.125 * cos(time / 3.0 * pi), 0.375 + 0.125 * cos(time / 3.0 * pi)
trans = addalpha
alpha = 256, 256

[State 3261, Modify]
type = modifyexplod
trigger1 = numexplod(2)
trigger1 = parent, animelemtime(5) >= 0 && parent, animelemtime(6) < 0
ID = 2
postype = p1
pos = ceil(46 * parent, const(size.xscale)), ceil(-58 * parent, const(size.yscale))
scale = 0.375 + 0.125 * cos(time / 3.0 * pi), 0.375 + 0.125 * cos(time / 3.0 * pi)
trans = addalpha
alpha = 256, 256

[State 3261, Modify]
type = modifyexplod
trigger1 = numexplod(1)
trigger1 = parent, animelemtime(6) >= 0 && parent, animelemtime(7) < 0
ID = 1
postype = p1
pos = ceil(-3 * parent, const(size.xscale)), ceil(-139 * parent, const(size.yscale))
scale = 0.375 + 0.125 * cos(time / 3.0 * pi), 0.375 + 0.125 * cos(time / 3.0 * pi)
trans = addalpha
alpha = 256, 256

[State 3261, Modify]
type = modifyexplod
trigger1 = numexplod(2)
trigger1 = parent, animelemtime(6) >= 0 && parent, animelemtime(7) < 0
ID = 2
postype = p1
pos = ceil(-10 * parent, const(size.xscale)), ceil(-57 * parent, const(size.yscale))
scale = 0.375 + 0.125 * cos(time / 3.0 * pi), 0.375 + 0.125 * cos(time / 3.0 * pi)
trans = addalpha
alpha = 256, 256

[State 3261, Modify]
type = modifyexplod
trigger1 = numexplod(1)
trigger1 = parent, animelemtime(7) >= 0 && parent, animelemtime(8) < 0
ID = 1
postype = p1
pos = ceil(8 * parent, const(size.xscale)), ceil(-136 * parent, const(size.yscale))
scale = 0.375 + 0.125 * cos(time / 3.0 * pi), 0.375 + 0.125 * cos(time / 3.0 * pi)
trans = addalpha
alpha = 256, 256

[State 3261, Modify]
type = modifyexplod
trigger1 = numexplod(2)
trigger1 = parent, animelemtime(7) >= 0 && parent, animelemtime(8) < 0
ID = 2
postype = p1
pos = ceil(-16 * parent, const(size.xscale)), ceil(-79 * parent, const(size.yscale))
scale = 0.375 + 0.125 * cos(time / 3.0 * pi), 0.375 + 0.125 * cos(time / 3.0 * pi)
trans = addalpha
alpha = 256, 256

[State 3261, Modify]
type = modifyexplod
trigger1 = numexplod(1)
trigger1 = parent, animelemtime(8) >= 0 && parent, animelemtime(9) < 0
ID = 1
postype = p1
pos = ceil(13 * parent, const(size.xscale)), ceil(-123 * parent, const(size.yscale))
scale = 0.375 + 0.125 * cos(time / 3.0 * pi), 0.375 + 0.125 * cos(time / 3.0 * pi)
trans = addalpha
alpha = 256, 256

[State 3261, Modify]
type = modifyexplod
trigger1 = numexplod(2)
trigger1 = parent, animelemtime(8) >= 0 && parent, animelemtime(9) < 0
ID = 2
postype = p1
pos = ceil(-17 * parent, const(size.xscale)), ceil(-101 * parent, const(size.yscale))
scale = 0.375 + 0.125 * cos(time / 3.0 * pi), 0.375 + 0.125 * cos(time / 3.0 * pi)
trans = addalpha
alpha = 256, 256

[State 3261, Modify]
type = modifyexplod
trigger1 = numexplod(1)
trigger1 = parent, animelemtime(9) >= 0 && parent, animelemtime(10) < 0
ID = 1
postype = p1
pos = ceil(15 * parent, const(size.xscale)), ceil(-120 * parent, const(size.yscale))
scale = 0.375 + 0.125 * cos(time / 3.0 * pi), 0.375 + 0.125 * cos(time / 3.0 * pi)
trans = addalpha
alpha = 256, 256

[State 3261, Modify]
type = modifyexplod
trigger1 = numexplod(2)
trigger1 = parent, animelemtime(9) >= 0 && parent, animelemtime(10) < 0
ID = 2
postype = p1
pos = ceil(-14 * parent, const(size.xscale)), ceil(-122 * parent, const(size.yscale))
scale = 0.375 + 0.125 * cos(time / 3.0 * pi), 0.375 + 0.125 * cos(time / 3.0 * pi)
trans = addalpha
alpha = 256, 256

[State 3261, Modify]
type = modifyexplod
trigger1 = numexplod(1)
trigger1 = parent, animelemtime(10) >= 0 && parent, animelemtime(11) < 0
ID = 1
postype = p1
pos = ceil(14 * parent, const(size.xscale)), ceil(-107 * parent, const(size.yscale))
scale = 0.375 + 0.125 * cos(time / 3.0 * pi), 0.375 + 0.125 * cos(time / 3.0 * pi)
trans = addalpha
alpha = 256, 256

[State 3261, Modify]
type = modifyexplod
trigger1 = numexplod(2)
trigger1 = parent, animelemtime(10) >= 0 && parent, animelemtime(11) < 0
ID = 2
postype = p1
pos = ceil(-7 * parent, const(size.xscale)), ceil(-113 * parent, const(size.yscale))
scale = 0.375 + 0.125 * cos(time / 3.0 * pi), 0.375 + 0.125 * cos(time / 3.0 * pi)
trans = addalpha
alpha = 256, 256

[State 3261, Modify]
type = modifyexplod
trigger1 = numexplod(1)
trigger1 = parent, animelemtime(11) >= 0 && parent, animelemtime(12) < 0
ID = 1
postype = p1
pos = ceil(3 * parent, const(size.xscale)), ceil(-83 * parent, const(size.yscale))
scale = 0.375 + 0.125 * cos(time / 3.0 * pi), 0.375 + 0.125 * cos(time / 3.0 * pi)
trans = addalpha
alpha = 256, 256

[State 3261, Modify]
type = modifyexplod
trigger1 = numexplod(2)
trigger1 = parent, animelemtime(11) >= 0 && parent, animelemtime(12) < 0
ID = 2
postype = p1
pos = ceil(-9 * parent, const(size.xscale)), ceil(-92 * parent, const(size.yscale))
scale = 0.375 + 0.125 * cos(time / 3.0 * pi), 0.375 + 0.125 * cos(time / 3.0 * pi)
trans = addalpha
alpha = 256, 256

[State 3261, Modify]
type = modifyexplod
trigger1 = numexplod(1)
trigger1 = parent, animelemtime(12) >= 0 && parent, animelemtime(13) < 0
ID = 1
postype = p1
pos = ceil(-9 * parent, const(size.xscale)), ceil(-83 * parent, const(size.yscale))
scale = 0.375 + 0.125 * cos(time / 3.0 * pi), 0.375 + 0.125 * cos(time / 3.0 * pi)
trans = addalpha
alpha = 256, 256

[State 3261, Modify]
type = modifyexplod
trigger1 = numexplod(2)
trigger1 = parent, animelemtime(12) >= 0 && parent, animelemtime(13) < 0
ID = 2
postype = p1
pos = ceil(-10 * parent, const(size.xscale)), ceil(-91 * parent, const(size.yscale))
scale = 0.375 + 0.125 * cos(time / 3.0 * pi), 0.375 + 0.125 * cos(time / 3.0 * pi)
trans = addalpha
alpha = 256, 256

[State 3261, Modify]
type = modifyexplod
trigger1 = numexplod(1)
trigger1 = parent, animelemtime(13) >= 0 && parent, animelemtime(14) < 0
ID = 1
postype = p1
pos = ceil(-6 * parent, const(size.xscale)), ceil(-67 * parent, const(size.yscale))
scale = 0.375 + 0.125 * cos(time / 3.0 * pi), 0.375 + 0.125 * cos(time / 3.0 * pi)
trans = addalpha
alpha = 256, 256

[State 3261, Modify]
type = modifyexplod
trigger1 = numexplod(2)
trigger1 = parent, animelemtime(13) >= 0 && parent, animelemtime(14) < 0
ID = 2
postype = p1
pos = ceil(44 * parent, const(size.xscale)), ceil(-74 * parent, const(size.yscale))
scale = 0.375 + 0.125 * cos(time / 3.0 * pi), 0.375 + 0.125 * cos(time / 3.0 * pi)
trans = addalpha
alpha = 256, 256

[State 3261, Modify]
type = modifyexplod
trigger1 = numexplod
trigger1 = time < 4
trans = addalpha
alpha = 64 * time, 256

[State 3261, Fired]
type = changestate
trigger1 = parent, stateno = 3260 && parent, animelemtime(14) >= 0
value = 3262

[State 3261, End]
type = removeexplod
trigger1 = parent, movetype = H
trigger2 = parent, stateno != 3260
trigger3 = parent, stateno = 3260
trigger3 = parent, animelemtime(4) < 0 || parent, animelemtime(14) >= 0

[State 3261, End]
type = destroyself
trigger1 = !numexplod


;----- Fired -----
[Statedef 3262]
type = A
physics = N
movetype = I
anim = 3125
velset = 0, 0
sprpriority = 3

[State 3262, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 3262, Bind]
type = bindtoparent
trigger1 = 1
pos = ceil(84 * parent, const(size.xscale)), ceil(-68 * parent, const(size.yscale))
facing = 1

[State 3262, End]
type = removeexplod
trigger1 = 1

[State 3262, End]
type = destroyself
trigger1 = parent, movetype = H
trigger2 = !animtime


;========================<RASHOUMON KANJI>=============================
[Statedef 3290]
type = A
physics = N
movetype = I
anim = 9999
velset = 0, 0

[State 3290, Assert]
type = assertspecial
trigger1 = 1
flag = nobardisplay
flag2 = noBG
flag3 = noFG

[State 3290, FX]
type = explod
trigger1 = !time
anim = 3290
ID = 2
sprpriority = -5
postype = left
pos = 160, 120
bindtime = -1
removetime = 12
scale = 1, 1
ownpal = 1

[State 3290, FX]
type = explod
trigger1 = !numexplod(1)
anim = 3290
ID = 1
sprpriority = -5
postype = left
pos = 160, 120
bindtime = -1
removetime = -1
scale = 1, 1
ownpal = 1

[State 3290, FX]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
trans = addalpha
alpha = 256 - (21 * time), 256
scale = 1 + (0.083 * time), 1 + (0.083 * time)

[State 3290, End]
type = removeexplod
trigger1 = time >= 24

[State 3290, End]
type = destroyself
trigger1 = !numexplod


;========================<DEAD END FX>=============================
[Statedef 3423]
type = A
physics = N
movetype = I
anim = 9999
velset = 0, 0

[State 3423, Bind]
type = bindtoparent
trigger1 = 1
facing = 1

[State 3423, Ball]
type = explod
trigger1 = !time
anim = 3423
ID = 1
sprpriority = 3
postype = p1
pos = ceil(-57 * const(size.xscale)), ceil(-118 * const(size.yscale))
bindtime = -1
removetime = -1
scale = 0.125, 0.125
ownpal = 1

[State 3423, Ball]
type = explod
trigger1 = !time
anim = 3423
ID = 2
sprpriority = 0
postype = p1
pos = ceil(38 * const(size.xscale)), ceil(-122 * const(size.yscale))
bindtime = -1
removetime = -1
scale = 0.125, 0.125
ownpal = 1

[State 3423, Modify]
type = modifyexplod
trigger1 = numexplod(1)
trigger1 = parent, animelemtime(2) >= 0 && parent, animelemtime(6) < 0
ID = 1
postype = p1
pos = ceil(-57 * const(size.xscale)), ceil(-118 * const(size.yscale))
sprpriority = 3
scale = 0.0625 + 0.03125 * cos(time / 3.0 * pi), 0.0625 + 0.03125 * cos(time / 3.0 * pi)
trans = addalpha
alpha = 256, 256

[State 3423, Modify]
type = modifyexplod
trigger1 = numexplod(2)
trigger1 = parent, animelemtime(2) >= 0 && parent, animelemtime(6) < 0
ID = 2
postype = p1
pos = ceil(38 * const(size.xscale)), ceil(-122 * const(size.yscale))
sprpriority = 0
scale = 0.0625 + 0.03125 * cos(time / 3.0 * pi), 0.0625 + 0.03125 * cos(time / 3.0 * pi)
trans = addalpha
alpha = 256, 256

[State 3423, Modify]
type = modifyexplod
trigger1 = numexplod(1)
trigger1 = parent, animelemtime(6) >= 0 && parent, animelemtime(7) < 0
ID = 1
postype = p1
pos = ceil(0 * const(size.xscale)), ceil(-85 * const(size.yscale))
sprpriority = 3
scale = 0.0625 + 0.03125 * cos(time / 3.0 * pi), 0.0625 + 0.03125 * cos(time / 3.0 * pi)
trans = addalpha
alpha = 256, 256

[State 3423, Modify]
type = modifyexplod
trigger1 = numexplod(2)
trigger1 = parent, animelemtime(6) >= 0 && parent, animelemtime(7) < 0
ID = 2
postype = p1
pos = ceil(28 * const(size.xscale)), ceil(-82 * const(size.yscale))
sprpriority = 3
scale = 0.0625 + 0.03125 * cos(time / 3.0 * pi), 0.0625 + 0.03125 * cos(time / 3.0 * pi)
trans = addalpha
alpha = 256, 256

[State 3423, Modify]
type = modifyexplod
trigger1 = numexplod
trigger1 = time < 4
trans = addalpha
alpha = 64 * time, 256

[State 3423, End]
type = removeexplod
trigger1 = parent, movetype = H
trigger2 = parent, stateno != 3420
trigger3 = parent, stateno = 3420
trigger3 = parent, animelemtime(2) < 0 || parent, animelemtime(7) >= 0

[State 3423, End]
type = destroyself
trigger1 = !numexplod


;========================<COAT>=============================
[Statedef 6000]
type = A
physics = N
movetype = I
anim = 6000
velset = 0, 0
sprpriority = -3

[State 6000, Fade]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - (8 * time), 8 * time

[State 6000, End]
type = destroyself
trigger1 = time >= 32


;========================<VS VEGA FX>=============================
[Statedef 6010]
type = A
physics = N
movetype = I
anim = 6010
velset = 0, 0
sprpriority = 3

[State 6010, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 6010, Bind]
type = bindtoparent
trigger1 = 1
pos = 64, 0
facing = 1

[State 6010, End]
type = destroyself
trigger1 = parent, movetype = H
trigger2 = parent, stateno != 6912

[State 6010, End]
type = changestate
trigger1 = parent, stateno = 6912 && parent, animelemtime(9) >= 0
value = 6011


[Statedef 6011]
type = A
physics = N
movetype = I
anim = 6011
velset = 0, 0
sprpriority = 3

[State 6011, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 6011, Vel]
type = velset
trigger1 = !time
trigger1 = numenemy
x = facing * (p2, pos x - pos x) / 16.0

[State 6011, End]
type = destroyself
trigger1 = parent, movetype = H
trigger2 = parent, stateno != 6912

[State 6011, End]
type = changestate
trigger1 = time >= 16
value = 6012


[Statedef 6012]
type = A
physics = N
movetype = I
anim = 6012
velset = 0, 0
sprpriority = 3

[State 6012, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 6012, Sound]
type = playsnd
trigger1 = !time || time = 4 || time = 8
value = 2, 6
channel = 2

[State 6012, Shake]
type = envshake
trigger1 = !time
trigger1 = numenemy
time = 12
ampl = 2
freq = 180

;[State 6012, Spark]
;in ZSS

[State 6012, End]
type = destroyself
trigger1 = !animtime
trigger2 = parent, movetype = H
trigger3 = parent, stateno != 6912


;========================<DUSTS>=============================
;----- Jump -----
[Statedef 8100]
type = S
anim = 9999
velset = 0, 0

[State 8100, Pos]
type = posset
trigger1 = !time
y = 0

[State 8100, Bind]
type = bindtoparent
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


;----- Dash -----
[Statedef 8103]
type = A
anim = 9999
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
angle = 90 * (random % 4)
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
alpha = 256 - (16 * time), 256

[State 8103, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 0.1 + (0.025 * (time -3)), 0.1 + (0.025 * (time -3))
trans = addalpha
alpha = 256 - (16 * (time -3)), 256

[State 8103, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 0.1 + (0.025 * (time -6)), 0.1 + (0.025 * (time -6))
trans = addalpha
alpha = 256 - (16 * (time -6)), 256

[State 8103, End]
type = removeexplod
trigger1 = time >= 22

[State 8103, End]
type = destroyself
trigger1 = !numexplod


;----- Impact -----
[Statedef 8110]
type = A
anim = 9999
velset = 0, 0

[State 8110, Pos]
type = posset
trigger1 = !time
y = 0

[State 8110, FX Ground]
type = explod
trigger1 = !time
anim = 8110
ID = 1
postype = p1
removetime = 12
sprpriority = -10
pausemovetime = -1
supermovetime = -1

[State 8110, FX Back]
type = explod
trigger1 = !time
anim = 8111
ID = 2
postype = p1
removetime = 8
sprpriority = -10
pausemovetime = -1
supermovetime = -1

[State 8110, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 0.25 + (0.03125 * time), 0.25 + (0.03125 * time)
trans = addalpha
alpha = 256 - (23 * time), 256

[State 8110, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 0.25 + (0.03125 * time), 0.25 + (0.03125 * time)
trans = addalpha
alpha = 256 - (32 * time), 256

[State 8110, End]
type = removeexplod
trigger1 = time >= 12

[State 8110, End]
type = destroyself
trigger1 = !numexplod


;========================<FLAMES>=============================
[Statedef 8150]
type = A
velset = 0, 0
anim = 9999

[State 8150, Timer]
type = null
trigger1 = time
trigger1 = map(timer) := (map(timer) - 1)

[State 8150, End]
type = destroyself
trigger1 = map(timer) <= 0
trigger2 = !playerIDexist(map(target))
trigger3 = time > 0
trigger3 = playerID(map(target)), palfxvar(time) = 0

[State 8150, End]
type = destroyself
triggerall = playerIDexist(map(target))
triggerall = playerID(map(target)), movetype = H
triggerall = playerID(map(target)), incustomstate
triggerall = playerID(map(target)), gethitvar(playerno) = playerno
trigger1 = playerID(map(target)), stateno = 845; OTG Throw

[State 8150, Pos]
type = posset
trigger1 = playerIDexist(map(target))
x = ceil(playerID(map(target)), pos x)
y = ceil(playerID(map(target)), pos y) + (playerID(map(target)), const(size.mid.pos.y))

[State 8150, Pos]
type = posset
trigger1 = playerIDexist(map(target))
trigger1 = playerID(map(target)), statetype = L || (playerID(map(target)), anim = [5080, 5119])
trigger1 = playerID(map(target)), stateno != [5020, 5050]
x = ceil(playerID(map(target)), pos x)
y = ceil(playerID(map(target)), pos y) - 20

[State 8150, Pos Custom States]
type = posset
triggerall = playerIDexist(map(target))
trigger1 = playerID(map(target)), animelemvar(group) = 5001 || playerID(map(target)), animelemvar(group) = 5011
trigger2 = playerID(map(target)), animelemvar(group) = 5031 || playerID(map(target)), animelemvar(group) = 5041
trigger3 = playerID(map(target)), animelemvar(group) = 5061 || playerID(map(target)), animelemvar(group) = 5071
x = playerID(map(target)), pos x
y = playerID(map(target)), pos y

[State 8150, Turn]
type = turn
trigger1 = playerIDexist(map(target))
trigger1 = facing != (playerID(map(target)), facing)

[State 8150, Sound]
type = playsnd
trigger1 = playerIDexist(map(target))
trigger1 = playerID(map(target)), hitshakeover
value = 7, 13
persistent = 0

[State 8150, Flames]
type = explod
trigger1 = playerIDexist(map(target))
anim = 8150
sprpriority = playerID(map(target)), sprpriority + 1
postype = p1
pos = 0, 0
random = 0.33 * (playerID(map(target)), const(size.head.pos.y)), 0.33 * (playerID(map(target)), const(size.head.pos.y))
vel = (random / 1000.0), -2.0 - (random / 500.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
scale = 0.5, 0.5
ownpal = 1

[State 8150, Flames]
type = explod
trigger1 = playerIDexist(map(target))
anim = 8150
sprpriority = playerID(map(target)), sprpriority - 1
postype = p1
pos = 0, 0
random = 0.66 * (playerID(map(target)), const(size.head.pos.y)), 0.66 * (playerID(map(target)), const(size.head.pos.y))
vel = (random / 1000.0), -2.0 - (random / 500.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
scale = 0.5, 0.5
ownpal = 1


;========================<SHOCK>=============================
[Statedef 8155]
type = A
velset = 0, 0
anim = 9999

[State 8155, Timer]
type = null
trigger1 = time
trigger1 = map(timer) := (map(timer) - 1)

[State 8155, End]
type = destroyself
trigger1 = map(timer) <= 0
trigger2 = !playerIDexist(map(target))
trigger3 = time > 0
trigger3 = playerID(map(target)), palfxvar(time) = 0

[State 8155, End]
type = destroyself
triggerall = playerIDexist(map(target))
triggerall = playerID(map(target)), movetype = H
triggerall = playerID(map(target)), incustomstate
triggerall = playerID(map(target)), gethitvar(playerno) = playerno
trigger1 = playerID(map(target)), stateno = 845; OTG Throw

[State 8155, Pos]
type = posset
trigger1 = playerIDexist(map(target))
x = ceil(playerID(map(target)), pos x)
y = ceil(playerID(map(target)), pos y) + (playerID(map(target)), const(size.mid.pos.y))

[State 8155, Pos]
type = posset
trigger1 = playerIDexist(map(target))
trigger1 = playerID(map(target)), statetype = L || (playerID(map(target)), anim = [5080, 5119])
trigger1 = playerID(map(target)), stateno != [5020, 5050]
x = ceil(playerID(map(target)), pos x)
y = ceil(playerID(map(target)), pos y) - 20

[State 8155, Pos Custom States]
type = posset
triggerall = playerIDexist(map(target))
trigger1 = playerID(map(target)), animelemvar(group) = 5001 || playerID(map(target)), animelemvar(group) = 5011
trigger2 = playerID(map(target)), animelemvar(group) = 5031 || playerID(map(target)), animelemvar(group) = 5041
trigger3 = playerID(map(target)), animelemvar(group) = 5061 || playerID(map(target)), animelemvar(group) = 5071
x = playerID(map(target)), pos x
y = playerID(map(target)), pos y

[State 8155, Turn]
type = turn
trigger1 = playerIDexist(map(target))
trigger1 = facing != (playerID(map(target)), facing)

[State 8155, Electricity]
type = explod
trigger1 = playerIDexist(map(target))
trigger1 = !(time % 2)
anim = 8155
sprpriority = playerID(map(target)), sprpriority + 1
postype = p1
pos = 0, 0
random = (playerID(map(target)), const(size.height)), (playerID(map(target)), const(size.height))
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
bindtime = -1
scale = 0.15, 0.15
ownpal = 1


;====================<POWER CHARGE>====================
;----- MAIN FX -----
[Statedef 8330]
type = A
physics = N
movetype = I
anim = 9999
ctrl = 0
velset = 0, 0

[State 8330, Bind]
type = bindtoroot
trigger1 = (root, stateno = 730)
pos = -7, 0

[State 8330, Sound]
type = playsnd
trigger1 = !time
value = 0, 730
channel = 0

[State 8330, Sound]
type = playsnd
trigger1 = 1
value = 0, 731
channel = 1
lowpriority = 1
volumescale = ifelse(time < 180, (time * 0.277), 50)

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
pos = 0, -pos y
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8330, FX]
type = modifyexplod
trigger1 = numexplod(8330)
trigger1 = root, time <= 60
ID = 8330
scale = 0.5, 0.125

[State 8330, FX]
type = modifyexplod
trigger1 = numexplod(8330)
trigger1 = root, time = [61, 119]
ID = 8330
scale = 0.5, 0.1 + ((root, time - 60) * 0.00625)

[State 8330, FX]
type = modifyexplod
trigger1 = numexplod(8330)
trigger1 = root, time >= 120
ID = 8330
scale = 0.5, 0.5

[State 8330, End]
type = stopsnd
trigger1 = root, stateno != 730
trigger2 = root, movetype = H
channel = 0

[State 8330, End]
type = stopsnd
trigger1 = root, stateno != 730
trigger2 = root, movetype = H
channel = 1

[State 8330, End]
type = removeexplod
trigger1 = root, stateno != 730
trigger2 = root, movetype = H

[State 8330, End]
type = destroyself
trigger1 = root, stateno != 730
trigger2 = root, movetype = H


;----- Particles -----
[Statedef 8331]
type = A
physics = N
movetype = I
anim = 9999
ctrl = 0
velset = 0, 0

[State 8331, Bind]
type = bindtoroot
trigger1 = !(time % 8)
pos = ceil(-151 + (random / 3.125)), ceil(98 -(random / 3.125))

[State 8331, Particle]
type = explod
trigger1 = (time % 8) = 1
anim = 8331
sprpriority = ifelse(random < 750, 5, -1)
postype = p1
vel = ((rootdist x + 9) / 32.0), ((rootdist y -62) / 32.0)
scale = ifelse(random < 500, 0.5, -0.5), ifelse(random < 500, 0.5, -0.5)
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8331, End]
type = removeexplod
trigger1 = root, stateno != 730

[State 8331, End]
type = destroyself
trigger1 = root, stateno != 730


;====================<ZERO COUNTER PAUSE>====================
[Statedef 8350]
type = A
physics = N
movetype = I
anim = 9999
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
scale = 0.0556 * (time + 1), 0.0556 * (time + 1)
trans = addalpha
alpha = 256 - (16 * time), 256

[State 8350, Lightning]
type = explod
trigger1 = !time
anim = 8351
ID = 2
sprpriority = -2
postype = p1
pos = 0, -pos y
supermovetime = -1
ownpal = 1

[State 8350, End]
type = destroyself
trigger1 = time >= 16


;========================<CUSTOM COMBO>=============================
[Statedef 8400]
type = A
physics = N
movetype = I
anim = 8400
ctrl = 0
velset = 0, 0
sprpriority = 5

[State 8400, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 8400, BG PalFX]
type = bgpalfx
trigger1 = time <= 25
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
scale = 0.0556 * (time + 1), 0.0556 * (time + 1)

[State 8400, Scale]
type = angledraw
trigger1 = time >= 8
scale = 0.5, 0.5

[State 8400, Trans]
type = trans
trigger1 = time < 16
trans = addalpha
alpha = 256, 256

[State 8400, Trans]
type = trans
trigger1 = time >= 16
trans = addalpha
alpha = ceil(256 - 25.6 * (time -16)), 256

[State 8400, Lines]
type = explod
trigger1 = !time
anim = 8401
ID = 1
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
removetime = 16
supermovetime = -1

[State 8400, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 2 -(0.125 * time), 2 -(0.125 * time)
trans = addalpha
alpha = ifelse(time < 3, 64 * (time + 1), 256), 256

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
trigger1 = time <= 39
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
trigger1 = 1
scale = (0.0177 * time) ** 2, (0.0177 * time) ** 2

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
angle = 90 * (random % 4)
bindtime = -1
removetime = 16
supermovetime = -1

[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 1 -(0.0625 * time), 1 -(0.0625 * time)
trans = addalpha
alpha = ifelse(time < 3, 64 * (time + 1), 256), 256

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
angle = 90 * (random % 4)
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
trigger1 = time <= 39
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
trigger1 = 1
scale = (0.0177 * time) ** 2, (0.0177 * time) ** 2

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
angle = 90 * (random % 4)
bindtime = -1
removetime = 16
supermovetime = -1

[State 8510, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 1 -(0.0625 * time), 1 -(0.0625 * time)
trans = addalpha
alpha = ifelse(time < 3, 64 * (time + 1), 256), 256

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
angle = 90 * (random % 4)
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
trigger1 = 1
scale = (0.0177 * time) ** 2, (0.0177 * time) ** 2

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
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 120, 120)
scale = 1 - (0.03125 * time), 1 - (0.03125 * time)
trans = addalpha
alpha = (8 * time), 256

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(21) && time < 16
ID = 21
postype = back
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 120, 120)
scale = 2 - (0.09375 * time), 2 - (0.09375 * time)
trans = addalpha
alpha = (8 * time), 256

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(20) && (time = [16, 32])
ID = 20
postype = back
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 120, 120)
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
pos = 160 + (8 * (time -32)), ifelse((gamewidth / gameheight) > 1.55, 120, 120)
scale = 0.5, 0.5
trans = addalpha
alpha = 128 - 16 * (time -32), 256

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(21) && time >= 32
ID = 21
postype = back
pos = 160 - (8 * (time -32)), ifelse((gamewidth / gameheight) > 1.55, 120, 120)
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
angle = 90 * (random % 4)
bindtime = -1
removetime = 16
supermovetime = -1

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 1 -(0.0625 * time), 1 -(0.0625 * time)
trans = addalpha
alpha = ifelse(time < 3, 64 * (time + 1), 256), 256

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
angle = 90 * (random % 4)
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

[State 8600, Sound]
type = playsnd
trigger1 = !time
value = 0, 8600
channel = 1

[State 8600, Sound]
type = sndpan
trigger1 = time <= 80
channel = 1
abspan = ceil(sin(gametime / 20.0 * pi) * 160)

[State 8600, Sound]
type = assertspecial
trigger1 = time <= 80
flag = nomusic

[State 8600, BG PalFX]
type = bgpalfx
trigger1 = time < 16
trigger1 = !(time % 2)
time = 1
color = 0
mul = 192, 192, 192

[State 8600, BG PalFX]
type = bgpalfx
trigger1 = time < 16
trigger1 = (time % 2)
time = 1
color = 0
mul = 128, 32, 0

[State 8600, BG PalFX]
type = bgpalfx
trigger1 = time = [16, 24]
time = 1
color = 32 * (time -16)
mul = 128 + 8 * (time - 16), 32 + 14 * (time - 16), 32 * (time - 16)

[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, map(superfinish) = 900
var(0) = 1

[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, map(superfinish) = 3000
var(0) = 2

[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, map(superfinish) = 3050
var(0) = 3

[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, map(superfinish) = [3100, 3120]
var(0) = 4

[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, map(superfinish) = 3200
var(0) = 5

[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, map(superfinish) = [3300, 3350]
var(0) = 6

[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, map(superfinish) = 3351
var(0) = 7

[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, map(superfinish) = 3400
var(0) = 8

[State 8600, MvC]
type = explod
trigger1 = !time
anim = 8600
ID = 8600
ontop = 1
postype = left
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 90, 120)
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
trigger1 = !time
trigger1 = var(0)
anim = 8610 + var(0)
ID = 10
ontop = 1
postype = left
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 90, 120)
scale = 0.5, 0.5 * (1.3333333 * gameheight / gamewidth)
bindtime = -1
removetime = 32
pausemovetime = -1
supermovetime = -1

[State 8600, Text]
type = explod
trigger1 = !time
trigger1 = var(0)
anim = 8610 + var(0)
ID = 11
ontop = 1
postype = left
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 90, 120)
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
scale = 0.5 + (0.0625 * time), (0.5 + (0.0625 * time)) * (1.3333333 * gameheight / gamewidth)
trans = addalpha
alpha = 256 - (32 * time), 32 * time

[State 8600, Circle]
type = explod
trigger1 = !time
anim = 8601
ID = 8601
sprpriority = -5
postype = left
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 90, 120)
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

[State 8600, Stop Shake]
type = envshake
trigger1 = numexplod
time = 1
ampl = 0

[State 8600, Assert]
type = assertspecial
trigger1 = time < 24
flag = nobardisplay

[State 8600, End]
type = removeexplod
trigger1 = numexplod
trigger1 = time >= 24
trigger1 = roundstate != 3

[State 8600, End]
type = destroyself
trigger1 = time >= 24
trigger1 = roundstate != 3


;========================<CAMERA CONTROL>=============================
[Statedef 8999]
type = S
velset = 0, 0
anim = 9999

[State 8999, Bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1

[State 8999, End]
type = destroyself
trigger1 = roundstate = 2
