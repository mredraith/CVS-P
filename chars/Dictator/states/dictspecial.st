; _______________________________
;| Vega by Phantom.of.the.Server |
; 
;==
;=SPECIAL STATES=
;==

;==PSYCHO CRUSHER=
[Statedef 1000]
type = S
physics = S
movetype = A
ctrl = 0
anim = 1000
velset = 0, 0
poweradd = 100 * map(meterscaling)
facep2 = 1
sprpriority = 2

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
value = ifelse(random < 666, 1, ifelse(p2statetype = L || random < 500, 0, 2))
ignorehitpause = 1

[State 1000, Strength AI]
type = mapset
trigger1 = AIlevel
trigger1 = time <= 0
trigger1 = p2bodydist x >= 160
map = "strength"
value = ifelse(random < 500, 2, 1)
ignorehitpause = 1

[State 1000, Strength AI]
type = mapset
trigger1 = AIlevel
trigger1 = time <= 0
trigger1 = p2bodydist x >= 200
map = "strength"
value = 2
ignorehitpause = 1

[State 1000, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1000, Lose Charge]
type = null
trigger1 = time <= 0
trigger1 = 1 || map(cmd_charge4) := 0
trigger1 = 1 || map(ai_charge4) := 0
ignorehitpause = 1
persistent = 0

[State 1000, Push]
type = playerpush
trigger1 = animelemtime(6) >= 0
value = 0
ignorehitpause = 1

[State 1000, Shield]
type = helper
trigger1 = !numhelper(1007)
trigger1 = animelemtime(6) >= 0
helpertype = normal
stateno = 1007
ID = 1007
name = "Projectile Shield"
postype = p1

[State 1000, Shield]
type = nothitby
trigger1 = numhelper(1007)
trigger1 = animelemtime(6) >= 0
value = , NP
time = 1
ignorehitpause = 1

[State 1000, Vel]
type = velset
trigger1 = animelemtime(4) >= 0
x = ifelse(map(strength) = 2, 10, ifelse(map(strength) = 1, 7.5, 5))
y = 0

[State 1000, Type]
type = statetypeset
trigger1 = animelem = 4
statetype = A
physics = N

[State 1000, FX]
type = helper
trigger1 = animelem = 6
helpertype = normal
stateno = 1005
ID = 1005
name = "Psycho Crusher"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
pausemovetime = 999
supermovetime = 999
persistent = 0

[State 1000, Sound]
type = playsnd
trigger1 = animelem = 4
value = 0, 40

[State 1000, Dust]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 7104
ID = 7100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1000, Sound]
type = playsnd
trigger1 = animelem = 4
value = 4, 5
channel = 0

[State 1000, Sound]
type = playsnd
trigger1 = animelem = 6
value = 5, 4

[State 1000, Hit]
type = hitdef
trigger1 = animelemtime(6) >= 0
trigger1 = (movecontact + movereversed) % ifelse(map(strength) = 2, 6, ifelse(map(strength) = 1, 8, 10)) = 0
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = A, SA
damage = ifelse(movehit, 20, ifelse(map(strength) = 2, 120, ifelse(map(strength) = 1, 110, 100))), ifelse(moveguarded, 5, ifelse(map(strength) = 2, 30, ifelse(map(strength) = 1, 28, 25)))
dizzypoints = ifelse(map(strength) = 2, 200, ifelse(map(strength) = 1, 150, 100)) * !map(customcombo)
guardpoints = 66
animtype = Hard
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 0) * (map(sparkx.max) := 75), map(sparky) := -59
hitsound = s2, 8
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = ifelse(map(strength) = 2, -6.0, ifelse(map(strength) = 1, -5.0, -4.0)), ifelse(map(strength) = 2, -7.0, ifelse(map(strength) = 1, -6.0, -5.0))
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 10
guard.slidetime = 10
guard.velocity = -4.49
air.type = Low
air.velocity = ifelse(map(strength) = 2, -6.0, ifelse(map(strength) = 1, -5.0, -4.0)), ifelse(map(strength) = 2, -6.0, ifelse(map(strength) = 1, -5.0, -4.0))
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
p1sprpriority = sprpriority
forcestand = 1
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
palfx.time = 60
palfx.color = 0
palfx.sinadd = 128, 128, 128, 4
palfx.mul = map(palfx1_r), map(palfx1_g), map(palfx1_b)
fall = 1
fall.recover = 1
fall.recovertime = 120
ID = 1000
yAccel = (0.5 + (ComboCount * 0.04))
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0

[State 1000, End]
type = changestate
triggerall = time >= 20
trigger1 = frontedgedist <= (abs(map(cornerpush)) + 1); because of processing order and corner priority respectively
trigger2 = map(strength) = 0 && time >= 37
trigger3 = map(strength) = 1 && time >= 49;61
trigger4 = map(strength) = 2 && time >= 61;85
value = 1001


;----- Recovery -----
[Statedef 1001]
type = S
physics = N
movetype = I
anim = 1001
ctrl = 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 1000, Vel]
type = velmul
trigger1 = 1
x = 0.90

[State 1001, End]
type = changestate
trigger1 = !animtime
value = 1002


;----- Land -----
[Statedef 1002]
type = S
physics = S
movetype = I
anim = 1002
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 1002, Pos]
type = posset
trigger1 = 1
y = 0

[State 1002, Sound]
type = playsnd
trigger1 = !time
value = 0, 52

[State 1002, Dust]
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

[State 1002, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==EX PSYCHO CRUSHER=
[Statedef 1030]
type = S
physics = S
movetype = A
ctrl = 0
anim = 1000
velset = 0, 0
facep2 = 1
sprpriority = 2
poweradd = -500

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

[State 1030, Lose Charge]
type = null
trigger1 = time <= 0
trigger1 = 1 || map(cmd_charge4) := 0
trigger1 = 1 || map(ai_charge4) := 0
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
anim = 8210
sprpriority = 3
postype = p1
pos = ceil(-19 * const(size.xscale)), ceil(-67 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1030, NHB]
type = nothitby
trigger1 = animelemtime(6) < 0
value = SCA
time = 1

[State 1030, Push]
type = playerpush
trigger1 = animelemtime(6) >= 0
value = 0
ignorehitpause = 1

[State 1030, Shield]
type = helper
trigger1 = !numhelper(1007)
trigger1 = animelemtime(6) >= 0
helpertype = normal
stateno = 1007
ID = 1007
name = "Projectile Shield"
postype = p1

[State 1030, Shield]
type = nothitby
trigger1 = numhelper(1007)
trigger1 = animelemtime(6) >= 0
value = , NP
time = 1
ignorehitpause = 1

[State 1030, Vel]
type = velset
trigger1 = animelemtime(4) >= 0
x = 10
y = 0

[State 1030, Type]
type = statetypeset
trigger1 = animelem = 4
statetype = A
physics = N

[State 1030, FX]
type = helper
trigger1 = animelem = 6
helpertype = normal
stateno = 1005
ID = 1005
name = "Psycho Crusher"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
pausemovetime = 999
supermovetime = 999
persistent = 0

[State 1030, Sound]
type = playsnd
trigger1 = animelem = 4
value = 0, 40

[State 1030, Dust]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 7104
ID = 7100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1030, Sound]
type = playsnd
trigger1 = animelem = 4
value = 4, 5
channel = 0

[State 1030, Sound]
type = playsnd
trigger1 = animelem = 6
value = 5, 4

[State 1030, Hit]
type = hitdef
trigger1 = animelemtime(6) >= 0
trigger1 = !((movecontact + movereversed) % 4)
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 3)
attr = A, SA
damage = 50, 13
dizzypoints = 100 * !map(customcombo)
guardpoints = 66
animtype = Hard
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 8, 8
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 0) * (map(sparkx.max) := 75), map(sparky) := -59
hitsound = s2, 8
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -5.5, -5.5
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 10
guard.slidetime = 10
guard.velocity = -4.49
air.type = Low
air.velocity = -5.5, -5.5
getpower = 0, 0
givepower = 40, 40
p1sprpriority = sprpriority
forcestand = 1
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
palfx.time = 60
palfx.color = 0
palfx.sinadd = 128, 128, 128, 4
palfx.mul = map(palfx1_r), map(palfx1_g), map(palfx1_b)
fall = 1
fall.recover = 1
fall.recovertime = 120
ID = 1030
yAccel = (0.5 + (ComboCount * 0.04))
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0

[State 1030, End]
type = changestate
triggerall = time >= 20
trigger1 = frontedgedist <= (abs(map(cornerpush)) + 1); because of processing order and corner priority respectively
trigger2 = time >= 37
value = 1001


;==BURNED=
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


;==DOUBLE KNEE PRESS=
[Statedef 1100]
type = S
physics = N
movetype = A
ctrl = 0
anim = 1100
velset = 0, 0
poweradd = 100 * map(meterscaling)
facep2 = 1
sprpriority = 2

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
value = ifelse(map(cmd_strength_c), 2, ifelse(map(cmd_strength_b), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1100, Strength AI]
type = mapset
trigger1 = AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(p2bodydist x < 90, 0, ifelse(p2bodydist x < 120, 1, 2))
ignorehitpause = 1

[State 1100, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1100, Lose Charge]
type = null
trigger1 = time <= 0
trigger1 = 1 || map(cmd_charge4) := 0
trigger1 = 1 || map(ai_charge4) := 0
ignorehitpause = 1
persistent = 0

[State 1100, Anim]
type = changeanim
trigger1 = !time
value = ifelse(map(strength) = 2, 1102, ifelse(map(strength) = 1, 1101, 1100))

[State 1100, Sound]
type = playsnd
trigger1 = animelem = 2
value = 0, 40

[State 1100, Dust]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 7104
ID = 7100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1100, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0
y = 0.5

[State 1100, Vel]
type = velset
trigger1 = animelemtime(2) = 0
x = ifelse(map(strength) = 2, 10, ifelse(map(strength) = 1, 8, 6))
y = ifelse(map(strength) = 2, -3.5, ifelse(map(strength) = 1, -3.25, -3.0))

[State 1100, Type]
type = statetypeset
trigger1 = animelem = 2
statetype = A
physics = N

[State 1100, Sound]
type = playsnd
trigger1 = animelem = 3
value = 3, 6
channel = 0

[State 1100, Sound]
type = playsnd
trigger1 = animelem = 4
value = 1, 6
;channel = 1
stopongethit = 1

[State 1100, Blur FX]
type = explod
trigger1 = animelem = 4
ID = 1190
anim = 1190
postype = p1
pos = 70 * const(size.xscale), -50 * const(size.yscale)
bindtime = 60
sprpriority = sprpriority + 1
removeongethit = 1
removeonchangestate = 1
ownpal = 1

[State 1100, Hit High]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = A, SA
damage = ifelse(map(strength) = 2, 50, ifelse(map(strength) = 1, 45, 40)), ifelse(map(strength) = 2, 12, ifelse(map(strength) = 1, 11, 10))
dizzypoints = 50 * !map(customcombo)
animtype = Medium
fall.animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 0) * (map(sparkx.max) := 80), map(sparky) := -85
hitsound = s2, 6
hitsound.channel = 2
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
air.type = Low
air.velocity = -4.0, -6.0
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
p1sprpriority = sprpriority
forcestand = 1
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yAccel = (0.5 + (ComboCount * 0.04))
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0

[State 1100, Hit Low]
type = hitdef
trigger1 = animelem = 5
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = A, SA
damage = ifelse(map(strength) = 2, 50, ifelse(map(strength) = 1, 45, 40)), ifelse(map(strength) = 2, 12, ifelse(map(strength) = 1, 11, 10))
dizzypoints = 100 * !map(customcombo)
animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 22) * (map(sparkx.max) := 66), map(sparky) := -26
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -10.52, 0
air.type = Low
air.velocity = -4.0, -6.0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
p1sprpriority = sprpriority
forcestand = 1
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yAccel = (0.5 + (ComboCount * 0.04))
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0

[State 1100, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1103


;----- Land -----
[Statedef 1103]
type = S
physics = S
movetype = I
anim = 1103
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 1103, Pos]
type = posset
trigger1 = 1
y = 0

[State 1103, Sound]
type = playsnd
trigger1 = !time
value = 0, 52

[State 1103, Dust]
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

[State 1103, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==EX DOUBLE KNEE PRESS=
[Statedef 1130]
type = S
physics = N
movetype = A
ctrl = 0
anim = 1130
velset = 0, 0
facep2 = 1
sprpriority = 2
poweradd = -500

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1130, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1130, Lose Charge]
type = null
trigger1 = time <= 0
trigger1 = 1 || map(cmd_charge4) := 0
trigger1 = 1 || map(ai_charge4) := 0
ignorehitpause = 1
persistent = 0

[State 1130, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 1130, EX FX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 1130, EX FX]
type = explod
trigger1 = !time
trigger1 = 1 || map(exflash) := 30
anim = 8210
sprpriority = 3
postype = p1
pos = ceil(-20 * const(size.xscale)), ceil(-20 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1130, Sound]
type = playsnd
trigger1 = animelem = 2
value = 0, 40

[State 1130, Dust]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 7104
ID = 7100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1130, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0
y = 0.50

[State 1130, Vel]
type = velset
trigger1 = animelem = 2
x = 10
y = -3.5

[State 1130, Type]
type = statetypeset
trigger1 = animelem = 2
statetype = A
physics = N

[State 1130, Sound]
type = playsnd
trigger1 = animelem = 3
value = 3, 6
channel = 0

[State 1130, Sound]
type = playsnd
trigger1 = animelem = 4
value = 1, 6
;channel = 1
stopongethit = 1

[State 1130, Blur FX]
type = explod
trigger1 = animelem = 4
ID = 1190
anim = 1190
postype = p1
pos = 70 * const(size.xscale), -50 * const(size.yscale)
bindtime = 60
sprpriority = sprpriority + 1
removeongethit = 1
removeonchangestate = 1
ownpal = 1

[State 1130, Hit High]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 2)
attr = A, SA
damage = 60, 15
dizzypoints = 50 * !map(customcombo)
animtype = Medium
fall.animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 0) * (map(sparkx.max) := 80), map(sparky) := -85
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.slidetime = 15
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.velocity = -7.51, 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.velocity = -4.0, -6.0
air.cornerpush.veloff = 0
getpower = 0, 0
givepower = 40, 40
p1sprpriority = sprpriority
forcestand = 1
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yAccel = (0.5 + (ComboCount * 0.04))
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0

[State 1130, Hit Low]
type = hitdef
trigger1 = animelem = 5
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 2)
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
sparkxy = -10 + 0 * (map(sparkx.min) := 22) * (map(sparkx.max) := 66), map(sparky) := -26
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.slidetime = 15
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.velocity = -7.51, 0
air.type = Low
air.velocity = -4.0, -6.0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0, 0
givepower = 40, 40
p1sprpriority = sprpriority
forcestand = 1
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yAccel = (0.5 + (ComboCount * 0.04))
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0

[State 1130, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1133


;----- Land -----
[Statedef 1133]
type = S
physics = S
movetype = I
anim = 1133
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 1133, Pos]
type = posset
trigger1 = 1
y = 0

[State 1133, Sound]
type = playsnd
trigger1 = !time
value = 0, 52

[State 1133, Dust]
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

[State 1133, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==HEAD PRESS=
[Statedef 1200]
type = S
physics = N
movetype = A
ctrl = 0
anim = 1200
velset = 0, 0
poweradd = 100 * map(meterscaling)
facep2 = 1
sprpriority = 2
juggle = ifelse(p2statetype = L && !map(customcombo), 8, 0)

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1200, Strength]
type = mapset
trigger1 = !time
map = "strength"
value = 2
ignorehitpause = 1

[State 1200, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1200, Lose Charge]
type = null
trigger1 = time <= 0
trigger1 = 1 || map(cmd_charge2) := 0
trigger1 = 1 || map(ai_charge2) := 0
ignorehitpause = 1
persistent = 0

[State 1200, Sound]
type = playsnd
trigger1 = animelem = 2
value = 0, 40

[State 1200, Dust]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 1200, Type]
type = statetypeset
trigger1 = animelem = 2
statetype = A
physics = N

[State 1200, Accel]
type = veladd
trigger1 = animelemtime(2) >= 1
y = 1.0

[State 1200, Vel]
type = velset
trigger1 = animelemtime(2) = 1
y = -14
persistent = 0

[State 1200, Vel]
type = velset
trigger1 = animelemtime(2) = 1
trigger1 = numenemy
;x = p2dist x / (14 + ((14 ** 2) + (2 * 0.66 * (p2, const(size.head.pos.y)))) ** 0.5)
x = min(p2dist x, 320) / 26.25; 7/8 of total 30 travel time
persistent = 0

[State 1200, Vel]
type = velset
trigger1 = vel x > 13
x = 13

[State 1200, Vel]
type = turn
trigger1 = vel x < 0
persistent = 0

[State 1200, Vel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1200, Sound]
type = playsnd
trigger1 = animelem = 2
value = 3, 0
channel = 0

[State 1200, Hit]
type = hitdef
trigger1 = animelemtime(6) >= 0
trigger1 = !movecontact && !movereversed
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 2)
attr = A, SA
damage = 100, 25
dizzypoints = 100 * !map(customcombo)
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
guardflag = HA
hitflag = MAFD
priority = 4, Hit
pausetime = 0, 24
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -10) * (map(sparkx.max) := 10), map(sparky) := 0
hitsound = s2, 6
hitsound.channel = 2
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
air.type = Low
air.velocity = -3, 6
air.cornerpush.veloff = 0
down.hittime = 18
down.velocity = 0, 0
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
p1sprpriority = sprpriority
forcestand = 1
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yAccel = (0.5 + (ComboCount * 0.04))
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
ID = 1200

[State 1200, End]
type = changestate
trigger1 = movecontact || movereversed
value = 1201

[State 1200, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1202


;----- HIT -----
[Statedef 1201]
type = A
physics = N
movetype = A
ctrl = 0
anim = 1201
velset = 0, 0
sprpriority = 2

[State 1201, Pos]
type = posfreeze
trigger1 = animelemtime(4) < 0
value = 1
ignorehitpause = 1

[State 1201, Push]
type = playerpush
trigger1 = animelemtime(5) < 0
value = 0
ignorehitpause = 1

[State 1201, Pos]
type = posset
trigger1 = pos y > 0
y = 0

[State 1201, Pos]
type = posset
trigger1 = numtarget(1200)
trigger1 = animelemtime(5) < 0
trigger1 = pos y > -(target(1200), const(size.ground.front))
y = -(target(1200), const(size.ground.front))

[State 1201, Accel]
type = veladd
trigger1 = animelemtime(5) >= 0
y = 0.53

[State 1201, Sound]
type = playsnd
trigger1 = animelem = 5
value = 0, 40

[State 1201, Vel]
type = velset
trigger1 = animelem = 5
x = 0
y = -7.70

[State 1201, Vel Dir]
type = velmul
trigger1 = 1
x = 0.95

[State 1201, Vel Dir]
type = velset
triggerall = animelemtime(5) >= 0
trigger1 = !AIlevel
trigger1 = command = "holdfwd" && command != "holdback"
trigger2 = AIlevel
trigger2 = p2dist x <= 0
x = 4.818

[State 1201, Vel Dir]
type = velset
triggerall = animelemtime(5) >= 0
trigger1 = !AIlevel
trigger1 = command != "holdfwd" && command = "holdback"
trigger2 = AIlevel
trigger2 = p2dist x > 0
x = -4.818

[State 1201, Skull Diver]
type = changestate
triggerall = animelemtime(8) >= 0
trigger1 = !AIlevel
trigger1 = map(cmd_x) || map(cmd_y) || map(cmd_z)
trigger2 = AIlevel
trigger2 = roundstate = 2
trigger2 = p2dist y = [-50, 100]
value = 1205

[State 1201, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1203


;----- MISS -----
[Statedef 1202]
type = S
physics = S
ctrl = 0
anim = 1202
sprpriority = 2

[State 1202, Vel]
type = velset
trigger1 = 1
x = 0
y = 0

[State 1202, Pos]
type = posset
trigger1 = 1
y = 0

[State 1202, Sound]
type = playsnd
trigger1 = !time
value = 5, 7

[State 1202, Dust]
type = explod
trigger1 = !time
anim = 7100
ID = 7100
sprpriority = 2
postype = p1
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1202, Dust]
type = explod
trigger1 = !time
anim = 7102
ID = 7102
sprpriority = -2
postype = p1
scale = 0.75, 0.75
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1202, Shake]
type = envshake
trigger1 = !time
time = 12
freq = 180
ampl = 2

[State 1202, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


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


;----- SOMERSAULT SKULL DIVER -----
[Statedef 1205]
type = A
physics = N
movetype = A
anim = 1205
poweradd = 0
sprpriority = 2
ctrl = 0
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1205, Accel]
type = veladd
trigger1 = time
y = 0.53

[State 1205, Vel Dir]
type = velmul
trigger1 = 1
x = 0.95

[State 1205, Vel Dir]
type = velset
trigger1 = !AIlevel
trigger1 = command = "holdfwd" && command != "holdback"
trigger2 = AIlevel
trigger2 = vel y >= 0 && p2movetype != A
x = 4.818

[State 1205, Vel Dir]
type = velset
trigger1 = !AIlevel
trigger1 = command != "holdfwd" && command = "holdback"
trigger2 = AIlevel
trigger2 = !(vel y >= 0 && p2movetype != A)
x = -4.818

[State 1205, Sound]
type = playsnd
trigger1 = animelem = 3
value = 4, 2
channel = 0

[State 1205, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 3
;channel = 1
stopongethit = 1

[State 1205, Sound]
type = playsnd
trigger1 = animelem = 2
value = 5, 2
channel = 3
stopongethit = 1

[State 1205, FX]
type = helper
trigger1 = !numhelper(6000)
helpertype = normal
stateno = 6000
ID = 6000
name = "Psycho Power"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
persistent = 0

[State 1205, Hit]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 3)
attr = A, SA
damage = 70, 18
dizzypoints = 100 * !map(customcombo)
animtype = Hard
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 76), map(sparky) := -98
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -7, 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.velocity = -5, -6
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
yAccel = (0.5 + (ComboCount * 0.04))
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
p1sprpriority = sprpriority
forcestand = 1
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
airguard.cornerpush.veloff = 0

[State 1205, Type]
type = statetypeset
trigger1 = animelem = 6
movetype = I

[State 1205, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > 0
value = 1203


;==DEVIL REVERSE=
[Statedef 1250]
type = S
physics = N
movetype = A
ctrl = 0
anim = 1250
velset = 0, 0
poweradd = 100 * map(meterscaling)
facep2 = 1
sprpriority = 2

[State 1250, Strength]
type = mapset
trigger1 = !time
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

[State 1250, Lose Charge]
type = null
trigger1 = time <= 0
trigger1 = 1 || map(cmd_charge2) := 0
trigger1 = 1 || map(ai_charge2) := 0
ignorehitpause = 1
persistent = 0

[State 1250, Sound]
type = playsnd
trigger1 = animelem = 2
value = 0, 40

[State 1250, Dust]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 1250, Type]
type = statetypeset
trigger1 = animelem = 2
statetype = A
physics = N

[State 1250, Accel]
type = veladd
trigger1 = animelemtime(2) >= 1
y = 1.0

[State 1250, Vel]
type = velset
trigger1 = animelemtime(2) = 1
y = -14

[State 1250, Vel]
type = velset
trigger1 = animelemtime(2) = 1
trigger1 = numenemy
;x = p2dist x / (14 + ((14 ** 2) + (2 * 0.66 * (p2, const(size.head.pos.y)))) ** 0.5)
x = min(p2dist x, 320) / 26.25; 7/8 of total 30 travel time
persistent = 0

[State 1250, Vel]
type = turn
trigger1 = vel x < 0
persistent = 0

[State 1250, Vel]
type = velset
trigger1 = vel x > 13
x = 13

[State 1250, Vel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1250, Sound]
type = playsnd
trigger1 = animelem = 2
value = 3, 0
channel = 0

[State 1250, Punch]
type = changestate
triggerall = vel y >= 0
triggerall = animelemtime(2) > 0
trigger1 = !AIlevel
trigger1 = map(cmd_x) || map(cmd_y) || map(cmd_z)
trigger2 = AIlevel
trigger2 = roundstate = 2
trigger2 = p2dist y = [-50, 100]
value = 1255

[State 1250, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1203


;----- Punch -----
[Statedef 1255]
type = A
physics = N
movetype = A
ctrl = 0
anim = 1255
velset = 0, 0
poweradd = 0
sprpriority = 2

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1255, Sound]
type = playsnd
trigger1 = animelem = 4
value = 3, 5
channel = 0

[State 1255, Sound]
type = playsnd
trigger1 = animelem = 8
value = 1, 3
;channel = 1
stopongethit = 1

[State 1255, Accel]
type = veladd
trigger1 = time
y = 0.75

[State 1255, Vel]
type = velset
trigger1 = !time
x = -6
y = -9

[State 1255, Vel Dir]
type = velmul
trigger1 = 1
x = 0.95

[State 1255, Vel Dir]
type = velset
trigger1 = !AIlevel
trigger1 = command = "holdfwd" && command != "holdback"
trigger2 = AIlevel
trigger2 = vel y >= 0 && p2movetype != A && p2dist x > 0
x = 4.818

[State 1255, Vel Dir]
type = velset
trigger1 = !AIlevel
trigger1 = command != "holdfwd" && command = "holdback"
trigger2 = AIlevel
trigger2 = !(vel y >= 0 && p2movetype != A && p2dist x > 0)
x = -4.818

[State 1255, Turn]
type = turn
triggerall = !time
trigger1 = !AIlevel
trigger1 = command = "holdfwd" && command != "holdback"
trigger2 = AIlevel
trigger2 = p2statetype != A
trigger2 = p2, backedgedist > 10
trigger2 = random < 500

[State 1255, Sound]
type = playsnd
trigger1 = animelem = 6
value = 5, 2
channel = 3
stopongethit = 1

[State 1255, FX]
type = helper
trigger1 = !numhelper(6000)
helpertype = normal
stateno = 6000
ID = 6000
name = "Psycho Power"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
persistent = 0

[State 1255, Hit]
type = hitdef
trigger1 = animelem = 8
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 3)
attr = A, SA
damage = 70, 18
dizzypoints = 150 * !map(customcombo)
animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 10) * (map(sparkx.max) := 70), map(sparky) := -60
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -4, -7
air.type = Low
air.velocity = -4, -7
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
palfx.time = 60
palfx.color = 0
palfx.sinadd = 128, 128, 128, 4
palfx.mul = map(palfx1_r), map(palfx1_g), map(palfx1_b)
fall = 1
fall.recover = 1
fall.recovertime = 120
yAccel = (0.5 + (ComboCount * 0.04))
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
p1sprpriority = sprpriority
forcestand = 1
airguard.cornerpush.veloff = 0

[State 1255, Juggle Reset]
type = mapset
trigger1 = !map(jugglereset)
trigger1 = map(juggle_count)
trigger1 = time > 0
trigger1 = movehit = 1
trigger1 = 1 || map(jugglereset) := 1
map = "juggle_count"
value = 0
ignorehitpause = 1

[State 1255, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1203


;==EX HEAD PRESS=
[Statedef 1270]
type = S
physics = N
movetype = A
ctrl = 0
anim = 1200
velset = 0, 0
facep2 = 1
sprpriority = 2
juggle = ifelse(p2statetype = L && !map(customcombo), 8, 0)
poweradd = -500

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1270, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1270, Lose Charge]
type = null
trigger1 = time <= 0
trigger1 = 1 || map(cmd_charge2) := 0
trigger1 = 1 || map(ai_charge2) := 0
ignorehitpause = 1
persistent = 0

[State 1270, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 1270, EX FX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 1270, EX FX]
type = explod
trigger1 = !time
trigger1 = 1 || map(exflash) := 30
anim = 8210
sprpriority = 3
postype = p1
pos = ceil(0 * const(size.xscale)), ceil(-55 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1270, NHB]
type = nothitby
trigger1 = time >= 0
value = , AP
time = 1
ignorehitpause = 1

[State 1270, Sound]
type = playsnd
trigger1 = animelem = 2
value = 0, 40

[State 1270, Dust]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 1270, Type]
type = statetypeset
trigger1 = animelem = 2
statetype = A
physics = N

[State 1270, Accel]
type = veladd
trigger1 = animelemtime(2) >= 1
y = 1.0

[State 1270, Vel]
type = velset
trigger1 = animelemtime(2) = 1
y = -14
persistent = 0

[State 1270, Vel]
type = velset
trigger1 = animelemtime(2) = 1
trigger1 = numenemy
;x = p2dist x / (14 + ((14 ** 2) + (2 * 0.66 * (p2, const(size.head.pos.y)))) ** 0.5)
x = min(p2dist x, 320) / 26.25; 7/8 of total 30 travel time
persistent = 0

[State 1270, Vel]
type = velset
trigger1 = vel x > 13
x = 13

[State 1270, Vel]
type = turn
trigger1 = vel x < 0
persistent = 0

[State 1270, Vel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1270, Sound]
type = playsnd
trigger1 = animelem = 2
value = 3, 0
channel = 0

[State 1270, Hit]
type = hitdef
trigger1 = animelemtime(6) >= 0
trigger1 = !movecontact && !movereversed
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 2)
attr = A, SA
damage = 140, 35
dizzypoints = 200 * !map(customcombo)
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
guardflag = HA
hitflag = MAFD
priority = 4, Hit
pausetime = 0, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -10) * (map(sparkx.max) := 10), map(sparky) := 0
hitsound = s2, 6
hitsound.channel = 2
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
air.type = Low
air.velocity = -3, 6
air.cornerpush.veloff = 0
down.hittime = 18
down.velocity = 0, 0
getpower = 0, 0
givepower = 40, 40
p1sprpriority = sprpriority
forcestand = 1
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yAccel = (0.5 + (ComboCount * 0.04))
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
ID = 1270

[State 1270, End]
type = changestate
trigger1 = movecontact || movereversed
value = 1271

[State 1270, Devil Reverse]
type = changestate
triggerall = vel y >= 0
triggerall = animelemtime(2) > 0
trigger1 = !AIlevel
trigger1 = map(cmd_x) || map(cmd_y) || map(cmd_z)
trigger2 = AIlevel
trigger2 = p2movetype = A
trigger2 = p2dist y = [-50, 100]
value = 1280

[State 1270, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1202


;----- HIT -----
[Statedef 1271]
type = A
physics = N
movetype = A
ctrl = 0
anim = 1201
velset = 0, 0
sprpriority = 2

[State 1271, Freeze Anim]
type = changeanim
trigger1 = time < 10
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(3) < 0
value = 1201
elem = 2

[State 1271, Skip Anim]
type = changeanim
trigger1 = animelem = 3
value = 1201
elem = 5

[State 1271, Pos]
type = posfreeze
trigger1 = animelemtime(4) < 0
value = 1

[State 1271, Push]
type = playerpush
trigger1 = animelemtime(5) < 0
value = 0

[State 1201, Pos]
type = posset
trigger1 = pos y > 0
y = 0

[State 1201, Pos]
type = posset
trigger1 = numtarget(1270)
trigger1 = animelemtime(5) < 0
trigger1 = pos y > -(target(1270), const(size.ground.front))
y = -(target(1270), const(size.ground.front))

[State 1271, Accel]
type = veladd
trigger1 = animelemtime(5) >= 0
y = 0.53

[State 1271, Sound]
type = playsnd
trigger1 = animelem = 5
value = 0, 40

[State 1271, Vel]
type = velset
trigger1 = animelem = 5
x = 0
y = -7.70

[State 1271, Vel Dir]
type = velmul
trigger1 = 1
x = 0.95

[State 1271, Vel Dir]
type = velset
triggerall = animelemtime(5) >= 0
trigger1 = !AIlevel
trigger1 = command = "holdfwd" && command != "holdback"
trigger2 = AIlevel
trigger2 = p2dist x <= 0
x = 4.818

[State 1271, Vel Dir]
type = velset
triggerall = animelemtime(5) >= 0
trigger1 = !AIlevel
trigger1 = command != "holdfwd" && command = "holdback"
trigger2 = AIlevel
trigger2 = p2dist x > 0
x = -4.818

[State 1271, Skull Diver]
type = changestate
triggerall = animelemtime(8) >= 0
trigger1 = !AIlevel
trigger1 = map(cmd_x) || map(cmd_y) || map(cmd_z)
trigger2 = AIlevel && (p2dist y = [-50, 100])
value = 1275

[State 1271, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1203


;----- SOMERSAULT SKULL DIVER -----
[Statedef 1275]
type = A
physics = N
movetype = A
anim = 1205
poweradd = 0
sprpriority = 2
ctrl = 0
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1275, Accel]
type = veladd
trigger1 = time
y = 0.53

[State 1275, Vel Dir]
type = velmul
trigger1 = 1
x = 0.95

[State 1275, Vel Dir]
type = velset
trigger1 = !AIlevel
trigger1 = command = "holdfwd" && command != "holdback"
trigger2 = AIlevel
trigger2 = vel y >= 0 && p2movetype != A
x = 4.818

[State 1275, Vel Dir]
type = velset
trigger1 = !AIlevel
trigger1 = command != "holdfwd" && command = "holdback"
trigger2 = AIlevel
trigger2 = !(vel y >= 0 && p2movetype != A)
x = -4.818

[State 1275, Sound]
type = playsnd
trigger1 = animelem = 3
value = 4, 2
channel = 0

[State 1275, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 3
;channel = 1
stopongethit = 1

[State 1275, Sound]
type = playsnd
trigger1 = animelem = 2
value = 5, 2
channel = 3
stopongethit = 1

[State 1275, FX]
type = helper
trigger1 = !numhelper(6000)
helpertype = normal
stateno = 6000
ID = 6000
name = "Psycho Power"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
persistent = 0

[State 1275, Hit]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 3)
attr = A, SA
damage = 100, 25
dizzypoints = 100 * !map(customcombo)
animtype = Hard
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 76), map(sparky) := -98
hitsound = s2, 3
hitsound.channel = 2
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
air.type = Low
air.velocity = -5, -6
air.cornerpush.veloff = 0
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
yAccel = (0.5 + (ComboCount * 0.04))
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
p1sprpriority = sprpriority
forcestand = 1
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
airguard.cornerpush.veloff = 0

[State 1275, Type]
type = statetypeset
trigger1 = animelem = 6
movetype = I

[State 1275, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > 0
value = 1203


;----- Devil Reverse -----
[Statedef 1280]
type = A
physics = N
movetype = A
ctrl = 0
anim = 1255
velset = 0, 0
poweradd = 0
sprpriority = 2

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1280, Sound]
type = playsnd
trigger1 = animelem = 4
value = 3, 5
channel = 0

[State 1280, Sound]
type = playsnd
trigger1 = animelem = 8
value = 1, 3
;channel = 1
stopongethit = 1

[State 1280, Accel]
type = veladd
trigger1 = time
y = 0.75

[State 1280, Vel]
type = velset
trigger1 = !time
x = -6
y = -9

[State 1280, Vel Dir]
type = velmul
trigger1 = 1
x = 0.95

[State 1280, Vel Dir]
type = velset
trigger1 = !AIlevel
trigger1 = command = "holdfwd" && command != "holdback"
trigger2 = AIlevel
trigger2 = vel y >= 0 && p2movetype != A && p2dist x > 0
x = 4.818

[State 1280, Vel Dir]
type = velset
trigger1 = !AIlevel
trigger1 = command != "holdfwd" && command = "holdback"
trigger2 = AIlevel
trigger2 = !(vel y >= 0 && p2movetype != A && p2dist x > 0)
x = -4.818

[State 1280, Turn]
type = turn
triggerall = !time
trigger1 = !AIlevel
trigger1 = command = "holdfwd" && command != "holdback"
trigger2 = AIlevel
trigger2 = p2statetype != A
trigger2 = p2, backedgedist > 10
trigger2 = random < 500

[State 1280, Sound]
type = playsnd
trigger1 = animelem = 6
value = 5, 2
channel = 3
stopongethit = 1

[State 1280, FX]
type = helper
trigger1 = !numhelper(6000)
helpertype = normal
stateno = 6000
ID = 6000
name = "Psycho Power"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
persistent = 0

[State 1280, Hit]
type = hitdef
trigger1 = animelem = 8
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 3)
attr = A, SA
damage = 100, 25
dizzypoints = 150 * !map(customcombo)
animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 10) * (map(sparkx.max) := 70), map(sparky) := -60
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -4, -7
air.type = Low
air.velocity = -4, -7
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
palfx.time = 60
palfx.color = 0
palfx.sinadd = 128, 128, 128, 4
palfx.mul = map(palfx1_r), map(palfx1_g), map(palfx1_b)
fall = 1
fall.recover = 1
fall.recovertime = 120
yAccel = (0.5 + (ComboCount * 0.04))
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
p1sprpriority = sprpriority
forcestand = 1
airguard.cornerpush.veloff = 0

[State 1280, Juggle Reset]
type = mapset
trigger1 = !map(jugglereset)
trigger1 = map(juggle_count)
trigger1 = time > 0
trigger1 = movehit = 1
trigger1 = 1 || map(jugglereset) := 1
map = "juggle_count"
value = 0
ignorehitpause = 1

[State 1280, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1203


;----- Target Slammed Against Ground -----
[Statedef 1290]
type = A
physics = N
movetype = H
velset = 0, 0

[State 1290, Anim]
type = changeanim
trigger1 = 1
value = ifelse(selfanimexist(5420), 5420, 5012)

[State 1290, End]
type = selfstate
trigger1 = hitshakeover
trigger1 = pos y < 0
value = 5030

[State 1290, End]
type = changestate
trigger1 = hitshakeover
trigger1 = pos y >= 0
value = 1291


[Statedef 1291]
type = L
physics = N
movetype = H
velset = 0, 0

[State 1291, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5101), 5101, 5100)

[State 1291, Pos]
type = posset
trigger1 = 1
y = 0

[State 1291, Damage]
type = hitfalldamage
trigger1 = !time

[State 1291, Shake]
type = envshake
trigger1 = !time
time = 24
freq = 180
ampl = -4
mul = 0.85

[State 1291, Sound]
type = playsnd
trigger1 = !time
value = F 7, 2

[State 1291, FX]
type = explod
trigger1 = !time
anim = F 62
postype = p1
pos = 0, 0
ownpal = 1
sprpriority = 10

[State 1291, End]
type = changestate
trigger1 = !animtime
value = 1292


[Statedef 1292]
type = L
physics = N
movetype = H

[State 1292, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5161), 5161, 5160)

[State 1292, Pos]
type = posset
trigger1 = !time
y = const(movement.down.bounce.offset.y)

[State 1292, Vel]
type = velset
trigger1 = !time
y = -3.5

[State 1292, Accel]
type = veladd
trigger1 = time > 0
y = 0.5

[State 1292, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.down.bounce.groundlevel)
value = 5110


;==PSYCHO IMPACT=
[Statedef 1300]
type = S
physics = S
movetype = A
ctrl = 0
anim = 1300
velset = 0, 0
poweradd = 100 * map(meterscaling)
facep2 = 1
sprpriority = 2

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
value = ifelse(map(cmd_strength_z), 2, ifelse(map(cmd_strength_y), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1300, Strength AI]
type = mapset
trigger1 = AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(random < 500, 2, ifelse(random < 666, 1, 0))
ignorehitpause = 1

[State 1300, Strength AI]
type = mapset
trigger1 = AIlevel
trigger1 = time <= 0
trigger1 = p2movetype = H
map = "strength"
value = ifelse(p2bodydist x < 70, 0, ifelse(p2bodydist x < 110, 1, 2))
ignorehitpause = 1

[State 1300, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1300, Type]
type = statetypeset
trigger1 = animelem = 2
physics = N

[State 1300, Type]
type = statetypeset
trigger1 = animelem = 13
physics = S

[State 1300, Sound]
type = playsnd
trigger1 = animelem = 2
value = 0, 102

[State 1300, Dust]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 7104
ID = 7100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1300, Friction]
type = velmul
trigger1 = vel x
x = 0.95

[State 1300, Vel]
type = velset
trigger1 = animelem = 2
x = ifelse(map(strength) = 2, 12, ifelse(map(strength) = 1, 9, 6))

[State 1300, Vel]
type = velset
trigger1 = animelem = 5
x = 0

[State 1300, Pos]
type = posadd
trigger1 = animelem = 5 || animelem = 6 || animelem = 7 || animelem = 8
x = 8 * const(size.xscale)

[State 1300, Pos]
type = posadd
trigger1 = animelem = 9
x = 24 * const(size.xscale)

[State 1300, Pos]
type = posadd
trigger1 = animelem = 11 || animelem = 12 || animelem = 13
x = 8 * const(size.xscale)

[State 1300, Startup]
type = changeanim
triggerall = animelemtime(2) >= 2 && animelemtime(3) < 0
trigger1 = map(strength) = 0 && animelemtime(2) >= 6
trigger2 = map(strength) = 1 && animelemtime(2) >= 9
trigger3 = map(strength) = 2 && animelemtime(2) >= 12
value = 1300
elem = 3

[State 1300, Sound]
type = playsnd
trigger1 = animelem = 1 || animelem = 3 || animelem = 8
value = 3, ifelse((animelem = 1), 1, ifelse((animelem = 3), 4, 8))
channel = 0

[State 1300, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 3
;channel = 1
stopongethit = 1

[State 1300, Sound]
type = playsnd
trigger1 = animelem = 8
value = 5, 2
;channel = 1
stopongethit = 1

[State 1300, FX]
type = explod
trigger1 = animelem = 5
anim = 1305
ID = 1305
sprpriority = 3
postype = p1
pos = 108, -110
trans = addalpha
alpha = 256, 256
removetime = 10
bindtime = -1
interpolation.time = 10
interpolation.alpha = 0, 256
removeongethit = 1
removeonchangestate = 1
scale = 0.33, 0.5
angle = 105
ownpal = 1

[State 1300, FX]
type = explod
trigger1 = animelem = 9
anim = 1305
ID = 1305
sprpriority = 3
postype = p1
removeongethit = 1
removeonchangestate = 1
scale = 0.5, 0.5
ownpal = 1

[State 1300, Hit]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, SA
damage = 50, 13
dizzypoints = 50 * !map(customcombo)
animtype = Hard
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 50), map(sparky) := -66
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.slidetime = 12
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.velocity = -4.49, 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.velocity = -2, -4
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
p1sprpriority = sprpriority
forcestand = 1
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yAccel = (0.5 + (ComboCount * 0.04))

[State 1300, Hit]
type = hitdef
trigger1 = animelem = 9
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 2)
ID = 1300
attr = S, SA
damage = 50, 12
dizzypoints = 50 * !map(customcombo)
animtype = Back
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 4, 4
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 83), map(sparky) := -85
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -6, -6
air.type = Low
air.velocity = -6, -6
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
p1sprpriority = sprpriority
forcestand = 1
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
fall = 1
fall.recover = 1
fall.recovertime = 120
yAccel = (0.5 + (ComboCount * 0.04))
;palfx.time = 60
;palfx.color = 0
;palfx.sinadd = 128, 128, 128, 4
;palfx.mul = map(palfx1_r), map(palfx1_g), map(palfx1_b)

[State 1300, Mine]
type = helper
trigger1 = !numhelper(1315)
trigger1 = movehitvar(frame)
trigger1 = movehit = 1
trigger1 = numtarget(1300)
trigger1 = animelemtime(9) >= 0 && animelemtime(10) < 0
trigger1 = roundstate = 2
helpertype = normal; projectile
stateno = 1315
ID = 1315
name = "Psycho Mine"
postype = p1
pos = 60, -85
size.xscale = 0.25
size.yscale = 0.25
ownpal = 1
persistent = 0
ignorehitpause = 1

[State 1300, Idle]
type = statetypeset
trigger1 = animelemtime(10) >= 0
movetype = I
persistent = 0

[State 1300, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==EX PSYCHO IMPACT=
[Statedef 1330]
type = S
physics = S
movetype = A
ctrl = 0
anim = 1300
velset = 0, 0
facep2 = 1
sprpriority = 2
poweradd = -500

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1330, Strength]
type = mapset
trigger1 = !AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(map(cmd_strength_z), 2, ifelse(map(cmd_strength_y), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1330, Strength AI]
type = mapset
trigger1 = AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(random < 500, 2, ifelse(random < 666, 1, 0))
ignorehitpause = 1

[State 1330, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1330, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 1330, EX FX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 1330, EX FX]
type = explod
trigger1 = !time
trigger1 = 1 || map(exflash) := 30
anim = 8210
sprpriority = 3
postype = p1
pos = ceil(-15 * const(size.xscale)), ceil(-40 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1330, Type]
type = statetypeset
trigger1 = animelem = 2
physics = N

[State 1330, Type]
type = statetypeset
trigger1 = animelem = 13
physics = S

[State 1330, Sound]
type = playsnd
trigger1 = animelem = 2
value = 0, 102

[State 1330, Dust]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 7104
ID = 7100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1330, Friction]
type = velmul
trigger1 = vel x
x = 0.95

[State 1330, Vel]
type = velset
trigger1 = animelem = 2
x = 12

[State 1330, Vel]
type = velset
trigger1 = animelem = 5
x = 0

[State 1330, Pos]
type = posadd
trigger1 = animelem = 5 || animelem = 6 || animelem = 7 || animelem = 8
x = 8 * const(size.xscale)

[State 1330, Pos]
type = posadd
trigger1 = animelem = 9
x = 24 * const(size.xscale)

[State 1330, Pos]
type = posadd
trigger1 = animelem = 11 || animelem = 12 || animelem = 13
x = 8 * const(size.xscale)

[State 1330, Startup]
type = changeanim
trigger1 = animelemtime(2) >= 2 && animelemtime(3) < 0
trigger1 = animelemtime(2) >= 12
value = 1300
elem = 3

[State 1330, Sound]
type = playsnd
trigger1 = animelem = 1 || animelem = 3 || animelem = 8
value = 3, ifelse((animelem = 1), 1, ifelse((animelem = 3), 4, 8))
channel = 0

[State 1330, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 3
;channel = 1
stopongethit = 1

[State 1330, Sound]
type = playsnd
trigger1 = animelem = 8
value = 5, 2
;channel = 1
stopongethit = 1

[State 1330, FX]
type = explod
trigger1 = animelem = 5
anim = 1305
ID = 1305
sprpriority = 3
postype = p1
pos = 108, -110
trans = addalpha
alpha = 256, 256
removetime = 10
bindtime = -1
interpolation.time = 10
interpolation.alpha = 0, 256
removeongethit = 1
removeonchangestate = 1
scale = 0.33, 0.5
angle = 105
ownpal = 1

[State 1330, FX]
type = explod
trigger1 = animelem = 9
anim = 1305
ID = 1305
sprpriority = 3
postype = p1
removeongethit = 1
removeonchangestate = 1
scale = 0.5, 0.5
ownpal = 1

[State 1330, Hit]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := (1 + hitcount))
ID = 1330
attr = S, SA
damage = 60, 15
dizzypoints = 50 * !map(customcombo)
animtype = Hard
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 50), map(sparky) := -66
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.slidetime = 12
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.velocity = -4.49, 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.velocity = -2, -4
air.cornerpush.veloff = 0
getpower = 0, 0
givepower = 40, 40
p1sprpriority = sprpriority
forcestand = 1
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yAccel = (0.5 + (ComboCount * 0.04))

[State 1330, Hit]
type = hitdef
trigger1 = animelem = 9
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := (1 + hitcount))
ID = 1330
attr = S, SA
damage = 60, 15
dizzypoints = 50 * !map(customcombo)
animtype = Back
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 83), map(sparky) := -85
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -6.0, -6.0
air.type = Low
air.velocity = -6.0, -6.0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0, 0
givepower = 40, 40
p1sprpriority = sprpriority
forcestand = 1
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
fall = 1
fall.recover = 1
fall.recovertime = 120
yAccel = (0.5 + (ComboCount * 0.04))
;palfx.time = 60
;palfx.color = 0
;palfx.sinadd = 128, 128, 128, 4
;palfx.mul = map(palfx1_r), map(palfx1_g), map(palfx1_b)

[State 1330, Mine]
type = helper
trigger1 = numhelper(1315) < 2
trigger1 = movehitvar(frame)
trigger1 = movehit = 1
trigger1 = numtarget(1330)
trigger1 = roundstate = 2
helpertype = normal; projectile
stateno = 1315
ID = 1315
name = "Psycho Mine"
postype = p1
pos = 60, -85
size.xscale = 0.25
size.yscale = 0.25
ownpal = 1
ignorehitpause = 1

[State 1330, Idle]
type = statetypeset
trigger1 = animelemtime(10) >= 0
movetype = I
persistent = 0

[State 1330, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==PSYCHO FIELD=
[Statedef 1600]
type = S
physics = S
movetype = A
anim = 1600
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

[State 1600, Strength]
type = mapset
trigger1 = !AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(map(cmd_strength_z), 2, ifelse(map(cmd_strength_y), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1600, Strength AI]
type = mapset
trigger1 = AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(p2bodydist x > 180, 2, ifelse(p2bodydist x > 120, 1, 0))
ignorehitpause = 1

[State 1600, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1600, Field]
type = helper
trigger1 = animelem = 3
helpertype = normal; projectile
stateno = 1605
ID = 1605
name = "Psycho Field"
postype = p1
pos = 47, -71
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1600, Sound]
type = playsnd
trigger1 = animelem = 3
value = 3, 6
channel = 0

[State 1600, Sound]
type = playsnd
trigger1 = animelem = 3
value = 5, 11

[State 1600, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==EX PSYCHO FIELD=
[Statedef 1630]
type = S
physics = S
movetype = A
anim = 1600
ctrl = 0
velset = 0, 0
sprpriority = 2
facep2 = 1
poweradd = -500

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1630, Strength]
type = mapset
trigger1 = !AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(map(cmd_strength_z), 2, ifelse(map(cmd_strength_y), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1630, Strength AI]
type = mapset
trigger1 = AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(p2bodydist x > 180, 2, ifelse(p2bodydist x > 120, 1, 0))
ignorehitpause = 1

[State 1630, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1630, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 1630, EX FX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 1630, EX FX]
type = explod
trigger1 = !time
trigger1 = 1 || map(exflash) := 30
anim = 8210
sprpriority = 3
postype = p1
pos = ceil(47 * const(size.xscale)), ceil(-71 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1630, Field]
type = helper
trigger1 = animelem = 3
helpertype = normal; projectile
stateno = 1635
ID = 1635
name = "Psycho Field"
postype = p1
pos = 47, -71
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1630, Sound]
type = playsnd
trigger1 = animelem = 3
value = 3, 6
channel = 0

[State 1630, Sound]
type = playsnd
trigger1 = animelem = 3
value = 5, 11

[State 1630, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==VEGA WARP=
[Statedef 1700]
type = S
physics = N
movetype = I
anim = 1700
velset = 0, 0
ctrl = 0
sprpriority = -1
facep2 = 1

[State 1700, Strength]
type = mapset
trigger1 = !AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(map(cmd_623kk), 1, ifelse(map(cmd_623pp), 2, ifelse(map(cmd_421kk), -1, -2)))
ignorehitpause = 1
persistent = 0

[State 1700, Strength]
type = mapset
trigger1 = !AIlevel
trigger1 = time <= 0
map = "strength_alt"
value = ifelse(command = "/s", 1, 0)
ignorehitpause = 1

[State 1700, Strength]
type = mapset
trigger1 = AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(p2, ctrl = 0 && p2, vel y < 0 && random < 500, 2, 1)
ignorehitpause = 1

[State 1700, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1700, NHB]
type = nothitby
trigger1 = !map(strength_alt)
trigger1 = animelemtime(7) < 0
trigger2 = animelemtime(7) >= 0 && animelemtime(10) < 0
value = SCA
time = 1

[State 1700, Push]
type = playerpush
trigger1 = animelemtime(7) >= 0
trigger1 = animelemtime(9) < 0
value = 0

[State 1700, fadeout]
type = trans
trigger1 = animelemtime(7) = [0, 9]
trans = addalpha
alpha = (256 - 25 * (animelemtime(7))), (25 * (animelemtime(7)))

[State 1700, fadein]
type = trans
trigger1 = animelemtime(9) = [0, 9]
trans = addalpha
alpha = (25 * (animelemtime(9))), (256 - 25 * (animelemtime(9)))

[State 1700, Delay]
type = changeanim
trigger1 = !AIlevel
trigger1 = animelemtime(6) >= 0 && animelemtime(7) < 0
trigger1 = map(strength_alt) = 1 && command = "/s"
value = 1700
elem = ifelse(time >= 60, 10, 6)

[State 1700, Sound]
type = playsnd
trigger1 = animelem = 7
value = 4, 2
channel = 0

[State 1700, Sound]
type = playsnd
trigger1 = animelem = 7
value = 5, 6

[State 1700, Vel]
type = velset
trigger1 = !map(strength_alt)
trigger1 = animelemtime(8) >= 0 && animelemtime(9) < 0
x = ifelse(map(strength) = 2, 10, ifelse(map(strength) = -2, -10, ifelse(map(strength) = 1, 30, -30)))

[State 1700, Vel]
type = velset
trigger1 = animelem = 9
x = 0

[State 1700, Turn]
type = turn
trigger1 = animelem = 9
trigger1 = p2dist x < 0

[State 1700, Pos]
type = posadd
trigger1 = animelem = 1 || animelem = 2 || animelem = 3
x = ifelse((animelem = 1), -14, ifelse((animelem = 2), -8, -12))

[State 1700, Pos]
type = posadd
trigger1 = animelem = 13 || animelem = 14 || animtime = 0
x = ifelse((animelem = 13), 12, ifelse((animelem = 14), 8, 14))

[State 1700, Warp FX Out]
type = explod
trigger1 = animelem = 7
ID = 1700
postype = p1
pos = 0, 0
vel = -6, 0
sprpriority = sprpriority + 1
anim = anim
animfreeze = 1
animelem = animelemno(0)
trans = addalpha
alpha = 256, 0
scale = const(size.xscale), const(size.yscale)
removetime = 10
interpolation.time = 10
interpolation.alpha = 0, 256

[State 1700, Warp FX Out]
type = explod
trigger1 = animelem = 7
ID = 1700
postype = p1
pos = 0, 0
vel = 6, 0
sprpriority = sprpriority - 1
anim = anim
animfreeze = 1
animelem = animelemno(0)
trans = addalpha
alpha = 256, 0
scale = const(size.xscale), const(size.yscale)
removetime = 10
interpolation.time = 10
interpolation.alpha = 0, 256

[State 1700, Warp FX In]
type = explod
trigger1 = animelem = 9
ID = 1700
postype = p1
pos = -60, 0
vel = 6, 0
sprpriority = sprpriority + 1
anim = anim
animfreeze = 1
animelem = animelemno(0)
trans = addalpha
alpha = 0, 256
scale = const(size.xscale), const(size.yscale)
removetime = 10
interpolation.time = 10
interpolation.alpha = 256, 0

[State 1700, Warp FX In]
type = explod
trigger1 = animelem = 9
ID = 1700
postype = p1
pos = 60, 0
vel = -6, 0
sprpriority = sprpriority - 1
anim = anim
animfreeze = 1
animelem = animelemno(0)
trans = addalpha
alpha = 0, 256
scale = const(size.xscale), const(size.yscale)
removetime = 10
interpolation.time = 10
interpolation.alpha = 256, 0

[State 1700, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==PUNCH ZERO COUNTER=
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
trigger1 = animelemtime(6) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 2900, Sound]
type = playsnd
trigger1 = animelem = 2
value = 3, ifelse(random < 500, 4, 8)
channel = 0

[State 2900, Sound]
type = playsnd
trigger1 = animelem = 4
value = 1, 3
;channel = 1
stopongethit = 1

[State 2900, Hit]
type = hitdef
trigger1 = animelem = 6
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
yAccel = (0.5 + (ComboCount * 0.04))
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
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 70), map(sparky) := -76
envshake.time = 10
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.freq = 180
kill = 0

[State 2900, Anim]
type = changeanim
trigger1 = anim = 2900
trigger1 = hitpausetime
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(6) >= 0 && animelemtime(7) < 0
trigger1 = hitpausetime <= 8
value = 2900
elem = 7
ignorehitpause = 1

[State 2900, Type]
type = statetypeset
trigger1 = animelem = 8
movetype = I

[State 2900, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==KICK ZERO COUNTER=
[Statedef 2910]
type = S
physics = N
movetype = I
anim = 2910
velset = 0, 0
ctrl = 0
sprpriority = 2
facep2 = 1

[State 2910, NHB]
type = nothitby
trigger1 = animelemtime(4) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 2910, fadeout]
type = trans
trigger1 = animelemtime(1) = [0, 10]
trans = addalpha
alpha = (256 - 25 * (animelemtime(1))), (25 * (animelemtime(1)))

[State 2910, fadein]
type = trans
trigger1 = animelemtime(3) = [0, 10]
trans = addalpha
alpha = (25 * (animelemtime(3))), (256 - 25 * (animelemtime(3)))

[State 2910, Sound]
type = playsnd
trigger1 = animelem = 1
value = 4, 2
channel = 0

[State 2910, Sound]
type = playsnd
trigger1 = animelem = 1
value = 5, 6

[State 2910, Vel]
type = velset
trigger1 = animelem = 2
x = 20

[State 2910, Vel]
type = velset
trigger1 = animelem = 3
x = 0

[State 2910, Turn]
type = turn
trigger1 = animelem = 3
trigger1 = p2dist x < 0

[State 2910, Pos Fix]
type = posadd
trigger1 = animelem = 7 || animelem = 8 || animtime = 0
x = ifelse((animelem = 7), 12, ifelse((animelem = 8), 8, 14))

[State 2910, Warp FX Out]
type = explod
trigger1 = animelem = 1
ID = 2910
postype = p1
pos = 0, 0
vel = -6, 0
sprpriority = sprpriority + 1
anim = anim
animfreeze = 1
animelem = animelemno(0)
trans = addalpha
alpha = 256, 0
scale = const(size.xscale), const(size.yscale)
removetime = 10
interpolation.time = 10
interpolation.alpha = 0, 256

[State 2910, Warp FX Out]
type = explod
trigger1 = animelem = 1
ID = 2910
postype = p1
pos = 0, 0
vel = 6, 0
sprpriority = sprpriority - 1
anim = anim
animfreeze = 1
animelem = animelemno(0)
trans = addalpha
alpha = 256, 0
scale = const(size.xscale), const(size.yscale)
removetime = 10
interpolation.time = 10
interpolation.alpha = 0, 256

[State 2910, Warp FX In]
type = explod
trigger1 = animelem = 3
ID = 2910
postype = p1
pos = -60, 0
vel = 6, 0
sprpriority = sprpriority + 1
anim = anim
animfreeze = 1
animelem = animelemno(0)
trans = addalpha
alpha = 0, 256
scale = const(size.xscale), const(size.yscale)
removetime = 10
interpolation.time = 10
interpolation.alpha = 256, 0

[State 2910, Warp FX In]
type = explod
trigger1 = animelem = 3
ID = 2910
postype = p1
pos = 60, 0
vel = -6, 0
sprpriority = sprpriority - 1
anim = anim
animfreeze = 1
animelem = animelemno(0)
trans = addalpha
alpha = 0, 256
scale = const(size.xscale), const(size.yscale)
removetime = 10
interpolation.time = 10
interpolation.alpha = 256, 0

[State 2910, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
