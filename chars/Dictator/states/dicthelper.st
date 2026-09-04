; _______________________________
;| Vega by Phantom.of.the.Server |
; 
;==
;=HELPER STATES==
;==

;==PROJECTILE BANISHER=
[Statedef 227]
type = A
physics = N
movetype = I
ctrl = 0
anim = 227
velset = 0, 0

[State 227, Override]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 228
ignorehitpause = 1

[State 227, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP
ignorehitpause = 1

[State 227, Bind]
type = bindtoparent
trigger1 = 1
time = -1

[State 227, End]
type = destroyself
trigger1 = parent, movetype = H
trigger2 = parent, stateno != 225
trigger3 = parent, animelemtime(7) < 0 || parent, animelemtime(10) >= 0


;----- Get Hit -----
[Statedef 228]
type = A
physics = N
movetype = I
ctrl = 0
anim = 9999
velset = 0, 0

[State 228, Sound]
type = playsnd
trigger1 = !time
value = 2, 0
channel = 2
volumescale = 50

;[State 228, Spark]
;in ZSS

[State 228, End]
type = destroyself
trigger1 = time > 0


;==PROJECTILE SHIELD=
[Statedef 1007]
type = A
physics = N
movetype = I
anim = 9999
ctrl = 0

[State 1007, End]
type = destroyself
trigger1 = parent, movetype = H
trigger2 = parent, stateno != 1000
trigger2 = parent, stateno != 1030
trigger2 = parent, stateno != 3000
trigger2 = parent, stateno != 3300
trigger2 = parent, stateno != 4001
trigger3 = parent, stateno = 1000
trigger3 = parent, anim != 1000 || animelemtime(6) < 0
trigger4 = parent, stateno = 1030
trigger4 = parent, anim != 1000 || animelemtime(6) < 0
trigger5 = parent, stateno = 3000
trigger5 = parent, anim != 3000 || animelemtime(6) < 0
trigger6 = parent, stateno = 3300
trigger6 = parent, anim != 3300 || animelemtime(13) < 0

[State 1007, Anim]
type = assertspecial
trigger1 = 1
flag = animfreeze

[State 1007, Anim]
type = changeanim
trigger1 = 1
value = parent, anim
elem = parent, animelemno(0)

[State 1007, Override]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1007
ignorehitpause = 1

[State 1007, HB]
type = hitby
trigger1 = parent, stateno = 1000
trigger2 = parent, stateno = 1030
time = -1
value = SCA, NP
ignorehitpause = 1

[State 1007, HB]
type = hitby
trigger1 = parent, stateno = 3000
time = -1
value = SCA, NP, SP
ignorehitpause = 1

[State 1007, HB]
type = hitby
trigger1 = parent, stateno = 3300
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1007, HB]
type = hitby
trigger1 = parent, stateno = 4001
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1007, Bind]
type = bindtoparent
trigger1 = 1
time = -1

[State 1007, Assert]
type = assertspecial
trigger1 = 1
flag = invisible
flag2 = noshadow


;==PSYCHO FIELD=
;----- ADVANCING -----
[Statedef 1605]
type = A
physics = N
movetype = A
anim = 1605
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 1605, NHB]
type = nothitby
trigger1 = 1
time = -1
value = SCA
ignorehitpause = 1

[State 1605, Strength]
type = mapset
trigger1 = !time
map = "strength"
value = root, map(strength)

[State 1605, Time Var]
type = varadd
trigger1 = time
var(0) = 1

[State 1605, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1605, Guard]
type = attackdist
trigger1 = 1
value = const(size.proj.attack.dist)

[State 1605, Accel]
type = veladd
trigger1 = vel x < 2.5
x = 0.10

[State 1605, Vel]
type = velset
trigger1 = vel x > 2.5
x = 2.5

[State 1605, Vel]
type = velset
trigger1 = var(0) < 18
x = 0
y = 0

[State 1605, Bind]
type = bindtoroot
trigger1 = var(0) < 18
pos = 46, -75

[State 1605, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 1605, Angle]
type = angleadd
trigger1 = 1
value = 4

[State 1605, Angle]
type = angledraw
trigger1 = 1

[State 1605, Angle]
type = angledraw
trigger1 = time < 10
scale = (0.25 + 0.075 * time), (0.25 + 0.075 * time)

[State 1605, End]
type = changestate
trigger1 = root, movetype = H
trigger1 = (root, stateno != [120, 155]) && (root, stateno != [700, 702])
value = 1606

[State 1605, End]
type = changestate
trigger1 = var(0) >= ifelse(map(strength) = 2, 120, ifelse(map(strength) = 1, 84, 48))
value = 1610


;----- CANCELLED -----
[Statedef 1606]
type = A
physics = N
movetype = I
velset = 0.66 * vel x, 0
ctrl = 0
sprpriority = 3

[State 1606, Anim]
type = changeanim
trigger1 = anim != 1605
value = 1605

[State 1605, Angle]
type = angleadd
trigger1 = 1
value = 6

[State 1606, Shrink]
type = angledraw
trigger1 = 1
scale = 1 -(time * 0.05), 1 -(time * 0.05)

[State 1606, End]
type = destroyself
trigger1 = time >= 20


;----- BURSTING -----
[Statedef 1610]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 1610, Hit Number]
type = varadd
trigger1 = 1
var(2) = 1
persistent = 0
ignorehitpause = 1

[State 1610, Override]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = ifelse((var(2) < 3), 1610, 1612)
ignorehitpause = 1

[State 1610, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

; Damage Scaling was here

[State 1610, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 1600
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 1610, Time Var]
type = varadd
trigger1 = time
var(1) = 1

[State 1610, Anim]
type = changeanim
trigger1 = anim != 1610
value = 1610

[State 1610, Angle]
type = angledraw
trigger1 = 1
value = 45 * (random % 8)

[State 1610, Vel]
type = velset
trigger1 = 1
x = 0
y = 0

[State 1610, Sound]
type = playsnd
trigger1 = !time
trigger1 = prevstateno = 1605
value = 5, 12

[State 1610, Dust]
type = explod
trigger1 = !time
trigger1 = prevstateno = 1605
anim = 7102
sprpriority = -5
postype = p1
pos = 0, -pos y
scale = 0.5,.5;0.67, 0.67
pausemovetime = -1
supermovetime = -1

[State 1610, HitSound]
type = playsnd
trigger1 = movehit = 1 || movereversed = 1
value = 2, ifelse(numtarget, 7, 0)
channel = 2
ignorehitpause = 1

[State 1610, Hit]
type = hitdef
trigger1 = var(1) = 0 || var(1) = 6 || var(1) = 12
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 3)
ID = 1610
priority = 4, Hit
attr = S, SP
damage = 25, 6
dizzypoints = 67 * !(root, map(customcombo))
guard.dist = const(size.proj.attack.dist)
animtype = Hard
fall.animtype = Hard
hitflag = MAFD
guardflag = MA
pausetime = 0, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -60) * (map(sparkx.max) := 60), map(sparky) := (ifelse(p2statetype = L, p2dist y, (p2dist y + pos y)) / 2.0)
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = ifelse(p2dist x < 0, 10.52, -10.52), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.velocity = ifelse(p2dist x < 0, 2, -2), -8
down.velocity = 0, 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
forcestand = 1
yAccel = (0.5 + (ComboCount * 0.06))

[State 1610, Getpower]
type = poweradd
trigger1 = movecontact = 1
trigger1 = numtarget
value = ifelse(movehit && !prevstateno, 50, 25) * root, map(meterscaling)
ignorehitpause = 1

[State 1610, Connected]
type = changestate
trigger1 = movecontact || movereversed
value = ifelse(var(2) < 3, 1610, 1612)
ignorehitpause = 1

[State 1610, End]
type = changestate
trigger1 = var(1) >= 30
value = 1612


;--- FADE OUT ---
[Statedef 1612]
type = A
physics = N
movetype = I
anim = 1612
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 1612, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = hitoverridden || prevmovetype = H
value = 2, 0
channel = 2
volumescale = 33

[State 1612, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1612, Angle]
type = angleadd
trigger1 = 1
value = 4

[State 1612, Angle]
type = angledraw
trigger1 = 1

[State 1612, End]
type = destroyself
trigger1 = !animtime


;==EX PSYCHO FIELD=
;----- ADVANCING -----
[Statedef 1635]
type = A
physics = N
movetype = A
anim = 1635
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 1635, NHB]
type = nothitby
trigger1 = 1
time = -1
value = SCA
ignorehitpause = 1

[State 1635, Override]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1640
ignorehitpause = 1

[State 1635, Strength]
type = mapset
trigger1 = !time
map = "strength"
value = root, map(strength)

[State 1635, Time Var]
type = varadd
trigger1 = time
var(0) = 1

[State 1635, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1635, Guard]
type = attackdist
trigger1 = 1
value = const(size.proj.attack.dist)

[State 1635, Accel]
type = veladd
trigger1 = vel x < 1.5
x = 0.10

[State 1635, Vel]
type = velset
trigger1 = vel x > 1.5
x = 1.5

[State 1635, Vel]
type = velset
trigger1 = var(0) < 18
x = 0
y = 0

[State 1635, Bind]
type = bindtoroot
trigger1 = var(0) < 18
pos = 46, -75

[State 1635, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 1635, Angle]
type = angleadd
trigger1 = 1
value = 4

[State 1635, Angle]
type = angledraw
trigger1 = 1

[State 1635, Angle]
type = angledraw
trigger1 = time < 10
scale = (0.25 + 0.075 * time), (0.25 + 0.075 * time)

[State 1635, Fake Hit]
type = hitdef
trigger1 = var(0) >= 18
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 99)
priority = 4, Hit
attr = S, SP
damage = 0, 0
ground.type = None
pausetime = 0, 0
sparkno = -1 + 0 * (map(sparkno) := -1)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := -1)
sparkxy = -10, 0
guardsound = s2, 0
guardsound.channel = 2
getpower = 0, 0
givepower = 0, 0
p1sprpriority = sprpriority
numhits = 0
p1stateno = 1640

[State 1635, End]
type = changestate
trigger1 = root, movetype = H
trigger1 = (root, stateno != [120, 155]) && (root, stateno != [700, 702])
value = 1606

[State 1635, End]
type = changestate
trigger1 = var(0) >= 18
trigger1 = frontedgedist < -100 || backedgedist < -100
value = 1640


;----- BURSTING -----
[Statedef 1640]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 1640, Hit Number]
type = varadd
trigger1 = 1
var(2) = 1
persistent = 0
ignorehitpause = 1

[State 1640, Override]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = ifelse((var(2) < 5), 1640, 1612)
ignorehitpause = 1

[State 1640, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

; Damage Scaling was here

[State 1640, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 1630
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 1640, Time Var]
type = varadd
trigger1 = time
var(1) = 1

[State 1640, Anim]
type = changeanim
trigger1 = anim != 1610
value = 1610

[State 1640, Angle]
type = angleadd
trigger1 = 1
value = 4

[State 1640, Angle]
type = angledraw
trigger1 = 1

[State 1640, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256

[State 1640, Vel]
type = velset
trigger1 = 1
x = 0
y = 0

[State 1640, Sound]
type = playsnd
trigger1 = !time
trigger1 = prevstateno = 1635
value = 5, 12

[State 1640, Dust]
type = explod
trigger1 = !time
trigger1 = prevstateno = 1635
anim = 7102
sprpriority = -5
postype = p1
pos = 0, -pos y
scale = 0.5,.5;0.67, 0.67
pausemovetime = -1
supermovetime = -1

[State 1640, HitSound]
type = playsnd
trigger1 = movehit = 1 || movereversed = 1
value = 2, ifelse(numtarget, 7, 0)
channel = 2
ignorehitpause = 1

[State 1640, Hit]
type = hitdef
trigger1 = var(1) = 0 || var(1) = 4 || var(1) = 8 || var(1) = 12 || var(1) = 16
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 5)
ID = 1610
priority = 4, Hit
attr = S, SP
damage = 20, 5
dizzypoints = 40 * !(root, map(customcombo))
guard.dist = const(size.proj.attack.dist)
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
hitflag = MAFD
guardflag = MA
pausetime = 0, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -60) * (map(sparkx.max) := 60), map(sparky) := (ifelse(p2statetype = L, p2dist y, (p2dist y + pos y)) / 2.0)
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = ifelse(p2dist x < 0, 10.52, -10.52), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.velocity = ifelse(p2dist x < 0, 2, -2), -8
down.velocity = 0, 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
forcestand = 1
yAccel = (0.5 + (ComboCount * 0.06))

[State 1640, Connected]
type = changestate
trigger1 = movecontact || movereversed
value = ifelse(var(2) < 5, 1640, 1612)
ignorehitpause = 1

[State 1640, End]
type = changestate
trigger1 = var(1) >= 30
value = 1612


;==PSYCHO MINE=
;----- PLANTED -----
[Statedef 1315]
type = A
physics = N
movetype = I
anim = 1315
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 1315, NHB]
type = nothitby
trigger1 = 1
time = -1
value = SCA
ignorehitpause = 1

[State 1315, Target]
type = mapset
trigger1 = !time
trigger1 = root, stateno = 1300
trigger1 = root, numtarget(1300)
map = "hostID"
value = root, target(1300), ID

[State 1315, Target]
type = mapset
trigger1 = !time
trigger1 = root, stateno = 1330
trigger1 = root, numtarget(1330)
map = "hostID"
value = root, target(1330), ID

[State 1315, No Target]
type = changestate
trigger1 = !map(hostID)
trigger2 = map(hostID)
trigger2 = !playerIDexist(map(hostID))
value = 1316

[State 1315, Second Mine Flag]
type = null
trigger1 = numhelper(1315) >= 2
trigger1 = map(secondmine) := (helper(1315), ID != ID)

[State 1315, Randomize Angle]
type = angleset
trigger1 = !time
trigger1 = !prevstateno
value = 30 * (random % 12)

[State 1315, Randomize Angle]
type = angledraw
trigger1 = 1
;scale = 0.95 + (random / 10000.0), 0.95 + (random / 10000.0)

[State 1315, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1315, Y Offset]
type = mapset
trigger1 = map(hostID)
map = "offset"
value = playerID(map(hostID)), const(size.mid.pos.y)

[State 1315, Y Offset]
type = mapset
triggerall = map(hostID)
trigger1 = playerID(map(hostID)), statetype = C
trigger2 = playerID(map(hostID)), anim = 5120
trigger3 = playerID(map(hostID)), anim = [5160, 5199]
map = "offset"
value = playerID(map(hostID)), const(size.mid.pos.y) * 0.5

[State 1315, Y Offset]
type = mapset
triggerall = map(hostID)
trigger1 = playerID(map(hostID)), animelemvar(group) = 5040
trigger2 = playerID(map(hostID)), anim = 5080 || playerID(map(hostID)), anim = [5100, 5119]
map = "offset"
value = playerID(map(hostID)), const(size.mid.pos.y) * 0.125

[State 1315, Y Offset]
type = mapset
triggerall = map(hostID)
trigger1 = playerID(map(hostID)), animelemvar(group) = 5001
trigger2 = playerID(map(hostID)), animelemvar(group) = 5011
trigger3 = playerID(map(hostID)), animelemvar(group) = 5031
trigger4 = playerID(map(hostID)), animelemvar(group) = 5041
trigger5 = playerID(map(hostID)), animelemvar(group) = 5061
trigger6 = playerID(map(hostID)), animelemvar(group) = 5071
map = "offset"
value = 0

;[State 1315, Bind Smoothly]
;type = posadd
;trigger1 = map(hostID)
;x = (playerID(map(hostID)), pos x - pos x) / 2.0 * facing
;y = ((playerID(map(hostID)), pos y + map(offset)) - pos y) / 2.0

[State 1315, Bind]
type = posset
trigger1 = map(hostID)
x = playerID(map(hostID)), pos x
y = playerID(map(hostID)), pos y + map(offset)

[State 1315, Two Mine Offset]
type = offset
trigger1 = numhelper(1315) >= 2
x = ifelse(map(secondmine), 5, -5) * playerID(map(hostID)), facing
y = ifelse(map(secondmine), 5, -5)

[State 1315, Layering]
type = sprpriority
trigger1 = map(hostID)
value = playerID(map(hostID)), sprpriority + 1

[State 1315, Fuse Timer]
type = mapadd
trigger1 = map(fusetimer) > 0
map = "fusetimer"
value = 1

[State 1315, Light Fuse]
type = mapset
triggerall = map(fusetimer) <= 0
triggerall = root, movehitvar(frame)
triggerall = map(hostID)
triggerall = playerID(map(hostID)), movetype = H
triggerall = playerID(map(hostID)), gethitvar(playerno) = playerno
trigger1 = root, stateno = 1000
trigger2 = root, stateno = 1030
trigger3 = root, stateno = 1255
trigger4 = root, stateno = 1280
trigger5 = root, stateno = 1300 || root, stateno = 1330
trigger5 = root, animelemtime(9) >= 0
trigger5 = time >= 30 || helper(1315), time >= 30; not the first time
map = "fusetimer"
value = 1

;[State 1315, Light Fuse]
;type = mapset
;trigger1 = root, stateno = 195
;trigger1 = root, anim = 196
;trigger1 = root, animelem = 7
;map = "fusetimer"
;value = 20

[State 1315, Warning]
type = explod
triggerall = !(time % 8)
trigger1 = map(fusetimer) > 0
trigger2 = time >= 240
ID = 1315
postype = p1
pos = 0, 0
sprpriority = sprpriority + 1
anim = anim
animfreeze = 1
animelem = animelemno(0)
removetime = 8
bindtime = -1
trans = addalpha
alpha = 256, 256
angle = angle
scale = const(size.xscale), const(size.yscale)
interpolation.time = 8
interpolation.alpha = 0, 256
interpolation.scale = const(size.xscale) * 2, const(size.yscale) * 2
removeonchangestate = 1

[State 1315, Explode]
type = changestate
trigger1 = time >= 300
trigger1 = map(fusetimer) <= 0
trigger2 = map(fusetimer) >= ifelse(map(secondmine), 40, 20)
value = 1317

[State 1315, End]
type = changestate
trigger1 = root, movetype = H
trigger1 = root, stateno != [120, 155] && root, stateno != [700, 702]
trigger2 = roundstate != 2
trigger3 = playerID(map(hostID)), movetype = H
trigger3 = playerID(map(hostID)), gethitvar(attr) = SCA, HA, HT, HP
value = 1316


;----- CANCELLED -----
[Statedef 1316]
type = A
physics = N
movetype = I
anim = 1315
velset = 0, 0
ctrl = 0
sprpriority = 3

[State 1316, Shrink]
type = angledraw
trigger1 = 1
scale = 1 - (time * 0.1), 1 - (time * 0.1)

[State 1316, End]
type = destroyself
trigger1 = time >= 10


;----- EXPLODING -----
[Statedef 1317]
type = S
physics = N
movetype = A
anim = 1317
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 1317, Turn]
type = turn
trigger1 = !time
trigger1 = facing != root, facing
;trigger1 = rootdist x > 0

[State 1317, Override]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1316
ignorehitpause = 1

[State 1317, NHB]
type = nothitby
trigger1 = 1
time = -1
value = SCA, AA, AT, AP
ignorehitpause = 1

; Damage Scaling was here

[State 1317, ProjContact]; unlike other projectiles, this one does not care about the root state
type = null
trigger1 = !map(projcontact)
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = map(projcontact) := 1
ignorehitpause = 1

[State 1317, Randomize Angle]
type = angledraw
trigger1 = 1

[State 1317, Sound]
type = playsnd
trigger1 = !time
trigger1 = prevstateno = 1315
value = 5, 16

[State 1317, HitSound]
type = playsnd
trigger1 = movehit = 1 || movereversed = 1
value = 2, ifelse(numtarget, 7, 0)
channel = 2
ignorehitpause = 1

[State 1317, Hit]
type = hitdef
trigger1 = time = 1
air.juggle = 0 * (map(juggle_start) := 0 || map(juggle_increase) := 0 || map(juggle_limit) := 99)
ID = 1317
priority = 4, Hit
attr = S, SP
damage = 40, 10
dizzypoints = 50 * !(root, map(customcombo))
guard.dist = const(size.proj.attack.dist)
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
hitflag = MAFD
guardflag = MA
pausetime = 0, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -20) * (map(sparkx.max) := 20), map(sparky) := 0
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -3.0, -8.0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 10
guard.velocity = -4.49
air.type = Low
air.velocity = -3.0, -8.0
down.velocity = 0, 0
fall = 1
fall.recover = 1
fall.recovertime = 120
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
forcestand = 1
yAccel = (0.5 + (ComboCount * 0.06))
p2facing = 1; ignore auto facing

[State 1317, High Hit]
type = modifyhitdef
trigger1 = p2, anim = [5010, 5019]
trigger1 = p2, hitfall
fall.animtype = Up

[State 1317, Getpower]
type = poweradd
trigger1 = movecontact = 1
trigger1 = numtarget
value = ifelse(movehit && !prevstateno, 50, 25) * root, map(meterscaling)
ignorehitpause = 1

;[State 1317, Juggle Reset]
;instead of this the move just does not increase juggle points at all

[State 1317, End]
type = destroyself
trigger1 = !animtime


;==PSYCHO CANNON=
;----- Charging -----
[Statedef 3209]
type = S
physics = N
movetype = A
anim = 3210
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 3209, Charge Level]
type = mapset
trigger1 = 1
map = "chargelevel"
value = root, var(0)

[State 3209, Max Hit Var]
type = varset
trigger1 = 1
var(4) = 3 + map(chargelevel)

[State 3209, Charge Snd]
type = playsnd
trigger1 = !time
trigger1 = !prevstateno
value = 5, 13
channel = 5

[State 3209, Angle]
type = angledraw
trigger1 = 1
value = (gametime % 60) * -3
scale = ifelse(map(chargelevel) >= 5, 1, 0.25 + 0.15 * map(chargelevel)), ifelse(map(chargelevel) >= 5, 1, 0.25 + 0.15 * map(chargelevel))

[State 3209, Clsn Scale]
type = transformclsn
trigger1 = 1
scale = scale x, scale y

[State 3209, Override]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, HP, AT
stateno = 3215
slot = 0
ignorehitpause = 1

[State 3209, Override]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, NP, SP
stateno = 3209
slot = 1
ignorehitpause = 1

[State 3209, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3209, Bind]
type = bindtoroot
trigger1 = 1
pos = 40, -62

[State 3209, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - 32 * (gametime % 3), 256
ignorehitpause = 1

[State 3209, HitSound]
type = playsnd
trigger1 = movehit = 1 || movereversed = 1
value = 2, ifelse(numtarget, 7, 0)
channel = 2
ignorehitpause = 1

[State 3209, Hit]
type = hitdef
trigger1 = !((movecontact + movereversed) % 4)
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 8)
priority = 1, Hit; Absorb rather than trade
attr = S, HP
damage = 10, 3
dizzypoints = 0
guard.dist = 320
animtype = Hard
hitflag = MAF
guardflag = M
pausetime = 0, 12
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -30) * (map(sparkx.max) := (30 * scale x)), map(sparky) := 0
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -2.5, -10
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
air.velocity = -2.5, -10
fall = 1
air.fall = 1
fall.recover = 0
down.recover = 1
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
yAccel = (0.5 + (ComboCount * 0.06))
p1sprpriority = sprpriority
forcestand = 1
kill = 0
guard.kill = 0
ID = 3209
nochainID = 3209

[State 3209, End]
type = changestate
trigger1 = root, stateno = 3202
trigger1 = root, animelemtime(3) >= 0
value = 3210

[State 3209, End]
type = changestate
trigger1 = root, stateno != [3201, 3202]
trigger2 = root, movetype = H
value = 3215


;----- Advancing -----
[Statedef 3210]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 3210, Charge Snd]
type = stopsnd
trigger1 = !time
channel = 5

[State 3210, Hit Number]
type = varadd
trigger1 = 1
var(2) = 1
persistent = 0
ignorehitpause = 1

[State 3210, Override]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = ifelse(var(2) < var(4), 3210, 3215)
ignorehitpause = 1

[State 3210, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3210, Anim]
type = changeanim
trigger1 = anim != 3210
value = 3210

; Damage Scaling was here

[State 3210, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 3202
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 3210, Vel]
type = velset
trigger1 = 1
x = 5 + (1.0 * map(chargelevel))

[State 3210, Angle]
type = angledraw
trigger1 = 1
value = (gametime % 60) * -6
scale = ifelse(map(chargelevel) >= 5, 1, 0.5 + 0.1 * map(chargelevel)), ifelse(map(chargelevel) >= 5, 1, 0.5 + 0.1 * map(chargelevel))

[State 3210, Clsn Scale]; must be placed before the deformation
type = transformclsn
trigger1 = 1
scale = scale x, scale y

[State 3210, Angle Deformed]
type = angledraw
trigger1 = prevstateno = 3209
trigger1 = time < 10
value = -45 - 15 * time
scale = scale x * (0.5 + 0.05 * time), scale y * (1.5 - 0.05 * time)

[State 3210, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - 32 * (gametime % 3), 256
ignorehitpause = 1

[State 3210, HitSound]
type = playsnd
trigger1 = movehit = 1 || movereversed = 1
value = 2, ifelse(numtarget, 7, 0)
channel = 2
ignorehitpause = 1

[State 3210, Freeze]
type = posfreeze
trigger1 = time <= ifelse(numtarget, 4, 0)
value = 1

[State 3210, Hit Grounded]
type = hitdef
trigger1 = var(2) < var(4)
trigger1 = time >= ifelse(numtarget, 4, 0)
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 8)
priority = 4, Hit
attr = S, HP
damage = 35, 9
dizzypoints = 0
guard.dist = 320
animtype = Hard
hitflag = MAF
guardflag = M
pausetime = 0, 12
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -30) * (map(sparkx.max) := (30 * scale x)), map(sparky) := 0
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
air.velocity = -4, -6
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
yAccel = (0.5 + (ComboCount * 0.06))
p1sprpriority = sprpriority
forcestand = 1

[State 3210, Hit Grounded High]
type = modifyhitdef
trigger1 = var(2) < var(4)
ground.type = High

[State 3210, Hit Final]
type = hitdef
trigger1 = time >= (prevstateno = 3210) * 4
trigger1 = var(2) >= var(4)
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := (var(2) + 5))
priority = 4, Hit
attr = S, HP
damage = 55, 14
dizzypoints = 0
guard.dist = 320
animtype = Hard
hitflag = MAF
guardflag = M
pausetime = 0, 12
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -30) * (map(sparkx.max) := (30 * scale x)), map(sparky) := 0
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -4, -6
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
air.velocity = -4, -6
fall = 1
air.fall = 1
fall.recover = 0
down.recover = 1
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
yAccel = (0.5 + (ComboCount * 0.06))
p1sprpriority = sprpriority
forcestand = 1

[State 3210, Connected]
type = changestate
trigger1 = movecontact || movereversed
value = ifelse(var(2) < var(4), 3210, 3215)

[State 3210, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 3215

[State 3210, End]
type = destroyself
trigger1 = frontedgedist < -120 || backedgedist < -120


;----- Disappear -----
[Statedef 3215]
type = A
physics = N
movetype = I
anim = 3215
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 3215, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = hitoverridden || prevmovetype = H
value = 2, 0
channel = 2
volumescale = 33

[State 3215, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3215, End]
type = destroyself
trigger1 = !animtime


;==PSYCHO POWER=
[Statedef 6000]
physics = N
anim = 9999
sprpriority = 2
ctrl = 0

[State 6000, Bind]
type = bindtoroot
trigger1 = 1

[State 6000, Turn]
type = turn
trigger1 = facing != (root, facing)

[State 6000, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 6000, Move Var]
type = varset
trigger1 = !time
var(0) = (root, stateno)

[State 6000, Move Var]
type = varset
trigger1 = !time
var(1) = (root, anim)

[State 6000, Anim]
type = changeanim
trigger1 = root, stateno = 200 && root, anim = 200
value = 6000
elem = root, animelemno(0)

[State 6000, Anim]
type = changeanim
trigger1 = root, stateno = 201 && root, anim = 201
value = 6001
elem = root, animelemno(0)

[State 6000, Anim]
type = changeanim
trigger1 = root, stateno = 210 && root, anim = 210
value = 6005
elem = root, animelemno(0)

[State 6000, Anim]
type = changeanim
trigger1 = root, stateno = 211 && root, anim = 211
value = 6006
elem = root, animelemno(0)

[State 6000, Anim]
type = changeanim
trigger1 = root, stateno = 220 && root, anim = 220
value = 6010
elem = root, animelemno(0)

[State 6000, Anim]
type = changeanim
trigger1 = root, stateno = 221 && root, anim = 221
value = 6011
elem = root, animelemno(0)

[State 6000, Anim]
type = changeanim
trigger1 = root, stateno = 400 && root, anim = 400
value = 6030
elem = root, animelemno(0)

[State 6000, Anim]
type = changeanim
trigger1 = root, stateno = 410 && root, anim = 410
value = 6035
elem = root, animelemno(0)

[State 6000, Anim]
type = changeanim
trigger1 = root, stateno = 420 && root, anim = 420
value = 6040
elem = root, animelemno(0)

[State 6000, Anim]
type = changeanim
trigger1 = root, stateno = 600 && root, anim = 600
value = 6060
elem = root, animelemno(0)

[State 6000, Anim]
type = changeanim
trigger1 = root, stateno = 601 && root, anim = 601
value = 6061
elem = root, animelemno(0)

[State 6000, Anim]
type = changeanim
trigger1 = root, stateno = 610 && root, anim = 610
value = 6065
elem = root, animelemno(0)

[State 6000, Anim]
type = changeanim
trigger1 = root, stateno = 615 && root, anim = 615
value = 6066
elem = root, animelemno(0)

[State 6000, Anim]
type = changeanim
trigger1 = root, stateno = 620 && root, anim = 620
value = 6070
elem = root, animelemno(0)

[State 6000, Anim]
type = changeanim
trigger1 = root, stateno = 621 && root, anim = 621
value = 6071
elem = root, animelemno(0)

[State 6000, Anim]
type = changeanim
trigger1 = root, stateno = 1205 && root, anim = 1205
trigger2 = root, stateno = 1275 && root, anim = 1205
value = 1206
elem = root, animelemno(0)

[State 6000, Anim]
type = changeanim
trigger1 = root, stateno = 1255 && root, anim = 1255
trigger2 = root, stateno = 1280 && root, anim = 1255
value = 1256
elem = root, animelemno(0)

[State 6000, Anim]
type = changeanim
trigger1 = (root, stateno = 225) && (root, anim = 225)
value = 6012
elem = root, animelemno(0)

[State 6000, Sprite Priority]
type = sprpriority
trigger1 = 1
value = (root, sprpriority) + 1

[State 6000, Sprite Priority]
type = sprpriority
trigger1 = anim = 6006
trigger1 = animelemtime(3) < 0
value = (root, sprpriority) - 1

[State 6000, Anim]
type = assertspecial
trigger1 = 1
flag = animfreeze

[State 6000, End]
type = destroyself
trigger1 = !animtime
trigger2 = (root, stateno) != var(0) || (root, anim) != var(1)
trigger3 = anim != [6000, 6071] && anim != 1206 && anim != 1256
trigger4 = root, movetype = H
trigger5 = time >= 180


;==PSYCHO CRUSHER=
[Statedef 1005]
physics = N
anim = 1005
sprpriority = 3
ctrl = 0

[State 1005, Bind]
type = bindtoparent
trigger1 = 1
pos = 80, -60

[State 1005, Turn]
type = turn
trigger1 = !time
trigger1 = facing != (parent, facing)

[State 1005, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1005, End]
type = changestate
trigger1 = parent, anim != 1000
trigger2 = parent, stateno != 1000
trigger2 = parent, stateno != 1030
trigger3 = parent, stateno = 1000
trigger3 = parent, animelemtime(6) < 0
trigger4 = parent, stateno = 1030
trigger4 = parent, animelemtime(6) < 0
trigger5 = parent, movetype = H
value = 1006


;----- Fade out -----
[Statedef 1006]
physics = N
sprpriority = 3
ctrl = 0

[State 1006, Shrink]
type = angledraw
trigger1 = 1
scale = 1 - (0.125 * time), 1 - (0.125 * time)

[State 1006, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - (32 * time), 256
ignorehitpause = 1

[State 1006, End]
type = destroyself
trigger1 = time >= 8


;==PSYCHO BREAK SMASHER=
[Statedef 3310]
physics = N
anim = 3310
sprpriority = 3
ctrl = 0

[State 3310, Bind]
type = bindtoparent
trigger1 = anim = 3310
pos = 80, -60

[State 3310, Turn]
type = turn
trigger1 = !time
trigger1 = facing != (parent, facing)

[State 3310, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - 16 * (gametime % 5), 256
ignorehitpause = 1

[State 3310, End]
type = changeanim
triggerall = anim = 3310
trigger1 = parent, movetype = H
trigger2 = parent, stateno != 3300 || parent, anim != 3300
trigger3 = parent, stateno = 3300 && parent, animelemtime(13) < 0
value = 3311

[State 3310, End]
type = destroyself
trigger1 = !animtime
trigger1 = anim = 3311


;==DUST=
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


;==POWER CHARGE==
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
pos = -8, 0

[State 7240, Sound]
type = playsnd
trigger1 = !time
value = 7, 4
channel = 0

[State 7240, Sound]
type = playsnd
trigger1 = 1
value = 7, 6
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
vel = ((rootdist x - 20) / 32.0), ((rootdist y - 67) / 32.0)
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


;==ZERO COUNTER PAUSE==
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


;==CUSTOM COMBO PAUSE=
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


;==SUPERPAUSE FX=
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

[State 752, Bind]
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
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 90, 120)
scale = 1 - (0.03125 * time), 1 - (0.03125 * time)
trans = addalpha
alpha = (8 * time), 256

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(21) && time < 16
ID = 21
postype = back
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 90, 120)
scale = 2 - (0.09375 * time), 2 - (0.09375 * time)
trans = addalpha
alpha = (8 * time), 256

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(20) && (time = [16, 32])
ID = 20
postype = back
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 90, 120)
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
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 90, 120)
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


;==SUPER FINISH=
[Statedef 8600]
type = A
velset = 0, 0
anim = 9999

[State 8600, Sound]
type = playsnd
trigger1 = !time
value = 7, 5
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
trigger1 = root, map(superfinish) = [3000, 3049]
var(0) = 2

[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, map(superfinish) = [3100, 3110]
var(0) = 3

[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, map(superfinish) = 3200
var(0) = 4

[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, map(superfinish) = 3300
var(0) = 5

[State 8600, Move Name]
type = varset
trigger1 = !time
trigger1 = root, map(superfinish) = 4001
var(0) = 6

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


;==PURPLE FLAMES=
[Statedef 8150]
type = A
velset = 0, 0
anim = 9999

[State 8150, Timer]
type = null
trigger1 = time
trigger1 = map(timer) := (map(timer) - 1)

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
value = 5, 14
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
trigger1 = map(timer) <= 0
trigger2 = !playerIDexist(map(target))
trigger3 = time > 0
trigger3 = playerID(map(target)), palfxvar(time) = 0


;==CAMERA CONTROL=
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
