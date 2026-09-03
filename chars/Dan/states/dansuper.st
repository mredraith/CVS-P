; ______________________________
;| Dan by Phantom.of.the.Server |
; 
;
;SUPER STATES=
;

;SHINKUU GADOU KEN=
[Statedef 3000]
type = S
physics = S
movetype = A
anim = 3000
ctrl = 0
velset = 0, 0
poweradd = -1000 + 0 * (map(superlevel) := 1)
sprpriority = 2
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !map(customcombo), 2, 1))

[State Cancel Flags]
type = null
trigger1 = time <= 0
trigger1 = 1 || map(supercancelflag) := (prevstateno = [1000, 2999] && map(supercancel) && !map(customcombo))
trigger1 = 1 || map(hypercancelflag) := (prevstateno = [3000, 4999] && map(hypercancel))
ignorehitpause = 1
persistent = 0

[State Super Cancel Flash]
type = palfx
trigger1 = time % 2
trigger1 = time = [1, 11]
trigger1 = map(supercancelflag) || map(hypercancelflag)
trigger1 = 1 || map(juggle_count) := 0
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3000, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 3000, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_super) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 3000, Sound]
type = playsnd
trigger1 = time = 3
value = 4, 16
channel = 0

[State 3000, Super Pause FX]
type = helper
trigger1 = map(cfg_superfx)
trigger1 = time = 3
helpertype = normal
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = -22 * const(size.xscale), -93 * const(size.yscale)
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Super Pause]
type = superpause
trigger1 = time = 3
time = 41
movetime = 41
anim = ifelse(map(cfg_superfx), -1, 100)
pos = -22 * const(size.xscale), -93 * const(size.yscale)
sound = s0, 8500
p2defmul = 1
darken = !map(cfg_superfx)

[State 3000, NHB]
type = nothitby
trigger1 = animelemtime(4) < -1
time = 1
value = SCA

[State 3000, Width]
type = width
trigger1 = animelemtime(4) = -1
value = 20 * const(size.xscale)

[State 3000, Correct Projectile Trade]
type = hitby
trigger1 = animelem = 4
value2 = SCA, AA, AT
time = 1

[State 3000, Gadouken]
type = helper
trigger1 = animelem = 4
helpertype = normal; projectile
stateno = 3005
ID = 3005
name = "Shinkuu Gadouken"
postype = p1
pos = 60 * const(size.xscale), -62 * const(size.yscale)
size.xscale = 0.750
size.yscale = 0.375
ownpal = 1

[State 3000, Sound]
type = playsnd
trigger1 = animelem = 4
value = 4, 20
channel = 0

[State 3000, Sound]
type = playsnd
trigger1 = animelem = 4
value = 5, 1

[State 3000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;KOURYUU REKKA=
[Statedef 3100]
type = S
physics = N
movetype = A
ctrl = 0
anim = 3100
velset = 0, 0
poweradd = -1000 + 0 * (map(superlevel) := 1)
sprpriority = 2
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !map(customcombo), 2, 1))

[State Cancel Flags]
type = null
trigger1 = time <= 0
trigger1 = 1 || map(supercancelflag) := (prevstateno = [1000, 2999] && map(supercancel) && !map(customcombo))
trigger1 = 1 || map(hypercancelflag) := (prevstateno = [3000, 4999] && map(hypercancel))
ignorehitpause = 1
persistent = 0

[State Super Cancel Flash]
type = palfx
trigger1 = time % 2
trigger1 = time = [1, 11]
trigger1 = map(supercancelflag) || map(hypercancelflag)
trigger1 = 1 || map(juggle_count) := 0
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3100, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 3100, Strength]
type = mapset
trigger1 = !AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(map(cmd_strength_c), 2, ifelse(map(cmd_strength_b), 1, 0))
ignorehitpause = 1
persistent = 0

[State 3100, Button AI]
type = mapset
trigger1 = AIlevel
trigger1 = time <= 0
map = "strength"
value = 2

[State 3100, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_super) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 3100, Sound]
type = playsnd
trigger1 = time = 3
value = 4, 15
channel = 0

[State 3100, Super Pause FX]
type = helper
trigger1 = map(cfg_superfx)
trigger1 = time = 3
helpertype = normal
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = 15 * const(size.xscale), -49 * const(size.yscale)
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3100, Super Pause]
type = superpause
trigger1 = time = 3
time = 41
movetime = 41
anim = ifelse(map(cfg_superfx), -1, 100)
pos = 15 * const(size.xscale), -49 * const(size.yscale)
sound = s0, 8500
p2defmul = 1
darken = !map(cfg_superfx)

[State 3100, NHB]
type = nothitby
trigger1 = animelemtime(2) < 0
time = 1
value = SCA
ignorehitpause = 1

[State 3100, Accel]
type = veladd
trigger1 = vel x > 0
x = -0.6304

[State 3100, Accel]
type = velset
trigger1 = vel x < 0
x = 0

[State 3100, Vel]
type = velset
trigger1 = animelem = 2
x = ifelse(map(strength) = 2, 9.225, ifelse(map(strength) = 1, 6.50, 0))

[State 3100, Accel]
type = veladd
trigger1 = animelemtime(11) >= 1
y = 0.6027

[State 3100, Vel]
type = velset
trigger1 = animelemtime(11) = 1
x = 0
y = -11.8527

[State 3100, Dust]
type = helper
trigger1 = vel x
trigger1 = animelem = 2
helpertype = normal
stateno = 7104
ID = 7100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 3100, Sound]
type = playsnd
trigger1 = animelem = 10
value = 4, 9
channel = 0

[State 3100, Sound]
type = playsnd
trigger1 = animelemtime(11) = 1
value = 0, 41

[State 3100, Dust]
type = helper
trigger1 = animelemtime(11) = 1
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 3100, Sound]
type = playsnd
trigger1 = vel x
trigger1 = animelem = 2
value = 0, 102

[State 3100, Sound]
type = playsnd
trigger1 = animelem = 2 || animelem = 10
value = 1, 3
;channel = 1
stopongethit = 1

[State 3100, Blur FX]
type = explod
trigger1 = animelem = 3 || animelem = 11
ID = 8140
anim = 8140
postype = p1
pos = 40, -100
bindtime = 60
trans = addalpha
alpha = 256, 256
removetime = ifelse((animelem = 3), 4, 8)
interpolation.time = ifelse((animelem = 3), 4, 8)
interpolation.alpha = 0, 256
sprpriority = sprpriority + 1
removeongethit = 1
removeonchangestate = 1
ownpal = 1

[State 3100, Type]
type = statetypeset
trigger1 = animelem = 11
statetype = A
physics = N

[State 3100, Hit Low]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 2)
attr = S, HA
damage = 40, 10
dizzypoints = 0
animtype = Medium
fall.animtype = Medium
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 4, 4
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 25) * (map(sparkx.max) := 45), map(sparky) := -70
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.velocity = 0, -4
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
forcestand = 1
air.fall = 1
fall.recover = 0
down.recover = 1

[State 3100, Hit High]
type = hitdef
trigger1 = animelem = 3
trigger2 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 3)
attr = S, HA
damage = 40, 10
dizzypoints = 0
animtype = Hard
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 4, 4
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 45), map(sparky) := ifelse((animelem = 3), -85, -100)
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.velocity = 0, -4
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
forcestand = 1
air.fall = 1
fall.recover = 0
down.recover = 1

[State 3100, Hit Low2]
type = hitdef
trigger1 = animelem = 10
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 4)
attr = S, HA
damage = 40, 10
dizzypoints = 0
animtype = Medium
fall.animtype = Medium
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 4, 4
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 45), map(sparky) := -70
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.velocity = 0, -4
guard.velocity = 0
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
fall = 0
air.fall = 1
fall.recover = 0
down.recover = 1
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
forcestand = 1

[State 3100, Hit High2]
type = hitdef
trigger1 = animelem = 11
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 4)
attr = S, HA
damage = 30, 8
dizzypoints = 0
animtype = Up
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 4, 4
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 45), map(sparky) := -85
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = 0, -8
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.velocity = 0, -8
guard.velocity = 0
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
fall = 1
fall.recover = 0
down.recover = 1
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
forcestand = 1

[State 3100, Hit Final]
type = hitdef
trigger1 = animelem = 12
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 5)
attr = A, HA
damage = 30, 8
dizzypoints = 0
animtype = Diagup
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 4, 4
sparkno = -1 + 0 * (map(sparkno) := 8014)
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
ground.velocity = -3, -8
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.velocity = -3, -8
guard.velocity = 0
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
fall = 1
fall.recover = 0
down.recover = 1
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
forcestand = 1

[State 3100, Idle]
type = statetypeset
trigger1 = animelemtime(13) >= 0
movetype = I
persistent = 0

[State 3100, Land]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 3101


;---Land---
[Statedef 3101]
type = S
physics = S
movetype = I
anim = 3101
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 3101, Pos]
type = posset
trigger1 = 1
y = 0

[State 3101, Sound]
type = playsnd
trigger1 = !time
value = 0, 52

[State 3101, Dust]
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

[State 3101, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;HISHOU BURAIKEN=
[Statedef 3200]
type = S
physics = N
movetype = A
ctrl = 0
anim = 3200
velset = 0, 0
poweradd = -2000 + 0 * (map(superlevel) := 2)
sprpriority = 2
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !map(customcombo), 2, 1))

[State Cancel Flags]
type = null
trigger1 = time <= 0
trigger1 = 1 || map(supercancelflag) := (prevstateno = [1000, 2999] && map(supercancel) && !map(customcombo))
trigger1 = 1 || map(hypercancelflag) := (prevstateno = [3000, 4999] && map(hypercancel))
ignorehitpause = 1
persistent = 0

[State Super Cancel Flash]
type = palfx
trigger1 = time % 2
trigger1 = time = [1, 11]
trigger1 = map(supercancelflag) || map(hypercancelflag)
trigger1 = 1 || map(juggle_count) := 0
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3200, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 3200, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_super) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 3200, Sound]
type = playsnd
trigger1 = time = 3
value = 4, 4
channel = 0

[State 3200, Super Pause FX]
type = helper
trigger1 = map(cfg_superfx)
trigger1 = time = 3
helpertype = normal
stateno = 8510
ID = 8500
name = "Superpause FX"
postype = p1
pos = 2 * const(size.xscale), -78 * const(size.yscale)
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3200, Super Pause]
type = superpause
trigger1 = time = 3
time = 43
movetime = 43
anim = ifelse(map(cfg_superfx), -1, 101)
pos = 2 * const(size.xscale), -78 * const(size.yscale)
sound = s0, 8510
p2defmul = 1
darken = !map(cfg_superfx)

[State 3200, NHB]
type = nothitby
trigger1 = animelemtime(9) < 0
time = 1
value = SCA
ignorehitpause = 1

[State 3200, Buraiken Var]
type = mapset
trigger1 = 1
map = "buraiken"
value = 0

[State 3200, Sound]
type = playsnd
trigger1 = animelem = 6
value = 3, 6
channel = 0

[State 3200, Sound]
type = playsnd
trigger1 = animelem = 8
value = 1, 3
;channel = 1
stopongethit = 1

[State 3200, Hit First]
type = hitdef
trigger1 = animelem = 8
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 99)
attr = S, HA
damage = 60, 15
dizzypoints = 0
animtype = Hard
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 0, 4
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 40) * (map(sparkx.max) := 80), map(sparky) := -55
hitsound = s2, ifelse((animelem = 8 || animelem = 55), 3, 6)
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 32
guard.hittime = (32) - 6
ground.slidetime = 18
ground.velocity = ifelse(p2bodydist x < 30, -2.0, 3.0), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.velocity = 0, -6
air.fall = 1
fall.recover = 0
down.recover = 0; cannot mash
down.recovertime = 30
p1sprpriority = sprpriority
forcestand = 1
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
yAccel = (0.5 + (ComboCount * 0.03))

[State 3200, End]
type = changestate
trigger1 = !animtime
value = 3210


;--- Random attacks ---
[Statedef 3210]
type = S
physics = N
movetype = A
ctrl = 0
anim = 3210
velset = 0, 0
sprpriority = 2

[State 3210, Buraiken Var]
type = mapadd
trigger1 = !time
map = "buraiken"
value = 1

[State 3210, Standing Attacks]
type = changeanim
trigger1 = !time
value = 3210 + (random % 9)

[State 3210, Crouching Attacks]
type = changeanim
trigger1 = !time
trigger1 = random < 333
value = 3220 + (random % 6)

[State 3210, Sound]
type = playsnd
trigger1 = !time
trigger1 = map(buraiken) > 8
value = 3, 0
channel = 0

[State 3210, Punch Whiff Sound]
type = playsnd
trigger1 = !time
trigger1 = anim = 3210 || anim = 3211 || anim = 3212 || anim = 3217 || anim = 3218 || anim = 3220 || anim = 3221 || anim = 3222
value = 1, 1
;channel = 1
stopongethit = 1

[State 3210, Kick Whiff Sound]
type = playsnd
trigger1 = !time
trigger1 = anim = 3213 || anim = 3214 || anim = 3215 || anim = 3216 || anim = 3223 || anim = 3224 || anim = 3225
value = 1, 4
;channel = 1
stopongethit = 1

[State 3210, Standing Attack Variables]
type = null
triggerall = !time
trigger1 = anim = 3210
trigger1 = 1 || map(sparkx.min) := 50 || map(sparkx.max) := 80 || map(sparky) := -90 || map(hitsound) := 1
trigger2 = anim = 3211
trigger2 = 1 || map(sparkx.min) := 50 || map(sparkx.max) := 80 || map(sparky) := -55 || map(hitsound) := 2
trigger3 = anim = 3212
trigger3 = 1 || map(sparkx.min) := 50 || map(sparkx.max) := 80 || map(sparky) := -55 || map(hitsound) := 3
trigger4 = anim = 3213
trigger4 = 1 || map(sparkx.min) := 50 || map(sparkx.max) := 80 || map(sparky) := -50 || map(hitsound) := 4
trigger5 = anim = 3214
trigger5 = 1 || map(sparkx.min) := 50 || map(sparkx.max) := 80 || map(sparky) := -75 || map(hitsound) := 5
trigger6 = anim = 3215
trigger6 = 1 || map(sparkx.min) := 50 || map(sparkx.max) := 80 || map(sparky) := -85 || map(hitsound) := 6
trigger7 = anim = 3216
trigger7 = 1 || map(sparkx.min) := 50 || map(sparkx.max) := 80 || map(sparky) := -90 || map(hitsound) := 6
trigger8 = anim = 3217
trigger8 = 1 || map(sparkx.min) := 50 || map(sparkx.max) := 80 || map(sparky) := -90 || map(hitsound) := 3
trigger9 = anim = 3218
trigger9 = 1 || map(sparkx.min) := 50 || map(sparkx.max) := 80 || map(sparky) := -90 || map(hitsound) := 1

[State 3210, Crouching Attack Variables]
type = null
triggerall = !time
trigger1 = anim = 3220
trigger1 = 1 || map(sparkx.min) := 50 || map(sparkx.max) := 80 || map(sparky) := -65 || map(hitsound) := 1
trigger2 = anim = 3221
trigger2 = 1 || map(sparkx.min) := 50 || map(sparkx.max) := 80 || map(sparky) := -60 || map(hitsound) := 2
trigger3 = anim = 3222
trigger3 = 1 || map(sparkx.min) := 50 || map(sparkx.max) := 80 || map(sparky) := -90 || map(hitsound) := 3
trigger4 = anim = 3223
trigger4 = 1 || map(sparkx.min) := 50 || map(sparkx.max) := 80 || map(sparky) := -10 || map(hitsound) := 4
trigger5 = anim = 3224
trigger5 = 1 || map(sparkx.min) := 50 || map(sparkx.max) := 80 || map(sparky) := -10 || map(hitsound) := 5
trigger6 = anim = 3225
trigger6 = 1 || map(sparkx.min) := 50 || map(sparkx.max) := 80 || map(sparky) := -10 || map(hitsound) := 6

[State 3210, Hit]
type = hitdef
trigger1 = animelem = 1
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 99)
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 20, 5
dizzypoints = 0
getpower = 0, 0
givepower = 40, 40
pausetime = 0, 4
guard.pausetime = 0, 4
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 32
guard.hittime = (32) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
down.hittime = 20
ground.velocity = ifelse(p2bodydist x < 30, -2.0, 3.0), 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = 0, -6
air.cornerpush.veloff = 0
down.velocity = 0, -6
down.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 0
air.fall = 1
fall.recover = 0
down.recover = 0; cannot mash
down.recovertime = 30
p1sprpriority = sprpriority
forcestand = 1
hitsound = s2, map(hitsound)
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10, map(sparky)
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667

[State 3210, Hit Low and OTG]
type = modifyhitdef
trigger1 = animelem = 1
trigger1 = anim = 3223 || anim = 3224 || anim = 3225
hitflag = MAFD
guardflag = L

[State 3210, Hit High Anim]
type = modifyhitdef
triggerall = animelem = 1
trigger1 = p2, anim = [5010, 5019]
trigger2 = anim = 3210 || anim = 3211 || anim = 3214 || anim = 3215
ground.type = High

;[State 3210, Hitsound Pitch]
;type = modifysnd
;trigger1 = movehit = 1
;channel = 2
;freqmul = 0.9 + (random / 5000.0)

[State 3210, End]
type = changestate
trigger1 = !animtime
value = ifelse(map(buraiken) < 10, 3210, 3230)


;--- Final Koryuken ---
[Statedef 3230]
type = S
physics = N
movetype = A
ctrl = 0
anim = 3230
velset = 0, 0
sprpriority = 2
;facep2 = 1

[State 3230, Sound]
type = playsnd
trigger1 = animelem = 8
value = 5, 14

[State 3230, Sound]
type = playsnd
trigger1 = animelem = 9
value = 4, 0
channel = 0

[State 3230, Sound]
type = playsnd
trigger1 = animelem = 9
value = 1, 3
;channel = 1
stopongethit = 1

[State 3230, Blur FX]
type = explod
trigger1 = animelem = 10
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

[State 3230, Accel]
type = veladd
trigger1 = vel x > 0
x = -0.6304

[State 3230, Accel]
type = velset
trigger1 = vel x < 0
x = 0

[State 3230, Accel]
type = veladd
trigger1 = animelemtime(10) >= 1
y = 0.6027

[State 3230, Sound]
type = playsnd
trigger1 = animelem = 3
value = 0, 102

[State 3230, Pos]
type = posadd
trigger1 = animelem = 3 || animelem = 4 || animelem = 5 || animelem = 6
x = 16 * const(size.xscale)

[State 3230, Vel]
type = velset
trigger1 = animelemtime(10) = 1
x = 8.20

[State 3230, Vel]
type = velset
trigger1 = animelemtime(10) = 1
y = -11.8527

[State 3230, Vel]
type = velset
trigger1 = vel y > 0
x = 0

[State 3230, Sound]
type = playsnd
trigger1 = animelemtime(10) = 1
value = 0, 41

[State 3230, Dust]
type = helper
trigger1 = animelemtime(10) = 1
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 3230, Type]
type = statetypeset
trigger1 = animelem = 10
statetype = A
physics = N

[State 3230, Hit Kouryuken]
type = hitdef
trigger1 = animelem = 9
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 99)
attr = S, HA
damage = 40, 10
dizzypoints = 0
animtype = Medium
fall.animtype = Medium
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 4, 4
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 45), map(sparky) := -70
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -2, -9
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.velocity = -2, -9
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0, 0
givepower = 40, 40
fall = 1
fall.recover = 0
down.recover = 0; cannot mash
down.recovertime = 30
p1sprpriority = sprpriority
forcestand = 1
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
yAccel = (0.5 + (ComboCount * 0.03))

[State 3230, Hit Final]
type = hitdef
trigger1 = animelemtime(10) = 5
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 99)
attr = A, HA
damage = 20, 5
dizzypoints = 0
animtype = Up
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8014)
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
ground.velocity = -4, -9
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.velocity = -4, -9
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
fall = 1
fall.recover = 0
down.recover = 0; cannot mash
down.recovertime = 30
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
forcestand = 1

[State 3230, Idle]
type = statetypeset
trigger1 = animelemtime(11) >= 0
movetype = I
persistent = 0

[State 3230, Land]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 3231


;---Land---
[Statedef 3231]
type = S
physics = S
movetype = I
anim = 3231
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 3231, Pos]
type = posset
trigger1 = 1
y = 0

[State 3231, Sound]
type = playsnd
trigger1 = !time
value = 0, 52

[State 3231, Dust]
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

[State 3231, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;CHOUHATSU DENSETSU=
[Statedef 3300]
type = S
physics = S
movetype = I
ctrl = 0
anim = 3300
velset = 0, 0
poweradd = -1000 + 0 * (map(superlevel) := 1) * !map(shinwa)
sprpriority = 2
facep2 = 1

[State Cancel Flags]
type = null
trigger1 = time <= 0
trigger1 = 1 || map(supercancelflag) := (prevstateno = [1000, 2999] && map(supercancel) && !map(customcombo))
trigger1 = 1 || map(hypercancelflag) := (prevstateno = [3000, 4999] && map(hypercancel))
ignorehitpause = 1
persistent = 0

[State Super Cancel Flash]
type = palfx
trigger1 = time % 2
trigger1 = time = [1, 11]
trigger1 = map(supercancelflag) || map(hypercancelflag)
trigger1 = 1 || map(juggle_count) := 0
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3300, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 3300, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_super) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 3300, Sound]
type = playsnd
trigger1 = time = 3
value = 4, 2
channel = 0

[State 3300, Super Pause FX]
type = helper
trigger1 = map(cfg_superfx)
trigger1 = time = 3
trigger1 = !map(shinwa)
helpertype = normal
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = 43 * const(size.xscale), -91 * const(size.yscale)
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3300, Super Pause]
type = superpause
trigger1 = time = 3
trigger1 = !map(shinwa)
time = 41
movetime = 41
anim = ifelse(map(cfg_superfx), -1, 100)
pos = 43 * const(size.xscale), -91 * const(size.yscale)
sound = s0, 8500
p2defmul = 1
darken = !map(cfg_superfx)

[State 3300, NHB]
type = nothitby
trigger1 = !map(shinwa)
time = 15
value = SCA
ignorehitpause = 1

[State 3300, Push]
type = playerpush
trigger1 = anim = 3301
value = 0

[State 3300, Densetsu Var]
type = mapset
trigger1 = 1
map = "densetsu"
value = 0

[State 3300, Taunt Hit]
type = helper
trigger1 = map(shinwa) && !numhelper(4190)
trigger1 = animelem = 4
helpertype = normal
stateno = 4190
ID = 4190
name = "Taunt Hit"
postype = p1
pos = 0, 0
size.xscale = 1
size.yscale = 1

[State 3300, End]
type = changestate
trigger1 = !animtime
value = 3301


;--- Rolling ---
[Statedef 3301]
type = A
physics = N
movetype = I
ctrl = 0
anim = 3301
velset = 0, 0
sprpriority = 2
facep2 = 1

[State 3301, Push]
type = playerpush
trigger1 = 1
value = 0

[State 3301, Densetsu Var]
type = mapadd
trigger1 = !time
map = "densetsu"
value = 1

[State 3301, Turn Back and Forward]
type = turn
trigger1 = !time
trigger1 = map(densetsu) > 0
trigger1 = p2bodydist x < 120
trigger1 = stagebackedgedist > 120
;trigger1 = map(densetsu) < 5
;trigger1 = map(densetsu) % 2

[State 3301, Pos]
type = posadd
trigger1 = !time
x = 10 * const(size.xscale)

[State 3301, Vel]
type = velset
trigger1 = animelemtime(2) >= 0
x = 6

[State 3301, Pos]
type = posset
trigger1 = 1
y = 0

[State 3301, Sound]
type = playsnd
trigger1 = animelem = 2
value = 0, 102

[State 3301, Dust]
type = explod
trigger1 = animelemtime(2) >= 0
trigger1 = !(animelemtime(2) % 3)
anim = 7103
sprpriority = 3
postype = p1
vel = -1, 0
scale = 0.5, 0.5
trans = addalpha
alpha = 192, 256
ownpal = 1

[State 3301, End]
type = changestate
trigger1 = !animtime
value = ifelse(map(densetsu) >= 6 || roundstate != 2, 3320, 3310)


;--- Taunting ---
[Statedef 3310]
type = S
physics = S
movetype = I
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 3310, Anim]
type = changeanim
trigger1 = !time
trigger1 = map(densetsu) >= 5
value = ifelse(random < 500, 3304, 3314)

[State 3310, Anim]
type = changeanim
trigger1 = !time
trigger1 = map(densetsu) = 4
trigger1 = random < 500
value = ifelse(random < 500, 3310, 3313)

[State 3310, Anim]
type = changeanim
trigger1 = !time
trigger1 = anim <= 3301
value = ifelse(random < 142, 3305, ifelse(random < 167, 3306, ifelse(random < 200, 3307, ifelse(random < 250, 3308, ifelse(random < 333, 3309, ifelse(random < 500, 3311, 3312))))))

[State 3310, Drain Power]
redirectID = p2, ID
type = poweradd
trigger1 = !animtime
value = -min(ceil(p2, powermax / 6.0), 500)

[State 3310, Sound]
type = playsnd
trigger1 = anim = 3303 && animelem = 2
value = 4, 32
channel = 0

[State 3310, Sound]
type = playsnd
trigger1 = anim = 3304 && animelem = 5
value = 4, 24
channel = 0

[State 3310, Sound]
type = playsnd
trigger1 = anim = 3305 && animelem = 5
trigger2 = anim = 3306 && animelem = 4
trigger3 = anim = 3307 && animelem = 3
trigger4 = anim = 3308 && animelem = 5
trigger5 = anim = 3309 && animelem = 4
trigger6 = anim = 3311 && animelem = 3
trigger7 = anim = 3312 && animelem = 3
trigger8 = anim = 3314 && animelem = 3
trigger9 = anim = 3320 && animelem = 4
value = 4, ifelse(random < 100, 1, ifelse(random < 111, 3, ifelse(random < 125, 10, ifelse(random < 142, 11, ifelse(random < 167, 13, ifelse(random < 200, 14, ifelse(random < 250, 17, ifelse(random < 333, 21, ifelse(random < 500, 39, 40)))))))))
channel = 0

[State 3310, Sound]
type = playsnd
trigger1 = anim = 3313 && animelem = 3
value = 5000, 0
channel = 0

[State 3310, Sound]
type = playsnd
trigger1 = anim = 3310 && animelem = 3
value = 5000, 1
channel = 0

[State 3310, Whiff Snd]
type = playsnd
trigger1 = anim = 3304 && animelem = 5
trigger2 = anim = 3305 && animelem = 4
trigger3 = anim = 3306 && animelem = 3
trigger4 = anim = 3307 && animelem = 4
trigger5 = anim = 3308 && animelem = 5
trigger6 = anim = 3309 && animelem = 4
value = 1, 1
;channel = 1
stopongethit = 1

[State 3310, Sound]
type = playsnd
trigger1 = anim = 3314 && animelem = 4
value = 5, 11

[State 3310, Fill Power]
type = palfx
trigger1 = anim = 3303
trigger1 = animelem = 1
trigger1 = roundstate = 2
time = 20
add = 255, 100, 0
sinadd = -255, -100, 0, 80

[State 3310, Fill Power]
type = playsnd
trigger1 = anim = 3303
trigger1 = animelem = 1
trigger1 = roundstate = 2
value = 5, 15
channel = 7

[State 3310, Fill Power]
type = powerset
trigger1 = anim = 3303
trigger1 = animelem = 1
trigger1 = roundstate = 2
value = powermax

[State 3310, Turn]
type = turn
triggerall = p2dist x < 0
trigger1 = anim = 3304 && animelem = 3
trigger2 = anim = 3305 && animelem = 3
trigger3 = anim = 3306 && animelem = 2
trigger4 = anim = 3307 && animelem = 3
trigger5 = anim = 3308 && animelem = 3
trigger6 = anim = 3309 && animelem = 3
trigger7 = anim = 3310 && animelem = 3
trigger8 = anim = 3311 && animelem = 3
trigger9 = anim = 3312 && animelem = 3
trigger10 = anim = 3313 && animelem = 3
trigger11 = anim = 3314 && animelem = 3
trigger12 = anim = 3320 && animelem = 3

[State 3310, Vel]
type = velset
trigger1 = anim = 3304 && animelem = 3
trigger2 = anim = 3305 && animelem = 3
trigger3 = anim = 3306 && animelem = 2
trigger4 = anim = 3307 && animelem = 3
trigger5 = anim = 3308 && animelem = 3
trigger6 = anim = 3309 && animelem = 3
trigger7 = anim = 3310 && animelem = 3
trigger8 = anim = 3311 && animelem = 3
trigger9 = anim = 3312 && animelem = 3
trigger10 = anim = 3313 && animelem = 3
trigger11 = anim = 3314 && animelem = 3
trigger12 = anim = 3320 && animelem = 3
x = 0

[State 3310, Taunt Hit]
type = helper
triggerall = map(shinwa) && !numhelper(4190)
trigger1 = anim = 3303 && animelem = 2
trigger2 = anim = 3304 && animelem = 5
trigger3 = anim = 3305 && animelem = 5
trigger4 = anim = 3306 && animelem = 4
trigger5 = anim = 3307 && animelem = 3
trigger6 = anim = 3308 && animelem = 5
trigger7 = anim = 3309 && animelem = 4
trigger8 = anim = 3310 && animelem = 3
trigger9 = anim = 3311 && animelem = 3
trigger10 = anim = 3312 && animelem = 3
trigger11 = anim = 3313 && animelem = 3
trigger12 = anim = 3314 && animelem = 3
trigger13 = anim = 3320 && animelem = 4
trigger14 = anim = 3300 && animelemtime(3) = -1
helpertype = normal
stateno = 4190
ID = 4190
name = "Taunt Hit"
postype = p1
pos = 0, 0
size.xscale = 1
size.yscale = 1

[State 3310, Vel Moonwalk]
type = velset
trigger1 = anim = 3312
x = 0

[State 3310, Vel Moonwalk]
type = velset
triggerall = anim = 3312
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
trigger2 = animelemtime(6) >= 0 && animelemtime(7) < 0
x = -4

[State 3310, Moonwalk Steps]
type = playsnd
trigger1 = anim = 3312
trigger1 = animelem = 3 || animelem = 6
value = 0, ifelse((animelem = 3), 106, 103)

[State 3310, Pos]
type = posset
trigger1 = anim = 3303
y = 0

[State 3310, Vel]
type = velset
trigger1 = anim = 3303
x = 0
y = 0

[State 3310, Sound Dash]
type = playsnd
trigger1 = anim = 3311
trigger1 = animelem = 1
value = 0, 102

[State 3310, Sound Jump]
type = playsnd
trigger1 = anim = 3311
trigger1 = animelem = 3
value = 0, 40

[State 3310, Dust Jumping]
type = explod
trigger1 = anim = 3311
trigger1 = animelem = 3
anim = 7100
ID = 7100
sprpriority = 3
postype = p1
pos = 0, 0
ownpal = 1
scale = 0.5, 0.5

[State 3310, Sound Landing]
type = playsnd
trigger1 = anim = 3303
trigger1 = animelem = 1
value = 0, 52

[State 3310, Dust Landing]
type = explod
trigger1 = anim = 3303
trigger1 = animelem = 1
anim = 7102
ID = 7102
sprpriority = -2
postype = p1
ownpal = 1
scale = 0.5, 0.5

[State 3310, Sound Tripping]
type = playsnd
trigger1 = anim = 3313
trigger1 = animelem = 6
value = 5, 6

[State 3310, Sound Tripping]
type = explod
trigger1 = anim = 3313
trigger1 = animelem = 6
anim = 7102
ID = 7102
sprpriority = -2
postype = p1
ownpal = 1
scale = 0.75, 0.75

[State 3310, Shake Tripping]
type = envshake
trigger1 = anim = 3313
trigger1 = animelem = 6
time = 10
freq = 180
ampl = 1

[State 3310, Turn Off Shinwa]
type = mapset
trigger1 = anim = 3303
trigger1 = map(shinwa)
map = "shinwa"
value = 0

[State 3310, Type]
type = statetypeset
trigger1 = anim = 3300 || anim = 3303
trigger2 = anim = 3305
trigger2 = animelemtime(3) >= 0 && animelemtime(20) < 0
trigger3 = anim = 3307
trigger3 = animelemtime(3) >= 0 && animelemtime(10) < 0
trigger4 = anim = 3308
trigger4 = animelemtime(3) >= 0 && animelemtime(9) < 0
trigger5 = anim = 3309
trigger5 = animelemtime(3) >= 0 && animelemtime(11) < 0
trigger6 = anim = 3310
trigger6 = animelemtime(3) >= 0 && animelemtime(11) < 0
trigger7 = anim = 3311
trigger7 = animelemtime(11) >= 0
trigger8 = anim = 3312
trigger8 = animelemtime(3) >= 0 && animelemtime(10) < 0
trigger9 = anim = 3314
trigger9 = animelemtime(3) >= 0 && animelemtime(12) < 0
trigger10 = anim = 3320
trigger10 = animelemtime(3) >= 0 && animelemtime(9) < 0
statetype = S
physics = S

[State 3310, Type]
type = statetypeset
trigger1 = anim = 3304
trigger1 = animelemtime(3) < 0 || animelemtime(7) >= 0
trigger2 = anim = 3305
trigger2 = animelemtime(3) < 0 || animelemtime(20) >= 0
trigger3 = anim = 3306
trigger4 = anim = 3307
trigger4 = animelemtime(3) < 0 || animelemtime(10) >= 0
trigger5 = anim = 3308
trigger5 = animelemtime(3) < 0 || animelemtime(9) >= 0
trigger6 = anim = 3309
trigger6 = animelemtime(3) < 0 || animelemtime(11) >= 0
trigger7 = anim = 3310
trigger7 = animelemtime(3) < 0 || animelemtime(11) >= 0
trigger8 = anim = 3311
trigger8 = animelemtime(3) < 0 || animelemtime(12) >= 0
trigger9 = anim = 3312
trigger9 = animelemtime(3) < 0 || animelemtime(10) >= 0
trigger10 = anim = 3313
trigger11 = anim = 3314
trigger11 = animelemtime(3) < 0 || animelemtime(12) >= 0
trigger12 = anim = 3320
trigger12 = animelemtime(3) < 0 || animelemtime(9) >= 0
statetype = C
physics = C

[State 3310, Type]
type = statetypeset
trigger1 = anim = 3311
trigger1 = animelemtime(3) >= 0 && animelemtime(11) < 0
trigger2 = anim = 3313
trigger2 = animelemtime(3) >= 0 && animelemtime(6) < 0
statetype = A
physics = N

[State 3310, End]
type = changestate
trigger1 = !animtime
value = 3301


;--- Jump into air ---
[Statedef 3320]
type = S
physics = S
movetype = I
ctrl = 0
anim = 3320
velset = 0, 0
sprpriority = 2

[State 3320, Densetsu Sound]
type = playsnd
trigger1 = !time
value = 5, 5

[State 3320, Sound]
type = playsnd
trigger1 = animelem = 5
value = 4, 17
channel = 0

[State 3320, Turn]
type = turn
trigger1 = animelem = 3
trigger1 = p2dist x < 0

[State 3320, Accel]
type = veladd
trigger1 = animelemtime(3) >= 0
y = 0.5

[State 3320, Vel]
type = velset
trigger1 = animelem = 3
x = 4.0
y = -12.5

[State 3320, Sound Jump]
type = playsnd
trigger1 = animelem = 3
value = 0, 41

[State 3320, Dust Jumping]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 3320, Slowmotion]
type = pause
trigger1 = !(time % 2)
trigger1 = animelemtime(3) >= 0
time = 1

[State 3320, Flashes]
type = playsnd
trigger1 = !(time % 6)
trigger1 = animelemtime(3) >= 0
value = 6, 2 + (random % 3)

[State 3320, Flashes]
type = explod
trigger1 = !(time % 2)
trigger1 = animelemtime(3) >= 0
anim = 4110
ID = 4110
sprpriority = -5
postype = left
pos = 160, 120
random = 320, 240
facing = -1 + (random < 500) * 2
scale = 0.5 + (random / 2000.0), 0.5 + (random / 2000.0)
ownpal = 1
pausemovetime = 20
supermovetime = 20

[State 3320, Flashes]
type = bgpalfx
trigger1 = !(time % 6)
trigger1 = animelemtime(3) >= 0
time = 6
add = 128, 128, 128
sinadd = -128, -128, -128, 24

[State 3320, Taunt Hit]
type = helper
trigger1 = map(shinwa) && !numhelper(4190)
trigger1 = animelem = 5
helpertype = normal
stateno = 4190
ID = 4190
name = "Taunt Hit"
postype = p1
pos = 0, 0
size.xscale = 1
size.yscale = 1

[State 3320, Type]
type = statetypeset
trigger1 = animelemtime(3) >= 0
statetype = A
physics = N

[State 3320, End]
type = changestate
trigger1 = vel y > 0 && pos y > -vel y
value = 3321


;--- Finish ---
[Statedef 3321]
type = S
physics = S
movetype = I
ctrl = 0
anim = 3321
velset = 0, 0
sprpriority = 2

[State 3321, Sound]
type = playsnd
trigger1 = animelem = 2
value = 4, 32
channel = 0

[State 3321, Whiff Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 1
;channel = 1
stopongethit = 1

[State 3321, Fill Power]
type = palfx
trigger1 = !time
trigger1 = roundstate = 2
time = 20
add = 255, 100, 0
sinadd = -255, -100, 0, 80

[State 3321, Fill Power]
type = playsnd
trigger1 = !time
trigger1 = roundstate = 2
value = 5, 15
channel = 7

[State 3321, Fill Power]
type = powerset
trigger1 = !time
trigger1 = roundstate = 2
value = powermax

[State 3321, Taunt Hit]
type = helper
trigger1 = map(shinwa) && !numhelper(4190)
trigger1 = animelem = 3
helpertype = normal
stateno = 4190
ID = 4190
name = "Taunt Hit"
postype = p1
pos = 0, 0
size.xscale = 1
size.yscale = 1

[State 3321, Pos]
type = posset
trigger1 = !time
y = 0

[State 3321, Sound Landing]
type = playsnd
trigger1 = !time
value = 0, 52

[State 3321, Dust Landing]
type = explod
trigger1 = !time
anim = 7102
ID = 7102
sprpriority = -2
postype = p1
ownpal = 1
scale = 0.5, 0.5

[State 3321, Turn Off Shinwa]
type = mapset
trigger1 = map(shinwa)
map = "shinwa"
value = 0

[State 3321, Drain Power]
redirectID = p2, ID
type = poweradd
trigger1 = !time
value = -min(ceil(p2, powermax / 6.0), 500)

[State 3321, Turn]
type = turn
trigger1 = animelem = 14
trigger1 = p2dist x < 0

[State 3321, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;GADOU SHOUKOU KEN=
[Statedef 3400]
type = S
physics = S
movetype = A
anim = 3400
ctrl = 0
velset = 0, 0
poweradd = -2000 + 0 * (map(superlevel) := 2)
sprpriority = 2
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !map(customcombo), 2, 1))

[State Cancel Flags]
type = null
trigger1 = time <= 0
trigger1 = 1 || map(supercancelflag) := (prevstateno = [1000, 2999] && map(supercancel) && !map(customcombo))
trigger1 = 1 || map(hypercancelflag) := (prevstateno = [3000, 4999] && map(hypercancel))
ignorehitpause = 1
persistent = 0

[State Super Cancel Flash]
type = palfx
trigger1 = time % 2
trigger1 = time = [1, 11]
trigger1 = map(supercancelflag) || map(hypercancelflag)
trigger1 = 1 || map(juggle_count) := 0
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3400, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 3400, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_super) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 3400, Sound]
type = playsnd
trigger1 = time = 3
value = 3, 7
channel = 0

[State 3400, Super Pause FX]
type = helper
trigger1 = map(cfg_superfx)
trigger1 = time = 3
helpertype = normal
stateno = 8510
ID = 8500
name = "Superpause FX"
postype = p1
pos = 4 * const(size.xscale), -55 * const(size.yscale)
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3400, Super Pause]
type = superpause
trigger1 = time = 3
time = 43
movetime = 43
anim = ifelse(map(cfg_superfx), -1, 101)
pos = 4 * const(size.xscale), -55 * const(size.yscale)
sound = s0, 8510
p2defmul = 1
darken = !map(cfg_superfx)

[State 3400, NHB]
type = nothitby
trigger1 = 1
time = 1
value = SCA

[State 3400, End]
type = changestate
trigger1 = time >= 43
value = 3401


;----- Charge -----
[Statedef 3401]
type = S
physics = S
movetype = A
anim = 3401
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 3401, Charge]
type = mapset
trigger1 = !time
map = "shoukouken_charge"
value = 0

[State 3401, Charge]
type = mapadd
trigger1 = 1
map = "shoukouken_charge"
value = 1

[State 3401, Sound]
type = playsnd
trigger1 = time = 1
value = 4, 25
channel = 0

[State 3401, Aura]
type = explod
trigger1 = animelemtime(2) >= 0
ID = 1020
postype = p1
pos = 1 * cos(time / 8.0 * pi), 0
sprpriority = sprpriority + 1
anim = anim
animfreeze = 1
animelem = animelemno(0)
removetime = 12
trans = addalpha
alpha = 64, 256
scale = const(size.xscale), const(size.yscale)
palfx.time = 12
palfx.color = 0
palfx.mul = 128, 0, 128
interpolation.time = 12
interpolation.alpha = 0, 256
interpolation.scale = const(size.xscale) * ifelse(map(strength) = 2, 1.20, ifelse(map(strength) = 2, 1.15, 1.10)), const(size.yscale) * ifelse(map(strength) = 2, 1.20, ifelse(map(strength) = 2, 1.15, 1.10))
removeongethit = 1
ownpal = 1

[State 3401, End]
type = changestate
triggerall = time
trigger1 = roundstate != 2
trigger2 = time >= 180
trigger3 = !AIlevel
trigger3 = (command = "/x" + command = "/y" + command = "/z") < 1
trigger4 = AIlevel
trigger4 = p2movetype = H || inguarddist
value = 3402


;----- Ready -----
[Statedef 3402]
type = S
physics = S
movetype = A
anim = 3402
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 3402, Width]
type = width
trigger1 = animelemtime(3) = -1
value = 16 * const(size.xscale)

[State 3402, Sound]
type = playsnd
trigger1 = animelem = 1
value = 4, 26
channel = 0

[State 3402, Sound]
type = playsnd
trigger1 = animelem = 3
value = 5, 4

[State 3402, Correct Projectile Trade]
type = hitby
trigger1 = animelem = 3
value2 = SCA, AA, AT
time = 1

[State 3402, Gadouken]
type = helper
trigger1 = animelem = 3
helpertype = normal; projectile
stateno = 3405
ID = 3405
name = "Gadou Shoukou Ken"
postype = p1
pos = 70 * const(size.xscale), -65 * const(size.yscale)
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3402, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;ZUKI=
[Statedef 3500]
type = S
physics = N
movetype = A
anim = 3500
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -1000 + 0 * (map(superlevel) := 1)
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !map(customcombo), 2, 1))

[State 3500, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_super) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State Cancel Flags]
type = null
trigger1 = time <= 0
trigger1 = 1 || map(supercancelflag) := (prevstateno = [1000, 2999] && map(supercancel) && !map(customcombo))
trigger1 = 1 || map(hypercancelflag) := (prevstateno = [3000, 4999] && map(hypercancel))
ignorehitpause = 1
persistent = 0

[State 3500, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State Super Cancel Flash]
type = palfx
trigger1 = time % 2
trigger1 = time = [1, 11]
trigger1 = map(supercancelflag) || map(hypercancelflag)
trigger1 = 1 || map(juggle_count) := 0
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3500, NHB]
type = nothitby
trigger1 = animelemtime(5) < 0
time = 1
value = SCA

[State 3500, Sound Randomize]
type = mapset
trigger1 = time = 3
map = "random"
value = random < 500

[State 3500, Sound]
type = playsnd
trigger1 = time = 3
value = 4, ifelse(map(random), 38, 34)
channel = 0

[State 3500, Superpause FX]
type = helper
trigger1 = map(cfg_superfx)
trigger1 = time = 3
helpertype = normal
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = -16 * const(size.xscale), -62 * const(size.xscale)
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3500, Superpause]
type = superpause
trigger1 = time = 3
time = 41
movetime = 41
p2defmul = 1
unhittable = 1
anim = ifelse(map(cfg_superfx), -1, 100)
pos = -16 * const(size.xscale), -62 * const(size.xscale)
sound = s0, 8500
darken = !map(cfg_superfx)

[State 3500, Pos]
type = posadd
trigger1 = animelem = 4 || animelem = 6
x = 20 * const(size.xscale)

[State 3500, Pos]
type = posadd
trigger1 = animelem = 7
x = 10 * const(size.xscale)

[State 3500, Sound]
type = playsnd
trigger1 = animelem = 4
trigger1 = !map(random)
value = 4, 35
channel = 0

[State 3500, Shake]
type = envshake
trigger1 = animelem = 6
time = 10
freq = 180
ampl = 1

[State 3500, Sound]
type = playsnd
trigger1 = animelem = 6
value = 5, 6

[State 3500, Dust]
type = explod
trigger1 = animelem = 6
anim = 3504
postype = p1
pos = 24 * const(size.xscale)
scale = 0.5, 0.5
sprpriority = 3
ownpal = 1

[State 3500, Sound]
type = playsnd
trigger1 = animelem = 6
value = 1, 3
;channel = 1
stopongethit = 1

[State 3500, Blur FX]
type = explod
trigger1 = animelem = 7
ID = 8143
anim = 8143
postype = p1
pos = 50, -70
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

[State 3500, Hit]
type = hitdef
trigger1 = animelem = 7
air.juggle = 0 * (map(juggle_start) := 0 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
ID = 3500
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 120, 30
dizzypoints = 0
getpower = 0, 0
givepower = 40, 40
pausetime = 24, 24
guard.pausetime = 24, 24
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
ground.velocity = -9.0, -4.5
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -9.0, -4.5
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
fall.recover = 0
down.recover = 1
p1sprpriority = sprpriority
forcestand = 1
hitsound = s2, 8
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 60), map(sparky) := -70
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667

[State 3500, Wall Splat]
type = targetstate
trigger1 = !map(wallbounce); TODO: Change to wall splat if going that
trigger1 = movehit = 1
trigger1 = numtarget(3500)
trigger1 = target(3500), dizzy = 0
trigger1 = target(3500), dizzypoints > abs(target(3500), gethitvar(dizzypoints))
trigger1 = target(3500), stateno = 5000 || target(3500), stateno = 5010 || target(3500), stateno = 5020
trigger1 = 1 || map(wallbounce) := 1
value = 3590
ID = 3500
ignorehitpause = 1

[State 3500, Juggle Reset]
type = null;mapset
trigger1 = time > 0
trigger1 = numtarget(3500)
trigger1 = target(3500), stateno = 3590
map = "juggle_count"
value = 0
ignorehitpause = 1

[State 3500, Break Hand]
type = changestate
triggerall = moveguarded = 1
triggerall = animelemtime(7) >= 0 && animelemtime(9) < 0
trigger1 = !numtarget(3500)
trigger2 = numtarget(3500)
trigger2 = target(3500), guardpoints > 0 || target(3500), guardbreak = 0
value = 3510

;[State 3500, Break Hand]
;type = changestate
;triggerall = movehit = 1
;triggerall = animelemtime(7) >= 0 && animelemtime(9) < 0
;trigger1 = p2bodydist x < 15
;value = 3510

[State 3500, Win Pose]
type = changestate
trigger1 = movecontact = 1
trigger1 = animelemtime(7) >= 0 && animelemtime(9) < 0
trigger1 = numtarget(3500)
trigger1 = winhyper
value = 3511

[State 3500, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- Break Hand -----
[Statedef 3510]
type = S
physics = S
movetype = I
anim = 3510
ctrl = 0
velset = 0, 0
movehitpersist = 1

[State 3510, Sound]
type = playsnd
trigger1 = animelem = 2
value = 5, 13

[State 3510, Sound]
type = playsnd
trigger1 = animelem = 7
value = 5000, 0
channel = 0

[State 3510, Layering]
type = sprpriority
trigger1 = animelem = 7
value = -1

[State 3510, Pos]
type = posadd
trigger1 = animelem = 9
x = 28 * const(size.xscale)

[State 3510, Sound]
type = playsnd
trigger1 = animelem = 11
value = 5, 13
freqmul = 1.10

[State 3510, Anim]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- Win Pose ---
[Statedef 3511]
type = S
ctrl = 0
velset = 0, 0

[State 3511, Wait]
type = assertspecial
trigger1 = time < 300
flag = roundnotover

[State 3511, Anim]
type = changeanim
trigger1 = anim != 3511
value = 3511

[State 3511, Sound]
type = playsnd
trigger1 = animelem = 2
value = 5, 13

[State 3511, Sound]
type = playsnd
trigger1 = animelem = 7
value = 5000, 0
channel = 0

[State 3511, Layering]
type = sprpriority
trigger1 = animelemtime(7) >= 0
value = -4; 5150 is -3

[State 3511, Pos]
type = posadd
trigger1 = animelem = 9
x = 28 * const(size.xscale)

[State 3511, Sound]
type = playsnd
trigger1 = animelem = 11
value = 5, 13
freqmul = 1.10

[State 3511, Teeth]
type = playsnd
trigger1 = animelem = 17
value = 5, 10

[State 3511, Teeth]
type = explod
trigger1 = animelem = 17
anim = 4105
ID = 4105
sprpriority = 2
postype = p1
pos = 5 * const(size.xscale), -57 * const(size.yscale)
ownpal = 1
scale = 0.5, 0.5

[State 3511, Allow Round End]
type = ctrlset
trigger1 = time >= 120
trigger1 = roundstate = [2, 3]
trigger1 = time > (fightscreenvar(round.over.hittime) + fightscreenvar(round.over.waittime) + fightscreenvar(round.over.wintime))
value = 1


;----- Target Hit Pause -----
[Statedef 3590]
type = A
physics = N
movetype = H
velset = 0, 0

[State 3590, Anim]
type = changeanim
trigger1 = 1
value = ifelse(gethitvar(animtype) >= 2, 5030, ifelse(gethitvar(type) > 0, 5012, 5002))

[State 3590, End]
type = changestate
trigger1 = hitshakeover
value = 3591


;----- Target Falling -----
[Statedef 3591]
type = A
physics = N
movetype = H

[State 3591, Accel]
type = veladd
trigger1 = 1
y = max(0.35, gethitvar(yaccel))

[State 3591, Vel]
type = hitvelset
trigger1 = !time
x = 1
y = 1

; Unlike wall bounce the char can always move the camera

[State 3591, Push]
type = playerpush
trigger1 = 1
value = 0

[State 3591, Anim]
type = changeanim
trigger1 = !animtime
trigger1 = anim < 5035
value = ifelse(selfanimexist(5035), 5035, 5030)

[State 3591, Anim]
type = changeanim
trigger1 = !animtime
trigger1 = anim = 5035
value = 5050

[State 3591, Bounce]
type = changestate
trigger1 = time >= 4
trigger1 = pos y < 0
trigger1 = backedgedist <= 0 || frontedgedist <= 0
;trigger1 = stagebackedgedist < 1 || stagefrontedgedist < 1; < 1 because of float errors
value = 3592

[State 3591, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.groundlevel)
value = 5100


;----- Target Hitting Wall -----
[Statedef 3592]
type = A
physics = N
movetype = H

[State 3592, Turn]
type = turn
trigger1 = !time
trigger1 = frontedgedist < backedgedist

[State 3592, Pos]
type = posadd
trigger1 = 1
x = -backedgebodydist

[State 3592, Pos]
type = posfreeze
trigger1 = 1
x = 1
y = 1

[State 3592, Push]
type = playerpush
trigger1 = 1
value = 0

[State 3592, Anim]
type = changeanim2
trigger1 = !time
value = 3592

[State 3592, Shake]
type = offset
trigger1 = time < 12
y = -2 + (random % 5)

[State 3592, Sound]
type = playsnd
trigger1 = !time
value = F 7, 2

[State 3592, FX]
type = explod
trigger1 = !time
anim = F 72
postype = p1
pos = abs(pos x) - (gamewidth / 2.0), const(size.mid.pos.y)
sprpriority = -5
ownpal = 1

[State 3592, End]
type = changestate
trigger1 = time >= 24
value = 3593


;----- Target Falling -----
[Statedef 3593]
type = A
physics = N
movetype = H
velset = 0, 0

[State 3593, Accel]
type = veladd
trigger1 = time > 0
y = 0.4850; yaccel

[State 3593, Anim]
type = changeanim2
trigger1 = !time
value = 3592

[State 3593, Fall Recovery]
type = selfstate
trigger1 = alive = 1 && dizzy = 0 && dizzypoints > 0
trigger1 = gethitvar(fall.recover)
trigger1 = command = "recovery"
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 3593, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 3594


;----- Falling -----
[Statedef 3594]
type = S
physics = S
movetype = H
ctrl = 0
velset = 0, 0

[State 3594, Anim]
type = changeanim2
trigger1 = !time
value = 3594

[State 3594, Stop]
type = posset
trigger1 = 1
y = 0

[State 3594, Type]
type = statetypeset
trigger1 = animelem = 2
statetype = C
physics = C

[State 3594, Hitfall]
type = hitfallset
trigger1 = statetype = S
trigger2 = statetype = C
value = 0

[State 3594, Hitfall]
type = hitfallset
trigger1 = statetype = A
trigger2 = statetype = L
value = 1

[State 3594, Pos]
type = posadd
trigger1 = !animtime
x = -const(size.ground.back)

[State 3594, End]
type = selfstate
trigger1 = !animtime
value = 5110


;OTOKO MICHI=
[Statedef 4000]
type = S
physics = N
movetype = A
anim = 4000
ctrl = 0
velset = 0, 0
poweradd = -3000 + 0 * (map(superlevel) := 3)
facep2 = 1
sprpriority = 2

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = ifelse((prevstateno = [3000, 4999]), 3, ifelse((prevstateno = [1000, 2999]) && !map(customcombo), 2, 1))

[State Cancel Flags]
type = null
trigger1 = time <= 0
trigger1 = 1 || map(supercancelflag) := (prevstateno = [1000, 2999] && map(supercancel) && !map(customcombo))
trigger1 = 1 || map(hypercancelflag) := (prevstateno = [3000, 4999] && map(hypercancel))
ignorehitpause = 1
persistent = 0

[State Super Cancel Flash]
type = palfx
trigger1 = time % 2
trigger1 = time = [1, 11]
trigger1 = map(supercancelflag) || map(hypercancelflag)
trigger1 = 1 || map(juggle_count) := 0
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 4000, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 4000, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_super) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 4000, Sound]
type = playsnd
trigger1 = time = 3
value = 4, 27
channel = 0

[State 4000, Super Pause FX]
type = helper
trigger1 = map(cfg_superfx)
trigger1 = time = 3
helpertype = normal
stateno = 8520
ID = 8500
name = "Superpause FX"
postype = p1
pos = 4 * const(size.xscale), -66 * const(size.yscale)
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 4000, Super Pause]
type = superpause
trigger1 = time = 3
time = 40
movetime = 40
anim = ifelse(map(cfg_superfx), -1, 102)
pos = 4 * const(size.xscale), -66 * const(size.yscale)
sound = s0, 8520
p2defmul = 1
darken = !map(cfg_superfx)

[State 4000, NHB]
type = nothitby
trigger1 = animelemtime(4) < 4
time = 1
value = SCA

[State 4000, Type]
type = statetypeset
trigger1 = animelem = 4
physics = N

[State 4000, Vel]
type = velset
trigger1 = animelem = 4
x = 2

[State 4000, Vel]
type = velset
trigger1 = animelem = 5
x = 0

[State 4000, Sound]
type = playsnd
trigger1 = animelem = 4
value = 5000, 4
channel = 0

[State 4000, Sound]
type = playsnd
trigger1 = animelem = 4
value = 0, 105
;channel = 1
stopongethit = 1

[State 4000, Tears Front]
type = explod
trigger1 = (time % 4) = 0
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
anim = 4009
ID = 4009
sprpriority = 3
postype = p1
pos = 55 * const(size.xscale), -78 * const(size.yscale)
random = 4, 4
vel = -1 -(random / 1000.0), -(random / 1000.0)
accel = 0, 0.1 + (random / 10000.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
scale = 0.125 + (random / 8000.0), 0.125 + (random / 8000.0)
ownpal = 1

[State 4000, Tears Back]
type = explod
trigger1 = (time % 4) = 2
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
anim = 4009
ID = 4009
sprpriority = 1
postype = p1
pos = 55 * const(size.xscale), -78 * const(size.yscale)
random = 4, 4
vel = -1 -(random / 1000.0), -(random / 1000.0)
accel = 0, 0.1 + (random / 10000.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
scale = 0.1 + (random / 10000.0), 0.1 + (random / 10000.0)
ownpal = 1

[State 4000, Dust]
type = explod
trigger1 = !(time % 6)
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
anim = 7103
sprpriority = 3
postype = p1
pos = 25 * const(size.xscale)
vel = -2, 0
scale = 0.5, 0.5
ownpal = 1

[State 4000, No proximity block]
type = attackdist
trigger1 = 1
value = 0

[State 4000, Miss]
type = hitdef
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
attr = S, HT
hitflag =

[State 4000, Hit]
type = hitdef
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
trigger1 = !map(unthrowable) && !map(grabbehind)
trigger1 = map(truebodydistx) <= ceil(36 * const(size.xscale));MvSF. 27 for SvC
ID = 4000
attr = S, HT
hitflag = M
priority = 7, Miss
numhits = 0
sparkno = -1 + 0 * (map(sparkno) := 0)
p1facing = 1
p2facing = 1
p1stateno = 4010
p2stateno = 4020
animtype = Up
ground.velocity = -1.5, -32
yAccel = (0.5 + (ComboCount * 0.03))
sprpriority = 2
fall = 1
fall.recover = 0
down.recover = 0; cannot mash
down.recovertime = 30
hitsound = s2, 800
hitsound.channel = 2
ground.cornerpush.veloff = 0

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[State 4000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- PLAYER -----
[Statedef 4010]
type = S
physics = S
movetype = A
anim = 4010
ctrl = 0
velset = 0, 0
sprpriority = 2

[State Throw]
type = targetstate
trigger1 = !time
value = 4020

[State 4010, Grab Sound]
type = playsnd
trigger1 = !time
value = 6, 6

[State 4010, Grab Sound]
type = playsnd
trigger1 = !time
value = 5, 11

[State 4010, Sound]
type = playsnd
trigger1 = animelem = 3
value = 4, 28
channel = 0

[State 4010, Push]
type = playerpush
trigger1 = 1
value = 0

[State 4010, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 4010, Stop Music]
type = assertspecial
trigger1 = 1
flag = nomusic

[State 4010, Stop Afterimage]
type = afterimagetime
trigger1 = animelemtime(4) >= 0
time = 0

[State 4010, Sprite Priority]
type = sprpriority
trigger1 = animelemtime(4) >= 0
value = -1

[State 4010, Bind 1]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = 60 * const(size.xscale), 0

[State 4010, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 45 * const(size.xscale), 0

[State 4010, Bind 3]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 30 * const(size.xscale), 0

[State 4010, Bind 4]
type = targetbind
trigger1 = animelemtime(4) >= 0
pos = 15 * const(size.xscale), 0

[State 4010, Exclamation]
type = explod
trigger1 = !time
anim = 4007
ID = 4007
sprpriority = 2
postype = p2
pos = target, const(size.head.pos.x) - 5, target, const(size.head.pos.y) - 10
facing = -1
scale = 0.5, 0.5
ownpal = 1

[State 4010, Otoko Charge]
type = helper
trigger1 = animelem = 5
helpertype = normal
stateno = 4006
ID = 4006
name = "Otoko Charge"
postype = p1
pos = 8 * const(size.xscale), -48 * const(size.yscale)
ownpal = 1
persistent = 0
size.xscale = 1
size.yscale = 1

[State 4010, Palfx Charging]
type = palfx
trigger1 = animelem = 5
time = 120
sinadd = 64, 64, 192, 480

[State 4010, End]
type = changestate
trigger1 = !animtime
value = 4011


;----- PLAYER -----
[Statedef 4011]
type = A
physics = N
movetype = I
anim = 4011
ctrl = 0
velset = 0, 0
sprpriority = -1

[State 4011, Hitadd]
type = hitadd
trigger1 = !time
value = 1

[State 4011, Damage]
type = lifeadd
trigger1 = !time
value = -min(life - 1, 440)
dizzy = 0
kill = 0

[State 4011, Red Life]
type = redlifeadd
trigger1 = !time
value = -min(life - 1, 440) / 2; needs updating if red life mechanic is changed

[State 4011, Damage]
type = targetlifeadd
trigger1 = !time
value = floor(-440 * map(damagescaling))
dizzy = 0
kill = 1

[State 4011, Hitdamage]
type = targetpoweradd
trigger1 = !time
value = 333

[State 4011, Throw]
type = targetstate
trigger1 = !time
value = 4022

[State 4011, Sound]
type = playsnd
trigger1 = !time
value = 5, 7

[State 4011, Sound]
type = playsnd
trigger1 = !time
value = 5, 9

[State 4011, Shake]
type = envshake
trigger1 = !time
time = 18
freq = 180
ampl = 3
mul = 0.8

[State 4011, Palfx Burning]
type = palfx
trigger1 = !time
time = 120
color = 0
mul = 192, 96, 192
sinadd = 128, 128, 128, 4

[State 4011, Flames]
type = helper
trigger1 = !time
trigger1 = !numhelper(8150)
helpertype = normal
stateno = 8150
ID = 8150
name = "Flames (Enemy)"
postype = p1
ownpal = 1
facing = -1
size.xscale = 0.5
size.yscale = 0.5
persistent = 0

[State 4011, Flames]
type = helper
trigger1 = !time
trigger1 = !numhelper(8151)
helpertype = normal
stateno = 8150
ID = 8151
name = "Flames (Dan)"
postype = p2
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
size.xscale = 0.5
size.yscale = 0.5
persistent = 0

[State 4011, Sound]
type = playsnd
trigger1 = !time
value = 4, 23
channel = 0

[State 4011, Portrait]
type = explod
trigger1 = !time
anim = 4008
ID = 4008
postype = back
pos = 160, ifelse((gamewidth / gameheight) > 1.55, 100, 120)
sprpriority = -10
scale = 0.5, 0.5
bindtime = -1
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 4011, Accel]
type = veladd
trigger1 = 1
y = 0.75

[State 4011, Vel]
type = velset
trigger1 = !time
x = -1.5
y = -32

[State 4011, Fix Camera]
type = velset
trigger1 = winko
trigger1 = vel y > 0 && screenpos y < 0
x = 0

[State 4011, Fix Camera]
type = posset
trigger1 = winko
trigger1 = vel y > 0 && screenpos y < 0
x = -80 * facing

[State 4011, Shake]
type = envshake
trigger1 = vel y > 0
trigger1 = pos y >= 5
trigger1 = animelemtime(6) >= 0
time = 18
freq = 180
ampl = 2

[State 4011, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = ifelse(!alive, 5110, 4012)


;--- Hit ground from fall ---
[Statedef 4012]
type = L
physics = N
movetype = I
anim = 5100
velset = 0.75 * vel x, 0

[State 4012, Pos]
type = posset
trigger1 = !time
y = 0

[State 4012, Freeze]
type = posfreeze
trigger1 = 1

[State 4012, Sound]
type = playsnd
trigger1 = !time
value = F 7, 2

[State 4012, FX]
type = explod
trigger1 = !time
anim = F 62
postype = p1
pos = 0, 0
sprpriority = 10

[State 4012, EnvShake]
type = envshake
trigger1 = !time
time = 18
freq = 180
ampl = 2

[State 4012, End]
type = changestate
trigger1 = !animtime
value = 4013

[State 4012, FFB]
type = forcefeedback
trigger1 = !time
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20


;--- Bounce off ground ---
[Statedef 4013]
type = L
physics = N
movetype = I
anim = 5160
velset = vel x, -4.5

[State 4013, Pos]
type = posset
trigger1 = !time
y = const(movement.down.bounce.offset.y)

[State 4013, Accel]
type = veladd
trigger1 = 1
y = const(movement.down.bounce.yaccel)

[State 4013, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.down.bounce.groundlevel)
value = 4014


;--- Lying down ---
[Statedef 4014]
type = L
physics = C
movetype = I
anim = 5170
velset = vel x, 0

[State 4014, Pos]
type = posset
trigger1 = !time
y = 0

[State 4014, Sound]
type = playsnd
trigger1 = !time
value = F 7, 0

[State 4014, FX]
type = explod
trigger1 = !time
anim = F 60
postype = p1
pos = 0, 0
sprpriority = -10

[State 4014, Anim]
type = changeanim
trigger1 = !animtime
trigger1 = anim != 5110
value = 5110

[State 4014, Vel]
type = velset
trigger1 = abs(vel x) < const(movement.down.friction.threshold)
x = 0
persistent = 0

[State 4014, Win by Otoko Michi]
type = changestate
trigger1 = win
trigger1 = alive
value = 4003

[State 4014, Get Up]
type = changestate
trigger1 = time >= 30
value = ifelse(!alive, 5150, 5120)

[State 4014, FFB]
type = forcefeedback
trigger1 = !time
time = 8
ampl = 240
waveform = sine


;----- TARGET -----
[Statedef 4020]
type = A
physics = N
movetype = H
velset = 0, 0
ctrl = 0

[State 4020, Anim]
type = changeanim2
trigger1 = !time
value = 4020

[State 4020, Safety]
type = selfstate
trigger1 = time >= 300
value = 5040


[Statedef 4022]
type = A
physics = N
movetype = H
ctrl = 0

[State 4022, Palfx Burning]
type = palfx
trigger1 = !time
time = 120
color = 0
mul = 192, 96, 192
sinadd = 128, 128, 128, 4

[State 4022, End]
type = selfstate
trigger1 = 1
value = 5020


;CHOUHATSU SHINWA==
[Statedef 4100]
type = S
physics = S
movetype = I
anim = 4100
ctrl = 0
velset = 0, 0
poweradd = -3000 + 0 * (map(superlevel) := 3)
sprpriority = 2
facep2 = 1

[State Cancel Flags]
type = null
trigger1 = time <= 0
trigger1 = 1 || map(supercancelflag) := (prevstateno = [1000, 2999] && map(supercancel) && !map(customcombo))
trigger1 = 1 || map(hypercancelflag) := (prevstateno = [3000, 4999] && map(hypercancel))
ignorehitpause = 1
persistent = 0

[State Super Cancel Flash]
type = palfx
trigger1 = time % 2
trigger1 = time = [1, 11]
trigger1 = map(supercancelflag) || map(hypercancelflag)
trigger1 = 1 || map(juggle_count) := 0
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 4100, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 4100, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_super) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 4100, Sound]
type = playsnd
trigger1 = time = 3
value = 4, 5
channel = 0

[State 4100, Super Pause FX]
type = helper
trigger1 = map(cfg_superfx)
trigger1 = time = 3
helpertype = normal
stateno = 8520
ID = 8500
name = "Superpause FX"
postype = p1
pos = -26 * const(size.xscale), -80 * const(size.yscale)
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 4100, Super Pause]
type = superpause
trigger1 = time = 3
time = 45
movetime = 45
anim = ifelse(map(cfg_superfx), -1, 102)
pos = -26 * const(size.xscale), -80 * const(size.yscale)
sound = s0, 8520
p2defmul = 1
darken = !map(cfg_superfx)

[State 4100, NHB]
type = nothitby
trigger1 = 1
time = 20
value = SCA

[State 4100, Var]
type = mapset
trigger1 = 1
map = "shinwa"
value = 900

[State 4100, End]
type = changestate
trigger1 = time >= 43
value = 0
ctrl = 1


;----- END -----
[Statedef 4101]
type = S
physics = S
movetype = I
anim = 4101
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 4101, Sound]
type = playsnd
trigger1 = animelem = 2
value = 4, 32
channel = 0

[State 4101, Sound]
type = playsnd
trigger1 = !time
value = 6, 0
channel = 7

[State 4101, Teeth]
type = playsnd
trigger1 = animelem = 2
value = 5, 10

[State 4101, Teeth]
type = explod
trigger1 = animelem = 2
anim = 4105
ID = 4105
sprpriority = 2
postype = p1
pos = -5 * const(size.xscale), -87 * const(size.yscale)
ownpal = 1
scale = 0.5, 0.5

[State 4101, Flashes]
type = explod
trigger1 = 1
anim = 4110
ID = 4110
sprpriority = -5
postype = left
pos = 160, 120
random = 320, 240
facing = -1 + (random < 500) * 2
scale = 0.5 + (random / 2000.0), 0.5 + (random / 2000.0)
ownpal = 1
pausemovetime = 20
supermovetime = 20

[State 4101, flashsnd]
type = playsnd
trigger1 = !(gametime % 6)
value = 6, 2 + (random % 3)

[State 4101, flashpalfx]
type = allpalfx
trigger1 = !(gametime % 9)
time = 3
add = 128, 128, 128
sinadd = -128, -128, -128, 12

[State 4101, imageoff]
type = afterimagetime
trigger1 = animelemtime(2) >= 0
time = 0

[State 4101, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- Chouhatsu Shinwa Standing Taunt -----
[Statedef 4120]
type = S
movetype = I
physics = S
anim = 195
velset = 0, 0
poweradd = 200 * (prevstateno != 4120)
sprpriority = 1
ctrl = 0
facep2 = 1

[State 4120, Strength]
type = mapset
trigger1 = !time
map = "strength"
value = ifelse(command = "x", 1, ifelse(command = "y", 2, ifelse(command = "z", 3, ifelse(command = "a", 4, ifelse(command = "b", 5, ifelse(command = "c", 6, ceil(random / 167)))))))

[State 4120, Sound]
type = playsnd
trigger1 = animelem = 3
trigger1 = map(strength) = [1, 3]
value = 3, ifelse(map(strength) = 1, 0, ifelse(map(strength) = 2, 1, 2))
channel = 0

[State 4120, Sound]
type = playsnd
trigger1 = animelem = 3
trigger1 = map(strength) = [4, 6]
value = 4, ifelse(map(strength) = 4, 2, ifelse(map(strength) = 5, 1, 11))
channel = 0

[State 4120, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 1
;channel = 1

[State 4120, Taunt Hit]
type = helper
trigger1 = animelem = 3
trigger1 = map(shinwa) && !numhelper(4190)
helpertype = normal
stateno = 4190
ID = 4190
name = "Taunt Hit"
postype = p1
pos = 0, 0
size.xscale = 1
size.yscale = 1
persistent = 0

[State 4120, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- Chouhatsu Shinwa Crouching Taunt -----
[Statedef 4121]
type = C
movetype = I
physics = C
anim = 2801
velset = 0, 0
poweradd = 200 * (prevstateno != 4121)
sprpriority = 1
ctrl = 0
facep2 = 1

[State 4121, Strength]
type = mapset
trigger1 = !time
map = "strength"
value = ifelse(command = "x", 1, ifelse(command = "y", 2, ifelse(command = "z", 3, ifelse(command = "a", 4, ifelse(command = "b", 5, ifelse(command = "c", 6, ceil(random / 167)))))))

[State 4121, Sound]
type = playsnd
trigger1 = animelem = 3
trigger1 = map(strength) = [1, 3]
value = 3, ifelse(map(strength) = 1, 0, ifelse(map(strength) = 2, 1, 2))
channel = 0

[State 4121, Sound]
type = playsnd
trigger1 = animelem = 3
trigger1 = map(strength) = [4, 6]
value = 4, ifelse(map(strength) = 4, 2, ifelse(map(strength) = 5, 1, 11))
channel = 0

[State 4121, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 1
;channel = 1

[State 4121, Taunt Hit]
type = helper
trigger1 = animelem = 3
trigger1 = map(shinwa) && !numhelper(4190)
helpertype = normal
stateno = 4190
ID = 4190
name = "Taunt Hit"
postype = p1
pos = 0, 0
size.xscale = 1
size.yscale = 1
persistent = 0

[State 4121, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;----- Chouhatsu Shinwa Air Taunt -----
[Statedef 4822]
type = A
movetype = I
physics = A
anim = 2802
poweradd = 200
sprpriority = 1
ctrl = 0

[State 4822, Strength]
type = mapset
trigger1 = !time
map = "strength"
value = ifelse(command = "x", 1, ifelse(command = "y", 2, ifelse(command = "z", 3, ifelse(command = "a", 4, ifelse(command = "b", 5, ifelse(command = "c", 6, ceil(random / 167)))))))

[State 4822, Sound]
type = playsnd
trigger1 = animelem = 2
value = 4, ifelse(map(strength) <= 3, 17, 36)
channel = 0

[State 4822, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 1
;channel = 1

[State 4822, Taunt Hit]
type = helper
trigger1 = animelem = 2
trigger1 = map(shinwa) && !numhelper(4190)
helpertype = normal
stateno = 4190
ID = 4190
name = "Taunt Hit"
postype = p1
pos = 0, 0
size.xscale = 1
size.yscale = 1
persistent = 0


;----- Chouhatsu Shinwa Rolling Forward Taunt -----
[Statedef 4130]
type = A
physics = C
movetype = I
anim = 4130
velset = 0, 0
poweradd = 200
sprpriority = 1
ctrl = 0
facep2 = 1

[State 4130, Strength]
type = mapset
trigger1 = !time
map = "strength"
value = ifelse(command = "x", 1, ifelse(command = "y", 2, ifelse(command = "z", 3, ifelse(command = "a", 4, ifelse(command = "b", 5, ifelse(command = "c", 6, ceil(random / 167)))))))

[State 4130, Push]
type = playerpush
trigger1 = animelemtime(14) < 0
value = 0

[State 4130, turn]
type = turn
trigger1 = animelem = 14 && p2dist x < 0

[State 4130, Vel]
type = velset
trigger1 = animelemtime(2) >= 0 && animelemtime(13) < 0
x = 7.5

[State 4130, Sound]
type = playsnd
trigger1 = animelem = 2
value = 0, 102

[State 4130, Dust]
type = explod
trigger1 = !(time % 3)
trigger1 = animelemtime(2) >= 0 && animelemtime(14) < 0
anim = 7103
sprpriority = 3
postype = p1
vel = -1, 0
scale = 0.5, 0.5
trans = addalpha
alpha = 192, 256
ownpal = 1

[State 4130, Sound]
type = playsnd
trigger1 = animelem = 16
trigger1 = map(strength) = [1, 3]
value = 4, ifelse(map(strength) = 1, 11, ifelse(map(strength) = 2, 13, 17))
channel = 0

[State 4130, Sound]
type = playsnd
trigger1 = animelem = 16
trigger1 = map(strength) = [4, 6]
value = 4, ifelse(map(strength) = 4, 14, ifelse(map(strength) = 5, 28, 4))
channel = 0

[State 4130, Sound]
type = playsnd
trigger1 = animelem = 16
value = 1, 1
;channel = 1

[State 4130, Taunt Hit]
type = helper
trigger1 = animelem = 16
trigger1 = map(shinwa) && !numhelper(4190)
helpertype = normal
stateno = 4190
ID = 4190
name = "Taunt Hit"
postype = p1
pos = 0, 0
size.xscale = 1
size.yscale = 1
persistent = 0

[State 4130 Type]
type = statetypeset
trigger1 = animelem = 13
statetype = S
physics = S

[State 4130, Vel]
type = velset
trigger1 = animelem = 14
x = 0

[State 4130, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;----- Chouhatsu Shinwa Rolling Backward Taunt -----
[Statedef 4131]
type = A
physics = C
movetype = I
anim = 4131
velset = 0, 0
poweradd = 200
sprpriority = 1
ctrl = 0
facep2 = 1

[State 4131, Strength]
type = mapset
trigger1 = !time
map = "strength"
value = ifelse(command = "x", 1, ifelse(command = "y", 2, ifelse(command = "z", 3, ifelse(command = "a", 4, ifelse(command = "b", 5, ifelse(command = "c", 6, ceil(random / 167)))))))

[State 4131, Push]
type = playerpush
trigger1 = animelemtime(14) < 0
value = 0

[State 4131, turn]
type = turn
trigger1 = animelem = 14 && p2dist x < 0

[State 4131, Vel]
type = velset
trigger1 = animelemtime(2) >= 0 && animelemtime(13) < 0
x = -7.5

[State 4131, Sound]
type = playsnd
trigger1 = animelem = 2
value = 0, 105

[State 4131, Dust]
type = explod
trigger1 = !(time % 3)
trigger1 = animelemtime(2) >= 0 && animelemtime(14) < 0
anim = 7103
sprpriority = 3
postype = p1
vel = 1, 0
scale = 0.5, 0.5
trans = addalpha
alpha = 192, 256
ownpal = 1

[State 4131, Sound]
type = playsnd
trigger1 = animelem = 16
trigger1 = map(strength) = [1, 3]
value = 4, ifelse(map(strength) = 1, 11, ifelse(map(strength) = 2, 13, 17))
channel = 0

[State 4131, Sound]
type = playsnd
trigger1 = animelem = 16
trigger1 = map(strength) = [4, 6]
value = 4, ifelse(map(strength) = 4, 14, ifelse(map(strength) = 5, 28, 4))
channel = 0

[State 4131, Sound]
type = playsnd
trigger1 = animelem = 16
value = 1, 1
;channel = 1

[State 4131, Taunt Hit]
type = helper
trigger1 = animelem = 16
trigger1 = map(shinwa) && !numhelper(4190)
helpertype = normal
stateno = 4190
ID = 4190
name = "Taunt Hit"
postype = p1
pos = 0, 0
size.xscale = 1
size.yscale = 1
persistent = 0

[State 4131, Type]
type = statetypeset
trigger1 = animelem = 13
statetype = S
physics = S

[State 4131, Vel]
type = velset
trigger1 = animelem = 14
x = 0

[State 4131, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;----- Chouhatsu Shinwa Special Taunt -----
[Statedef 4140]
type = S
movetype = I
physics = S
anim = 4140
velset = 0, 0
poweradd = 200
sprpriority = 1
ctrl = 0
facep2 = 1

[State 4140, Sound]
type = playsnd
trigger1 = animelem = 2
value = 4, 5
channel = 0

[State 4140, Taunt Hit]
type = helper
trigger1 = animelem = 2
trigger1 = map(shinwa) && !numhelper(4190)
helpertype = normal
stateno = 4190
ID = 4190
name = "Taunt Hit"
postype = p1
pos = 0, 0
size.xscale = 1
size.yscale = 1
persistent = 0

[State 4140, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
