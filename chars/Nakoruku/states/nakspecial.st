; ___________________________________
;| Nakoruru by Phantom.of.the.Server |
; 
;==
;==SPECIAL MOVES=
;==

;==ANNU MUTSUBE=
[Statedef 1000]
type = S
physics = N
movetype = A
anim = 1000
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
value = ifelse(p2bodydist x >= 170, 2, ifelse(p2bodydist x >= 115, 1, 0))
ignorehitpause = 1

[State 1000, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1000, Anim]
type = changeanim
trigger1 = !time
value = ifelse(map(strength) = 2, 1002, ifelse(map(strength) = 1, 1001, 1000))

[State 1000, Vel]
type = velset
trigger1 = animelem = 3
x = ifelse(map(strength) = 2, 9.696, ifelse(map(strength) = 1, 8.895, 7.667))

[State 1000, Vel]
type = velset
trigger1 = animelem = 4
x = 0

[State 1000, Sound]
type = playsnd
trigger1 = animelem = 2
value = 5, 0
channel = 0

[State 1000, Sound]
type = playsnd
trigger1 = animelem = 3
value = 7, 1

[State 1000, FX]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 1005
ID = 1005
name = "Mutsube FX"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1000, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, SA
hitflag = MAF
guardflag = L
priority = 4, Hit
damage = ifelse(map(strength) = 2, 90, ifelse(map(strength) = 1, 85, 80)), ifelse(map(strength) = 2, 22, ifelse(map(strength) = 1, 21, 20))
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
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = -4.31, -7.27
guard.velocity = -10.52
air.velocity = -4.31, -7.27
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8023)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 64), map(sparky) := -8
hitsound = s2, 8
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667

[State 1000, Sound]
type = playsnd
trigger1 = animelem = 4
value = 0, 101

[State 1000, Dust]
type = explod
trigger1 = animelem = 4
anim = 8103
sprpriority = 3
postype = p1
vel = 1, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1000, Sound]
type = playsnd
trigger1 = animelem = 5
value = 7, 0
;channel = 1
stopongethit = 1

[State 1000, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 12
ctrl = 1


;==EX ANNU MUTSUBE=
[Statedef 1020]
type = S
physics = N
movetype = A
anim = 1020
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

[State 1020, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1020, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 1020, EX FX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 1020, EX FX]
type = explod
trigger1 = !time
trigger1 = 1 || map(exflash) := 30
anim = 8210
sprpriority = 3
postype = p1
pos = -15, -26
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1020, Vel]
type = velset
trigger1 = animelem = 3
x = 11.737

[State 1020, Anim]
type = changeanim
trigger1 = anim = 1020
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
value = 1020
elem = 4

[State 1020, Vel]
type = velset
trigger1 = animelem = 4
x = 0

[State 1020, Sound]
type = playsnd
trigger1 = animelem = 2
value = 5, 0
channel = 0

[State 1020, Sound]
type = playsnd
trigger1 = animelem = 3
value = 7, 1

[State 1020, FX]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 1005
ID = 1005
name = "Mutsube FX"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1020, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 2)
attr = S, SA
hitflag = MAF
guardflag = L
priority = 4, Hit
damage = 100, 25
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
ground.slidetime = 12
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = -2.75, -9
guard.velocity = -4.49
air.velocity = -2.75, -9
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8023)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 64), map(sparky) := -8
hitsound = s2, 8
guardsound = s3, 0
guardsound.channel = 2
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667

[State 1020, Sound]
type = playsnd
trigger1 = animelem = 4
value = 0, 101

[State 1020, Dust]
type = explod
trigger1 = animelem = 4
anim = 8103
sprpriority = 3
postype = p1
vel = 1, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1020, Sound]
type = playsnd
trigger1 = animelem = 5
value = 7, 0
;channel = 1
stopongethit = 1

[State 1020, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State 1020, End]
type = changestate
trigger1 = !animtime
value = 12
ctrl = 1


;==FAKE ANNU MUTSUBE=
[Statedef 1090]
type = S
physics = N
movetype = I
anim = 1090
velset = 0, 0
ctrl = 0
sprpriority = 2

[State 1090, Pos]
type = posadd
trigger1 = animelem = 2 || animelem = 4
x = 16

[State 1090, Pos]
type = velset
trigger1 = animelem = 2
x = 2

[State 1090, Pos]
type = velset
trigger1 = animelem = 4
x = 0

[State 1090, Sound]
type = playsnd
trigger1 = animelem = 2
value = 4, 2
channel = 0

[State 1090, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;==LELA MUTSUBE=
[Statedef 1100]
type = S
physics = N
movetype = A
anim = 1100
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
value = ifelse(p2movetype = H, 2, 0)
ignorehitpause = 1

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

[State 1100, Dust]
type = helper
trigger1 = animelemtime(3) = 1
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 1100, Type]
type = statetypeset
trigger1 = animelem = 3
statetype = A
physics = N

[State 1100, Accel]
type = veladd
trigger1 = animelemtime(4) >= 1
y = 0.71

[State 1100, Vel]
type = velset
trigger1 = animelemtime(3) = 1
x = ifelse(anim = 1102, 10.23, ifelse(anim = 1101, 8.62, 7))
y = -7

[State 1100, Grounded Frame]
type = posfreeze
trigger1 = animelem = 3
value = 1

[State 1100, Accel]
type = veladd
trigger1 = animelemtime(4) >= 0
x = -0.25

[State 1100, Vel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1100, Sound]
type = playsnd
trigger1 = animelem = 2
value = 5, 1
channel = 0

[State 1100, Sound]
type = playsnd
trigger1 = animelem = 3
value = 7, 1

[State 1100, FX]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 1005
ID = 1005
name = "Mutsube FX"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1100, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = A, SA
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = ifelse(map(strength) = 2, 100, ifelse(map(strength) = 1, 90, 80)), ifelse(map(strength) = 2, 25, ifelse(map(strength) = 1, 23, 20))
dizzypoints = 100 * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = High
air.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = -4.31, -7.27
guard.velocity = -10.52
air.velocity = -4.31, -7.27
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8023)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 70), map(sparky) := -60
hitsound = s2, 8
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667

[State 1100, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State 1100, End]
type = changestate
trigger1 = vel y > 0
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1103


;----- Land -----
[Statedef 1103]
type = S
physics = N
movetype = I
anim = 1103
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1

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
anim = 8104
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1103, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;==EX LELA MUTSUBE=
[Statedef 1120]
type = S
physics = N
movetype = A
anim = 1120
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

[State 1120, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1120, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 1120, EX FX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 1120, EX FX]
type = explod
trigger1 = !time
trigger1 = 1 || map(exflash) := 30
anim = 8210
sprpriority = 3
postype = p1
pos = -20, -27
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1120, NHB]
type = nothitby
trigger1 = animelemtime(3) < 1
value = A
time = 1

[State 1120, Dust]
type = helper
trigger1 = animelemtime(3) = 1
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 1120, Type]
type = statetypeset
trigger1 = animelem = 3
statetype = A
physics = N

[State 1120, Accel]
type = veladd
trigger1 = animelemtime(4) >= 1
y = 0.71

[State 1120, Vel]
type = velset
trigger1 = animelemtime(3) = 1
x = 10.23
y = -7

[State 1120, Grounded Frame]
type = posfreeze
trigger1 = animelem = 3
value = 1

[State 1120, Accel]
type = veladd
trigger1 = animelemtime(4) >= 0
x = -0.25

[State 1120, Vel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1120, Sound]
type = playsnd
trigger1 = animelem = 2
value = 5, 1
channel = 0

[State 1120, Sound]
type = playsnd
trigger1 = animelem = 3
value = 7, 1

[State 1120, FX]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 1005
ID = 1005
name = "Mutsube FX"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1120, Hit]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 2)
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 40, 10
dizzypoints = 50 * !map(customcombo)
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
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = -4.31, -7.27
guard.velocity = -10.52
air.velocity = -4.31, -7.27
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8023)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 40), map(sparky) := -24
hitsound = s2, 8
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667

[State 1120, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 3)
attr = A, SA
hitflag = MAF
guardflag = MA
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
ground.type = High
air.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = -4.31, -7.27
guard.velocity = -10.52
air.velocity = -4.31, -7.27
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8023)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 70), map(sparky) := -60
hitsound = s2, 8
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667

[State 1120, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State 1120, End]
type = changestate
trigger1 = vel y > 0
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1103


;==KAMUI RIMSE=
[Statedef 1200]
type = S
physics = N
movetype = A
anim = 1200
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

[State 1200, Strength]
type = mapset
trigger1 = !AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(map(cmd_strength_z), 2, ifelse(map(cmd_strength_y), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1200, Strength AI]
type = mapset
trigger1 = AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(map(ai_combowindow) > 12, 2, ifelse(map(ai_combowindow) > 10, 1, 0))
ignorehitpause = 1

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

[State 1200, Sound]
type = playsnd
trigger1 = animelem = 3
value = 5, 8
channel = 0

[State 1200, Sound]
type = playsnd
trigger1 = animelem = 4
value = 7, 2
;channel = 1
stopongethit = 1

[State 1200, Correct Projectile Trade]
type = hitby
trigger1 = animelem = 5
trigger2 = numhelper(1250)
trigger2 = helper(1250), stateno = 1250
value2 = SCA, AA, AT
time = 1

[State 1200, Reflector]
type = helper
trigger1 = animelem = 5
helpertype = normal
stateno = 1250
ID = 1250
name = "Reflector"
postype = p1
ownpal = 1

[State 1200, Sparkles]
type = explod
trigger1 = animelemtime(5) >= 0 && animelemtime(7) < 0
anim = 8160
sprpriority = 3
postype = p1
pos = 59, -66
random = 50, 100
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
scale = 0.5, 0.5
ownpal = 1

[State 1200, Hit]
type = hitdef
trigger1 = animelem = 5
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ifelse(map(strength) = 2, 80, ifelse(map(strength) = 1, 70, 60)), ifelse(map(strength) = 2, 20, ifelse(map(strength) = 1, 18, 15))
dizzypoints = 150 * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
pausetime = 6, 6
guard.pausetime = 6, 6
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = -10.52, 0
guard.velocity = -10.52
air.velocity = -4, -6.2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p1sprpriority = sprpriority
forcestand = 1
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 80), map(sparky) := -48
hitsound = s2, 2
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667

[State 1200, Follow-up]
type = varset
triggerall = !AIlevel
triggerall = movecontact
triggerall = animelemtime(5) >= 0 && animelemtime(7) < 0
trigger1 = map(strength) = 0 && command = "x"
trigger2 = map(strength) = 1 && command = "y"
trigger3 = map(strength) = 2 && command = "z"
var(45) = 1
ignorehitpause = 1

[State 1200, Follow-up]
type = varset
trigger1 = AIlevel
trigger1 = movecontact
trigger1 = animelemtime(5) >= 0 && animelemtime(7) < 0
var(45) = 1
ignorehitpause = 1

[State 1200, Follow-up]
type = varset
trigger1 = time <= 1
var(45) = 0

[State 1200, Follow-up]
type = changestate
trigger1 = var(45)
trigger1 = animelem = 8
value = 1210

[State 1200, Pos]
type = posadd
trigger1 = animelem = 8
x = 28

[State 1200, Pos]
type = posadd
trigger1 = animelem = 9 || animelem = 10
x = 14

[State 1200, Idle]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
persistent = 0

[State 1200, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- Follow -up -----
[Statedef 1210]
type = S
physics = N
movetype = A
anim = 1210
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1210, Accel]
type = veladd
trigger1 = animelemtime(4) >= 0
x = -0.3

[State 1210, Vel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1210, Vel]
type = velset
trigger1 = animelem = 4
x = 6

[State 1210, Sound]
type = playsnd
trigger1 = animelem = 4
value = 4, 4
channel = 0

[State 1210, Sound]
type = playsnd
trigger1 = animelem = 5
value = 7, 2
;channel = 1
stopongethit = 1
freqmul = 1.1

[State 1210, Sparkles]
type = explod
trigger1 = animelemtime(5) >= 0 && animelemtime(7) < 0
anim = 8160
sprpriority = 3
postype = p1
pos = 59, -66
random = 50, 100
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
scale = 0.5, 0.5
ownpal = 1

[State 1210, Hit]
type = hitdef
trigger1 = animelem = 6
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 2)
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 40, 10
dizzypoints = 50 * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
ground.type = High
air.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = -4, -6.2
guard.velocity = -10.52
air.velocity = -4, -6.2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 94), map(sparky) := -64
hitsound = s2, 2
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667

[State 1210, Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I
persistent = 0

[State 1210, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==EX KAMUI RIMSE=
[Statedef 1220]
type = S
physics = N
movetype = A
anim = 1220
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

[State 1220, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1220, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 1220, EX FX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 1220, EX FX]
type = explod
trigger1 = !time
trigger1 = 1 || map(exflash) := 30
anim = 8210
sprpriority = 3
postype = p1
pos = -18, -73
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1220, Accel]
type = veladd
trigger1 = vel x > 0
x = -0.0315

[State 1220, Vel]
type = velset
trigger1 = vel x < 0
x = 0

[State 1220, Vel]
type = velset
trigger1 = animelem = 4 || animelem = 12 || animelem = 18
x = 1.4

[State 1220, Sound]
type = playsnd
trigger1 = animelem = 3
value = 5, 8
channel = 0

[State 1220, Sound]
type = playsnd
trigger1 = animelem = 4 || animelem = 11 || animelem = 18
value = 7, 2
;channel = 1
stopongethit = 1

[State 1220, Correct Projectile Trade]
type = hitby
trigger1 = animelem = 5 || animelem = 12 || animelem = 19
trigger2 = numhelper(1250)
trigger2 = helper(1250), stateno = 1250
value2 = SCA, AA, AT
time = 1

[State 1220, Reflector]
type = helper
trigger1 = animelem = 5 || animelem = 12 || animelem = 19
helpertype = normal
stateno = 1250
ID = 1250
name = "Reflector"
postype = p1
ownpal = 1

[State 1220, Sparkles]
type = explod
trigger1 = animelemtime(5) >= 0 && animelemtime(7) < 0
trigger2 = animelemtime(12) >= 0 && animelemtime(14) < 0
trigger3 = animelemtime(19) >= 0 && animelemtime(21) < 0
anim = 8160
sprpriority = 3
postype = p1
pos = 59, -66
random = 50, 100
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
scale = 0.5, 0.5
ownpal = 1

[State 1220, Hit]
type = hitdef
trigger1 = animelem = 5 || animelem = 12
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 40, 10
dizzypoints = 67 * !map(customcombo)
getpower = 0, 0
givepower = 40, 40
pausetime = 6, 6
guard.pausetime = 6, 6
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 1 + 24
guard.hittime = (1 + 24) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = -4.49, 0
guard.velocity = -4.49
air.velocity = -5, -6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p1sprpriority = sprpriority
forcestand = 1
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 82), map(sparky) := -48
hitsound = s2, 2
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667

[State 1220, Hit]
type = hitdef
trigger1 = animelem = 19
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 40, 10
dizzypoints = 67 * !map(customcombo)
getpower = 0, 0
givepower = 40, 40
pausetime = 6, 6
guard.pausetime = 6, 6
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
ground.type = Low
air.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = -5, -6.2
guard.velocity = -10.52
air.velocity = -5, -6.2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
p1sprpriority = sprpriority
forcestand = 1
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 82), map(sparky) := -48
hitsound = s2, 2
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667

[State 1220, Pos]
type = posadd
trigger1 = animelem = 22
x = 28

[State 1220, Pos]
type = posadd
trigger1 = animelem = 23 || animelem = 24
x = 14

[State 1220, Idle]
type = statetypeset
trigger1 = animelemtime(21) >= 0
movetype = I
persistent = 0

[State 1220, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==AMUBE YATORO=
[Statedef 1300]
type = S
physics = S
movetype = A
anim = 1300
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 50 * map(meterscaling)
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
value = ifelse(map(cmd_strength_z), 2, ifelse(map(cmd_strength_y), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1300, Strength AI]
type = mapset
trigger1 = AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(p2bodydist x >= 180, 2, ifelse(p2bodydist x >= 130, 1, 0))
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

[State 1300, Sound]
type = playsnd
trigger1 = animelem = 4
value = 5, 3
channel = 0

[State 1300, Sound]
type = playsnd
trigger1 = animelem = 6
value = 1, 0
;channel = 1
stopongethit = 1

[State 1300, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


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


;==EX AMUBE YATORO=
[Statedef 1350]
type = S
physics = S
movetype = A
anim = 1350
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

[State 1350, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1350, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 1350, EX FX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 1350, EX FX]
type = explod
trigger1 = !time
trigger1 = 1 || map(exflash) := 30
anim = 8210
sprpriority = 3
postype = p1
pos = 20, -63
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1350, Sound]
type = playsnd
trigger1 = animelem = 5
value = 5, 3
channel = 0

[State 1350, Sound]
type = playsnd
trigger1 = animelem = 6
value = 1, 0
;channel = 1
stopongethit = 1

[State 1350, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==MAMAHAHA NI TSUKAMARU=
[Statedef 1500]
type = A
physics = N
movetype = I
anim = 1500
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0
facep2 = 1

[State 1500, Sound]
type = playsnd
trigger1 = !time
value = 0, 40

[State 1500, Dust]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 1500, Accel]
type = veladd
trigger1 = 1
y = 0.5

[State 1500, Vel]
type = velset
trigger1 = !time
y = -8

[State 1500, OK]
type = changestate
trigger1 = time >= 10
trigger1 = pos y <= -52
trigger1 = numhelper(10000)
trigger1 = helper(10000), stateno = 10100
trigger1 = pos y <= (helper(10000), pos y + 94)
value = 1509

[State 1500, End]
type = changestate
trigger1 = vel y > 0
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1591


;----- Caught -----
[Statedef 1509]
type = A
physics = N
movetype = I
anim = 1509
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1509, timer]
type = varset
trigger1 = 1
var(46) = 300

[State 1509, Sound]
type = playsnd
trigger1 = !time
value = 2, 800

[State 1509, End]
type = changestate
trigger1 = time >= 3
value = 1510


;----- Being Carried -----
[Statedef 1510]
type = A
physics = N
movetype = I
anim = 1510
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1510, timer]
type = varadd
trigger1 = 1
var(46) = -1

[State 1510, fall]
type = changestate
trigger1 = var(46) <= 0
trigger2 = roundstate != 2
value = 1590

[State 1510, Pos]
type = posset
trigger1 = pos y > -1
y = -1

[State 1510, Pos]
type = posset
trigger1 = pos y < -128
y = -128

[State 1510, Vel]
type = velset
trigger1 = 1
x = 0
y = sin(gametime / 16.0 * pi) * 0.5

[State 1510, Vel]
type = velset
trigger1 = command = "holdfwd"
trigger1 = command != "holdback"
x = 2

[State 1510, Vel]
type = velset
trigger1 = command = "holdback"
trigger1 = command != "holdfwd"
x = -2

[State 1510, Vel]
type = velset
trigger1 = pos y > -125
trigger1 = command = "holdup"
trigger1 = command != "holddown"
y = -2 + sin(gametime / 16.0 * pi) * 0.5

[State 1510, Vel]
type = velset
trigger1 = pos y < -3
trigger1 = command = "holddown"
trigger1 = command != "holdup"
y = 2 + sin(gametime / 16.0 * pi) * 0.5

[State 1510, Turn]
type = turn
trigger1 = p2dist x < 0


;----- Let Go -----
[Statedef 1590]
type = A
physics = N
movetype = I
anim = 1590
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0

[State 1590, Accel]
type = veladd
trigger1 = 1
y = 0.72

[State 1590, End]
type = changestate
trigger1 = vel y > 0
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1591


;----- Land -----
[Statedef 1591]
type = S
physics = N
movetype = I
anim = 1591
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1

[State 1591, Pos]
type = posset
trigger1 = 1
y = 0

[State 1591, Sound]
type = playsnd
trigger1 = !time
value = 0, 52

[State 1591, Dust]
type = explod
trigger1 = !time
anim = 8104
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1591, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;==SHICHIKAPU AI=
[Statedef 1530]
type = A
physics = N
movetype = A
anim = 1530
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 50 * map(meterscaling)
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1530, Strength]
type = mapset
trigger1 = !AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(map(cmd_strength_z), 2, ifelse(map(cmd_strength_y), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1530, Strength AI]
type = mapset
trigger1 = AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(p2bodydist x >= 180, 2, ifelse(p2bodydist x >= 125, 1, 0))
ignorehitpause = 1

[State 1530, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1530, Pos]
type = posadd
trigger1 = animelem = 2
y = -16

[State 1590, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0
y = 0.72

[State 1530, Sound]
type = playsnd
trigger1 = animelem = 2
value = 4, 4
channel = 0

[State 1530, End]
type = changestate
trigger1 = vel y > 0
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1591


;==KAMUI MUTSUBE=
[Statedef 1550]
type = A
physics = N
movetype = A
anim = 1550
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 100 * map(meterscaling)
facep2 = 1
juggle = ifelse(p2statetype = L && !map(customcombo), 8, 0)

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1550, Strength]
type = mapset
trigger1 = !AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(map(cmd_strength_z), 2, ifelse(map(cmd_strength_y), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1550, Strength AI]
type = mapset
trigger1 = AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(p2bodydist x >= 110, 2, ifelse(p2bodydist x >= 80, 1, 0))
ignorehitpause = 1

[State 1550, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1550, Pos]
type = posadd
trigger1 = animelem = 2
y = -16

[State 1550, Vel]
type = velset
trigger1 = animelem = 2
x = ifelse(map(strength) = 2, 12.635, ifelse(map(strength) = 1, 10.64, 8.645))
y = ifelse(map(strength) = 2, 5.985, ifelse(map(strength) = 1, 6.3175, 6.65))

[State 1550, Sound]
type = playsnd
trigger1 = animelem = 2
value = 5, 2
channel = 0

[State 1550, Sound]
type = playsnd
trigger1 = animelem = 2
value = 7, 1

[State 1550, FX]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 1005
ID = 1005
name = "Mutsube FX"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1550, Hit]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
ID = 1550
attr = A, SA
hitflag = MAFD
guardflag = HA
priority = 4, Hit
damage = ifelse(map(strength) = 2, 90, ifelse(map(strength) = 2, 85, 80)), ifelse(map(strength) = 2, 22, ifelse(map(strength) = 2, 21, 20))
dizzypoints = 200 * !map(customcombo)
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
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
down.hittime = 18
ground.velocity = -4.31, -7.27
guard.velocity = -10.52
air.velocity = -4.31, -7.27
down.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8023)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 38), map(sparky) := -10
hitsound = s2, 8
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667

[State 1550, End]
type = changestate
trigger1 = vel y > 0
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1553


;----- Land -----
[Statedef 1553]
type = S
physics = N
movetype = I
anim = 1553
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1

[State 1553, Pos]
type = posset
trigger1 = 1
y = 0

[State 1553, Sound]
type = playsnd
trigger1 = !time
value = 0, 52

[State 1553, Dust]
type = explod
trigger1 = !time
anim = 8104
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1553, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;==EX KAMUI MUTSUBE=
[Statedef 1560]
type = A
physics = N
movetype = A
anim = 1550
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -500
facep2 = 1
juggle = ifelse(p2statetype = L && !map(customcombo), 8, 0)

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1560, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1560, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 1560, EX FX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 1560, EX FX]
type = explod
trigger1 = !time
trigger1 = 1 || map(exflash) := 30
anim = 8210
sprpriority = 3
postype = p1
pos = -17, -72
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1560, Pos]
type = posadd
trigger1 = animelem = 2
y = -16

[State 1560, Vel]
type = velset
trigger1 = animelem = 2
x = 10.64
y = 6.3175

[State 1560, Sound]
type = playsnd
trigger1 = animelem = 2
value = 5, 2
channel = 0

[State 1560, Sound]
type = playsnd
trigger1 = animelem = 2
value = 7, 1

[State 1560, FX]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 1005
ID = 1005
name = "Mutsube FX"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1560, Hit]
type = hitdef
trigger1 = !((movecontact + movereversed) % 3)
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
ID = 1560
attr = A, SA
hitflag = MAFD
guardflag = HA
priority = 4, Hit
damage = ifelse(movecontact, 10, 70), ifelse(movecontact, 3, 18)
dizzypoints = 25 * !map(customcombo)
getpower = 0, 0
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = High
air.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
down.hittime = 18
ground.velocity = -4.49, 0
guard.velocity = -4.49
air.velocity = -4.31, -7.27
down.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8023)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 38), map(sparky) := -10
hitsound = s2, 8
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667

[State 1560, End]
type = changestate
trigger1 = vel y > 0
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1563


;----- Land -----
[Statedef 1563]
type = S
physics = N
movetype = I
anim = 1563
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1

[State 1563, Pos]
type = posset
trigger1 = 1
y = 0

[State 1563, Sound]
type = playsnd
trigger1 = !time
value = 0, 52

[State 1563, Dust]
type = explod
trigger1 = !time
anim = 8104
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1563, End]
type = changestate
trigger1 = !animtime
value = 11
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

[State 2900, Accel]
type = veladd
trigger1 = vel x > 0
x = -0.25

[State 2900, Vel]
type = velset
trigger1 = movehit = 1
x = 7.5

[State 2900, Vel]
type = velset
trigger1 = vel x < 0
x = 0

[State 2900, Sound]
type = playsnd
trigger1 = animelem = 3
value = 4, 0
channel = 0

[State 2900, Sound]
type = playsnd
trigger1 = animelem = 6
value = 1, 8
;channel = 1
stopongethit = 1

[State 2900, FX]
type = helper
trigger1 = !numhelper(6000)
helpertype = normal
stateno = 6000
ID = 6000
name = "Blade"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 2900, Sound]
type = playsnd
trigger1 = animelem = 4
value = 0, 102

[State 2900, Dust]
type = explod
trigger1 = animelem = 4
anim = 8102
sprpriority = 3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 2900, Hit]
type = hitdef
trigger1 = animelem = 6
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
ID = 2900
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 50, 13
dizzypoints = 0
getpower = 0, 0
givepower = 40, 40
pausetime = 0, 0
guard.pausetime = 12, 12
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
ground.velocity = -5.54, -5.25
guard.velocity = -10.52
air.velocity = -5.54, -5.25
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8023)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 88), map(sparky) := -46
hitsound = s2, 8
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
kill = 0

[State 2900, P2 State]
type = targetstate
trigger1 = movehit = 1 && numtarget(2900)
ID = 2900
value = 2905
ignorehitpause = 1

[State 2900, End]
type = changeanim
trigger1 = anim = 2900
trigger1 = movehit && numtarget(2900)
trigger1 = animelemtime(8) >= 0 && animelemtime(9) < 0
trigger1 = target(2900), stateno = 2905
trigger1 = time < 90
value = 2900
elem = 8

[State 2900, Sound]
type = playsnd
trigger1 = animelem = 13
value = 7, 0
;channel = 1
stopongethit = 1

[State 2900, Idle]
type = statetypeset
trigger1 = animelemtime(9) >= 0
movetype = I
persistent = 0

[State 2900, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- TARGET -----
[Statedef 2905]
type = S
physics = S
movetype = H
ctrl = 0
velset = 0, 0

[State 2905, Pos]
type = posset
trigger1 = 1
y = 0

[State 2905, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 2905, Anim]
type = changeanim2
trigger1 = !time
trigger1 = !selfanimexist(5950)
value = 2905

[State 2905, Anim]
type = changeanim
trigger1 = !time
trigger1 = selfanimexist(5950)
value = 5950

[State 2905, Anim]
type = changeanim
trigger1 = time >= 90
trigger2 = !animtime
trigger2 = anim = 2905 || anim = 5950
value = ifelse(selfanimexist(5111), 5111, 5110)

[State 2905, End]
type = selfstate
trigger1 = anim = 5110 || anim = 5111
value = 5110


;==KICK ZERO COUNTER=
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
trigger1 = animelemtime(4) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 2910, Sound]
type = playsnd
trigger1 = animelem = 3
value = 4, 4
channel = 0

[State 2910, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 5
;channel = 1
stopongethit = 1

[State 2910, Hit]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
ID = 2910
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
ground.velocity = -5.54, -5.25
guard.velocity = -10.52
air.velocity = -5.54, -5.25
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 86), map(sparky) := -28
hitsound = s2, 5
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
kill = 0

[State 2910, Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[State 2910, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1
