; _______________________________________
;| Geese Howard by Phantom.of.the.Server |
; 
;==
;==NORMAL MOVES==
;==

;=Standing Far Light Punch==
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
value = 4, ifelse(random < 500, 0, 1)
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
ground.type = High
air.type = Low
ground.hittime = 1 + 12
guard.hittime = (1 + 12) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 10
guard.slidetime = 10
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -2.66, -4.49)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 0
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 68), map(sparky) := -89

[State 200, Anim]
type = changeanim
trigger1 = anim = 200
trigger1 = hitpausetime = [1, 6]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(2) >= 0 && animelemtime(3) <= 0
value = 200
elem = 3
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


;=Standing Far Medium Punch==
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

[State 210, Sound]
type = playsnd
trigger1 = animelem = 2 && random < 350
value = 4, ifelse(random < 500, 1, 2)
channel = 0

[State 210, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 1
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 210, Hit]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 70, 0
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
ground.hittime = 1 + 15
guard.hittime = (1 + 15) - 6
ground.slidetime = 15
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 1
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 40) * (map(sparkx.max) := 70), map(sparky) := -72

[State 210, Anim]
type = changeanim
trigger1 = anim = 210
trigger1 = hitpausetime = [1, 8]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
value = 210
elem = 4
ignorehitpause = 1

[State 210, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
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
value = 4, ifelse(random < 500, 1, 2)
channel = 0

[State 211, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 1
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 211, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 70, 0
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
ground.hittime = 1 + 15
guard.hittime = (1 + 15) - 6
ground.slidetime = 15
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 1
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 46), map(sparky) := -99
forcestand = 1

[State 211, Target Combo]
type = changestate
triggerall = prevstateno != 700
triggerall = (movecontact + movereversed) = [1, 2]
trigger1 = !AIlevel
trigger1 = map(cmd_z)
trigger1 = command != "holddown"
trigger2 = AILevel
trigger2 = movehit
trigger2 = p2statetype != A
trigger2 = p2bodydist x < 25
trigger2 = random < 500
value = 226

[State 211, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
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
trigger1 = animelem = 2 && random < 500
value = 4, ifelse(random < 500, 1, 2)
channel = 0

[State 220, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 220, Hit]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 100, 0
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
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -5.77, -10.52), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 2
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 50) * (map(sparkx.max) := 103), map(sparky) := -76

[State 220, Anim]
type = changeanim
trigger1 = anim = 220
trigger1 = hitpausetime = [1, 10]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(4) >= 0 && animelemtime(5) <= 0
value = 220
elem = 5
ignorehitpause = 1

[State 220, Idle]
type = statetypeset
trigger1 = animelemtime(6) >= 0
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
trigger1 = animelem = 2 && random < 500
value = 4, ifelse(random < 500, 1, 2)
channel = 0

[State 221, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 221, Pos]
type = posadd
trigger1 = animelem = 3
x = 13

[State 221, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 100, 0
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
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -5.77, -10.52), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 2
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 10) * (map(sparkx.max) := 24), map(sparky) := -64

[State 221, Anim]
type = changeanim
trigger1 = anim = 221
trigger1 = hitpausetime = [1, 10]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
value = 221
elem = 4
ignorehitpause = 1

[State 221, Target Combo]
type = changestate
triggerall = prevstateno != 700
triggerall = (movecontact + movereversed) = [1, 2]
trigger1 = !AIlevel
trigger1 = map(cmd_z)
trigger1 = command != "holddown"
trigger2 = AILevel
trigger2 = movehit
trigger2 = p2statetype != A
trigger2 = p2bodydist x < 25
trigger2 = random < 500
value = 226

[State 221, Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I
persistent = 0

[State 221, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=Fudou Sakkatsu Uraken==
[Statedef 225]
type = S
physics = S
movetype = A
anim = 225
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

[State 225, Sound]
type = playsnd
trigger1 = animelem = 4
value = 4, ifelse(random < 500, 1, 2)
channel = 0

[State 225, Sound]
type = playsnd
trigger1 = animelem = 5
value = 1, 2
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 225, Pos]
type = posadd
trigger1 = animelem = 4 || animelem = 9
x = 16

[State 225, Hit]
type = hitdef
trigger1 = animelem = 5
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 110, 0
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
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -3.17, -6.33), -5.27
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 1
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 2
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 58), map(sparky) := -70

[State 225, Anim]
type = changeanim
trigger1 = anim = 225
trigger1 = hitpausetime = [1, 10]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(5) >= 0 && animelemtime(6) <= 0
value = 225
elem = 6
ignorehitpause = 1

[State 225, Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I
persistent = 0

[State 225, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- Comboed -----
[Statedef 226]
type = S
physics = S
movetype = A
anim = 226
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

[State 226, Sound]
type = playsnd
trigger1 = animelem = 4
value = 4, ifelse(random < 500, 1, 2)
channel = 0

[State 226, Sound]
type = playsnd
trigger1 = animelem = 5
value = 1, 2
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 226, Pos]
type = posadd
trigger1 = animelem = 4 || animelem = 9
x = 16

[State 226, Hit]
type = hitdef
trigger1 = animelem = 5
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
ground.type = Low
air.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -5.77, -10.52), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 2
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 58), map(sparky) := -70

[State 226, Anim]
type = changeanim
trigger1 = anim = 226
trigger1 = hitpausetime = [1, 10]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(5) >= 0 && animelemtime(6) <= 0
value = 226
elem = 6
ignorehitpause = 1

[State 226, Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I
persistent = 0

[State 226, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=Standing Far Light Kick==
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
value = 4, ifelse(random < 500, 0, 1)
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
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
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
ground.type = Low
air.type = Low
ground.hittime = 1 + 12
guard.hittime = (1 + 12) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 10
guard.slidetime = 10
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -2.66, -4.49)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 3
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 40) * (map(sparkx.max) := 85), map(sparky) := -34

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


;=Standing Close Light Kick==
[Statedef 231]
type = S
physics = S
movetype = A
anim = 231
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

[State 231, Sound]
type = playsnd
trigger1 = animelem = 1 && random < 231
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 231, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 3
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 231, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
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
ground.type = Low
air.type = Low
ground.hittime = 1 + 12
guard.hittime = (1 + 12) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 10
guard.slidetime = 10
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -2.66, -4.49)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 3
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 39), map(sparky) := -69

[State 231, Anim]
type = changeanim
trigger1 = anim = 231
trigger1 = hitpausetime = [1, 6]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
value = 231
elem = 4
ignorehitpause = 1

[State 231, Target Combo]
type = changestate
triggerall = prevstateno != 700
triggerall = (movecontact + movereversed) = [1, 2]
trigger1 = !AIlevel
trigger1 = map(cmd_z)
trigger1 = command != "holddown"
trigger2 = AILevel
trigger2 = movehit
trigger2 = p2statetype != A
trigger2 = p2bodydist x < 25
trigger2 = random < 500
value = 226

[State 231, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
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
trigger1 = animelem = 3 && random < 350
value = 4, ifelse(random < 500, 1, 2)
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
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 70, 0
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
ground.hittime = 1 + 15
guard.hittime = (1 + 15) - 6
ground.slidetime = 15
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 4
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 70), map(sparky) := -66

[State 240, Hit]
type = hitdef
trigger1 = animelem = 4
trigger1 = prevstateno = 700
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 70, 0
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
ground.hittime = 1 + 15
guard.hittime = (1 + 15) - 6
ground.slidetime = 15
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
ground.velocity = -5.30, -5.30
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.velocity = -5.30, -5.30
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 1
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 4
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 70), map(sparky) := -66

[State 240, Anim]
type = changeanim
trigger1 = anim = 240
trigger1 = hitpausetime = [1, 8]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(4) >= 0 && animelemtime(5) <= 0
value = 240
elem = 5
ignorehitpause = 1

[State 240, Idle]
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
trigger1 = animelem = 1 && random < 350
value = 4, ifelse(random < 500, 1, 2)
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
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 60, 0
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
ground.hittime = 1 + 15
guard.hittime = (1 + 15) - 6
ground.slidetime = 15
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 4
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 40) * (map(sparkx.max) := 97), map(sparky) := -55

[State 241, Target Combo]
type = changestate
triggerall = prevstateno != 700
triggerall = (movecontact + movereversed) = [1, 2]
trigger1 = !AIlevel
trigger1 = map(cmd_c)
trigger1 = command != "holddown"
trigger2 = AILevel
trigger2 = movehit
trigger2 = p2statetype != A
trigger2 = p2bodydist x < 30
trigger2 = random < 500
value = 250

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


;=Standing Far Hard Kick==
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
trigger1 = animelem = 5 && random < 500
value = 4, ifelse(random < 500, 1, 2)
channel = 0

[State 250, Sound]
type = playsnd
trigger1 = animelem = 6
value = 1, 5
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 250, Pos]
type = posadd
trigger1 = animelem = 3 || animelem = 4 || animelem = 5
x = 8

[State 250, Pos]
type = posadd
trigger1 = animelem = 6
x = ifelse(map(customcombo), 12, 24)

[State 250, Feint]
type = changestate
triggerall = animelem = 7
trigger1 = !AIlevel
trigger1 = command = "/c"
trigger2 = AIlevel
trigger2 = random < 666
trigger2 = p2statetype = C || (p2bodydist x < 30 && p2stateno = [120, 131])
value = 252

[State 250, Hit]
type = hitdef
trigger1 = animelem = 7
air.juggle = 0 * (map(juggle_start) := 0 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = 0
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ifelse(prevstateno = 241 && !map(customcombo), 45, 90), 0
dizzypoints = 200 * !map(customcombo)
getpower = ifelse(movehit, 25, 200) * map(meterscaling), ifelse(moveguarded, 25, 100) * map(meterscaling)
givepower = 40, 40
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
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
ground.velocity = -3.00, -8.00
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -3.00, -8.00
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 1
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 5
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 0) * (map(sparkx.max) := 45), map(sparky) := -105

[State 250, Idle]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I
persistent = 0

[State 250, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- Feint -----
[Statedef 252]
type = S
physics = S
movetype = I
anim = 252
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 250, Sound]
type = playsnd
trigger1 = !time
value = 1, 3
;channel = 1
stopongethit = 1

[State 252, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=Standing Close Hard Kick==
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
trigger1 = (animelem = 2 || animelem = 6) && random < 500
value = 4, ifelse(random < 500, 1, 2)
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
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
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
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -5.77, -10.52), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 5
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 0) * (map(sparkx.max) := 40), map(sparky) := -110

[State 251, Hit]
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
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -5.77, -10.52), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 5
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 72), map(sparky) := -66

[State 251, Anim]
type = changeanim
trigger1 = anim = 250
trigger1 = hitpausetime = [1, 10]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(7) >= 0 && animelemtime(8) <= 0
value = 251
elem = 8
ignorehitpause = 1

[State 251, Idle]
type = statetypeset
trigger1 = animelemtime(9) >= 0
movetype = I
persistent = 0

[State 251, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=Raikou Mawashi Geri==
[Statedef 255]
type = S
physics = N
movetype = A
anim = 255
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

[State 255, Sound]
type = playsnd
trigger1 = animelem = 4
value = 4, ifelse(random < 500, 1, 2)
channel = 0

[State 255, Sound]
type = playsnd
trigger1 = animelem = 6
value = 1, 5
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 255, Accel]
type = veladd
trigger1 = animelemtime(3) >= 0
x = ifelse(vel x > 0.2211, -0.2211, -vel x)

[State 255, Vel]
type = velset
trigger1 = animelem = 3
x = ifelse(map(customcombo), 5.09, 6.78)

[State 255, Vel]
type = velset
trigger1 = animelem = 11
x = 0

[State 255, Sound]
type = playsnd
trigger1 = animelem = 3
value = 0, 102

[State 255, Dust]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 255, Sound]
type = playsnd
trigger1 = animelem = 11
value = 0, 52

[State 255, Dust]
type = explod
trigger1 = animelem = 11
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 255, Hit]
type = hitdef
trigger1 = animelem = 7
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = S, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 100, 0
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
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 5
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 72), map(sparky) := -81

[State 255, Idle]
type = statetypeset
trigger1 = animelemtime(9) >= 0
movetype = I
persistent = 0

[State 255, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;=Crouching Light Punch==
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
value = 4, ifelse(random < 500, 0, 1)
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
ground.hittime = 1 + 12
guard.hittime = (1 + 12) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 10
guard.slidetime = 10
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -2.66, -4.49)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 0
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 69), map(sparky) := -71

[State 400, Anim]
type = changeanim
trigger1 = anim = 400
trigger1 = hitpausetime = [1, 6]
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


;=Crouching Medium Punch==
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
value = 4, ifelse(random < 500, 1, 2)
channel = 0

[State 410, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 1
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 410, Hit]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = C, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 75, 0
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
ground.hittime = 1 + 15
guard.hittime = (1 + 15) - 6
ground.slidetime = 15
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 1
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 50) * (map(sparkx.max) := 75), map(sparky) := -21

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


;=Crouching Hard Punch==
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
trigger1 = animelem = 1 && random < 500
value = 4, ifelse(random < 500, 1, 2)
channel = 0

[State 420, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 420, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = C, NA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 90, 0
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
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -5.77, -10.52), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 2
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 42), map(sparky) := -90
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
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -5.77, -10.52), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 2
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 30), map(sparky) := -139

[State 420, Anim]
type = changeanim
trigger1 = anim = 420
trigger1 = hitpausetime = [1, 10]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(4) >= 0 && animelemtime(5) <= 0
value = 420
elem = 5
ignorehitpause = 1

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


;=Crouching Light Kick==
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
value = 4, ifelse(random < 500, 0, 1)
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
damage = 30, 0
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
ground.hittime = 1 + 12
guard.hittime = (1 + 12) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 10
guard.slidetime = 10
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -2.66, -4.49)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 3
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 68), map(sparky) := -8

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


;=Crouching Medium Kick==
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
trigger1 = animelem = 1 && random < 350
value = 4, ifelse(random < 500, 1, 2)
channel = 0

[State 440, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 4
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 440, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = C, NA
hitflag = MAF
guardflag = L
priority = 4, Hit
damage = 70, 0
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
ground.hittime = 1 + 15
guard.hittime = (1 + 15) - 6
ground.slidetime = 15
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
ground.velocity = ifelse(map(customcombo), -4.30, -7.51), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 4
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 76), map(sparky) := -8

[State 440, Anim]
type = changeanim
trigger1 = anim = 440
trigger1 = hitpausetime = [1, 8]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(3) >= 0 && animelemtime(4) <= 0
value = 440
elem = 4
ignorehitpause = 1

[State 440, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
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
trigger1 = animelem = 1 && random < 500
value = 4, ifelse(random < 500, 1, 2)
channel = 0

[State 450, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 450, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = C, NA
hitflag = MAF
guardflag = L
priority = 4, Hit
damage = 100, 0
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
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = -1.0, -8.0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -1.0, -8.0
air.cornerpush.veloff = 0
yaccel = 0.695
fall = 1
fall.recover = 0
fall.recovertime = 120
hitsound = s2, 5
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 50) * (map(sparkx.max) := 100), map(sparky) := -29

[State 450, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State 450, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;=Jumping Light Punch==
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
value = 4, ifelse(random < 500, 0, 1)
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
damage = 40, 0
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
ground.hittime = 1 + 12
guard.hittime = (1 + 12) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 10
guard.slidetime = 10
air.hittime = 120
airguard.ctrltime = 1 + 16
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -2.66, -4.49)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 0
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 51), map(sparky) := -51

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
trigger1 = animelemtime(9) >= 0
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


;=Jumping Medium Punch==
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
trigger1 = animelem = 1 && random < 350
value = 4, ifelse(random < 500, 1, 2)
channel = 0

[State 610, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 1
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 610, Hit]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 75, 0
dizzypoints = 100 * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
givepower = 40, 40
pausetime = 10, 10
guard.pausetime = 10, 10
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = High
ground.hittime = 1 + 12
guard.hittime = (1 + 12) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
airguard.ctrltime = 1 + 16
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 1
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 64), map(sparky) := -93

[State 610, Anim]
type = changeanim
trigger1 = anim = 610
trigger1 = hitpausetime = [1, 8]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(2) >= 0 && animelemtime(3) <= 0
value = 610
elem = 3
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


;=Jumping Hard Punch==
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
trigger1 = (animelem = 1 || animelem = 4) && random < 500
value = 4, ifelse(random < 500, 1, 2)
channel = 0

[State 620, Sound]
type = playsnd
trigger1 = animelem = 2 || animelem = 6
value = 1, 2
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 620, Hit]
type = hitdef
trigger1 = animelem = 2 || animelem = 6
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := (1 + hitcount))
forcenofall = !map(customcombo)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ifelse((animelem = 2), 50, 70), 0
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
ground.hittime = 1 + 12
guard.hittime = (1 + 12) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
airguard.ctrltime = 1 + 16
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 2
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 58), map(sparky) := -57

[State 620, Anim]
type = changeanim
trigger1 = anim = 620
trigger1 = hitpausetime = [1, 10]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(2) >= 0 && animelemtime(3) <= 0
value = 620
elem = 3
ignorehitpause = 1

[State 620, Anim]
type = changeanim
trigger1 = anim = 620
trigger1 = hitpausetime = [1, 10]
trigger1 = movecontact = 1 || movereversed = 1
trigger1 = animelemtime(6) >= 0 && animelemtime(7) <= 0
value = 620
elem = 7
ignorehitpause = 1

[State 620, Idle]
type = statetypeset
trigger1 = animelemtime(8) >= 0
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


;=Jumping Light Kick==
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
value = 4, ifelse(random < 500, 0, 1)
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
damage = 40, 0
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
ground.hittime = 1 + 12
guard.hittime = (1 + 12) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 10
guard.slidetime = 10
air.hittime = 120
airguard.ctrltime = 1 + 16
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -2.66, -4.49)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 3
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8010)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 60), map(sparky) := -24

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
trigger1 = animelemtime(8) >= 0
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


;=Jumping Medium Kick==
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
trigger1 = animelem = 1 && random < 350
value = 4, ifelse(random < 500, 1, 2)
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
damage = 70, 0
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
ground.hittime = 1 + 12
guard.hittime = (1 + 12) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 13
guard.slidetime = 13
air.hittime = 120
airguard.ctrltime = 1 + 16
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -4.30, -7.51)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 4
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8011)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := -30) * (map(sparkx.max) := 56), map(sparky) := -28

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
trigger1 = animelemtime(5) >= 0
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


;=Jumping Hard Kick==
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
value = 4, ifelse(random < 500, 1, 2)
channel = 0

[State 650, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 650, Hit]
type = hitdef
trigger1 = animelem = 3
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 90, 0
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
ground.hittime = 1 + 12
guard.hittime = (1 + 12) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
airguard.ctrltime = 1 + 16
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 5
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 77), map(sparky) := -63

[State 650, Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
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


;=Neutral Jump Hard Kick==
[Statedef 651]
type = A
physics = N
movetype = A
anim = 651
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

[State 651, Sound]
type = playsnd
trigger1 = animelem = 3 && random < 500
value = 4, ifelse(random < 500, 1, 2)
channel = 0

[State 651, Sound]
type = playsnd
trigger1 = animelem = 5
value = 1, 5
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 651, Hit]
type = hitdef
trigger1 = animelem = 5
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
forcenofall = !map(customcombo)
attr = A, NA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 90, 0
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
ground.hittime = 1 + 12
guard.hittime = (1 + 12) - 6
ground.slidetime = 12
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
airguard.ctrltime = 1 + 16
ground.velocity = ifelse(map(customcombo), -2.66, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(map(customcombo), -5.77, -10.52)
guard.cornerpush.veloff = 0
air.velocity = -2.78, -5.33; air reset
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yaccel = 0.4850
p1sprpriority = sprpriority
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = s2, 5
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8012)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 64), map(sparky) := -81

[State 651, Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I
persistent = 0

[State 651, Accel]
type = gravity
trigger1 = 1

[State 651, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;=Throw Attempt==
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
trigger1 = map(truebodydistx) <= 26
attr = S, NT
hitflag = M
priority = 1, Miss
getpower = 0, 0
givepower = 0, 0
sparkno = -1 + 0 * (map(sparkno) := 0)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 40), map(sparky) := -50
hitsound = s2, 800
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
fall = 1
fall.recover = 0
down.recover = 1
numhits = 0
p1stateno = 805
p2stateno = 806

[State 800, Hit]
type = hitdef
trigger1 = animelem = 2
trigger1 = map(strength) = 1
trigger1 = !map(unthrowable) && !map(grabbehind)
trigger1 = map(truebodydistx) <= 26
attr = S, NT
hitflag = M
priority = 1, Miss
getpower = 0, 0
givepower = 0, 0
sparkno = -1 + 0 * (map(sparkno) := 0)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 40), map(sparky) := -50
hitsound = s2, 800
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
fall = 1
fall.recover = 0
down.recover = 1
numhits = 0
p1stateno = 810
p2stateno = 815

[State 800, Sound]
type = playsnd
trigger1 = animelem = 3
value = 4, 800
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


;----- PLAYER TURNS -----
[Statedef 805]
type = S
physics = S
movetype = A
anim = 805
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 805, Throw]
type = targetstate
trigger1 = !time
trigger1 = numtarget
value = 806

[State 805, Throw]
type = targetfacing
trigger1 = !time
trigger1 = numtarget
value = -1

[State 805, Width]
type = width
trigger1 = 1
edge = 24, 24

[State 805, Turn]
type = turn
trigger1 = animelem = 3

[State 805, Turn]
type = targetfacing
trigger1 = 1
value = -1

[State 805, Tech Hit]
type = mapadd
trigger1 = time
trigger1 = map(techhit_timer) > 0
map = "techhit_timer"
value = -1

[State 805, Tech Hit]
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

[State 805, Bind 1]
type = targetbind
trigger1 = animelemtime(2) < 0 || animelemtime(4) >= 0
pos = 34 * const(size.xscale), 0

[State 805, Bind 2]
type = targetbind
trigger1 = animelemtime(2) >= 0 && animelemtime(4) < 0
pos = 11 * const(size.xscale), 0

[State 805, Sprite Priority]
type = sprpriority
trigger1 = animelemtime(2) < 0 || animelemtime(4) >= 0
value = 1

[State 805, Sprite Priority]
type = sprpriority
trigger1 = animelemtime(2) >= 0 && animelemtime(4) < 0
value = -1

[State 805, End]
type = changestate
trigger1 = !numtarget
value = 0
ctrl = 1

[State 805, End]
type = changestate
trigger1 = animelemtime(4) >= 0
value = 820


;----- TARGET -----
[Statedef 806]
type = A
physics = N
movetype = H
velset = 0, 0
sprpriority = 3

[State 806, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 806, Anim]
type = changeanim2
trigger1 = !time
value = 806

[State 806, Sprite Priority]
type = sprpriority
trigger1 = 1
value = ifelse(time >= 3, 3, 1)

[State 806, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1

[State 806, Safety]
type = selfstate
trigger1 = time >= 60
value = ifelse(pos y < 0, 5040, 0)
ctrl = 1


;=Face Grab==
[Statedef 810]
type = A
physics = N
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

[State 810, Turn]
type = turn
trigger1 = animelem = 10

[State 810, Throw]
type = targetfacing
trigger1 = numtarget
trigger1 = animelemtime(13) < 0
value = -1

[State 810, Width]
type = width
trigger1 = animelemtime(4) >= 0 && animelemtime(10) < 0
edge = 40, 0

[State 810, Width]
type = width
trigger1 = animelemtime(13) >= 0 && animelemtime(16) < 0
edge = 64, 0

[State 810, Bind 1]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) < 0
pos = 40, 0

[State 810, Bind 3]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 29, -104

[State 810, Bind 4]
type = targetbind
triggerall = numtarget
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
trigger2 = animelemtime(6) >= 0 && animelemtime(7) < 0
trigger3 = animelemtime(8) >= 0 && animelemtime(9) < 0
pos = 36, -130

[State 810, Bind 5]
type = targetbind
triggerall = numtarget
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
trigger2 = animelemtime(7) >= 0 && animelemtime(8) < 0
trigger3 = animelemtime(9) >= 0 && animelemtime(10) < 0
pos = 38, -130

[State 810, Bind 10]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(10) >= 0 && animelemtime(11) < 0
pos = -13, -126

[State 810, Bind 11]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(11) >= 0 && animelemtime(12) < 0
pos = -9, -124

[State 810, Bind 12]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(12) >= 0 && animelemtime(13) < 0
pos = -7, -32

[State 810, Bind 13]
type = targetbind
trigger1 = numtarget
trigger1 = animelem = 13
pos = 64, -8

[State 810, Damage]
type = targetlifeadd
trigger1 = numtarget
trigger1 = animelem = 5 || animelem = 7 || animelem = 9
value = floor(-30 * map(damagescaling))
dizzy = 0
kill = 0

[State 810, Damage]
type = targetlifeadd
trigger1 = numtarget
trigger1 = animelem = 13
value = floor(-50 * map(damagescaling))
dizzy = 0
kill = 1

[State 810, Stun Damage]
type = targetdizzypointsadd
trigger1 = numtarget
trigger1 = animelem = 13
value = floor(-140 * map(damagescaling)) * !map(customcombo)

[State 810, Give Power]
type = targetpoweradd
trigger1 = numtarget
trigger1 = animelem = 13
value = 40; givepower

[State 810, Get Power]
type = poweradd
trigger1 = numtarget
trigger1 = animelem = 13
value = 100 * map(meterscaling); getpower

[State 810, Hit]
type = hitadd
trigger1 = numtarget
trigger1 = animelem = 5 || animelem = 7 || animelem = 9
value = 1

[State 810, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelem = 13
value = 816

[State 810, Sound]
type = playsnd
trigger1 = animelem = 2
value = 6, 10
channel = 0

[State 810, Sound]
type = playsnd
trigger1 = numtarget
trigger1 = animelem = 5 || animelem = 7 || animelem = 9
value = 7, 10
channel = 2

[State 810, Sound]
type = playsnd
trigger1 = animelem = 11
value = 1, 5
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

;[State 810, Sparks]
;in ZSS

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

[State 815, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 815, Sprite Priority]
type = sprpriority
trigger1 = 1
value = 0

[State 815, Sprite Priority]
type = sprpriority
trigger1 = animelemtime(7) >= 0
value = 3

[State 815, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 816]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 816, Anim]
type = changeanim
trigger1 = !time
trigger1 = selfanimexist(5035)
value = 5035

[State 816, Anim]
type = changeanim
trigger1 = !animtime
trigger1 = anim != 5050
trigger2 = !time
trigger2 = !selfanimexist(5035)
value = 5050

[State 816, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 816, Accel]
type = veladd
trigger1 = 1
y = 0.4850; yaccel

[State 816, Vel]
type = velset
trigger1 = !time
x = -6
y = -4.5

[State 816, Dizzy Start]
type = dizzyset
trigger1 = alive
trigger1 = life > 0
trigger1 = dizzypoints <= 0
trigger1 = !gethitvar(isbound)
value = 1

[State 816, Fall Recovery]
type = selfstate
trigger1 = alive = 1 && dizzy = 0 && dizzypoints > 0
trigger1 = gethitvar(fall.recover)
trigger1 = command = "recovery"
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 816, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 25
value = 5100


;=Shinkuu Nage==
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

[State 820, Turn]
type = turn
trigger1 = !time

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

[State 820, Throw]
type = targetfacing
trigger1 = time <= 1
value = 1

[State 820, Width]
type = width
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
edge = 32, 0

[State 820, Width]
type = width
trigger1 = animelemtime(5) >= 0 && animelemtime(9) < 0
edge = 64, 0

[State 820, Bind 1]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) < 0
pos = -39, -77

[State 820, Bind 2]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = -32, -110

[State 820, Bind 3]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 6, -122

[State 820, Bind 4]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = 44, -103

[State 820, Bind 5]
type = targetbind
trigger1 = numtarget
trigger1 = animelem = 5
pos = 66, -100

[State 820, Damage]
type = targetlifeadd
trigger1 = numtarget
trigger1 = animelem = 5
value = floor(-140 * map(damagescaling))
dizzy = 0

[State 820, Stun Damage]
type = targetdizzypointsadd
trigger1 = numtarget
trigger1 = animelem = 5
value = floor(-120 * map(damagescaling)) * !map(customcombo)

[State 820, Give Power]
type = targetpoweradd
trigger1 = numtarget
trigger1 = animelem = 5
value = 40; givepower

[State 820, Get Power]
type = poweradd
trigger1 = numtarget
trigger1 = animelem = 5
value = 100 * map(meterscaling); getpower

[State 820, Hit]
type = hitadd
trigger1 = numtarget
trigger1 = animelem = 5
value = 1

[State 820, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelem = 5
value = 826

[State 820, Sound]
type = playsnd
trigger1 = animelem = 1
value = 4, 5
channel = 0

[State 820, Sound]
type = playsnd
trigger1 = animelem = 9
value = 4, 3
channel = 0

[State 820, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 5
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 820, Sound]
type = playsnd
trigger1 = animelem = 9
value = 1, 0
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 820, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- Target -----
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
value = 0
movecamera = 0, 0

[State 825, Sprite Priority]
type = sprpriority
trigger1 = animelemtime(4) >= 0
value = 2

[State 825, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 826]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 826, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 826, Accel]
type = veladd
trigger1 = 1
y = 0.4850; yaccel

[State 826, Vel]
type = velset
trigger1 = !time
x = 5.39
y = -5.5

[State 826, Shake]
type = envshake
trigger1 = vel y > 0
trigger1 = pos y >= -24
time = 24
freq = 180
ampl = -4
mul = 0.85

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

[State 826, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= -24
value = 5100


;=Floor Throw Attempt==
[Statedef 830]
type = C
physics = C
movetype = A
anim = 830
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0
facep2 = 1
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

[State 830, No proximity block]
type = attackdist
trigger1 = 1
value = 0

[State 830, Hit]
type = hitdef
trigger1 = animelem = 3
trigger1 = !map(grabbehind)
trigger1 = map(truebodydistx) <= 24
attr = C, NT
hitflag = FD
priority = 1, Miss
getpower = 0, 0
givepower = 0, 0
sparkno = -1 + 0 * (map(sparkno) := 0)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8000)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 16), map(sparky) := -8
hitsound = s2, 800
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
fall = 1
fall.recover = 0
down.recover = 1
numhits = 0
p1stateno = 840
p2stateno = 845

[State 830, Sound]
type = playsnd
trigger1 = animelem = 4
value = 1, 0
;channel = 1
stopongethit = 1
freqmul = 0.95 + (random / 10000.0)

[State 830, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State 830, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;----- Success -----
[Statedef 840]
type = S
physics = S
movetype = A
anim = 840
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0

[State 840, Turn]
type = turn
trigger1 = animelem = 4

[State 840, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelem = 1
value = 845

[State 840, Throw]
type = targetfacing
trigger1 = numtarget
value = 1

[State 840, Width]
type = width
trigger1 = animelemtime(7) >= 0 && animelemtime(9) < 0
edge = 32, 0

[State 840, Width]
type = width
trigger1 = animelemtime(9) >= 0 && animelemtime(12) < 0
edge = 64, 0

[State 840, Bind 1]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) < 0
pos = 24, 0

[State 840, Bind 2]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 29, -104

[State 840, Bind 3]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 36, -130

[State 840, Bind 4]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = -40, 0

[State 840, Bind 5]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
pos = -36, -124

[State 840, Bind 6]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(6) >= 0 && animelemtime(7) < 0
pos = 31, -115

[State 840, Bind 7]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(7) >= 0 && animelemtime(8) < 0
pos = 35, -95

[State 840, Bind 8]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(8) >= 0 && animelemtime(9) < 0
pos = 40, -75

[State 840, Bind 9]
type = targetbind
trigger1 = numtarget
trigger1 = animelem = 9
pos = 45, 0

[State 840, Give Power]
type = targetpoweradd
trigger1 = numtarget
trigger1 = animelem = 9
value = 40; givepower

[State 840, Get Power]
type = poweradd
trigger1 = numtarget
trigger1 = animelem = 9
value = 100 * map(meterscaling); getpower

[State 840, Damage]
type = targetlifeadd
trigger1 = numtarget
trigger1 = animelem = 9
value = floor(-70 * map(damagescaling))
dizzy = 0

[State 810, Stun Damage]
type = targetdizzypointsadd
trigger1 = numtarget
trigger1 = animelem = 9
value = floor(-100 * map(damagescaling)) * !map(customcombo)

[State 840, Hit]
type = hitadd
trigger1 = numtarget
trigger1 = animelem = 9
value = 1

[State 840, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelem = 9
value = 846

[State 840, Sound]
type = playsnd
trigger1 = animelem = 3
value = 6, 15
channel = 0

[State 840, Sound]
type = playsnd
trigger1 = animelem = 12
value = 6, 16
channel = 0

[State 840, Shake]
type = envshake
trigger1 = numtarget
trigger1 = animelem = 9
time = 24
freq = 180
ampl = -4
mul = 0.85

[State 840, Sound]
type = playsnd
trigger1 = numtarget
trigger1 = animelem = 9
value = 7, 8

[State 840, FX]
type = helper
trigger1 = animelem = 9
helpertype = normal
stateno = 841
ID = 841
name = "FX"
postype = p1
pos = 45, 0
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 840, Shock Particles]
type = helper
trigger1 = !numhelper(8155)
trigger1 = numtarget
trigger1 = animelem = 9
helpertype = normal
stateno = 8155
ID = 8155
name = "Shock Particles"
postype = p2
ownpal = 1
ignorehitpause = 1

[State 840, Shock Particles]
type = helper
trigger1 = numhelper(8155)
trigger1 = numtarget
trigger1 = animelem = 9
trigger1 = 1 || helper(8155), map(timer) := 60
trigger1 = 1 || helper(8155), map(target) := (target, ID)

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
velset = 0, 0
sprpriority = -1

[State 845, Anim]
type = changeanim2
trigger1 = !time
value = 845

[State 845, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 845, Palfx]
type = palfx
trigger1 = !time
time = 1
add = 0, 0, 0

[State 845, Safety]
type = selfstate
trigger1 = time >= 180
value = ifelse(pos y < 0, 5040, 0)
ctrl = 1


[Statedef 846]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = -1

[State 846, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 846, Anim]
type = changeanim
trigger1 = !time
value = 5100

[State 846, Palfx]
type = palfx
trigger1 = !time
time = 60
color = -256
invertall = 1
sinadd = 255, 255, 255, 4

[State 846, End]
type = changestate
trigger1 = time >= 6
value = 847


[Statedef 847]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 847, Pos]
type = posset
trigger1 = !time
y = 0

[State 847, Accel]
type = veladd
trigger1 = time
y = 0.4850; yaccel

[State 847, Vel]
type = velset
trigger1 = time = 1
x = 3
y = -6

[State 847, Anim]
type = changeanim2
trigger1 = !time
value = 847

[State 847, Dizzy Start]
type = dizzyset
trigger1 = alive
trigger1 = life > 0
trigger1 = dizzypoints <= 0
trigger1 = !gethitvar(isbound)
value = 1

[State 847, Fall Recovery]
type = selfstate
trigger1 = alive = 1 && dizzy = 0 && dizzypoints > 0
trigger1 = gethitvar(fall.recover)
trigger1 = command = "recovery"
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 847, End]
type = selfstate
trigger1 = time > 10
trigger1 = vel y > 0
trigger1 = pos y >= 25
value = 5110


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
trigger1 = numtarget
trigger1 = target, backedgedist <= 0
x = -2.562
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
value = 5000, 2
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
