; ______________________________
;| Ryu by Phantom.of.the.Server |
; 
;
;NORMAL STATES==
;

;Standing Far Light Punch=
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
trigger1 = time = 1 && random < 200
value = ifelse(var(1) = 2, 13, 3), 0 + (random % 3)
channel = 0

[State 200, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 1
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 200, Hit]
type = hitdef
trigger1 = animelem = 2
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
sparkxy = -10 + 0 * (map(sparkx.min) := 25) * (map(sparkx.max) := 66), map(sparky) := -85
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
yaccel = 0.4850
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 200, Anim]
type = assertspecial
trigger1 = anim = 200
trigger1 = hitpausetime > 0
trigger1 = animelemtime(2) >= 1 && animelemtime(3) <= 0
flag = animatehitpause
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I
persistent = 0

[State 200, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;Standing Close Light Punch=
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
trigger1 = time = 1 && random < 200
value = ifelse(var(1) = 2, 13, 3), 0 + (random % 3)
channel = 0

[State 201, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 1
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 201, Hit]
type = hitdef
trigger1 = animelem = 2
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
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 40), map(sparky) := -95
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
yaccel = 0.4850
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 201, Anim]
type = assertspecial
trigger1 = anim = 201
trigger1 = hitpausetime > 0
trigger1 = animelemtime(2) >= 1 && animelemtime(3) <= 0
flag = animatehitpause
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


;Standing Far Medium Punch=
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
trigger1 = time = 1 && random < 350
value = ifelse(var(1) = 2, 13, 3), 3 + (random % 3)
channel = 0

[State 210, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 210, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, NA
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
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 73), map(sparky) := -79
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
yaccel = 0.4850
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 210, Anim]
type = assertspecial
trigger1 = anim = 210
trigger1 = hitpausetime > 0
trigger1 = animelemtime(3) >= 1 && animelemtime(4) <= 0
flag = animatehitpause
ignorehitpause = 1

[State 210, Kikoku Tsuki]
type = changestate
trigger1 = !AIlevel
trigger1 = var(1) = 2
trigger1 = (movecontact + movereversed) = [1, 2]
trigger1 = map(cmd_z)
trigger1 = command != "holddown"
value = 227

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


;Standing Close Medium Punch=
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
trigger1 = time = 1 && random < 350
value = ifelse(var(1) = 2, 13, 3), 3 + (random % 3)
channel = 0

[State 211, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 211, Hit]
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
sparkxy = -10 + 0 * (map(sparkx.min) := 35) * (map(sparkx.max) := 62), map(sparky) := -76
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
yaccel = 0.4850
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 211, Ryu Target Combo]
type = changestate
triggerall = var(1) = 1
triggerall = prevstateno != 710
triggerall = (movecontact + movereversed) = [1, 2]
trigger1 = !AIlevel
trigger1 = map(cmd_c)
trigger1 = command != "holddown"
trigger2 = AILevel
trigger2 = movehit
trigger2 = p2statetype = S
trigger2 = stagefrontedgedist <= 160
trigger2 = random < 500
value = 255

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


;Standing Close Medium Punch - Evil Ryu=
[Statedef 212]
type = S
movetype = A
physics = S
anim = 212
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

[State 212, Sound]
type = playsnd
trigger1 = time = 1 && random < 350
value = ifelse(var(1) = 2, 13, 3), 3 + (random % 3)
channel = 0

[State 212, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 212, Hit]
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
sparkxy = -10 + 0 * (map(sparkx.min) := 40) * (map(sparkx.max) := 64), map(sparky) := -61
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
yaccel = 0.4850
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 212, Anim]
type = assertspecial
trigger1 = anim = 212
trigger1 = hitpausetime > 0
trigger1 = animelemtime(3) >= 1 && animelemtime(4) <= 0
flag = animatehitpause
ignorehitpause = 1

[State 212, Kikoku Tsuki]
type = changestate
trigger1 = !AIlevel
trigger1 = var(1) = 2
trigger1 = (movecontact + movereversed) = [1, 2]
trigger1 = map(cmd_z)
trigger1 = command != "holddown"
value = 227

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State 212, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;Sakotsu Wari=
[Statedef 215]
type = S
movetype = A
physics = S
anim = 215
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

[State 215, Sound]
type = playsnd
trigger1 = animelem = 5
value = ifelse(var(1) = 2, 13, 3), 3 + (random % 3)
channel = 0

[State 215, Sound]
type = playsnd
trigger1 = animelem = 6
value = 1, 3
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 215, Hit 1]
type = hitdef
trigger1 = animelem = 6
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, NA
damage = 30, 0
dizzypoints = 50 * !map(customcombo)
animtype = Medium
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = H
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 35) * (map(sparkx.max) := 50), map(sparky) := -80
hitsound = s2, 2
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 15
guard.hittime = (1 + 15) - 6
ground.slidetime = 15
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.type = Low
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
yaccel = 0.4850
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 215, Hit 2]
type = hitdef
trigger1 = animelem = 7
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, NA
damage = 50, 0
dizzypoints = 50 * !map(customcombo)
animtype = Medium
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = H
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 50) * (map(sparkx.max) := 71), map(sparky) := -39
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
yaccel = 0.4850
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State Idle]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
persistent = 0

[State 215, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;Standing Far Hard Punch=
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
trigger1 = time = 1 && random < 500
value = ifelse(var(1) = 2, 13, 3), 6 + (random % 3)
channel = 0

[State 220, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 3
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 220, Hit]
type = hitdef
trigger1 = animelem = 4
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
yaccel = 0.4850
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 220, Hit]
type = hitdef
trigger1 = animelem = 4
trigger1 = prevstateno = 710
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
fall = 1
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
yaccel = 0.4850
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120

[State 220, Anim]
type = assertspecial
trigger1 = anim = 220
trigger1 = hitpausetime > 0
trigger1 = animelemtime(4) >= 1 && animelemtime(6) <= 0
flag = animatehitpause
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[State 220, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;Standing Close Hard Punch=
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
trigger1 = time = 1 && random < 500
value = ifelse(var(1) = 2, 13, 3), 6 + (random % 3)
channel = 0

[State 221, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 3
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

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
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 52), map(sparky) := -78
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
yaccel = 0.4850
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)
forcestand = 1

[State 221, Hit]
type = hitdef
trigger1 = animelem = 4
trigger1 = !movecontact && !movereversed
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, NA
damage = 80, 0
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
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 40), map(sparky) := -119
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
yaccel = 0.4850
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 221, Anim]
type = assertspecial
trigger1 = anim = 221
trigger1 = hitpausetime > 0
trigger1 = animelemtime(4) >= 1 && animelemtime(6) <= 0
flag = animatehitpause
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[State 221, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;Standing Far Hard Punch - Evil Ryu=
[Statedef 222]
type = S
movetype = A
physics = S
anim = 222
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

[State 222, Sound]
type = playsnd
trigger1 = time = 1 && random < 500
value = ifelse(var(1) = 2, 13, 3), 6 + (random % 3)
channel = 0

[State 222, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 3
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 222, Hit]
type = hitdef
trigger1 = animelem = 4
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
sparkxy = -10 + 0 * (map(sparkx.min) := 45) * (map(sparkx.max) := 90), map(sparky) := -67
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
yaccel = 0.4850
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 222, Hit]
type = hitdef
trigger1 = animelem = 4
trigger1 = prevstateno = 710
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
sparkxy = -10 + 0 * (map(sparkx.min) := 45) * (map(sparkx.max) := 90), map(sparky) := -67
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
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
fall = 1
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
yaccel = 0.4850
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120

[State 222, Anim]
type = assertspecial
trigger1 = anim = 222
trigger1 = hitpausetime > 0
trigger1 = animelemtime(4) >= 1 && animelemtime(5) <= 0
flag = animatehitpause
ignorehitpause = 1

[State 222, Evil Ryu Target Combo]
type = changestate
triggerall = var(1) = 2
triggerall = prevstateno != 710
triggerall = (movecontact + movereversed) = [1, 2]
trigger1 = !AIlevel
trigger1 = map(cmd_c)
trigger1 = command != "holddown"
trigger2 = AILevel
trigger2 = p2statetype = S
trigger2 = abs(p2bodydist x) < 40
trigger2 = random < 500
value = 256

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[State 222, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;Kyuubi Kudaki=
[Statedef 225]
type = S
movetype = A
physics = S
anim = 225
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

[State 225, Sound]
type = playsnd
trigger1 = animelem = 4
value = 3, 5
channel = 0

[State 225, Sound]
type = playsnd
trigger1 = animelem = 5
value = 1, 3
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 225, Width Fix]
type = width
trigger1 = animelemtime(2) >= 0 && animelemtime(11) < 0
edge = 0, 20

[State 225, Width Fix]
type = width
trigger1 = animelemtime(11) >= 0 && animelemtime(12) < 0
edge = 0, 10

[State 225, Pos]
type = posadd
trigger1 = animelem = 2
x = 20

[State 225, Pos]
type = posadd
trigger1 = animelem = 11 || animelem = 12
x = -10

[State 225, Vel]
type = velset
trigger1 = animelemtime(5) >= 0 && animelemtime(6) <= 0
x = 6

[State 225, Hit]
type = hitdef
trigger1 = animelem = 7
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, NA
damage = 40, 0
dizzypoints = 50 * !map(customcombo)
animtype = Medium
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 8, 8
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 55), map(sparky) := -60
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 12
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
yaccel = 0.4850
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 225, Hit]
type = hitdef
trigger1 = animelem = 8
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, NA
damage = 40, 0
dizzypoints = 50 * !map(customcombo)
animtype = Hard
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 8, 8
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 55), map(sparky) := -60
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 12
ground.velocity = ifelse(map(customcombo), -2.66, -3.49), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
yaccel = 0.4850
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State Idle]
type = statetypeset
trigger1 = animelemtime(9) >= 0
movetype = I
persistent = 0

[State 225, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;Kikoku Tsuki=
[Statedef 227]
type = S
movetype = A
physics = S
anim = 222
velset = 0, 0
poweradd = 0
sprpriority = 2
ctrl = 0
facep2 = 0

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

[State 227, Sound]
type = playsnd
trigger1 = animelem = 3
value = ifelse(var(1) = 2, 13, 3), 6 + (random % 3)
channel = 0

[State 227, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 3
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 227, Hit]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, NA
damage = 60, 0
dizzypoints = 100 * !map(customcombo)
animtype = Hard
air.animtype = Diagup
fall.animtype = Diagup
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 45) * (map(sparkx.max) := 90), map(sparky) := -67
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -4, -6
air.type = Low
air.hittime = 120
air.velocity = -4, -6
air.cornerpush.veloff = 0
fall = 1
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
guard.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
yaccel = 0.4850
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120

[State 227, Evil Ryu Target Combo]
type = changestate
triggerall = var(1) = 2
triggerall = prevstateno != 710
triggerall = (movecontact + movereversed) = [1, 2]
trigger1 = !AIlevel
trigger1 = map(cmd_c)
trigger1 = command != "holddown"
trigger2 = AILevel
trigger2 = p2, hitfall
trigger2 = abs(p2bodydist x) < 40
trigger2 = random < 500
value = 256

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[State 227, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;Seichuu Nidan Tsuki=
[Statedef 226]
type = S
movetype = A
physics = S
anim = 226
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

[State 226, Sound]
type = playsnd
trigger1 = animelem = 2
value = ifelse(var(1) = 2, 13, 3), 6 + (random % 3)
channel = 0

[State 226, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 3
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 226, Vel]
type = velset
trigger1 = animelem = 3
x = ifelse(map(customcombo), 6, 8)

[State 226, Vel]
type = velset
trigger1 = animelem = 5
x = 0

[State 226, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, NA
damage = 40, 0
dizzypoints = 100 * !map(customcombo)
animtype = Hard
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 8, 8
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 25) * (map(sparkx.max) := 35), map(sparky) := -50
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -4.49, 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
yaccel = 0.4850
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 226, Hit]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, NA
damage = 60, 0
dizzypoints = 100 * !map(customcombo)
animtype = Hard
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 40) * (map(sparkx.max) := 65), map(sparky) := -62
hitsound = s2, 3
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
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
yaccel = 0.4850
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[State 226, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;Standing Light Kick=
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
trigger1 = time = 1 && random < 200
value = ifelse(var(1) = 2, 13, 3), 0 + (random % 3)
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
sparkxy = -10 + 0 * (map(sparkx.min) := 40) * (map(sparkx.max) := 76), map(sparky) := -34
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
yaccel = 0.4850
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 230, Anim]
type = assertspecial
trigger1 = anim = 230
trigger1 = hitpausetime > 0
trigger1 = animelemtime(3) >= 1 && animelemtime(4) <= 0
flag = animatehitpause
ignorehitpause = 1

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


;Standing Far Medium Kick=
[Statedef 240]
type = S
movetype = A
physics = S
anim = 242
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

[State 240, Pos]
type = posadd
trigger1 = animelem = 1
x = 6

[State 240, Sound]
type = playsnd
trigger1 = animelem = 2
trigger1 = random < 350
value = ifelse(var(1) = 2, 13, 3), 3 + (random % 3)
channel = 0

[State 240, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 4
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 240, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, NA
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
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 70), map(sparky) := -58
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
yaccel = 0.4850
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 240, Anim]
type = assertspecial
trigger1 = anim = 242
trigger1 = hitpausetime > 0
trigger1 = animelemtime(3) >= 1 && animelemtime(4) <= 0
flag = animatehitpause
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State 240, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;Standing Close Medium Kick=
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
trigger1 = time = 1 && random < 350
value = ifelse(var(1) = 2, 13, 3), 3 + (random % 3)
channel = 0

[State 241, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 4
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 241, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, NA
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
sparkxy = -10 + 0 * (map(sparkx.min) := 40) * (map(sparkx.max) := 68), map(sparky) := -78
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
yaccel = 0.4850
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)
forcestand = 1

[State 241, Anim]
type = assertspecial
trigger1 = anim = 241
trigger1 = hitpausetime > 0
trigger1 = animelemtime(3) >= 1 && animelemtime(4) <= 0
flag = animatehitpause
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State 241, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;SENPUU KYAKU=
[Statedef 245]
type = S
movetype = A
physics = S
anim = 245
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

[State 245, Sound]
type = playsnd
trigger1 = animelem = 2
value = 0, 40

[State 245, Dust]
type = helper
trigger1 = animelem = 2
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 245, Sound]
type = playsnd
trigger1 = animelem = 4
value = ifelse(var(1) = 2, 13, 3), 3 + (random % 3)
channel = 0

[State 245, Sound]
type = playsnd
trigger1 = animelem = 5
value = 1, 6
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 245, Accel]
type = veladd
trigger1 = animelemtime(2) >= 1
y = 0.617

[State 245, Vel]
type = velset
trigger1 = animelemtime(2) = 1
x = 3.50
y = -5.25

;[State 245, Variable Height]
;type = playerpush
;trigger1 = p2statetype != L
;value = 1
;ignorehitpause = 1

[State 245, Type]
type = statetypeset
trigger1 = animelem = 2
statetype = A
physics = N

[State 245, Hit]
type = hitdef
trigger1 = animelem = 7
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = A, NA
damage = 70, 0
dizzypoints = 100 * !map(customcombo)
animtype = Medium
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = MA
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 62), map(sparky) := -62
hitsound = s2, 6
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
yaccel = 0.4850
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State Idle]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
persistent = 0

[State 245, End]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 246


;---Land---
[Statedef 246]
type = S
physics = S
movetype = I
anim = 246
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 246, Pos]
type = posset
trigger1 = 1
y = 0

[State 246, Sound]
type = playsnd
trigger1 = !time
value = 0, 52

[State 246, Dust]
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

[State 246, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;Standing Far Hard Kick=
[Statedef 250]
type = S
movetype = A
physics = S
anim = 250
velset = 0, 0
poweradd = 0
sprpriority = -1
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

[State 250, Sprite Priority]
type = sprpriority
trigger1 = animelem = 6
value = 2

[State 250, Sound]
type = playsnd
trigger1 = time = 1 && random < 500
value = ifelse(var(1) = 2, 13, 3), 6 + (random % 3)
channel = 0

[State 250, Sound]
type = playsnd
trigger1 = animelem = 4
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
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 82), map(sparky) := -92
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
yaccel = 0.4850
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 250, Anim]
type = assertspecial
trigger1 = anim = 250
trigger1 = hitpausetime > 0
trigger1 = animelemtime(4) >= 1 && animelemtime(5) <= 0
flag = animatehitpause
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


;Standing Close Hard Kick=
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
trigger1 = time = 1 && random < 500
value = ifelse(var(1) = 2, 13, 3), 6 + (random % 3)
channel = 0

[State 251, Sound]
type = playsnd
trigger1 = animelem = 2 || animelem = 5
value = 1, 6
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 251, Hit]
type = hitdef
trigger1 = animelem = 3
trigger1 = prevstateno != 240 || var(1) != 1 || map(customcombo)
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, NA
damage = 40, 0
dizzypoints = 100 * !map(customcombo)
animtype = Hard
air.animtype = Back
fall.animtype = Back
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 12, 12;8, 8
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 40), map(sparky) := -103
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = ifelse(map(customcombo), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.hittime = 120
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
yaccel = 0.4850
p1sprpriority = sprpriority
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 251, Hit]
type = hitdef
trigger1 = animelem = 5
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := (1 + hitcount))
attr = S, NA
damage = 40, 0
dizzypoints = 100 * !map(customcombo)
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 45) * (map(sparkx.max) := 90), map(sparky) := -72
hitsound = s2, 6
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
air.velocity = -8, 8
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
yaccel = 0.4850
p1sprpriority = sprpriority
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = 1
down.bounce = 1
fall.xvelocity = -2.5
fall.yvelocity = -3.5

[State 251, Anim]
type = assertspecial
trigger1 = anim = 251
trigger1 = hitpausetime > 0
trigger1 = animelemtime(3) >= 1 && animelemtime(4) <= 0
flag = animatehitpause
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I
persistent = 0

[State 251, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;Ryu Target Combo=
[Statedef 255]
type = S
movetype = A
physics = S
anim = 255
velset = 0, 0
poweradd = 0
sprpriority = 2
ctrl = 0
facep2 = 0

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

[State 255, Pos]
type = posadd
trigger1 = animelem = 1
trigger1 = prevstateno = 210 || prevstateno = 211
x = 24 * const(size.xscale)

[State 255, Pos]
type = posadd
trigger1 = animelem = 2
x = 12 * const(size.xscale)

[State 255, Pos]
type = posadd
trigger1 = animelem = 3
x = 12 * const(size.xscale)

[State 255, Pos]
type = posadd
trigger1 = animelem = 10
x = 9 * const(size.xscale)

[State 255, Pos]
type = posadd
trigger1 = !animtime
x = 12 * const(size.xscale)

[State 255, Sound]
type = playsnd
trigger1 = animelem = 4
value = ifelse(var(1) = 2, 13, 3), 6 + (random % 3)
channel = 0

[State 255, Sound]
type = playsnd
trigger1 = animelem = 5
value = 1, 6
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 255, Hit]
type = hitdef
trigger1 = animelem = 6
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 60, 0
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
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -4.0, -7.5
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -4.0, -7.5
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 1
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 10) * (map(sparkx.max) := 55), map(sparky) := -92
forcestand = 1

[State 255, Juggle Reset]
type = mapset
trigger1 = !map(jugglereset)
trigger1 = map(juggle_count)
trigger1 = time > 0
trigger1 = movehit = 1
trigger1 = 1 || map(jugglereset) := 1
map = "juggle_count"
value = 0
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I
persistent = 0

[State 255, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;Evil Ryu Target Combo=
[Statedef 256]
type = S
movetype = A
physics = S
anim = 256
velset = 0, 0
poweradd = 0
sprpriority = 2
ctrl = 0
facep2 = 0

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

[State 256, Pos]
type = posadd
trigger1 = animelem = 2
x = 8 * const(size.xscale)

[State 256, Pos]
type = posadd
trigger1 = animelem = 3
x = 24 * const(size.xscale)

[State 256, Sound]
type = playsnd
trigger1 = animelem = 4
value = ifelse(var(1) = 2, 13, 3), 6 + (random % 3)
channel = 0

[State 256, Sound]
type = playsnd
trigger1 = animelem = 5
value = 1, 6
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 256, Hit]
type = hitdef
trigger1 = animelem = 7
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 2)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 40, 0
dizzypoints = 50 * !map(customcombo)
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
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
air.hittime = 120
ground.velocity = -4, -6
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -4, -6
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 1
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 82), map(sparky) := -92
forcestand = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
persistent = 0

[State 256, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;Crouching Light Punch=
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
trigger1 = time = 1 && random < 200
value = ifelse(var(1) = 2, 13, 3), 0 + (random % 3)
channel = 0

[State 400, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 1
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 400, Hit]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = C, NA
damage = 20, 0
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
sparkxy = -10 + 0 * (map(sparkx.min) := 25) * (map(sparkx.max) := 63), map(sparky) := -51
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
yaccel = 0.4850
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 400, Anim]
type = assertspecial
trigger1 = anim = 400
trigger1 = hitpausetime > 0
trigger1 = animelemtime(2) >= 1 && animelemtime(3) <= 0
flag = animatehitpause
ignorehitpause = 1

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


;Crouching Medium Punch=
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
trigger1 = time = 1 && random < 350
value = ifelse(var(1) = 2, 13, 3), 3 + (random % 3)
channel = 0

[State 410, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 410, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = C, NA
damage = 60, 0
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
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 64), map(sparky) := -46
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
yaccel = 0.4850
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 410, Anim]
type = assertspecial
trigger1 = anim = 410
trigger1 = hitpausetime > 0
trigger1 = animelemtime(3) >= 1 && animelemtime(4) <= 0
flag = animatehitpause
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State 410, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;Crouching Hard Punch=
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
trigger1 = time = 1 && random < 500
value = ifelse(var(1) = 2, 13, 3), 6 + (random % 3)
channel = 0

[State 420, Sound]
type = playsnd
trigger1 = animelem = 4
value = 1, 3
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 420, Hit]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = C, NA
damage = 90, 0
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
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 54), map(sparky) := -73
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
yaccel = 0.4850
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)
forcestand = 1

[State 420, Hit]
type = hitdef
trigger1 = animelem = 5
trigger1 = !movecontact && !movereversed
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = C, NA
damage = 90, 0
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
sparkxy = -10 + 0 * (map(sparkx.min) := 10) * (map(sparkx.max) := 25), map(sparky) := -120
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
yaccel = 0.4850
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 420, Anim]
type = assertspecial
trigger1 = anim = 420
trigger1 = hitpausetime > 0
trigger1 = animelemtime(5) >= 1 && animelemtime(7) <= 0
flag = animatehitpause
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


;Crouching Light Kick=
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
trigger1 = time = 1 && random < 200
value = ifelse(var(1) = 2, 13, 3), 0 + (random % 3)
channel = 0

[State 430, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 4
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 430, Hit]
type = hitdef
trigger1 = animelem = 2
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
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 74), map(sparky) := -4
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
yaccel = 0.4850
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 430, Anim]
type = assertspecial
trigger1 = anim = 430
trigger1 = hitpausetime > 0
trigger1 = animelemtime(2) >= 1 && animelemtime(3) <= 0
flag = animatehitpause
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I
persistent = 0

[State 430, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;Crouching Medium Kick=
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
trigger1 = time = 1 && random < 350
value = ifelse(var(1) = 2, 13, 3), 3 + (random % 3)
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
damage = 60, 0
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
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 81), map(sparky) := -5
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
yaccel = 0.4850
p1sprpriority = sprpriority
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 440, Anim]
type = assertspecial
trigger1 = anim = 440
trigger1 = hitpausetime > 0
trigger1 = animelemtime(3) >= 1 && animelemtime(5) <= 0
flag = animatehitpause
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[State 440, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;Crouching Hard Kick=
[Statedef 450]
type = C
movetype = A
physics = C
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
trigger1 = time = 1 && random < 500
value = ifelse(var(1) = 2, 13, 3), 6 + (random % 3)
channel = 0

[State 450, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 6
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 450, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = C, NA
damage = 90, 0
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
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 79), map(sparky) := -6
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
air.hittime = 120
air.velocity = -1.0, -8.0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
guard.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
yaccel = 0.695
fall = 1
fall.recover = 0
fall.recovertime = 120
fall.yvelocity = -3.5

[State 450, Anim]
type = assertspecial
trigger1 = anim = 450
trigger1 = hitpausetime > 0
trigger1 = animelemtime(3) >= 1 && animelemtime(4) <= 0
flag = animatehitpause
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I
persistent = 0

[State 450, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;Jumping Light Punch=
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
trigger1 = time = 1 && random < 200
value = ifelse(var(1) = 2, 13, 3), 0 + (random % 3)
channel = 0

[State 600, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 1
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 600, Hit]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = A, NA
damage = 50, 0
dizzypoints = 50 * !map(customcombo)
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 43), map(sparky) := -50
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
yaccel = 0.4850
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 600, Anim]
type = assertspecial
trigger1 = anim = 600
trigger1 = hitpausetime > 0
trigger1 = animelemtime(2) >= 1 && animelemtime(3) <= 0
flag = animatehitpause
ignorehitpause = 1

[State 600, Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
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


;Jumping Medium Punch=
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
trigger1 = time = 1 && random < 350
value = ifelse(var(1) = 2, 13, 3), 3 + (random % 3)
channel = 0

[State 610, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 610, Hit]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = A, NA
damage = 50, 0
dizzypoints = 50 * !map(customcombo)
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 10) * (map(sparkx.max) := 38), map(sparky) := -88
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
air.type = Low
air.hittime = 120
air.velocity = -2.67, -7.0
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0

[State 610, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := (1 + hitcount))
attr = A, NA
damage = 30, 0
dizzypoints = 50 * !map(customcombo)
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 5) * (map(sparkx.max) := 25), map(sparky) := -120
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
air.velocity = -2.67, -7.0
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
air.fall = 1
fall.recover = 1
fall.recovertime = 120
yaccel = 0.4850
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0

[State 610, Juggle Reset]
type = mapset
trigger1 = !map(jugglereset)
trigger1 = map(juggle_count)
trigger1 = time > 0
trigger1 = movehit = 1
trigger1 = animelemtime(3) < 0
trigger1 = 1 || map(jugglereset) := 1
map = "juggle_count"
value = 0
ignorehitpause = 1

[State 610, Anim]
type = assertspecial
trigger1 = anim = 610
trigger1 = hitpausetime > 0
trigger1 = animelemtime(3) >= 1 && animelemtime(4) <= 0
flag = animatehitpause
ignorehitpause = 1

[State 610, Idle]
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


;Jumping Hard Punch=
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
trigger1 = time = 1 && random < 500
value = ifelse(var(1) = 2, 13, 3), 6 + (random % 3)
channel = 0

[State 620, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 3
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 620, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = A, NA
damage = 100, 0
dizzypoints = 200 * !map(customcombo)
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 54), map(sparky) := -52
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
yaccel = 0.4850
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 620, Anim]
type = assertspecial
trigger1 = anim = 620
trigger1 = hitpausetime > 0
trigger1 = animelemtime(3) >= 1 && animelemtime(4) <= 0
flag = animatehitpause
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


;Diagonal Jumping Light Kick=
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
trigger1 = time = 1 && random < 200
value = ifelse(var(1) = 2, 13, 3), 0 + (random % 3)
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
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 10) * (map(sparkx.max) := 32), map(sparky) := -42
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
yaccel = 0.4850
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 630, Anim]
type = assertspecial
trigger1 = anim = 631
trigger1 = hitpausetime > 0
trigger1 = animelemtime(2) >= 1 && animelemtime(3) <= 0
flag = animatehitpause
ignorehitpause = 1

[State 630, Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
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


;Neutral Jumping Light Kick=
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
trigger1 = time = 1 && random < 200
value = ifelse(var(1) = 2, 13, 3), 0 + (random % 3)
channel = 0

[State 631, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 4
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 631, Hit]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = A, NA
damage = 40, 0
dizzypoints = 50 * !map(customcombo)
animtype = Light
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 8, 8
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 10) * (map(sparkx.max) := 33), map(sparky) := -108
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
yaccel = 0.4850
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 631, Anim]
type = assertspecial
trigger1 = anim = 631
trigger1 = hitpausetime > 0
trigger1 = animelemtime(2) >= 1 && animelemtime(3) <= 0
flag = animatehitpause
ignorehitpause = 1

[State 631, Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
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


;Diagonal Jumping Medium Kick=
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
trigger1 = time = 1 && random < 350
value = ifelse(var(1) = 2, 13, 3), 3 + (random % 3)
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
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = A, NA
damage = 70, 0
dizzypoints = 100 * !map(customcombo)
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := -30) * (map(sparkx.max) := 64), map(sparky) := -48
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
yaccel = 0.4850
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 640, Anim]
type = assertspecial
trigger1 = anim = 640
trigger1 = hitpausetime > 0
trigger1 = animelemtime(3) >= 1 && animelemtime(4) <= 0
flag = animatehitpause
ignorehitpause = 1

[State 640, Idle]
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


;Neutral Jumping Medium Kick=
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
trigger1 = time = 1 && random < 350
value = ifelse(var(1) = 2, 13, 3), 3 + (random % 3)
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
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 10) * (map(sparkx.max) := 37), map(sparky) := -108
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
yaccel = 0.4850
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 641, Anim]
type = assertspecial
trigger1 = anim = 641
trigger1 = hitpausetime > 0
trigger1 = animelemtime(2) >= 1 && animelemtime(3) <= 0
flag = animatehitpause
ignorehitpause = 1

[State 641, Idle]
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


;TENMA KUUJIN KYAKU
[Statedef 645]
type = A
physics = N
movetype = A
anim = 645
velset = 0, 0
ctrl = 0
poweradd = 0
sprpriority = 2
juggle = ifelse(p2statetype = L && !map(customcombo), 8, 0)

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

[State 645, Sound]
type = playsnd
trigger1 = animelem = 2
value = ifelse(var(1) = 2, 13, 3), 3 + (random % 3)
channel = 0

[State 645, Sound]
type = playsnd
trigger1 = animelem = 4
value = 1, 6
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 645, Vel]
type = velset
trigger1 = animelemtime(4) >= 0
x = 6.125
y = 7.000

[State 645, Hit]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
ID = 645
attr = A, NA
damage = 70, 0
dizzypoints = 100 * !map(customcombo)
animtype = Medium
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAFD
priority = 4, Hit
pausetime = 10, 10
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 52), map(sparky) := -15
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
air.velocity = -2.78, -5.33; air reset or OTG
down.hittime = 20
down.velocity = 0, 0
air.cornerpush.veloff = 0
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 645, Anim]
type = assertspecial
trigger1 = anim = 645
trigger1 = hitpausetime > 0
trigger1 = animelemtime(4) >= 1 && animelemtime(5) <= 0
flag = animatehitpause
ignorehitpause = 1

[State Land]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 646


;---Land---
[Statedef 646]
type = S
physics = S
movetype = I
anim = 47
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 646, Pos]
type = posset
trigger1 = 1
y = 0

[State 646, Sound]
type = playsnd
trigger1 = !time
value = 0, 52

[State 646, Dust]
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

[State 646, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;Diagonal Jumping Hard Kick=
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
trigger1 = time = 1 && random < 500
value = ifelse(var(1) = 2, 13, 3), 6 + (random % 3)
channel = 0

[State 650, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 6
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 650, Hit]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = A, NA
damage = 90, 0
dizzypoints = 200 * !map(customcombo)
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 75), map(sparky) := -40
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
yaccel = 0.4850
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 650, Anim]
type = assertspecial
trigger1 = anim = 650
trigger1 = hitpausetime > 0
trigger1 = animelemtime(4) >= 1 && animelemtime(5) <= 0
flag = animatehitpause
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


;Neutral Jumping Hard Kick=
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
trigger1 = time = 1 && random < 500
value = ifelse(var(1) = 2, 13, 3), 6 + (random % 3)
channel = 0

[State 651, Sound]
type = playsnd
trigger1 = animelem = 4
value = 1, 6
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 651, Hit]
type = hitdef
trigger1 = animelem = 5
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = A, NA
damage = 100, 0
dizzypoints = 200 * !map(customcombo)
animtype = Hard
air.animtype = Back
fall.animtype = Back
guardflag = HA
hitflag = MAF
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 61), map(sparky) := -77
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
yaccel = 0.4850
p1sprpriority = sprpriority
airguard.ctrltime = 1 + 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
fall.recover = 1
fall.recovertime = 120
forcenofall = !map(customcombo)

[State 651, Idle]
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


;Throw Attempt=
[Statedef 800]
type = S
physics = S
movetype = A
velset = 0, 0
anim = 800
ctrl = 0
facep2 = 1
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
p1stateno = ifelse(map(strength), 820, 810)
p2stateno = ifelse(map(strength), 825, 815)
guard.dist = 0
fall = 1
fall.recover = 0
down.recover = 1
numhits = 0

[State 800, Sound]
type = playsnd
trigger1 = animelem = 3
value = ifelse(var(1) = 2, 13, 3), 800
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

[State Tech Hit]
type = mapadd
trigger1 = time
trigger1 = map(techhit_timer) > 0
map = "techhit_timer"
value = -1

[State Throw]
type = targetstate
trigger1 = !time
value = 806

[State Width]
type = width
trigger1 = 1
edge = 30, 30

[State 805, Bind 3]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 0, 0

[State 805, Bind 4]
type = targetbind
trigger1 = animelemtime(4) >= 0
pos = 22, 0

[State 805, End]
type = changestate
trigger1 = !animtime
value = 810
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

[State 806, Sprite Priority]
type = sprpriority
trigger1 = 1
value = ifelse((time = [3, 11]), 3, 1)

[State Safety]
type = selfstate
trigger1 = time >= 60
value = ifelse(pos y < 0, 5040, 0)
ctrl = 1


;SEOI NAGE=
;----- PLAYER -----
[Statedef 810]
type = S
physics = S
movetype = A
anim = 810
ctrl = 0
velset = 0, 0

[State 810, Throw]
type = targetstate
trigger1 = !time
value = 815

[State 810, Throw]
type = targetfacing
trigger1 = time <= 1
value = 1

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

[State Tech Hit]
type = mapadd
trigger1 = time
trigger1 = map(techhit_timer) > 0
map = "techhit_timer"
value = -1

[State 810, Width]
type = width
trigger1 = animelemtime(6) >= 0 && animelemtime(7) < 0
edge = 40, 0

[State 810, Width]
type = width
trigger1 = animelemtime(7) >= 0 && animelemtime(8) < 0
edge = 80, 0

[State 810, Sound]
type = playsnd
trigger1 = animelem = 5
value = ifelse(var(1) = 2, 13, 3), ifelse(var(1) = 2, 6, 6)
channel = 0

[State 810, Sound]
type = playsnd
trigger1 = animelem = 5
value = 1, 6
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 810, Bind 1]
type = targetbind
trigger1 = animelemtime(2) < 0
pos = 45, 0

[State 810, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 15, 0

[State 810, Bind 3]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = -10, 0

[State 810, Bind 4]
type = targetbind
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = -15, 0

[State 810, Bind 5]
type = targetbind
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
pos = 15, -105

[State 810, Bind 6]
type = targetbind
trigger1 = animelemtime(6) >= 0 && animelemtime(7) < 0
pos = 45, -75

[State 810, Bind 7]
type = targetbind
trigger1 = animelem = 7
pos = 80, 0

[State 810, Sound]
type = playsnd
trigger1 = numtarget
trigger1 = animelem = 7
value = 6, 22

[State 810, Dust]
type = helper
trigger1 = map(cfg_sparks)
trigger1 = numtarget
trigger1 = animelem = 7
helpertype = normal
stateno = 8110
ID = 8100
name = "Impact Dust"
postype = p1
pos = 80, 0
ownpal = 1

[State 810, Dust]
type = explod
trigger1 = !map(cfg_sparks)
trigger1 = numtarget
trigger1 = animelem = 7
anim = F 62
postype = p1
pos = 80, 0
sprpriority = -10
ownpal = 1

[State 810, Shake]
type = envshake
trigger1 = numtarget
trigger1 = animelem = 7
time = 24
freq = 180
ampl = -4
mul = 0.85
persistent = 0

[State 810, Damage]
type = hitadd
trigger1 = numtarget
trigger1 = animelem = 7
value = 1

[State 810, Damage]
type = targetlifeadd
trigger1 = numtarget
trigger1 = animelem = 7
value = floor(-130 * map(damagescaling))
dizzy = 0
persistent = 0

[State 810, Stun Damage]
type = targetdizzypointsadd
trigger1 = numtarget
trigger1 = animelem = 7
value = floor(-140 * map(damagescaling)) * !map(customcombo)
persistent = 0

[State 810, Give Power]
type = targetpoweradd
trigger1 = animelem = 7
value = 40; givepower

[State 810, Get Power]
type = poweradd
trigger1 = animelem = 7
value = 100 * map(meterscaling); getpower

[State 810, Throw]
type = targetstate
trigger1 = animelem = 7
value = 816

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
sprpriority = 0

[State 815, Anim]
type = changeanim2
trigger1 = !time
value = 815

[State 815, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[State 815, Layering]
type = sprpriority
trigger1 = animelem = 2
value = stateowner, sprpriority + 1

[State 815, Layering]
type = sprpriority
trigger1 = animelem = 4
value = stateowner, sprpriority - 1

[State 815, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 816]
type = A
physics = N
movetype = H
velset = 0, 0
sprpriority = -1

[State 816, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 816, Pos]
type = posset
trigger1 = 1
y = 0

[State 816, Anim]
type = changeanim
trigger1 = !time
value = 5100

[State 816, End]
type = changestate
trigger1 = time >= 3
value = 817


[Statedef 817]
type = L
physics = N
movetype = H

[State 817, Anim]
type = changeanim
trigger1 = !time
value = 5160

[State 817, Pos]
type = posset
trigger1 = !time
y = const(movement.down.bounce.offset.y)

[State 817, Accel]
type = veladd
trigger1 = 1
y = 0.5

[State 817, Vel]
type = velset
trigger1 = !time
x = 1.0
y = -4.5

[State 817, Dizzy Start]
type = dizzyset
trigger1 = alive
trigger1 = life > 0
trigger1 = dizzypoints <= 0
trigger1 = !gethitvar(isbound)
value = 1

[State 817, Fall Recovery]
type = selfstate
trigger1 = alive = 1 && dizzy = 0 && dizzypoints > 0
trigger1 = gethitvar(fall.recover)
trigger1 = command = "recovery"
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 817, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.down.bounce.groundlevel)
value = 5110


;TOMOE NAGE=
;----- PLAYER -----
[Statedef 820]
type = S
physics = S
movetype = A
anim = 820
ctrl = 0
velset = 0, 0

[State 820, Throw]
type = targetstate
trigger1 = !time
value = 825

[State 820, Throw]
type = targetfacing
trigger1 = time <= 1
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

[State Tech Hit]
type = mapadd
trigger1 = time
trigger1 = map(techhit_timer) > 0
map = "techhit_timer"
value = -1

[State 820, Pos]
type = posadd
trigger1 = animelem = 2 || animelem = 3 || animelem = 4 || animelem = 5
x = ifelse((animelem = 4), -5, -16)

[State 820, Width]
type = width
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
edge = 0, 20

[State 820, Width]
type = width
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
edge = 0, 40

[State 820, Width]
type = width
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
edge = 0, 80

[State 820, throw snd]
type = playsnd
trigger1 = animelem = 3
value = ifelse(var(1) = 2, 13, 3), ifelse(var(1) = 2, 3, 4)
channel = 0

[State 820, throw snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 6
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 820, Bind 1]
type = targetbind
trigger1 = animelemtime(2) < 0
pos = 45, 0

[State 820, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 18, 0

[State 820, Bind 3]
type = targetbind
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 12, -62

[State 820, Bind 4]
type = targetbind
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = -7, -54

[State 820, Bind 5]
type = targetbind
trigger1 = animelem = 5
pos = -80, -32

[State 820, Damage]
type = hitadd
trigger1 = animelem = 5
value = 1

[State 820, Damage]
type = targetlifeadd
trigger1 = animelem = 5
value = floor(-130 * map(damagescaling))
dizzy = 0

[State 820, Stun Damage]
type = targetdizzypointsadd
trigger1 = numtarget
trigger1 = animelem = 5
value = floor(-120 * map(damagescaling)) * !map(customcombo)

[State 820, Give Power]
type = targetpoweradd
trigger1 = animelem = 5
value = 40; givepower

[State 820, Get Power]
type = poweradd
trigger1 = animelem = 5
value = 100 * map(meterscaling); getpower

[State 820, Throw]
type = targetstate
trigger1 = animelem = 5
value = 826

[State 820, Turn]
type = turn
trigger1 = !animtime

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
sprpriority = 0

[State 825, Anim]
type = changeanim2
trigger1 = !time
value = 825

[State 825, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[State 825, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 826]
type = A
physics = N
movetype = H
velset = 4, -8

[State 826, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 826, Accel]
type = veladd
trigger1 = 1
y = 0.4850; yaccel

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

[State 826, Offset]
type = offset
trigger1 = anim = 825
trigger1 = animelemtime(6) >= 0 && animelemtime(7) < 0
y = -0.5 * const(size.mid.pos.y)


;Target Escaped=
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
value = ifelse(var(1) = 2, 5010, 5000), ifelse(var(1) = 2, 0, 1)
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
