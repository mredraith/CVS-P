; ______________________________
;| Ryu by Phantom.of.the.Server |
; 
;==============================================================================================
;===============HELPER STATES===========
;==============================================================================================

;HADOU KEN
[Statedef 1005]
type = S
physics = N
movetype = A
anim = 1005
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 1005, Override]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1006
ignorehitpause = 1

[State 1005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1005, Strength]
type = mapset
trigger1 = !time
map = "strength"
value = root, map(strength)

[State 1005, Vel]
type = velset
trigger1 = 1
x = ifelse(map(strength) = 2, 5.00, ifelse(map(strength) = 1, 4.17, 3.33))
y = 0

[State 1005, Size]
type = angledraw
trigger1 = time < 4
trigger1 = !prevstateno
scale = 0.5 + (0.125 * time), 1

[State 1005, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - 32 * (gametime % 3), 256
ignorehitpause = 1

[State 1005, Hit]
type = hitdef
trigger1 = 1
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
priority = 4, Hit
attr = S, SP
damage = ifelse(root, var(1) = 1, 70, 60), ifelse(root, var(1) = 1, 18, 15)
dizzypoints = 100 * !(root, map(customcombo))
guard.dist = const(size.proj.attack.dist)
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 0, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -30) * (map(sparkx.max) := 0), map(sparky) := 0
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.velocity = -4.0, -5.25
air.fall = 1
fall.recover = 1
fall.recovertime = 120
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
yaccel = 0.4850
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
forcestand = 1

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
value = 2, ifelse(numtarget, 7, 0)
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

[State 1006, End]
type = changestate
trigger1 = time >= 0
value = 1007


;----- Disappear -----
[Statedef 1007]
type = A
physics = N
movetype = I
anim = 1006
velset = 0, 0
ctrl = 0
sprpriority = 3

[State 1007, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = hitoverridden || prevmovetype = H
value = 2, 0
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


;EX HADOU KEN
[Statedef 1015]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 1015, Override]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1016
ignorehitpause = 1

[State 1015, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1015, Anim]
type = changeanim
trigger1 = anim != 1005 && anim != 1015
value = ifelse(root, var(1) = 2, 1005, 1015)

[State 1015, Size]
type = angledraw
trigger1 = anim = 1015
scale = 0.8, 0.8

[State 1015, Vel]
type = velset
trigger1 = 1
x = 5.3
y = 0

[State 1015, Size]
type = angledraw
trigger1 = time < 4
trigger1 = !prevstateno
scale = 0.5 + (0.125 * time), 1

[State 1015, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - 32 * (gametime % 3), 256
ignorehitpause = 1

[State 1015, Particles]
type = explod
trigger1 = !(gametime % 2)
trigger1 = anim = 1015
anim = 8151
ID = 8151
sprpriority = 3
postype = p1
pos = -40, 0
random = 8, 16
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
scale = 0.25, 0.25
ownpal = 1

[State 1015, Hit First]
type = hitdef
trigger1 = 1
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 2)
ID = 1015
priority = 4, Hit
attr = S, SP
damage = 50, 13
dizzypoints = 50 * !(root, map(customcombo))
guard.dist = const(size.proj.attack.dist)
animtype = Hard
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
pausetime = 0, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -30) * (map(sparkx.max) := 0), map(sparky) := 0
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.velocity = -4.0, -5.25
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
palfx.time = ifelse(anim = 1015, 60, 0)
palfx.color = 0
palfx.sinadd = 128, 128, 128, 4
palfx.mul = root, map(palfx2_r), root, map(palfx2_g), root, map(palfx2_b)
yaccel = 0.4850
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
forcestand = 1

[State 1015, Hit Knockdown]
type = hitdef
trigger1 = anim = 1015 && var(2) > 0
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 2)
ID = 1015
priority = 4, Hit
attr = S, SP
damage = 50, 13
dizzypoints = 50 * !(root, map(customcombo))
guard.dist = const(size.proj.attack.dist)
animtype = Hard
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
pausetime = 0, 12
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -4.0, -5.25
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
air.velocity = -4.0, -5.25
fall = 1
fall.recover = 1
fall.recovertime = 120
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
palfx.time = ifelse(anim = 1015, 60, 0)
palfx.color = 0
palfx.sinadd = 128, 128, 128, 4
palfx.mul = root, map(palfx2_r), root, map(palfx2_g), root, map(palfx2_b)
yaccel = 0.4850
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
forcestand = 1

[State 1015, Connected]
type = changestate
trigger1 = movecontact || movereversed
value = 1016

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

[State 1016, Total Hits]
type = varadd
trigger1 = 1
var(2) = 1
persistent = 0
ignorehitpause = 1

[State 1016, Burned]
type = targetstate
trigger1 = anim = 1015
trigger1 = movehit
trigger1 = numtarget(1015)
trigger1 = target(1015), hitfall
trigger1 = target(1015), selfanimexist(7697)
trigger1 = target(1015), stateno = 5000 || target(1015), stateno = 5010 || target(1015), stateno = 5020
value = 7697
ID = 1015
ignorehitpause = 1

[State 1016, HitSound]
type = playsnd
trigger1 = !time
trigger1 = movehit
value = 2, ifelse(numtarget, ifelse(anim = 1015, 12, 7), 0)
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
trigger1 = var(2) >= 2
value = 1017

[State 1016, Hit More]
type = changestate
trigger1 = time >= ifelse(numtarget, 4, 0)
trigger1 = var(2) < 2
value = 1015


;----- Disappear -----
[Statedef 1017]
type = A
physics = N
movetype = I
anim = ifelse(anim = 1015, 1016, 1006)
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 1017, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = hitoverridden || prevmovetype = H
value = 2, 0
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


;SHAKUNETSU HADOU KEN
[Statedef 1025]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 1025, Strength]
type = mapset
trigger1 = !time
trigger1 = !prevstateno
map = "strength"
value = root, map(strength)

[State 1025, Anim]
type = changeanim
trigger1 = anim != 1015
value = 1015

[State 1025, Override]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1026
ignorehitpause = 1

[State 1025, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1025, Vel]
type = velset
trigger1 = 1
x = ifelse(map(strength) = 2, 6, ifelse(map(strength) = 1, 5, 4))
y = 0

[State 1025, Size]
type = angledraw
trigger1 = time < 4
trigger1 = !prevstateno
scale = 0.5 + (0.125 * time), 1

[State 1025, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - 32 * (gametime % 3), 256
ignorehitpause = 1

[State 1025, Particles]
type = explod
trigger1 = !(gametime % 2)
anim = 8151
ID = 8151
sprpriority = 3
postype = p1
pos = -40, 0
random = 8, 16
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
scale = 0.25, 0.25
ownpal = 1

[State 1025, Hit]
type = hitdef
trigger1 = 1
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 3)
priority = 4, Hit
ID = 1025
attr = S, SP
damage = ifelse(map(strength) = 2, 34, ifelse(map(strength) = 1, 38, 50)), ifelse(map(strength) = 2, 9, ifelse(map(strength) = 1, 10, 13))
dizzypoints = ifelse(map(strength) = 2, 34, ifelse(map(strength) = 1, 75, 200)) * !(root, map(customcombo))
guard.dist = const(size.proj.attack.dist)
animtype = Hard
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
pausetime = 0, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -30) * (map(sparkx.max) := 0), map(sparky) := 0
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -4.0, -5.25
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
air.velocity = -4.0, -5.25
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
palfx.time = 60
palfx.color = 0
palfx.sinadd = 128, 128, 128, 4
palfx.mul = root, map(palfx2_r), root, map(palfx2_g), root, map(palfx2_b)
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
forcestand = 1

[State 1025, Connected]
type = changestate
trigger1 = movecontact || movereversed
value = 1026

[State 1025, End]
type = destroyself
trigger1 = frontedgedist < -100 || backedgedist < -80


;----- Hitpause -----
[Statedef 1026]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 3
movehitpersist = 1

[State 1026, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 1026, Total Hits]
type = varadd
trigger1 = 1
var(2) = 1
persistent = 0
ignorehitpause = 1

[State 1026, Getpower]
type = poweradd
trigger1 = movecontact = 1
trigger1 = numtarget
value = ifelse(movehit && !prevstateno, 50, 25) * root, map(meterscaling)
ignorehitpause = 1

[State 1026, Burned]
type = targetstate
trigger1 = movehit
trigger1 = numtarget(1025)
trigger1 = target(1025), hitfall
trigger1 = target(1025), selfanimexist(7697)
trigger1 = target(1025), stateno = 5000 || target(1025), stateno = 5010 || target(1025), stateno = 5020
value = 7697
ID = 1025
ignorehitpause = 1

[State 1026, HitSound]
type = playsnd
trigger1 = !time
trigger1 = movehit
value = 2, ifelse(numtarget, 12, 0)
channel = 2
ignorehitpause = 1

[State 1026, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 1020
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 1026, End]
type = changestate
trigger1 = var(2) >= (map(strength) + 1)
value = 1027

[State 1026, Hit More]
type = changestate
trigger1 = time >= ifelse(numtarget, 4, 0)
trigger1 = var(2) < (map(strength) + 1)
value = 1025


;----- Disappear -----
[Statedef 1027]
type = A
physics = N
movetype = I
anim = 1016
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 1027, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = hitoverridden || prevmovetype = H
value = 2, 0
channel = 2
volumescale = 33

[State 1027, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1027, End]
type = destroyself
trigger1 = !animtime


;EX SHAKUNETSU HADOU KEN
[Statedef 1035]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 1035, Anim]
type = changeanim
trigger1 = anim != 1015
value = 1015

[State 1035, Override]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1036
ignorehitpause = 1

[State 1035, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, HP
ignorehitpause = 1

[State 1035, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 1030
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 1035, Vel]
type = velset
trigger1 = 1
x = 12
y = 0

[State 1035, Size]
type = angledraw
trigger1 = 1
scale = 0.67, ifelse(time < 4, 1 - (0.083 * time), 0.67)

[State 1035, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - 32 * (gametime % 3), 256
ignorehitpause = 1

[State 1035, Particles]
type = explod
trigger1 = 1
anim = 8151
ID = 8151
sprpriority = 3
postype = p1
pos = -40, 0
random = 8, 8
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
scale = 0.2, 0.2
ownpal = 1

[State 1035, HitSound]
type = playsnd
trigger1 = movehit = 1
value = 2, ifelse(numtarget, 12, 0)
channel = 2
ignorehitpause = 1

[State 1035, Hit]
type = hitdef
trigger1 = 1
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
priority = 4, Hit
attr = S, SP
damage = 40, 10
dizzypoints = 50 * !(root, map(customcombo))
guard.dist = const(size.proj.attack.dist)
animtype = Hard
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
pausetime = 0, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -30) * (map(sparkx.max) := 0), map(sparky) := 0
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -16.0, -3.00
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
air.velocity = -16.0, -3.00
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
palfx.time = 60
palfx.color = 0
palfx.sinadd = 128, 128, 128, 4
palfx.mul = root, map(palfx2_r), root, map(palfx2_g), root, map(palfx2_b)
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
forcestand = 1
ID = 1035

[State 1035, Burned]
type = targetstate
trigger1 = movehit
trigger1 = numtarget(1035)
trigger1 = target(1035), hitfall
trigger1 = target(1035), selfanimexist(7697)
trigger1 = target(1035), stateno = 5000 || target(1035), stateno = 5010 || target(1035), stateno = 5020
value = 7697
ID = 1035
ignorehitpause = 1

[State 1035, Connected]
type = changestate
trigger1 = movecontact || movereversed
value = 1036

[State 1035, End]
type = destroyself
trigger1 = frontedgedist < -100 || backedgedist < -80


;----- Explosion -----
[Statedef 1036]
type = S
physics = N
movetype = A
ctrl = 0
anim = 1036
velset = 0, 0
sprpriority = 3

[State 1036, NHB]
type = nothitby
trigger1 = 1
time = -1
value = SCA
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

[State 1036, Sound]
type = playsnd
trigger1 = animelem = 3
value = 6, 21

[State 1036, HitSound]
type = playsnd
trigger1 = movehit = 1
value = 2, ifelse(numtarget, 12, 0)
channel = 2
ignorehitpause = 1

[State 1036, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 2)
priority = 4, Hit
attr = S, SP
damage = 40, 10
dizzypoints = 50 * !(root, map(customcombo))
guard.dist = const(size.proj.attack.dist)
animtype = Hard
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
pausetime = 0, 4
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -30) * (map(sparkx.max) := 0), map(sparky) := 0
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -16.0, -3.00
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
air.velocity = -16.0, -3.00
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
palfx.time = 60
palfx.color = 0
palfx.sinadd = 128, 128, 128, 4
palfx.mul = root, map(palfx2_r), root, map(palfx2_g), root, map(palfx2_b)
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
forcestand = 1
ID = 1036

[State 1036, Wall Bounce]
type = targetstate
trigger1 = !(root, map(wallbounce))
trigger1 = movehit = 1
trigger1 = numtarget(1036)
trigger1 = target(1036), dizzy = 0
trigger1 = target(1036), dizzypoints > abs(target(1036), gethitvar(dizzypoints))
trigger1 = target(1036), stateno = 5000 || target(1036), stateno = 5010 || target(1036), stateno = 5020
trigger1 = 1 || root, map(wallbounce) := 1
value = 1111300
ID = 1036
ignorehitpause = 1

[State 1036, Juggle Reset]
type = rootmapset
trigger1 = numtarget(1036)
trigger1 = target(1036), stateno = 1111300
map = "juggle_count"
value = 0
ignorehitpause = 1

[State 1036, End]
type = destroyself
trigger1 = !animtime


;CHARGED HADOUKEN
[Statedef 1045]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 1045, Strength]
type = mapset
trigger1 = !time
trigger1 = !prevstateno
map = "strength"
value = root, map(strength)

[State 1045, Anim]
type = changeanim
trigger1 = anim != 1005
value = 1005

[State 1045, Override]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1046
ignorehitpause = 1

[State 1045, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1045, Vel]
type = velset
trigger1 = 1
x = ifelse(map(strength) = 2, 7.5, ifelse(map(strength) = 1, 6.25, 5.0))
y = 0

[State 1045, Size]
type = angledraw
trigger1 = time < 4
trigger1 = !prevstateno
scale = 0.5 + (0.125 * time), 1

[State 1045, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - 32 * (gametime % 4), 256
ignorehitpause = 1

[State 1045, Particles]
type = explod
trigger1 = !(gametime % 2)
anim = 8155
ID = 8155
sprpriority = 3
postype = p1
pos = -30, 0
random = 40, 40
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
scale = 0.167, 0.167
bindtime = -1
ownpal = 1

[State 1045, Hit]
type = hitdef
trigger1 = 1
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 2)
ID = 1045
priority = 4, Hit
attr = S, SP
damage = 45, 11
dizzypoints = 75 * !(root, map(customcombo))
guard.dist = const(size.proj.attack.dist)
animtype = Hard
fall.animtype = Back
hitflag = MAF
guardflag = MA
pausetime = 0, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -30) * (map(sparkx.max) := 0), map(sparky) := 0
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
air.velocity = -4.0, -5.25
yaccel = 0.4850
air.fall = 1
fall.recover = 1
fall.recovertime = 120
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
palfx.time = 30
palfx.color = -256
palfx.invertall = 1
palfx.sinadd = 255, 255, 255, 4
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
forcestand = 1

[State 1045, Connected]
type = changestate
trigger1 = movecontact || movereversed
value = 1046

[State 1045, End]
type = destroyself
trigger1 = frontedgedist < -100 || backedgedist < -80


;----- Hitpause -----
[Statedef 1046]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 3
movehitpersist = 1

[State 1046, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 1046, Total Hits]
type = varadd
trigger1 = 1
var(2) = 1
persistent = 0
ignorehitpause = 1

[State 1046, Getpower]
type = poweradd
trigger1 = movecontact = 1
trigger1 = numtarget
value = ifelse(movehit && !prevstateno, 50, 25) * root, map(meterscaling)
ignorehitpause = 1

[State 1046, Shocked]
type = targetstate
trigger1 = movehit
trigger1 = numtarget(1045)
trigger1 = target, selfanimexist(7696)
trigger1 = (target(1045), stateno = 5000) || (target(1045), stateno = 5010) || (target(1045), stateno = 5020)
value = 7696
ID = 1045
ignorehitpause = 1

[State 1046, HitSound]
type = playsnd
trigger1 = !time
trigger1 = movehit
value = ifelse(numtarget, 6, 2), ifelse(numtarget, 5, 0)
channel = 2
ignorehitpause = 1

[State 1046, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 1040
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 1046, End]
type = changestate
trigger1 = var(2) >= 2
value = 1047

[State 1046, Hit More]
type = changestate
trigger1 = time >= ifelse(numtarget, 4, 0)
trigger1 = var(2) < 2
value = 1045


;----- Disappear -----
[Statedef 1047]
type = A
physics = N
movetype = I
anim = 1006
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 1047, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = hitoverridden || prevmovetype = H
value = 2, 0
channel = 2
volumescale = 33

[State 1047, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1047, End]
type = destroyself
trigger1 = !animtime


;SHINKUU HADOU KEN
[Statedef 3005]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 3005, Override]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 3006
ignorehitpause = 1

[State 3005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3005, Strength]
type = mapset
trigger1 = !time
trigger1 = !prevstateno
map = "strength"
value = root, map(strength)

[State 3005, Anim]
type = changeanim
trigger1 = anim != 3005
value = 3005

[State 3005, Vel]
type = velset
trigger1 = 1
x = ifelse(map(strength) = 2, 8, ifelse(map(strength) = 1, 6.5, 5))
y = 0

[State 3005, Size]
type = angledraw
trigger1 = !prevstateno
trigger1 = time < 4
scale = 0.5 + (0.125 * time), 1

[State 3005, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - 32 * (gametime % 3), 256
ignorehitpause = 1

[State 3005, Hit]
type = hitdef
trigger1 = 1
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 5)
ID = 3005
priority = 4, Hit
attr = S, HP
damage = 38, 10
dizzypoints = 0
guard.dist = 320
animtype = Hard
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = M
pausetime = 0, 12
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -30) * (map(sparkx.max) := 0), map(sparky) := 0
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = ifelse(var(2) < 4, -10.52, -6.25), ifelse(var(2) < 4, 0, -5.25)
guard.velocity = -10.52
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.velocity = -6.25, -5.25
fall = var(2) >= 4
air.fall = 1
fall.recover = 0
down.recover = 1
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
palfx.time = ifelse(root, var(1) = 1, 0, 60)
palfx.color = 0
palfx.sinadd = 128, 128, 128, 4
palfx.mul = root, map(palfx1_r), root, map(palfx1_g), root, map(palfx1_b)
yaccel = 0.4850
p1sprpriority = sprpriority
forcestand = 1

[State 3005, Connected]
type = changestate
trigger1 = movecontact || movereversed
value = 3006

[State 3005, End]
type = destroyself
trigger1 = frontedgedist < -120 || backedgedist < -120


;----- Hitpause -----
[Statedef 3006]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 3
movehitpersist = 1

[State 3006, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 3006, Total Hits]
type = varadd
trigger1 = 1
var(2) = 1
persistent = 0
ignorehitpause = 1

[State 3006, Burned]
type = targetstate
trigger1 = root, var(1) != 1
trigger1 = movehit
trigger1 = numtarget(3005)
trigger1 = target(3005), hitfall
trigger1 = target(3005), selfanimexist(7697)
trigger1 = target(3005), stateno = 5000 || target(3005), stateno = 5010 || target(3005), stateno = 5020
value = 7697
ID = 3005
ignorehitpause = 1

[State 3006, HitSound]
type = playsnd
trigger1 = !time
trigger1 = movehit
value = 2, ifelse(numtarget, ifelse((root, var(1) = 1), 7, 12), 0)
channel = 2
ignorehitpause = 1

[State 3006, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 3000
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 3006, End]
type = changestate
trigger1 = var(2) >= 5
value = 3007

[State 3006, Hit More]
type = changestate
trigger1 = time >= ifelse(numtarget, 4, 0)
trigger1 = var(2) < 5
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

[State 3007, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = hitoverridden || prevmovetype = H
value = 2, 0
channel = 2
volumescale = 33

[State 3007, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3007, End]
type = destroyself
trigger1 = !animtime


;DENJIN HADOU KEN
[Statedef 3025]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 3025, Charge Level]
type = mapset
trigger1 = !time
trigger1 = !prevstateno
map = "chargelevel"
value = ifelse(root, map(denjinlevel) >= 120, 4, ifelse(root, map(denjinlevel) >= 60, 3, ifelse(root, map(denjinlevel) >= 30, 2, ifelse(root, map(denjinlevel) >= 10, 1, 0))))

[State 3025, Max Hit Var]
type = varadd
trigger1 = !time
trigger1 = !prevstateno
var(4) = map(chargelevel) + 1

[State 3025, Override]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 3026
ignorehitpause = 1

[State 3025, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3025, Anim]
type = changeanim
trigger1 = anim != 3025
value = 3025

[State 3025, Size]
type = angledraw
trigger1 = 1
scale = ifelse((time % 2), 0.8, 1), ifelse((time % 2), 0.8, 1.25)

[State 3025, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3025, Vel]
type = velset
trigger1 = 1
x = 5 + (1.0 * map(chargelevel))
y = 0

[State 3025, Particles]
type = explod
trigger1 = !(gametime % 2)
anim = 8155
ID = 8155
sprpriority = 3
postype = p1
pos = -30, 0
random = 40, 40
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
scale = 0.167, 0.167
bindtime = -1
ownpal = 1

[State 3025, Last Hit Flag]
type = mapset
trigger1 = 1
map = "fireball_lasthit"
value = var(2) >= (var(4) - 1)

[State 3025, Hit]
type = hitdef
trigger1 = 1
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := (3 + var(2)))
ID = 3025
priority = 4, Hit
attr = S, HP
damage = ifelse(map(fireball_lasthit), 100, 25), ifelse(map(fireball_lasthit), 25, 6)
dizzypoints = ifelse(map(fireball_lasthit), 220 * (map(hitcount) + 1), 0);last hit only
guardpoints = ifelse(map(fireball_lasthit), 220 * (map(hitcount) + 1), 0);last hit only
guard.dist = 320
animtype = Hard
hitflag = MAF
guardflag = M
pausetime = 0, 12
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -30) * (map(sparkx.max) := 0), map(sparky) := 0
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
air.velocity = -5, -3
fall = 0
air.fall = 1
fall.recover = 0
down.recover = 1
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
palfx.time = 30
palfx.color = -256
palfx.invertall = 1
palfx.sinadd = 255, 255, 255, 4
yaccel = 0.4850
p1sprpriority = sprpriority
forcestand = 1

[State 3025, Connected]
type = changestate
trigger1 = movecontact || movereversed
value = 3026

[State 3025, End]
type = destroyself
trigger1 = frontedgedist < -120 || backedgedist < -120


;----- Hitpause -----
[Statedef 3026]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 3
movehitpersist = 1

[State 3026, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 3026, Total Hits]
type = varadd
trigger1 = 1
var(2) = 1
persistent = 0
ignorehitpause = 1

[State 3026, Successful Hits]
type = mapadd
trigger1 = !time
trigger1 = numtarget
trigger1 = target, gethitvar(frame)
trigger1 = target, gethitvar(ID) = ID
map = "hitcount"
value = 1

[State 3026, Shocked]
type = targetstate
trigger1 = movehit
trigger1 = numtarget(3025)
trigger1 = target, selfanimexist(7696)
trigger1 = (target(3025), stateno = 5000) || (target(3025), stateno = 5010) || (target(3025), stateno = 5020)
value = 7696
ID = 3025
ignorehitpause = 1

[State 3026, HitSound]
type = playsnd
trigger1 = !time
trigger1 = movehit
value = ifelse(numtarget, 6, 2), ifelse(numtarget, 5, 0)
channel = 2
ignorehitpause = 1

[State 3026, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 3022
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 3026, End]
type = changestate
trigger1 = map(fireball_lasthit)
value = 3027

[State 3026, Hit More]
type = changestate
trigger1 = time >= ifelse(numtarget, 4, 0)
trigger1 = !map(fireball_lasthit)
value = 3025


;----- Disappear -----
[Statedef 3027]
type = A
physics = N
movetype = I
anim = 3026
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 3027, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3027, Ikemen Dizzy Disabled]
redirectID = target, ID
type = dizzyset
trigger1 = map(fireball_lasthit)
trigger1 = time <= 1
trigger1 = numtarget
trigger1 = roundstate = 2
trigger1 = target, dizzy = 0
trigger1 = target, movetype = H
trigger1 = target, gethitvar(guarded) = 0
trigger1 = target, gethitvar(dizzypoints) = 0; wait 1 frame to see if gethitvar had any effect
trigger1 = target, dizzypoints >= target, dizzypointsmax
trigger1 = target, const(default.enable.dizzy)
trigger1 = target, map(_iksys_dizzyLimit) = 0
trigger1 = map(hitcount) > 0
trigger1 = target, dizzypoints <= (220 * map(hitcount) * root, map(damagescaling))
value = 1
persistent = 0

[State 3027, Ikemen Guard Break Disabled]
redirectID = target, ID
type = selfstate
trigger1 = map(fireball_lasthit)
trigger1 = time <= 1
trigger1 = numtarget
trigger1 = roundstate = 2
trigger1 = target, guardbreak = 0
trigger1 = target, stateno = [150, 153]
trigger1 = target, const(default.enable.guardbreak)
trigger1 = target, gethitvar(guardpoints) = 0; wait 1 frame to see if gethitvar had any effect
trigger1 = target, guardpoints >= target, guardpointsmax
trigger1 = map(hitcount) > 0
trigger1 = target, dizzypoints <= (220 * map(hitcount) * root, map(damagescaling))
value = const(stateguardbreakhit)
persistent = 0

[State 3027, End]
type = destroyself
trigger1 = !animtime


;METSU HADOU KEN
[Statedef 3045]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 3045, Charge Level]
type = mapset
trigger1 = !time
trigger1 = !prevstateno
map = "chargelevel"
value = ifelse(root, map(denjinlevel) >= 80, 5, ifelse(root, map(denjinlevel) >= 60, 4, ifelse(root, map(denjinlevel) >= 40, 3, ifelse(root, map(denjinlevel) >= 20, 2, ifelse(root, map(denjinlevel) >= 10, 1, 0)))))

[State 3045, Max Hit Var]
type = varadd
trigger1 = !time
trigger1 = !prevstateno
var(4) = 3 + map(chargelevel)

[State 3045, Override]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 3046
ignorehitpause = 1

[State 3045, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3045, Anim]
type = changeanim
trigger1 = anim != 3045
value = 3045

[State 3045, Vel]
type = velset
trigger1 = 1
x = 6 + map(chargelevel)
y = 0

[State 3045, Size]
type = angledraw
trigger1 = time < 4
trigger1 = !prevstateno
scale = 0.5 + (0.125 * time), 1

[State 3045, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3045, Last Hit Flag]
type = mapset
trigger1 = 1
map = "fireball_lasthit"
value = var(2) >= (var(4) - 1)

[State 3045, Hit]
type = hitdef
trigger1 = 1
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := (3 + var(2)))
ID = 3045
priority = 4, Hit
attr = S, HP
damage = ifelse(map(fireball_lasthit), 120, 40), ifelse(map(fireball_lasthit), 30, 10)
dizzypoints = ifelse(map(fireball_lasthit), 167 * (map(hitcount) + 1), 0);last hit only
guard.dist = 320
animtype = Hard
fall.animtype = Hard
hitflag = MAF
guardflag = M
pausetime = 0, 12
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -30) * (map(sparkx.max) := 0), map(sparky) := 0
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -4.5, -6
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
air.velocity = -4.5, -6
fall = 1
fall.recover = 0
down.recover = 0; cannot mash
down.recovertime = 30
forcestand = 1
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
palfx.time = 60
palfx.color = 256
palfx.mul = 192, 0, 64
palfx.sinadd = 64, 0, 16, 4
yaccel = 0.4850
p1sprpriority = sprpriority

[State 3045, Connected]
type = changestate
trigger1 = movecontact || movereversed
value = 3046

[State 3045, End]
type = destroyself
trigger1 = frontedgedist < -180 || backedgedist < -180


;----- Hitpause -----
[Statedef 3046]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 3
movehitpersist = 1

[State 3046, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 3046, Total Hits]
type = varadd
trigger1 = 1
var(2) = 1
persistent = 0
ignorehitpause = 1

[State 3046, Successful Hits]
type = mapadd
trigger1 = !time
trigger1 = numtarget
trigger1 = target, gethitvar(frame)
trigger1 = target, gethitvar(ID) = ID
map = "hitcount"
value = 1

[State 3046, HitSound]
type = playsnd
trigger1 = !time
trigger1 = movehit
value = 2, ifelse(numtarget, 7, 0)
channel = 2
ignorehitpause = 1

[State 3046, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 3042
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 3046, End]
type = changestate
trigger1 = map(fireball_lasthit)
value = 3047

[State 3046, Hit More]
type = changestate
trigger1 = time >= ifelse(numtarget, 4, 0)
trigger1 = !map(fireball_lasthit)
value = 3045


;----- Disappear -----
[Statedef 3047]
type = A
physics = N
movetype = I
anim = 3046
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 3047, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3047, Ikemen Dizzy Disabled]
redirectID = target, ID
type = dizzyset
trigger1 = map(fireball_lasthit)
trigger1 = time <= 1
trigger1 = numtarget
trigger1 = roundstate = 2
trigger1 = target, dizzy = 0
trigger1 = target, movetype = H
trigger1 = target, gethitvar(guarded) = 0
trigger1 = target, gethitvar(dizzypoints) = 0; wait 1 frame to see if gethitvar had any effect
trigger1 = target, dizzypoints >= target, dizzypointsmax
trigger1 = target, const(default.enable.dizzy)
trigger1 = target, map(_iksys_dizzyLimit) = 0
trigger1 = map(hitcount) > 0
trigger1 = target, dizzypoints <= (200 * map(hitcount) * root, map(damagescaling))
value = 1
persistent = 0

[State 3047, End]
type = destroyself
trigger1 = !animtime


;RYUU KOKU HADOU KEN
[Statedef 3055]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 3055, Override]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 3055
ignorehitpause = 1

[State 3055, NHB]
type = nothitby
trigger1 = 1
time = -1
value = SCA
ignorehitpause = 1

[State 3055, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - 16 * (gametime % 5), 256
ignorehitpause = 1

[State 3055, Bind]
type = bindtoroot
trigger1 = root, movetype != H
trigger1 = root, stateno = 3050
pos = 74 * (root, const(size.xscale)), -67 * (root, const(size.yscale))
ignorehitpause = 1

[State 3055, Anim]
type = changeanim
trigger1 = anim != 3055
value = 3055

[State 3055, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 3050
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 3055, BGPalFX]
type = bgpalfx
trigger1 = 1
add = -128, -128, -128
time = 2
ignorehitpause = 1

[State 3055, HitSound]
type = playsnd
trigger1 = movehit = 1 || movereversed = 1
value = 2, ifelse(numtarget, 11, 0)
channel = 2
ignorehitpause = 1

[State 3055, Hit]
type = hitdef
trigger1 = !(time % 4)
trigger1 = animelemtime(25) < 0
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 99)
attr = S, HP
damage = 40, 40
dizzypoints = 0
guardpoints = 1000
guard.dist = 320
animtype = Hard
fall.animtype = Hard
hitflag = MAFD
guardflag = M
priority = 4, Hit
pausetime = 0, 2
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 0) * (map(sparkx.max) := p2dist x), map(sparky) := (p2dist y + 0.5 * p2, const(size.head.pos.y))
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -20, -1
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
air.velocity = -20, -1
down.velocity = -20, -1
getpower = 0, 0
givepower = 40, 40
fall = 1
fall.recover = 0
down.recover = 0; cannot mash
down.recovertime = 30
yaccel = 0.4850
p1sprpriority = sprpriority
forcestand = 1

[State 3055, Hit Final]
type = hitdef
trigger1 = animelem = 25
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 99)
attr = S, HP
damage = 40, 40
dizzypoints = 0
guardpoints = 1000
guard.dist = 320
animtype = Diagup
fall.animtype = Diagup
hitflag = MAFD
guardflag = M
priority = 4, Hit
pausetime = 0, 2
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 0) * (map(sparkx.max) := p2dist x), map(sparky) := (p2dist y + 0.5 * p2, const(size.head.pos.y))
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -20, -12
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
air.velocity = -20, -12
down.velocity = -20, -12
getpower = 0, 0
givepower = 40, 40
fall = 1
fall.recover = 0
down.recover = 0; cannot mash
down.recovertime = 30
yaccel = 0.4850
p1sprpriority = sprpriority
forcestand = 1

[State 3055, Ikemen Guard Break Disabled]
redirectID = target, ID
type = selfstate
trigger1 = movecontact = [1, 2]
trigger1 = numtarget
trigger1 = target, time <= 1
trigger1 = target, guardbreak = 0
trigger1 = target, stateno = [150, 153]
trigger1 = target, const(default.enable.guardbreak)
trigger1 = target, gethitvar(guardpoints) = 0; wait 1 frame to see if gethitvar had any effect
trigger1 = target, guardpoints >= target, guardpointsmax
value = const(stateguardbreakhit)
persistent = 0

[State 3055, End]
type = changestate
trigger1 = !animtime
trigger2 = root, movetype = H
trigger3 = root, stateno != 3050 || root, anim != 3050
value = 3056


[Statedef 3056]
type = A
physics = N
movetype = I
anim = 3056
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 3056, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3056, BGPalFX]
type = bgpalfx
trigger1 = !time
add = -128, -128, -128
sinadd = 128, 128, 128, 120
time = 30

[State 3056, End]
type = destroyself
trigger1 = !animtime


;CLOUD
[Statedef 3215]
physics = N
anim = 3215
sprpriority = 4

[State 3215, Pos]
type = posadd
trigger1 = !time
y = -screenpos y - 20

[State 3215, Bind]
type = posset
trigger1 = var(0) <= 2
x = root, pos x

[State 3215, Bind]
type = posset
trigger1 = var(0) = 2
y = -180

[State 3215, Vel]
type = velset
trigger1 = !time
trigger1 = var(0) := 1
y = (pos y + 180) / -57.9

[State 3215, Anim]
type = changeanim
trigger1 = anim = 3215
trigger1 = root, anim = [3201, 3202]
trigger1 = var(0) := 2
value = 3216

[State 3215, Vel]
type = velset
trigger1 = var(0) = 2
y = 0

[State 3215, Vel]
type = velset
trigger1 = anim = 3216
trigger1 = root, anim != [3201, 3202]
trigger1 = var(0) := 3
y = -2

[State 3215, Rain]
type = explod
trigger1 = var(0) = 2 && !numexplod(3217)
anim = 3217
ID = 3217
sprpriority = 3
postype = p1
facing = 1
pos = 0, -pos y
bindtime = -1
removetime = 300
trans = addalpha
alpha = 128, 128

[State 3215, Rain]
type = removeexplod
trigger1 = var(0) = 3

[State 3215, Sound Loop]
type = playsnd
trigger1 = var(0) = 2
value = 6, 16
channel = 0
lowpriority = 1

[State 3215, Sound]
type = stopsnd
trigger1 = var(0) != 2
channel = 0

[State 3215, End]
type = destroyself
trigger1 = var(0) = 3
trigger1 = vel y < 0
trigger1 = pos y <= -260


;BAG
[Statedef 6000]
physics = N
anim = 6000
sprpriority = 0

[State 6000, Wait]
type = changeanim
trigger1 = roundstate = 0
value = anim

[State 6000, Bind 1]
type = bindtoroot
trigger1 = root, anim = 355
trigger1 = root, animelemtime(1) >= 0 && root, animelemtime(4) < 0
pos = 54, -48

[State 6000, Bind 4]
type = bindtoroot
trigger1 = root, anim = 355
trigger1 = root, animelemtime(4) >= 0 && root, animelemtime(5) < 0
pos = 34, -47

[State 6000, Bind 5]
type = bindtoroot
trigger1 = root, anim = 355
trigger1 = root, animelemtime(5) >= 0 && root, animelemtime(6) < 0
pos = 26, -46

[State 6000, Bind 6]
type = bindtoroot
trigger1 = root, anim = 355
trigger1 = root, animelemtime(6) >= 0 && root, animelemtime(7) < 0
pos = 0, -43

[State 6000, Bind 7]
type = bindtoroot
trigger1 = root, anim = 355
trigger1 = root, animelem = 7
pos = -20, -40

[State 6000, Accel]
type = veladd
trigger1 = root, anim != 355
trigger2 = root, animelemtime(7) >= 0
y = 0.5

[State 6000, Vel]
type = velmul
trigger1 = root, anim != 355
trigger2 = root, animelemtime(7) >= 0
x = 0.85

[State 6000, Vel]
type = velset
trigger1 = root, anim != 355
trigger2 = root, animelemtime(7) >= 0
x = -3 - (random / 500.0)
y = 0 + (random / 1000.0)
persistent = 0

[State 6000, Layer]
type = sprpriority
trigger1 = root, anim = 355
trigger1 = root, animelemtime(7) < 0
value = (root, sprpriority) + 1

[State 6000, Layer]
type = sprpriority
trigger1 = root, anim != 355
trigger2 = root, animelemtime(7) >= 0
value = -3

[State 6000, End]
type = changestate
trigger1 = vel y > 0
trigger1 = (pos y + 6) > -vel y
trigger1 = p2name != "Shining Force 2 Kraken" && p4name != "Shining Force 2 Kraken" && p6name != "Shining Force 2 Kraken" && p8name != "Shining Force 2 Kraken"
trigger1 = p3name != "Shining Force 2 Kraken" && p5name != "Shining Force 2 Kraken" && p7name != "Shining Force 2 Kraken"
trigger1 = p2name != "Sky Chase" && p4name != "Sky Chase" && p6name != "Sky Chase" && p8name != "Sky Chase"
trigger1 = p3name != "Sky Chase" && p5name != "Sky Chase" && p7name != "Sky Chase"
value = 6001

[State 6000, Sink]
type = destroyself
trigger1 = time >= 180
trigger1 = screenpos y > gameheight


;--- GROUND ---
[Statedef 6001]
physics = S
anim = ifelse(random < 750, 6001, 6002)
sprpriority = -3
velset = vel x, 0

[State 6001, Stop]
type = posset
trigger1 = 1
y = -6

[State 6001, Sound]
type = playsnd
trigger1 = !time
trigger2 = anim = 6003
trigger2 = animelem = 3
value = 6, 2

[State 6001, Dust]
type = explod
trigger1 = !time
anim = 7102
ID = 7102
sprpriority = -4
postype = p1
pos = -2, 0
scale = 0.25, 0.25
ownpal = 1

[State 6001, Fall]
type = changeanim
triggerall = anim = 6001
triggerall = random < 250
triggerall = animelemtime(2) > 0
trigger1 = root, movetype = H
trigger1 = (rootdist x = [-30, 30]) && (rootdist y = [-30, 30])
trigger2 = numenemy
trigger2 = p2movetype = H
trigger2 = (p2dist x = [-30, 30]) && (p2dist y = [-30, 30])
trigger3 = numpartner
trigger3 = partner, movetype = H; could use a "partnernear" trigger
trigger3 = abs(partner, pos x - pos x) <= 30 && abs(partner, pos y - pos y) <= 30
trigger4 = screenpos x = [-140, 140]
trigger4 = envshakevar(ampl) * envshakevar(freq) > 480
value = 6003


;PURPLE FLAMES
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
trigger1 = playerID(map(target)), stateno = 4160; Metsu Shoryuken
trigger2 = playerID(map(target)), stateno = [3320, 3322]; Kaze no Ken

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

[State 8150, Turn]
type = turn
trigger1 = playerIDexist(map(target))
trigger1 = facing != (playerID(map(target)), facing)

[State 8150, Sound]
type = playsnd
trigger1 = playerIDexist(map(target))
trigger1 = playerID(map(target)), hitshakeover
value = 6, 20
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


;RED FLAMES
[Statedef 8151]
type = A
velset = 0, 0
anim = 9999

[State 8151, Timer]
type = null
trigger1 = time
trigger1 = map(timer) := (map(timer) - 1)

[State 8151, End]
type = destroyself
trigger1 = map(timer) <= 0
trigger2 = !playerIDexist(map(target))
trigger3 = time > 0
trigger3 = playerID(map(target)), palfxvar(time) = 0

[State 8151, End]
type = destroyself
triggerall = playerIDexist(map(target))
triggerall = playerID(map(target)), movetype = H
triggerall = playerID(map(target)), incustomstate
triggerall = playerID(map(target)), gethitvar(playerno) = playerno
trigger1 = playerID(map(target)), stateno = 4160; Metsu Shoryuken
trigger2 = playerID(map(target)), stateno = [3320, 3322]; Kaze no Ken

[State 8151, Pos]
type = posset
trigger1 = playerIDexist(map(target))
x = ceil(playerID(map(target)), pos x)
y = ceil(playerID(map(target)), pos y) + (playerID(map(target)), const(size.mid.pos.y))

[State 8151, Pos]
type = posset
trigger1 = playerIDexist(map(target))
trigger1 = playerID(map(target)), statetype = L || (playerID(map(target)), anim = [5080, 5119])
trigger1 = playerID(map(target)), stateno != [5020, 5050]
x = ceil(playerID(map(target)), pos x)
y = ceil(playerID(map(target)), pos y) - 20

[State 8151, Turn]
type = turn
trigger1 = playerIDexist(map(target))
trigger1 = facing != (playerID(map(target)), facing)

[State 8151, Sound]
type = playsnd
trigger1 = playerIDexist(map(target))
trigger1 = playerID(map(target)), hitshakeover
value = 6, 20
persistent = 0

[State 8151, Flames]
type = explod
trigger1 = playerIDexist(map(target))
anim = 8151
sprpriority = playerID(map(target)), sprpriority + 1
postype = p1
pos = 0, 0
random = 40, 40
vel = (random / 1000.0), -2.0 - (random / 500.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
scale = 0.5, 0.5
ownpal = 1

[State 8151, Flames]
type = explod
trigger1 = playerIDexist(map(target))
anim = 8151
sprpriority = playerID(map(target)), sprpriority - 1
postype = p1
pos = 0, 0
random = 60, 60
vel = (random / 1000.0), -2.0 - (random / 500.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
scale = 0.5, 0.5
ownpal = 1


;SHOCK
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
trigger1 = playerID(map(target)), stateno = 4160; Metsu Shoryuken
trigger2 = playerID(map(target)), stateno = [3320, 3322]; Kaze no Ken

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
scale = 0.15, 0.15
bindtime = -1
ownpal = 1


;KAZE NO KEN SHOCKWAVE
[Statedef 3315]
physics = N
velset = 0, 0
anim = 9999

[State 3315, Energy]
type = explod
trigger1 = !time
anim = 3315
ID = 3315
sprpriority = -1
postype = p1
removetime = 16
pausemovetime = -1
supermovetime = -1

[State 3315, Fade]
type = modifyexplod
trigger1 = 1
ID = 3315
scale = 0.125 + time * 0.0875, 0.5 - (0.050 * time)

[State 3315, Safety]
type = removeexplod
trigger1 = time >= 10

[State 3315, End]
type = destroyself
trigger1 = !numexplod


;DUST
;----- Jump -----
[Statedef 7100]
physics = N
velset = 0, 0
anim = 9999

[State 7100, Pos]
type = posset
trigger1 = !time
y = 0

[State 7100, Bind]
type = bindtoparent
trigger1 = time

[State 7100, Dust]
type = explod
trigger1 = !time
anim = 7100
ID = 7100
sprpriority = 3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1

[State 7100, Dust]
type = explod
trigger1 = !time || time = 2 || time = 6
anim = 7101
ID = 7100
sprpriority = 3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1

[State 7100, End]
type = destroyself
trigger1 = !numexplod
trigger2 = time >= 60


;----- Dash -----
[Statedef 7104]
type = A
anim = 9999
velset = 0, 0
sprpriority = 5

[State 7104, Pos]
type = posset
trigger1 = !time = 0
y = 0

[State 7104, Dust]
type = explod
trigger1 = time = 0 || time = 3 || time = 6
anim = 7104
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

[State 7104, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 0.1 + (0.025 * time), 0.1 + (0.025 * time)
trans = addalpha
alpha = 256 - (16 * time), 256

[State 7104, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 0.1 + (0.025 * (time -3)), 0.1 + (0.025 * (time -3))
trans = addalpha
alpha = 256 - (16 * (time -3)), 256

[State 7104, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 0.1 + (0.025 * (time -6)), 0.1 + (0.025 * (time -6))
trans = addalpha
alpha = 256 - (16 * (time -6)), 256

[State 7104, End]
type = removeexplod
trigger1 = time >= 22

[State 7104, End]
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


;----- Impact Small -----
[Statedef 8111]
type = A
anim = 9999
velset = 0, 0
sprpriority = 5

[State 8111, Pos]
type = posset
trigger1 = !time
y = 0

[State 8111, FX Ground]
type = explod
trigger1 = !time
anim = 8110
ID = 1
postype = p1
removetime = 8
sprpriority = -10
pausemovetime = -1
supermovetime = -1

[State 8111, FX Back]
type = explod
trigger1 = !time
anim = 8111
ID = 2
postype = p1
removetime = 8
sprpriority = 2
pausemovetime = -1
supermovetime = -1

[State 8111, Scale]
type = modifyexplod
trigger1 = numexplod
scale = 0.125 + (0.015625 * time), 0.125 + (0.015625 * time)
trans = addalpha
alpha = 256 - (32 * time), 256

[State 8111, End]
type = removeexplod
trigger1 = time >= 8

[State 8111, End]
type = destroyself
trigger1 = !numexplod


;====================<POWER CHARGE>====================
;----- MAIN FX -----
[Statedef 7240]
type = A
physics = N
movetype = I
anim = 9999
ctrl = 0
velset = 0, 0

[State 7240, Bind]
type = bindtoroot
trigger1 = root, stateno = 740
trigger1 = root, anim = 740
pos = -9, 0

[State 7240, Sound]
type = playsnd
trigger1 = !time
value = 7, 4
channel = 0

[State 7240, Sound]
type = playsnd
trigger1 = 1
value = 7, 5
channel = 1
lowpriority = 1
volumescale = ifelse(time < 180, (time * 0.277), 50)

[State 7240, Aura]
type = explod
trigger1 = !numexplod(7240)
ID = 7240
anim = 7240
sprpriority = 3
postype = p1
bindtime = -1
removetime = -1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 7240, Dust]
type = explod
trigger1 = !(time % 6)
anim = 7105
sprpriority = -3
postype = p1
pos = 0, -pos y
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 7240, FX]
type = modifyexplod
trigger1 = numexplod(7240)
trigger1 = root, time <= 60
ID = 7240
scale = 0.5, 0.125

[State 7240, FX]
type = modifyexplod
trigger1 = numexplod(7240)
trigger1 = root, time = [61, 119]
ID = 7240
scale = 0.5, 0.1 + ((root, time - 60) * 0.00625)

[State 7240, FX]
type = modifyexplod
trigger1 = numexplod(7240)
trigger1 = root, time >= 120
ID = 7240
scale = 0.5, 0.5

[State 7240, End]
type = stopsnd
trigger1 = root, stateno != 740
trigger2 = root, movetype = H
channel = 0

[State 7240, End]
type = stopsnd
trigger1 = root, stateno != 740
trigger2 = root, movetype = H
channel = 1

[State 7240, End]
type = removeexplod
trigger1 = root, stateno != 740
trigger2 = root, movetype = H

[State 7240, End]
type = destroyself
trigger1 = root, stateno != 740
trigger2 = root, movetype = H


;----- Particles -----
[Statedef 7241]
type = A
physics = N
movetype = I
anim = 9999
ctrl = 0
velset = 0, 0

[State 7241, Bind]
type = bindtoroot
trigger1 = !(time % 8)
pos = ceil(-160 + (random / 3.125)), ceil(160 - (random / 3.125))

[State 7241, Particle]
type = explod
trigger1 = (time % 8) = 1
anim = 7241
sprpriority = ifelse(random < 750, 5, -1)
postype = p1
vel = ((rootdist x -11) / 32.0), ((rootdist y -61) / 32.0)
scale = ifelse(random < 500, 0.5, -0.5), ifelse(random < 500, 0.5, -0.5)
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 7241, End]
type = removeexplod
trigger1 = root, stateno != 740

[State 7241, End]
type = destroyself
trigger1 = root, stateno != 740


;====================<ZERO COUNTER PAUSE>====================
[Statedef 7250]
type = A
physics = N
movetype = I
anim = 9999
ctrl = 0
velset = 0, 0

[State 7250, BG PalFX]
type = bgpalfx
trigger1 = 1
time = 1
color = 16 * time
mul = 16 * time, 16 * time, 16 * time

[State 7250, Circle]
type = explod
trigger1 = !time
anim = 7250
ID = 1
sprpriority = 3
postype = p1
removetime = 16
supermovetime = -1
ownpal = 1

[State 7250, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 0.0556 * (time + 1), 0.0556 * (time + 1)
trans = addalpha
alpha = 256 - (16 * time), 256

[State 7250, Lightning]
type = explod
trigger1 = !time
anim = 7251
ID = 2
sprpriority = -2
postype = p1
pos = 0, -pos y
supermovetime = -1
ownpal = 1

[State 7250, End]
type = destroyself
trigger1 = time >= 16


;CUSTOM COMBO PAUSE=============================
[Statedef 7260]
type = A
physics = N
movetype = I
anim = 7260
ctrl = 0
velset = 0, 0
sprpriority = 5

[State 7260, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 7260, BG PalFX]
type = bgpalfx
trigger1 = time <= 25
time = 1
mul = 128, 128, 128

[State 7260, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)

[State 7260, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 7260, Scale]
type = angledraw
trigger1 = time < 8
scale = 0.0556 * (time + 1), 0.0556 * (time + 1)

[State 7260, Scale]
type = angledraw
trigger1 = time >= 8
scale = 0.5, 0.5

[State 7260, Trans]
type = trans
trigger1 = time < 16
trans = addalpha
alpha = 256, 256

[State 7260, Trans]
type = trans
trigger1 = time >= 16
trans = addalpha
alpha = ceil(256 - 25.6 * (time -16)), 256

[State 7260, Lines]
type = explod
trigger1 = !time
anim = 7261
ID = 1
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 90 * (random % 4)
removetime = 16
supermovetime = -1

[State 7260, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 2 -(0.125 * time), 2 -(0.125 * time)
trans = addalpha
alpha = ifelse(time < 3, 64 * (time + 1), 256), 256

[State 7260, Circle]
type = explod
trigger1 = time = 16
anim = 7262
ID = 2
sprpriority = 5
postype = p1
removetime = 32
supermovetime = -1

[State 7260, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = (0.1 * (time - 16)), (0.1 * (time - 16))
trans = addalpha
alpha = ceil(256 - 25.6 * (time - 16)), 256

[State 7260, Safety]
type = removeexplod
trigger1 = time >= 26

[State 7260, End]
type = destroyself
trigger1 = time >= 26


;SUPERPAUSE FX
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
anim = ifelse((root, var(1) = 3), 8527, ifelse((root, var(1) = 2), 8526, 8525))
ID = 20
sprpriority = -16
postype = back
bindtime = -1
removetime = 40
supermovetime = -1

[State 8520, Portrait]
type = explod
trigger1 = !time
anim = ifelse((root, var(1) = 3), 8527, ifelse((root, var(1) = 2), 8526, 8525))
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
type = removeexplod
trigger1 = numexplod(21) && time >= 16
ID = 21

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(20) && time >= 32
ID = 20
postype = back
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 100, 120)
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


;SUPER FINISH
[Statedef 8600]
type = A
velset = 0, 0
anim = 9999

[State 8600, Sound]
type = playsnd
trigger1 = !time
value = 7, 7
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
trigger1 = root, map(superfinish) = 3200
var(0) = 3

[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, map(superfinish) = 3100
var(0) = 4

[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, map(superfinish) = 3020
var(0) = 5

[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, map(superfinish) = 3300
var(0) = 6

[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, map(superfinish) = 4100
var(0) = 7

[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, map(superfinish) = 3140
var(0) = 8

[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, map(superfinish) = 4150
var(0) = 9

[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, map(superfinish) = 3040
var(0) = 10

[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, map(superfinish) = 3050
var(0) = 11

[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, map(superfinish) = 3180
var(0) = 12

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
anim = 8609 + var(0)
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
anim = 8609 + var(0)
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

[State 8600, Stop Shake]
type = envshake
trigger1 = time <= 24
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


;KANJI FLAMES B.G.
[Statedef 8690]
physics = N
velset = 0, 0
anim = 9999

[State 8690, Sound]
type = playsnd
trigger1 = !time
value = 7, 8

[State 8690, Black]
type = bgpalfx
trigger1 = time < 120
time = 2
add = -255, -255, -255

[State 8690, Black]
type = bgpalfx
trigger1 = time = 120
time = 60
add = -255, -255, -255
sinadd = 255, 255, 255, 240

[State 8690, Fade]
type = modifyexplod
trigger1 = time >= 120
trans = addalpha
alpha = 256 - floor(4.267 * (time - 120)), 256

[State 8690, Kanji]
type = explod
trigger1 = !time
anim = 8690
ID = 8690
under = 1
postype = left
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 90, 120)
scale = 0.5 * (1.3333333 * gameheight / gamewidth), 0.5 * (1.3333333 * gameheight / gamewidth)
bindtime = -1

[State 8690, Shrink]
type = modifyexplod
trigger1 = numexplod(8690)
trigger1 = time < 6
ID = 8690
scale = (5.5 - time) * (1.3333333 * gameheight / gamewidth), (5.5 - time) * (1.3333333 * gameheight / gamewidth)

[State 8690, Shrink]
type = modifyexplod
trigger1 = numexplod(8690)
trigger1 = time >= 6
ID = 8690
scale = 0.5 * (1.3333333 * gameheight / gamewidth), 0.5 * (1.3333333 * gameheight / gamewidth)

[State 8690, Flame BG Fake Afterimage]
type = explod
trigger1 = time = 0
trigger2 = time = 2
trigger3 = time = 4
anim = 8691
under = 1
postype = left
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 90, 120)
scale = 1, 1.3333333 * (gameheight / gamewidth)
trans = addalpha
alpha = 128, 256
bindtime = -1
removetime = 600
pausemovetime = 300
supermovetime = 300

[State 8690, Assert]
type = assertspecial
trigger1 = time < 120
flag = nomusic
flag2 = globalnoshadow

[State 8690, Assert]
type = assertspecial
trigger1 = 1
flag = noFG
flag2 = nobardisplay

[State 8690, Safety]
type = removeexplod
trigger1 = time >= 180

[State 8690, End]
type = destroyself
trigger1 = time >= 180


;CAMERA CONTROL
[Statedef 8999]
physics = N
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
