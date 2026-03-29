; ___________________________________
;| Nakoruru by Phantom.of.the.Server |
; 
;============================================================================================
;======================================<NORMAL MOVES>========================================
;============================================================================================

;=======================<Standing Far Light Punch>========================
[Statedef 200]
type = S
physics = S
movetype = A
anim = 200
ctrl = 0
velset = 0, 0
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

[State 200, Sound]
type = playsnd
trigger1 = animelem = 1 && random < 200
value = 4, ifelse(random < 500, 0, 2)
channel = 0

[State 200, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 0
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 200, Hit]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 20, 0
dizzypoints = 50 * !map(customcombo)
getpower = ifelse(movehit, 25, 50) * map(meterscaling), 25 * map(meterscaling)
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 12; + 2 * map(counterhit_buffer)
guard.hittime = (1 + 12; + 2 * map(counterhit_buffer)) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 10
guard.slidetime = 10
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
guard.velocity = ifelse(map(customcombo), -2.66, -4.49)
air.velocity = -2.78, -5.33; air reset
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 62), map(sparky) := -60
hitsound = s2, 0
guardsound = s3, 0
guardsound.channel = 2

[State 200, Anim]
type = changeanim
trigger1 = anim = 200
trigger1 = hitpausetime = [1, 6]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(2) >= 0 && animelemtime(3) <= 0
value = 200
elem = 3
ignorehitpause = 1

[State 200, Anim]
type = changeanim
trigger1 = anim = 200
trigger1 = hitpausetime = [1, 3]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
value = 200
elem = 4
ignorehitpause = 1

[State 200, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State 200, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Close Light Punch>========================
[Statedef 201]
type = S
physics = S
movetype = A
anim = 201
ctrl = 0
velset = 0, 0
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

[State 201, Sound]
type = playsnd
trigger1 = animelem = 1 && random < 200
value = 4, ifelse(random < 500, 0, 2)
channel = 0

[State 201, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 0
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 201, Hit]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 25, 0
dizzypoints = 50 * !map(customcombo)
getpower = ifelse(movehit, 25, 50) * map(meterscaling), 25 * map(meterscaling)
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 12; + 2 * map(counterhit_buffer)
guard.hittime = (1 + 12; + 2 * map(counterhit_buffer)) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 10
guard.slidetime = 10
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
guard.velocity = ifelse(map(customcombo), -2.66, -4.49)
air.velocity = -2.78, -5.33; air reset
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 50), map(sparky) := -73
hitsound = s2, 0
guardsound = s3, 0
guardsound.channel = 2

[State 201, Anim]
type = changeanim
trigger1 = anim = 201
trigger1 = hitpausetime = [1, 6]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(2) >= 0 && animelemtime(3) <= 0
value = 201
elem = 3
ignorehitpause = 1

[State 201, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State 201, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Far Medium Punch>========================
[Statedef 210]
type = S
physics = S
movetype = A
anim = 210
ctrl = 0
velset = 0, 0
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

[State 210, Target Combo]
type = changeanim
trigger1 = !time
trigger1 = !map(customcombo)
trigger1 = prevstateno = 241
value = 210
elem = 2

[State 210, Sound]
type = playsnd
trigger1 = animelem = 3 && random < 350
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 210, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 7
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 210, FX]
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

[State 210, Hit]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 55, 0
dizzypoints = 100 * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 15; + 3 * map(counterhit_buffer)
guard.hittime = (1 + 15; + 3 * map(counterhit_buffer)) - 6
ground.slidetime = 15
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -4.30, -7.51), 0
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
air.velocity = -2.78, -5.33; air reset
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8021)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 45) * (map(sparkx.max) := 84), map(sparky) := -46
hitsound = s2, 7
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2

[State 210, Anim]
type = changeanim
trigger1 = anim = 210
trigger1 = hitpausetime = [1, 8]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(4) >= 0 && animelemtime(5) <= 0
value = 210
elem = 5
ignorehitpause = 1

[State 210, Sound]
type = playsnd
trigger1 = !animtime
value = 7, 0
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 210, Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[State 210, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Close Medium Punch>========================
[Statedef 211]
type = S
physics = S
movetype = A
anim = 211
ctrl = 0
velset = 0, 0
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

[State 211, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 211, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 7
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 211, FX]
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

[State 211, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 55, 0
dizzypoints = 100 * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 15; + 3 * map(counterhit_buffer)
guard.hittime = (1 + 15; + 3 * map(counterhit_buffer)) - 6
ground.slidetime = 15
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -4.30, -7.51), 0
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
air.velocity = -2.78, -5.33; air reset
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8021)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 40) * (map(sparkx.max) := 76), map(sparky) := -50
hitsound = s2, 7
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2

[State 211, Anim]
type = changeanim
trigger1 = anim = 211
trigger1 = hitpausetime = [1, 8]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
value = 211
elem = 4
ignorehitpause = 1

[State 211, Anim]
type = changeanim
trigger1 = anim = 211
trigger1 = hitpausetime = [1, 5]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(4) >= 0 && animelemtime(5) <= 0
value = 211
elem = 5
ignorehitpause = 1

[State 211, Sound]
type = playsnd
trigger1 = !animtime
value = 7, 0
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 211, Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[State 211, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Far Hard Punch>========================
[Statedef 220]
type = S
physics = S
movetype = A
anim = 220
ctrl = 0
velset = 0, 0
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

[State 220, Sound]
type = playsnd
trigger1 = animelem = 5 && random < 500
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 220, Sound]
type = playsnd
trigger1 = animelem = 7
value = 1, 8
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 220, FX]
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

[State 220, Hit]
type = hitdef
trigger1 = animelem = 8
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 80, 0
dizzypoints = 200 * !map(customcombo)
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 18; + 4 * map(counterhit_buffer)
guard.hittime = (1 + 18; + 4 * map(counterhit_buffer)) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -5.77, -10.52), 0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
air.velocity = -2.78, -5.33; air reset
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8022)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 80), map(sparky) := -22
hitsound = s2, 8
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2

[State 220, Anim]
type = changeanim
trigger1 = anim = 220
trigger1 = hitpausetime = [1, 10]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(8) >= 0 && animelemtime(9) <= 0
value = 220
elem = 9
ignorehitpause = 1

[State 220, Anim]
type = changeanim
trigger1 = anim = 220
trigger1 = hitpausetime = [1, 8]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(9) >= 0 && animelemtime(10) <= 0
value = 220
elem = 10
ignorehitpause = 1

[State 220, Sound]
type = playsnd
trigger1 = !animtime
value = 7, 0
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 220, Idle]
type = statetypeset
trigger1 = animelemtime(11) >= 0
movetype = I
persistent = 0

[State 220, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Close Hard Punch>========================
[Statedef 221]
type = S
physics = S
movetype = A
anim = 221
ctrl = 0
velset = 0, 0
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

[State 221, Sound]
type = playsnd
trigger1 = (animelem = 2 || animelem = 6) && random < 500
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 221, Sound]
type = playsnd
trigger1 = animelem = 2 || animelem = 6
value = 1, 8
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 221, FX]
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

[State 221, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 40, 0
dizzypoints = 100 * !map(customcombo)
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 18; + 4 * map(counterhit_buffer)
guard.hittime = (1 + 18; + 4 * map(counterhit_buffer)) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
guard.velocity = ifelse(map(customcombo), -2.66, -4.49)
air.velocity = -2.78, -5.33; air reset
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8022)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 52), map(sparky) := -81
hitsound = s2, 8
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
forcestand = 1

[State 221, Hit]
type = hitdef
trigger1 = animelem = 7
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 50, 0
dizzypoints = 100 * !map(customcombo)
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 18; + 4 * map(counterhit_buffer)
guard.hittime = (1 + 18; + 4 * map(counterhit_buffer)) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -5.77, -10.52), 0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
air.velocity = -2.78, -5.33; air reset
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8022)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 40) * (map(sparkx.max) := 90), map(sparky) := -60
hitsound = s2, 8
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2

[State 221, Anim]
type = changeanim
trigger1 = anim = 221
trigger1 = hitpausetime = [1, 10]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
value = 221
elem = 4
ignorehitpause = 1

[State 221, Anim]
type = changeanim
trigger1 = anim = 221
trigger1 = hitpausetime = [1, 8]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(4) >= 0 && animelemtime(5) <= 0
value = 221
elem = 5
ignorehitpause = 1

[State 221, Anim]
type = changeanim
trigger1 = anim = 221
trigger1 = hitpausetime = [1, 9]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(7) >= 0 && animelemtime(8) <= 0
value = 221
elem = 8
ignorehitpause = 1

[State 221, Anim]
type = changeanim
trigger1 = anim = 221
trigger1 = hitpausetime = [1, 7]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(8) >= 0 && animelemtime(9) <= 0
value = 221
elem = 9
ignorehitpause = 1

[State 221, Sound]
type = playsnd
trigger1 = !animtime
value = 7, 0
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 221, Idle]
type = statetypeset
trigger1 = animelemtime(10) >= 0
movetype = I
persistent = 0

[State 221, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Light Kick>========================
[Statedef 230]
type = S
physics = S
movetype = A
anim = 230
ctrl = 0
velset = 0, 0
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

[State 230, Sound]
type = playsnd
trigger1 = animelem = 1 && random < 200
value = 4, ifelse(random < 500, 0, 2)
channel = 0

[State 230, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 3
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 230, Hit]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 30, 0
dizzypoints = 50 * !map(customcombo)
getpower = ifelse(movehit, 25, 50) * map(meterscaling), 25 * map(meterscaling)
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 12; + 2 * map(counterhit_buffer)
guard.hittime = (1 + 12; + 2 * map(counterhit_buffer)) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 10
guard.slidetime = 10
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
guard.velocity = ifelse(map(customcombo), -2.66, -4.49)
air.velocity = -2.78, -5.33; air reset
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 10) * (map(sparkx.max) := 58), map(sparky) := -66
hitsound = s2, 3
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2

[State 230, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State 230, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Far Medium Kick>========================
[Statedef 240]
type = S
physics = S
movetype = A
anim = 240
ctrl = 0
velset = 0, 0
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

[State 240, Sound]
type = playsnd
trigger1 = animelem = 4 && random < 350
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 240, Sound]
type = playsnd
trigger1 = animelem = 4
value = 1, 4
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 240, Hit]
type = hitdef
trigger1 = animelem = 5
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 50, 0
dizzypoints = 100 * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 15; + 3 * map(counterhit_buffer)
guard.hittime = (1 + 15; + 3 * map(counterhit_buffer)) - 6
ground.slidetime = 15
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -4.30, -7.51), 0
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
air.velocity = -2.78, -5.33; air reset
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 70), map(sparky) := -64
hitsound = s2, 4
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2

[State 240, Anim]
type = changeanim
trigger1 = anim = 240
trigger1 = hitpausetime = [1, 8]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(5) >= 0 && animelemtime(6) <= 0
value = 240
elem = 6
ignorehitpause = 1

[State 240, Pos]
type = posadd
trigger1 = animelem = 10
x = 8

[State 240, Sound]
type = playsnd
trigger1 = animelem = 10
value = 0, 103

[State 240, Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I
persistent = 0

[State 240, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Close Medium Kick>========================
[Statedef 241]
type = S
physics = S
movetype = A
anim = 241
ctrl = 0
velset = 0, 0
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

[State 241, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 241, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 4
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 241, Hit]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 50, 0
dizzypoints = 100 * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 15; + 3 * map(counterhit_buffer)
guard.hittime = (1 + 15; + 3 * map(counterhit_buffer)) - 6
ground.slidetime = 15
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -4.30, -7.51), 0
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
air.velocity = -2.78, -5.33; air reset
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 45) * (map(sparkx.max) := 68), map(sparky) := -56
hitsound = s2, 4
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2

[State 241, Anim]
type = changeanim
trigger1 = anim = 241
trigger1 = hitpausetime = [1, 7]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(2) >= 0 && animelemtime(3) <= 0
value = 241
elem = 3
ignorehitpause = 1

[State 241, Target Combo]
type = changestate
triggerall = time > 0
triggerall = prevstateno != 710
triggerall = (movecontact + movereversed) = [1, 2]
trigger1 = !AIlevel
trigger1 = map(cmd_y)
trigger1 = command != "holddown"
trigger2 = AILevel && random < 500
value = 210

[State 241, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State 241, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Far Hard Kick>========================
[Statedef 250]
type = S
physics = S
movetype = A
anim = 250
ctrl = 0
velset = 0, 0
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

[State 250, Sound]
type = playsnd
trigger1 = animelem = 4 && random < 500
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 250, Sound]
type = playsnd
trigger1 = animelem = 5
value = 1, 5
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 250, Hit]
type = hitdef
trigger1 = animelem = 6
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 75, 0
dizzypoints = 200 * !map(customcombo)
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 18; + 4 * map(counterhit_buffer)
guard.hittime = (1 + 18; + 4 * map(counterhit_buffer)) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -5.77, -10.52), 0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
air.velocity = -2.78, -5.33; air reset
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 45) * (map(sparkx.max) := 82), map(sparky) := -62
hitsound = s2, 5
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2

[State 250, Hit]
type = hitdef
trigger1 = animelem = 6
trigger1 = prevstateno = 700
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 75, 0
dizzypoints = 200 * !map(customcombo)
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 18; + 4 * map(counterhit_buffer)
guard.hittime = (1 + 18; + 4 * map(counterhit_buffer)) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = -5.30, -5.30
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
air.velocity = -5.30, -5.30
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 45) * (map(sparkx.max) := 82), map(sparky) := -62
hitsound = s2, 5
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2

[State 250, Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I
persistent = 0

[State 250, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Standing Close Hard Kick>========================
[Statedef 251]
type = S
physics = S
movetype = A
anim = 251
ctrl = 0
velset = 0, 0
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

[State 251, Sound]
type = playsnd
trigger1 = (animelem = 3 || animelem = 6) && random < 500
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 251, Sound]
type = playsnd
trigger1 = animelem = 3 || animelem = 6
value = 1, 5
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 251, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 40, 0
dizzypoints = 100 * !map(customcombo)
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 18; + 4 * map(counterhit_buffer)
guard.hittime = (1 + 18; + 4 * map(counterhit_buffer)) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
guard.velocity = ifelse(map(customcombo), -2.66, -4.49)
air.velocity = -2.78, -5.33; air reset
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 55) * (map(sparkx.max) := 92), map(sparky) := -58
hitsound = s2, 5
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2

[State 251, Hit]
type = hitdef
trigger1 = animelem = 6
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 55, 0
dizzypoints = 100 * !map(customcombo)
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 18; + 4 * map(counterhit_buffer)
guard.hittime = (1 + 18; + 4 * map(counterhit_buffer)) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -5.77, -10.52), 0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
air.velocity = -2.78, -5.33; air reset
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 55) * (map(sparkx.max) := 94), map(sparky) := -78
hitsound = s2, 5
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
forcestand = 1

[State 251, Sound]
type = playsnd
trigger1 = animelem = 12
value = 0, 52

[State 251, Dust]
type = explod
trigger1 = animelem = 12
anim = 8104
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 251, Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I
persistent = 0

[State 251, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Crouching Light Punch>========================
[Statedef 400]
type = C
physics = C
movetype = A
anim = 400
ctrl = 0
velset = 0, 0
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

[State 400, Sound]
type = playsnd
trigger1 = animelem = 1 && random < 200
value = 4, ifelse(random < 500, 0, 2)
channel = 0

[State 400, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 0
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 400, Hit]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = C, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 20, 0
dizzypoints = 50 * !map(customcombo)
getpower = ifelse(movehit, 25, 50) * map(meterscaling), 25 * map(meterscaling)
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 12; + 2 * map(counterhit_buffer)
guard.hittime = (1 + 12; + 2 * map(counterhit_buffer)) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 10
guard.slidetime = 10
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
guard.velocity = ifelse(map(customcombo), -2.66, -4.49)
air.velocity = -2.78, -5.33; air reset
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 54), map(sparky) := -40
hitsound = s2, 0
guardsound = s3, 0
guardsound.channel = 2

[State 400, Anim]
type = changeanim
trigger1 = anim = 400
trigger1 = hitpausetime = [1, 7]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(2) >= 0 && animelemtime(3) <= 0
value = 400
elem = 3
ignorehitpause = 1

[State 400, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State 400, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=======================<Crouching Medium Punch>========================
[Statedef 410]
type = C
physics = C
movetype = A
anim = 410
ctrl = 0
velset = 0, 0
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

[State 410, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 410, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 7
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 410, FX]
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

[State 410, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = C, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 55, 0
dizzypoints = 100 * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 15; + 3 * map(counterhit_buffer)
guard.hittime = (1 + 15; + 3 * map(counterhit_buffer)) - 6
ground.slidetime = 15
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -4.30, -7.51), 0
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
air.velocity = -2.78, -5.33; air reset
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8021)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 35) * (map(sparkx.max) := 74), map(sparky) := -34
hitsound = s2, 7
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2

[State 410, Anim]
type = changeanim
trigger1 = anim = 410
trigger1 = hitpausetime = [1, 9]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
value = 410
elem = 4
ignorehitpause = 1

[State 410, Anim]
type = changeanim
trigger1 = anim = 410
trigger1 = hitpausetime = [1, 7]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(4) >= 0 && animelemtime(5) <= 0
value = 410
elem = 5
ignorehitpause = 1

[State 410, Sound]
type = playsnd
trigger1 = !animtime
value = 7, 0
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 410, Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[State 410, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=======================<Crouching Hard Punch>========================
[Statedef 420]
type = C
physics = C
movetype = A
anim = 420
ctrl = 0
velset = 0, 0
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

[State 420, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 420, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 8
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 420, FX]
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

[State 420, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = C, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 70, 0
dizzypoints = 200 * !map(customcombo)
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 18; + 4 * map(counterhit_buffer)
guard.hittime = (1 + 18; + 4 * map(counterhit_buffer)) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -5.77, -10.52), 0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
air.velocity = -2.78, -5.33; air reset
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8022)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 56), map(sparky) := -58
hitsound = s2, 8
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
forcestand = 1

[State 420, Hit]
type = hitdef
trigger1 = animelem = 4
trigger1 = !movecontact && !movereversed
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = C, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 50, 0
dizzypoints = 200 * !map(customcombo)
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 18; + 4 * map(counterhit_buffer)
guard.hittime = (1 + 18; + 4 * map(counterhit_buffer)) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -5.77, -10.52), 0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
air.velocity = -2.78, -5.33; air reset
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8022)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 0) * (map(sparkx.max) := 30), map(sparky) := -106
hitsound = s2, 8
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2

[State 420, Anim]
type = changeanim
trigger1 = anim = 420
trigger1 = hitpausetime = [1, 10]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
value = 420
elem = 4
ignorehitpause = 1

[State 420, Anim]
type = changeanim
trigger1 = anim = 420
trigger1 = hitpausetime = [1, 7]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(4) >= 0 && animelemtime(5) <= 0
value = 420
elem = 5
ignorehitpause = 1

[State 420, Sound]
type = playsnd
trigger1 = animelem = 8
value = 7, 0
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 420, Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[State 420, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=======================<Rolling Hard Punch>========================
[Statedef 425]
type = C
physics = N
movetype = A
anim = 425
ctrl = 0
velset = 0, 0
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

[State 425, Vel];77.5
type = velset
trigger1 = animelem = 2
x = 3.875

[State 425, Vel]
type = velset
trigger1 = animelem = 10
x = 0

[State 425, Sound]
type = playsnd
trigger1 = animelem = 2
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 425, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 8
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 425, FX]
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

[State 425, Hit]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = C, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 70, 0
dizzypoints = 200 * !map(customcombo)
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 18; + 4 * map(counterhit_buffer)
guard.hittime = (1 + 18; + 4 * map(counterhit_buffer)) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = -10.52, 0
guard.velocity = -10.52
air.velocity = -2.78, -5.33; air reset
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8022)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := -10) * (map(sparkx.max) := 36), map(sparky) := -38
hitsound = s2, 8
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2

[State 425, Anim]
type = changeanim
trigger1 = anim = 425
trigger1 = hitpausetime > 0
trigger1 = (hitpausetime % 3) = 1
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(4) >= 0
trigger1 = animelemtime(10) < 0
value = 425
elem = animelemno(0) + 1
ignorehitpause = 1

[State 425, Sound]
type = playsnd
trigger1 = !animtime
value = 7, 0
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 425, Idle]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
persistent = 0

[State 425, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=======================<Crouching Light Kick>========================
[Statedef 430]
type = C
physics = C
movetype = A
anim = 430
ctrl = 0
velset = 0, 0
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

[State 430, Sound]
type = playsnd
trigger1 = animelem = 1 && random < 200
value = 4, ifelse(random < 500, 0, 2)
channel = 0

[State 430, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 3
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 430, Hit]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = C, NA
hitflag = MAF
guardflag = L
priority = 4, Hit
damage = 20, 0
dizzypoints = 50 * !map(customcombo)
getpower = ifelse(movehit, 25, 50) * map(meterscaling), 25 * map(meterscaling)
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 12; + 2 * map(counterhit_buffer)
guard.hittime = (1 + 12; + 2 * map(counterhit_buffer)) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 10
guard.slidetime = 10
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
guard.velocity = ifelse(map(customcombo), -2.66, -4.49)
air.velocity = -2.78, -5.33; air reset
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 56), map(sparky) := -6
hitsound = s2, 3
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2

[State 430, Anim]
type = changeanim
trigger1 = anim = 430
trigger1 = hitpausetime = [1, 6]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(2) >= 0 && animelemtime(3) <= 0
value = 430
elem = 3
ignorehitpause = 1

[State 430, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State 430, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=======================<Crouching Medium Kick>========================
[Statedef 440]
type = C
physics = C
movetype = A
anim = 440
ctrl = 0
velset = 0, 0
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

[State 440, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 440, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 4
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 440, Hit]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = C, NA
hitflag = MAF
guardflag = L
priority = 4, Hit
damage = 50, 0
dizzypoints = 100 * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 1 + 15; + 3 * map(counterhit_buffer)
guard.hittime = (1 + 15; + 3 * map(counterhit_buffer)) - 6
ground.slidetime = 15
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -4.30, -7.51), 0
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
air.velocity = -2.78, -5.33; air reset
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 64), map(sparky) := -14
hitsound = s2, 4
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2

[State 440, Anim]
type = changeanim
trigger1 = anim = 440
trigger1 = hitpausetime = [1, 6]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(2) >= 0 && animelemtime(3) <= 0
value = 440
elem = 3
ignorehitpause = 1

[State 440, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State 440, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=======================<Crouching Hard Kick>========================
[Statedef 450]
type = C
physics = C
movetype = A
anim = 450
ctrl = 0
velset = 0, 0
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

[State 450, Sound]
type = playsnd
trigger1 = animelem = 3 && random < 500
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 450, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 5
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 450, Hit]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = C, NA
hitflag = MAF
guardflag = L
priority = 4, Hit
damage = 75, 0
dizzypoints = 200 * !map(customcombo)
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Trip
air.type = Trip
ground.hittime = 1 + 18; + 4 * map(counterhit_buffer)
guard.hittime = (1 + 18; + 4 * map(counterhit_buffer)) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = -1.0, -8.0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
air.velocity = -1.0, -8.0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
yaccel = 0.695
fall = 1
fall.recover = 0
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 45) * (map(sparkx.max) := 86), map(sparky) := -28
hitsound = s2, 5
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2

[State 450, Anim]
type = changeanim
trigger1 = anim = 450
trigger1 = hitpausetime = [1, 10]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(4) >= 0 && animelemtime(5) <= 0
value = 450
elem = 5
ignorehitpause = 1

[State 450, Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[State 450, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=======================<Jumping Light Punch>========================
[Statedef 600]
type = A
physics = N
movetype = A
anim = 600
ctrl = 0
sprpriority = 2
poweradd = 0

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
trigger1 = animelem = 1 && random < 200
value = 4, ifelse(random < 500, 0, 2)
channel = 0

[State 600, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 0
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 600, Hit]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 30, 0
dizzypoints = 50 * !map(customcombo)
getpower = ifelse(movehit, 25, 50) * map(meterscaling), 25 * map(meterscaling)
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 12; + 2 * map(counterhit_buffer)
guard.hittime = (1 + 12; + 2 * map(counterhit_buffer)) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 10
guard.slidetime = 10
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
guard.velocity = ifelse(map(customcombo), -2.66, -4.49)
air.velocity = -2.78, -5.33; air reset
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 10) * (map(sparkx.max) := 36), map(sparky) := -48
hitsound = s2, 0
guardsound = s3, 0
guardsound.channel = 2

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

[State 600, Accel]
type = gravity
trigger1 = 1

[State 600, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;=======================<Jumping Medium Punch>========================
[Statedef 610]
type = A
physics = N
movetype = A
anim = 610
ctrl = 0
sprpriority = 2
poweradd = 0

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
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 610, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 7
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 610, FX]
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

[State 610, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 55, 0
dizzypoints = 100 * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 12; + 3 * map(counterhit_buffer)
guard.hittime = (1 + 12; + 3 * map(counterhit_buffer)) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
air.velocity = -2.78, -5.33; air reset
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8021)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 64), map(sparky) := -68
hitsound = s2, 7
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2

[State 610, Anim]
type = changeanim
trigger1 = anim = 610
trigger1 = hitpausetime = [1, 9]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
value = 610
elem = 4
ignorehitpause = 1

[State 610, Anim]
type = changeanim
trigger1 = anim = 610
trigger1 = hitpausetime = [1, 7]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(4) >= 0 && animelemtime(5) <= 0
value = 610
elem = 5
ignorehitpause = 1

[State 610, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[State 610, Accel]
type = gravity
trigger1 = 1

[State 610, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;=======================<Jumping Hard Punch>========================
[Statedef 620]
type = A
physics = N
movetype = A
anim = 620
ctrl = 0
sprpriority = 2
poweradd = 0

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
trigger1 = animelem = 2 && random < 500
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 620, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 8
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 620, FX]
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

[State 620, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 70, 0
dizzypoints = 200 * !map(customcombo)
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 12; + 4 * map(counterhit_buffer)
guard.hittime = (1 + 12; + 4 * map(counterhit_buffer)) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
air.velocity = -2.78, -5.33; air reset
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8022)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 56), map(sparky) := -82
hitsound = s2, 8
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2

[State 620, Hit]
type = hitdef
trigger1 = animelem = 4
trigger1 = !movecontact && !movereversed
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 50, 0
dizzypoints = 200 * !map(customcombo)
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 12; + 4 * map(counterhit_buffer)
guard.hittime = (1 + 12; + 4 * map(counterhit_buffer)) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
air.velocity = -2.78, -5.33; air reset
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8022)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 0) * (map(sparkx.max) := 30), map(sparky) := -122
hitsound = s2, 8
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2

[State 620, Anim]
type = changeanim
trigger1 = anim = 620
trigger1 = hitpausetime = [1, 10]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
value = 620
elem = 4
ignorehitpause = 1

[State 620, Anim]
type = changeanim
trigger1 = anim = 620
trigger1 = hitpausetime = [1, 7]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(4) >= 0 && animelemtime(5) <= 0
value = 620
elem = 5
ignorehitpause = 1

[State 620, Sound]
type = playsnd
trigger1 = animelem = 8
value = 7, 0
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 620, Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[State 620, Accel]
type = gravity
trigger1 = 1

[State 620, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;=======================<Jumping Light Kick>========================
[Statedef 630]
type = A
physics = N
movetype = A
anim = 630
ctrl = 0
sprpriority = 2
poweradd = 0

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
trigger1 = animelem = 1 && random < 200
value = 4, ifelse(random < 500, 0, 2)
channel = 0

[State 630, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 3
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 630, Hit]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 30, 0
dizzypoints = 50 * !map(customcombo)
getpower = ifelse(movehit, 25, 50) * map(meterscaling), 25 * map(meterscaling)
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 12; + 2 * map(counterhit_buffer)
guard.hittime = (1 + 12; + 2 * map(counterhit_buffer)) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 10
guard.slidetime = 10
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
guard.velocity = ifelse(map(customcombo), -2.66, -4.49)
air.velocity = -2.78, -5.33; air reset
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := -20) * (map(sparkx.max) := 66), map(sparky) := -44
hitsound = s2, 3
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2

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

[State 630, Accel]
type = gravity
trigger1 = 1

[State 630, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;=======================<Jumping Medium Kick>========================
[Statedef 640]
type = A
physics = N
movetype = A
anim = 640
ctrl = 0
sprpriority = 2
poweradd = 0

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
trigger1 = animelem = 2 && random < 350
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 640, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 4
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 640, Hit]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 50, 0
dizzypoints = 100 * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 12; + 3 * map(counterhit_buffer)
guard.hittime = (1 + 12; + 3 * map(counterhit_buffer)) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
air.velocity = -2.78, -5.33; air reset
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 66), map(sparky) := -44
hitsound = s2, 4
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2

[State 640, Anim]
type = changeanim
trigger1 = anim = 640
trigger1 = hitpausetime = [1, 8]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(2) >= 0 && animelemtime(3) <= 0
value = 640
elem = 3
ignorehitpause = 1

[State 640, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State 640, Accel]
type = gravity
trigger1 = 1

[State 640, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;=======================<Jumping Hard Kick>========================
[Statedef 650]
type = A
physics = N
movetype = A
anim = 650
ctrl = 0
sprpriority = 2
poweradd = 0

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
trigger1 = animelem = 2 && random < 500
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 650, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 5
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 650, Hit]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 70, 0
dizzypoints = 200 * !map(customcombo)
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 12; + 4 * map(counterhit_buffer)
guard.hittime = (1 + 12; + 4 * map(counterhit_buffer)) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
air.velocity = -2.78, -5.33; air reset
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 10) * (map(sparkx.max) := 52), map(sparky) := -36
hitsound = s2, 5
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2

[State 650, Anim]
type = changeanim
trigger1 = anim = 650
trigger1 = hitpausetime = [1, 10]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(2) >= 0 && animelemtime(3) <= 0
value = 650
elem = 3
ignorehitpause = 1

[State 650, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State 650, Accel]
type = gravity
trigger1 = 1

[State 650, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;=======================<Kamui Fumu Kesupu>========================
[Statedef 655]
type = A
physics = N
movetype = A
anim = 655
ctrl = 0
sprpriority = 2
poweradd = 0

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

[State 655, Vel]
type = velset
trigger1 = !time
trigger1 = vel y > 0
y = 0

[State 655, Sound]
type = playsnd
trigger1 = animelem = 6
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 655, Sound]
type = playsnd
trigger1 = animelem = 6
value = 1, 5
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 655, Hit]
type = hitdef
trigger1 = animelem = 7
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
ID = 655
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 70, 0
dizzypoints = 200 * !map(customcombo)
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 1 + 12; + 4 * map(counterhit_buffer)
guard.hittime = (1 + 12; + 4 * map(counterhit_buffer)) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = 0, 25
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
air.velocity = -4, 8
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 1
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 48), map(sparky) := -58
hitsound = s2, 5
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2

[State 655, Idle]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
persistent = 0

[State 655, Accel]
type = gravity
trigger1 = 1

[State 655, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;----- Target Slammed Against Ground -----
[Statedef 5980]
type = A
physics = N
movetype = H
velset = 0, 0

[State 5980, Anim]
type = changeanim
trigger1 = 1
value = ifelse(selfanimexist(5420), 5420, 5012)

[State 5980, End]
type = selfstate
trigger1 = hitshakeover
trigger1 = pos y < 0
value = 5030

[State 5980, End]
type = changestate
trigger1 = hitshakeover
trigger1 = pos y >= 0
value = 5981


[Statedef 5981]
type = L
physics = N
movetype = H
velset = 0, 0

[State 5981, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5101), 5101, 5100)

[State 5981, Pos]
type = posset
trigger1 = 1
y = 0

[State 5981, Damage]
type = hitfalldamage
trigger1 = !time

[State 5981, Shake]
type = envshake
trigger1 = !time
time = 24
freq = 180
ampl = -4
mul = 0.85

[State 5981, Sound]
type = playsnd
trigger1 = !time
value = F 7, 2

[State 5981, FX]
type = explod
trigger1 = !time
anim = F 62
postype = p1
pos = 0, 0
ownpal = 1
sprpriority = 10

[State 5981, End]
type = changestate
trigger1 = !animtime
value = 5982


[Statedef 5982]
type = L
physics = N
movetype = H

[State 5982, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5161), 5161, 5160)

[State 5982, Pos]
type = posset
trigger1 = !time
y = const(movement.down.bounce.offset.y)

[State 5982, Vel]
type = velset
trigger1 = !time
y = -3.5

[State 5982, Accel]
type = veladd
trigger1 = time > 0
y = 0.5

[State 5982, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.down.bounce.groundlevel)
value = 5110


;=======================<Mamahaha Light Punch>========================
[Statedef 670]
type = A
physics = N
movetype = A
anim = 670
ctrl = 0
sprpriority = 2
poweradd = 0

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

[State 670, timer]
type = varadd
trigger1 = time
var(46) = -1

[State 670, Vel]
type = velset
trigger1 = 1
x = 0
y = sin(gametime / 16.0 * pi) * 0.5

[State 670, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 670, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 6
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 670, FX]
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

[State 670, Hit]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 35, 0
dizzypoints = 50 * !map(customcombo)
getpower = ifelse(movehit, 25, 50) * map(meterscaling), 25 * map(meterscaling)
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 12; + 2 * map(counterhit_buffer)
guard.hittime = (1 + 12; + 2 * map(counterhit_buffer)) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 10
guard.slidetime = 10
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
guard.velocity = ifelse(map(customcombo), -2.66, -4.49)
air.velocity = -2.78, -5.33; air reset
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8020)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 64), map(sparky) := -68
hitsound = s2, 6
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2

[State 670, Anim]
type = changeanim
trigger1 = anim = 670
trigger1 = hitpausetime = [1, 8]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
value = 670
elem = 4
ignorehitpause = 1

[State 670, Anim]
type = changeanim
trigger1 = anim = 670
trigger1 = hitpausetime = [1, 6]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(4) >= 0 && animelemtime(5) <= 0
value = 670
elem = 5
ignorehitpause = 1

[State 670, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[State 670, End]
type = changestate
trigger1 = !animtime
value = 1510


;=======================<Mamahaha Medium Punch>========================
[Statedef 675]
type = A
physics = N
movetype = A
anim = 675
ctrl = 0
sprpriority = 2
poweradd = 0

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

[State 675, timer]
type = varadd
trigger1 = time
var(46) = -1

[State 675, Vel]
type = velset
trigger1 = 1
x = 0
y = sin(gametime / 16.0 * pi) * 0.5

[State 675, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 675, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 8
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 675, FX]
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

[State 675, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 55, 0
dizzypoints = 100 * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 12; + 3 * map(counterhit_buffer)
guard.hittime = (1 + 12; + 3 * map(counterhit_buffer)) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
air.velocity = -2.78, -5.33; air reset
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8021)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 50), map(sparky) := -68
hitsound = s2, 7
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2

[State 675, Anim]
type = changeanim
trigger1 = anim = 675
trigger1 = hitpausetime = [1, 8]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
value = 675
elem = 4
ignorehitpause = 1

[State 675, Anim]
type = changeanim
trigger1 = anim = 675
trigger1 = hitpausetime = [1, 6]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(4) >= 0 && animelemtime(5) <= 0
value = 675
elem = 5
ignorehitpause = 1

[State 675, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[State 675, End]
type = changestate
trigger1 = !animtime
value = 1510


;=======================<Mamahaha Hard Punch (Yatoro Pokku)>========================
[Statedef 660]
type = A
physics = N
movetype = A
anim = 660
ctrl = 0
sprpriority = 2
poweradd = 0

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

[State 660, Sound]
type = playsnd
trigger1 = time = 2 && random < 500
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 660, Sound]
type = playsnd
trigger1 = !((time -2) % 9)
value = 1, 8
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 660, Pos]
type = posadd
trigger1 = !time
y = -32

[State 660, FX]
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

[State 660, Hit]
type = hitdef
trigger1 = time = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 70, 0
dizzypoints = 200 * !map(customcombo)
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 12; + 4 * map(counterhit_buffer)
guard.hittime = (1 + 12; + 4 * map(counterhit_buffer)) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
air.velocity = -2.78, -5.33; air reset
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8022)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 40), map(sparky) := -26
hitsound = s2, 8
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2

;[State 660, Anim]
;type = changeanim
;trigger1 = anim = 660
;trigger1 = hitpausetime > 0
;trigger1 = (hitpausetime % 3) = 1
;trigger1 = movecontact = 1 || movereversed = 1
;trigger1 = animelemtime(3) >= 0
;value = 660
;elem = ifelse(animelemtime(10) >= 0, 3, animelemno(0) + 1)
;ignorehitpause = 1

[State 660, Accel]
type = veladd
trigger1 = 1
y = 0.64

[State 660, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1591


;=======================<Mamahaha Light Kick>========================
[Statedef 680]
type = A
physics = N
movetype = A
anim = 680
ctrl = 0
sprpriority = 2
poweradd = 0

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

[State 680, timer]
type = varadd
trigger1 = time
var(46) = -1

[State 680, Vel]
type = velset
trigger1 = 1
x = 0
y = sin(gametime / 16.0 * pi) * 0.5

[State 680, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 680, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 4
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 680, FX]
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

[State 680, Hit]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 30, 0
dizzypoints = 50 * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 12; + 2 * map(counterhit_buffer)
guard.hittime = (1 + 12; + 2 * map(counterhit_buffer)) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 10
guard.slidetime = 10
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
air.velocity = -2.78, -5.33; air reset
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 66), map(sparky) := -43
hitsound = s2, 4
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2

[State 680, Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I
persistent = 0

[State 680, End]
type = changestate
trigger1 = !animtime
value = 1510


;=======================<Mamahaha Medium Kick>========================
[Statedef 685]
type = A
physics = N
movetype = A
anim = 685
ctrl = 0
sprpriority = 2
poweradd = 0

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

[State 685, timer]
type = varadd
trigger1 = time
var(46) = -1

[State 685, Vel]
type = velset
trigger1 = 1
x = 0
y = sin(gametime / 16.0 * pi) * 0.5

[State 685, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 685, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 5
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 685, FX]
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

[State 685, Hit]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 50, 0
dizzypoints = 100 * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 1 + 12; + 3 * map(counterhit_buffer)
guard.hittime = (1 + 12; + 3 * map(counterhit_buffer)) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
air.velocity = -2.78, -5.33; air reset
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 52), map(sparky) := -28
hitsound = s2, 5
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2

[State 685, Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I
persistent = 0

[State 685, End]
type = changestate
trigger1 = !animtime
value = 1510


;=======================<Throw Attempt>========================
[Statedef 800]
type = S
physics = S
movetype = A
anim = 800
ctrl = 0
velset = 0, 0
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
trigger1 = animelem = 2
trigger1 = map(strength) = 0
trigger1 = !map(unthrowable) && !map(grabbehind)
trigger1 = map(truebodydistx) <= 22
ID = 800
attr = S, NT
hitflag = M
priority = 1, Miss
getpower = 0, 0
givepower = 0, 0
sparkno = -1 + (map(sparkno) := 0) * 0
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 40), map(sparky) := -50
hitsound = s2, 800
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 1
fall.recover = 0
down.recover = 1
numhits = 0
p1stateno = 810
p2stateno = 815

[State 800, Hit]
type = hitdef
trigger1 = animelem = 2
trigger1 = map(strength) = 1
trigger1 = !map(unthrowable) && !map(grabbehind)
trigger1 = map(truebodydistx) <= 22
ID = 800
attr = S, NT
hitflag = M
priority = 1, Miss
getpower = 0, 0
givepower = 0, 0
sparkno = -1 + (map(sparkno) := 0) * 0
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 40), map(sparky) := -50
hitsound = s2, 800
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 1
fall.recover = 0
down.recover = 1
numhits = 0
p1stateno = 820
p2stateno = 825

[State 800, Sound]
type = playsnd
trigger1 = animelem = 3
value = 4, 5
channel = 0

[State 800, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 0
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 800, Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I
persistent = 0

[State 800, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=======================<Guard Destroyer>========================
[Statedef 810]
type = S
physics = S
movetype = A
anim = 810
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 810, Safety]
type = changestate
trigger1 = !time
trigger1 = !numtarget
value = 0
ctrl = 1

[State 810, Tech Hit]
type = mapadd
trigger1 = time
trigger1 = map(techhit_timer) > 0
map = "techhit_timer"
value = -1

[State 810, Tech Hit]
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

[State 810, Throw]
type = targetstate
trigger1 = !time
trigger1 = numtarget
value = 815

[State 810, Throw]
type = targetfacing
trigger1 = numtarget
value = -1

[State 810, Width]
type = width
trigger1 = animelemtime(3) < 0
edge = 34, 0

[State 810, Width]
type = width
trigger1 = animelemtime(3) >= 0 && animelemtime(6) < 0
edge = 56, 0

[State 810, Bind 1]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) < 0
pos = 40, 0

[State 810, Bind 2]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 8, 0

[State 810, Bind 3]
type = targetbind
trigger1 = numtarget
trigger1 = animelem = 3
pos = 52, 0

[State 810, givepower]
type = targetpoweradd
trigger1 = numtarget
trigger1 = animelem = 3
value = 40; givepower

[State 810, getpower]
type = poweradd
trigger1 = numtarget
trigger1 = animelem = 3
value = 100 * map(meterscaling); getpower

[State 810, Damage]
type = targetlifeadd
trigger1 = numtarget
trigger1 = animelem = 3
value = floor(-40 * map(damagescaling))
dizzy = 0
kill = 0

[State 810, Hit]
type = hitadd
trigger1 = numtarget
trigger1 = animelem = 3
value = 1

[State 810, Throw]
type = targetstate
trigger1 = animelem = 3
value = 816

[State 810, sound]
type = playsnd
trigger1 = animelem = 3
value = 4, 2
channel = 0

[State 810, sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 810, Hitsound]
type = playsnd
trigger1 = numtarget
trigger1 = animelem = 3
value = 2, 3
channel = 2

[State 810, Corner Push]
type = posadd
trigger1 = numtarget(800)
trigger1 = animelemtime(3) > 0
trigger1 = target(800), stateno = 816
trigger1 = target(800), backedgedist <= 0
trigger1 = target(800), vel x < 0
x = target(800), vel x

;[State 810, Sparks]
;in ZSS

[State 810, Slash]
type = changestate
trigger1 = numtarget
trigger1 = animelemtime(3) > 0 && animelemtime(6) < 0
trigger1 = !AIlevel
trigger1 = (command = "x" || command = "y" || command = "z")
value = 830

[State 810, Sweep]
type = changestate
trigger1 = numtarget
trigger1 = animelemtime(3) > 0 && animelemtime(6) < 0
trigger1 = !AIlevel
trigger1 = (command = "a" || command = "b" || command = "c")
value = 840

[State 810, AI]
type = changestate
trigger1 = numtarget
trigger1 = animelem = 5 && AIlevel
value = ifelse(random < 333, 840, 830)

[State 810, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- Target -----
[Statedef 815]
type = A
physics = N
movetype = H
velset = 0, 0
sprpriority = 0

[State 815, Anim]
type = changeanim2
trigger1 = !time
value = 815

[State 815, Sprite Priority]
type = sprpriority
trigger1 = 1
value = ifelse(animelemtime(2) >= 0, 2, 0)

[State 815, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 1

[State 815, PalFX Off]
type = palfx
trigger1 = !time
time = 1

[State 815, End]
type = selfstate
trigger1 = time >= 120
value = 0
ctrl = 1


[Statedef 816]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 815, Anim]
type = changeanim2
trigger1 = !time
value = 816

[State 816, Vel]
type = velmul
trigger1 = 1
x = 0.95

[State 816, Vel]
type = velset
trigger1 = !time
x = -2

[State 816, Pos]
type = posset
trigger1 = !time
y = 0

[State 816, End]
type = selfstate
trigger1 = time >= 30
value = 0
ctrl = 1


;=======================<Hougekiyou>========================
[Statedef 820]
type = A
physics = N
movetype = A
anim = 820
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 820, Safety]
type = changestate
trigger1 = !time
trigger1 = !numtarget
value = 0
ctrl = 1

[State 820, Tech Hit]
type = mapadd
trigger1 = time
trigger1 = map(techhit_timer) > 0
map = "techhit_timer"
value = -1

[State 820, Tech Hit]
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

[State 820, Throw]
type = targetstate
trigger1 = !time
trigger1 = numtarget
value = 825

[State 820, Turn]
type = turn
trigger1 = animelem = 9

[State 820, Throw]
type = targetfacing
trigger1 = numtarget
trigger1 = animelemtime(9) < 0
value = -1

[State 820, Width]
type = width
trigger1 = animelemtime(6) < 0
edge = 64, 0

[State 820, Width]
type = width
trigger1 = animelemtime(6) >= 0 && animelemtime(10) < 0
edge = 32, 0

[State 820, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 820, Bind 1]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(5) < 0
pos = 42 + target, const(size.ground.front), 0

[State 820, Bind 6]
type = bindtotarget
trigger1 = numtarget
trigger1 = animelemtime(6) >= 0 && animelemtime(7) < 0
pos = 0, target, const(size.mid.pos.y)

[State 820, Bind 7]
type = bindtotarget
trigger1 = numtarget
trigger1 = animelemtime(7) >= 0 && animelemtime(10) < 0
pos = 0, ceil((target, const(size.mid.pos.y) + target, const(size.head.pos.y)) / 2)
;pos = target, const(size.ground.front), y

[State 820, Damage]
type = targetlifeadd
trigger1 = numtarget
trigger1 = animelem = 3
value = floor(-60 * map(damagescaling))
dizzy = 0
kill = 0

[State 820, Damage]
type = targetlifeadd
trigger1 = numtarget
trigger1 = animelem = 10
value = floor(-50 * map(damagescaling))
dizzy = 0
kill = 1

[State 820, Stun Damage]
type = targetdizzypointsadd
trigger1 = numtarget
trigger1 = animelem = 10
value = floor(-120 * map(damagescaling)) * !map(customcombo)

[State 820, givepower]
type = targetpoweradd
trigger1 = numtarget
trigger1 = animelem = 10
value = 40; givepower

[State 820, getpower]
type = poweradd
trigger1 = numtarget
trigger1 = animelem = 10
value = 100 * map(meterscaling); getpower

[State 820, Hit]
type = hitadd
trigger1 = numtarget
trigger1 = animelem = 3 || animelem = 10
value = 1

[State 820, Throw]
type = targetstate
trigger1 = animelem = 10
value = 826

[State 820, whiffsound]
type = playsnd
trigger1 = numtarget
trigger1 = animelem = 3 || animelem = 10
value = 1, 5
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 820, Hitsound]
type = playsnd
trigger1 = numtarget
trigger1 = animelem = 3 || animelem = 10
value = 2, ifelse((animelem = 3), 4, 5)
channel = 2

;[State 820, Sparks]
;in ZSS

[State 820, Sound]
type = playsnd
trigger1 = animelem = 3
value = 4, 2
channel = 0

[State 820, Sound]
type = playsnd
trigger1 = animelem = 9
value = 4, 1
channel = 0

[State 820, End]
type = changestate
trigger1 = animelemtime(10) = 1
value = 821


;----- Jump back -----
[Statedef 821]
type = A
physics = N
movetype = A
sprpriority = 2

[State 821, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 821, Accel]
type = veladd
trigger1 = 1
y = 0.8

[State 821, Vel]
type = velset
trigger1 = !time
x = -2.0
y = -8.0

[State 821, End]
type = changestate
trigger1 = vel y > 0
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 822


;----- Land -----
[Statedef 822]
type = S
physics = N
movetype = I
anim = 822
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1

[State 822, Pos]
type = posset
trigger1 = 1
y = 0

[State 822, Sound]
type = playsnd
trigger1 = !time
value = 0, 52

[State 822, Dust]
type = explod
trigger1 = !time
anim = 8104
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 822, End]
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
sprpriority = 0

[State 825, Anim]
type = changeanim2
trigger1 = !time
value = 825

[State 825, PalFX Off]
type = palfx
trigger1 = !time
time = 1

[State 825, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 1

[State 825, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 826]
type = L
physics = N
movetype = H
velset = 0, 0

[State 826, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5101), 5101, 5100)

[State 826, Pos]
type = posset
trigger1 = 1
y = 0

[State 826, Shake]
type = envshake
trigger1 = !time
time = 24
freq = 180
ampl = -4
mul = 0.85

[State 826, Sound]
type = playsnd
trigger1 = !time
value = F 7, 1

[State 826, FX]
type = explod
trigger1 = !time
anim = F 61
postype = p1
pos = 0, 0
ownpal = 1
sprpriority = -3

[State 826, End]
type = changestate
trigger1 = !animtime
value = 827


[Statedef 827]
type = L
physics = N
movetype = H

[State 827, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5161), 5161, 5160)

[State 827, Pos]
type = posset
trigger1 = !time
y = const(movement.down.bounce.offset.y)

[State 827, Vel]
type = velset
trigger1 = !time
x = 2.5
y = -4.5

[State 827, Accel]
type = veladd
trigger1 = time > 0
y = 0.6

[State 827, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.down.bounce.groundlevel)
value = 5110


;=======================<Slash>========================
[Statedef 830]
type = S
physics = N
movetype = A
anim = 830
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 830, Tech Hit]
type = mapadd
trigger1 = time
trigger1 = map(techhit_timer) > 0
map = "techhit_timer"
value = -1

[State 830, Tech Hit]
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

[State 830, Width]
type = width
trigger1 = animelemtime(8) >= 0 && animelemtime(11) < 0
edge = 64, 0

[State 830, Damage]
type = targetlifeadd
trigger1 = numtarget
trigger1 = animelem = 8
value = floor(-80 * map(damagescaling))
dizzy = 0
kill = 1

[State 830, Stun Damage]
type = targetdizzypointsadd
trigger1 = numtarget
trigger1 = animelem = 8
value = floor(-120 * map(damagescaling)) * !map(customcombo)

[State 830, Hit]
type = hitadd
trigger1 = numtarget
trigger1 = animelem = 8
value = 1

[State 830, Throw]
type = targetstate
trigger1 = animelem = 8
value = 835

[State 830, FX]
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

[State 830, whiffsound]
type = playsnd
trigger1 = numtarget
trigger1 = animelem = 7
value = 1, 8
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 830, Hitsound]
type = playsnd
trigger1 = numtarget
trigger1 = animelem = 8
value = 2, 8
channel = 2

;[State 830, Sparks]
;in ZSS

;[State 830, Blood]
;in ZSS

[State 830, Pause]
type = changeanim
trigger1 = numtarget
trigger1 = animelemtime(10) >= 0 && animelemtime(11) < 0
trigger1 = time < 60 && target, stateno = 835
value = 830
elem = 10

[State 830, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- Target -----
[Statedef 835]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 835, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 835, Anim]
type = changeanim
trigger1 = 1
value = 5012

[State 835, End]
type = changestate
trigger1 = time >= 12
value = 836


[Statedef 836]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 836, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 836, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5035), 5035, 5050)

[State 836, Anim]
type = changeanim
trigger1 = anim = 5035
trigger1 = !animtime
value = 5050

[State 836, Accel]
type = veladd
trigger1 = 1
y = 0.4850; yaccel

[State 836, Vel]
type = velset
trigger1 = !time
x = -5
y = -4

[State 836, Dizzy Start]
type = dizzyset
trigger1 = alive
trigger1 = life > 0
trigger1 = dizzypoints <= 0
trigger1 = !gethitvar(isbound)
value = 1

[State 836, Fall Recovery]
type = selfstate
trigger1 = alive = 1 && dizzy = 0 && dizzypoints > 0
trigger1 = gethitvar(fall.recover)
trigger1 = command = "recovery"
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 836, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 25
value = 5100


;=======================<Sweep>========================
[Statedef 840]
type = S
physics = N
movetype = A
anim = 840
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 840, Tech Hit]
type = mapadd
trigger1 = time
trigger1 = map(techhit_timer) > 0
map = "techhit_timer"
value = -1

[State 840, Tech Hit]
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

[State 840, Width]
type = width
trigger1 = animelemtime(4) >= 0 && animelemtime(6) < 0
edge = 84, 0

[State 840, Damage]
type = targetlifeadd
trigger1 = numtarget
trigger1 = animelem = 4
value = floor(-80 * map(damagescaling))
dizzy = 0
kill = 1

[State 840, Stun Damage]
type = targetdizzypointsadd
trigger1 = numtarget
trigger1 = animelem = 4
value = floor(-120 * map(damagescaling)) * !map(customcombo)

[State 840, Hit]
type = hitadd
trigger1 = numtarget
trigger1 = animelem = 4
value = 1

[State 840, Throw]
type = targetstate
trigger1 = animelem = 4
value = 845

[State 840, whiffsound]
type = playsnd
trigger1 = numtarget
trigger1 = animelem = 2
value = 1, 5
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 840, Hitsound]
type = playsnd
trigger1 = numtarget
trigger1 = animelem = 4
value = 2, 5
channel = 2

;[State 840, Sparks]
;in ZSS

[State 840, Pause]
type = changeanim
trigger1 = numtarget
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
trigger1 = time < 60 && target, stateno = 845
value = 840
elem = 5

[State 840, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- Target -----
[Statedef 845]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 845, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 845, Anim]
type = changeanim
trigger1 = 1
value = 5070

[State 845, End]
type = changestate
trigger1 = time >= 12
value = 846


[Statedef 846]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 846, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 846, Accel]
type = veladd
trigger1 = 1
y = 0.4850; yaccel

[State 846, Vel]
type = velset
trigger1 = !time
x = -1
y = -8

[State 846, Dizzy Start]
type = dizzyset
trigger1 = alive
trigger1 = life > 0
trigger1 = dizzypoints <= 0
trigger1 = !gethitvar(isbound)
value = 1

[State 846, Fall Recovery]
type = selfstate
trigger1 = alive = 1 && dizzy = 0 && dizzypoints > 0
trigger1 = gethitvar(fall.recover)
trigger1 = command = "recovery"
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 846, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 25
value = 5110


;=======================<Air Throw Attempt>========================
[Statedef 850]
type = A
physics = N
movetype = A
anim = 850
ctrl = 0
sprpriority = 2
poweradd = 0

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

[State 850, No proximity block]
type = attackdist
trigger1 = 1
value = 0

[State 850, Hit]
type = hitdef
trigger1 = animelem = 2
trigger1 = !map(unthrowable) && !map(grabbehind)
trigger1 = map(truebodydistx) <= (37 - const(size.air.front))
trigger1 = p2dist y = [-42, 38]
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = A, NT
hitflag = AF
priority = 1, Miss
getpower = 0, 0
givepower = 0, 0
sparkno = -1 + (map(sparkno) := 0) * 0
guard.sparkno = -1 + (map(guard.sparkno) := 0) * 0
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 40), map(sparky) := -50
hitsound = s2, 800
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 1
fall.recover = 0
down.recover = 1
numhits = 0
p1stateno = 860
p2stateno = 865

[State 850, Sound]
type = playsnd
trigger1 = animelem = 3
value = 4, 5
channel = 0

[State 850, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 0
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 850, Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I
persistent = 0

[State 850, Accel]
type = gravity
trigger1 = 1

[State 850, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;=======================<Rera Kishima Tek>========================
[Statedef 860]
type = A
physics = N
movetype = A
anim = 860
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 860, Throw]
type = targetstate
trigger1 = !time
trigger1 = numtarget
value = 865

[State 860, Throw]
type = targetfacing
trigger1 = animelemtime(3) < 0
value = -1

[State 860, Width]
type = width
trigger1 = 1
edge = 48, 24

[State 860, Bind 1]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) < 0
pos = 40, -64

[State 860, Bind 2]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = -2, -38

[State 860, Bind 3]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = -28, -50

[State 860, Bind 4]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = -2, -86

[State 860, Bind 5]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
pos = 40, -64

[State 860, Bind 6]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(6) >= 0 && animelemtime(7) < 0
pos = 12, -20

[State 860, Bind 7]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(7) >= 0
pos = 6, -16

[State 860, sound]
type = playsnd
trigger1 = animelem = 7
value = 4, 0
channel = 0

[State 860, sound]
type = playsnd
trigger1 = animelem = 2 || animelem = 7
value = 1, 5
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 860, Accel]
type = veladd
trigger1 = animelemtime(7) >= 0
y = 0.5

[State 860, Vel]
type = velset
trigger1 = animelem = 7
y = 8

[State 860, End]
type = changestate
trigger1 = vel y > 0
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 861


;----- Hit Ground -----
[Statedef 861]
type = A
physics = N
movetype = A
anim = 861
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 861, Throw]
type = targetstate
trigger1 = !time
trigger1 = numtarget
value = 866

[State 861, Throw]
type = targetfacing
trigger1 = time <= 1
value = -1

[State 861, Width]
type = width
trigger1 = 1
edge = 48, 0

[State 861, Pos]
type = posset
trigger1 = !time
y = 0

[State 861, Bind 1]
type = targetbind
trigger1 = !time
trigger1 = numtarget
pos = 6, 0

[State 861, Damage]
type = targetlifeadd
trigger1 = !time
trigger1 = numtarget
value = floor(-120 * map(damagescaling))
dizzy = 0

[State 861, Stun Damage]
type = targetdizzypointsadd
trigger1 = !time
trigger1 = numtarget
value = floor(-150 * map(damagescaling)) * !map(customcombo)

[State 861, givepower]
type = targetpoweradd
trigger1 = !time
trigger1 = numtarget
value = 40; givepower

[State 861, getpower]
type = poweradd
trigger1 = !time
trigger1 = numtarget
value = 100 * map(meterscaling); getpower

[State 861, Shake]
type = envshake
trigger1 = !time
time = 24
freq = 180
ampl = -4
mul = 0.85

[State 861, FX]
type = playsnd
trigger1 = !time
value = 7, 11

[State 861, Dust]
type = helper
trigger1 = map(cfg_sparks)
trigger1 = !time
helpertype = normal
stateno = 8110
ID = 8110
name = "Impact Dust"
postype = p1
pos = 0, -pos y
ownpal = 1

[State 861, Dust]
type = explod
trigger1 = !map(cfg_sparks)
trigger1 = !time
anim = F 62
postype = p1
pos = 0, -pos y
sprpriority = -10
ownpal = 1

[State 861, Throw]
type = targetstate
trigger1 = animelem = 2
value = 867

[State 861, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0
y = 0.375

[State 861, Vel]
type = velset
trigger1 = animelem = 2
x = -4
y = -4.4375

[State 861, End]
type = changestate
trigger1 = animelemtime(2) >= 0
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 862


;----- Land -----
[Statedef 862]
type = S
physics = N
movetype = I
anim = 47
ctrl = 1
velset = 0, 0
sprpriority = 2

[State 862, Pos]
type = posset
trigger1 = 1
y = 0

[State 862, Sound]
type = playsnd
trigger1 = !time
value = 0, 52

[State 862, Dust]
type = explod
trigger1 = !time
anim = 8104
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 862, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- TARGET -----
[Statedef 865]
type = A
physics = N
movetype = H
velset = 0, 0
sprpriority = 0

[State 865, Anim]
type = changeanim2
trigger1 = !time
value = 865

[State 865, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 865, PalFX Off]
type = palfx
trigger1 = !time
time = 1

[State 865, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 866]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 866, Anim]
type = changeanim2
trigger1 = !time
value = 866

[State 866, End]
type = selfstate
trigger1 = time >= 30
value = 5110


[Statedef 867]
type = L
physics = N
movetype = H
ctrl = 0
anim = 5160
velset = 0, 0
sprpriority = 0

[State 867, Accel]
type = veladd
trigger1 = 1
y = 0.4850; yaccel

[State 867, Vel]
type = velset
trigger1 = !time
x = -2
y = -3.25

[State 867, Dizzy Start]
type = dizzyset
trigger1 = alive
trigger1 = life > 0
trigger1 = dizzypoints <= 0
trigger1 = !gethitvar(isbound)
value = 1

[State 867, Fall Recovery]
type = selfstate
trigger1 = alive = 1 && dizzy = 0 && dizzypoints > 0
trigger1 = gethitvar(fall.recover)
trigger1 = command = "recovery"
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 867, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 5110


;=======================<Target Escaped>========================
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
trigger1 = animelem = 2
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
