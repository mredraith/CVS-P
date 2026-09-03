; _______________________________
;| Vega by Phantom.of.the.Server |
; 
;==
;=NORMAL STATES==
;==

;=Standing Far Light Punch==
[Statedef 200]
type = S
movetype = A
physics = S
anim = 200
velset = 0, 0
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

[State Erase Inputs]
type = mapset
map = "cmd_erase_completed"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 200, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 200
value = 3, ifelse(random < 500, 0, 3)
channel = 0

[State 200, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 1
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 200, Sound]
type = playsnd
trigger1 = !time
value = 5, 0
channel = 3
stopongethit = 1

[State 200, FX]
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

[State 200, Hit]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, NA
damage = 25, 0
dizzypoints = 50 * !map(customcombo)
animtype = Light
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 8, 8
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 24) * (map(sparkx.max) := 85), map(sparky) := -80
hitsound = s2, 1
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 12
guard.hittime = (1 + 12) - 6
ground.slidetime = 12
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 10
guard.slidetime = 10
air.type = Low
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 50) * map(meterscaling), 25 * map(meterscaling)
givepower = 40, 40
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 200, Anim]
type = changeanim
trigger1 = anim = 200
trigger1 = hitpausetime = [1, 6]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(2) >= 0 && animelemtime(3) <= 0
value = 200
elem = 3
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State 200, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=Standing Close Light Punch==
[Statedef 201]
type = S
movetype = A
physics = S
anim = 201
velset = 0, 0
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

[State Erase Inputs]
type = mapset
map = "cmd_erase_completed"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 201, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 201
value = 3, ifelse(random < 500, 0, 3)
channel = 0

[State 201, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 1
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 201, Sound]
type = playsnd
trigger1 = !time
value = 5, 0
channel = 3
stopongethit = 1

[State 201, FX]
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

[State 201, Hit]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, NA
damage = 25, 0
dizzypoints = 50 * !map(customcombo)
animtype = Light
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 8, 8
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 24) * (map(sparkx.max) := 85), map(sparky) := -80
hitsound = s2, 1
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 12
guard.hittime = (1 + 12) - 6
ground.slidetime = 12
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 10
guard.slidetime = 10
air.type = Low
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 50) * map(meterscaling), 25 * map(meterscaling)
givepower = 40, 40
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 201, Anim]
type = changeanim
trigger1 = anim = 201
trigger1 = hitpausetime = [1, 6]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(2) >= 0 && animelemtime(3) <= 0
value = 201
elem = 3
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I
persistent = 0

[State 201, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=Standing Far Medium Punch==
[Statedef 210]
type = S
movetype = A
physics = S
anim = 210
velset = 0, 0
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

[State Erase Inputs]
type = mapset
map = "cmd_erase_completed"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 210, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 3, ifelse(random < 500, 2, 4)
channel = 0

[State 210, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 210, Sound]
type = playsnd
trigger1 = !time
value = 5, 1
channel = 3
stopongethit = 1

[State 210, FX]
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

[State 210, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, NA
damage = 70, 0
dizzypoints = 100 * !map(customcombo)
animtype = Medium
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 83), map(sparky) := -81
hitsound = s2, 2
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 15
guard.hittime = (1 + 15) - 6
ground.slidetime = 15
ground.velocity = ifelse(map(customcombo), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.type = Low
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 210, Anim]
type = changeanim
trigger1 = anim = 210
trigger1 = hitpausetime = [1, 6]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
value = 210
elem = 4
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State 210, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=Standing Close Medium Punch==
[Statedef 211]
type = S
movetype = A
physics = S
anim = 211
velset = 0, 0
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

[State Erase Inputs]
type = mapset
map = "cmd_erase_completed"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 211, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 3, ifelse(random < 500, 2, 4)
channel = 0

[State 211, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 211, Sound]
type = playsnd
trigger1 = !time
value = 5, 1
channel = 3
stopongethit = 1

[State 211, FX]
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

[State 211, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, NA
damage = 90, 0
dizzypoints = 100 * !map(customcombo)
animtype = Medium
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 80), map(sparky) := -64
hitsound = s2, 2
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 15
guard.hittime = (1 + 15) - 6
ground.slidetime = 15
ground.velocity = ifelse(map(customcombo), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.type = Low
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 211, Anim]
type = changeanim
trigger1 = anim = 211
trigger1 = hitpausetime = [1, 6]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
value = 211
elem = 4
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State 211, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=Standing Far Hard Punch==
[Statedef 220]
type = S
movetype = A
physics = S
anim = 220
velset = 0, 0
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

[State Erase Inputs]
type = mapset
map = "cmd_erase_completed"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 220, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 3, ifelse(random < 500, 4, 8)
channel = 0

[State 220, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 3
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 220, Sound]
type = playsnd
trigger1 = !time
value = 5, 2
channel = 3
stopongethit = 1

[State 220, FX]
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

[State 220, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, NA
damage = 120, 0
dizzypoints = 200 * !map(customcombo)
animtype = Hard
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 70), map(sparky) := -105
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = ifelse(map(customcombo), -5.77, -10.52), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 220, Anim]
type = changeanim
trigger1 = anim = 220
trigger1 = hitpausetime = [1, 8]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
value = 220
elem = 4
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State 220, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=Standing Close Hard Punch==
[Statedef 221]
type = S
movetype = A
physics = S
anim = 221
velset = 0, 0
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

[State Erase Inputs]
type = mapset
map = "cmd_erase_completed"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 221, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 3, ifelse(random < 500, 4, 8)
channel = 0

[State 221, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 3
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 221, Sound]
type = playsnd
trigger1 = !time
value = 5, 2
channel = 3
stopongethit = 1

[State 221, FX]
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

[State 221, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, NA
damage = 100, 0
dizzypoints = 200 * !map(customcombo)
animtype = Hard
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 40) * (map(sparkx.max) := 80), map(sparky) := -70
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = ifelse(map(customcombo), -5.77, -10.52), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)
forcestand = 1

[State 221, Anim]
type = changeanim
trigger1 = anim = 221
trigger1 = hitpausetime = [1, 9]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
value = 221
elem = 4
ignorehitpause = 1

[State 221, Anim]
type = changeanim
trigger1 = anim = 221
trigger1 = hitpausetime = [1, 6]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(4) >= 0 && animelemtime(5) <= 0
value = 221
elem = 5
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State 221, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==Psycho Banish=
[Statedef 225]
type = S
physics = S
movetype = A
ctrl = 0
anim = 225
velset = 0, 0
poweradd = 0
facep2 = 1
sprpriority = 0

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State Erase Inputs]
type = mapset
map = "cmd_erase_completed"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 225, Sound]
type = playsnd
trigger1 = animelem = 4
value = 3, ifelse(random < 500, 4, 8)
channel = 0

[State 225, Sound]
type = playsnd
trigger1 = animelem = 4
value = 5, 3
;channel = 1
stopongethit = 1

[State 225, FX]
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

[State 225, shield]
type = helper
trigger1 = animelem= 7
trigger1 = !numhelper(227)
helpertype = normal
stateno = 227
ID = 227
name = "Projectile Banisher"
postype = p1

[State 225, HB]
type = hitby
trigger1 = numhelper(227)
value = SCA, AA, AT, HP
time = 1
ignorehitpause = 1

[State 225, Hit]
type = hitdef
trigger1 = animelem = 7 || animelem = 8 || animelem = 9
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
ID = 225
attr = S, NA
damage = 30, 0
dizzypoints = 67 * !map(customcombo)
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
hitflag = MAF
guardflag = H
priority = 4, Hit
pausetime = 0, 8
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 40) * (map(sparkx.max) := ifelse((animelem = 9), 40, ifelse((animelem = 8), 60, 80))), map(sparky) := ifelse((animelem = 9), -30, ifelse((animelem = 8), -55, -80))
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = ifelse(map(customcombo), -5.77, -10.52), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.fall = 1
air.type = Low
air.hittime = 120
air.velocity = -3.00, -2.50
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

; These were added when the move was made plus. As an overhead they no longer make sense
;[State 225, Pos]
;type = posadd
;trigger1 = animelem = 12 || animtime = 0
;x = 2
;[State 225, Pos]
;type = posadd
;trigger1 = animelem = 13
;x = 12

[State Idle]
type = statetypeset
trigger1 = animelemtime(10) >= 0
movetype = I
persistent = 0

[State 225, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=Standing Far Light Kick==
[Statedef 230]
type = S
movetype = A
physics = S
anim = 230
velset = 0, 0
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

[State Erase Inputs]
type = mapset
map = "cmd_erase_completed"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 230, Sound]
type = playsnd
trigger1 = animelem = 3 && random < 200
value = 3, ifelse(random < 500, 0, 3)
channel = 0

[State 230, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 4
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 230, Hit]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, NA
damage = 30, 0
dizzypoints = 50 * !map(customcombo)
animtype = Light
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 8, 8
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 40) * (map(sparkx.max) := 80), map(sparky) := -75
hitsound = s2, 4
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 12
guard.hittime = (1 + 12) - 6
ground.slidetime = 12
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 10
guard.slidetime = 10
air.type = Low
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 50) * map(meterscaling), 25 * map(meterscaling)
givepower = 40, 40
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[State 230, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=Standing Close Light Kick==
[Statedef 231]
type = S
movetype = A
physics = S
anim = 231
velset = 0, 0
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

[State Erase Inputs]
type = mapset
map = "cmd_erase_completed"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 231, Sound]
type = playsnd
trigger1 = animelem = 3 && random < 200
value = 3, ifelse(random < 500, 0, 3)
channel = 0

[State 231, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 4
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 231, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, NA
damage = 30, 0
dizzypoints = 50 * !map(customcombo)
animtype = Light
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 8, 8
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 56), map(sparky) := -72
hitsound = s2, 4
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 12
guard.hittime = (1 + 12) - 6
ground.slidetime = 12
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 10
guard.slidetime = 10
air.type = Low
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 50) * map(meterscaling), 25 * map(meterscaling)
givepower = 40, 40
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 231, Anim]
type = changeanim
trigger1 = anim = 231
trigger1 = hitpausetime = [1, 5]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
value = 231
elem = 4
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State 231, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=Standing Far Medium Kick==
[Statedef 240]
type = S
movetype = A
physics = S
anim = 240
velset = 0, 0
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

[State Erase Inputs]
type = mapset
map = "cmd_erase_completed"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 240, Sound]
type = playsnd
trigger1 = animelem = 3 && random < 350
value = 3, ifelse(random < 500, 2, 4)
channel = 0

[State 240, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 240, Hit]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, NA
damage = 70, 0
dizzypoints = 100 * !map(customcombo)
animtype = Medium
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 44) * (map(sparkx.max) := 108), map(sparky) := -74
hitsound = s2, 5
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 15
guard.hittime = (1 + 15) - 6
ground.slidetime = 15
ground.velocity = ifelse(map(customcombo), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.type = Low
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 240, Anim]
type = changeanim
trigger1 = anim = 240
trigger1 = hitpausetime = [1, 7]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(5) >= 0 && animelemtime(6) <= 0
value = 240
elem = 6
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[State 240, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=Standing Close Medium Kick==
[Statedef 241]
type = S
movetype = A
physics = S
anim = 241
velset = 0, 0
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

[State Erase Inputs]
type = mapset
map = "cmd_erase_completed"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 241, Sound]
type = playsnd
trigger1 = animelem = 3 && random < 350
value = 3, ifelse(random < 500, 2, 4)
channel = 0

[State 241, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 241, Hit]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, NA
damage = 90, 0
dizzypoints = 100 * !map(customcombo)
animtype = Medium
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 32) * (map(sparkx.max) := 90), map(sparky) := -72
hitsound = s2, 5
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 15
guard.hittime = (1 + 15) - 6
ground.slidetime = 15
ground.velocity = ifelse(map(customcombo), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.type = Low
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 241, Anim]
type = changeanim
trigger1 = anim = 241
trigger1 = hitpausetime = [1, 7]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(4) >= 0 && animelemtime(5) <= 0
value = 241
elem = 5
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[State 241, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=Standing Far Hard Kick==
[Statedef 250]
type = S
movetype = A
physics = S
anim = 250
velset = 0, 0
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

[State Erase Inputs]
type = mapset
map = "cmd_erase_completed"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 250, Sound]
type = playsnd
trigger1 = animelem = 3 && random < 500
value = 3, ifelse(random < 500, 4, 8)
channel = 0

[State 250, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 6
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 250, Hit]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, NA
damage = 110, 0
dizzypoints = 200 * !map(customcombo)
animtype = Hard
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 52) * (map(sparkx.max) := 112), map(sparky) := -74
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = ifelse(map(customcombo), -5.77, -10.52), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 250, Hit]
type = hitdef
trigger1 = animelem = 4
trigger1 = prevstateno = 710
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, NA
damage = 110, 0
dizzypoints = 200 * !map(customcombo)
animtype = Hard
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 52) * (map(sparkx.max) := 112), map(sparky) := -74
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -5.30, -5.30
air.type = Low
air.hittime = 120
air.velocity = -5.30, -5.30
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
guard.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
fall = 1
fall.recover = 1
fall.recovertime = 120

[State 250, Anim]
type = changeanim
trigger1 = anim = 250
trigger1 = hitpausetime = [1, 9]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(5) >= 0 && animelemtime(6) <= 0
value = 250
elem = 6
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[State 250, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=Standing Close Hard Kick==
[Statedef 251]
type = S
movetype = A
physics = S
anim = 251
velset = 0, 0
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

[State Erase Inputs]
type = mapset
map = "cmd_erase_completed"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 251, Sound]
type = playsnd
trigger1 = animelem = 3 && random < 500
value = 3, ifelse(random < 500, 4, 8)
channel = 0

[State 251, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 6
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 251, Hit]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, NA
damage = 110, 0
dizzypoints = 200 * !map(customcombo)
animtype = Hard
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 33) * (map(sparkx.max) := 90), map(sparky) := -72
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = ifelse(map(customcombo), -5.77, -10.52), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 251, Anim]
type = changeanim
trigger1 = anim = 251
trigger1 = hitpausetime = [1, 9]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(4) >= 0 && animelemtime(5) <= 0
value = 251
elem = 5
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[State 251, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=Crouching Light Punch==
[Statedef 400]
type = C
movetype = A
physics = C
anim = 400
velset = 0, 0
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

[State Erase Inputs]
type = mapset
map = "cmd_erase_completed"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 400, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 200
value = 3, ifelse(random < 500, 0, 3)
channel = 0

[State 400, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 1
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 400, Sound]
type = playsnd
trigger1 = !time
value = 5, 0
channel = 3
stopongethit = 1

[State 400, FX]
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

[State 400, Hit]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = C, NA
damage = 30, 0
dizzypoints = 50 * !map(customcombo)
animtype = Light
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 8, 8
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 56), map(sparky) := -52
hitsound = s2, 1
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 12
guard.hittime = (1 + 12) - 6
ground.slidetime = 12
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 10
guard.slidetime = 10
air.type = Low
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 50) * map(meterscaling), 25 * map(meterscaling)
givepower = 40, 40
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I
persistent = 0

[State 400, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=Crouching Medium Punch==
[Statedef 410]
type = C
movetype = A
physics = C
anim = 410
velset = 0, 0
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

[State Erase Inputs]
type = mapset
map = "cmd_erase_completed"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 410, Sound]
type = playsnd
trigger1 = animelem = 4 && random < 350
value = 3, ifelse(random < 500, 2, 4)
channel = 0

[State 410, Sound]
type = playsnd
trigger1 = animelem = 5
value = 1, 2
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 410, Sound]
type = playsnd
trigger1 = !time
value = 5, 1
channel = 3
stopongethit = 1

[State 410, FX]
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

[State 410, Hit]
type = hitdef
trigger1 = animelem = 5
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = C, NA
damage = 80, 0
dizzypoints = 100 * !map(customcombo)
animtype = Medium
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 40) * (map(sparkx.max) := 94), map(sparky) := -58
hitsound = s2, 2
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 15
guard.hittime = (1 + 15) - 6
ground.slidetime = 15
ground.velocity = ifelse(map(customcombo), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.type = Low
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 410, Anim]
type = changeanim
trigger1 = anim = 410
trigger1 = hitpausetime = [1, 6]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(5) >= 0 && animelemtime(6) <= 0
value = 410
elem = 6
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[State 410, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=Crouching Hard Punch==
[Statedef 420]
type = C
movetype = A
physics = C
anim = 420
velset = 0, 0
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

[State Erase Inputs]
type = mapset
map = "cmd_erase_completed"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 420, Sound]
type = playsnd
trigger1 = animelem = 4 && random < 500
value = 3, ifelse(random < 500, 4, 8)
channel = 0

[State 420, Sound]
type = playsnd
trigger1 = animelem = 5
value = 1, 3
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 420, Sound]
type = playsnd
trigger1 = !time
value = 5, 2
channel = 3
stopongethit = 1

[State 420, FX]
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

[State 420, Hit]
type = hitdef
trigger1 = animelem = 5
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = C, NA
damage = 110, 0
dizzypoints = 200 * !map(customcombo)
animtype = Hard
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 44) * (map(sparkx.max) := 96), map(sparky) := -58
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = ifelse(map(customcombo), -5.77, -10.52), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 420, Anim]
type = changeanim
trigger1 = anim = 420
trigger1 = hitpausetime = [1, 6]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(5) >= 0 && animelemtime(6) <= 0
value = 420
elem = 6
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[State 420, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=Crouching Light Kick==
[Statedef 430]
type = C
movetype = A
physics = C
anim = 430
velset = 0, 0
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

[State Erase Inputs]
type = mapset
map = "cmd_erase_completed"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 430, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 200
value = 3, ifelse(random < 500, 0, 3)
channel = 0

[State 430, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 4
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 430, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = C, NA
damage = 20, 0
dizzypoints = 50 * !map(customcombo)
animtype = Light
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = L
priority = 4, Hit
pausetime = 8, 8
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 75), map(sparky) := -8
hitsound = s2, 4
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 12
guard.hittime = (1 + 12) - 6
ground.slidetime = 12
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 10
guard.slidetime = 10
air.type = Low
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
down.velocity = -2, -2
getpower = ifelse(movehit, 25, 50) * map(meterscaling), 25 * map(meterscaling)
givepower = 40, 40
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 430, Anim]
type = changeanim
trigger1 = anim = 430
trigger1 = hitpausetime = [1, 5]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
value = 430
elem = 4
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State 430, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=Crouching Medium Kick==
[Statedef 440]
type = C
movetype = A
physics = C
anim = 440
velset = 0, 0
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

[State Erase Inputs]
type = mapset
map = "cmd_erase_completed"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 440, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 3, ifelse(random < 500, 2, 4)
channel = 0

[State 440, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 440, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = C, NA
damage = 65, 0
dizzypoints = 100 * !map(customcombo)
animtype = Medium
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = L
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 84), map(sparky) := -14
hitsound = s2, 5
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 15
guard.hittime = (1 + 15) - 6
ground.slidetime = 15
ground.velocity = ifelse(map(customcombo), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.type = Low
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
down.velocity = -3, -3
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 440, Anim]
type = changeanim
trigger1 = anim = 440
trigger1 = hitpausetime = [1, 7]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
value = 440
elem = 4
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State 440, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=Crouching Hard Kick==
[Statedef 450]
type = C
movetype = A
physics = S
anim = 450
velset = 0, 0
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

[State Erase Inputs]
type = mapset
map = "cmd_erase_completed"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 450, Sound]
type = playsnd
trigger1 = animelem = 4
value = 3, ifelse(random < 500, 4, 8)
channel = 0

[State 450, Sound]
type = playsnd
trigger1 = animelem = 5
value = 5, 8
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 450, Vel]
type = velset
trigger1 = animelem = 5
x = 25

[State 450, Push]
type = playerpush
trigger1 = movehit
trigger1 = numtarget
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
value = 0
ignorehitpause = 1

[State 450, Hit]
type = hitdef
trigger1 = animelem = 5
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = C, NA
damage = 100, 0
dizzypoints = 200 * !map(customcombo)
animtype = Hard
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = L
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 0) * (map(sparkx.max) := 52), map(sparky) := -20
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Trip
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -1.0, -8.0
air.type = Low
air.velocity = -1.0, -8.0
air.cornerpush.veloff = 0
down.velocity = -2, -4
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
guard.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
fall.recover = 0
fall.recovertime = 120

[State 450, Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[State 450, End]
type = changestate
trigger1 = !animtime
value = ifelse(command = "holddown", 10, 12)
ctrl = 1


;=Neutral Jumping Light Punch==
[Statedef 600]
type = A
physics = N
movetype = A
anim = 600
poweradd = 0
sprpriority = 2
ctrl = 0

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State Erase Inputs]
type = mapset
map = "cmd_erase_completed"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 600, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 200
value = 3, ifelse(random < 500, 0, 3)
channel = 0

[State 600, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 1
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 600, Sound]
type = playsnd
trigger1 = !time
value = 5, 0
channel = 3
stopongethit = 1

[State 600, FX]
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

[State 600, Hit]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = A, NA
damage = 50, 0
dizzypoints = 50 * !map(customcombo)
animtype = Light
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 54), map(sparky) := -70
hitsound = s2, 1
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 12
guard.hittime = (1 + 12) - 6
ground.slidetime = 12
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 10
guard.slidetime = 10
guard.velocity = ifelse(map(customcombo), -2.66, -4.49)
guard.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 50) * map(meterscaling), 25 * map(meterscaling)
givepower = 40, 40
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 600, Anim]
type = changeanim
trigger1 = anim = 600
trigger1 = hitpausetime = [1, 6]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(2) >= 0 && animelemtime(3) <= 0
value = 600
elem = 3
ignorehitpause = 1

[State 600, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State Gravity]
type = gravity
trigger1 = 1

[State Land]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;=Diagonal Jumping Light Punch==
[Statedef 601]
type = A
physics = N
movetype = A
anim = 601
poweradd = 0
sprpriority = 2
ctrl = 0

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State Erase Inputs]
type = mapset
map = "cmd_erase_completed"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 601, Sound]
type = playsnd
trigger1 = animelem = 3 && random < 200
value = 3, ifelse(random < 500, 0, 3)
channel = 0

[State 601, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 1
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 601, Sound]
type = playsnd
trigger1 = !time
value = 5, 0
channel = 3
stopongethit = 1

[State 601, FX]
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

[State 601, Hit]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = A, NA
damage = 50, 0
dizzypoints = 50 * !map(customcombo)
animtype = Light
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 73), map(sparky) := -96
hitsound = s2, 1
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 12
guard.hittime = (1 + 12) - 6
ground.slidetime = 12
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 10
guard.slidetime = 10
guard.velocity = ifelse(map(customcombo), -2.66, -4.49)
guard.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 50) * map(meterscaling), 25 * map(meterscaling)
givepower = 40, 40
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 601, Anim]
type = changeanim
trigger1 = anim = 601
trigger1 = hitpausetime = [1, 6]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(4) >= 0 && animelemtime(5) <= 0
value = 601
elem = 5
ignorehitpause = 1

[State 601, Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[State Gravity]
type = gravity
trigger1 = 1

[State Land]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;=Jumping Medium Punch==
[Statedef 610]
type = A
physics = N
movetype = A
anim = 610
poweradd = 0
sprpriority = 2
ctrl = 0

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State Erase Inputs]
type = mapset
map = "cmd_erase_completed"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 610, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 3, ifelse(random < 500, 2, 4)
channel = 0

[State 610, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 2
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 610, Sound]
type = playsnd
trigger1 = !time
value = 5, 1
channel = 3
stopongethit = 1

[State 610, FX]
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

[State 610, Hit]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 0 || map(juggle_increase) := 1 || map(juggle_limit) := 2)
ID = 610
attr = A, NA
damage = 70, 0
dizzypoints = 100 * !map(customcombo)
animtype = Medium
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 54), map(sparky) := -68
hitsound = s2, 2
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 12
guard.hittime = (1 + 12) - 6
ground.slidetime = 12
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 13
guard.slidetime = 13
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.type = High
air.hittime = 120
air.velocity = -3.00, -8.00
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
forcenofall = 0

[State 610, Anim]
type = assertspecial
trigger1 = anim = 610
trigger1 = hitpausetime > 0
trigger1 = animelemtime(2) >= 1 && animelemtime(3) <= 0
flag = animatehitpause
ignorehitpause = 1

[State 610, Hell Attack]
type = changestate
triggerall = animelemtime(3) >= 0
trigger1 = !AIlevel
trigger1 = map(cmd_y)
trigger2 = AIlevel
trigger2 = movecontact || animelemtime(4) >= 0
;trigger2 = random < (500 * (AIlevelF / 8.0))
value = 615

[State 610, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State Gravity]
type = gravity
trigger1 = 1

[State Land]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;=Hell Attack==
[Statedef 615]
type = A
physics = N
movetype = A
anim = 615
poweradd = 0
sprpriority = 2
ctrl = 0

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State Erase Inputs]
type = mapset
map = "cmd_erase_completed"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 615, Sound]
type = playsnd
trigger1 = animelem = 3 && random < 350
value = 3, ifelse(random < 500, 2, 4)
channel = 0

[State 615, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 3
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 615, Sound]
type = playsnd
trigger1 = !time
value = 5, 1
channel = 3
stopongethit = 1

[State 615, FX]
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

[State 615, Hit]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 2)
ID = 615
attr = A, NA
damage = 50, 0
dizzypoints = 50 * !map(customcombo)
animtype = Medium
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 53), map(sparky) := -66
hitsound = s2, 2
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 12
guard.hittime = (1 + 12) - 6
ground.slidetime = 12
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 13
guard.slidetime = 13
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.type = High
air.hittime = 120
air.velocity = -3.00, -8.00
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0

[State 615, Anim]
type = assertspecial
trigger1 = anim = 615
trigger1 = hitpausetime > 0
trigger1 = animelemtime(3) >= 1 && animelemtime(4) <= 0
flag = animatehitpause
ignorehitpause = 1

[State 615, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[State Gravity]
type = gravity
trigger1 = 1

[State Land]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;=Neutral Jumping Hard Punch==
[Statedef 620]
type = A
physics = N
movetype = A
anim = 620
poweradd = 0
sprpriority = 2
ctrl = 0

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State Erase Inputs]
type = mapset
map = "cmd_erase_completed"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 620, Sound]
type = playsnd
trigger1 = animelem = 3 && random < 500
value = 3, ifelse(random < 500, 4, 8)
channel = 0

[State 620, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 3
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 620, Sound]
type = playsnd
trigger1 = !time
value = 5, 2
channel = 3
stopongethit = 1

[State 620, FX]
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

[State 620, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = A, NA
damage = 110, 0
dizzypoints = 200 * !map(customcombo)
animtype = Hard
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 53), map(sparky) := -66
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 12
guard.hittime = (1 + 12) - 6
ground.slidetime = 12
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 620, Anim]
type = changeanim
trigger1 = anim = 620
trigger1 = hitpausetime = [1, 9]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
value = 620
elem = 4
ignorehitpause = 1

[State 620, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[State Gravity]
type = gravity
trigger1 = 1

[State Land]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;=Diagonal Jumping Hard Punch==
[Statedef 621]
type = A
physics = N
movetype = A
anim = 621
poweradd = 0
sprpriority = 2
ctrl = 0

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State Erase Inputs]
type = mapset
map = "cmd_erase_completed"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 621, Sound]
type = playsnd
trigger1 = animelem = 3 && random < 500
value = 3, ifelse(random < 500, 4, 8)
channel = 0

[State 621, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 3
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 621, Sound]
type = playsnd
trigger1 = !time
value = 5, 2
channel = 3
stopongethit = 1

[State 621, FX]
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

[State 621, Hit]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = A, NA
damage = 110, 0
dizzypoints = 200 * !map(customcombo)
animtype = Hard
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 60), map(sparky) := -98
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 12
guard.hittime = (1 + 12) - 6
ground.slidetime = 12
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 621, Anim]
type = changeanim
trigger1 = anim = 621
trigger1 = hitpausetime = [1, 9]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(4) >= 0 && animelemtime(5) <= 0
value = 621
elem = 5
ignorehitpause = 1

[State 621, Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[State Gravity]
type = gravity
trigger1 = 1

[State Land]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;=Neutral Jumping Light Kick==
[Statedef 630]
type = A
physics = N
movetype = A
anim = 630
poweradd = 0
sprpriority = 2
ctrl = 0

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State Erase Inputs]
type = mapset
map = "cmd_erase_completed"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 630, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 200
value = 3, ifelse(random < 500, 0, 3)
channel = 0

[State 630, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 4
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 630, Hit]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = A, NA
damage = 40, 0
dizzypoints = 50 * !map(customcombo)
animtype = Light
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 64), map(sparky) := -68
hitsound = s2, 4
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 12
guard.hittime = (1 + 12) - 6
ground.slidetime = 12
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 10
guard.slidetime = 10
guard.velocity = ifelse(map(customcombo), -2.66, -4.49)
guard.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 50) * map(meterscaling), 25 * map(meterscaling)
givepower = 40, 40
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 630, Anim]
type = changeanim
trigger1 = anim = 630
trigger1 = hitpausetime = [1, 6]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(2) >= 0 && animelemtime(3) <= 0
value = 630
elem = 3
ignorehitpause = 1

[State 630, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State Gravity]
type = gravity
trigger1 = 1

[State Land]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;=Diagonal Jumping Light Kick==
[Statedef 631]
type = A
physics = N
movetype = A
anim = 631
poweradd = 0
sprpriority = 2
ctrl = 0

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State Erase Inputs]
type = mapset
map = "cmd_erase_completed"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 631, Sound]
type = playsnd
trigger1 = animelem = 3 && random < 200
value = 3, ifelse(random < 500, 0, 3)
channel = 0

[State 631, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 4
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 631, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = A, NA
damage = 40, 0
dizzypoints = 50 * !map(customcombo)
animtype = Light
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 0) * (map(sparkx.max) := 30), map(sparky) := -75
hitsound = s2, 4
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 12
guard.hittime = (1 + 12) - 6
ground.slidetime = 12
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 10
guard.slidetime = 10
guard.velocity = ifelse(map(customcombo), -2.66, -4.49)
guard.cornerpush.veloff = 0
air.type = High
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 50) * map(meterscaling), 25 * map(meterscaling)
givepower = 40, 40
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 631, Anim]
type = changeanim
trigger1 = anim = 631
trigger1 = hitpausetime = [1, 6]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
value = 631
elem = 4
ignorehitpause = 1

[State 631, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[State Gravity]
type = gravity
trigger1 = 1

[State Land]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;=Neutral Jumping Medium Kick==
[Statedef 640]
type = A
physics = N
movetype = A
anim = 640
poweradd = 0
sprpriority = 2
ctrl = 0

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State Erase Inputs]
type = mapset
map = "cmd_erase_completed"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 640, Sound]
type = playsnd
trigger1 = animelem = 3 && random < 350
value = 3, ifelse(random < 500, 2, 4)
channel = 0

[State 640, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 640, Hit]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = A, NA
damage = 70, 0
dizzypoints = 100 * !map(customcombo)
animtype = Medium
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 16) * (map(sparkx.max) := 90), map(sparky) := ifelse(p2dist x < 0, -38, -66)
hitsound = s2, 5
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 12
guard.hittime = (1 + 12) - 6
ground.slidetime = 12
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 13
guard.slidetime = 13
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 640, Anim]
type = changeanim
trigger1 = anim = 640
trigger1 = hitpausetime = [1, 8]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(4) >= 0 && animelemtime(5) <= 0
value = 640
elem = 5
ignorehitpause = 1

[State 640, TIdle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[State Gravity]
type = gravity
trigger1 = 1

[State Land]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;=Diagonal Jumping Medium Kick==
[Statedef 641]
type = A
physics = N
movetype = A
anim = 641
poweradd = 0
sprpriority = 2
ctrl = 0

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State Erase Inputs]
type = mapset
map = "cmd_erase_completed"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 641, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 3, ifelse(random < 500, 2, 4)
channel = 0

[State 641, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 5
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 641, Hit]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = A, NA
damage = 80, 0
dizzypoints = 100 * !map(customcombo)
animtype = Medium
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := -35) * (map(sparkx.max) := 44), map(sparky) := ifelse(p2dist x < 0, -40, -72)
hitsound = s2, 5
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 12
guard.hittime = (1 + 12) - 6
ground.slidetime = 12
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 13
guard.slidetime = 13
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.type = High
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 641, Anim]
type = changeanim
trigger1 = anim = 641
trigger1 = hitpausetime = [1, 8]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(2) >= 0 && animelemtime(3) <= 0
value = 641
elem = 3
ignorehitpause = 1

[State 641, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State Gravity]
type = gravity
trigger1 = 1

[State Land]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;=Neutral Jumping Hard Kick==
[Statedef 650]
type = A
physics = N
movetype = A
anim = 650
poweradd = 0
sprpriority = 2
ctrl = 0

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State Erase Inputs]
type = mapset
map = "cmd_erase_completed"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 650, Sound]
type = playsnd
trigger1 = animelem = 3 && random < 500
value = 3, ifelse(random < 500, 4, 8)
channel = 0

[State 650, Sound]
type = playsnd
trigger1 = animelem = 4
value = 1, 6
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 650, Hit]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = A, NA
damage = 100, 0
dizzypoints = 200 * !map(customcombo)
animtype = Hard
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 90), map(sparky) := -66
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 12
guard.hittime = (1 + 12) - 6
ground.slidetime = 12
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 650, Anim]
type = changeanim
trigger1 = anim = 650
trigger1 = hitpausetime = [1, 10]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(4) >= 0 && animelemtime(5) <= 0
value = 650
elem = 5
ignorehitpause = 1

[State 650, Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[State Gravity]
type = gravity
trigger1 = 1

[State Land]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;=Diagonal Jumping Hard Kick==
[Statedef 651]
type = A
physics = N
movetype = A
anim = 651
poweradd = 0
sprpriority = 2
ctrl = 0

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State Erase Inputs]
type = mapset
map = "cmd_erase_completed"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 651, Sound]
type = playsnd
trigger1 = animelem = 3 && random < 500
value = 3, ifelse(random < 500, 4, 8)
channel = 0

[State 651, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 6
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 651, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = A, NA
damage = 100, 0
dizzypoints = 200 * !map(customcombo)
animtype = Hard
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := -20) * (map(sparkx.max) := 89), map(sparky) := -54
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 12
guard.hittime = (1 + 12) - 6
ground.slidetime = 12
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.type = Low
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 651, Anim]
type = changeanim
trigger1 = anim = 651
trigger1 = hitpausetime = [1, 10]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
value = 651
elem = 4
ignorehitpause = 1

[State 651, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[State Gravity]
type = gravity
trigger1 = 1

[State Land]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;=Throw Attempt==
[Statedef 800]
type = S
movetype = A
physics = S
velset = 0, 0
ctrl = 0
anim = 800
sprpriority = 2
poweradd = 0
facep2 = 1

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State Erase Inputs]
type = mapset
map = "cmd_erase_completed"
trigger1 = !AIlevel
trigger1 = time <= 0
value = 1
ignorehitpause = 1
persistent = 0

[State 800, Strength]
type = mapset
trigger1 = !time
trigger1 = !AIlevel
map = "strength"
value = ifelse(map(cmd_kk), 1, 0)

[State 800, Strength AI]
type = mapset
trigger1 = !time
trigger1 = AIlevel
map = "strength"
value = (stagebackedgedist < stagefrontedgedist)

[State 800, Tech Hit]
type = mapset
trigger1 = 1
map = "techhit_timer"
value = 0

[State 800, Tech Hit]
type = mapset
trigger1 = numenemy
trigger1 = p2statetype = S
trigger1 = p2stateno = [0, 999] && p2stateno != [100, 119] && p2stateno != [200, 799] && p2, anim != 5300
map = "techhit_timer"
value = 7

[State 800, Tech Hit Facing]
type = mapset
trigger1 = !time
map = "techhit_facing"
value = facing

[State 800, No proximity block]
type = attackdist
trigger1 = 1
value = 0

[State 800, Hit]
type = hitdef
trigger1 = animelem = 2 && map(strength) = 0
trigger1 = !map(unthrowable) && !map(grabbehind)
trigger1 = map(truebodydistx) <= 27
attr = S, NT
hitflag = M
priority = 1, Miss
sparkno = -1 + 0 * (map(sparkno) := 0)
hitsound = s2, 800
hitsound.channel = 2
p1facing = 1
p2facing = 1
p1stateno = 810
p2stateno = 815
guard.dist = 0
ground.velocity = 8, -4
ground.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
fall = 1
fall.recover = 0
down.recover = 1

[State 800, Hit]
type = hitdef
trigger1 = animelem = 2 && map(strength) = 1
trigger1 = !map(unthrowable) && !map(grabbehind)
trigger1 = map(truebodydistx) <= 27
ID = 800
attr = S, NT
hitflag = M
priority = 1, Miss
sparkno = -1 + 0 * (map(sparkno) := 0)
hitsound = s2, 800
hitsound.channel = 2
p1facing = 1
p2facing = 1
p1stateno = 820
p2stateno = 825
guard.dist = 0
yAccel = (0.5 + (ComboCount * 0.03))
p1sprpriority = sprpriority
fall = 1
fall.recover = 0
down.recover = 1
numhits = 0

[State 800, Sound]
type = playsnd
trigger1 = animelem = 3
value = 5000, 3
channel = 0

[State 800, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 1
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I
persistent = 0

[State 800, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=DEADLY THROW==
;----- PLAYER TURNS -----
[Statedef 805]
type = S
physics = S
movetype = A
anim = 805
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 805, Turn]
type = turn
trigger1 = !time

[State 805, P2 Turn]
type = targetfacing
trigger1 = !time
value = -1

[State Tech Hit]
type = mapadd
trigger1 = time
trigger1 = map(techhit_timer) > 0
map = "techhit_timer"
value = -1

[State Tech Hit]
type = changestate
triggerall = numtarget
triggerall = map(techhit_timer)
triggerall = target, command != "holdup" && target, command != "holddown"
trigger1 = ((target, command = "a") + (target, command = "b") + (target, command = "c") + (target, command = "x") + (target, command = "y") + (target, command = "z")) >= 2
trigger2 = target, command = "holdfwd" || target, command = "holdback"
trigger2 = target, command = "b" || target, command = "c" || target, command = "y" || target, command = "z"
trigger3 = target, AIlevel > 0
trigger3 = random < (100 * (target, AIlevelF / 8.0))
value = 890

[State Throw]
type = targetstate
trigger1 = !time
value = 806

[State Width]
type = width
trigger1 = 1
edge = 30, 30

[State 805, Sprite Priority]
type = sprpriority
trigger1 = 1
value = -1

[State 805, End]
type = changestate
trigger1 = !animtime
value = ifelse(map(strength) = 1, 820, 810)
ctrl = 0


;----- TARGET -----
[Statedef 806]
type = A
physics = N
movetype = H
velset = 0, 0
sprpriority = 3

[State 806, Anim]
type = changeanim2
trigger1 = !time
value = 806

[State Safety]
type = selfstate
trigger1 = time >= 60
value = ifelse(pos y < 0, 5040, 0)
ctrl = 1


;----- PLAYER -----
[Statedef 810]
type = S
physics = S
movetype = A
anim = 810
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 810, Turn]
type = turn
trigger1 = !time

[State 810, Throw]
type = targetstate
trigger1 = !time
value = 815

[State 810, Throw]
type = targetfacing
trigger1 = time <= 1
value = -1

[State Tech Hit]
type = mapadd
trigger1 = time
trigger1 = map(techhit_timer) > 0
map = "techhit_timer"
value = -1

[State Tech Hit]
type = changestate
triggerall = numtarget
triggerall = map(techhit_timer)
triggerall = target, command != "holdup" && target, command != "holddown"
trigger1 = ((target, command = "a") + (target, command = "b") + (target, command = "c") + (target, command = "x") + (target, command = "y") + (target, command = "z")) >= 2
trigger2 = target, command = "holdfwd" || target, command = "holdback"
trigger2 = target, command = "b" || target, command = "c" || target, command = "y" || target, command = "z"
trigger3 = target, AIlevel > 0
trigger3 = random < (100 * (target, AIlevelF / 8.0))
value = 890

[State 810, Width]
type = width
trigger1 = animelemtime(11) < 0
edge = 40, 0

[State 810, Width]
type = width
trigger1 = animelemtime(11) >= 0 && animelemtime(12) < 0
edge = 0, 30

[State 810, Bind 1]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = -45, 0

[State 810, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = -23, 0

[State 810, Bind 3]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = -1, 0

[State 810, Bind 4]
type = targetbind
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = 22, 0

[State 810, Bind 5]
type = targetbind
trigger1 = animelemtime(5) >= 0 && animelemtime(8) < 0
pos = 50, 0

[State 810, Bind 8]
type = targetbind
trigger1 = animelemtime(8) >= 0 && animelemtime(9) < 0
pos = 49, -75

[State 810, Bind 9]
type = targetbind
trigger1 = animelemtime(9) >= 0 && animelemtime(10) < 0
pos = 36, -81

[State 810, Bind 10]
type = targetbind
trigger1 = animelemtime(10) >= 0 && animelemtime(11) < 0
pos = 5, -80

[State 810, Bind 11]
type = targetbind
trigger1 = animelem = 11
pos = -20, -80 - target, const(size.mid.pos.y)

[State 805, Sprite Priority]
type = sprpriority
trigger1 = animelemtime(5) < 0
value = 0

[State 805, Sprite Priority]
type = sprpriority
trigger1 = animelem = 5
value = 1

[State 810, Damage]
type = targetlifeadd
trigger1 = animelem = 11
value = floor(-140 * map(damagescaling))
dizzy = 0

[State 810, Stun Damage]
type = targetdizzypointsadd
trigger1 = numtarget
trigger1 = animelem = 11
value = floor(-130 * map(damagescaling)) * !map(customcombo)

[State 810, Give Power]
type = targetpoweradd
trigger1 = animelem = 11
value = 40; givepower

[State 810, Get Power]
type = poweradd
trigger1 = animelem = 11
value = 100 * map(meterscaling); getpower

[State 810, Throw]
type = targetstate
trigger1 = animelem = 11
value = 816

[State 810, Sound]
type = playsnd
trigger1 = animelem = 8
value = 3, 8
channel = 0

[State 810, Sound]
type = playsnd
trigger1 = animelem = 10
value = 1, 6
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 810, Turn]
type = turn
trigger1 = animelem = 15

[State 810, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- TARGET -----
[Statedef 815]
type = A
physics = N
movetype = H
velset = 0, 0
sprpriority = -1

[State 815, Anim]
type = changeanim2
trigger1 = !time
value = 815

[State 815, Sprite Priority]
type = sprpriority
trigger1 = animelemtime(3) < 0
value = 1

[State 815, Sprite Priority]
type = sprpriority
trigger1 = animelem = 3
value = -1

[State 815, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 815, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 816]
type = A
physics = N
movetype = H
velset = 8, -4
sprpriority = -1

[State 816, Turn]
type = turn
trigger1 = !time

[State 816, Anim]
type = changeanim
trigger1 = 1
value = 5050

[State 816, Dizzy Start]
type = dizzyset
trigger1 = alive
trigger1 = life > 0
trigger1 = dizzypoints <= 0
trigger1 = !gethitvar(isbound)
value = 1

[State 816, End]
type = selfstate
trigger1 = 1
value = 5050


;=DEATH TOWER==
;----- PLAYER -----
[Statedef 820]
type = S
physics = S
movetype = A
anim = 820
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 820, Throw]
type = targetstate
trigger1 = !time
value = 825

[State 820, Throw]
type = targetfacing
trigger1 = time <= 1
value = -1

[State Tech Hit]
type = mapadd
trigger1 = time
trigger1 = map(techhit_timer) > 0
map = "techhit_timer"
value = -1

[State Tech Hit]
type = changestate
triggerall = numtarget
triggerall = map(techhit_timer)
triggerall = target, command != "holdup" && target, command != "holddown"
trigger1 = ((target, command = "a") + (target, command = "b") + (target, command = "c") + (target, command = "x") + (target, command = "y") + (target, command = "z")) >= 2
trigger2 = target, command = "holdfwd" || target, command = "holdback"
trigger2 = target, command = "b" || target, command = "c" || target, command = "y" || target, command = "z"
trigger3 = target, AIlevel > 0
trigger3 = random < (100 * (target, AIlevelF / 8.0))
value = 890

[State 820, Width]
type = width
trigger1 = animelemtime(12) < 0
edge = 50, 0

[State 820, Width]
type = width
trigger1 = animelemtime(12) >= 0 && animelemtime(13) < 0
edge = 0, 20

[State 820, Width]
type = width
trigger1 = animelemtime(13) >= 0 && animelemtime(14) < 0
edge = 0, 40

[State 820, Width]
type = width
trigger1 = animelemtime(14) >= 0 && animelemtime(16) < 0
edge = 0, 60

[State 820, Sound]
type = playsnd
trigger1 = animelem = 3 || animelem = 6 || animelem = 10
value = 3, ifelse((animelem = 3), 3, ifelse((animelem = 6), 0, 4))
channel = 0

[State 820, Sound]
type = playsnd
trigger1 = animelem = 4 || animelem = 13
value = 1, 6
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 820, Bind 1]
type = targetbind
trigger1 = animelemtime(1) >= 0 && animelemtime(4) < 0
pos = 50, 0

[State 820, Bind 7]
type = targetbind
trigger1 = animelemtime(7) >= 0 && animelemtime(8) < 0
pos = 54, -134

[State 820, Bind 8]
type = targetbind
trigger1 = animelemtime(8) >= 0 && animelemtime(11) < 0
pos = 51, -130

[State 820, Bind 11]
type = targetbind
trigger1 = animelemtime(11) >= 0 && animelemtime(12) < 0
pos = 42, -134

[State 820, Bind 12]
type = targetbind
trigger1 = animelemtime(12) >= 0 && animelemtime(13) < 0
pos = 10, -138

[State 820, Bind 13]
type = targetbind
trigger1 = animelemtime(13) >= 0 && animelemtime(14) < 0
pos = -23, -130

[State 820, Bind 14]
type = targetbind
trigger1 = animelem = 14
pos = -75, -80

[State 820, Damage]
type = targetlifeadd
trigger1 = animelem = 3 || animelem = 7
value = floor(-60 * map(damagescaling))
dizzy = 0
kill = (animelem = 7)

[State 810, Stun Damage]
type = targetdizzypointsadd
trigger1 = numtarget
trigger1 = animelem = 7
value = floor(-150 * map(damagescaling)) * !map(customcombo)

[State 820, Give Power]
type = targetpoweradd
trigger1 = animelem = 7
value = 40; givepower

[State 820, Get Power]
type = poweradd
trigger1 = animelem = 7
value = 100 * map(meterscaling); getpower

[State 820, Hit]
type = hitadd
trigger1 = animelem = 3 || animelem = 7
value = 1

[State 820, HitSound]
type = playsnd
trigger1 = animelem = 3 || animelem = 7
value = 2, ifelse((animelem = 3), 5, 6)

;[State 820, Spark]
;in ZSS

[State 820, Throw]
type = targetstate
trigger1 = animelem = 14
value = 826

[State 820, Turn]
type = turn
trigger1 = animelem = 18

[State 820, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- TARGET -----
[Statedef 825]
type = A
physics = N
movetype = H
velset = 0, 0
sprpriority = -1

[State 825, Anim]
type = changeanim2
trigger1 = !time
value = 825

[State 826, Accel]
type = veladd
trigger1 = animelemtime(4) >= 0 && animelemtime(7) < 0
y = 1.00

[State 826, Accel]
type = velset
trigger1 = animelem = 4
y = -10.00

[State 826, Accel]
type = velset
trigger1 = animelem = 7
y = 0

[State 825, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 825, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 826]
type = A
physics = N
movetype = H
velset = 6, 4
sprpriority = -1

[State 826, Accel]
type = veladd
trigger1 = 1
y = 0.4850; yaccel

[State 826, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 826, Dizzy Start]
type = dizzyset
trigger1 = alive
trigger1 = life > 0
trigger1 = dizzypoints <= 0
trigger1 = !gethitvar(isbound)
value = 1

[State 826, Fall Recovery]
type = selfstate
trigger1 = alive = 1 && dizzy = 0 && dizzypoints > 0
trigger1 = gethitvar(fall.recover)
trigger1 = command = "recovery"
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 826, Hit Ground]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 5100


;=Target Escaped==
[Statedef 890]
type = S
physics = N
movetype = I
anim = 890
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 890, Tech Hit Facing]
type = turn
trigger1 = !time
trigger1 = facing != map(techhit_facing)

[State 890, Bind]
type = targetbind
trigger1 = !time
trigger1 = numtarget = 1
pos = (const(size.ground.front) + target, const(size.ground.front)), 0

[State 890, Width]
type = width
trigger1 = !time
trigger1 = numtarget = 1
edge = (target, const(size.ground.front) + target, const(size.ground.back)), 0

[State 890, P2 State]
type = targetstate
trigger1 = !time
trigger1 = numtarget
value = 895

[State 890, Throw]
type = targetfacing
trigger1 = !time
trigger1 = numtarget
value = -1

[State 890, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 890, Push]
type = playerpush
trigger1 = 1
value = 0

[State 890, Pos]
type = posset
trigger1 = !time
y = 0

[State 890, Vel]
type = velset
trigger1 = 1
x = -1.281
y = 0

[State 890, Vel Corner]
type = velset
trigger1 = numenemy
trigger1 = p2, vel x < 0
trigger1 = p2, backedgedist <= 0
x = -2.562
y = 0

[State 890, Sound]
type = playsnd
trigger1 = time = 2
value = 5000, 0
channel = 0

[State 890, FX]
type = playsnd
trigger1 = !time
value = 0, 890

[State 890, FX]
type = explod
trigger1 = !time
ID = 8200
anim = 8200
postype = p1
pos = const(size.ground.front), -48
pausemovetime = -1
supermovetime = -1
ownpal = 1
ontop = 1

[State 890, End]
type = changestate
trigger1 = time >= 26
value = 0
ctrl = 1


;----- TARGET -----
[Statedef 895]
type = S
physics = N
movetype = I
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 895, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5940), 5940, ifelse(selfanimexist(200), 200, 130))

[State 895, Anim]
type = changeanim
trigger1 = anim = 130
trigger1 = time >= 20
value = 140

[State 895, Anim]
type = changeanim
trigger1 = anim = 200
trigger1 = animtime = -1
value = 200
elem = animelemno(-1)

[State 895, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 895, Push]
type = playerpush
trigger1 = 1
value = 0

[State 895, Pos]
type = posset
trigger1 = !time
y = 0

[State 895, Vel]
type = velset
trigger1 = 1
x = -1.281
y = 0

[State 895, Vel Corner]
type = velset
trigger1 = numenemy
trigger1 = stateowner, vel x < 0
trigger1 = stateowner, backedgedist <= 0
x = -2.562
y = 0

[State 895, End]
type = selfstate
trigger1 = time >= 26
value = 0
ctrl = 1
