; _______________________________________
;| Geese Howard by Phantom.of.the.Server |
; 
;==
;==SPECIAL MOVES=
;==

;==REPPUKEN=
[Statedef 1000]
type = S
physics = S
movetype = A
anim = 1000
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

[State 1000, Strength]
type = mapset
trigger1 = !AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(map(cmd_strength_x), 0, 1)
ignorehitpause = 1
persistent = 0

[State 1000, Strength AI]
type = mapset
trigger1 = AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(p2statetype = L, 0, ifelse(p2movetype = H, 1, ifelse(random < 500, 1, 0)))
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
value = ifelse(map(strength) = 0, 1001, 1000)

[State 1000, Sound]
type = playsnd
trigger1 = animelem = 1
value = 5, 0
channel = 0
freqmul = 0.98 + (random / 25000.0)

[State 1000, Sound]
type = playsnd
trigger1 = animelem = 4
value = 7, 0

[State 1000, Correct Projectile Trade]
type = hitby
trigger1 = animelem = 4
value2 = SCA, AA, AT
time = 1

[State 1000, Reppuken]
type = helper
trigger1 = animelem = 4
helpertype = normal; projectile
stateno = 1005
ID = 1005
name = "Reppuken"
postype = p1
pos = 36, 0; 20
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1000, FX]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = anim + 3
name = "Reppuken FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
ownpal = 1

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- Double Reppuken -----
[Statedef 1010]
type = S
physics = S
movetype = A
anim = 1010
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

[State 1010, Strength]
type = mapset
trigger1 = !time
map = "strength"
value = 2
ignorehitpause = 1

[State 1010, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1010, Sound]
type = playsnd
trigger1 = animelem = 1
value = 5, 1
channel = 0
freqmul = 0.98 + (random / 25000.0)

[State 1010, Sound]
type = playsnd
trigger1 = animelem = 4 || animelem = 9
value = 7, 0
channel = 4
freqmul = ifelse((animelem = 4), 1.2, 1.0)

[State 1010, Correct Projectile Trade]
type = hitby
trigger1 = animelem = 4 || animelem = 9
value2 = SCA, AA, AT
time = 1

[State 1010, Reppuken Swirl]
type = helper
trigger1 = animelem = 4
helpertype = normal; projectile
stateno = 1015
ID = 1015
name = "Double Reppuken"
postype = p1
pos = 64, 0
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1010, Reppuken Large]
type = helper
triggerall = animelem = 9
trigger1 = numhelper(1015)
trigger1 = helper(1015), stateno = 1015
helpertype = normal; projectile
stateno = 1020
ID = 1020
name = "Double Reppuken"
postype = p1
pos = 64, 0
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1010, Reppuken Small]
type = helper
triggerall = animelem = 9
trigger1 = !numhelper(1015)
trigger2 = numhelper(1015)
trigger2 = helper(1015), stateno != 1015
helpertype = normal; projectile
stateno = 1005
ID = 1020
name = "Double Reppuken"
postype = p1
pos = 50, 0
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1010, FX]
type = helper
trigger1 = animelem = 3 || animelem = 8
helpertype = normal
stateno = ifelse((animelem = 8), 1004, 1003)
name = "Reppuken FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
ownpal = 1

[State 1010, Dust]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
pos = 80, 0
facing = -1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1010, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- Fake -----
[Statedef 1090]
type = S
physics = S
movetype = A
anim = 1090
ctrl = 0
velset = 0, 0
sprpriority = 2
facep2 = 1

[State 1090, Sound]
type = playsnd
trigger1 = animelem = 3
value = 4, 6
channel = 0

[State 1090, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
;channel = 1
stopongethit = 1

[State 1090, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==EX REPPUKEN=
[Statedef 1030]
type = S
physics = N
movetype = A
anim = 1030
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
anim = 8210
sprpriority = 3
postype = p1
pos = -4, -126
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1030, Sound]
type = playsnd
trigger1 = animelem = 1
value = 5, 0
channel = 0

[State 1030, Sound]
type = playsnd
trigger1 = animelem = 4
value = 7, 0
channel = 4

[State 1030, Correct Projectile Trade]
type = hitby
trigger1 = animelem = 4
value2 = SCA, AA, AT
time = 1

[State 1030, Reppuken]
type = helper
trigger1 = animelem = 4
helpertype = normal; projectile
stateno = 1035
ID = 1035
name = "EX Reppuken"
postype = p1
pos = 38, 0
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1030, FX]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 1003
name = "Reppuken FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
ownpal = 1

[State 1030, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==JAEIKEN=
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
value = ifelse(map(cmd_strength_c), 2, ifelse(map(cmd_strength_b), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1100, Strength AI]
type = mapset
trigger1 = AIlevel
trigger1 = time <= 0
map = "strength"
;value = ifelse(p2bodydist x > 170, 2, ifelse(p2bodydist x > 140, 1, 0))
value = ifelse(map(customcombo) || map(ai_attackwindow) < 13, 0, ifelse(map(ai_attackwindow) < 17, 1, 2))
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

[State 1100, Sound]
type = playsnd
trigger1 = animelem = 5
value = 7, 1

[State 1100, Dust]
type = helper
trigger1 = animelem = 5
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1100, Vel]
type = velset
trigger1 = animelemtime(5) >= 0
x = ifelse(map(strength) = 2, 7.8333, ifelse(map(strength) = 1, 7.675, 7.4375))
y = 0

[State 1100, Sound]
type = playsnd
trigger1 = animelem = 4
value = 5, 2
channel = 0

[State 1100, FX]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 1105
ID = 1105
name = "Jaeiken FX"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1100, Attack]
type = changestate
trigger1 = animelemtime(5) > 0
trigger1 = p2dist y >= -80
trigger1 = abs(p2bodydist x) <= 24
trigger1 = p2statetype != L
value = 1110

[State 1100, End]; 16, 20, 24
type = changestate
triggerall = animelemtime(5) >= 0
trigger1 = map(strength) = 0 && time >= 21
trigger2 = map(strength) = 1 && time >= 29
trigger3 = time >= 37
value = 1103


;----- Miss -----
[Statedef 1103]
type = S
physics = N
movetype = I
anim = 1103
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1

[State 1103, Sound]
type = playsnd
trigger1 = !time
value = 0, 103

[State 1103, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1103, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- Attack -----
[Statedef 1110]
type = S
physics = N
movetype = A
anim = 1110
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1110, Vel]
type = velset
trigger1 = animelem = 1
x = ifelse(map(strength) = 2, 4.31, ifelse(map(strength) = 1, 4.01, 3.77))

[State 1110, Vel]
type = velset
trigger1 = animelem = 9
x = 0

[State 1110, Sound]
type = playsnd
trigger1 = animelem = 9
value = 4, 3
channel = 0

[State 1110, Sound]
type = playsnd
trigger1 = animelem = 1 || animelem = 3
value = 1, 2
;channel = 1
stopongethit = 1

[State 1110, Sound]
type = playsnd
trigger1 = animelem = 9
value = 7, 3

[State 1110, Hit]
type = hitdef
trigger1 = animelem = 2
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ifelse(map(strength) = 2, 40, ifelse(map(strength) = 1, 35, 30)), ifelse(map(strength) = 2, 10, ifelse(map(strength) = 1, 9, 8))
dizzypoints = ifelse(map(strength) = 2, 67, ifelse(map(strength) = 1, 50, 34)) * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
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
ground.velocity = -4.49, 0
ground.cornerpush.veloff = 0
guard.velocity = -4.49
guard.cornerpush.veloff = 0
air.velocity = -4.31, -5.00
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p1sprpriority = sprpriority
forcestand = 1
hitsound = s2, 2
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 38), map(sparky) := -64
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667

[State 1110, Hit]
type = hitdef
trigger1 = animelem = 5
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ifelse(map(strength) = 2, 40, ifelse(map(strength) = 1, 35, 30)), ifelse(map(strength) = 2, 10, ifelse(map(strength) = 1, 9, 8))
dizzypoints = ifelse(map(strength) = 2, 67, ifelse(map(strength) = 1, 50, 34)) * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
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
ground.velocity = -4.49, 0
ground.cornerpush.veloff = 0
guard.velocity = -4.49
guard.cornerpush.veloff = 0
air.velocity = -4.31, -5.00
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
hitsound = s2, 2
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 48), map(sparky) := -64
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667

[State 1110, Hit]
type = hitdef
trigger1 = animelem = 9
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 2)
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ifelse(map(strength) = 2, 70, ifelse(map(strength) = 1, 65, 60)), ifelse(map(strength) = 2, 18, ifelse(map(strength) = 1, 16, 15))
dizzypoints = ifelse(map(strength) = 2, 67, ifelse(map(strength) = 1, 50, 34)) * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
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
ground.velocity = -5.00, -6.00
ground.cornerpush.veloff = 0
guard.velocity = -4.49
guard.cornerpush.veloff = 0
air.velocity = -5.00, -6.00
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
fall.recover = 1
fall.recovertime = 120
p1sprpriority = sprpriority
forcestand = 1
hitsound = s2, 2
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 40), map(sparky) := -61
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667

[State 1110, Anim]
type = changeanim
trigger1 = anim = 1110
trigger1 = movecontact = 1 && hitpausetime
trigger1 = animelemtime(9) >= 0 && animelemtime(10) <= 0
trigger1 = hitpausetime <= 8
value = 1110
elem = 10
ignorehitpause = 1

[State 1110, Type]
type = statetypeset
trigger1 = animelem = 11
movetype = I

[State 1110, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==EX JAEIKEN=
[Statedef 1130]
type = S
physics = N
movetype = A
anim = 1130
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

[State 1130, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
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
pos = -11, -83
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1130, Sound]
type = playsnd
trigger1 = animelem = 5
value = 7, 1

[State 1130, Dust]
type = helper
trigger1 = animelem = 5
helpertype = normal
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1140, Vel]
type = velmul
trigger1 = animelemtime(5) >= 0
x = 0.9

[State 1140, Vel]
type = velset
trigger1 = animelem = 5
x = 24

[State 1130, Sound]
type = playsnd
trigger1 = animelem = 4
value = 5, 2
channel = 0

[State 1130, FX]
type = helper
trigger1 = animelem = 4
helpertype = normal
stateno = 1135
ID = 1135
name = "EX Jaeiken FX"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1130, Hit]
type = hitdef
trigger1 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 4)
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 20, 5
dizzypoints = 25 * !map(customcombo)
getpower = 0, 0
givepower = 40, 40
pausetime = 4, 4
guard.pausetime = 4, 4
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
ground.velocity = -4.49, 0
ground.cornerpush.veloff = 0
guard.velocity = -4.49
guard.cornerpush.veloff = 0
air.velocity = -4.00, -3.00
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p1sprpriority = sprpriority
forcestand = 1
hitsound = s2, 2
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 44), map(sparky) := -58
palfx.time = 60
palfx.color = 0
palfx.sinadd = 128, 128, 128, 4
palfx.mul = map(palfx2_r), map(palfx2_g), map(palfx2_b)
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667

[State 1130, Attack]
type = changestate
trigger1 = movecontact = 1
value = 1140

[State 1130, End]
type = changestate
trigger1 = time >= 33
value = 1131


;----- Miss -----
[Statedef 1131]
type = S
physics = N
movetype = I
anim = 1103
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1

[State 1131, Sound]
type = playsnd
trigger1 = !time
value = 0, 103

[State 1131, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1131, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- Attack -----
[Statedef 1140]
type = S
physics = N
movetype = A
anim = 1140
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1140, Vel]
type = velset
trigger1 = animelem = 1
x = 5

[State 1140, Vel]
type = velset
trigger1 = animelem = 8
x = 0

[State 1140, Sound]
type = playsnd
trigger1 = animelem = 8
value = 7, 3

[State 1140, Hit]
type = hitdef
trigger1 = animelem = 2 || animelem = 4 || animelem = 6
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 4)
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 20, 5
dizzypoints = 25 * !map(customcombo)
getpower = 0, 0
givepower = 40, 40
pausetime = 4, 4
guard.pausetime = 4, 4
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
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.velocity = -4.49
guard.cornerpush.veloff = 0
air.velocity = -4.00, -3.00
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p1sprpriority = sprpriority
forcestand = 1
hitsound = s2, 2
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 44), map(sparky) := -58
palfx.time = 60
palfx.color = 0
palfx.sinadd = 128, 128, 128, 4
palfx.mul = map(palfx2_r), map(palfx2_g), map(palfx2_b)
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667

[State 1140, Hit]
type = hitdef
trigger1 = animelem = 8
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 5)
attr = S, SA
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
ground.type = Low
air.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = -8.62, -5.25
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -8.62, -5.25
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
fall.recover = 1
fall.recovertime = 120
p1sprpriority = sprpriority
forcestand = 1
hitsound = s2, 8
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 60), map(sparky) := -62
palfx.time = 60
palfx.color = 0
palfx.sinadd = 128, 128, 128, 4
palfx.mul = map(palfx2_r), map(palfx2_g), map(palfx2_b)
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
ID = 1140

[State 1140, Burned]
type = targetstate
trigger1 = movehit
trigger1 = numtarget(1140)
trigger1 = target(1140), hitfall
trigger1 = target(1140), selfanimexist(7697)
trigger1 = target(1140), stateno = 5000 || target(1140), stateno = 5010 || target(1140), stateno = 5020
value = 7697
ID = 1140
ignorehitpause = 1

[State 1140, Type]
type = statetypeset
trigger1 = animelem = 10
movetype = I

[State 1140, End]
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


;==JOUDAN ATEMI NAGE=
[Statedef 1200]
type = S
physics = S
movetype = A
anim = 1200
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 50 * map(meterscaling)
facep2 = 1

[State 1200, Sound]
type = playsnd
trigger1 = animelem = 1
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 1200, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 0
;channel = 1
stopongethit = 1

[State 1200, Safety]
type = superpause
trigger1 = !time
time = 0
p2defmul = 1
anim = -1
sound = -1
darken = 0

[State 1200, No proximity block]
type = attackdist
trigger1 = 1
value = 0

[State 1200, Miss]
type = reversaldef
trigger1 = animelemtime(2) < 0
attr = S, ST
reversal.attr =

[State 1200, Reversal]
type = reversaldef
;trigger1 = map(parry_nowalk) <= 0 does not seem to be needed in Ikemen
trigger1 = animelemtime(2) < 0
ID = 1200
attr = S, ST
reversal.attr = SCA, SA, HA
pausetime = 0, 0
sparkno = -1 + 0 * (map(sparkno) := -1)
sparkxy = 0, 0
hitsound = s3, 0
p1stateno = 1210
p2stateno = 1213
fall = 1
fall.recover = 1
numhits = 0

[State 1200, Reversal]
type = reversaldef
trigger1 = animelemtime(2) < 0
trigger1 = p2statetype = A
ID = 1200
attr = S, ST
reversal.attr = A, NA, SA, HA
pausetime = 0, 0
sparkno = -1 + 0 * (map(sparkno) := -1)
sparkxy = 0, 0
hitsound = s3, 0
p1stateno = 1210
p2stateno = 1213
fall = 1
fall.recover = 1
numhits = 0

[State 1200, Reversal Miss]
type = reversaldef
trigger1 = numenemy = 1
trigger1 = reversaldefattr = SCA, AA, AP, AT
trigger1 = p2dist x < -const(size.ground.back)
attr =
reversal.attr =

[State 1510, Idle]
type = statetypeset
trigger1 = animelemtime(2) >= 0
movetype = I
persistent = 0

[State 1200, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- Success -----
[Statedef 1210]
type = S
physics = S
movetype = A
anim = 1210
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1210, Safety]
type = changestate
trigger1 = !time
trigger1 = !numtarget
value = 0
ctrl = 1

[State 1210, Spark]
type = explod
trigger1 = !time
;trigger1 = map(cfg_sparks)
ID = 8000
anim = 8030
postype = p1
pos = 32 * const(size.xscale), -116 * const(size.yscale)
pausemovetime = -1
supermovetime = -1
ownpal = 1
ontop = 1

[State 1210, Turn]
type = turn
trigger1 = animelem = 2

[State 1210, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelem = 2
value = 1215

[State 1210, Throw]
type = targetfacing
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0
value = 1

[State 1210, Width]
type = width
trigger1 = animelemtime(5) >= 0 && animelemtime(7) < 0
edge = 32, 0

[State 1210, Width]
type = width
trigger1 = animelemtime(7) >= 0 && animelemtime(10) < 0
edge = 64, 0

[State 1210, Bind 2]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = -40, 0

[State 1210, Bind 3]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = -36, -124

[State 1210, Bind 4]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = 31, -115

[State 1210, Bind 5]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
pos = 35, -95

[State 1210, Bind 6]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(6) >= 0 && animelemtime(7) < 0
pos = 40, -75

[State 1210, Bind 7]
type = targetbind
trigger1 = numtarget
trigger1 = animelem = 7
pos = 45, 0

[State 1210, Damage]
type = targetlifeadd
trigger1 = numtarget
trigger1 = animelem = 7
value = floor(-130 * map(damagescaling))
dizzy = 0

[State 1210, Stun Damage]
type = targetdizzypointsadd
trigger1 = numtarget
trigger1 = animelem = 7
value = floor(-200 * map(damagescaling)) * !map(customcombo)

[State 1210, Give Power]
type = targetpoweradd
trigger1 = numtarget
trigger1 = animelem = 7
value = 40; givepower

[State 1210, Get Power]
type = poweradd
trigger1 = numtarget
trigger1 = animelem = 7
value = 200 * map(meterscaling); getpower

[State 1210, Hit]
type = hitadd
trigger1 = numtarget
trigger1 = animelem = 7
value = 1

[State 1210, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelem = 7
value = 1216

[State 1210, Sound]
type = playsnd
trigger1 = animelem = 2
value = 5, 7 + (random % 3)
channel = 0

[State 1210, Sound]
type = playsnd
trigger1 = numtarget
trigger1 = animelem = 7
value = 7, 8

[State 1210, Shake]
type = envshake
trigger1 = numtarget
trigger1 = animelem = 7
time = 24
freq = 180
ampl = -4
mul = 0.85

[State 1210, Dust]
type = helper
trigger1 = map(cfg_sparks)
trigger1 = numtarget
trigger1 = animelem = 7
helpertype = normal
stateno = 8110
ID = 8100
name = "Impact Dust"
postype = p1
pos = 45, 0
ownpal = 1

[State 1210, Dust]
type = explod
trigger1 = !map(cfg_sparks)
trigger1 = numtarget
trigger1 = animelem = 7
anim = F 62
postype = p1
pos = 45, 0
sprpriority = -10
ownpal = 1

[State 1210, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- Target Paused -----
[Statedef 1213]
type = A
physics = N
movetype = H
velset = 0, 0
sprpriority = 3

[State 1213, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 1213, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1213, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 1213, Anim]
type = assertspecial
trigger1 = 1
flag = animfreeze

[State 1213, End]
type = selfstate
trigger1 = time >= 24
value = 5040


;----- Target -----
[Statedef 1215]
type = A
physics = N
movetype = H
velset = 0, 0
sprpriority = 1

[State 1215, Anim]
type = changeanim2
trigger1 = !time
value = 1215

[State 1215, Sound]
type = stopsnd
trigger1 = !time
channel = 0

[State 1215, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 1215, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 1216]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 1216, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 1216, Anim]
type = changeanim
trigger1 = !time
value = 5100

[State 1216, End]
type = changestate
trigger1 = time >= 6
value = 1217


[Statedef 1217]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 1217, Pos]
type = posset
trigger1 = !time
y = 0

[State 1217, Accel]
type = veladd
trigger1 = time
y = 0.4850; yaccel

[State 1217, Vel]
type = velset
trigger1 = time = 1
x = 3
y = -6

[State 1217, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5035), 5035, 5050)

[State 1217, Anim]
type = changeanim
trigger1 = !animtime
trigger1 = anim != 5050
value = 5050

[State 1217, Dizzy Start]
type = dizzyset
trigger1 = alive
trigger1 = life > 0
trigger1 = dizzypoints <= 0
trigger1 = !gethitvar(isbound)
value = 1

[State 1217, Fall Recovery]
type = selfstate
trigger1 = alive = 1 && dizzy = 0 && dizzypoints > 0
trigger1 = gethitvar(fall.recover)
trigger1 = command = "recovery"
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 1217, End]
type = selfstate
trigger1 = time >= 8
trigger1 = vel y > 0
trigger1 = pos y >= 25
value = 5110


;==CHUUDAN ATEMI NAGE=
[Statedef 1220]
type = S
physics = S
movetype = A
anim = 1220
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 50 * map(meterscaling)
facep2 = 1

[State 1220, Sound]
type = playsnd
trigger1 = animelem = 1
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 1220, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 0
;channel = 1
stopongethit = 1

[State 1220, Safety]
type = superpause
trigger1 = !time
time = 0
p2defmul = 1
anim = -1
sound = -1
darken = 0

[State 1220, No proximity block]
type = attackdist
trigger1 = 1
value = 0

[State 1220, Reversal]
type = reversaldef
trigger1 = animelemtime(2) < 0
ID = 1220
attr = S, ST
reversal.attr = SC, NA
pausetime = 0, 0
sparkno = -1 + 0 * (map(sparkno) := -1)
sparkxy = 0, 0
hitsound = s3, 0
p1stateno = 1230
p2stateno = 1213
fall = 1
fall.recover = 1
numhits = 0
persistent = 0

[State 1220, Reversal Miss]
type = reversaldef
trigger1 = numenemy = 1
trigger1 = reversaldefattr = SCA, AA, AP, AT
trigger1 = p2dist x < -const(size.ground.back)
attr =
reversal.attr =

[State 1220, Idle]
type = statetypeset
trigger1 = animelemtime(2) >= 0
movetype = I
persistent = 0

[State 1220, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- Success -----
[Statedef 1230]
type = S
physics = S
movetype = A
anim = 1230
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1230, Safety]
type = changestate
trigger1 = !time
trigger1 = !numtarget
value = 0
ctrl = 1

[State 1230, Spark]
type = explod
trigger1 = !time
;trigger1 = map(cfg_sparks)
ID = 8000
anim = 8030
postype = p1
pos = 22 * const(size.xscale), -75 * const(size.yscale)
pausemovetime = -1
supermovetime = -1
ownpal = 1
ontop = 1

[State 1230, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelem = 2
value = 1235

[State 1230, Throw]
type = targetfacing
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0
value = -1

[State 1230, Width]
type = width
trigger1 = animelemtime(5) >= 0 && animelemtime(7) < 0
edge = 32, 0

[State 1230, Width]
type = width
trigger1 = animelemtime(7) >= 0 && animelemtime(10) < 0
edge = 64, 0

[State 1230, Bind 2]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 42, 0

[State 1230, Bind 3]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 22, 0

[State 1230, Bind 4]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
pos = 12, 0

[State 1230, Bind 5]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
pos = 6, 0

[State 1230, Bind 6]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(6) >= 0 && animelemtime(7) < 0
pos = 0, -76

[State 1230, Bind 7]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(7) >= 0 && animelemtime(8) < 0
pos = 56, -160

[State 1230, Bind 8]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(8) >= 0 && animelemtime(9) < 0
pos = 38, -150

[State 1230, Bind 9]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(9) >= 0 && animelemtime(10) < 0
pos = 42, -140

[State 1230, Bind 10]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(10) >= 0 && animelemtime(11) < 0
pos = 56, -122

[State 1230, Bind 11]
type = targetbind
trigger1 = numtarget
trigger1 = animelem = 11
pos = 50, 0

[State 1230, Damage]
type = targetlifeadd
trigger1 = numtarget
trigger1 = animelem = 11
value = floor(-150 * map(damagescaling))
dizzy = 0

[State 1230, Stun Damage]
type = targetdizzypointsadd
trigger1 = numtarget
trigger1 = animelem = 11
value = floor(-200 * map(damagescaling)) * !map(customcombo)

[State 1230, Give Power]
type = targetpoweradd
trigger1 = numtarget
trigger1 = animelem = 11
value = 40; givepower

[State 1230, Get Power]
type = poweradd
trigger1 = numtarget
trigger1 = animelem = 11
value = 200 * map(meterscaling); getpower

[State 1230, Hit]
type = hitadd
trigger1 = numtarget
trigger1 = animelem = 11
value = 1

[State 1230, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelem = 11
value = 1236

[State 1230, Sound]
type = playsnd
trigger1 = animelem = 2
value = 5, 7 + (random % 3)
channel = 0

[State 1230, Sound]
type = playsnd
trigger1 = numtarget
trigger1 = animelem = 11
value = 7, 8

[State 1230, Shake]
type = envshake
trigger1 = numtarget
trigger1 = animelem = 11
time = 24
freq = 180
ampl = -4
mul = 0.85

[State 1230, Dust]
type = helper
trigger1 = map(cfg_sparks)
trigger1 = numtarget
trigger1 = animelem = 11
helpertype = normal
stateno = 8110
ID = 8100
name = "Impact Dust"
postype = p1
pos = 45, 0
ownpal = 1

[State 1230, Dust]
type = explod
trigger1 = !map(cfg_sparks)
trigger1 = numtarget
trigger1 = animelem = 11
anim = F 62
postype = p1
pos = 45, 0
sprpriority = -10
ownpal = 1

[State 1230, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- Target -----
[Statedef 1235]
type = A
physics = N
movetype = H
velset = 0, 0
sprpriority = 1

[State 1235, Anim]
type = changeanim2
trigger1 = !time
value = 1235

[State 1235, Sound]
type = stopsnd
trigger1 = !time
channel = 0

[State 1235, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 1235, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 1236]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 1236, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 1236, Anim]
type = changeanim
trigger1 = 1
value = 5100

[State 1236, End]
type = changestate
trigger1 = time >= 6
value = 1237


[Statedef 1237]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 1237, Pos]
type = posset
trigger1 = !time
y = 0

[State 1237, Accel]
type = veladd
trigger1 = time
y = 0.4850; yaccel

[State 1237, Vel]
type = velset
trigger1 = time = 1
x = -3
y = -6

[State 1237, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5035), 5035, 5050)

[State 1237, Anim]
type = changeanim
trigger1 = !animtime
trigger1 = anim != 5050
value = 5050

[State 1237, Dizzy Start]
type = dizzyset
trigger1 = alive
trigger1 = life > 0
trigger1 = dizzypoints <= 0
trigger1 = !gethitvar(isbound)
value = 1

[State 1237, Fall Recovery]
type = selfstate
trigger1 = alive = 1 && dizzy = 0 && dizzypoints > 0
trigger1 = gethitvar(fall.recover)
trigger1 = command = "recovery"
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 1237, End]
type = selfstate
trigger1 = time >= 8
trigger1 = vel y > 0
trigger1 = pos y >= 25
value = 5110


;==GEDAN ATEMI NAGE=
[Statedef 1240]
type = S
physics = S
movetype = A
anim = 1240
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 50 * map(meterscaling)
facep2 = 1

[State 1240, Sound]
type = playsnd
trigger1 = animelem = 1
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 1240, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 0
;channel = 1
stopongethit = 1

[State 1240, Safety]
type = superpause
trigger1 = !time
time = 0
p2defmul = 1
anim = -1
sound = -1
darken = 0

[State 1240, No proximity block]
type = attackdist
trigger1 = 1
value = 0

[State 1240, Reversal]
type = reversaldef
trigger1 = animelemtime(3) < 0
ID = 1240
attr = S, ST
reversal.attr = SC, NA
pausetime = 0, 0
sparkno = -1 + 0 * (map(sparkno) := -1)
sparkxy = 0, 0
hitsound = s3, 0
p1stateno = 1250
p2stateno = 1213
fall = 1
fall.recover = 1
numhits = 0
persistent = 0

[State 1240, Reversal Miss]
type = reversaldef
trigger1 = numenemy = 1
trigger1 = reversaldefattr = SCA, AA, AP, AT
trigger1 = p2dist x < -const(size.ground.back)
attr =
reversal.attr =

[State 1240, Idle]
type = statetypeset
trigger1 = animelemtime(3) >= 0
movetype = I
persistent = 0

[State 1240, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- Success -----
[Statedef 1250]
type = S
physics = S
movetype = A
anim = 1250
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1250, Safety]
type = changestate
trigger1 = !time
trigger1 = !numtarget
value = 0
ctrl = 1

[State 1250, Spark]
type = explod
trigger1 = !time
;trigger1 = map(cfg_sparks)
ID = 8000
anim = 8030
postype = p1
pos = 26 * const(size.xscale), -33 * const(size.yscale)
pausemovetime = -1
supermovetime = -1
ownpal = 1
ontop = 1

[State 1250, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelem = 2
value = 1255

[State 1250, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelem = 3
value = 1256

[State 1250, Throw]
type = targetfacing
trigger1 = numtarget
trigger1 = animelem = 2
value = -1

[State 1250, Width]
type = width
trigger1 = animelemtime(2) >= 0 && animelemtime(7) < 0
edge = 24, 0

[State 1250, Width]
type = width
trigger1 = animelemtime(7) >= 0 && animelemtime(11) < 0
edge = 48, 0

[State 1250, Pull]
type = targetfacing
trigger1 = numtarget
trigger1 = animelem = 3
value = -1

[State 1250, Pull]
type = targetvelset
trigger1 = numtarget
trigger1 = animelem = 3
x = ((target, pos x - pos x - (22 * facing)) / 19.0) * facing

[State 1250, Bind 2]
type = targetbind
trigger1 = numtarget
trigger1 = animelem = 8
pos = 40, -27

[State 1250, Damage]
type = targetlifeadd
trigger1 = numtarget
trigger1 = animelem = 8
value = floor(-140 * map(damagescaling))
dizzy = 0

[State 1250, Stun Damage]
type = targetdizzypointsadd
trigger1 = numtarget
trigger1 = animelem = 8
value = floor(-200 * map(damagescaling)) * !map(customcombo)

[State 1250, Give Power]
type = targetpoweradd
trigger1 = numtarget
trigger1 = animelem = 8
value = 40; givepower

[State 1250, Get Power]
type = poweradd
trigger1 = numtarget
trigger1 = animelem = 8
value = 200 * map(meterscaling); getpower

[State 1250, Hit]
type = hitadd
trigger1 = numtarget
trigger1 = animelem = 8
value = 1

[State 1250, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelem = 8
value = 1257

[State 1250, Sound]
type = playsnd
trigger1 = animelem = 2
value = 5, 7 + (random % 3)
channel = 0

[State 1250, Sound]
type = playsnd
trigger1 = numtarget
trigger1 = animelem = 8
value = 2, 2
channel = 2

[State 1250, Shake]
type = envshake
trigger1 = numtarget
trigger1 = animelem = 8
time = 12
freq = 180
ampl = 2
mul = 0.8

;[State 1250, Spark]
;in ZSS

[State 1250, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- Target -----
[Statedef 1255]
type = A
physics = N
movetype = H
velset = 0, 0
sprpriority = 1

[State 1255, Anim]
type = assertspecial
trigger1 = 1
flag = animfreeze

[State 1255, Sound]
type = stopsnd
trigger1 = !time
channel = 0

[State 1255, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 1255, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 1256]
type = A
physics = N
movetype = H
sprpriority = 1

[State 1256, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 1256, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1256, Anim]
type = changeanim
trigger1 = !time
value = 5070

[State 1256, Accel]
type = veladd
trigger1 = time
y = 1

[State 1256, Vel]
type = velset
trigger1 = time = 1
y = -10

[State 1256, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 5100


[Statedef 1257]
type = A
physics = N
movetype = H
velset = 0, 0
sprpriority = 3

[State 1257, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1257, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 1257, Anim]
type = changeanim
trigger1 = 1
value = 5012

[State 1257, End]
type = changestate
trigger1 = time >= 12
value = 1258


[Statedef 1258]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 1258, Accel]
type = veladd
trigger1 = 1
y = 0.4850; yaccel
[State 1258, Vel]
type = velset
trigger1 = !time
x = -7.54
y = -3

[State 1258, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5035), 5035, 5050)

[State 1258, Anim]
type = changeanim
trigger1 = !animtime
trigger1 = anim != 5050
value = 5050

[State 1258, Dizzy Start]
type = dizzyset
trigger1 = alive
trigger1 = life > 0
trigger1 = dizzypoints <= 0
trigger1 = !gethitvar(isbound)
value = 1

[State 1258, Fall Recovery]
type = selfstate
trigger1 = alive = 1 && dizzy = 0 && dizzypoints > 0
trigger1 = gethitvar(fall.recover)
trigger1 = command = "recovery"
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 1258, End]
type = selfstate
trigger1 = time >= 8
trigger1 = vel y > 0
trigger1 = pos y >= 25
value = 5100


;==EX ATEMI NAGE=
[Statedef 1260]
type = S
physics = S
movetype = A
anim = 1260
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -500
facep2 = 1

[State 1160, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1160, Custom Combo End]
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
anim = 8210
sprpriority = 3
postype = p1
pos = 22, -76
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1260, Sound]
type = playsnd
trigger1 = animelem = 1
value = 4, ifelse(random < 500, 0, 1)
channel = 0

[State 1260, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 0
;channel = 1
stopongethit = 1

[State 1260, Safety]
type = superpause
trigger1 = !time
time = 0
p2defmul = 1
anim = -1
sound = -1
darken = 0

[State 1260, No proximity block]
type = attackdist
trigger1 = 1
value = 0

[State 1260, Reversal]
type = reversaldef
trigger1 = animelemtime(2) < 0
ID = 1260
attr = S, ST
reversal.attr = SC, NA, SA, HA
pausetime = 0, 0
sparkno = -1 + 0 * (map(sparkno) := -1)
sparkxy = 0, 0
hitsound = s3, 0
p1stateno = 1270
p2stateno = 1213
fall = 0
forcenofall = 1
numhits = 0
persistent = 0

[State 1260, Reversal Miss]
type = reversaldef
trigger1 = numenemy = 1
trigger1 = reversaldefattr = SCA, AA, AP, AT
trigger1 = p2dist x < -const(size.ground.back)
attr =
reversal.attr =

[State 1260, Idle]
type = statetypeset
trigger1 = animelemtime(2) >= 0
movetype = I
persistent = 0

[State 1260, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- Success -----
[Statedef 1270]
type = S
physics = S
movetype = A
anim = 1270
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1270, Safety]
type = changestate
trigger1 = !time
trigger1 = !numtarget
value = 0
ctrl = 1

[State 1270, Spark]
type = explod
trigger1 = !time
;trigger1 = map(cfg_sparks)
ID = 8000
anim = 8030
postype = p1
pos = 22 * const(size.xscale), -75 * const(size.yscale)
pausemovetime = -1
supermovetime = -1
ownpal = 1
ontop = 1

[State 1270, Turn]
type = turn
trigger1 = animelem = 2

[State 1270, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelem = 2
value = 1275

[State 1270, Throw]
type = targetfacing
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0
value = -1

[State 1270, Width]
type = width
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
edge = 32, 0

[State 1270, Bind 2]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = -28, 4

[State 1270, Bind 3]
type = targetbind
trigger1 = numtarget
trigger1 = animelemtime(3) >= 0 && animelemtime(4) < 0
pos = 0, 8

[State 1270, Bind 4]
type = targetbind
trigger1 = numtarget
trigger1 = animelem = 4
pos = 26, 0

[State 1270, Give Power]
type = targetpoweradd
trigger1 = numtarget
trigger1 = animelem = 4
value = 40; givepower

[State 1270, Hit]
type = hitadd
trigger1 = numtarget
trigger1 = animelem = 4
value = 1

[State 1270, Juggle Reset]
type = mapset
trigger1 = numtarget
trigger1 = animelem = 4
map = "juggle_count"
value = 0

[State 1270, Throw]
type = targetstate
trigger1 = numtarget
trigger1 = animelem = 4
value = 1276

[State 1270, Sound]
type = playsnd
trigger1 = animelem = 2
value = 6, 17
channel = 0

[State 1270, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
;channel = 1
stopongethit = 1

[State 1270, Sound]
type = playsnd
trigger1 = animelem = 4
value = 0, 101

[State 1270, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- Target -----
[Statedef 1275]
type = S
physics = N
movetype = H
velset = 0, 0
sprpriority = 3

[State 1275, Anim]
type = changeanim2
trigger1 = !time
value = 1275

[State 1275, Sound]
type = stopsnd
trigger1 = !time
channel = 0

[State 1275, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0

[State 1275, Dust]
type = explod
trigger1 = animelemtime(animelemno(0)) = 0
anim = F 120
postype = p1
pos = 0, 0
ownpal = 1
sprpriority = 3

[State 1275, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


[Statedef 1276]
type = S
physics = N
movetype = H
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 1276, Anim]
type = changeanim
trigger1 = !time
value = 5012

[State 1276, Anim]
type = changeanim
trigger1 = !animtime
trigger1 = anim = 5012
value = 5017

[State 1276, Pos]
type = posset
trigger1 = 1
y = 0

[State 1276, Vel]
type = velmul
trigger1 = 1
x = 0.85

[State 1276, Vel]
type = velset
trigger1 = !time
x = -6

[State 1276, End]
type = selfstate
trigger1 = time >= 32
value = 0
ctrl = 1


;==SHIPPUKEN=
[Statedef 1300]
type = A
physics = N
movetype = A
anim = 1300
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 50 * map(meterscaling)

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
value = ifelse(random < 333, 2, ifelse(random < 500, 1, 0))
ignorehitpause = 1

[State 1300, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1300, Sound]
type = playsnd
trigger1 = animelem = 2
value = 5, 3
channel = 0

[State 1300, Sound]
type = playsnd
trigger1 = animelem = 5
value = 7, 3

[State 1300, Correct Projectile Trade]
type = hitby
trigger1 = animelem = 5
value2 = SCA, AA, AT
time = 1

[State 1300, Shippuken]
type = helper
trigger1 = animelem = 5
helpertype = normal; projectile
stateno = 1305
ID = 1305
name = "Shippuken"
postype = p1
pos = 71, -42
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1300, FX]
type = helper
trigger1 = animelem = 3
helpertype = normal
stateno = 1304
name = "Shippuken FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
ownpal = 1

[State 1300, Type]
type = statetypeset
trigger1 = animelem = 8
movetype = I

[State 1300, Accel]
type = veladd
trigger1 = animelemtime(5) >= 1 && vel x <= -0.0553
x = ifelse(map(strength) = 2, 0.0553, ifelse(map(strength) = 1, 0.04837, 0.0415))

[State 1300, Accel]
type = veladd
trigger1 = animelemtime(5) >= 1
y = 0.5528

[State 1300, Vel]
type = velset
trigger1 = animelemtime(5) = 1
x = ifelse(map(strength) = 2, -3.43, ifelse(map(strength) = 1, -2.88, -2.34))
y = ifelse(map(strength) = 2, -7.91, ifelse(map(strength) = 1, -6.58, -5.25))

[State 1300, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1301


;----- Land -----
[Statedef 1301]
type = S
physics = S
movetype = A
anim = 1301
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1301, Pos]
type = posset
trigger1 = 1
y = 0

[State 1301, Sound]
type = playsnd
trigger1 = !time
value = 0, 52

[State 1301, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1301, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==EX SHIPPUKEN=
[Statedef 1320]
type = A
physics = N
movetype = A
anim = 1320
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -500

[State Damage Scaling - Add]
type = mapadd
trigger1 = !time
trigger1 = map(combocheck)
trigger1 = 1 || map(combocheck) := 0
map = "combototal"
value = 1

[State 1320, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1320, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 1320, EX FX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 1320, EX FX]
type = explod
trigger1 = !time
trigger1 = 1 || map(exflash) := 30
anim = 8210
sprpriority = 3
postype = p1
pos = 25, -76
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1320, Sound]
type = playsnd
trigger1 = animelem = 2
value = 5, 13
channel = 0

[State 1320, Sound]
type = playsnd
trigger1 = animelem = 3 || animelem = 8
value = 7, 3

[State 1320, Correct Projectile Trade]
type = hitby
trigger1 = animelem = 3 || animelem = 8
value2 = SCA, AA, AT
time = 1

[State 1320, Shippuken]
type = helper
trigger1 = animelem = 3 || animelem = 8
helpertype = normal
stateno = 1325
ID = 1325
name = "EX Shippuken"
postype = p1
pos = ifelse((animelem = 3), 69, 71), ifelse((animelem = 3), -50, -42)
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 1320, FX]
type = helper
trigger1 = animelem = 6
helpertype = normal
stateno = 1304
name = "Shippuken FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
ownpal = 1

[State 1320, Type]
type = statetypeset
trigger1 = animelem = 11
movetype = I

[State 1320, Accel]
type = veladd
trigger1 = animelemtime(8) >= 1 && vel x <= -0.0553
x = 0.0553

[State 1320, Accel]
type = veladd
trigger1 = animelemtime(8) >= 1
y = 0.5528

[State 1320, Vel]
type = velset
trigger1 = animelemtime(8) = 1
x = -3.43
y = -7.91

[State 1320, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1301


;----- Land -----
[Statedef 1323]
type = S
physics = S
movetype = A
anim = 1323
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 1323, Pos]
type = posset
trigger1 = 1
y = 0

[State 1323, Sound]
type = playsnd
trigger1 = !time
value = 0, 52

[State 1323, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1323, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==HISHOU NICHIRIN ZAN=
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
value = ifelse(map(cmd_strength_c), 2, ifelse(map(cmd_strength_b), 1, 0))
ignorehitpause = 1
persistent = 0

[State 1400, Strength AI]
type = mapset
trigger1 = AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(p2bodydist x > 66, 2, ifelse(p2bodydist x > 48, 1, 0))
ignorehitpause = 1

[State 1400, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1400, Anim]
type = changeanim
trigger1 = !time
value = ifelse(map(strength) = 2, 1402, ifelse(map(strength) = 1, 1401, 1400))

[State 1400, NHB]
type = nothitby
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(6) < 8
trigger1 = animelemtime(7) < 0
value2 = , AP
time = 1

[State 1400, Vel]
type = velset
trigger1 = animelemtime(2) = 1
x = ifelse(anim = 1402, 6, ifelse(anim = 1401, 3, 0))

[State 1400, Vel]
type = velset
trigger1 = animelem = 4
x = 0

[State 1400, Pos]
type = posadd
trigger1 = animelem = 2
x = 16

[State 1400, Pos]
type = posadd
trigger1 = animelem = 4 || animelem = 5 || animelem = 6
x = 8

[State 1400, Type]
type = statetypeset
trigger1 = animelemtime(6) = 0
statetype = A
physics = N

[State 1400, Accel]
type = veladd
trigger1 = animelemtime(6) >= 1
y = 0.60

[State 1400, Vel]
type = velset
trigger1 = animelemtime(6) = 1
x = ifelse(anim = 1402, 3.50, ifelse(anim = 1401, 3.25, 3.00))
y = ifelse(anim = 1402, -9.0, ifelse(anim = 1401, -8.0, -7.0))

[State 1400, Sound]
type = playsnd
trigger1 = animelem = 4
value = 4, 1
channel = 0

[State 1400, Sound]
type = playsnd
trigger1 = animelemtime(6) = 0
value = 0, 40

[State 1400, Dust]
type = helper
trigger1 = animelemtime(6) = 0
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1400, Sound]
type = playsnd
trigger1 = animelem = 7
value = 4, 2
channel = 0

[State 1400, Sound]
type = playsnd
trigger1 = animelem = 7
value = 7, 3

[State 1400, FX]
type = helper
trigger1 = animelem = 7
helpertype = normal
stateno = 1405
ID = 1405
name = "Zan FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
ownpal = 1

[State 1400, Hit]
type = hitdef
trigger1 = animelem = 5
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 2)
attr = S, SA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ifelse(map(strength) = 2, 40, ifelse(map(strength) = 1, 35, 30)), ifelse(map(strength) = 2, 10, ifelse(map(strength) = 1, 9, 8))
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
ground.velocity = ifelse(map(strength) = 2, -3.50, ifelse(map(strength) = 1, -3.25, -3.00)), ifelse(map(strength) = 2, -7.0, ifelse(map(strength) = 1, -6.5, -6.0))
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = ifelse(map(strength) = 2, -3.50, ifelse(map(strength) = 1, -3.25, -3.00)), ifelse(map(strength) = 2, -7.0, ifelse(map(strength) = 1, -6.5, -6.0))
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
fall.recover = 1
fall.recovertime = 120
p1sprpriority = sprpriority
forcestand = 1
hitsound = s2, 2
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 36), map(sparky) := -62
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667

[State 1400, Hit]
type = hitdef
trigger1 = animelem = 8
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 2)
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ifelse(map(strength) = 2, 90, ifelse(map(strength) = 1, 80, 70)), ifelse(map(strength) = 2, 23, ifelse(map(strength) = 1, 20, 18))
dizzypoints = 100 * !map(customcombo)
getpower = ifelse(movehit, 25, 100) * map(meterscaling), ifelse(moveguarded, 25, 50) * map(meterscaling)
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
airguard.ctrltime = 1 + 16
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = ifelse(map(strength) = 2, -6.0, ifelse(map(strength) = 1, -5.0, -4.0)), ifelse(map(strength) = 2, 4.0, ifelse(map(strength) = 1, 1.0, -2.5))
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 120
p1sprpriority = sprpriority
forcestand = 1
hitsound = s2, 2
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -30) * (map(sparkx.max) := 72), map(sparky) := -48
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667

[State 1400, Type]
type = statetypeset
trigger1 = animelem = 9
movetype = I

[State 1400, End]
type = changestate
trigger1 = animelemtime(6) > 0
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1403


;----- Land -----
[Statedef 1403]
type = S
physics = S
movetype = A
anim = 1403
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1

[State 1403, Pos]
type = posset
trigger1 = 1
y = 0

[State 1403, Sound]
type = playsnd
trigger1 = !time
value = 0, 52

[State 1403, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1403, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==EX HISHOU NICHIRIN ZAN=
[Statedef 1420]
type = S
physics = N
movetype = A
anim = 1420
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

[State 1420, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_special) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 1420, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 1420, EX FX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 1420, EX FX]
type = explod
trigger1 = !time
trigger1 = 1 || map(exflash) := 30
anim = 8210
sprpriority = 3
postype = p1
pos = 15, -70
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1420, NHB]
type = nothitby
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(6) < 8
trigger1 = animelemtime(7) < 0
value2 = , AP
time = 1

[State 1420, Vel]
type = velset
trigger1 = animelemtime(2) = 1
x = 8

[State 1420, Vel]
type = velset
trigger1 = animelem = 4
x = 0

[State 1420, Pos]
type = posadd
trigger1 = animelem = 2
x = 16

[State 1420, Pos]
type = posadd
trigger1 = animelem = 4 || animelem = 5 || animelem = 6
x = 8

[State 1420, Type]
type = statetypeset
trigger1 = animelem = 6
statetype = A
physics = N

[State 1420, Accel]
type = veladd
trigger1 = animelemtime(6) >= 1
y = 0.60

[State 1420, Vel]
type = velset
trigger1 = animelemtime(6) = 1
x = 4
y = -8

[State 1420, Sound]
type = playsnd
trigger1 = animelem = 4
value = 4, 1
channel = 0

[State 1420, Sound]
type = playsnd
trigger1 = animelem = 6
value = 0, 40

[State 1420, Dust]
type = helper
trigger1 = animelem = 6
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 1420, Sound]
type = playsnd
trigger1 = animelem = 8
value = 4, 2
channel = 0

[State 1420, Sound]
type = playsnd
trigger1 = animelem = 8
value = 7, 3

[State 1420, FX]
type = helper
trigger1 = animelem = 8
helpertype = normal
stateno = 1405
ID = 1405
name = "Zan FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
ownpal = 1

[State 1420, Hit]
type = hitdef
trigger1 = animelem = 5
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
ground.velocity = -4, -7.0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4, -7.0
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
fall.recover = 1
fall.recovertime = 120
p1sprpriority = sprpriority
forcestand = 1
hitsound = s2, 2
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -30) * (map(sparkx.max) := 36), map(sparky) := -62
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667

[State 1420, Hit]
type = hitdef
trigger1 = animelem = 8
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 3)
ID = 1420
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = 100, 25
dizzypoints = 50 * !map(customcombo)
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
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
airguard.ctrltime = 1 + 16
ground.velocity = -6.0, 6.0
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -6.0, 6.0
air.cornerpush.veloff = 0
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
fall.recover = 1
fall.recovertime = 120
p1sprpriority = sprpriority
forcestand = 1
hitsound = s2, 2
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 72), map(sparky) := -48
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667

[State 1420, Type]
type = statetypeset
trigger1 = animelem = 9
movetype = I

[State 1420, End]
type = changestate
trigger1 = animelemtime(6) > 0
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 1403


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
trigger1 = animelemtime(3) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 2900, Sound]
type = playsnd
trigger1 = animelem = 2
value = 4, 2
channel = 0

[State 2900, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 2
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
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = -5.54, -5.25
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -5.54, -5.25
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
fall.recover = 1
fall.recovertime = 120
p1sprpriority = sprpriority
forcestand = 1
hitsound = s2, 2
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 46), map(sparky) := -99
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
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


;==KICK ZERO COUNTER=
[Statedef 2910]
type = S
physics = N
movetype = A
anim = 2910
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = 0

[State 2910, NHB]
type = nothitby
trigger1 = animelemtime(3) < 0
value = SCA
time = 1
ignorehitpause = 1

[State 2910, Sound]
type = playsnd
trigger1 = animelem = 1
value = 4, 2
channel = 0

[State 2910, Sound]
type = playsnd
trigger1 = animelem = 3
value = 1, 5
;channel = 1
stopongethit = 1

[State 2910, Hit]
type = hitdef
trigger1 = animelem = 3
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
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = -5.54, -5.25
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -5.54, -5.25
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.03))
fall = 1
fall.recover = 1
fall.recovertime = 120
p1sprpriority = sprpriority
forcestand = 1
hitsound = s2, 5
hitsound.channel = 2
guardsound = s3, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 100), map(sparky) := -29
envshake.time = 12; special
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.mul = 0.667
kill = 0

[State 2910, Type]
type = statetypeset
trigger1 = animelem = 4
movetype = I

[State 2910, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
