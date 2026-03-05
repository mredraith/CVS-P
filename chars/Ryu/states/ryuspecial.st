; ______________________________
;| Ryu by Phantom.of.the.Server |
; 
;
;SPECIAL STATES=
;

;HADOU KEN
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
value = ifelse(p2statetype = L, 0, ifelse((p2movetype = H || random < 500), 2, ifelse(random < 500, 1, 0)))
ignorehitpause = 1

[State 1000, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1000, Width]
type = width
trigger1 = animelemtime(5) = -1
value = 20, 0

[State 1000, Correct Projectile Trade]
type = hitby
trigger1 = animelem = 5
value2 = SCA, AA, AT
time = 1

[State 1000, Hadouken]
type = helper
trigger1 = animelem = 5
helpertype = normal; projectile
stateno = 1005
ID = 1005
name = "Hadouken"
postype = p1
pos = 80, -67
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1000, Sound]
type = playsnd
trigger1 = animelem = 3
value = ifelse(var(1) = 2, 14, 4), ifelse(var(1) = 2, 0, 0)
channel = 0
freqmul = 0.98 + (random / 25000.0)

[State 1000, Sound]
type = playsnd
trigger1 = animelem = 5
value = 6, ifelse(var(1) = 2, 8, 0)

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;EX HADOU KEN
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

[State 1010, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1010, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

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
pos = ceil(-16 * const(size.xscale)), ceil(-67 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1010, Width]
type = width
trigger1 = animelemtime(5) = -1
value = 20, 0

[State 1010, Correct Projectile Trade]
type = hitby
trigger1 = animelem = 5
value2 = SCA, AA, AT
time = 1

[State 1010, Hadouken]
type = helper
trigger1 = animelem = 5
helpertype = normal; projectile
stateno = 1015
ID = 1015
name = "EX Hadouken"
postype = p1
pos = 80, -67
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1010, Sound]
type = playsnd
trigger1 = animelem = 3
value = ifelse(var(1) = 2, 14, 4), ifelse(var(1) = 2, 0, 3)
channel = 0

[State 1010, Sound]
type = playsnd
trigger1 = animelem = 5
value = 6, ifelse(var(1) = 2, 8, 0)

[State 1010, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;SHAKUNETSU HADOU KEN
[Statedef 1020]
type = S
physics = S
movetype = A
anim = 1020
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

[State 1020, Strength]
type = mapset
trigger1 = !AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(map(cmd_strength_z), 2, ifelse(map(cmd_strength_y), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1020, Strength AI]
type = mapset
trigger1 = AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(map(ai_attackwindow) = [14, 19], 0, ifelse(map(ai_attackwindow) = [20, 25] || random < 500, 1, 2))
ignorehitpause = 1

[State 1020, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1020, Width]
type = width
trigger1 = animelemtime(6) = -1
value = 20, 0

[State 1020, Anim]
type = changeanim
triggerall = animelem = 5
trigger1 = map(strength) = 0 && time < 10
trigger2 = map(strength) = 1 && time < 16
trigger3 = map(strength) = 2 && time < 22
value = 1020
elem = 3

[State 1020, Aura]
type = explod
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(5) < 0
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
palfx.mul = 256, 0, 0
interpolation.time = 12
interpolation.alpha = 0, 256
interpolation.scale = const(size.xscale) * ifelse(map(strength) = 2, 1.20, ifelse(map(strength) = 2, 1.15, 1.10)), const(size.yscale) * ifelse(map(strength) = 2, 1.20, ifelse(map(strength) = 2, 1.15, 1.10))
removeonchangestate = 1
ownpal = 1

[State 1020, Correct Projectile Trade]
type = hitby
trigger1 = animelem = 6
value2 = SCA, AA, AT
time = 1

[State 1020, Hadouken]
type = helper
trigger1 = animelem = 6
helpertype = normal; projectile
stateno = 1025
ID = 1025
name = "Shakunetsu Hadouken"
postype = p1
pos = 78, -68
ownpal = 1
size.xscale = ifelse(map(strength) = 2, 0.5, ifelse(map(strength) = 1, 0.45, 0.4))
size.yscale = ifelse(map(strength) = 2, 0.5, ifelse(map(strength) = 1, 0.45, 0.4))

[State 1020, Sound]
type = playsnd
trigger1 = animelem = 2
value = ifelse(var(1) = 2, 13, 3), ifelse(var(1) = 2, 8, 12)
channel = 0
persistent = 0

[State 1020, Sound]
type = playsnd
trigger1 = animelem = 6
value = ifelse(var(1) = 2, 14, 4), 3
channel = 0

[State 1020, Sound]
type = playsnd
trigger1 = animelem = 6
value = 6, ifelse(var(1) = 2, 8, 0)

[State 1020, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;EX SHAKUNETSU HADOU KEN
[Statedef 1030]
type = S
physics = S
movetype = A
anim = 1020
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

[State 1030, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1030, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 1030, EX FX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 1030, EX FX]
type = explod
trigger1 = !time
trigger1 = 1 || map(exflash) := 30
anim = 7210
sprpriority = 3
postype = p1
pos = ceil(-22 * const(size.xscale)), ceil(-48 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1030, Width]
type = width
trigger1 = animelemtime(6) = -1
value = 20, 0

[State 1030, Anim]
type = changeanim
trigger1 = animelem = 5
trigger1 = time < 16
value = 1020
elem = 3

[State 1030, Aura]
type = explod
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(5) < 0
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
palfx.mul = 256, 0, 0
interpolation.time = 12
interpolation.alpha = 0, 256
interpolation.scale = const(size.xscale) * 1.25, const(size.yscale) * 1.25
removeonchangestate = 1
ownpal = 1

[State 1030, Correct Projectile Trade]
type = hitby
trigger1 = animelem = 6
value2 = SCA, AA, AT
time = 1

[State 1030, Hadouken]
type = helper
trigger1 = animelem = 6
helpertype = normal; projectile
stateno = 1035
ID = 1035
name = "Shakunetsu Hadouken"
postype = p1
pos = 78, -68
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5

[State 1030, Sound]
type = playsnd
trigger1 = animelem = 2
value = ifelse(var(1) = 2, 13, 3), ifelse(var(1) = 2, 8, 12)
channel = 0
persistent = 0

[State 1030, Sound]
type = playsnd
trigger1 = animelem = 6
value = ifelse(var(1) = 2, 14, 4), 3
channel = 0

[State 1030, Sound]
type = playsnd
trigger1 = animelem = 6
value = 6, ifelse(var(1) = 2, 8, 0)

[State 1030, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;BURNED
[Statedef 7697]
type = U
physics = N
movetype = H
velset = 0, 0

[State 7697, End]
type = selfstate
trigger1 = !selfanimexist(7697)
value = 5020

[State 7697, Type]
type = statetypeset
trigger1 = statetype != A
trigger1 = gethitvar(fall) || gethitvar(yvel) || pos y || vel y
statetype = A
persistent = 0

[state 7697, Anim]
type = changeanim
trigger1 = !time
trigger1 = gethitvar(animtype) != [3,5]
value = ifelse((gethitvar(airtype) = 1), 5000, 5010) + gethitvar(animtype)

[state 7697, Anim]
type = changeanim
trigger1 = !time
trigger1 = gethitvar(animtype) = [3,5]
value = 5030

[state 7697, Anim]
type = changeanim
trigger1 = !time
trigger1 = (gethitvar(animtype) = [4,5]) && (selfanimexist(5047 + gethitvar(animtype)))
value = 5047 + gethitvar(animtype)

[state 7697, Anim]
type = changeanim
trigger1 = !hitshakeover
value = anim

[State 7697, Anim]
type = changeanim
trigger1 = hitshakeover
trigger1 = anim != 7697
value = 7697

[State 7697, Accel]
type = veladd
trigger1 = hitshakeover
trigger1 = statetype = A
y = max(0.35, gethitvar(yaccel))

[State 7697, Vel]
type = hitvelset
trigger1 = hitshakeover
x = 1
y = 1
persistent = 0

[State 7697, End]
type = selfstate
trigger1 = hitshakeover
trigger1 = vel y > 0
trigger1 = !hitfall
value = 5040

[State 7697, Fall Recovery]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
trigger1 = alive = 1 && dizzy = 0 && dizzypoints > 0
trigger1 = gethitvar(fall.recover)
trigger1 = command = "recovery"
value = 5200

[State 7697, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 25
value = 5100


;CHARGED HADOUKEN
[Statedef 1040]
type = S
physics = S
movetype = A
anim = 1040
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

[State 1040, Strength]
type = mapset
trigger1 = !AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(map(cmd_strength_z), 2, ifelse(map(cmd_strength_y), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1040, Strength AI]
type = mapset
trigger1 = AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse((p2movetype = H || random < 500), 2, ifelse(random < 500, 1, 0))
ignorehitpause = 1

[State 1040, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1040, Denjin Renki]
type = mapset
map = "denjinrenki"
trigger1 = 1
value = 0

[State 1040, Width]
type = width
trigger1 = animelemtime(5) = -1
value = 20, 0

[State 1040, Correct Projectile Trade]
type = hitby
trigger1 = animelem = 5
value2 = SCA, AA, AT
time = 1

[State 1040, Hadouken]
type = helper
trigger1 = animelem = 5
helpertype = normal; projectile
stateno = 1045
ID = 1045
name = "Hadouken"
postype = p1
pos = 80, -67
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1040, Sound]
type = playsnd
trigger1 = animelem = 3
value = 4, 13
channel = 0

[State 1040, Sound]
type = playsnd
trigger1 = animelem = 5
value = 6, ifelse(var(1) = 2, 8, 0)

[State 1040, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;HADOU NO KAMAE=
[Statedef 1090]
type = S
physics = S
movetype = I
anim = 1090
ctrl = 0
velset = 0, 0

[State 1090, Sound]
type = playsnd
trigger1 = animelem = 4
trigger1 = var(1) = 1
value = 3, 0
channel = 0

[State 1090, Sound]
type = playsnd
trigger1 = animelem = 3
trigger1 = var(1) = 3
value = 4, 100
channel = 0

[State 1090, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;SHORYUKEN
[Statedef 1100]
type = S
physics = N
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
value = ifelse((p2movetype = H || random < 333), 2, ifelse(random < 500, 1, 0))
ignorehitpause = 1

[State 1100, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1100, Startup]
type = changeanim
triggerall = anim = 1100
triggerall = animelemtime(1) = 1 && animelemtime(2) < 0
trigger1 = var(1) = 1
trigger2 = var(1) != 1
trigger2 = map(strength) != 2
value = 1100
elem = 2

[State 1100, Startup Normal]
type = changeanim
triggerall = anim = 1100
triggerall = animelemtime(2) = 1 && animelemtime(3) < 0
trigger1 = var(1) = 1
trigger2 = var(1) != 1
trigger2 = map(strength) != 2
value = 1100
elem = 3

[State 1100, Invulnerability Light]
type = hitby
trigger1 = anim = 1100
trigger1 = animelemtime(4) < 0
value = SC, AA
time = 1
ignorehitpause = 1

[State 1100, Invulnerability Medium]
type = hitby
trigger1 = map(strength) = 1
trigger1 = anim = 1100
trigger1 = animelemtime(4) < 0
value = C, AA
time = 1
ignorehitpause = 1

[State 1100, Invulnerability Hard]
type = nothitby
trigger1 = map(strength) = 2
trigger1 = anim = 1100
trigger1 = animelemtime(4) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 1100, Accel]
type = veladd
trigger1 = vel x > 0
x = -0.667

[State 1100, Accel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1100, Accel]
type = veladd
trigger1 = anim = 1100
trigger1 = animelemtime(4) >= 1
trigger2 = anim = 1101
y = 0.577

[State 1100, Vel]
type = velset
trigger1 = anim = 1100
trigger1 = animelem = 2
x = ifelse(map(strength) = 2, 8.90, ifelse(map(strength) = 1, 6.67, 4.51))

[State 1100, Vel]
type = velset
trigger1 = anim = 1100
trigger1 = animelemtime(4) = [0, 1]
y = ifelse(map(strength) = 2, -12.081, ifelse(map(strength) = 1, -9.517, -6.949))

[State 1100, Grounded Frame]
type = posfreeze
trigger1 = anim = 1100
trigger1 = animelemtime(4) = 0
value = 1

[State 1100, Sound]
type = playsnd
trigger1 = anim = 1100
trigger1 = animelem = 3
value = 1, 3
;channel = 1
stopongethit = 1

[State 1100, Dust]
type = explod
trigger1 = anim = 1100
trigger1 = animelem = 2
anim = 7103
sprpriority = 3
postype = p1
pos = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1100, Sound]
type = playsnd
trigger1 = anim = 1100
trigger1 = animelemtime(4) = 1
value = 0, ifelse(map(strength) = 0, 40, 41)

[State 1100, Dust]
type = helper
trigger1 = anim = 1100
trigger1 = animelemtime(4) = 1
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 1100, Sound]
type = playsnd
trigger1 = anim = 1100
trigger1 = animelem = 2
value = ifelse(var(1) = 2, 14, 4), 1
channel = 0

[State 1100, Hit Normal]
type = hitdef
trigger1 = var(1) = 1
trigger1 = anim = 1100
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, SA
damage = ifelse(map(strength) = 2, 130, ifelse(map(strength) = 1, 120, 110)), ifelse(map(strength) = 2, 33, ifelse(map(strength) = 1, 30, 28))
dizzypoints = 200 * !map(customcombo)
animtype = Medium
air.animtype = Medium
fall.animtype = Medium
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 25) * (map(sparkx.max) := 40), map(sparky) := -79
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = ifelse(map(strength) = 2, -4.0, ifelse(map(strength) = 1, -3.5, -3.0)), ifelse(map(strength) = 2, -10.3, ifelse(map(strength) = 1, -8.5, -6.7))
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.velocity = ifelse(map(strength) = 2, -4.0, ifelse(map(strength) = 1, -3.5, -3.0)), ifelse(map(strength) = 2, -10.3, ifelse(map(strength) = 1, -8.5, -6.7))
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
p1sprpriority = sprpriority
forcestand = 1

[State 1100, Hit Normal Midair]
type = hitdef
trigger1 = var(1) = 1
trigger1 = anim = 1100
trigger1 = animelem = 4
trigger1 = !movecontact && !movereversed
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := ifelse(var(1) = 1, 3, 4))
attr = A, SA
damage = 60, 15
dizzypoints = 100 * !map(customcombo)
animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 10) * (map(sparkx.max) := 25), map(sparky) := -106
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = ifelse(map(strength) = 2, -4, ifelse(map(strength) = 1, -3.5, -3)), ifelse(map(strength) = 2, -10.3, ifelse(map(strength) = 1, -8.5, -6.7))
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.velocity = ifelse(map(strength) = 2, -4, ifelse(map(strength) = 1, -3.5, -3)), ifelse(map(strength) = 2, -10.3, ifelse(map(strength) = 1, -8.5, -6.7))
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

[State 1100, Hit Evil]
type = hitdef
triggerall = var(1) != 1
trigger1 = anim = 1100
trigger1 = animelem = 2
trigger1 = map(strength) = 2
trigger2 = anim = 1100
trigger2 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := ifelse((animelem = 3), map(strength) + 1, 1))
attr = S, SA
damage = ifelse(map(strength) = 2, 40, ifelse(map(strength) = 1, 60, 100)), ifelse(map(strength) = 2, 10, ifelse(map(strength) = 1, 15, 25))
dizzypoints = 50 * !map(customcombo)
animtype = Medium
fall.animtype = Medium
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 25) * (map(sparkx.max) := 40), map(sparky) := ifelse((animelem = 2), -52, -79)
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = ifelse(map(strength) = 2, -4.0, ifelse(map(strength) = 1, -3.5, -3.0)), ifelse(map(strength) = 2, -10.3, ifelse(map(strength) = 1, -8.5, -6.7))
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.velocity = ifelse(map(strength) = 2, -4.0, ifelse(map(strength) = 1, -3.5, -3.0)), ifelse(map(strength) = 2, -10.3, ifelse(map(strength) = 1, -8.5, -6.7))
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

[State 1100, Hit Evil Midair]
type = hitdef
trigger1 = var(1) != 1
trigger1 = anim = 1100
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := (map(strength) + 1))
attr = A, SA
damage = 60, 15
dizzypoints = 50 * !map(customcombo)
animtype = Up
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 10) * (map(sparkx.max) := 25), map(sparky) := -106
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = ifelse(map(strength) = 2, -4.0, ifelse(map(strength) = 1, -3.5, -3.0)), ifelse(map(strength) = 2, -10.3, ifelse(map(strength) = 1, -8.5, -6.7))
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.velocity = ifelse(map(strength) = 2, -4.0, ifelse(map(strength) = 1, -3.5, -3.0)), ifelse(map(strength) = 2, -10.3, ifelse(map(strength) = 1, -8.5, -6.7))
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

[State 1100, Blur FX]
type = explod
trigger1 = anim = 1100
trigger1 = animelem = 4
ID = 1190
anim = 1190
postype = p1
pos = 32, -80
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

[State 1100, Type]
type = statetypeset
trigger1 = anim = 1100
trigger1 = animelemtime(4) >= 0
trigger2 = anim = 1101
statetype = A
physics = N

[State 1100, Anim]
type = changeanim
trigger1 = anim = 1100
trigger1 = animelemtime(4) > 0
trigger1 = vel y > (ifelse(map(strength) = 2, -4, ifelse(map(strength) = 1, -3, -2)))
value = 1101
persistent = 0

[State Idle]
type = statetypeset
trigger1 = anim = 1101
movetype = I

[State Land]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1108


;---Land---
[Statedef 1108]
type = S
physics = S
movetype = I
anim = 1108
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 1108, Pos]
type = posset
trigger1 = 1
y = 0

[State 1108, Sound]
type = playsnd
trigger1 = !time
value = 0, 52

[State 1108, Dust]
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

[State 1108, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;EX SHORYUKEN
[Statedef 1110]
type = S
physics = N
movetype = A
anim = 1100
ctrl = 0
velset = 0, 0
poweradd = -500
facep2 = 1
sprpriority = 2

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1110, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1110, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 1110, EX FX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 1110, EX FX]
type = explod
trigger1 = !time
trigger1 = 1 || map(exflash) := 30
anim = 7210
sprpriority = 3
postype = p1
pos = ceil(19 * const(size.xscale)), ceil(-53 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1110, Startup Normal]
type = changeanim
trigger1 = var(1) = 1
trigger1 = anim = 1100
trigger1 = animelemtime(1) = 1 && animelemtime(2) < 0
value = 1100
elem = 2

[State 1110, Startup Normal]
type = changeanim
trigger1 = var(1) = 1
trigger1 = anim = 1100
trigger1 = animelemtime(2) = 1 && animelemtime(3) < 0
value = 1100
elem = 3

[State 1110, NHB]
type = nothitby
trigger1 = anim = 1100
trigger1 = animelemtime(4) < 1
value = SCA
time = 1
ignorehitpause = 1

[State 1110, Accel]
type = veladd
trigger1 = vel x > 0
x = -0.667

[State 1110, Accel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1110, Accel]
type = veladd
trigger1 = anim = 1100
trigger1 = animelemtime(4) >= 1
trigger2 = anim = 1101
y = 0.577

[State 1110, Vel]
type = velset
trigger1 = anim = 1100
trigger1 = animelem = 2
x = 8.90

[State 1110, Vel]
type = velset
trigger1 = anim = 1100
trigger1 = animelemtime(4) = [0, 1]
y = -12.081

[State 1110, Grounded Frame]
type = posfreeze
trigger1 = anim = 1100
trigger1 = animelemtime(4) = 0
value = 1

[State 1110, Sound]
type = playsnd
trigger1 = anim = 1100
trigger1 = animelem = 3
value = 1, 3
;channel = 1
stopongethit = 1

[State 1110, Dust]
type = explod
trigger1 = anim = 1100
trigger1 = animelem = 2
anim = 7103
sprpriority = 3
postype = p1
pos = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1110, Sound]
type = playsnd
trigger1 = anim = 1100
trigger1 = animelemtime(4) = 1
value = 0, 41

[State 1110, Dust]
type = helper
trigger1 = anim = 1100
trigger1 = animelemtime(4) = 1
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 1110, Sound]
type = playsnd
trigger1 = anim = 1100
trigger1 = animelem = 2
value = ifelse(var(1) = 2, 14, 4), ifelse(var(1) = 2, 6, 5)
channel = 0

[State 1110, Hit]
type = hitdef
trigger1 = var(1) != 1
trigger1 = animelem = 2 && anim = 1100
trigger2 = animelem = 3 && anim = 1100
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := ifelse(var(1) = 1, 3, 4))
attr = S, SA
damage = ifelse(var(1) = 1, 90, 45), ifelse(var(1) = 1, 23, 12)
dizzypoints = ifelse(var(1) = 1, 150, 75) * !map(customcombo)
animtype = Back
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 25) * (map(sparkx.max) := 40), map(sparky) := ifelse((animelem = 2), -53, -79)
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -2.0, -7.2
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.velocity = -2.0, -7.2
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
fall.animtype = Medium
yaccel = 0.4850
p1sprpriority = sprpriority
forcestand = 1

[State 1110, Hit Midair]
type = hitdef
trigger1 = animelem = 4 && anim = 1100
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := ifelse(var(1) = 1, 3, 4))
attr = A, SA
damage = 60, 15
dizzypoints = 50 * !map(customcombo)
animtype = Up
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 10) * (map(sparkx.max) := 25), map(sparky) := -106
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -4.0, -10.3
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.velocity = -4.0, -10.3
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

[State 1110, Blur FX]
type = explod
trigger1 = anim = 1100
trigger1 = animelem = 4
ID = 1190
anim = 1190
postype = p1
pos = 32, -80
bindtime = 60
trans = addalpha
alpha = 256, 256
removetime = 10
interpolation.time = 10
interpolation.alpha = 0, 256
sprpriority = sprpriority + 1
removeongethit = 1
removeonchangestate = 1
ownpal = 1

[State 1110, Type]
type = statetypeset
trigger1 = anim = 1100
trigger1 = animelemtime(4) >= 0
trigger2 = anim = 1101
statetype = A
physics = N

[State 1110, Anim]
type = changeanim
trigger1 = anim = 1100
trigger1 = animelemtime(4) > 0 && vel y > (ifelse(map(strength) = 2, -5.3, ifelse(map(strength) = 1, -4, -2.7)))
value = 1101
persistent = 0

[State Idle]
type = statetypeset
trigger1 = anim = 1101
movetype = I

[State Land]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1108


;TATSUMAKI SENPUU KYAKU
[Statedef 1200]
type = A
physics = N
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
value = ifelse(p2bodydist x > 60, 2, ifelse(p2bodydist x > 30, 1, 0))
ignorehitpause = 1

[State 1200, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1200, Sound]
type = playsnd
trigger1 = anim = 1200 && animelem = 1
value = ifelse(var(1) = 2, 14, 4), ifelse(map(strength) = 0, 4, 2)
channel = 0

[State 1200, Sound]
type = playsnd
trigger1 = anim = 1200 && animelem = 1
value = 0, 40

[State 1200, Dust]
type = helper
trigger1 = anim = 1200 && animelem = 1
helpertype = normal
stateno = 7104
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 1200, Anim]
type = changeanim
trigger1 = !animtime
trigger1 = anim = 1200
value = 1201

[State 1200, Accel]
type = veladd
trigger1 = anim = 1200
trigger1 = animelemtime(1) >= 1
trigger2 = anim = 1205
y = 0.5

[State 1200, Vel]
type = velset
trigger1 = anim = 1200
trigger1 = animelemtime(1) >= 1
trigger2 = anim = 1201
x = ifelse(map(strength) = 2, 4.0, ifelse(map(strength) = 1, 3.5, 3.0))

[State 1200, Vel]
type = velset
trigger1 = anim = 1200
trigger1 = animelemtime(1) = 1
y = -5.15

[State 1200, Vel]
type = velset
trigger1 = anim = 1201
y = 0

[State 1200, Anim]
type = changeanim
trigger1 = anim = 1201
trigger1 = ifelse(map(strength) = 0, animelemtime(7) >= 0, ifelse(map(strength) = 1, animelemtime(13) >= 0, animtime = 0))
value = 1205

[State 1200, Sound]
type = playsnd
trigger1 = anim = 1201
trigger1 = animelem = 1 || animelem = 7 || animelem = 13
value = 1, 6
;channel = 1
stopongethit = 1

[State 1200, Blur FX]
type = explod
trigger1 = anim = 1201
trigger1 = animelem = 1 || animelem = 7 || animelem = 13
ID = 1290
anim = 1291
postype = p1
pos = 0, -80
bindtime = 60
sprpriority = sprpriority - 1
removeongethit = 1
removeonchangestate = 1
ownpal = 1

[State 1200, Blur FX]
type = explod
trigger1 = anim = 1201
trigger1 = animelem = 4 || animelem = 10 || animelem = 16
ID = 1290
anim = 1290
postype = p1
pos = 0, -60
bindtime = 60
sprpriority = sprpriority + 1
removeongethit = 1
removeonchangestate = 1
ownpal = 1

[State 1200, Hit Normal]
type = hitdef
trigger1 = var(1) = 1
trigger1 = anim = 1201
trigger1 = animelem = 2 || animelem = 8 || animelem = 14
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = A, SA
damage = ifelse(movehit, 20, ifelse(map(strength) = 2, 100, ifelse(map(strength) = 1, 90, 80))), ifelse(moveguarded, 5, ifelse(map(strength) = 2, 25, ifelse(map(strength) = 1, 23, 20)))
dizzypoints = 200 * !map(customcombo)
guardpoints = 80
animtype = Hard
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 64), map(sparky) := -70
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -4.5, -5.3
air.type = Low
air.velocity = -4.5, -5.3
air.cornerpush.veloff = 0
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

[State 1200, Hit Normal Behind]
type = hitdef
trigger1 = var(1) = 1
trigger1 = anim = 1201
trigger1 = animelem = 5 || animelem = 11 || animelem = 17
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = A, SA
damage = ifelse(movehit, 20, ifelse(map(strength) = 2, 80, ifelse(map(strength) = 1, 70, 60))), ifelse(moveguarded, 5, ifelse(map(strength) = 2, 20, ifelse(map(strength) = 1, 18, 15)))
dizzypoints = 200 * !map(customcombo)
guardpoints = 80
animtype = Hard
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -60) * (map(sparkx.max) := -30), map(sparky) := -70
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = 4.5, -5.3
air.type = Low
air.velocity = 4.5, -5.3
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = 10.52
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
airguard.velocity = 6.00, -1.00
p1sprpriority = sprpriority
forcestand = 1
airguard.cornerpush.veloff = 0

[State 1200, Hit Evil]
type = hitdef
trigger1 = var(1) != 1
trigger1 = anim = 1201
trigger1 = animelem = 2 || animelem = 8 || animelem = 14
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := (map(strength) + 1))
attr = A, SA
damage = ifelse(movehit, 25, 50), ifelse(moveguarded, 6, 12)
dizzypoints = ifelse(map(strength) = 2, 67, ifelse(map(strength) = 1, 75, 50)) * !map(customcombo)
animtype = Hard
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 64), map(sparky) := -70
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = ifelse(hitcount, -1.00, -0.67) * vel x, -6.50;ifelse((animelem = 2 && map(strength) = 0) || (animelem = 8 && map(strength) = 1) || (animelem = 14 && map(strength) = 2), -7.00, -4.25)
air.type = Low
air.velocity = ifelse(hitcount, -1.00, -0.67)* vel x, -3.50
air.cornerpush.veloff = 0
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

[State 1200, Hit Evil Behind]
type = hitdef
trigger1 = var(1) != 1
trigger1 = anim = 1201
trigger1 = animelem = 5 || animelem = 11 || animelem = 17
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := (map(strength) + 1))
attr = A, SA
damage = ifelse(movehit, 20, 40), ifelse(moveguarded, 5, 10)
dizzypoints = ifelse(map(strength) = 2, 67, ifelse(map(strength) = 1, 75, 50)) * !map(customcombo)
animtype = Hard
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -60) * (map(sparkx.max) := -30), map(sparky) := -70
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = 3.0, -3.50
air.type = Low
air.velocity = 3.0, -3.50
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = 10.52
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
airguard.velocity = 6.00, -1.00
p1sprpriority = sprpriority
forcestand = 1
airguard.cornerpush.veloff = 0

[State 1200, Idle]
type = statetypeset
trigger1 = anim = 1205
movetype = I

[State 1200, Land]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1209


;---Land---
[Statedef 1209]
type = S
physics = S
movetype = I
anim = 1209
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 1209, Pos]
type = posset
trigger1 = 1
y = 0

[State 1209, Sound]
type = playsnd
trigger1 = !time
value = 0, 52

[State 1209, Dust]
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

[State 1209, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;EX TATSUMAKI
[Statedef 1210]
type = A
physics = N
movetype = A
anim = 1210
ctrl = 0
velset = 0, 0
poweradd = -500
facep2 = 1
sprpriority = 2

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1210, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1210, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 1210, EX FX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 1210, EX FX]
type = explod
trigger1 = !time
trigger1 = 1 || map(exflash) := 30
anim = 7210
sprpriority = 3
postype = p1
pos = ceil(10 * const(size.xscale)), ceil(-90 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1210, Width]
type = width
trigger1 = movehit = [1, 8]
edge = 50, 35

[State 1210, Push]
type = playerpush
trigger1 = animelemtime(6) >= 0
trigger1 = animelemtime(21) < 0
value = 0
ignorehitpause = 1

[State 1210, Sound]
type = playsnd
trigger1 = animelem = 1
value = ifelse(var(1) = 2, 14, 4), ifelse(var(1) = 2, 8, 6)
channel = 0

[State 1210, Sound]
type = playsnd
trigger1 = animelem = 1
value = 0, 40

[State 1210, Dust]
type = helper
trigger1 = animelem = 1
stateno = 7100
ID = 7100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 1210, Dust]
type = helper
trigger1 = animelem = 6
helpertype = normal
stateno = 7104
ID = 7100
name = "Dust"
postype = p1
pos = 20, -pos y
facing = -1
ownpal = 1

[State 1210, Dust]
type = helper
trigger1 = animelem = 9
helpertype = normal
stateno = 7104
ID = 7100
name = "Dust"
postype = p1
pos = -20, -pos y
ownpal = 1

[State 1210, Vel]
type = velset
trigger1 = animelemtime(1) = 1
x = 4.00
y = -5.25

[State 1210, Vel]
type = velset
trigger1 = animelemtime(6) >= 0
trigger1 = animelemtime(21) < 0
x = 0
y = 0.5

[State 1210, Accel]
type = veladd
trigger1 = animelemtime(21) > 0
y = 0.5

[State 1210, Sound]
type = playsnd
trigger1 = animelem = 6 || animelem = 12 || animelem = 18
value = 1, 5
;channel = 1
stopongethit = 1

[State 1210, Blur FX]
type = explod
trigger1 = animelem = 6 || animelem = 12 || animelem = 18
ID = 1290
anim = 1291
postype = p1
pos = 0, -80
bindtime = 60
sprpriority = sprpriority - 1
removeongethit = 1
removeonchangestate = 1
ownpal = 1

[State 1210, Blur FX]
type = explod
trigger1 = animelem = 9 || animelem = 15
ID = 1290
anim = 1290
postype = p1
pos = 0, -60
bindtime = 60
sprpriority = sprpriority + 1
removeongethit = 1
removeonchangestate = 1
ownpal = 1

[State 1210, Hit]
type = hitdef
trigger1 = animelem = 7 || animelem = 13
air.juggle = 0 * (map(juggle_start) := 0 || map(juggle_increase) := 0 || map(juggle_limit) := 2)
attr = A, SA
damage = 25, 6
dizzypoints = 40 * !map(customcombo)
animtype = Hard
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 5, 0
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 60), map(sparky) := -70
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
p2facing = 1
ground.velocity = ifelse(abs(p2dist x) > 64, 14, 10), ifelse(p2dist y < 0, -1.5, -3.5)
air.type = Low
air.velocity = ifelse(abs(p2dist x) > 64, 14, 10), ifelse(p2dist y < 0, -1.5, -3.5)
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -4.49
guard.ctrltime = 1 + 10
guard.slidetime = 12
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
sprpriority = -1
yaccel = 0.4850
airguard.ctrltime = 1 + 16
airguard.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
p1sprpriority = sprpriority
forcestand = 1

[State 1210, Hit Behind]
type = hitdef
trigger1 = animelem = 10 || animelem = 16
air.juggle = 0 * (map(juggle_start) := 0 || map(juggle_increase) := 0 || map(juggle_limit) := 2)
attr = A, SA
damage = 25, 6
dizzypoints = 40 * !map(customcombo)
animtype = Hard
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 5, 0
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -60) * (map(sparkx.max) := -30), map(sparky) := -70
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
p2facing = -1
ground.velocity = ifelse(abs(p2dist x) > 64, -14, -10), ifelse(p2dist y < 0, -1.5, -3.5)
air.type = Low
air.velocity = ifelse(abs(p2dist x) > 64, -14, -10), ifelse(p2dist y < 0, -1.5, -3.5)
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -4.49
guard.ctrltime = 1 + 10
guard.slidetime = 12
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
sprpriority = 2
yaccel = 0.4850
airguard.ctrltime = 1 + 16
airguard.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
p1sprpriority = sprpriority
forcestand = 1

[State 1210, Hit Final]
type = hitdef
trigger1 = animelem = 19
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 2)
attr = A, SA
damage = 30, 8
dizzypoints = 40 * !map(customcombo)
animtype = Diagup
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 5, 0
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 60), map(sparky) := -70
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
p2facing = 1
ground.velocity = -5, -6
air.type = Low
air.velocity = -5, -6
air.cornerpush.veloff = 0
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
sprpriority = 2
yaccel = 0.4850
airguard.ctrltime = 1 + 16
airguard.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
p1sprpriority = sprpriority
forcestand = 1

[State 1210, Idle]
type = statetypeset
trigger1 = animelem = 20
movetype = I

[State 1210, Land]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1211


;---Land---
[Statedef 1211]
type = S
physics = S
movetype = I
anim = 1211
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 1211, Pos]
type = posset
trigger1 = 1
y = 0

[State 1211, Sound]
type = playsnd
trigger1 = !time
value = 0, 52

[State 1211, Dust]
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

[State 1211, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;AIR TATSUMAKI SENPUU KYAKU
[Statedef 1250]
type = A
physics = N
movetype = A
anim = 1250
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
value = 2
ignorehitpause = 1

[State 1250, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1250, Sound]
type = playsnd
trigger1 = anim = 1250
trigger1 = animelem = 1
value = ifelse(var(1) = 2, 14, 4), ifelse(vel y >= 0, 4, 2)
channel = 0

[State 1250, Anim by Strength]
type = changeanim
triggerall = anim = 1250 && animelemtime(22) < 0
trigger1 = map(strength) = 0 && animelemtime(10) >= 0
trigger2 = map(strength) = 1 && animelemtime(16) >= 0
value = 1250
elem = 22

[State 1250, Accel]
type = veladd
trigger1 = 1
y = ifelse(animelemtime(22) >= 0, const(movement.yaccel), 0.2732)

[State 1250, Vel]
type = veladd
trigger1 = !time
trigger1 = abs(vel x) < 5
x = ifelse(vel x < 0, -1, 1) * ifelse(map(strength) = 2, 2.0, ifelse(map(strength) = 1, 1.5, 1.0))

[State 1250, Sound]
type = playsnd
trigger1 = anim = 1250
trigger1 = animelem = 4 || animelem = 10 || animelem = 16
value = 1, 6
;channel = 1
stopongethit = 1

[State 1250, Blur FX]
type = explod
trigger1 = anim = 1250
trigger1 = animelem = 4 || animelem = 10 || animelem = 16
ID = 1290
anim = 1291
postype = p1
pos = 0, -80
bindtime = 60
sprpriority = sprpriority - 1
removeongethit = 1
removeonchangestate = 1
ownpal = 1

[State 1250, Blur FX]
type = explod
trigger1 = anim = 1250
trigger1 = animelem = 7 || animelem = 13 || animelem = 19
ID = 1290
anim = 1290
postype = p1
pos = 0, -60
bindtime = 60
sprpriority = sprpriority + 1
removeongethit = 1
removeonchangestate = 1
ownpal = 1

[State 1250, Hit Normal Front]
type = hitdef
trigger1 = var(1) = 1
trigger1 = animelem = 5 || animelem = 11 || animelem = 17
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = A, SA
damage = ifelse(movehit, 25, 100), ifelse(moveguarded, 6, 25)
dizzypoints = ifelse(var(1) = 1, 100, 50) * !map(customcombo)
animtype = Hard
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 64), map(sparky) := -69
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -4.2, -5.50
air.type = Low
air.velocity = -4.2, -5.50
air.cornerpush.veloff = 0
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

[State 1250, Hit Normal Behind]
type = hitdef
trigger1 = animelem = 8 || animelem = 14 || animelem = 20
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = A, SA
damage = ifelse(movehit, 25, 100), ifelse(moveguarded, 6, 25)
dizzypoints = 100 * !map(customcombo)
animtype = Hard
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -60) * (map(sparkx.max) := -30), map(sparky) := -70
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = 4.2, -5.50
air.type = Low
air.velocity = 4.2, -5.50
air.cornerpush.veloff = 0
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

[State 1250, Hit Evil Front]
type = hitdef
trigger1 = var(1) != 1
trigger1 = animelem = 5 || animelem = 11 || animelem = 17
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 3)
attr = A, SA
damage = 50, 13
dizzypoints = 50 * !map(customcombo)
animtype = Hard
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 64), map(sparky) := -69
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -2.1, -5.50
air.type = Low
air.velocity = -2.1, -5.50
air.cornerpush.veloff = 0
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

[State 1250, Hit Evil Behind]
type = hitdef
trigger1 = var(1) != 1
trigger1 = animelem = 8 || animelem = 14 || animelem = 20
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 3)
attr = A, SA
damage = 50, 13
dizzypoints = 50 * !map(customcombo)
animtype = Hard
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -60) * (map(sparkx.max) := -30), map(sparky) := -70
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = 2.1, -5.50
air.type = Low
air.velocity = 2.1, -5.50
air.cornerpush.veloff = 0
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

[State Idle]
type = statetypeset
trigger1 = animelemtime(21) >= 0
movetype = I
persistent = 0

[State Land]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1259


;---Land---
[Statedef 1259]
type = S
physics = S
movetype = I
anim = 1259
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 1259, Pos]
type = posset
trigger1 = 1
y = 0

[State 1259, Sound]
type = playsnd
trigger1 = !time
value = 0, 52

[State 1259, Dust]
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

[State 1259, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;EX AIR TATSUMAKI
[Statedef 1260]
type = A
physics = N
movetype = A
anim = 1260
ctrl = 0
poweradd = -500
sprpriority = 2

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1260, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1260, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 1260, EX FX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 1260, EX FX]
type = explod
trigger1 = !time
trigger1 = 1 || map(exflash) := 30
anim = 7210
sprpriority = 3
postype = p1
pos = ceil(0 * const(size.xscale)), ceil(-74 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1260, Width]
type = width
trigger1 = movehit
edge = 50, 35

[State 1260, Push]
type = playerpush
trigger1 = animelemtime(19) < 0
value = 0
ignorehitpause = 1

[State 1260, Accel]
type = veladd
trigger1 = 1
y = ifelse(animelemtime(19) < 0 && vel y > -2.5, -0.25, 0.5)

[State 1260, Slow]
type = velmul
trigger1 = animelemtime(19) < 0
x = 0.95

[State 1260, Minimum Height]
type = posset
trigger1 = animelemtime(19) < 0
trigger1 = pos y > -23
y = -23

[State 1260, Sound]
type = playsnd
trigger1 = animelem = 1
value = ifelse(var(1) = 2, 14, 4), ifelse(var(1) = 2, 8, 6)
channel = 0

[State 1260, Sound]
type = playsnd
trigger1 = animelem = 4 || animelem = 10 || animelem = 16
value = 1, 5
;channel = 1
stopongethit = 1

[State 1260, Blur FX]
type = explod
trigger1 = animelem = 4 || animelem = 10 || animelem = 16
ID = 1290
anim = 1291
postype = p1
pos = 0, -80
bindtime = 60
sprpriority = sprpriority - 1
removeongethit = 1
removeonchangestate = 1
ownpal = 1

[State 1260, Blur FX]
type = explod
trigger1 = animelem = 7 || animelem = 13
ID = 1290
anim = 1290
postype = p1
pos = 0, -60
bindtime = 60
sprpriority = sprpriority + 1
removeongethit = 1
removeonchangestate = 1
ownpal = 1

[State 1260, Dust]
type = helper
trigger1 = pos y >= -32
trigger1 = animelemtime(4) >= 0 && animelemtime(19) < 0
helpertype = normal
stateno = 7104
ID = 7100
name = "Dust"
postype = p1
pos = 20, -pos y
facing = -1
ownpal = 1
persistent = 0

[State 1260, Dust]
type = helper
trigger1 = pos y >= -32
trigger1 = animelemtime(4) >= 0 && animelemtime(19) < 0
helpertype = normal
stateno = 7104
ID = 7100
name = "Dust"
postype = p1
pos = -20, -pos y
ownpal = 1
persistent = 0

[State 1260, Hit]
type = hitdef
trigger1 = animelem = 5 || animelem = 11
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 5)
attr = A, SA
damage = 25, 6
dizzypoints = 40 * !map(customcombo)
animtype = Hard
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 5, 0
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 64), map(sparky) := -70
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
p2facing = 1
ground.velocity = ifelse(abs(p2dist x) > 64, 14, 10), ifelse(p2dist y < 0, -1.5, -3.5)
air.type = Low
air.velocity = ifelse(abs(p2dist x) > 64, 14, 10), ifelse(p2dist y < 0, -1.5, -3.5)
air.cornerpush.veloff = 0
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
sprpriority = -1
yaccel = 0.4850
airguard.ctrltime = 1 + 16
airguard.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
p1sprpriority = sprpriority
forcestand = 1

[State 1260, Hit Behind]
type = hitdef
trigger1 = animelem = 8 || animelem = 14
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 5)
attr = A, SA
damage = 25, 6
dizzypoints = 40 * !map(customcombo)
animtype = Hard
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 5, 0
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -60) * (map(sparkx.max) := -30), map(sparky) := -70
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
p2facing = -1
ground.velocity = ifelse(abs(p2dist x) > 64, -14, -10), ifelse(p2dist y < 0, -1.5, -3.5)
air.type = Low
air.velocity = ifelse(abs(p2dist x) > 64, -14, -10), ifelse(p2dist y < 0, -1.5, -3.5)
air.cornerpush.veloff = 0
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
sprpriority = 2
yaccel = 0.4850
airguard.ctrltime = 1 + 16
airguard.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
p1sprpriority = sprpriority
forcestand = 1

[State 1260, Hit Final]
type = hitdef
trigger1 = animelem = 17
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 5)
attr = A, SA
damage = 30, 8
dizzypoints = 40 * !map(customcombo)
animtype = Diagup
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 5, 0
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 64), map(sparky) := -70
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
p2facing = 1
ground.velocity = -5, -5.7
air.type = Low
air.velocity = -5, -5.7
air.cornerpush.veloff = 0
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
sprpriority = 2
yaccel = 0.4850
airguard.ctrltime = 1 + 16
airguard.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
p1sprpriority = sprpriority
forcestand = 1

[State 1260, Idle]
type = statetypeset
trigger1 = animelem = 18
movetype = I

[State Land]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1211


;CLASSIC AERIAL TATSUMAKI
[Statedef 1270]
type = A
physics = N
movetype = A
anim = 1270
ctrl = 0
velset = ifelse(vel x < 0, -3.5, 3.5), 0
poweradd = 100 * map(meterscaling)
sprpriority = 2

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1270, Strength]
type = mapset
trigger1 = !AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(map(cmd_strength_c), 2, ifelse(map(cmd_strength_b), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1270, Strength AI]
type = mapset
trigger1 = AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(random < 500, 0, ifelse(random < 500, 1, 2))
ignorehitpause = 1

[State 1270, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

;[State 1270, Minimum Height]
;type = posset
;trigger1 = vel y <= 0
;trigger1 = pos y > -23
;y = -23

[State 1270, Accel]
type = veladd
trigger1 = map(strength) = 0 && time >= 13
trigger2 = map(strength) = 1 && time >= 23
trigger3 = time >= 33
y = 0.4

[State 1270, Vel]
type = velmul
trigger1 = vel y > 0
x = 0.975

[State 1270, Sound]
type = playsnd
trigger1 = !time
value = ifelse(var(1) = 2, 14, 4), 2
channel = 0

[State 1270, Sound]
type = playsnd
trigger1 = animelem = 5
value = 1, 6
;channel = 1
stopongethit = 1

[State 1270, Blur FX]
type = explod
trigger1 = anim = 1270
trigger1 = animelem = 4 || animtime = 0
ID = 1290
anim = 1291
postype = p1
pos = 0, -80
bindtime = 60
sprpriority = sprpriority - 1
removeongethit = 1
removeonchangestate = 1
ownpal = 1

[State 1270, Blur FX]
type = explod
trigger1 = anim = 1270
trigger1 = animelem = 7
ID = 1290
anim = 1290
postype = p1
pos = 0, -60
bindtime = 60
sprpriority = sprpriority + 1
removeongethit = 1
removeonchangestate = 1
ownpal = 1

[State 1270, Hit]
type = hitdef
trigger1 = animelem = 5
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := (map(strength) + 1))
attr = A, SA
damage = 50, 13
dizzypoints = 50 * !map(customcombo)
animtype = Hard
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 64), map(sparky) := -69
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -3.0, -6.3
air.type = Low
air.velocity = -3.0, -6.3
air.cornerpush.veloff = 0
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

[State 1270, Hit Behind]
type = hitdef
trigger1 = animelem = 8
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := (map(strength) + 1))
attr = A, SA
damage = 50, 13
dizzypoints = 50 * !map(customcombo)
animtype = Hard
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -60) * (map(sparkx.max) := -30), map(sparky) := -70
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = 3, -6.3
air.type = Low
air.velocity = 3, -6.3
air.cornerpush.veloff = 0
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

[State 1270, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1259


;JOUDAN SOKUTOU GERI
[Statedef 1300]
type = S
physics = N
movetype = A
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
value = ifelse(map(ai_attackwindow) >= 18, 2, ifelse(map(ai_attackwindow) >= 14, 1, 0))
ignorehitpause = 1

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

[State 1300, Vel]
type = velset
trigger1 = animelemtime(1) = 1
trigger1 = anim = 1300
trigger2 = animelemtime(2) = 1
trigger2 = anim = [1301, 1302]
x = ifelse(map(strength) = 2, 4.5, ifelse(map(strength) = 1, 4.0, 2.0))

[State 1300, Vel]
type = velset
trigger1 = anim = 1300
trigger1 = animelem = 3
trigger2 = anim = [1301, 1302]
trigger2 = animelem = 5
x = 0

[State 1300, Pos]
type = posadd
trigger1 = anim = 1300
trigger1 = animelem = 3 || animelem = 4
trigger2 = anim = [1301, 1302]
trigger2 = animelem = 5 || animelem = 6
x = 8

[State 1300, Pos]
type = posadd
trigger1 = anim = 1300
trigger1 = animelem = 8
trigger2 = anim = [1301, 1302]
trigger2 = animelem = 10
x = 16

[State 1300, Pos]
type = posadd
trigger1 = anim = 1300
trigger1 = animelem = 9
trigger2 = anim = [1301, 1302]
trigger2 = animelem = 11
x = 10

[State 1300, Pos]
type = posadd
trigger1 = anim = 1300
trigger1 = animelem = 10
trigger2 = anim = [1301, 1302]
trigger2 = animelem = 12
x = 6

[State 1300, Sound]
type = playsnd
trigger1 = anim = [1301, 1302]
trigger1 = animelem = 5
trigger2 = anim = 1300
trigger2 = animelem = 3
value = 3, ifelse(map(strength) = 2, 4, ifelse(map(strength) = 1, 5, 1))
channel = 0

[State 1300, Sound]
type = playsnd
trigger1 = anim = 1300
trigger1 = animelem = 4
trigger2 = anim = [1301, 1302]
trigger2 = animelem = 6
value = 1, 6
;channel = 1
stopongethit = 1

[State 1300, Sound]
type = playsnd
trigger1 = anim = 1300
trigger1 = animelem = 1
trigger2 = anim = [1301, 1302]
trigger2 = animelem = 2
value = 0, 102

[State 1300, Hit]
type = hitdef
trigger1 = anim = 1300 && animelem = 4
trigger2 = anim = 1301 && animelem = 6
trigger3 = anim = 1302 && animelem = 6
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := (map(strength) + 1))
ID = 1300
attr = S, SA
damage = ifelse(map(strength) = 2, 110, ifelse(map(strength) = 1, 100, 90)), ifelse(map(strength) = 2, 28, ifelse(map(strength) = 1, 25, 23))
dizzypoints = ifelse(map(strength) = 2, 200, ifelse(map(strength) = 1, 150, 100)) * !map(customcombo)
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 68), map(sparky) := -78
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = ifelse(map(strength) = 2, -6.0, ifelse(map(strength) = 1, -5.0, -4.0)), -5.7
air.type = Low
air.velocity = ifelse(map(strength) = 2, -6.0, ifelse(map(strength) = 1, -5.0, -4.0)), -5.7
air.cornerpush.veloff = 0
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
p1sprpriority = sprpriority
forcestand = 1

[State 1300, Master Ryu Counter Wall Bounce]
type = targetstate
trigger1 = var(1) = 3
trigger1 = movehit = 1
trigger1 = movecountered = 1
trigger1 = numtarget(1300)
trigger1 = target(1300), dizzy = 0
trigger1 = target(1300), dizzypoints > abs(target(1300), gethitvar(dizzypoints))
trigger1 = (target(1300), stateno = 5000) || (target(1300), stateno = 5010) || (target(1300), stateno = 5020)
value = 1111300
ID = 1300
ignorehitpause = 1

[State 1300, Master Ryu Counter Wall Bounce]
redirectID = target(1300), ID
type = gethitvarset
trigger1 = var(1) = 3
trigger1 = movehit = 1
trigger1 = numtarget(1300)
trigger1 = target(1300), stateno = 1111300
xvel = -16.0 * target(1300), facing
yvel = -3.00
ignorehitpause = 1

[State 1300, Blur FX]
type = explod
trigger1 = anim = 1300 && animelem = 4
trigger2 = anim = 1301 && animelem = 6
trigger3 = anim = 1302 && animelem = 6
ID = 1190
anim = 1190
postype = p1
pos = 25, -50
scale = 0.75, 0.75
angle = -60
bindtime = 60
trans = addalpha
alpha = 256, 256
removetime = 6
interpolation.time = 6
interpolation.alpha = 0, 256
sprpriority = sprpriority + 1
removeongethit = 1
removeonchangestate = 1
ownpal = 1

[State Idle]
type = statetypeset
trigger1 = anim = 1300
trigger1 = animelem = 5
trigger2 = anim = [1301, 1302]
trigger2 = animelem = 7
movetype = I

[State 1300, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;EX JOUDAN SOKUTOU GERI
[Statedef 1310]
type = S
physics = N
movetype = A
anim = 1302
ctrl = 0
velset = 0, 0
poweradd = -500
facep2 = 1
sprpriority = 2

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1310, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1310, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 1310, EX FX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 1310, EX FX]
type = explod
trigger1 = !time
trigger1 = 1 || map(exflash) := 30
anim = 7210
sprpriority = 3
postype = p1
pos = ceil(0 * const(size.xscale)), ceil(-36 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1310, Vel]
type = velset
trigger1 = animelemtime(2) = 1
x = 6.0

[State 1310, Vel]
type = velset
trigger1 = animelem = 5
x = 0

[State 1310, Pos]
type = posadd
trigger1 = animelem = 5 || animelem = 6
x = 8

[State 1310, Pos]
type = posadd
trigger1 = animelem = 10
x = 16

[State 1310, Pos]
type = posadd
trigger1 = animelem = 11
x = 10

[State 1310, Pos]
type = posadd
trigger1 = animelem = 12
x = 6

[State 1310, Sound]
type = playsnd
trigger1 = animelem = 4
value = 4, 19
channel = 0

[State 1310, Sound]
type = playsnd
trigger1 = animelem = 6
value = 1, 6
;channel = 1
stopongethit = 1

[State 1310, Sound]
type = playsnd
trigger1 = animelem = 2
value = 0, 102

[State 1310, Hit]
type = hitdef
trigger1 = animelem = 6
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
ID = 1310
attr = S, SA
damage = 80, 20
dizzypoints = 100 * !map(customcombo)
animtype = Hard
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 68), map(sparky) := -78
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -16.0, -3.00
air.type = Low
air.velocity = -16.0, -3.00
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
p2facing = 1
fall = 1
fall.recover = 1
fall.recovertime = 120
p1sprpriority = sprpriority
forcestand = 1
yaccel = 0.4850

; movehit = 1 luckily prevents it from activating when one enemy is hit and the other guards, since movehit and target triggers happen to be checked on different enemies due to their indexes
[State 1310, Wall Bounce]
type = targetstate
trigger1 = !map(wallbounce)
trigger1 = movehit = 1; checked on last enemy hit
trigger1 = numtarget(1310)
trigger1 = target(1310), dizzy = 0; checked on first target(1310)
trigger1 = target(1310), dizzypoints > abs(target(1310), gethitvar(dizzypoints))
trigger1 = target(1310), stateno = 5000 || target(1310), stateno = 5010 || target(1310), stateno = 5020
trigger1 = 1 || map(wallbounce) := 1
value = 1111300
ID = 1310
ignorehitpause = 1

[State 1310, Juggle Reset]
type = mapset
trigger1 = numtarget(1310)
trigger1 = target(1310), stateno = 1111300
map = "juggle_count"
value = 0
ignorehitpause = 1

[State 1310, Corner Fix]
type = width
trigger1 = movehit
trigger1 = numtarget(1310)
trigger1 = target(1310), stateno = [1111302, 1111303]
trigger1 = animelemtime(10) >= 0
edge = 40, 0

[State 1310, Blur FX]
type = explod
trigger1 = animelem = 6
ID = 1190
anim = 1190
postype = p1
pos = 25, -50
scale = 0.75, 0.75
angle = -60
bindtime = 60
trans = addalpha
alpha = 256, 256
removetime = 6
interpolation.time = 6
interpolation.alpha = 0, 256
sprpriority = sprpriority + 1
removeongethit = 1
removeonchangestate = 1
ownpal = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I
persistent = 0

[State 1310, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- Target Hit Pause -----
[Statedef 1111300]
type = A
physics = N
movetype = H
velset = 0, 0

[State 1111300, Anim]
type = changeanim
trigger1 = 1
value = 5002

[State 1111300, End]
type = changestate
trigger1 = hitshakeover
value = 1111301


;----- Target Falling -----
[Statedef 1111301]
type = A
physics = N
movetype = H

[State 1111301, Accel]
type = veladd
trigger1 = 1
y = ifelse(vel y < 0, 0.5, 1.0) * gethitvar(yaccel)

[State 1111301, Vel]
type = hitvelset
trigger1 = !time
x = 1
y = 1

[State 1111301, Screen]
type = screenbound
trigger1 = 1
value = 1
movecamera = abs(player(gethitvar(playerno)), pos x - pos x) < (320 - stagevar(camera.tension) * 2), 0

[State 1111301, Screen]
type = screenbound
triggerall = numenemy
trigger1 = pos x > -40 && enemy, pos x > -40
trigger2 = pos x < 40 && enemy, pos x < 40
value = 1
movecamera = 1, 0

[State 1111301, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1111301, Anim]
type = changeanim
trigger1 = !time
value = 5030

[State 1111301, Bounce]
type = changestate
trigger1 = time >= 4
trigger1 = pos y < 0
trigger1 = backedgebodydist <= 0 || frontedgebodydist <= 0
value = 1111302

[State 1111301, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 5100


;----- Target Hitting Wall -----
[Statedef 1111302]
type = A
physics = N
movetype = H

[State 1111302, Turn]
type = turn
trigger1 = !time
trigger1 = frontedgedist < backedgedist

[State 1111302, Pos]
type = posadd
trigger1 = 1
x = -backedgebodydist

[State 1111302, Pos]
type = posfreeze
trigger1 = 1
x = 1
y = 1

[State 1111302, Screen]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 1111302, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1111302, Anim]
type = changeanim
trigger1 = 1
value = 5000

[State 1111302, Sound]
type = playsnd
trigger1 = !time
value = F 7, 2

[State 1111302, FX]
type = explod
trigger1 = !time
anim = F 72
postype = p1
pos = -15, const(size.mid.pos.y)
sprpriority = -5
ownpal = 1

[State 1111302, End]
type = changestate
trigger1 = time >= 4
value = 1111303


;----- Falling -----
[Statedef 1111303]
type = A
physics = N
movetype = H

[State 1111303, Turn]
type = turn
trigger1 = !time

[State 1111303, Accel]
type = veladd
trigger1 = 1
y = 0.4850; yaccel

[State 1111303, Track Nearest Player]
type = velset
trigger1 = !time
x = ((p2, pos x - pos x) * facing + 60) / 36.0
y = (pos y + 0.5 * 0.4850 * 36 ** 2) / -36.0

[State 1111303, Track Exact Player]
type = velset
trigger1 = !time
trigger1 = gethitvar(playerno)
trigger1 = playerIDexist(player(gethitvar(playerno)), ID)
x = ((player(gethitvar(playerno)), pos x - pos x) * facing + 60) / 36.0

[State 1111303, Vel]
type = velset
trigger1 = !time
trigger1 = vel x != [-8, 0]
x = ifelse(vel x <= -8, -8, 0)

[State 1111303, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5051), 5051, 5030)

[State 1111303, Anim]
type = changeanim
trigger1 = anim = 5030
trigger1 = !animtime
value = 5050

[State 1111303, Anim]
type = changeanim
trigger1 = anim = 5051
trigger1 = vel y > -2
value = 5061

[State 1111303, Screen]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[State 1111303, Fall Recovery]
type = selfstate
trigger1 = alive = 1 && dizzy = 0 && dizzypoints > 0
trigger1 = gethitvar(fall.recover)
trigger1 = command = "recovery"
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 1111303, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 5100


;ASHURA SENKUU
[Statedef 1400]
type = S
physics = N
movetype = I
anim = 1400
velset = 0, 0
ctrl = 0
sprpriority = -1
facep2 = 1

[State 1400, Strength]
type = mapset
trigger1 = !AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(map(cmd_623kk), 1, ifelse(map(cmd_623pp), 2, ifelse(map(cmd_421kk), -1, -2)))
ignorehitpause = 1
persistent = 0

[State 1400, Strength AI]
type = mapset
trigger1 = AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(random < 250, 1, 2)
ignorehitpause = 1

[State 1400, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1400, Vel]
type = velset
trigger1 = animelemtime(2) > 0 && animelemtime(7) < 0
x = ifelse(map(strength) = 2, -6, ifelse(map(strength) = 1, -4, ifelse(map(strength) = -2, 6, 4))) * sin(animelemtime(2) / 8.0 * pi)

[State 1400, Vel]
type = velmul
trigger1 = animelemtime(7) >= ifelse(map(strength) = 2 || map(strength) = -2, 15, 9)
x = 0.9

[State 1400, Vel]
type = velset
trigger1 = animelem = 7
x = ifelse(map(strength) = 2, 9.0, ifelse(map(strength) = 1, 6.25, ifelse(map(strength) = -2, -9.0, -6.25)))

[State 1400, Sound]
type = playsnd
trigger1 = animelem = 2
value = ifelse(var(1) = 2, 13, 3), ifelse(var(1) = 2, 15, 9)
channel = 0

[State 1400, Sound]
type = playsnd
trigger1 = animelem = 7
value = 6, 4
persistent = 0

[State 1400, Darken]
type = palfx
trigger1 = !time
time = abs(animelemtime(7))
mul = 256, 256, 256
sinmul = -128, -128, -128, 4 * abs(animelemtime(7))

[State 1400, Darken]
type = palfx
trigger1 = animelemtime(7) >= 0
time = 1
mul = 128, 128, 128

[State 1400, Afterimage]
type = explod
trigger1 = animelemtime(7) >= 0
ID = 1400
postype = p1
pos = 0, 2 * cos(time / 6.0 * pi)
sprpriority = sprpriority - 1
anim = anim
animfreeze = 1
animelem = animelemno(0)
removetime = 12
trans = addalpha
alpha = 256, 0
scale = const(size.xscale), const(size.yscale)
palfx.time = 12
palfx.mul = 128, 128, 128
interpolation.time = 12
interpolation.alpha = 0, 256
removeonchangestate = 1
ownpal = 1

[State 1400, Aura]
type = explod
trigger1 = animelemtime(3) >= 0
trigger1 = animelemtime(6) < 0
ID = 1400
postype = p1
pos = 0, 0
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
palfx.mul = 256, 0, 0
interpolation.time = 12
interpolation.alpha = 0, 256
interpolation.scale = const(size.xscale) * 1.20, const(size.yscale) * 1.20
removeonchangestate = 1
ownpal = 1

[State 1400, Eye]
type = explod
trigger1 = animelemtime(7) >= 0
ID = 1400
anim = 8060
postype = p1
pos = 8 * const(size.xscale) - 0.5 * vel x, -100 * const(size.yscale)
sprpriority = sprpriority + 1
removetime = 12
trans = addalpha
alpha = 256, 256
scale = 0.02 * abs(vel x), 0.02
palfx.time = 12
palfx.color = 0
palfx.mul = 256, 0, 0
interpolation.time = 12
interpolation.alpha = 0, 256
removeonchangestate = 1
ownpal = 1

[State 1400, Turn]
type = turn
trigger1 = animelemtime(7) > 0
trigger1 = p2dist x < 0

[State 1400, End]
type = changestate
triggerall = animelemtime(7) > 0
trigger1 = time >= ifelse(map(strength) = 2 || map(strength) = -2, 53, 45)
trigger2 = vel x < 0 && backedgebodydist <= 0
trigger3 = vel x > 0 && frontedgebodydist <= 0
value = 1401

[State 1400, NHB]
type = nothitby
trigger1 = 1
value = SCA, AA, AP, AT
time = 1

[State 1400, Push]
type = playerpush
trigger1 = animelemtime(3) >= 0
value = 0


;---Recovery---
[Statedef 1401]
type = S
physics = N
movetype = I
anim = 1401
velset = 0, 0
ctrl = 0
sprpriority = -1

[State 1401, Darken]
type = palfx
trigger1 = !time
time = 4
mul = 128, 128, 128
sinmul = 128, 128, 128, 16

[State 1401, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;RYUSOKYAKU
[Statedef 1500]
type = S
physics = S
movetype = A
ctrl = 0
anim = 1500
velset = 0, 0
poweradd = 100 * map(meterscaling)
sprpriority = 2
facep2 = 1
juggle = ifelse(p2statetype = L && !map(customcombo), 8, 0)

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1500, Strength]
type = mapset
trigger1 = !AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(map(cmd_strength_c), 2, ifelse(map(cmd_strength_b), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1500, Strength AI]
type = mapset
trigger1 = AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(map(ai_attackwindow) > 25, 2, ifelse(map(ai_attackwindow) > 18, 1, 0))
ignorehitpause = 1

[State 1500, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1500, Anim]
type = changeanim
trigger1 = !time
value = ifelse(map(strength) = 2, 1502, ifelse(map(strength) = 1, 1501, 1500))

[State 1500, Pos]
type = posadd
trigger1 = animelem = 4
x = 24

[State 1500, Pos]
type = posadd
trigger1 = animelem = 5
x = 3

[State 1500, Pos]
type = posadd
trigger1 = animelem = 6
x = 6

[State 1500, Pos]
type = posadd
trigger1 = animelem = 8
x = 6

[State 1500, Pos]
type = posadd
trigger1 = animelem = 9
x = 2

[State 1500, Pos]
type = posadd
trigger1 = animelem = 10
x = 22

[State 1500, Pos]
type = posadd
trigger1 = animelem = 14
x = ifelse(map(strength) = 2, 18, ifelse(map(strength) = 1, 16, 14))

[State 1500, Pos]
type = posadd
trigger1 = !animtime
x = 6

[State 1500, Sound]
type = playsnd
trigger1 = var(1) = 2
trigger1 = animelem = 2
value = 13, 0
channel = 0

[State 1500, Sound]
type = playsnd
trigger1 = var(1) != 2
trigger1 = animelem = 9
value = 3, ifelse(map(strength) = 2, 4, ifelse(map(strength) = 1, 5, 1))
channel = 0

[State 1500, Sound]
type = playsnd
trigger1 = var(1) = 2
trigger1 = animelem = 7
value = 13, ifelse(map(strength) = 2, 13, ifelse(map(strength) = 1, 3, 4))
channel = 0

[State 1500, Sound]
type = playsnd
trigger1 = animelem = 1
value = 0, 100

[State 1500, Dust]
type = explod
trigger1 = animelem = 3
anim = 7100
ID = 7100
sprpriority = 3
postype = p1
pos = -26, 0
scale = 0.5, 0.5
ownpal = 1

[State 1500, Hit]
type = hitdef
trigger1 = animelem = 10
;air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 99)
ID = 1500
attr = S, SA
hitflag = MAFD
guardflag = M
priority = 4, Hit
damage = ifelse(map(strength) = 2, 80, ifelse(map(strength) = 1, 70, 60)), ifelse(map(strength) = 2, 20, ifelse(map(strength) = 1, 18, 15))
dizzypoints = 100 * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 15
air.hittime = 120
ground.velocity = -7.51, 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -7.51
guard.cornerpush.veloff = 0
air.velocity = -4.31, 16
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = (p2statetype = L)
p1sprpriority = sprpriority
forcestand = 1
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 50), map(sparky) := -26
down.hittime = 18
down.velocity = 0, 0
fall.yvelocity = 0
; no envshake

[State 1500, Anim]
type = assertspecial
trigger1 = hitpausetime
trigger1 = animelemtime(10) >= 0 && animelemtime(11) <= 0
flag = animatehitpause
ignorehitpause = 1

[State 1500, Shake]
type = envshake
trigger1 = animelem = 10
time = 24
freq = 180
ampl = ifelse(map(strength) = 2, 4, ifelse(map(strength) = 1, 3, 2))
mul = 0.8

[State 1500, FX Vertical]
type = explod
trigger1 = animelem = 10
ID = 1590
anim = 1590
postype = p1
pos = 38, 0
sprpriority = sprpriority + 1
removeongethit = 1
removeonchangestate = 1
ownpal = 1

[State 1500, Sound]
type = playsnd
trigger1 = animelem = 10
value = 6, 22
freqmul = ifelse(map(strength) = 0, 1.2, ifelse(map(strength) = 1, 1.1, 1))

[State 1500, Dust]
type = helper
trigger1 = animelem = 10
helpertype = normal
stateno = 8111
ID = 8100
name = "Impact Dust"
postype = p1
pos = 38, 0
ownpal = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(11) >= 0
movetype = I
persistent = 0

[State 1500, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;EX RYUSOKYAKU
[Statedef 1520]
type = S
physics = S
movetype = A
ctrl = 0
anim = 1520
velset = 0, 0
poweradd = -500
sprpriority = 2
facep2 = 1
juggle = ifelse(p2statetype = L && !map(customcombo), 8, 0)

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1520, Strength]
type = mapset
trigger1 = !time
map = "strength"
value = 2
ignorehitpause = 1

[State 1520, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1520, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 1520, EX FX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 1520, EX FX]
type = explod
trigger1 = !time
trigger1 = 1 || map(exflash) := 30
anim = 7210
sprpriority = 3
postype = p1
pos = ceil(-10 * const(size.xscale)), ceil(-62 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1520, Pos]
type = posadd
trigger1 = animelem = 4
x = 24

[State 1520, Pos]
type = posadd
trigger1 = animelem = 5
x = 3

[State 1520, Pos]
type = posadd
trigger1 = animelem = 6
x = 6

[State 1520, Pos]
type = posadd
trigger1 = animelem = 8
x = 6

[State 1520, Pos]
type = posadd
trigger1 = animelem = 9
x = 2

[State 1520, Pos]
type = posadd
trigger1 = animelem = 10
x = 22

[State 1520, Pos]
type = posadd
trigger1 = animelem = 14
x = 16

[State 1520, Pos]
type = posadd
trigger1 = !animtime
x = 6

[State 1520, Sound]
type = playsnd
trigger1 = var(1) = 2
trigger1 = animelem = 2
value = 13, 0
channel = 0

[State 1520, Sound]
type = playsnd
trigger1 = var(1) = 2
trigger1 = animelem = 7
value = 13, 6
channel = 0

[State 1520, Sound]
type = playsnd
trigger1 = var(1) != 2
trigger1 = animelem = 9
value = 3, ifelse(map(strength) = 2, 5, ifelse(map(strength) = 1, 4, 1))
channel = 0

[State 1520, Sound]
type = playsnd
trigger1 = animelem = 1
value = 0, 100

[State 1520, Dust]
type = explod
trigger1 = animelem = 3
anim = 7100
ID = 7100
sprpriority = 3
postype = p1
pos = -26, 0
scale = 0.5, 0.5
ownpal = 1

[State 1520, Hit]
type = hitdef
trigger1 = animelem = 10
;air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 99)
ID = 1520
attr = S, SA
hitflag = MAFD
guardflag = M
priority = 4, Hit
damage = 80, 20
dizzypoints = 100 * !map(customcombo)
getpower = 0, 0
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 15
air.hittime = 120
ground.velocity = -7.51, 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -7.51
guard.cornerpush.veloff = 0
air.velocity = -4.31, 16
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
fall.recover = (p2statetype = L)
fall.recovertime = 120
p1sprpriority = sprpriority
forcestand = 1
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 50), map(sparky) := -26
down.hittime = 18
down.velocity = 0, 0
fall.yvelocity = 0
; no envshake

[State 1520, Anim]
type = assertspecial
trigger1 = hitpausetime
trigger1 = animelemtime(10) >= 0 && animelemtime(11) <= 0
flag = animatehitpause
ignorehitpause = 1

[State 1520, FX Vertical]
type = explod
trigger1 = animelem = 10
ID = 1590
anim = 1590
postype = p1
pos = 38, 0
sprpriority = sprpriority + 1
removeongethit = 1
removeonchangestate = 1
ownpal = 1

[State 1520, Shake]
type = envshake
trigger1 = animelem = 10
time = 24
freq = 180
ampl = 4
mul = 0.8

[State 1520, Sound]
type = playsnd
trigger1 = animelem = 10
value = 6, 22

[State 1520, Dust]
type = helper
trigger1 = animelem = 10
helpertype = normal
stateno = 8111
ID = 8100
name = "Impact Dust"
postype = p1
pos = 38, 0
ownpal = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(11) >= 0
movetype = I
persistent = 0

[State 1520, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;DENJIN RENKI
[Statedef 1900]
type = S
physics = S
movetype = I
anim = 1900
ctrl = 0
velset = 0, 0
poweradd = 50 * map(meterscaling)
sprpriority = 2
facep2 = 1

[State 1900, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1900, Sound]
type = playsnd
trigger1 = animelem = 2
value = 5, 5
channel = 0
freqmul = 0.98 + (random / 25000.0)

[State 1900, Denjin Renki]
type = mapset
map = "denjinrenki"
trigger1 = animelem = 8
value = 1

[State 1900, PalFX]
type = palfx
trigger1 = animelem = 8
time = 8
add = 0, 128, 255
sinadd = 0, -128, -255, 32

[State 1900, Sound]
type = playsnd
trigger1 = animelem = 8
value = 6, 6

[State 199, Shake]
type = envshake
trigger1 = animelem = 8
time = 4
ampl = 2
freq = 180

[State 1900, Particles]
type = explod
trigger1 = animelem = 8
anim = 8155
ID = 8155
sprpriority = 3
postype = p1
pos = -6, -54
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
scale = 0.33, 0.45
bindtime = -1
ownpal = 1

[State 1900, Particles]
type = explod
trigger1 = animelem = 8
anim = 8155
ID = 8155
sprpriority = 3
postype = p1
pos = -32, -20
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
scale = 0.167, 0.33
bindtime = -1
ownpal = 1

[State 1900, Particles]
type = explod
trigger1 = animelem = 8
anim = 8155
ID = 8155
sprpriority = 3
postype = p1
pos = 22, -20
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
scale = 0.167, 0.33
bindtime = -1
ownpal = 1

[State 1900, Particles]
type = explod
trigger1 = animelemtime(8) = [0, 7]
anim = 3031
sprpriority = 3
postype = p1
pos = -5, -54
random = 20, 20
vel = (2 + (random / 500.0)) * ifelse(random < 500, -1, 1), (2 + (random / 500.0)) * ifelse(random < 500, -1, 1)
scale = ifelse(random < 500, -0.5, 0.5), ifelse(random < 500, -0.5, 0.5)
angle = 90 * (random % 4)
ownpal = 1

[State 1900, Dust]
type = explod
trigger1 = animelem = 8
anim = 7105
sprpriority = -10
postype = p1
pos = -6, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1900, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;PUNCH ZERO COUNTER==
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
trigger1 = animelemtime(3) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 2900, Sound]
type = playsnd
trigger1 = animelem = 1
value = ifelse(var(1) = 2, 13, 3), 6 + (random % 3)
channel = 0

[State 2900, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 3
;channel = 1
stopongethit = 1

[State 2900, Hit]
type = hitdef
trigger1 = animelem = 3
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
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 40) * (map(sparkx.max) := 65), map(sparky) := -63
envshake.time = 10
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.freq = 180
kill = 0

[State 2900, Type]
type = statetypeset
trigger1 = animelem = 4
movetype = I

[State 2900, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- EVIL ---
[Statedef 2901]
type = S
physics = N
movetype = A
anim = 2901
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0

[State 2901, NHB]
type = nothitby
trigger1 = animelemtime(4) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 2901, Sound]
type = playsnd
trigger1 = animelem = 1
value = ifelse(var(1) = 2, 13, 3), 6 + (random % 3)
channel = 0

[State 2901, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 3
;channel = 1
stopongethit = 1

[State 2901, Hit]
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
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 50) * (map(sparkx.max) := 85), map(sparky) := -65
envshake.time = 10
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.freq = 180
kill = 0

[State 2901, Type]
type = statetypeset
trigger1 = animelem = 5
movetype = I

[State 2901, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;KICK ZERO COUNTER==
[Statedef 2910]
type = C
physics = N
movetype = A
anim = 2910
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0

[State 2910, NHB]
type = nothitby
trigger1 = animelemtime(5) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 2910, Sound]
type = playsnd
trigger1 = animelem = 1
value = ifelse(var(1) = 2, 13, 3), 6 + (random % 3)
channel = 0

[State 2910, Sound]
type = playsnd
trigger1 = animelem = 4
value = 1, 6
;channel = 1
stopongethit = 1

[State 2910, Hit]
type = hitdef
trigger1 = animelem = 5
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
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 35) * (map(sparkx.max) := 76), map(sparky) := -6
envshake.time = 10
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.freq = 180
kill = 0

[State 2910, Sprite Priority]
type = sprpriority
trigger1 = animelem = 6
value = -1

[State 2910, Type]
type = statetypeset
trigger1 = animelem = 6
movetype = I

[State 2910, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1
