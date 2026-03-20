; ______________________________
;| Dan by Phantom.of.the.Server |
; 
;
;SPECIAL STATES==
;

;GADOU KEN=
[Statedef 1000]
type = S
physics = S
movetype = A
anim = 1000
ctrl = 0
velset = 0, 0
poweradd = 50 * map(meterscaling)
sprpriority = 2
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1000, Strength]
type = mapset
trigger1 = !AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(map(cmd_strength_z), 2, ifelse(map(cmd_strength_y), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1000, Strength AI]
type = mapset
trigger1 = AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(p2movetype = H, 2, ifelse(p2statetype = L || random < 333, 0, ifelse(random < 500, 1, 2)))
ignorehitpause = 1
persistent = 0

[State 1000, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1000, Sound]
type = playsnd
trigger1 = animelem = 2
value = 4, 19
channel = 0
freqmul = 0.98 + (random / 25000.0)

[State 1000, Correct Projectile Trade]
type = hitby
trigger1 = animelem = 5
value2 = SCA, AA, AT
time = 1

[State 1000, Gadouken]
type = helper
trigger1 = animelem = 5
helpertype = normal; projectile
stateno = 1005
ID = 1005
name = "Gadouken"
postype = p1
pos = 60 * const(size.xscale), -62 * const(size.yscale)
size.xscale = 0.667
size.yscale = 0.333
ownpal = 1

[State 1000, Sound]
type = playsnd
trigger1 = animelem = 5
value = 5, 0

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;EX GADOU KEN=
[Statedef 1010]
type = S
physics = S
movetype = A
anim = 1010
ctrl = 0
velset = 0, 0
poweradd = -500
sprpriority = 2
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1010, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 1010, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1010, EX FX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 1010, EX FX]
type = explod
trigger1 = !time
trigger1 = 1 || map(exflash) := 30
anim = 7210
sprpriority = 3
postype = p1
pos = -32 * const(size.xscale), -76 * const(size.yscale)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1010, Correct Projectile Trade]
type = hitby
trigger1 = animelem = 4
value2 = SCA, AA, AT
time = 1

[State 1010, Gadouken]
type = helper
trigger1 = animelem = 4
helpertype = normal; projectile
stateno = 1015
ID = 1015
name = "Gadouken"
postype = p1
pos = 60 * const(size.xscale), -62 * const(size.yscale)
size.xscale = 0.75
size.yscale = 0.75
ownpal = 1

[State 1010, Sound]
type = playsnd
trigger1 = animelem = 2
value = 4, 19
channel = 0

[State 1010, Sound]
type = playsnd
trigger1 = animelem = 4
value = 5, 0

[State 1010, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;KOURYUU KEN=
[Statedef 1100]
type = S
physics = S
movetype = A
anim = 1100
ctrl = 0
velset = 0, 0
poweradd = 100 * map(meterscaling)
sprpriority = 2
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1100, Strength]
type = mapset
trigger1 = !AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(map(cmd_strength_z), 2, ifelse(map(cmd_strength_y), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1100, Strength AI]
type = mapset
trigger1 = AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(random < 333, 2, ifelse(random < 500, 1, 0))

[State 1100, Shining Koryuken]
type = mapset
triggerall = !time
triggerall = 1 || map(shiningkoryuken) := 0
trigger1 = !AIlevel
trigger1 = map(strength) = 0
trigger1 = map(cmd_check_623_OK) = 10
trigger2 = !AIlevel
trigger2 = map(strength) = 1
trigger2 = map(cmd_check_623_OK) = 10 || (map(cmd_check_623_OK) = 9 && (gametime % 2))
trigger3 = !AIlevel
trigger3 = map(strength) = 2
trigger3 = map(cmd_check_623_OK) = [9, 10]
trigger4 = AIlevel
trigger4 = random < ifelse(map(strength) = 2, 250, ifelse(map(strength) = 1, 167, 125))
map = "shiningkoryuken"
value = 1

[State 1100, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1100, Anim]
type = changeanim
trigger1 = !time
value = ifelse(map(strength) = 2, 1102, ifelse(map(strength) = 1, 1101, 1100))

[State 1100, NHB]
type = nothitby
trigger1 = map(shiningkoryuken)
trigger1 = animelemtime(3) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 1100, Blink]
type = palfx
trigger1 = map(shiningkoryuken)
trigger1 = animelemtime(3) < 0
add = 255, 255, 255
time = 1
ignorehitpause = 1

[State 1100, Combo]
type = posadd
trigger1 = animelem = 1 || animelem = 2
trigger1 = prevstateno = [200, 499]
x = ifelse(map(strength) = 2, 6, ifelse(map(strength) = 1, 2, 0))

[State 1100, Accel]
type = veladd
trigger1 = vel x > 0
x = -0.6304

[State 1100, Accel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1100, Accel]
type = veladd
trigger1 = animelemtime(3) >= 1
y = ifelse(map(strength) = 2, 0.6027, ifelse(map(strength) = 1, 0.5920, 0.5813))

[State 1100, Vel]
type = velset
trigger1 = animelemtime(3) = [0, 1]
x = ifelse(map(strength) = 2, 7.175, ifelse(map(strength) = 1, 5.125, 3.075))
y = ifelse(map(strength) = 2, -11.8527, ifelse(map(strength) = 1, -9.6430, -6.6572))

[State 1100, Grounded Frame]
type = posfreeze
trigger1 = animelemtime(3) = 0
value = 1

[State 1100, Sound]
type = playsnd
trigger1 = animelem = 2
value = 4, 8
channel = 0

[State 1100, Sound]
type = playsnd
trigger1 = animelemtime(3) = 1
value = 0, ifelse(map(strength) = 0, 40, 41)

[State 1100, Dust]
type = helper
trigger1 = animelemtime(3) = 1
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 1100, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 3

[State 1100, Blur FX]
type = explod
trigger1 = animelem = 3
ID = 8140
anim = 8140
postype = p1
pos = 40, -100
bindtime = 60
trans = addalpha
alpha = 256, 256
removetime = ifelse(map(strength) = 2, 8, ifelse(map(strength) = 1, 6, 4))
interpolation.time = ifelse(map(strength) = 2, 8, ifelse(map(strength) = 1, 6, 4))
interpolation.alpha = 0, 256
sprpriority = sprpriority + 1
removeongethit = 1
removeonchangestate = 1
ownpal = 1

[State 1100, Hit]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, SA
damage = ifelse(map(strength) = 2, 120, ifelse(map(strength) = 1, 110, 100)), ifelse(map(strength) = 2, 30, ifelse(map(strength) = 1, 28, 25))
dizzypoints = 200 * !map(customcombo)
animtype = Back
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 45), map(sparky) := -75
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = ifelse(map(strength) = 2, -4, ifelse(map(strength) = 1, -3.5, -3)), ifelse(map(strength) = 2, -10.0, ifelse(map(strength) = 1, -8.0, -6.0))
air.type = Low
air.velocity = ifelse(map(strength) = 2, -4, ifelse(map(strength) = 1, -3.5, -3)), ifelse(map(strength) = 2, -10.0, ifelse(map(strength) = 1, -8.0, -6.0))
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
fall = 1
fall.recover = 1
fall.recovertime = 120
fall.animtype = Medium
yaccel = 0.4850
p1sprpriority = sprpriority
forcestand = 1

[State 1100, Hit 2]
type = hitdef
trigger1 = animelem = 3
trigger1 = !movecontact && !movereversed
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = A, SA
damage = 50, 13
dizzypoints = 100 * !map(customcombo)
animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 45), map(sparky) := -100
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = ifelse(map(strength) = 2, -4, ifelse(map(strength) = 1, -3.5, -3)), ifelse(map(strength) = 2, -10.0, ifelse(map(strength) = 1, -8.0, -6.0))
air.type = Low
air.velocity = ifelse(map(strength) = 2, -4, ifelse(map(strength) = 1, -3.5, -3)), ifelse(map(strength) = 2, -10.0, ifelse(map(strength) = 1, -8.0, -6.0))
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
p1sprpriority = sprpriority
forcestand = 1
airguard.cornerpush.veloff = 0

[State 1100, Type]
type = statetypeset
trigger1 = animelem = 3
statetype = A
physics = N

[State 1100, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State Land]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1109


;---Land---
[Statedef 1109]
type = S
physics = S
movetype = I
anim = 1109
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 1109, Pos]
type = posset
trigger1 = 1
y = 0

[State 1109, Sound]
type = playsnd
trigger1 = !time
value = 0, 52

[State 1109, Dust]
type = explod
trigger1 = !time
anim = 7102
ID = 7100
sprpriority = -5
postype = p1
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1109, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;EX KOURYUU KEN=
[Statedef 1130]
type = S
physics = S
movetype = A
anim = 1130
ctrl = 0
velset = 0, 0
poweradd = -500
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1130, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 1130, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1130, EX FX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 1130, EX FX]
type = explod
trigger1 = !time
trigger1 = 1 || map(exflash) := 30
anim = 7210
sprpriority = 3
postype = p1
pos = 16 * const(size.xscale), -49 * const(size.yscale)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1130, NHB]
type = nothitby
trigger1 = animelemtime(3) < 0
value = SCA
time = 1

[State 1130, Combo]
type = posadd
trigger1 = animelem = 1 || animelem = 2
x = 8

[State 1130, Accel]
type = veladd
trigger1 = vel x > 0
x = -0.6304

[State 1130, Accel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1130, Accel]
type = veladd
trigger1 = animelemtime(3) >= 1
y = 0.6027

[State 1130, Vel]
type = velset
trigger1 = animelemtime(3) = [0, 1]
x = 7.175
y = -11.8527

[State 1130, Grounded Frame]
type = posfreeze
trigger1 = animelemtime(3) = 0
value = 1

[State 1130, Sound]
type = playsnd
trigger1 = animelem = 2
value = 4, 8
channel = 0

[State 1130, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 3

[State 1130, Blur FX]
type = explod
trigger1 = animelem = 3
ID = 8140
anim = 8140
postype = p1
pos = 40, -100
bindtime = 60
trans = addalpha
alpha = 256, 256
removetime = 8
interpolation.time = 8
interpolation.alpha = 0, 256
sprpriority = sprpriority + 1
removeongethit = 1
removeonchangestate = 1
ownpal = 1

[State 1130, Sound]
type = playsnd
trigger1 = animelemtime(3) = 1
value = 0, 41

[State 1130, Dust]
type = helper
trigger1 = animelemtime(3) = 1
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 1130, Hit]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 2)
attr = S, SA
damage = 70, 18
dizzypoints = 100 * !map(customcombo)
animtype = Medium
fall.animtype = Medium
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 45), map(sparky) := -75
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -4, -10
air.type = Low
air.velocity = -4, -10
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
p1sprpriority = sprpriority
forcestand = 1

[State 1130, Hit 2]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 2)
attr = A, SA
damage = 70, 18
dizzypoints = 100 * !map(customcombo)
animtype = Up
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 45), map(sparky) := -100
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -4, -10
air.type = Low
air.velocity = -4, -10
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
airguard.ctrltime = 1 + 16
airguard.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
p1sprpriority = sprpriority
forcestand = 1

[State 1130, Type]
type = statetypeset
trigger1 = animelem = 3
statetype = A
physics = N

[State 1130, Type]
type = statetypeset
trigger1 = animelem = 4
movetype = I

[State Land]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1109


;EX TAUNT=
[Statedef 2820]
type = S
physics = S
movetype = A
anim = 2820
ctrl = 0
velset = 0, 0

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 2820, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 2820, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 2820, EX FX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 2820, EX FX]
type = explod
trigger1 = !time
trigger1 = 1 || map(exflash) := 30
anim = 7210
sprpriority = 3
postype = p1
pos = 9 * const(size.xscale), -44 * const(size.yscale)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 2820, Sound]
type = playsnd
trigger1 = animelem = 3
value = 4, 21
channel = 0

[State 2820, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 3
;channel = 1
stopongethit = 1

[State 2820, Tears]
type = explod
trigger1 = !(time % 2)
trigger1 = animelemtime(4) >= 0
trigger1 = animelemtime(11) < 0
anim = 4009
ID = 4009
sprpriority = 2
postype = p1
pos = 22 * const(size.xscale), -91 * const(size.yscale)
vel = -1 -(random / 1000.0), -(random / 1000.0)
accel = 0, 0.1 + (random / 10000.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
scale = 0.05 + (random / 20000.0), 0.05 + (random / 20000.0)
ownpal = 1

[State 2820, Hit]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 2)
ID = 2820
attr = S, SA
damage = 60, 15
dizzypoints = 100 * !map(customcombo)
animtype = Hard
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 50), map(sparky) := -92
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -10.52, 0
air.type = Low
air.velocity = -4, -6
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
getpower = 0, 0
givepower = 40, 40
envshake.time = 10
envshake.ampl = 1
envshake.freq = 180
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p1sprpriority = sprpriority
forcestand = 1
yaccel = 0.4850

[State 2820, P2 State]
type = targetstate
trigger1 = movehit = 1
trigger1 = movecountered = 1
trigger1 = numtarget(2820)
trigger1 = (target(2820), stateno = 5000) || (target(2820), stateno = 5010) || (target(2820), stateno = 5020)
value = 1112820
ID = 2820
ignorehitpause = 1

[State 2820, Juggle Reset]
type = mapset
trigger1 = !map(jugglereset)
trigger1 = map(juggle_count)
trigger1 = time > 0
trigger1 = movehit = 1
trigger1 = numtarget(2820)
trigger1 = target(2820), stateno = 1112820
trigger1 = 1 || map(jugglereset) := 1
map = "juggle_count"
value = 0
ignorehitpause = 1

[State 2820, Sound]
type = playsnd
trigger1 = movehit = 1
trigger1 = numtarget(2820)
trigger1 = target(2820), stateno = 1112820
value = 5, 9
ignorehitpause = 1
persistent = 0

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[State 2820, Anim]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- Target -----
[Statedef 1112820]
type = A
physics = N
movetype = H
velset = 0, 0
anim = 5030

[State 1112820, Anim]
type = changeanim2
trigger1 = !time
value = 1112820

[State 1112820, Fall]
type = hitfallset
trigger1 = 1
value = 1

[State 1112820, Accel]
type = veladd
trigger1 = 1
y = max(0.35, gethitvar(yaccel))

[State 1112820, Vel]
type = velset
trigger1 = !time
x = 0
y = -16.0

[State 1112820, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 1112820, Fall Recovery]
type = selfstate
trigger1 = command = "recovery"
trigger1 = gethitvar(fall.recover)
trigger1 = alive = 1 && dizzy = 0 && dizzypoints > 0
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200
anim = 5050; offset fix

[State 1112820, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 5100

[State 1112820, Offset]
type = offset
trigger1 = 1
y = const(size.mid.pos.y)


;DANKUU KYAKU=
[Statedef 1200]
type = S
physics = S
movetype = A
anim = 1200
ctrl = 0
velset = 0, 0
poweradd = 100 * map(meterscaling)
sprpriority = 2
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1200, Strength]
type = mapset
trigger1 = !AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(map(cmd_strength_c), 2, ifelse(map(cmd_strength_b), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1200, Strength AI]
type = mapset
trigger1 = AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(map(ai_attackwindow) < 13 || p2stateno = [120, 155], 0, ifelse(map(ai_attackwindow) < 16, 1, 2))

[State 1200, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1200, Anim]
type = changeanim
trigger1 = !time
value = ifelse(map(strength) = 2, 1202, ifelse(map(strength) = 1, 1201, 1200))

[State 1200, Accel]
type = veladd
trigger1 = animelemtime(3) >= 1
y = ifelse(map(strength) = 2, 0.178, ifelse(map(strength) = 1, 0.461, 0.717))

[State 1200, Vel]
type = velset
trigger1 = animelemtime(3) = 1
x = ifelse(map(strength) = 2, 4.90, ifelse(map(strength) = 1, 4.72, 4.132))
y = ifelse(map(strength) = 2, -3.83, ifelse(map(strength) = 1, -6.00, -8.61))

[State 1200, Type]
type = statetypeset
triggerall = animelemtime(2) >= 0
trigger1 = anim = 1200 && animelemtime(5) < 0
trigger2 = anim = 1201
trigger2 = animelemtime(9) < 0
trigger3 = anim = 1202 && animelemtime(13) < 0
statetype = A
physics = N

[State 1200, Sound]
type = playsnd
trigger1 = animelem = 2
value = 0, 40

[State 1200, Dust]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 7104
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 1200, Sound]
type = playsnd
trigger1 = animelem = 4 || animelem = 7
value = 3, 0
channel = 0

[State 1200, Sound]
type = playsnd
trigger1 = animelem = 11
value = 3, 2
channel = 0

[State 1200, Sound]
type = playsnd
trigger1 = animelem = 4
value = 1, 6
;channel = 1
stopongethit = 1
freqmul = ifelse((anim = 1202), 1.2, ifelse((anim = 1201), 1.1, 1.0))

[State 1200, Sound]
type = playsnd
trigger1 = animelem = 7
value = 1, 6
;channel = 1
stopongethit = 1
freqmul = ifelse((anim = 1202), 1.1, 1.0)

[State 1200, Sound]
type = playsnd
trigger1 = animelem = 11
value = 1, 6
;channel = 1
stopongethit = 1

[State 1200, Hit]
type = hitdef
trigger1 = anim = [1200, 1202] && animelem = 4
trigger2 = anim = 1202 && animelem = 7
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := (map(strength) + 1))
attr = A, SA
damage = ifelse(map(strength) = 2, 46, 55), ifelse(map(strength) = 2, 12, 14)
dizzypoints = ifelse(map(strength) = 2, 67, ifelse(map(strength) = 1, 75, 100)) * !map(customcombo)
animtype = Hard
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 65), map(sparky) := ifelse((animelem = 4), -65, -50)
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 20
guard.hittime = (1 + 20) - 6
ground.slidetime = 18
ground.velocity = -10.52, 0
air.type = Low
air.velocity = -4.17, -4.00
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
fall = 0
air.fall = 0
fall.recover = 1
fall.recovertime = 120
p1sprpriority = sprpriority
forcestand = 1
yaccel = 0.4850
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0

[State 1200, Hit Knockdown]
type = hitdef
trigger1 = anim = 1201 && animelem = 7
trigger2 = anim = 1202 && animelem = 11
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := (map(strength) + 1))
attr = A, SA
damage = ifelse(map(strength) = 0, 90, 50), ifelse(map(strength) = 0, 23, 13)
dizzypoints = ifelse(map(strength) = 2, 67, ifelse(map(strength) = 1, 75, 100)) * !map(customcombo)
animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 65), map(sparky) := ifelse((animelem = 4), -65, ifelse((animelem = 7), -50, -55))
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -4.17, -5.00
air.type = Low
air.velocity = -4.17, -5.00
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
p1sprpriority = sprpriority
forcestand = 1
airguard.cornerpush.veloff = 0

[State 1200, Blur FX]
type = explod
trigger1 = anim = 1201 || anim = 1202
trigger1 = animelem = 7 || animelem = 11
ID = 8141
anim = 8141
postype = p1
pos = 65, -45
bindtime = 60
trans = addalpha
alpha = 256, 256
removetime = 4
interpolation.time = 4
interpolation.alpha = 0, 256
sprpriority = sprpriority + 1
removeongethit = 1
removeonchangestate = 1
ownpal = 1

[State 1200, Idle]
type = statetypeset
trigger1 = anim = 1200
trigger1 = animelem = 5
trigger2 = anim = 1201
trigger2 = animelem = 8
trigger3 = anim = 1202
trigger3 = animelem = 12
movetype = I

[State Land]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1203


;---Land---
[Statedef 1203]
type = S
physics = S
movetype = I
anim = 1203
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 1203, Pos]
type = posset
trigger1 = 1
y = 0

[State 1203, Sound]
type = playsnd
trigger1 = !time
value = 0, 52

[State 1203, Dust]
type = explod
trigger1 = !time
anim = 7102
ID = 7100
sprpriority = -5
postype = p1
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1203, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;EX DANKUU KYAKU=
[Statedef 1220]
type = S
physics = S
movetype = A
anim = 1220
ctrl = 0
velset = 0, 0
poweradd = -500
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1220, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 1220, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1220, EX FX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 1220, EX FX]
type = explod
trigger1 = !time
trigger1 = 1 || map(exflash) := 30
anim = 7210
sprpriority = 3
postype = p1
pos = 10 * const(size.xscale), -62 * const(size.yscale)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1220, NHB]
type = nothitby
trigger1 = animelemtime(5) < 0
value = , AP
time = 1

[State 1220, Type]
type = statetypeset
trigger1 = animelem = 2
statetype = A
physics = N

[State 1220, Accel]
type = veladd
trigger1 = animelemtime(2) >= 1
x = ifelse(vel x > 0.030, -0.030, ifelse(vel x < -0.054, 0.054, -vel x))

[State 1220, Accel]
type = veladd
trigger1 = animelemtime(2) >= 1
y = 0.4

[State 1220, Vel]
type = velset
trigger1 = animelemtime(2) = 1
x = 4
y = -6

;[State 1220, NHB]
;type = nothitby
;trigger1 = animelemtime(2) >= 0
;time = 1
;value = , AP

[State 1220, Sound]
type = playsnd
trigger1 = animelem = 2
value = 0, 40

[State 1220, Dust]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 7104
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 1220, Sound]
type = playsnd
trigger1 = animelem = 4 || animelem = 7
value = 3, 8
channel = 0

[State 1220, Sound]
type = playsnd
trigger1 = animelem = 4 || animelem = 7
value = 1, 6
;channel = 1
stopongethit = 1

[State 1220, Hit]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 3)
attr = A, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 60, 15
dizzypoints = 100 * !map(customcombo)
getpower = 0, 0
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.0, -4.0
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p1sprpriority = sprpriority
forcestand = 1
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 65), map(sparky) := -45
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667

[State 1220, Hit]
type = hitdef
trigger1 = animelem = 7
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 3)
attr = A, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 60, 15
dizzypoints = 100 * !map(customcombo)
getpower = 0, 0
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Diagup
ground.type = High
air.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -4.0, -6.25
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.0, -6.25
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
p1sprpriority = sprpriority
forcestand = 1
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 65), map(sparky) := -50
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667

[State 1220, Blur FX]
type = explod
trigger1 = animelem = 4 || animelem = 7
ID = 8141
anim = 8141
postype = p1
pos = 65, -45
bindtime = 60
trans = addalpha
alpha = 256, 256
removetime = 4
interpolation.time = 4
interpolation.alpha = 0, 256
sprpriority = sprpriority + 1
removeongethit = 1
removeonchangestate = 1
ownpal = 1

[State 1220, Idle]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
persistent = 0

[State 1220, End]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1203


;AIR DANKUU KYAKU=
[Statedef 1250]
type = A
physics = N
movetype = A
anim = 1200
ctrl = 0
poweradd = 100 * map(meterscaling)
sprpriority = 2

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1250, Strength]
type = mapset
trigger1 = !AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(map(cmd_strength_c), 2, ifelse(map(cmd_strength_b), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1250, Strength AI]
type = mapset
trigger1 = AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(p2statetype != A, 0, ifelse(random < 500, 1, 2))

[State 1250, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1250, Anim]
type = changeanim
trigger1 = !time
value = ifelse(map(strength) = 2, 1202, ifelse(map(strength) = 1, 1201, 1200))
elem = 2

[State 1250, Accel]
type = veladd
trigger1 = animelemtime(2) >= 1
x = ifelse(vel x > 0.030, -0.030, ifelse(vel x < -0.054, 0.054, -vel x))

[State 1250, Accel]
type = veladd
trigger1 = anim != 41
y = ifelse(map(strength) = 2, 0.186, ifelse(map(strength) = 1, 0.446, 0.744))

[State 1250, Type]
type = veladd
trigger1 = anim = 41
y = 0.5

[State 1250, Vel]
type = veladd
trigger1 = !time
trigger1 = map(strength) = 0
x = ifelse(vel x < 0, 0.5, 1)

[State 1250, Vel]
type = veladd
trigger1 = !time
trigger1 = map(strength) = 1
x = ifelse(vel x < 0, -0.5, 2)

[State 1250, Vel]
type = veladd
trigger1 = !time
trigger1 = map(strength) = 2
x = ifelse(vel x < 0, -1, 3)

[State 1250, Vel]
type = velset
trigger1 = !time
y = -4.44

[State 1250, Sound]
type = playsnd
trigger1 = anim = [1200, 1202]
trigger1 = animelem = 4 || animelem = 7
value = 3, 0
channel = 0

[State 1250, Sound]
type = playsnd
trigger1 = anim = [1200, 1202]
trigger1 = animelem = 11
value = 3, 2
channel = 0

[State 1250, Sound]
type = playsnd
trigger1 = animelem = 4
value = 1, 6
;channel = 1
stopongethit = 1
freqmul = ifelse((anim = 1202), 1.2, ifelse((anim = 1201), 1.1, 1.0))

[State 1250, Sound]
type = playsnd
trigger1 = anim = [1200, 1202]
trigger1 = animelem = 7
value = 1, 6
;channel = 1
stopongethit = 1
freqmul = ifelse((anim = 1202), 1.1, 1.0)

[State 1250, Sound]
type = playsnd
trigger1 = anim = [1200, 1202]
trigger1 = animelem = 11
value = 1, 6
;channel = 1
stopongethit = 1

[State 1250, Hit]
type = hitdef
trigger1 = anim = [1201, 1202] && animelem = 4
trigger2 = anim = 1202 && animelem = 7
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := (map(strength) + 1))
attr = A, SA
damage = ifelse(map(strength) = 2, 46, 55), ifelse(map(strength) = 2, 12, 14)
dizzypoints = 100 * !map(customcombo)
animtype = Hard
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 65), map(sparky) := ifelse((animelem = 4), -65, -50)
hitsound = s2, 6
hitsound.channel = 2
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
air.type = Low
air.velocity = -4.17, -5.0
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
p1sprpriority = sprpriority
forcestand = 1
airguard.cornerpush.veloff = 0

[State 1250, Hit Knockdown]
type = hitdef
trigger1 = anim = 1200 && animelem = 4
trigger2 = anim = 1201 && animelem = 7
trigger3 = anim = 1202 && animelem = 11
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := (map(strength) + 1))
attr = A, SA
damage = ifelse(map(strength) = 0, 90, 50), ifelse(map(strength) = 0, 23, 13)
dizzypoints = 100 * !map(customcombo)
animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 65), map(sparky) := ifelse((animelem = 4), -65, ifelse((animelem = 7), -50, -55))
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -4.17, -5.0
air.type = Low
air.velocity = -4.17, -5.0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
p1sprpriority = sprpriority
forcestand = 1
airguard.cornerpush.veloff = 0

[State 1250, Blur FX]
type = explod
trigger1 = anim = 1201 || anim = 1202
trigger1 = animelem = 7 || animelem = 11
ID = 8141
anim = 8141
postype = p1
pos = 65, -45
bindtime = 60
trans = addalpha
alpha = 256, 256
removetime = 4
interpolation.time = 4
interpolation.alpha = 0, 256
sprpriority = sprpriority + 1
removeongethit = 1
removeonchangestate = 1
ownpal = 1

[State 1250, Anim]
type = changeanim
trigger1 = anim = 1200
trigger1 = animelemtime(5) >= 5
trigger2 = anim = 1201
trigger2 = animelemtime(9) >= 5
trigger3 = anim = 1202
trigger3 = animelemtime(13) >= 5
value = 41
elem = 6

[State 1250, Idle]
type = statetypeset
trigger1 = anim = 1200
trigger1 = animelemtime(5) >= 0
trigger2 = anim = 1201
trigger2 = animelemtime(8) >= 0
trigger3 = anim = 1202
trigger3 = animelemtime(12) >= 0
trigger4 = anim = 41
movetype = I

[State 1250, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1253


;---Land---
[Statedef 1253]
type = S
physics = S
movetype = I
anim = 1253
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 1253, Pos]
type = posset
trigger1 = 1
y = 0

[State 1253, Sound]
type = playsnd
trigger1 = !time
value = 0, 52

[State 1253, Dust]
type = explod
trigger1 = !time
anim = 7102
ID = 7100
sprpriority = -5
postype = p1
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1253, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;EX AIR DANKUU KYAKU=
[Statedef 1270]
type = A
physics = N
movetype = A
anim = 1220
ctrl = 0
poweradd = -500
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1270, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 1270, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1270, EX FX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 1270, EX FX]
type = explod
trigger1 = !time
trigger1 = 1 || map(exflash) := 30
anim = 7210
sprpriority = 3
postype = p1
pos = 10 * const(size.xscale), -62 * const(size.yscale)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1270, Anim]
type = changeanim
trigger1 = !time
value = 1220
elem = 2

[State 1270, Accel]
type = veladd
trigger1 = animelemtime(2) >= 1
x = ifelse(vel x > 0.030, -0.030, ifelse(vel x < -0.054, 0.054, -vel x))

[State 1270, Accel]
type = veladd
trigger1 = time
y = 0.446

[State 1270, Vel]
type = veladd
trigger1 = !time
x = ifelse(vel x < 0, 0.5, 1)

[State 1270, Vel]
type = velset
trigger1 = !time
y = -4.44

;[State 1270, NHB]
;type = nothitby
;trigger1 = animelemtime(2) >= 0
;time = 1
;value = , AP

[State 1270, Sound]
type = playsnd
trigger1 = animelem = 4 || animelem = 7
value = 3, 8
channel = 0

[State 1270, Sound]
type = playsnd
trigger1 = animelem = 4 || animelem = 7
value = 1, 6
;channel = 1
stopongethit = 1

[State 1270, Hit]
type = hitdef
trigger1 = animelem = 4 || animelem = 7
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 3)
attr = A, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 60, 15
dizzypoints = 100 * !map(customcombo)
getpower = 0, 0
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -4.0, -3.0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4.0, -3.0
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
p1sprpriority = sprpriority
forcestand = 1
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 65), map(sparky) := ifelse((animelem = 7), -50, -45)
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667

[State 1270, Blur FX]
type = explod
trigger1 = animelem = 4 || animelem = 7
ID = 8141
anim = 8141
postype = p1
pos = 65, -45
bindtime = 60
trans = addalpha
alpha = 256, 256
removetime = 4
interpolation.time = 4
interpolation.alpha = 0, 256
sprpriority = sprpriority + 1
removeongethit = 1
removeonchangestate = 1
ownpal = 1

[State 1270, Idle]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
persistent = 0

[State 1270, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1203


;PREMIUM SIGN=
[Statedef 1300]
type = S
physics = S
movetype = A
anim = 1300
ctrl = 0
velset = 0, 0
poweradd = 100 * map(meterscaling)
sprpriority = 2
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1300, Strength]
type = mapset
trigger1 = !AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(map(cmd_strength_c), 2, ifelse(map(cmd_strength_b), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1300, Strength AI]
type = mapset
trigger1 = AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse((p2movetype = H || random < 500), 0, ifelse(random < 500, 1, 2))

[State 1300, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1300, Anim]
type = changeanim
trigger1 = !time
value = ifelse(map(strength) = 2, 1302, ifelse(map(strength) = 1, 1301, 1300))

[State 1300, Hit]
type = hitdef
trigger1 = anim = 1300 && animelem = 6
trigger2 = anim = 1301 && animelem = 12
trigger3 = anim = 1302 && animelem = 20
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := ifelse(map(strength) = 2, 6, ifelse(map(strength) = 1, 4, 2)))
attr = S, SA
damage = 30, 8
dizzypoints = 100 * !map(customcombo)
animtype = Medium
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 60), map(sparky) := -87
hitsound = s2, 1
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -10.52, 0
air.type = Low
air.hittime = 120
air.velocity = -6, -6
forcenofall = !map(customcombo)
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
yaccel = 0.4850
p1sprpriority = sprpriority
forcestand = 1

[State 1300, Width]
type = width
trigger1 = anim = 1300
trigger1 = animelemtime(11) = -1
trigger2 = anim = 1301
trigger2 = animelemtime(17) = -1
trigger3 = anim = 1302
trigger3 = animelemtime(25) = -1
value = 20 * const(size.xscale)

[State 1300, Correct Projectile Trade]
type = hitby
trigger1 = anim = 1300 && animelem = 11
trigger2 = anim = 1301 && animelem = 17
trigger3 = anim = 1302 && animelem = 25
value2 = SCA, AA, AT
time = 1

[State 1300, Autograph]
type = helper
trigger1 = anim = 1300 && animelem = 11
trigger2 = anim = 1301 && animelem = 17
trigger3 = anim = 1302 && animelem = 25
helpertype = normal; projectile
stateno = 1305
ID = 1305
name = "Autograph"
postype = p1
pos = 60 * const(size.xscale), -66 * const(size.yscale)
size.xscale = 1
size.yscale = 1
size.height = numhelper(1305) + numhelper(1325)
ownpal = 1

[State 1300, Sound]
type = playsnd
trigger1 = (anim = [1300, 1302]) && animelem = 3
value = 5, 12
channel = 0

[State 1300, Sound]
type = playsnd
trigger1 = anim = 1300 && animelem = 6
trigger2 = anim = 1301 && animelem = 12
trigger3 = anim = 1302 && animelem = 20
value = 4, 30
channel = 0

[State 1300, Sound]
type = playsnd
trigger1 = anim = 1300 && animelem = 11
trigger2 = anim = 1301 && animelem = 17
trigger3 = anim = 1302 && animelem = 25
value = 4, 31
channel = 0

[State 1300, Sound]
type = playsnd
trigger1 = anim = 1300 && animelem = 11
trigger2 = anim = 1301 && animelem = 17
trigger3 = anim = 1302 && animelem = 25
value = 1, 2
;channel = 1
stopongethit = 1

[State 1300, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- Target killed -----
[Statedef 1111305]
type = S
physics = S
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 1111305, self]
type = selfstate
trigger1 = selfanimexist(5130)
value = 5130

[State 1111305, Anim]
type = changeanim
trigger1 = !time
trigger1 = selfanimexist(5950)
value = 5950

[State 1111305, Anim]
type = changeanim2
trigger1 = !time
trigger1 = !selfanimexist(5950)
value = 1111305

[State 1111305, Stop]
type = posset
trigger1 = 1
y = 0

[State 1111305, Stop]
type = velset
trigger1 = 1
y = 0

[State 1111305, Dust]
type = explod
trigger1 = anim = 1111305 && animelem = 7
anim = F 60
postype = p1
pos = 0, 0
ownpal = 1
sprpriority = -10

[State 1111305, Sound]
type = playsnd
trigger1 = anim = 1111305 && animelem = 7
value = F 7, 0

[State 1111305, Anim]
type = changeanim
trigger1 = anim = 5950 && time >= 120
trigger1 = selfanimexist(5112)
value = 5112

[State 1111305, End]
type = selfstate
trigger1 = !animtime || time >= 120
value = ifelse(alive, 5120, 5150)


;EX PREMIUM SIGN=
[Statedef 1320]
type = S
physics = S
movetype = A
anim = 1320
ctrl = 0
velset = 0, 0
poweradd = -500
sprpriority = 2
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1320, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 1320, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1320, EX FX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 1320, EX FX]
type = explod
trigger1 = !time
trigger1 = 1 || map(exflash) := 30
anim = 7210
sprpriority = 3
postype = p1
pos = 4 * const(size.xscale), -68 * const(size.yscale)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1320, Hit]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 2)
attr = S, SA
damage = 30, 8
dizzypoints = 100 * !map(customcombo)
animtype = Medium
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 60), map(sparky) := -87
hitsound = s2, 1
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -10.52, 0
air.type = Low
air.hittime = 120
air.velocity = -6, -6
forcenofall = !map(customcombo)
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
yaccel = 0.4850
p1sprpriority = sprpriority
forcestand = 1

[State 1320, Width]
type = width
trigger1 = animelemtime(9) = -1
value = 20 * const(size.xscale)

[State 1320, Correct Projectile Trade]
type = hitby
trigger1 = animelem = 9
value2 = SCA, AA, AT
time = 1

[State 1320, Autograph]
type = helper
trigger1 = animelem = 9
helpertype = normal; projectile
stateno = 1325
ID = 1325
name = "Autograph"
postype = p1
pos = 60 * const(size.xscale), -66 * const(size.yscale)
size.xscale = 1
size.yscale = 1
size.height = numhelper(1305) + numhelper(1325)
ownpal = 1

[State 1320, Sound]
type = playsnd
trigger1 = animelem = 4
value = 4, 30
channel = 0

[State 1320, Sound]
type = playsnd
trigger1 = animelem = 9
value = 4, 31
channel = 0

[State 1320, Sound]
type = playsnd
trigger1 = animelem = 9
value = 1, 2
;channel = 1
stopongethit = 1

[State 1320, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;DANRETSUKEN=
[Statedef 1400]
type = S
physics = N
movetype = A
anim = 1400
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 100 * map(meterscaling)
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1400, Strength]
type = mapset
trigger1 = !AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(map(cmd_strength_z), 2, ifelse(map(cmd_strength_y), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1400, Strength AI]
type = mapset
trigger1 = AIlevel
trigger1 = time <= 0
trigger1 = numenemy
map = "strength"
value = ifelse(map(ai_attackwindow) >= 18, 2, ifelse(map(ai_attackwindow) >= 14, 1, 0))
ignorehitpause = 1

[State 1400, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

;[State 1400, Anim]
;type = changeanim
;trigger1 = !time
;value = ifelse(map(strength) = 2, 1402, ifelse(map(strength) = 1, 1401, 1400))

[State 1400, Startup]
type = changeanim
triggerall = animelemtime(2) > 0
triggerall = animelemtime(3) < 0
trigger1 = map(strength) = 0
trigger1 = animelemtime(2) >= 4
trigger2 = map(strength) = 1
trigger2 = animelemtime(2) >= 8
value = anim
elem = 3

[State 1400, Accel]
type = veladd
trigger1 = vel x > 0
x = -0.5

[State 1400, Accel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1400, Vel]
type = velset
trigger1 = animelem = 2
x = ifelse(map(strength) = 2, 7.00, ifelse(map(strength) = 1, 6.00, 5.00))

[State 1400, Sound]
type = playsnd
trigger1 = animelem = 2
value = 0, 102

[State 1400, Dust]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 7104
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 1400, Sound]
type = playsnd
trigger1 = animelem = 2
value = 3, 5
channel = 0

[State 1400, Sound]
type = playsnd
trigger1 = animelem = 4 || animelem = 7
value = 3, 1
channel = 0
freqmul = 0.95 + (random / 10000.0)
lowpriority = 1

[State 1400, Sound]
type = playsnd
trigger1 = animelem = 4 || animelem = 7 || animelem = 10
value = 1, 3
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 1400, Blur FX]
type = explod
trigger1 = animelem = 4 || animelem = 7 || animelem = 10
ID = 8142
anim = 8142
postype = p1
pos = 60, ifelse((animelem = 7), -85, -60)
vfacing = ifelse((animelem = 7), -1, 1)
bindtime = 60
trans = addalpha
alpha = 256, 256
removetime = 8
interpolation.time = 8
interpolation.alpha = 0, 256
sprpriority = sprpriority + 1
removeongethit = 1
removeonchangestate = 1
ownpal = 1

[State 1400, Sound]
type = playsnd
trigger1 = animelem = 10
value = 3, 4
channel = 0

[State 1400, Hit Main]
type = hitdef
trigger1 = animelem = 4 || animelem = 7 || animelem = 10
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 30, 8
dizzypoints = 50 * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
pausetime = 4, 4
guard.pausetime = 4, 4
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 16
guard.slidetime = 12
air.hittime = 120
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.velocity = -4.49
guard.cornerpush.veloff = 0
air.velocity = -4.00, -6.00
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p1sprpriority = sprpriority
forcestand = 1
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 40) * (map(sparkx.max) := 65), map(sparky) := -60
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667

[State 1400, Hit Second]
type = modifyhitdef
trigger1 = animelem = 7
ground.type = High
ground.velocity = -4.49, 0
sparkxy = -10 + 0 * (map(sparkx.min) := 40) * (map(sparkx.max) := 65), map(sparky) := -90

[State 1400, Hit Last]
type = modifyhitdef
trigger1 = animelem = 10
damage = ifelse(map(strength) = 2, 40, ifelse(map(strength) = 1, 35, 30)), ifelse(map(strength) = 2, 10, ifelse(map(strength) = 1, 9, 8))
pausetime = 12, 12
ground.velocity = -10.52, 0

[State 1400, Idle]
type = statetypeset
trigger1 = animelemtime(11) >= 0
movetype = I
persistent = 0

[State 1400, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;EX DANRETSUKEN=
[Statedef 1430]
type = S
physics = N
movetype = A
anim = 1430
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -500
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1430, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1430, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 1430, EX FX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 1430, EX FX]
type = explod
trigger1 = !time
trigger1 = 1 || map(exflash) := 30
anim = 7210
sprpriority = 3
postype = p1
pos = 16 * const(size.xscale), -60 * const(size.yscale)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1430, Accel]
type = veladd
trigger1 = vel x > 0
x = -0.5

[State 1430, Accel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1430, Vel]
type = velset
trigger1 = animelem = 2
x = 6.00

[State 1430, Pos]
type = posadd
trigger1 = animelem = 16
x = 12 * const(size.xscale)

[State 1430, Sound]
type = playsnd
trigger1 = animelem = 2
value = 0, 102

[State 1430, Dust]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 7104
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 1430, Sound]
type = playsnd
trigger1 = animelem = 2
value = 3, 6
channel = 0

[State 1430, Sound]
type = playsnd
trigger1 = animelem = 17
value = 3, 0
channel = 0

[State 1430, Sound]
type = playsnd
trigger1 = animelem = 4 || animelem = 7 || animelem = 10 || animelem = 13 || animelem = 17
value = 1, 3
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 1430, Blur FX]
type = explod
trigger1 = animelem = 4 || animelem = 7 || animelem = 10 || animelem = 13
ID = 8142
anim = 8142
postype = p1
pos = 60, ifelse((animelem = 7 || animelem = 13), -85, -60)
vfacing = ifelse((animelem = 7 || animelem = 13), -1, 1)
bindtime = 60
trans = addalpha
alpha = 256, 256
removetime = 8
interpolation.time = 8
interpolation.alpha = 0, 256
sprpriority = sprpriority + 1
removeongethit = 1
removeonchangestate = 1
ownpal = 1

[State 1400, Blur FX]
type = explod
trigger1 = animelem = 18
ID = 8140
anim = 8140
postype = p1
pos = 40, -110
bindtime = 60
trans = addalpha
alpha = 256, 256
removetime = 4
interpolation.time = 4
interpolation.alpha = 0, 256
sprpriority = sprpriority + 1
removeongethit = 1
removeonchangestate = 1
ownpal = 1

[State 1430, Hit Main]
type = hitdef
trigger1 = animelem = 4 || animelem = 7 || animelem = 10 || animelem = 13
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 20, 5
dizzypoints = 50 * !map(customcombo)
getpower = 0, 0
givepower = 40, 40
pausetime = 0, 4
guard.pausetime = 0, 4
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 16
guard.slidetime = 12
air.hittime = 120
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.velocity = -4.49
guard.cornerpush.veloff = 0
air.velocity = -4.00, -6.00
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p1sprpriority = sprpriority
forcestand = 1
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 40) * (map(sparkx.max) := 65), map(sparky) := -60
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667

[State 1430, Hit Last]
type = hitdef
trigger1 = animelem = 18
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 30, 8
dizzypoints = 50 * !map(customcombo)
getpower = 0, 0
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Up
air.animtype = Up
fall.animtype = Up
ground.type = High
air.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = -2.00, -10.00
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -2.00, -10.00
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
p1sprpriority = sprpriority
forcestand = 1
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 40) * (map(sparkx.max) := 65), map(sparky) := -90
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667

[State 1430, Hit High]
type = modifyhitdef
trigger1 = animelem = 7 || animelem = 13
ground.type = High
sparkxy = -10 + 0 * (map(sparkx.min) := 40) * (map(sparkx.max) := 65), map(sparky) := -90

[State 1430, Idle]
type = statetypeset
trigger1 = animelemtime(19) >= 0
movetype = I
persistent = 0

[State 1430, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;SAIKYOU-RYUU BOUGYO=
;----- STANDING -----
[Statedef 1500]
type = S
physics = S
movetype = I
anim = 1500
velset = 0, 0
ctrl = 0
facep2 = 1
sprpriority = 2

[State 1500, Strength]
type = mapset
trigger1 = map(strength)
map = "strength"
value = 0

[State 1500, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1500, NHB]
type = nothitby
trigger1 = animelemtime(2) < 0
time = 1
value = , AA

[State 1500, Sound]
type = playsnd
trigger1 = !time
value = 3, 5
channel = 0

[State 1500, Pusher]
type = helper
trigger1 = animelem = 2
helpertype = normal
ID = 1505
stateno = 1505
name = "Push Block"
postype = p1

[State 1500, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- CROUCHING -----
[Statedef 1501]
type = C
physics = C
movetype = I
anim = 1501
velset = 0, 0
ctrl = 0
facep2 = 1
sprpriority = 2

[State 1501, Strength]
type = mapset
trigger1 = map(strength)
map = "strength"
value = 0

[State 1501, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1501, NHB]
type = nothitby
trigger1 = animelemtime(2) < 0
time = 1
value = , AA

[State 1501, Sound]
type = playsnd
trigger1 = !time
value = 3, 5
channel = 0

[State 1501, Pusher]
type = helper
trigger1 = animelem = 2
helpertype = normal
ID = 1505
stateno = 1505
name = "Push Block"
postype = p1

[State 1501, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;----- AERIAL -----
[Statedef 1502]
type = A
physics = N
movetype = I
anim = 1502
ctrl = 0
facep2 = 1
velset = 0, 0
sprpriority = 2

[State 1500, Strength]
type = mapset
trigger1 = map(strength)
map = "strength"
value = 0

[State 1502, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1502, NHB]
type = nothitby
trigger1 = animelemtime(2) < 0
time = 1
value = , AA

[State 1502, Freeze]
type = posfreeze
trigger1 = animelemtime(2) < 0
value = 1

[State 1502, Sound]
type = playsnd
trigger1 = !time
value = 3, 5
channel = 0

[State 1502, Pusher]
type = helper
trigger1 = animelem = 2
helpertype = normal
ID = 1505
stateno = 1505
name = "Push Block"
postype = p1

[State 1502, Accel]
type = veladd
trigger1 = animelemtime(3) >= 0
y = 0.5

[State 1502, Vel]
type = velset
trigger1 = animelem = 3
x = 0
y = -2

[State Land]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;EX SAIKYOU-RYUU BOUGYO=
;----- STANDING -----
[Statedef 1510]
type = S
physics = S
movetype = I
anim = 1500
velset = 0, 0
ctrl = 0
facep2 = 1
poweradd = -500
sprpriority = 2

[State 1510, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 1510, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1510, EX FX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 1510, EX FX]
type = explod
trigger1 = !time
trigger1 = 1 || map(exflash) := 30
anim = 7210
sprpriority = 3
postype = p1
pos = -2 * const(size.xscale), -68 * const(size.yscale)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1510, NHB]
type = nothitby
trigger1 = animelemtime(3) < 0
time = 1
value = SCA

[State 1510, Sound]
type = playsnd
trigger1 = !time
value = 3, 5
channel = 0

[State 1510, Pusher]
type = helper
trigger1 = animelem = 2
helpertype = normal
ID = 1505
stateno = 1505
name = "Push Block"
postype = p1

[State 1510, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- CROUCHING -----
[Statedef 1511]
type = C
physics = C
movetype = I
anim = 1501
velset = 0, 0
ctrl = 0
facep2 = 1
poweradd = -500
sprpriority = 2

[State 1511, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 1511, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1511, EX FX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 1511, EX FX]
type = explod
trigger1 = !time
trigger1 = 1 || map(exflash) := 30
anim = 7210
sprpriority = 3
postype = p1
pos = -1 * const(size.xscale), -45 * const(size.yscale)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1511, NHB]
type = nothitby
trigger1 = animelemtime(3) < 0
time = 1
value = SCA

[State 1511, Sound]
type = playsnd
trigger1 = !time
value = 3, 5
channel = 0

[State 1511, Pusher]
type = helper
trigger1 = animelem = 2
helpertype = normal
ID = 1505
stateno = 1505
name = "Push Block"
postype = p1

[State 1511, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;----- AERIAL -----
[Statedef 1512]
type = A
physics = N
movetype = I
anim = 1502
ctrl = 0
facep2 = 1
velset = 0, 0
poweradd = -500
sprpriority = 2

[State 1512, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 1512, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1512, EX FX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 1512, EX FX]
type = explod
trigger1 = !time
trigger1 = 1 || map(exflash) := 30
anim = 7210
sprpriority = 3
postype = p1
pos = 10 * const(size.xscale), -89 * const(size.yscale)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1512, NHB]
type = nothitby
trigger1 = animelemtime(3) < 0
time = 1
value = SCA

[State 1512, Freeze]
type = posfreeze
trigger1 = animelemtime(3) < 0
value = 1

[State 1512, Sound]
type = playsnd
trigger1 = !time
value = 3, 5
channel = 0

[State 1512, Pusher]
type = helper
trigger1 = animelem = 2
helpertype = normal
ID = 1505
stateno = 1505
name = "Push Block"
postype = p1

[State 1512, Accel]
type = veladd
trigger1 = animelemtime(3) >= 0
y = 0.5

[State 1512, Vel]
type = velset
trigger1 = animelem = 3
x = 0
y = -2

[State Land]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;CROUCHING TAUNT=
[Statedef 2801]
type = C
movetype = I
physics = C
anim = 2801
velset = 0, 0
poweradd = 50 * map(meterscaling)
sprpriority = 1
ctrl = 0
facep2 = 1

[State 2801, Drain Power]
redirectID = p2, ID
type = poweradd
trigger1 = animelem = 19
value = -min(ceil(p2, powermax / 12.0), 250)

[State 2801, Sound]
type = playsnd
trigger1 = animelem = 3
value = 4, 11
channel = 0

[State 2801, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 1
;channel = 1

[State 2801, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;AIR TAUNT=
[Statedef 2802]
type = A
physics = N
movetype = I
anim = 2802
poweradd = 50 * map(meterscaling)
sprpriority = 1
ctrl = 0

[State 2802, Accel]
type = veladd
trigger1 = 1
y = const(movement.yaccel) * 0.75

[State 2802, Sound]
type = playsnd
trigger1 = animelem = 2
value = 4, 17
channel = 0

[State 2802, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 1
;channel = 1

[State Land]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;ROLLING TAUNT=
;--- Forward ---
[Statedef 2810]
type = A
movetype = I
physics = C
anim = 2810
velset = 0, 0
poweradd = 100 * map(meterscaling)
sprpriority = 1
ctrl = 0
facep2 = 1

[State 2810, Push]
type = playerpush
trigger1 = animelemtime(11) < 0
value = 0

[State 2810, Turn]
type = turn
trigger1 = animelem = 12
trigger1 = p2dist x < 0

[State 2810, Vel]
type = velset
trigger1 = animelemtime(3) >= 0 && animelemtime(10) < 0
x = 6

[State 2810, Vel]
type = velset
trigger1 = animelem = 12
x = 0

[State 2810, Sound]
type = playsnd
trigger1 = animelem = 3
value = 0, 102

[State 2810, Dust]
type = explod
trigger1 = !(time % 3)
trigger1 = animelemtime(3) >= 0 && animelemtime(11) < 0
anim = 7103
sprpriority = 3
postype = p1
vel = -1, 0
scale = 0.5, 0.5
trans = addalpha
alpha = 192, 256
ownpal = 1

[State 2810, Get Power]
type = poweradd
trigger1 = animelem = 14
value = 100 * map(meterscaling); getpower

[State 2810, Drain Power]
redirectID = p2, ID
type = poweradd
trigger1 = animelem = 25
value = -min(ceil(p2, powermax / 12.0), 250)

[State 2810, Sound]
type = playsnd
trigger1 = animelem = 14
value = 4, 14
channel = 0

[State 2810, Sound]
type = playsnd
trigger1 = animelem = 14
value = 1, 1
;channel = 1

[State 2810, Type]
type = statetypeset
trigger1 = animelem = 10
statetype = S
physics = S

[State 2810, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Backward ---
[Statedef 2811]
type = A
physics = N
movetype = I
anim = 2811
velset = 0, 0
poweradd = 100 * map(meterscaling)
sprpriority = 1
ctrl = 0
facep2 = 1

[State 2811, Push]
type = playerpush
trigger1 = animelemtime(11) < 0
value = 0

[State 2811, Turn]
type = turn
trigger1 = animelem = 12
trigger1 = p2dist x < 0

[State 2811, Vel]
type = velset
trigger1 = animelemtime(3) >= 0 && animelemtime(10) < 0
x = -6

[State 2811, Vel]
type = velset
trigger1 = animelem = 12
x = 0

[State 2811, Sound]
type = playsnd
trigger1 = animelem = 3
value = 0, 105

[State 2811, Dust]
type = explod
trigger1 = !(time % 3)
trigger1 = animelemtime(3) >= 0 && animelemtime(11) < 0
anim = 7103
sprpriority = 3
postype = p1
vel = 1, 0
scale = 0.5, 0.5
trans = addalpha
alpha = 192, 256
ownpal = 1

[State 2811, Get Power]
type = poweradd
trigger1 = animelem = 14
value = 100 * map(meterscaling); getpower

[State 2811, Drain Power]
redirectID = p2, ID
type = poweradd
trigger1 = animelem = 25
value = -min(ceil(p2, powermax / 12.0), 250)

[State 2811, Sound]
type = playsnd
trigger1 = animelem = 14
value = 4, 1
channel = 0

[State 2811, Sound]
type = playsnd
trigger1 = animelem = 14
value = 1, 1
;channel = 1

[State 2811, Type]
type = statetypeset
trigger1 = animelem = 10
statetype = S
physics = S

[State 2811, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;PUNCH ZERO COUNTER=
[Statedef 2900]
type = S
physics = N
movetype = A
anim = 2900
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0

[State 2900, NHB]
type = nothitby
trigger1 = animelemtime(4) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 2900, Sound]
type = playsnd
trigger1 = animelem = 3
value = 4, ifelse(random < 500, 1, 11)
channel = 0

[State 2900, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 3
;channel = 1
stopongethit = 1

[State 2900, Hit]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 50, 13
dizzypoints = 0
getpower = 0, 0
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
ground.type = Low
air.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -5.54, -5.25
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -5.54, -5.25
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = s2, 3
guardsound = s2, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 50), map(sparky) := -85
envshake.time = 10
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.freq = 180
kill = 0

[State 2900, Type]
type = statetypeset
trigger1 = animelem = 5
movetype = I

[State 2900, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;KICK ZERO COUNTER=
[Statedef 2910]
type = C
physics = N
movetype = A
anim = 2910
ctrl = 0
velset = 0, 0
sprpriority = -1
poweradd = 0

[State 2910, NHB]
type = nothitby
trigger1 = animelemtime(4) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 2910, Sound]
type = playsnd
trigger1 = animelem = 2
value = 3, ifelse(random < 500, 2, 5)
channel = 0

[State 2910, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 6
;channel = 1
stopongethit = 1

[State 2910, Sprite Priority]
type = sprpriority
trigger1 = animelem = 3
value = -1

[State 2910, Sprite Priority]
type = sprpriority
trigger1 = animelem = 6
value = 2

[State 2910, Hit]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = C, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 50, 13
dizzypoints = 0
getpower = 0, 0
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
ground.type = Low
air.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -5.54, -5.25
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -5.54, -5.25
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = s2, 6
guardsound = s2, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 80), map(sparky) := -8
envshake.time = 10
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.freq = 180
p1sprpriority = sprpriority
kill = 0

[State 2910, Type]
type = statetypeset
trigger1 = animelem = 5
movetype = I

[State 2910, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1
