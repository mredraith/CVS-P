; ______________________________
;| Dan by Phantom.of.the.Server |
; 
;
;HELPER STATES=
;

;GADOU KEN=
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
stateno = 1007
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

; Damage Scaling was here

[State 1005, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 1000
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 1005, Time Var]
type = varadd
trigger1 = time >= 1
var(1) = 1

[State 1005, Vel]
type = velset
trigger1 = 1
x = ifelse(map(strength) = 2, 4.0, ifelse(map(strength) = 1, 2.0, 1.0))
y = 0

[State 1005, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1005, HitSound]
type = playsnd
trigger1 = movehit = 1 || movereversed = 1
value = 2, ifelse(numtarget, 7, 0)
channel = 2
ignorehitpause = 1

[State 1005, Hit]
type = hitdef
trigger1 = 1
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
priority = 4, Hit
attr = S, SP
damage = 70, 18
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
ground.slidetime = 15
ground.velocity = -7.51, 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 13
air.velocity = -5.20, -5.90
air.fall = 1
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
forcestand = 1
fall.recover = 1
fall.recovertime = 120

[State 1005, Getpower]
type = poweradd
trigger1 = movecontact = 1
trigger1 = numtarget
value = ifelse(moveguarded, 25, 50) * root, map(meterscaling)
ignorehitpause = 1

[State 1005, Connected]
type = changestate
trigger1 = movecontact || movereversed
value = 1007
ignorehitpause = 1

[State 1005, End]
type = changestate
trigger1 = var(1) >= 300
value = 1006
ignorehitpause = 1

[State 1005, End]
type = destroyself
trigger1 = frontedgedist < -80 || backedgedist < -80


;----- Fade -----
[Statedef 1006]
type = A
physics = N
movetype = I
anim = 1006
ctrl = 0
velset = 0, 0
sprpriority = 3
movehitpersist = 1

[State 1006, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1006, End]
type = destroyself
trigger1 = !animtime


;----- Contact -----
[Statedef 1007]
type = A
physics = N
movetype = I
anim = 1007
velset = 0, 0
ctrl = 0
sprpriority = 3
movehitpersist = 1

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


;EX GADOU KEN=
[Statedef 1015]
type = S
physics = N
movetype = A
anim = 1015
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 1015, Override]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1017
ignorehitpause = 1

[State 1015, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

; Damage Scaling was here

[State 1015, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 1010
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 1015, Time Var]
type = varadd
trigger1 = time
var(1) = 1

[State 1015, Vel]
type = velset
trigger1 = 1
x = 6
y = 0

[State 1015, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1015, HitSound]
type = playsnd
trigger1 = movehit = 1 || movereversed = 1
value = 2, ifelse(numtarget, 7, 0)
channel = 2
ignorehitpause = 1

[State 1015, Hit]
type = hitdef
trigger1 = 1
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 2)
priority = 4, Hit
attr = S, SP
damage = 80, 20
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
ground.slidetime = 15
ground.velocity = -7.51, 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 13
air.velocity = -5.20, -5.90
guard.velocity = -7.51
getpower = 0, 0
givepower = 40, 40
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
forcestand = 1

[State 1015, Connected]
type = changestate
trigger1 = movecontact || movereversed
value = 1017
ignorehitpause = 1

[State 1015, End]
type = changestate
trigger1 = var(1) >= 180
value = 1016

[State 1015, End]
type = destroyself
trigger1 = frontedgedist < -80 || backedgedist < -80


;----- Fade -----
[Statedef 1016]
type = A
physics = N
movetype = I
anim = 1016
ctrl = 0
velset = 0, 0
sprpriority = 3
movehitpersist = 1

[State 1016, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1016, End]
type = destroyself
trigger1 = !animtime


;----- Contact -----
[Statedef 1017]
type = A
physics = N
movetype = I
anim = 1017
velset = 0, 0
ctrl = 0
sprpriority = 3
movehitpersist = 1

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


;PREMIUM SIGN=
[Statedef 1305]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 1305, Override]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1306
ignorehitpause = 1

[State 1305, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, AA, AP
ignorehitpause = 1

[State 1305, Strength]
type = mapset
trigger1 = !time
map = "strength"
value = root, map(strength)

[State 1305, Anim]
type = changeanim
trigger1 = anim != [1305, 1307]
value = ifelse(map(strength) = 2, 1307, ifelse(map(strength) = 1, 1306, 1305))

; Damage Scaling was here

[State 1305, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 1300
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 1305, Vel]
type = velset
trigger1 = !time
x = ifelse(map(strength) = 2, 5, ifelse(map(strength) = 1, 4.5, 4))
y = ifelse(map(strength) = 2, 3, ifelse(map(strength) = 1, -2, -1))

[State 1305, Accel]
type = veladd
trigger1 = vel y = [-10, 10]
y = ifelse(map(strength) = 2, -0.25, ifelse(map(strength) = 1, 0.13, 0.25))

[State 1305, HitSound]
type = playsnd
trigger1 = movehit = 1 || movereversed = 1
value = 2, ifelse(numtarget, 4, 0)
channel = 2
ignorehitpause = 1

[State 1305, Hit]
type = hitdef
trigger1 = 1
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 3)
ID = 1305
attr = S, SP
priority = 1, Hit
damage = 30, 8
dizzypoints = 200 * !(root, map(customcombo))
guard.dist = const(size.proj.attack.dist)
animtype = Medium
hitflag = MAF
guardflag = MA
pausetime = 0, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -20) * (map(sparkx.max) := 20), map(sparky) := 0
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -7.51, 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.velocity = -4, -4
getpower = 0, 0
givepower = 40, 40
envshake.time = 8
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -1, 1)
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
forcestand = 1

[State 1305, Getpower]
type = poweradd
trigger1 = movecontact = 1
trigger1 = numtarget
value = ifelse(moveguarded, 25, 50) * root, map(meterscaling)
ignorehitpause = 1

[State 1305, Connected]
type = changestate
trigger1 = movecontact || movereversed
value = 1306
ignorehitpause = 1

[State 1305, End]
type = changestate
trigger1 = pos y >= 0
value = 1306

[State 1305, End]
type = destroyself
trigger1 = frontedgedist < -80 || backedgedist < -80


;----- Contact -----
[Statedef 1306]
type = A
physics = N
movetype = I
velset = -vel x, vel y
ctrl = 0
sprpriority = 3
movehitpersist = 1

[State 1306, Custom KO]
type = targetstate
trigger1 = movecontact = [1, 2]
trigger1 = numtarget(1305)
trigger1 = target(1305), alive = 0
trigger1 = target(1305), stateno = [5000, 5011]
value = 1111305
ID = 1305
ignorehitpause = 1

[State 1306, EX Custom KO]
type = targetstate
trigger1 = movecontact = [1, 2]
trigger1 = numtarget(1325)
trigger1 = target(1325), alive = 0
trigger1 = target(1325), stateno = [5000, 5011]
value = 1111305
ID = 1325
ignorehitpause = 1

[State 1306, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = hitoverridden || prevmovetype = H
value = 2, 0
channel = 2
volumescale = 33

[State 1306, Accel]
type = veladd
trigger1 = vel y <= 10
y = 0.25

[State 1306, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1307


;----- On the floor -----
[Statedef 1307]
type = A
physics = N
movetype = I
velset = 0, 0
ctrl = 0
sprpriority = -100 + const(size.height)
movehitpersist = 1

[State 1307, ProjContact Var]
type = mapset
trigger1 = 1
map = "projcontact"
value = 0

[State 1307, Anim]
type = varrandom
trigger1 = !time
v = 0
range = 1, 4

[State 1307, Anim]
type = changeanim
trigger1 = 1
value = 1308
elem = var(0)

[State 1307, Anim]
type = varrandom
trigger1 = !time
v = 1
range = -4, 4

[State 1307, Pos]
type = posset
trigger1 = 1
y = var(1)

[State 1307, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 1307, End]
type = changestate
trigger1 = const(size.height) >= 7
value = 1308

[State 1307, End]
type = destroyself
trigger1 = frontedgedist < -40 || backedgedist < -40


;----- Fadeout -----
[Statedef 1308]
type = A
physics = N
movetype = I
velset = 0, 0
ctrl = 0
sprpriority = -100 + const(size.height)
movehitpersist = 1

[State 1308, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 1308, Anim]
type = changeanim
trigger1 = 1
value = 1308
elem = var(0)

[State 1308, fadeout]
type = trans
trigger1 = 1
trans = addalpha
alpha = ceil(256 -12.8 * time), ceil(12.8 * time)

[State 1308, End]
type = destroyself
trigger1 = time >= 20


;EX PREMIUM SIGN=
[Statedef 1325]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 1325, Override]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1306
ignorehitpause = 1

[State 1325, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, AA, AP
ignorehitpause = 1

[State 1325, Anim]
type = changeanim
trigger1 = anim != 1307
value = 1307

; Damage Scaling was here

[State 1325, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 1320
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 1325, Accel]
type = veladd
trigger1 = abs(vel x) < 10
x = -0.125

[State 1325, Accel]
type = veladd
trigger1 = abs(vel y) < 10
y = 0.125

[State 1325, Vel]
type = velset
trigger1 = !time
x = 6.0
y = -5.0

[State 1325, HitSound]
type = playsnd
trigger1 = movehit = 1 || movereversed = 1
value = 2, ifelse(numtarget, 4, 0)
channel = 2
ignorehitpause = 1

[State 1325, Hit]
type = hitdef
trigger1 = 1
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 3)
ID = 1325
attr = S, SP
priority = 1, Hit
damage = 30, 8
dizzypoints = 200 * !(root, map(customcombo))
guard.dist = const(size.proj.attack.dist)
animtype = Medium
hitflag = MAF
guardflag = MA
pausetime = 0, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -20) * (map(sparkx.max) := 20), map(sparky) := 0
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = ifelse(vel x < 0, 7.51, -7.51), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.velocity = -4, -4
getpower = 0, 0
givepower = 40, 40
envshake.time = 8
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -1, 1)
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
forcestand = 1

[State 1325, Connected]
type = changestate
trigger1 = movecontact || movereversed
value = 1306
ignorehitpause = 1

[State 1325, End]
type = changestate
trigger1 = pos y >= 0
value = 1306

[State 1325, End]
type = destroyself
trigger1 = frontedgedist < -320 || backedgedist < -320


;SHINKUU GADOU KEN=
[Statedef 3005]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 3005, Hit Number]
type = varadd
trigger1 = 1
var(2) = 1
persistent = 0
ignorehitpause = 1

[State 3005, Override]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = ifelse(var(2) < 3, 3005, 3007)
ignorehitpause = 1

[State 3005, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3005, Anim]
type = changeanim
trigger1 = anim != 3005
value = 3005

; Damage Scaling was here

[State 3005, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 3000
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 3005, Vel]
type = velset
trigger1 = 1
x = 4
y = 0

[State 3005, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3005, HitSound]
type = playsnd
trigger1 = movehit = 1 || movereversed = 1
value = 2, ifelse(numtarget, 7, 0)
channel = 2
ignorehitpause = 1

[State 3005, Freeze]
type = posfreeze
trigger1 = time <= ifelse(numtarget, 4, 0)
value = 1

[State 3005, Hit]
type = hitdef
trigger1 = time >= ifelse(numtarget, 4, 0)
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 3)
priority = 4, Hit
attr = S, HP
damage = 60, 15
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
sparkxy = -10 + 0 * (map(sparkx.min) := -40) * (map(sparkx.max) := 0), map(sparky) := 0
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = ifelse(var(2) < 3, -10.52, -4.17), ifelse(var(2) < 3, 0, -6.76)
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.velocity = -4.17, -6.76
guard.velocity = -10.52
fall = (var(2) >= 3)
air.fall = 1
fall.recover = 0
down.recover = 1
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
forcestand = 1

[State 3005, Connected]
type = changestate
trigger1 = movecontact || movereversed
value = ifelse(var(2) < 3, 3005, 3007)
ignorehitpause = 1

[State 3005, Time Var]
type = varadd
trigger1 = time > (prevstateno = 3005) * 4
var(1) = 1

[State 3005, End]
type = changestate
trigger1 = var(1) >= 300
value = 3006
ignorehitpause = 1

[State 3005, End]
type = destroyself
trigger1 = frontedgedist < -120 || backedgedist < -120


;----- Fade -----
[Statedef 3006]
type = A
physics = N
movetype = I
anim = 3006
ctrl = 0
velset = 0, 0
sprpriority = 3
movehitpersist = 1

[State 3006, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3006, End]
type = destroyself
trigger1 = !animtime


;----- Contact -----
[Statedef 3007]
type = A
physics = N
movetype = I
anim = 3007
velset = 0, 0
ctrl = 0
sprpriority = 3
movehitpersist = 1

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


;GADOU SHOUKOUKEN=
[Statedef 3405]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 3405, Hit Number]
type = varadd
trigger1 = 1
var(2) = 1
persistent = 0
ignorehitpause = 1

[State 3405, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3405, Override]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = ifelse(var(2) < 6, 3405, 3407)
ignorehitpause = 1

[State 3405, Anim]
type = changeanim
trigger1 = anim != 3405
value = 3405

; Damage Scaling was here

[State 3405, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 3402
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 3405, Time Var]
type = varadd
trigger1 = time >= (prevstateno = 3405) * 8
var(1) = -1

[State 3405, Max Time Var]
type = varset
trigger1 = !time
trigger1 = !prevstateno
var(1) = 20 + root, map(shoukouken_charge)

[State 3405, Vel]
type = velset
trigger1 = 1
x = 2
y = 0

[State 3405, Size]
type = angledraw
trigger1 = time < 4
trigger1 = !prevstateno
scale = 0.5 + (0.125 * time), 0.5 + (0.125 * time)

[State 3405, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3405, HitSound]
type = playsnd
trigger1 = movehit = 1 || movereversed = 1
value = 2, ifelse(numtarget, 7, 0)
channel = 2
ignorehitpause = 1

[State 3405, Freeze]
type = posfreeze
trigger1 = time <= ifelse(numtarget, 6, 0)
value = 1

[State 3405, Hit]
type = hitdef
trigger1 = time >= ifelse(numtarget, 6, 0)
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := (var(2) + 3))
priority = 4, Hit
attr = S, HP
damage = 40, 10
dizzypoints = 0
guard.dist = 320
animtype = Hard
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = M
pausetime = 0, 12
guard.pausetime = 0, 12
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -30) * (map(sparkx.max) := 0), map(sparky) := 0
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
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
air.velocity = -0.75, -4
guard.velocity = -10.52
fall = 0
air.fall = 1
fall.recover = 0
down.recover = 0; cannot mash
down.recovertime = 30
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
p1sprpriority = sprpriority
forcestand = 1

[State 3405, Hit Final]
type = hitdef
trigger1 = var(2) >= 6
trigger1 = time >= ifelse(numtarget, 6, 0)
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := (var(2) + 3))
priority = 4, Hit
attr = S, HP
damage = 50, 13
dizzypoints = 0
guard.dist = 320
animtype = Hard
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = M
pausetime = 0, 12
guard.pausetime = 0, 12
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -30) * (map(sparkx.max) := 0), map(sparky) := 0
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -4.17, -6.76
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
air.velocity = -4.17, -6.76
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
fall.recover = 0
down.recover = 0; cannot mash
down.recovertime = 30
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
p1sprpriority = sprpriority
forcestand = 1

[State 3405, Connected]
type = changestate
trigger1 = movecontact || movereversed
value = ifelse(var(2) < 6, 3405, 3407)
ignorehitpause = 1

[State 3405, End]
type = changestate
trigger1 = var(1) <= 0
value = 3406
ignorehitpause = 1

[State 3405, End]
type = destroyself
trigger1 = frontedgedist < -120 || backedgedist < -120


;----- Fade -----
[Statedef 3406]
type = A
physics = N
movetype = I
ctrl = 0
velset = 0, 0
sprpriority = 3
movehitpersist = 1

[State 3406, NHB]
type = nothitby
trigger1 = 1
time = -1
value = SCA

[State 3406, Trans]
type = trans
trigger1 = time < 20
trans = addalpha
alpha = 256 - (time * 12), 256

[State 3406, Shrink]
type = angledraw
trigger1 = time < 20
scale = 1 - (0.05 * time), 1 - (0.05 * time)

[State 3406, End]
type = destroyself
trigger1 = time >= 20


;----- Contact -----
[Statedef 3407]
type = A
physics = N
movetype = I
anim = 3407
velset = 0, 0
ctrl = 0
sprpriority = 3
movehitpersist = 1

[State 3407, Juggle Reset]
type = rootmapset
trigger1 = root, map(jugglereset) = 0
trigger1 = root, map(juggle_count)
trigger1 = time <= 1
trigger1 = var(2) >= 6
trigger1 = 1 || root, map(jugglereset) := 1
map = "juggle_count"
value = 0
ignorehitpause = 1

[State 3407, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = hitoverridden || prevmovetype = H
value = 2, 0
channel = 2
volumescale = 33

[State 3407, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3407, End]
type = destroyself
trigger1 = !animtime


;TAUNT HIT=
[Statedef 4190]
type = S
physics = N
movetype = A
anim = 4190
ctrl = 0
velset = 0, 0

[State 4190, Override]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 4190
ignorehitpause = 1

[State 4190, NHB]
type = nothitby
trigger1 = 1
time = -1
value = SCA
ignorehitpause = 1

[State 4190, Hit]
type = hitdef
trigger1 = !time
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 99)
priority = 1, Miss
attr = S, HP
damage = 0, 0
dizzypoints = 0
guardpoints = 0
animtype = Light
hitflag = M
guardflag =
pausetime = 0, 0
sparkno = -1 + 0 * (map(sparkno) := -1)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := -1)
sparkxy = -10, 0
hitsound = -1
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.slidetime = 12
ground.hittime = 1 + 12
guard.hittime = (1 + 12) - 6
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 10
guard.slidetime = 10
air.velocity = 0, -6
fall = 0
air.fall = 0
forcenofall = 1
getpower = 0, 0
givepower = 500, 500
yAccel = (0.5 + (ComboCount * 0.03))
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
fall.recover = 1
fall.recovertime = 120
numhits = 0

[State 4190, End]
type = destroyself
trigger1 = !movecontact && !movereversed
trigger1 = time >= 1
trigger2 = movecontact || movereversed
trigger2 = time >= 60
trigger3 = root, stateno = 3300
trigger3 = time >= 1


;SAIKYORYU BOGYO=
[Statedef 1505]
type = A
physics = N
movetype = I
velset = 0, 0
anim = 9999

[State 1505, EX Version]
type = mapset
trigger1 = !time
trigger1 = root, stateno = [1510, 1512]
map = "exversion"
value = 1

[State 1505, Get Attacker ID]
type = mapset
trigger1 = !time
map = "whohitme"
value = root, map(whohitme)

[State 1505, Not Allowed]
type = destroyself
trigger1 = !playerIDexist(map(whohitme))
trigger2 = playerIDexist(map(whohitme))
trigger2 = playerID(map(whohitme)), hitdefattr = SCA, AP

[State 1505, Add Acceleration]
type = mapadd
trigger1 = map(velocity) > 0
map = "velocity"
value = -0.693

[State 1505, Set Velocity]
type = mapset
trigger1 = abs(map(velocity)) < 1
map = "velocity"
value = 0

[State 1505, Set Velocity]; 200 and 100 total distance
type = mapset
trigger1 = !time
map = "velocity"
value = ifelse(map(exversion), 16.319, 11.450)

[State 1505, Apply Velocity]
redirectID = map(whohitme)
type = posadd
trigger1 = playerIDexist(map(whohitme))
x = ifelse(playerID(map(whohitme)), facing = facing, 1, -1) * map(velocity)

[State 1505, Dust FX]
redirectID = map(whohitme)
type = explod
trigger1 = !(gametime % 4)
trigger1 = playerIDexist(map(whohitme))
trigger1 = playerID(map(whohitme)), statetype != A
anim = F 120
postype = p1
pos = 0, 0
ownpal = 1
sprpriority = 5

[State 1505, Sound]
type = playsnd
trigger1 = playerIDexist(map(whohitme))
trigger1 = playerID(map(whohitme)), statetype != A
value = 5, 2
channel = 1
persistent = 0

[State 1505, End]
type = destroyself
trigger1 = abs(map(velocity)) < 1


;OTOKO CHARGE=
[Statedef 4006]
physics = N
velset = 0, 0
anim = 4006
sprpriority = 3

[State 4006, Trans]
type = trans
trigger1 = time < 110
trans = addalpha
alpha = 256 - 32 * (gametime % 4), 256
ignorehitpause = 1

[State 4006, Trans]
type = trans
trigger1 = time >= 110
trans = addalpha
alpha = 250, 256
ignorehitpause = 1

[State 4006, Grow]
type = angledraw
trigger1 = time = [0, 110)
scale = 0.00625 * time, 0.00625 * time
value = -10 * time

[State 4006, Shrink]
type = angledraw
trigger1 = time = [110, 120]
scale = (0.00625 * 110) * (10 - (time - 110)) / 10.0, (0.00625 * 110) * (10 - (time - 110)) / 10.0
value = -10 * time

[State 4006, Sound]
type = playsnd
trigger1 = !time
value = 5, 8

[State 4006, BG PalFX]
type = bgpalfx
trigger1 = time <= 120
trigger1 = root, numexplod(4008) = 0
time = 1
color = 256 -floor(2.13 * time)
mul = (256 -floor(1.06 * time)), (256 -floor(2.13 * time)), (256 -floor(1.06 * time))

[State 4006, Zoom]
type = zoom
trigger1 = root, map(zoom_allowed)
scale = 1.25
lag = 0.99
pos = pos x, 0
stagebound = 1
camerabound = 0
ignorehitpause = 1

[State 4006, Explosion]
type = explod
trigger1 = time = 120
anim = 4005
ID = 4005
postype = p1
pos = 0, 0
scale = 0.5, 0.5
sprpriority = 4
ownpal = 1

[State 4006, End]
type = destroyself
trigger1 = time >= 120
trigger2 = root, stateno != 4010
trigger3 = root, movetype = H


;RED FLAMES=
[Statedef 8150]
type = A
velset = 0, 0
anim = 9999

[State 8150, Player]
type = mapset
trigger1 = !time
trigger1 = ishelper(8150)
trigger1 = parent, numtarget
map = "target"
value = parent, target, ID

[State 8150, Player]
type = mapset
trigger1 = !time
trigger1 = ishelper(8151)
map = "target"
value = root, ID

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
value = 5, 3
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

[State 8150, End]
type = destroyself
trigger1 = ishelper(8150)
trigger1 = time >= 120
trigger2 = ishelper(8151)
trigger2 = time >= 120
trigger3 = time >= 180


;DUST=
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
type = bindtoroot
trigger1 = time

[State 7100, Dust]
type = explod
trigger1 = !time
anim = 7100
ID = 7100
sprpriority = 3
postype = p1
pos = 0, ceil(pos y)
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


;POWER CHARGE=
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
pos = -4, 0

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
pos = -160 + (random / 3.125), 160 - (random / 3.125)

[State 7241, Particle]
type = explod
trigger1 = (time % 8) = 1
anim = 7241
sprpriority = ifelse(random < 750, 5, -1)
postype = p1
vel = ((rootdist x + 2) / 32.0), ((rootdist y - 58) / 32.0)
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


;ZERO COUNTER PAUSE=
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


;CUSTOM COMBO PAUSE=
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
scale = (0.1 * (time -16)), (0.1 * (time -16))
trans = addalpha
alpha = ceil(256 - 25.6 * (time -16)), 256

[State 7260, Safety]
type = removeexplod
trigger1 = time >= 26

[State 7260, End]
type = destroyself
trigger1 = time >= 26


;SUPERPAUSE FX=
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
flag = noBG
flag2 = noFG

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


;SUPER FINISH=
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
trigger1 = root, map(superfinish) = 3100
var(0) = 3

[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, map(superfinish) = 3500
var(0) = 4

[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, map(superfinish) = [3200, 3299]
var(0) = 5

[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, map(superfinish) = 3400
var(0) = 6

[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, map(superfinish) = 4000
var(0) = 7

[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, map(superfinish) = [1300, 1320]
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

[State 8600, End]
type = removeexplod
trigger1 = numexplod
trigger1 = time >= 24
trigger1 = roundstate != 3

[State 8600, End]
type = destroyself
trigger1 = time >= 24
trigger1 = roundstate != 3


;SANDALS=
[Statedef 6005]
type = A
physics = N
movetype = I
ctrl = 0
anim = 6005
sprpriority = 2

[State 6005, Vel]
type = velset
trigger1 = !time
trigger1 = numhelper(6005)
trigger1 = ID = helper(6005), ID
x = 2 + (random / 1000.0)
y = -4 -(random / 500.0)

[State 6005, Vel]
type = velset
trigger1 = !time
trigger1 = numhelper(6005)
trigger1 = ID != helper(6005), ID
x = -1 - (random / 2000.0)
y = -6 -(random / 500.0)

[State 6005, Vel]
type = velset
trigger1 = pos y >= -2
trigger1 = abs(vel y) < 2
y = 0

[State 6005, Pos]
type = posset
trigger1 = vel y = 0
trigger1 = pos y > 0
y = 0

[State 6005, Pos]
type = velmul
trigger1 = !vel y && !pos y
x = 0.8

[State 6005, Pos]
type = playsnd
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 5, 16
persistent = 0

[State 6005, Accel]
type = veladd
trigger1 = 1
y = 0.35

[State 6005, Vel]
type = velmul
trigger1 = vel y > 0
trigger1 = pos y > -vel y
x = -0.5 + (random / 500.0)
y = -0.66

[State 6005, Sound]
type = angleadd
trigger1 = vel y < 0
trigger2 = pos y < -16
value = -15

[State 6005, Sound]
type = angledraw
trigger1 = 1

[State 6005, Fade]
type = trans
trigger1 = time >= 60
trans = addalpha
alpha = ceil(256 -8 * (time -60)), ceil(8 * (time -60))

[State 6005, End]
type = destroyself
trigger1 = time >= 92


;CAMERA CONTROL=
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
