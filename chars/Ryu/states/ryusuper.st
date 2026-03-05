; ______________________________
;| Ryu by Phantom.of.the.Server |
; 
;==============================================================================================
;==================SUPER STATES===========
;==============================================================================================

;SHINKUU HADOU KEN
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
trigger1 = map(supercancelflag) || map(hypercancelflag)
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

[State 3000, Strength]
type = mapset
trigger1 = !AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(map(cmd_strength_z), 2, ifelse(map(cmd_strength_y), 1, 0))
ignorehitpause = 1
persistent = 0

[State 3000, Button AI]
type = mapset
trigger1 = AIlevel
trigger1 = time <= 0
map = "strength"
value = 2
ignorehitpause = 1

[State 3000, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_super) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 3000, Width]
type = width
trigger1 = animelemtime(8) = -1
value = 20, 0

[State 3000, Sound]
type = playsnd
trigger1 = time = 3
value = ifelse(var(1) = 2, 14, 4), 7
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
pos = ceil(-15 * const(size.xscale)), ceil(-73 * const(size.yscale))
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
pos = ceil(-15 * const(size.xscale)), ceil(-73 * const(size.yscale))
sound = s0, 8500
darken = !map(cfg_superfx)
p2defmul = 1

[State 3000, NHB]
type = nothitby
trigger1 = animelemtime(8) < -1
attr = SCA
slot = 0
time = 1

[State 3000, NHB]
type = nothitby
trigger1 = animelemtime(8) < 1
attr = , AP
slot = 1
time = 1

[State 3000, Hadouken]
type = helper
trigger1 = animelem = 8
helpertype = normal; projectile
stateno = 3005
ID = 3005
name = "Shinkuu Hadouken"
postype = p1
pos = 80, -66
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 3000, Dust]
type = explod
trigger1 = animelem = 8
anim = 7106
ID = 7106
sprpriority = 3
postype = p1
pos = 50, 4
ownpal = 1
scale = 0.75, 0.5
pausemovetime = -1
supermovetime = -1

[State 3000, Sound]
type = playsnd
trigger1 = animelem = 7
value = ifelse(var(1) = 2, 14, 4), ifelse(var(1) = 2, 0, 8)
channel = 0

[State 3000, Sound]
type = playsnd
trigger1 = animelem = 8
value = 6, ifelse(var(1) = 2, 8, 0)

[State 3000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;DENJIN HADOU KEN
;----- Startup -----
[Statedef 3020]
type = S
physics = S
movetype = A
anim = 3020
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

[State 3020, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 3020, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_super) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 3020, Width]
type = width
trigger1 = 1
value = 16, 0

[State 3020, NHB]
type = nothitby
trigger1 = animtime
time = 1
value = SCA

[State 3020, Sound]
type = playsnd
trigger1 = time = 3
value = 4, 18
channel = 0

[State 3020, Super Pause FX]
type = helper
trigger1 = map(cfg_superfx)
trigger1 = time = 3
helpertype = normal
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = ceil(-5 * const(size.xscale)), ceil(-69 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3020, Super Pause]
type = superpause
trigger1 = time = 3
time = 41
movetime = 41
anim = ifelse(map(cfg_superfx), -1, 100)
pos = ceil(-5 * const(size.xscale)), ceil(-69 * const(size.yscale))
sound = s0, 8500
darken = !map(cfg_superfx)
p2defmul = 1

[State 3020, Denjin Var Start]
type = mapset
trigger1 = !time
map = "denjinlevel"
value = ifelse(map(denjinrenki), 10, 0)

[State 3020, Denjin Renki]
type = mapset
map = "denjinrenki"
trigger1 = 1
value = 0

[State 3020, Electricity]
type = explod
trigger1 = time >= 30
trigger1 = !numexplod(3027)
anim = 3027
ID = 3027
sprpriority = 3
postype = p1
pos = -5, -69
facing = -1
bindtime = -1
removetime = 180
scale = 0.125, 0.125
supermovetime = cond(numenemy, (p2, pausetime), 60)
removeongethit = 1
ownpal = 1

[State 3020, End]
type = changestate
trigger1 = !animtime
value = 3021


;----- Charging -----
[Statedef 3021]
type = S
physics = S
movetype = A
anim = 3021
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 3021, Width]
type = width
trigger1 = p2movetype != A
value = 16, 0

[State 3021, Electricity Growing]
type = modifyexplod
trigger1 = numexplod(3027)
ID = 3027
scale = 0.125 + (0.004105 * map(denjinlevel)), 0.125 + (0.004105 * map(denjinlevel))

[State 3021, Electricity Particles]
type = explod
trigger1 = !(time % 6)
trigger1 = map(denjinlevel) < 30
trigger2 = !(time % 4)
trigger2 = map(denjinlevel) = [30, 60]
trigger3 = !(time % 2)
trigger3 = map(denjinlevel) > 60
anim = 8155
sprpriority = sprpriority + 1
postype = p1
pos = 10, -70
random = 30, 30
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
angle = 15 * (random % 24)
scale = 0.1, 0.1
bindtime = -1
ownpal = 1

[State 3021, Denjin Var]
type = mapadd
triggerall = time
triggerall = map(denjinlevel) < 120
trigger1 = !AIlevel
trigger1 = command = "/x" || command = "/y" || command = "/z"
trigger2 = AIlevel
map = "denjinlevel"
value = 1

[State 3021, Denjin Var]
type = mapadd
triggerall = time
triggerall = map(denjinlevel) < 120
trigger1 = !AIlevel
trigger1 = command = "/x" || command = "/y" || command = "/z"
trigger1 = command = "F" || command = "B" || command = "U" || command = "D"; no diagonals
trigger2 = AIlevel
trigger2 = random < 333
map = "denjinlevel"
value = 1

[State 3021, Flash]
type = palfx
triggerall = !AIlevel
triggerall = map(denjinlevel) < 120
trigger1 = command = "/x" || command = "/y" || command = "/z"
trigger1 = command = "F" || command = "B" || command = "U" || command = "D"; no diagonals
trigger2 = AIlevel
trigger2 = random < 333
time = 1
add = 48, 48, 48

[State 3021, Level 2 indicator]
type = explod
trigger1 = map(denjinlevel) = [10, 29]
anim = 3030
ID = 3030
sprpriority = 4
postype = p1
pos = -5, -69
scale = ifelse(random < 500, -0.25, 0.25), ifelse(screenpos y <= 165, 0.25, (screenpos y - 70) / 370.0)
ownpal = 1
persistent = 0

[State 3021, Level 3 indicator]
type = explod
trigger1 = map(denjinlevel) = [30, 59]
anim = 3030
ID = 3030
sprpriority = 4
postype = p1
pos = -5, -69
scale = ifelse(random < 500, -0.33, 0.33), ifelse(screenpos y <= 165, 0.25, (screenpos y - 70) / 370.0)
ownpal = 1
persistent = 0

[State 3021, Level 4 indicator]
type = explod
trigger1 = map(denjinlevel) = [60, 119]
anim = 3030
ID = 3030
sprpriority = 4
postype = p1
pos = -5, -69
scale = ifelse(random < 500, -0.41, 0.41), ifelse(screenpos y <= 165, 0.25, (screenpos y - 70) / 370.0)
ownpal = 1
persistent = 0

[State 3021, Level 5 indicator]
type = explod
trigger1 = map(denjinlevel) >= 120
anim = 3030
ID = 3030
sprpriority = 4
postype = p1
pos = 68, -68
scale = ifelse(random < 500, -0.5, 0.5), ifelse(screenpos y <= 165, 0.5, (screenpos y - 70) / 370.0)
ownpal = 1
persistent = 0

[State 3021, Level 2 flash]
type = palfx
trigger1 = map(denjinlevel) >= 10
time = 6
add = map(palfx1_r), map(palfx1_g), map(palfx1_b)
sinadd = -map(palfx1_r), -map(palfx1_g), -map(palfx1_b), 24
persistent = 0

[State 3021, Level 3 flash]
type = palfx
trigger1 = map(denjinlevel) >= 30
time = 6
add = map(palfx1_r), map(palfx1_g), map(palfx1_b)
sinadd = -map(palfx1_r), -map(palfx1_g), -map(palfx1_b), 24
persistent = 0

[State 3021, Level 4 flash]
type = palfx
trigger1 = map(denjinlevel) >= 60
time = 6
add = map(palfx1_r), map(palfx1_g), map(palfx1_b)
sinadd = -map(palfx1_r), -map(palfx1_g), -map(palfx1_b), 24
persistent = 0

[State 3021, Level 5 flash]
type = palfx
trigger1 = map(denjinlevel) >= 120
time = 6
add = map(palfx1_r), map(palfx1_g), map(palfx1_b)
sinadd = -map(palfx1_r), -map(palfx1_g), -map(palfx1_b), 24
persistent = 0

[State 3021, Level 2 snd]
type = playsnd
trigger1 = map(denjinlevel) >= 10
value = 6, 7
freqmul = 1.00
persistent = 0

[State 3021, Level 3 snd]
type = playsnd
trigger1 = map(denjinlevel) >= 30
value = 6, 7
freqmul = 1.10
persistent = 0

[State 3021, Level 4 snd]
type = playsnd
trigger1 = map(denjinlevel) >= 60
value = 6, 7
freqmul = 1.21
persistent = 0

[State 3021, Level 5 snd]
type = playsnd
trigger1 = map(denjinlevel) >= 120
value = 6, 7
freqmul = 1.33
persistent = 0

[State 3021, Sound]
type = playsnd
trigger1 = !(time % 20)
value = 6, 14
freqmul = 1 + map(denjinlevel) / 240.0

[State 3021, End]
type = changestate
triggerall = time >= 1
trigger1 = map(denjinlevel) >= 120
trigger2 = !AIlevel
trigger2 = command != "/x" && command != "/y" && command != "/z"
trigger3 = AIlevel
trigger3 = p2dist x < 0 || p2movetype = A || inguarddist
trigger3 = random < 200
trigger4 = AIlevel
trigger4 = p2bodydist x < 90
trigger4 = p2, vel x >= 0 && p2, vel y < 0
trigger4 = random < 200
trigger5 = AIlevel
trigger5 = p2bodydist x < 180 && p2, ctrl
trigger5 = map(denjinlevel) > 60; 4 hits
trigger5 = random < 20
trigger6 = AIlevel
trigger6 = p2movetype = H && p2statetype != L
trigger6 = p2, dizzypoints < 220 * ifelse(map(denjinlevel) > 60, 4, ifelse(map(denjinlevel) > 30, 3, ifelse(map(denjinlevel) > 10, 2, 1))) * map(damagescaling)
trigger6 = random < 200
trigger7 = AIlevel
trigger7 = p2movetype != H && p2statetype != L
trigger7 = p2, guardpoints < 220 * ifelse(map(denjinlevel) > 60, 4, ifelse(map(denjinlevel) > 30, 3, ifelse(map(denjinlevel) > 10, 2, 1))) * map(damagescaling)
trigger7 = random < 200
value = 3022


;----- Firing -----
[Statedef 3022]
type = S
physics = S
movetype = A
anim = 3022
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 3022, Width]
type = width
trigger1 = 1
value = 16, 0

[State 3022, Remove Electricity]
type = removeexplod
trigger1 = !time
trigger1 = numexplod(3027)
ID = 3027

[State 3022, Correct Projectile Trade]
type = hitby
trigger1 = animelem = 1
value2 = SCA, AA, AT
time = 1

[State 3022, Hadouken]
type = helper
trigger1 = animelem = 1
helpertype = normal; projectile
stateno = 3025
ID = 3025
name = "Denjin Hadouken"
postype = p1
pos = 80, -66
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 3022, Dust]
type = explod
trigger1 = animelem = 1
anim = 7106
sprpriority = 3
postype = p1
pos = 50, 4
ownpal = 1
scale = 0.75, 0.5
pausemovetime = -1
supermovetime = -1

[State 3022, Sound]
type = playsnd
trigger1 = animelem = 1
value = 4, ifelse(map(denjinlevel) < 30, 0, 8)
channel = 0

[State 3022, Sound]
type = playsnd
trigger1 = animelem = 1
value = 6, ifelse(var(1) = 2, 8, 0)

[State 3022, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==SHOCKED
[Statedef 7696]
type = U
physics = N
movetype = H
ctrl = 0
velset = 0, 0

[State 7696, Type]
type = statetypeset
trigger1 = !time
trigger1 = statetype != A
trigger1 = gethitvar(fall) || gethitvar(yvel) || pos y || vel y
statetype = A

[State 7696, Pos]
type = posset
trigger1 = pos y > 0
y = 0

[State 7696, Anim]
type = changeanim
trigger1 = !time
trigger1 = anim != 7696 && selfanimexist(7696)
value = 7696

[State 7696, Anim]
type = changeanim
trigger1 = !time
trigger1 = anim != 9010 && !selfanimexist(7696) && selfanimexist(9010)
value = 9010

[State 7696, Anim]
type = changeanim
trigger1 = !time
trigger1 = !selfanimexist(7696) && !selfanimexist(9010)
value = ifelse(statetype != A, 5002, 5030)

[State 7696, Shocked Anim PalFX]
type = palfx
trigger1 = anim = 7696 || anim = 9010
time = 1
color = 256

[State 7696, Shocked Anim PalFX]
type = palfx
trigger1 = random < 500
trigger1 = anim = 7696 || anim = 9010
time = 1
color = -256
invertall = 1

[State 7696, PalFX]
type = palfx
trigger1 = hitshakeover
time = 18
color = -256
invertall = 1
sinadd = 255, 255, 255, 4

[State 7696, End]
type = selfstate
trigger1 = hitshakeover
value = ifelse(gethitvar(fall) || pos y, 5020, 5000)


;METSU HADOU KEN
[Statedef 3040]
type = S
physics = S
movetype = A
anim = 3040
ctrl = 0
velset = 0, 0
poweradd = -3000 + 0 * (map(superlevel) := 3) + 0 * (map(superlevel) := 3)
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

[State 3040, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 3040, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_super) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 3040, Sound]
type = playsnd
trigger1 = time = 3
value = 15, 18
channel = 0

[State 3040, Super Pause FX]
type = helper
trigger1 = map(cfg_superfx)
trigger1 = time = 3
helpertype = normal
stateno = 8520
ID = 8500
name = "Superpause FX"
postype = p1
pos = ceil(-15 * const(size.xscale)), ceil(-73 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3040, Super Pause]
type = superpause
trigger1 = time = 3
time = 45
movetime = 45
anim = ifelse(map(cfg_superfx), -1, 102)
pos = ceil(-15 * const(size.xscale)), ceil(-73 * const(size.yscale))
sound = s0, 8520
darken = !map(cfg_superfx)
p2defmul = 1

[State 3040, NHB]
type = nothitby
trigger1 = 1
time = 10
value = SCA

[State 3040, End]
type = changestate
trigger1 = time >= 43
value = 3041


;----- Charge -----
[Statedef 3041]
type = S
physics = S
movetype = A
anim = 3041
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 3041, Metsu Var Reset]
type = mapset
trigger1 = !time
map = "denjinlevel"
value = 0

[State 3041, Metsu Var]
type = mapadd
trigger1 = map(denjinlevel) < 120
map = "denjinlevel"
value = 1

[State 3041, Shake]
type = envshake
trigger1 = !(time % 4)
time = 4
freq = 180
ampl = ifelse(map(denjinlevel) > 80, 3, ifelse(map(denjinlevel) > 40, 2, 1))

[State 3041, BGPalFX]
type = bgpalfx
trigger1 = map(denjinlevel) = [0, 120]
add = -ceil(map(denjinlevel) / 1.6), -ceil(map(denjinlevel) / 1.6), -ceil(map(denjinlevel) / 1.6)
time = 2

[State 3041, Sound]
type = playsnd
trigger1 = !time
value = 13, 21
channel = 0

[State 3041, Sound]
type = playsnd
trigger1 = 1
value = 6, 15
channel = 3
lowpriority = (time > 0)
stopongethit = 1
stoponchangestate = 1

[State 3041, Sound]
type = playsnd
trigger1 = !time
value = 6, 9
channel = 4
stopongethit = 1
stoponchangestate = 1

[State 3041, FX]
type = explod
trigger1 = !numexplod(3047)
anim = 3047
ID = 3047
sprpriority = 3
postype = p1
pos = -16, -72
bindtime = -1
removetime = -1
removeongethit = 1
ownpal = 1

[State 3041, Grow]
type = modifyexplod
trigger1 = numexplod(3047)
ID = 3047
scale = 0.5 * (0.5 + 0.0125 * map(denjinlevel)), 0.5 * (0.5 + 0.0125 * map(denjinlevel))

[State 3041, Beam]
type = changestate
trigger1 = map(denjinlevel) >= 120
value = 3050

[State 3041, Fireball]
type = changestate
triggerall = time >= 3
trigger1 = !AIlevel
trigger1 = command != "/x" && command != "/y" && command != "/z"
trigger2 = AIlevel
trigger2 = p2dist x < 0 || inguarddist
value = 3042

[State 3041, Aura]
type = explod
trigger1 = 1
ID = 4150
postype = p1
pos = -2 + (random / 250.0), -2 + (random / 250.0);2 * sin(time / 4.0 * pi), 0
sprpriority = sprpriority + 1
anim = anim
animfreeze = 1
animelem = animelemno(0)
removetime = 4 + (4 * map(denjinlevel) / 120.0)
trans = addalpha
alpha = 128, 256
scale = const(size.xscale), const(size.yscale)
palfx.time = 4 + (4 * map(denjinlevel) / 120.0)
palfx.color = 0
palfx.mul = 256, 0, 0
interpolation.time = 4 + (4 * map(denjinlevel) / 120.0)
interpolation.alpha = 0, 256
interpolation.scale = const(size.xscale) * (1 + 0.2 * map(denjinlevel) / 120.0), const(size.yscale) * (1 + 0.2 * map(denjinlevel) / 120.0)
removeongethit = 1
supermovetime = -1
ownpal = 1


;----- Fire -----
[Statedef 3042]
type = S
physics = S
movetype = A
anim = 3042
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 3042, Width]
type = width
trigger1 = !time
value = 24, 0

[State 3042, BGPalFX]
type = bgpalfx
trigger1 = !time
time = 60
add = -ceil(map(denjinlevel) / 1.6), -ceil(map(denjinlevel) / 1.6), -ceil(map(denjinlevel) / 1.6)
sinadd = ceil(map(denjinlevel) / 1.6), ceil(map(denjinlevel) / 1.6), ceil(map(denjinlevel) / 1.6), 240

[State 3042, Grow]
type = modifyexplod
trigger1 = numexplod(3047)
trigger1 = animelemtime(2) < 0
ID = 3047
postype = p1
pos = -5, -70
angle = 45

[State 3042, Remove FX]
type = removeexplod
trigger1 = numexplod(3047)
trigger1 = animelemtime(2) >= 0
ID = 3047

[State 3042, Correct Projectile Trade]
type = hitby
trigger1 = animelem = 2
value2 = SCA, AA, AT
time = 2
;value2 does not override previous NHB

[State 3042, Hadouken]
type = helper
trigger1 = animelem = 2
helpertype = normal; projectile
stateno = 3045
ID = 3045
name = "Metsu Hadouken"
postype = p1
pos = 83, -66
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 3042, Dust]
type = explod
trigger1 = animelem = 2
anim = 7106
sprpriority = 3
postype = p1
pos = 50, 4
ownpal = 1
scale = 0.75, 0.5
pausemovetime = -1
supermovetime = -1

[State 3042, Sound]
type = playsnd
trigger1 = animelem = 2
value = 15, 22
channel = 0

[State 3042, Sound]
type = playsnd
trigger1 = animelem = 2
value = 6, 10

[State 3042, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;RYUKOKU HADOKEN
[Statedef 3050]
type = S
physics = S
movetype = A
anim = 3050
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 3050, Width]
type = width
trigger1 = 1
value = 24, 0

[State 3050, Grow]
type = modifyexplod
trigger1 = numexplod(3047)
trigger1 = animelemtime(2) < 0
ID = 3047
postype = p1
pos = -5, -70
angle = 45

[State 3050, Remove FX]
type = removeexplod
trigger1 = numexplod(3047)
trigger1 = animelemtime(2) >= 0
ID = 3047

[State 3050, Sound]
type = playsnd
trigger1 = !time
value = 13, 6
channel = 0

[State 3050, Shake]
type = envshake
trigger1 = !(time % 4)
trigger1 = animelemtime(2) >= 0
time = 4
freq = 180
ampl = 2

[State 3050, Hadouken]
type = helper
trigger1 = animelemtime(2) >= 0
trigger1 = !numhelper(3055)
helpertype = normal; projectile
stateno = 3055
ID = 3055
name = "Ryu Koku Hadouken"
postype = p1
pos = 74 * const(size.xscale), -67 * const(size.yscale); setting position from the start prevents hitspark p2dist lag
ownpal = 1
persistent = 0

[State 3050, Sound]
type = playsnd
trigger1 = numhelper(3055)
value = 6, 1
abspan = 0
persistent = 0

[State 3050, Dust]
type = explod
trigger1 = animelem = 2
anim = 7106
postype = p1
pos = 45, 0
sprpriority = 3
scale = 1.5, 1.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 3050, FX]
type = explod
trigger1 = animelem = 2
anim = 3057
ID = 3057
postype = p1
pos = 74 * const(size.xscale), -67 * const(size.yscale)
sprpriority = 3
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 3050, Aura]
type = explod
trigger1 = time < 60
ID = 4150
postype = p1
pos = -2 + (random / 250.0), -2 + (random / 250.0);2 * sin(time / 4.0 * pi), 0
vel = -8 * (60 - time) / 60.0, -2.5 + (random / 200.0)
sprpriority = sprpriority + 1
anim = anim
animfreeze = 1
animelem = animelemno(0)
removetime = 8
trans = addalpha
alpha = 128, 256
scale = const(size.xscale), const(size.yscale)
palfx.time = 8
palfx.color = 0
palfx.mul = 256, 0, 0
interpolation.time = 8
interpolation.alpha = 0, 256
removeongethit = 1
supermovetime = -1
ownpal = 1

[State 3050, End]
type = changestate
triggerall = animelemtime(2) >= 0
trigger1 = !numhelper(3055)
trigger2 = time >= 90
value = 3051


;----- Recovery -----
[Statedef 3051]
type = S
physics = S
movetype = I
anim = 3051
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 3051, Sound]
type = playsnd
trigger1 = animelem = 8
trigger1 = !winko
value = ifelse(var(1) = 2, 5010, 5000), ifelse(var(1) = 2, 3, 5)
channel = 0

[State 3051, Sound]
type = playsnd
trigger1 = animelem = 8
trigger1 = winko
value = 15, 7
channel = 0

[State 3051, Sound]
type = playsnd
trigger1 = animelem = 8
value = 0, 52

[State 3051, Dust]
type = explod
trigger1 = animelem = 8
anim = 7102
ID = 7102
sprpriority = -4
postype = p1
pos = -5, 0
scale = 0.33, 0.33
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 3051, Win]
type = changestate
trigger1 = winko
trigger1 = animelemtime(9) >= 0
trigger1 = animelemtime(15) < 0
value = 3052

[State 3051, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;NIDAN SHORYUU TSUKI
[Statedef 3100]
type = S
physics = N
movetype = A
anim = 3100
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

[State 3100, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

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
value = 4, 21
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
pos = -3 * const(size.xscale), -60 * const(size.yscale)
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
pos = -3 * const(size.xscale), -60 * const(size.yscale)
sound = s0, 8500
darken = !map(cfg_superfx)
p2defmul = 1

[State 3100, NHB]
type = nothitby
trigger1 = animelemtime(7) < 0
time = 1
value = SCA

[State 4150, Width]
type = width
trigger1 = animelemtime(7) < 0
player = 24, 0

[State 3100, Accel]
type = veladd
trigger1 = vel x > 0
x = -1.0

[State 3100, Accel]
type = velset
trigger1 = vel x < 0
x = 0

[State 3100, Vel]
type = velset
trigger1 = animelem = 5
x = 10.0

[State 3100, Vel]
type = velset
trigger1 = animelem = 12 || animelem = 20 || animelem = 28
x = 6.0

[State 3100, Pos]
type = posadd
trigger1 = animelem = 18
x = 12 * const(size.xscale)

[State 3100, Sound]
type = playsnd
trigger1 = animelem = 5
value = 0, 102

[State 3100, Dust]
type = helper
trigger1 = animelem = 5
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
trigger1 = animelem = 5 || animelem = 12
value = 3, ifelse(random < 333, 1, 2)
channel = 0

[State 3100, Sound]
type = playsnd
trigger1 = animelem = 20
value = 3, ifelse(random < 500, 4, 5)
channel = 0

[State 3100, Sound]
type = playsnd
trigger1 = animelem = 28
value = 3, ifelse(random < 500, 6, 8)
channel = 0

[State 3100, Electricity FX]
type = null
trigger1 = animelem = 7
trigger1 = 1 || map(temp_fx_x) := 73 || map(temp_fx_y) := -56 || map(temp_fx_vfacing) := 1 || map(temp_fx_angle) := 0 || map(temp_fx_v) := 1 || map(temp_fx_layer) := 1
trigger2 = animelem = 13
trigger2 = 1 || map(temp_fx_x) := 68 || map(temp_fx_y) := -95 || map(temp_fx_vfacing) := -1 || map(temp_fx_angle) := -15 || map(temp_fx_layer) := -1
trigger3 = animelem = 22
trigger3 = 1 || map(temp_fx_x) := 75 || map(temp_fx_y) := -45 || map(temp_fx_vfacing) := -1 || map(temp_fx_angle) := 30 || map(temp_fx_layer) := 1
trigger4 = animelem = 30
trigger4 = 1 || map(temp_fx_x) := 25 || map(temp_fx_y) := -115 || map(temp_fx_vfacing) := 1 || map(temp_fx_angle) := 105 || map(temp_fx_layer) := 1

[State 3100, Electricity FX]
type = explod
trigger1 = animelem = 7 || animelem = 13 || animelem = 22 || animelem = 30
ID = 3105
anim = 3105
postype = p1
pos = map(temp_fx_x) * const(size.xscale), map(temp_fx_y) * const(size.yscale)
vfacing = map(temp_fx_vfacing)
scale = 0.40, 0.60
angle = map(temp_fx_angle)
removetime = 20
trans = addalpha
alpha = 256, 256
interpolation.time = 20
interpolation.alpha = 0, 256
sprpriority = sprpriority + map(temp_fx_layer)
removeonchangestate = 1
removeongethit = 1
ownpal = 1

[State 3100, Electricity Sound]
type = playsnd
trigger1 = animelem = 7 || animelem = 13 || animelem = 22 || animelem = 30
value = 6, 5

[State 3100, Hit Low]
type = hitdef
trigger1 = animelem = 7 || animelem = 22
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 4)
ID = 3100
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 50, 12
dizzypoints = 0
getpower = 0, 0
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
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
ground.velocity = -4.49, 0
ground.cornerpush.veloff = 0
guard.velocity = -4.49
guard.cornerpush.veloff = 0
air.velocity = -4.00, -4.50
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 0
down.recover = 1
p1sprpriority = sprpriority
forcestand = 1
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 50) * (map(sparkx.max) := 80), map(sparky) := -65
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
palfx.time = 30
palfx.color = -256
palfx.invertall = 1
palfx.sinadd = 255, 255, 255, 4

[State 3100, Hit High]
type = hitdef
trigger1 = animelem = 13
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 4)
ID = 3100
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 50, 13
dizzypoints = 0
getpower = 0, 0
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 32
guard.hittime = (32) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.velocity = -4.49
guard.cornerpush.veloff = 0
air.velocity = -4.00, -4.50
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 0
down.recover = 1
p1sprpriority = sprpriority
forcestand = 1
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 50) * (map(sparkx.max) := 80), map(sparky) := -65
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
palfx.time = 30
palfx.color = -256
palfx.invertall = 1
palfx.sinadd = 255, 255, 255, 4

[State 3100, Hit Final]
type = hitdef
trigger1 = animelem = 30
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 4)
ID = 3100
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = 50, 13
dizzypoints = 0
getpower = 0, 0
givepower = 40, 40
pausetime = 8, 8
guard.pausetime = 8, 8
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
ground.velocity = -2.25, -9.00
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -2.25, -9.00
air.cornerpush.veloff = 0
yaccel = 0.4850
fall = 1
fall.recover = 0
down.recover = 1
p1sprpriority = sprpriority
forcestand = 1
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 35) * (map(sparkx.max) := 60), map(sparky) := -80
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
palfx.time = 30
palfx.color = -256
palfx.invertall = 1
palfx.sinadd = 255, 255, 255, 4

[State 3100, Anim]
type = assertspecial
triggerall = anim = 3100
triggerall = hitpausetime > 0
trigger1 = animelemtime(7) >= 1 && animelemtime(8) <= 0
trigger2 = animelemtime(13) >= 1 && animelemtime(14) <= 0
trigger3 = animelemtime(22) >= 1 && animelemtime(23) <= 0
trigger4 = animelemtime(30) >= 1 && animelemtime(31) <= 0
flag = animatehitpause
ignorehitpause = 1

[State 3100, Shocked]
type = targetstate
trigger1 = movehit = 1
trigger1 = numtarget(3100)
trigger1 = target, selfanimexist(7696)
trigger1 = target(3100), stateno = 5000 || target(3100), stateno = 5010 || target(3100), stateno = 5020
value = 7696
ID = 3100
ignorehitpause = 1

[State 3100, Idle]
type = statetypeset
trigger1 = animelemtime(31) >= 0
movetype = I
persistent = 0

[State 3100, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;SHIN SHORYUU KEN
[Statedef 4100]
type = S
physics = S
movetype = A
anim = 4100
ctrl = 0
velset = 0, 0
sprpriority = 2
poweradd = -3000
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

[State 4100, Voice Type]
type = null
trigger1 = !time
trigger1 = 1 || map(shinsho_voice) := (random < 500)

[State 4100, Sound]
type = playsnd
trigger1 = time = 3
value = ifelse(map(shinsho_voice) = 1, 4, 5), ifelse(map(shinsho_voice) = 1, 14, 15)
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
pos = ceil(-25 * const(size.xscale)), ceil(-57 * const(size.yscale))
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
pos = ceil(-25 * const(size.xscale)), ceil(-57 * const(size.yscale))
sound = s0, 8520
darken = !map(cfg_superfx)
p2defmul = 1

[State 4100, NHB]
type = nothitby
trigger1 = anim = 4100
trigger1 = animelemtime(5) < 4
time = 1
value = SCA
ignorehitpause = 1

[State 4100, Push]
type = playerpush
trigger1 = numtarget(4100)
value = 0
ignorehitpause = 1

[State 4100, Switch]
type = changeanim
trigger1 = movehit = 1
trigger1 = anim = 4100
trigger1 = animelemtime(4) > 0 && animelemtime(5) <= 0
value = 4101

[State 4100, Accel]
type = veladd
trigger1 = vel x > 0
x = -0.6304

[State 4100, Accel]
type = velset
trigger1 = vel x < 0
x = 0

[State 4100, Accel]
type = veladd
trigger1 = anim = 4100 && animelemtime(5) >= 1
trigger2 = anim = 4101 && animelemtime(5) >= 1
y = 0.672

[State 4100, Vel]
type = velset
trigger1 = anim = 4100 && animelemtime(5) = 1
trigger2 = anim = 4101 && animelemtime(5) = 1
x = ifelse(anim = 4101, 4.10, 10.25)
y = -13.771

[State 4100, Sound]
type = playsnd
trigger1 = anim = 4100 && animelemtime(5) = 1
trigger2 = anim = 4101 && animelemtime(5) = 1
value = 0, 41

[State 4100, Dust]
type = helper
trigger1 = anim = 4100 && animelemtime(5) = 1
trigger2 = anim = 4101 && animelemtime(5) = 1
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 4100, Low Shin Hits]
type = hitdef
trigger1 = anim = 4100
trigger1 = animelem = 4
trigger2 = anim = 4101
trigger2 = animelem = 4
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := (1 + hitcount))
ID = 4100
attr = S, HA
damage = 150, 38
dizzypoints = 0
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 45, 45
guard.pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 20) * (map(sparkx.max) := 40), map(sparky) := ifelse((anim = 4100), -79, -90)
hitsound = s2, 9
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = ifelse(anim = 4101, -0.75, 0.25), -6.0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.velocity = ifelse(anim = 4101, -0.75, 0.25), -6.0
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0, 0
givepower = 36, 36
fall = 1
fall.recover = 0
down.recover = 0; cannot mash
down.recovertime = 30
kill = ifelse(anim = 4100, (numenemy > 1), (numtarget != numenemy))
yaccel = 0.4850
p1sprpriority = sprpriority
forcestand = 1
p2facing = 1
envshake.time = 30; unique
envshake.freq = 180
envshake.ampl = 8
envshake.mul = 0.8

[State 4100, High Shin Hit]
type = hitdef
trigger1 = anim = 4101
trigger1 = animelem = 5 || animelem = 6
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 99)
ID = 4100
attr = A, HA
damage = 70, 18
dizzypoints = 0
animtype = Up
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = ifelse((animelem = 5), 5, 45), ifelse((animelem = 5), 5, 45)
guard.pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 0) * (map(sparkx.max) := 20), map(sparky) := ifelse((animelem = 5), -120, -150)
hitsound = s2, ifelse((animelem = 6), 10, 9)
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -2, -12
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.velocity = -2, -12
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0, 0
givepower = 36, 36
fall = 1
fall.recover = 0
down.recover = 0; cannot mash
down.recovertime = 30
fall.envshake.time = 12
fall.envshake.freq = 180
fall.envshake.ampl = ifelse((gametime % 2), -2, 2)
kill = (numtarget != numenemy) || (animelem = 6)
yaccel = 0.4850
p1sprpriority = sprpriority
forcestand = 1
p2facing = 1
envshake.time = 30
envshake.freq = 180
envshake.ampl = 8
envshake.mul = 0.8

[State 4100, Regular Hits]
type = hitdef
trigger1 = anim = 4100
trigger1 = animelemtime(5) >= 0
trigger1 = !(animelemtime(5) % 3)
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := (3 + hitcount))
attr = A, HA
damage = 40, 10
dizzypoints = 0
animtype = Up
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 6, 6
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 10) * (map(sparkx.max) := 30), map(sparky) := -106
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -3, -9.7
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.velocity = -3, -9.7
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0, 0
givepower = 36, 36
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
fall = 1
fall.recover = 0
down.recover = 0; cannot mash
down.recovertime = 30
yaccel = 0.4850
p1sprpriority = sprpriority
forcestand = 1

[State 4100, Juggle Reset]
type = mapset
trigger1 = time > 0
trigger1 = movehit = 1
trigger1 = numtarget(4100)
map = "juggle_count"
value = 0
ignorehitpause = 1

[State 4100, P2 Stomach Hit]
type = targetstate
trigger1 = movehit = 1
trigger1 = numtarget(4100) = 1
trigger1 = anim = 4100
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
trigger1 = target(4100), stateno = [5000, 5020]
trigger1 = target(4100), hitshakeover = 0
ID = 4100
value = 4120
ignorehitpause = 1

[State 4100, P2 Jaw Breaker]
type = targetstate
trigger1 = movehit = 1
trigger1 = anim = 4101
trigger1 = animelemtime(4) >= 0 && animelemtime(5) <= 0
trigger1 = numtarget(4100)
trigger1 = target(4100), hitshakeover = 0
trigger1 = target(4100), stateno = [5020, 5050]
ID = 4100
value = 4121
ignorehitpause = 1

[State 4100, P2 Jaw Breaker Going Up]
type = targetstate
trigger1 = movehit = [1, 8]
trigger1 = anim = 4101
trigger1 = animelemtime(5) >= 0 && animelemtime(7) < 0
trigger1 = numtarget(4100)
trigger1 = target(4100), stateno = [5020, 5050]
ID = 4100
value = 4122
ignorehitpause = 1

[State 4100, Corner Width]
type = width
trigger1 = movehit = 1
trigger1 = numtarget(4100)
edge = 40, 0
ignorehitpause = 1
persistent = 0

[State 4100, Bind First Punch Default]
type = targetbind
trigger1 = movehit = 1
trigger1 = numtarget(4100) = 1
trigger1 = target(4100), stateno = [5000, 5020]
trigger1 = target(4100), hitshakeover = 0
trigger1 = anim = 4100
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
ID = 4100
pos = 36, -80 - target(4100), const(size.mid.pos.y)
ignorehitpause = 1
persistent = 0

[State 4100, Bind First Punch Stomach]
type = targetbind
trigger1 = movehit = 1
trigger1 = numtarget(4100) = 1
trigger1 = target(4100), incustomstate
trigger1 = target(4100), stateno = 4120
trigger1 = target(4100), hitshakeover = 0
trigger1 = anim = 4100
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
ID = 4100
pos = 36, -30
ignorehitpause = 1
persistent = 0

[State 4100, Bind Second Punch Default]
type = targetbind
trigger1 = movehit = 1
trigger1 = numtarget(4100) = 1
trigger1 = target(4100), stateno = [5000, 5020]
trigger1 = target(4100), hitshakeover = 0
trigger1 = anim = 4101
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
ID = 4100
pos = 26, -92 - max((target(4100), const(size.mid.pos.y)), (0.75 * (target(4100), const(size.head.pos.y))))
ignorehitpause = 1
persistent = 0

[State 4100, Bind Second Punch Jaw]
type = targetbind
trigger1 = movehit = 1
trigger1 = numtarget(4100) = 1
trigger1 = target(4100), incustomstate
trigger1 = target(4100), stateno = 4121
trigger1 = target(4100), hitshakeover = 0
trigger1 = anim = 4101
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
ID = 4100
pos = 26, -42
ignorehitpause = 1
persistent = 0

[State 4100, Bind Last Punch Jaw]
type = targetbind
trigger1 = movehit = [1, 8]
trigger1 = numtarget(4100) = 1
trigger1 = target(4100), incustomstate
trigger1 = target(4100), stateno = 4122
trigger1 = anim = 4101
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 1
ID = 4100
pos = 15, -50
ignorehitpause = 1

[State 4100, Sound Type]
type = playsnd
trigger1 = anim = 4100
trigger1 = animelem = 5
value = 4, 5
channel = 0

[State 4100, Snd Shin]
type = playsnd
trigger1 = anim = 4100
trigger1 = movehit = 1
trigger1 = hitpausetime = 30
trigger1 = animelemtime(4) >= 0 && animelemtime(5) <= 0
value = 4, ifelse(map(shinsho_voice) = 1, 15, 14)
channel = 0
ignorehitpause = 1
persistent = 0

[State 4100, Snd Shoryuken]
type = playsnd
trigger1 = anim = 4101
trigger1 = animelem = 3
value = 4, ifelse(map(shinsho_voice) = 1, 16, 12)
value = 4, 12
channel = 0

[State 4100, Snd Shoryuken]
type = playsnd
trigger1 = anim = 4101
trigger1 = animelem = 5
trigger1 = map(shinsho_voice) = 1
value = 4, 17
channel = 0

[State 4100, Dust Shockwave]
type = explod
triggerall = movehit = 1
triggerall = hitpausetime = 45
trigger1 = anim = 4100
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
trigger2 = anim = 4101
trigger2 = animelemtime(4) >= 0 && animelemtime(5) < 0
anim = 4105
ID = 4105
postype = p1
pos = p2dist x / 2.0, -pos y
ownpal = 1
under = 1
ignorehitpause = 1

[State 4100, Type]
type = statetypeset
trigger1 = anim = 4100
trigger1 = animelem = 5
trigger2 = anim = 4101
trigger2 = animelem = 5
statetype = A
physics = N

[State Idle]
type = statetypeset
trigger1 = anim = 4100
trigger1 = animelem = 6
trigger2 = anim = 4101
trigger2 = animelem = 7
movetype = I

[State Land]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 4103


;---Land---
[Statedef 4103]
type = S
physics = S
movetype = I
anim = 4103
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 4103, Pos]
type = posset
trigger1 = 1
y = 0

[State 4103, Sound]
type = playsnd
trigger1 = !time
value = 0, 52

[State 4103, Dust]
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

[State 4103, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- Target stomach hit -----
[Statedef 4120]
type = A
physics = N
movetype = H

[State 4120, Anim]
type = changeanim2
trigger1 = !hitshakeover
value = 4120

[State 4120, Accel]
type = veladd
trigger1 = hitshakeover
y = max(0.35, gethitvar(yaccel))

[State 4120, Vel]
type = hitvelset
trigger1 = hitshakeover
x = gethitvar(xvel) * facing
y = gethitvar(yvel)
persistent = 0

[State 4120, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, const(movement.air.gethit.groundlevel))
value = 5100

[State 4120, Offset]
type = offset
trigger1 = anim = 4120
trigger1 = animelemtime(2) < 0
y = const240p(-50)


;----- Target jaw hit -----
[Statedef 4121]
type = A
physics = N
movetype = H
velset = 0, 0

[State 4121, Anim]
type = changeanim2
trigger1 = !time
value = 4121

[State 4121, FFB Hard]
type = forcefeedback
trigger1 = !time
time = 15
waveform = sinesquare
ampl = 140

[State 4121, End]
type = selfstate
trigger1 = time >= 60
value = 5030

[State 4121, Offset]
type = offset
trigger1 = anim = 4121
y = const240p(-60)


;----- Target jaw hit going up -----
[Statedef 4122]
type = A
physics = N
movetype = H
velset = 0, 0

[State 4122, Anim]
type = changeanim2
trigger1 = !time
value = 4122

[State 4122, FFB Hard]
type = forcefeedback
trigger1 = !time
time = 15
waveform = sinesquare
ampl = 140

[State 4122, Vel]
type = velset
trigger1 = hitshakeover
x = gethitvar(xvel) * facing
y = gethitvar(yvel)
persistent = 0

[State 4122, End]
type = changeanim
trigger1 = screenpos y < 0
value = ifelse(selfanimexist(5051), 5051, 5030)

[State 4122, End]
type = selfstate
trigger1 = screenpos y < 0
trigger2 = vel y > 0
value = 5030

[State 4122, Offset]
type = offset
trigger1 = anim = 4122
y = const240p(-100)


;MESSATSU GOU SHORYUU
[Statedef 3140]
type = S
physics = N
movetype = A
ctrl = 0
anim = 3140
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

[State 3140, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 3140, Strength]
type = mapset
trigger1 = !AIlevel
trigger1 = time <= 0
map = "strength"
value = ifelse(map(cmd_strength_c), 2, ifelse(map(cmd_strength_b), 1, 0))
ignorehitpause = 1
persistent = 0

[State 3140, Button AI]
type = mapset
trigger1 = AIlevel
trigger1 = time <= 0
map = "strength"
value = 2
ignorehitpause = 1

[State 3140, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_super) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 3140, Sound]
type = playsnd
trigger1 = time = 3
value = ifelse(var(1) = 2, 14, 4), ifelse(var(1) = 2, 10, 4)
channel = 0

[State 3140, Super Pause FX]
type = helper
trigger1 = map(cfg_superfx)
trigger1 = time = 3
helpertype = normal
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = ceil(13 * const(size.xscale)), ceil(-56 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3140, Super Pause]
type = superpause
trigger1 = time = 3
time = 41
movetime = 41
anim = ifelse(map(cfg_superfx), -1, 100)
pos = ceil(13 * const(size.xscale)), ceil(-56 * const(size.yscale))
sound = s0, 8500
darken = !map(cfg_superfx)
p2defmul = 1

[State 3140, NHB]
type = nothitby
trigger1 = anim = 3140
trigger1 = animelemtime(3) < 0
time = 1
value = SCA
ignorehitpause = 1

[State 3140, Accel]
type = veladd
trigger1 = vel x > 0
x = -0.6304

[State 3140, Accel]
type = velset
trigger1 = vel x < 0
x = 0

[State 3140, Accel]
type = veladd
trigger1 = anim = 3140
trigger1 = animelemtime(28) >= 1
y = 0.704

[State 3140, Vel]
type = velset
trigger1 = anim = 3140
trigger1 = animelem = 2 || animelem = 14 || animelem = 26
x = ifelse(map(strength) = 2, 10.0, ifelse(map(strength) = 1, 9.0, 8.0))

[State 3140, Vel]
type = velset
trigger1 = anim = 3140
trigger1 = animelemtime(28) = 1
y = -12.679

[State 3140, Type]
type = statetypeset
trigger1 = anim = 3140
trigger1 = animelem = 28
statetype = A
physics = N

[State 3140, Dust]
type = explod
trigger1 = anim = 3140
trigger1 = animelem = 2 || animelem = 14 || animelem = 26
anim = 7103
ID = 7103
sprpriority = 3
postype = p1
ownpal = 1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1

[State 3140, Blur FX]
type = explod
trigger1 = anim = 3140
trigger1 = animelem = 4 || animelem = 16 || animelem = 28
ID = 1190
anim = 1190
postype = p1
pos = 32, -80
bindtime = 60
trans = addalpha
alpha = 256, 256
removetime = ifelse((animelem = 28), 8, 4)
interpolation.time = ifelse((animelem = 28), 8, 4)
interpolation.alpha = 0, 256
sprpriority = sprpriority + 1
removeongethit = 1
removeonchangestate = 1
ownpal = 1

[State 3140, Sound]
type = playsnd
trigger1 = var(1) = 2
trigger1 = anim = 3140
trigger1 = animelem = 4 || animelem = 15
value = 13, ifelse((animelem = 4), 0, 8)
channel = 0

[State 3140, Sound]
type = playsnd
trigger1 = var(1) = 2
trigger1 = anim = 3140
trigger1 = animelem = 27
value = 14, 13
channel = 0

[State 3140, Sound]
type = playsnd
trigger1 = var(1) != 2
trigger1 = anim = 3140
trigger1 = animelem = 4 || animelem = 16 || animelem = 26
value = 3, ifelse((animelem = 4), 6, ifelse((animelem = 16), 7, 3))
channel = 0

[State 3140, Sound]
type = playsnd
trigger1 = anim = 3140
trigger1 = animelem = 4 || animelem = 16
value = 1, 5
;channel = 1
stopongethit = 1

[State 3140, Sound]
type = playsnd
trigger1 = anim = 3140
trigger1 = animelem = 28
value = 1, 6
;channel = 1
stopongethit = 1

[State 3140, Sound]
type = playsnd
trigger1 = anim = 3140
trigger1 = animelemtime(28) = 1
value = 0, 41

[State 3140, Dust]
type = helper
trigger1 = anim = 3140
trigger1 = animelemtime(28) = 1
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 3140, Hit Low]
type = hitdef
trigger1 = anim = 3140
trigger1 = animelem = 14
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := (1 + hitcount))
attr = S, HA
damage = 30, 8
dizzypoints = 0
animtype = Medium
fall.animtype = Medium
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 4, 4
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 45), map(sparky) := -50
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.slidetime = 18
ground.hittime = 1 + 24
guard.hittime = (1 + 24) - 6
ground.velocity = -4.49, 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.velocity = -0.5 * vel x, -3.0
getpower = 0, 0
givepower = 36, 36
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
yaccel = 0.4850
p1sprpriority = sprpriority
forcestand = 1
air.fall = 1
fall.recover = 0
down.recover = 1

[State 3140, Hit Low 2]
type = hitdef
trigger1 = anim = 3140
trigger1 = animelem = 3 || animelem = 15
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := (2 + hitcount))
attr = S, HA
damage = 30, 8
dizzypoints = 0
animtype = Hard
fall.animtype = Hard
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 4, 4
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 45), map(sparky) := -75
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.slidetime = 18
ground.hittime = 1 + 24
guard.hittime = (1 + 24) - 6
ground.velocity = -4.49, 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.velocity = -0.5 * vel x, -3.0
getpower = 0, 0
givepower = 36, 36
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
yaccel = 0.4850
p1sprpriority = sprpriority
forcestand = 1
air.fall = 1
fall.recover = 0
down.recover = 1

[State 3140, Hit High]
type = hitdef
trigger1 = anim = 3140
trigger1 = animelem = 4 || animelem = 16
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := (3 + hitcount))
attr = S, HA
damage = 30, 8
dizzypoints = 0
animtype = Hard
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
ground.slidetime = 18
ground.hittime = 1 + 24
guard.hittime = (1 + 24) - 6
ground.velocity = -4.49, 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.velocity = -0.5 * vel x, -3.0
getpower = 0, 0
givepower = 36, 36
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
yaccel = 0.4850
p1sprpriority = sprpriority
forcestand = 1
air.fall = 1
fall.recover = 0
down.recover = 1

[State 3140, Hit Low 3]
type = hitdef
trigger1 = anim = 3140
trigger1 = animelem = 26
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := (1 + hitcount))
attr = S, HA
damage = 30, 8
dizzypoints = 0
animtype = Medium
fall.animtype = Medium
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 4, 4
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 45), map(sparky) := -50
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.slidetime = 18
ground.hittime = 1 + 24
guard.hittime = (1 + 24) - 6
ground.velocity = 0, -5.0
air.velocity = 0, -5.0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0, 0
givepower = 36, 36
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
fall = 1
fall.recover = 0
down.recover = 1
yaccel = 0.4850
p1sprpriority = sprpriority
forcestand = 1

[State 3140, Hit Low 4]
type = hitdef
trigger1 = anim = 3140
trigger1 = animelem = 27
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := (2 + hitcount))
attr = S, HA
damage = 40, 10
dizzypoints = 0
animtype = Hard
fall.animtype = Hard
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 4, 4
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 45), map(sparky) := -75
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.slidetime = 18
ground.hittime = 1 + 24
guard.hittime = (1 + 24) - 6
ground.velocity = 0, -5.0
air.velocity = 0, -5.0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0, 0
givepower = 36, 36
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
fall = 1
fall.recover = 0
down.recover = 1
yaccel = 0.4850
p1sprpriority = sprpriority
forcestand = 1

[State 3140, Hit Final]
type = hitdef
trigger1 = anim = 3140
trigger1 = animelem = 28
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := (3 + hitcount))
persistent = 0
attr = A, HA
damage = 30, 8
dizzypoints = 0
animtype = Up
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
ground.velocity = -6, -9.5
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.velocity = -6, -9.5
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0, 0
givepower = 36, 36
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
fall = 1
fall.recover = 0
down.recover = 1
yaccel = 0.4850
p1sprpriority = sprpriority
forcestand = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(29) >= 0
movetype = I
persistent = 0

[State Land]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 3141


;---Land---
[Statedef 3141]
type = S
physics = S
movetype = I
anim = 3141
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 3141, Pos]
type = posset
trigger1 = 1
y = 0

[State 3141, Sound]
type = playsnd
trigger1 = !time
value = 0, 52

[State 3141, Dust]
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

[State 3141, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;METSU SHORYUU KEN
[Statedef 4150]
type = S
physics = N
movetype = A
anim = 4150
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

[State 4150, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 4150, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_super) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 4150, Width]
type = width
trigger1 = anim = 4150
trigger1 = animelemtime(7) >= 0 && animelemtime(9) < 0
player = 24, 0

[State 4150, Sound]
type = playsnd
trigger1 = time = 3
value = 14, 11
channel = 0

[State 4150, Super Pause FX]
type = helper
trigger1 = map(cfg_superfx)
trigger1 = time = 3
helpertype = normal
stateno = 8510
ID = 8500
name = "Superpause FX"
postype = p1
pos = ceil(3 * const(size.xscale)), ceil(-66 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 4150, Super Pause]
type = superpause
trigger1 = time = 3
time = 43
movetime = 43
anim = ifelse(map(cfg_superfx), -1, 101)
pos = ceil(3 * const(size.xscale)), ceil(-66 * const(size.yscale))
sound = s0, 8510
darken = !map(cfg_superfx)
p2defmul = 1

[State 4150, NHB]
type = nothitby
trigger1 = anim = 4150 && animelemtime(8) < 2
time = 1
value = SCA

[State 4150, Accel]
type = veladd
trigger1 = vel x > 0
x = -0.6304

[State 4150, Accel]
type = velset
trigger1 = vel x < 0
x = 0

[State 4150, Vel]
type = velset
trigger1 = anim = 4150
trigger1 = animelem = 6
x = 10

[State 4150, Sound]
type = playsnd
trigger1 = anim = 4150
trigger1 = animelem = 6
value = 0, 41

[State 4150, Dust]
type = helper
trigger1 = anim = 4150
trigger1 = animelem = 6
helpertype = normal
stateno = 7104
ID = 7100
name = "Dash Dust"
postype = p1
pos = 48 * const(size.xscale), 0
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 4150, Sound]
type = playsnd
trigger1 = anim = 4150
trigger1 = animelem = 7
value = 1, 3

[State 4150, FX Horizontal]
type = explod
trigger1 = anim = 4150
trigger1 = animelemtime(7) >= 0
trigger1 = animelemtime(9) < 0
trigger1 = !movecontact && !movereversed
ID = 4156
anim = 4156
postype = p1
pos = 55, -63
sprpriority = sprpriority + 1
bindtime = 60
removeongethit = 1
ownpal = 1

[State 4150, Hit Elbow]
type = hitdef
trigger1 = anim = 4150
trigger1 = animelem = 8
ID = 4150
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 2)
attr = S, HA
damage = 120, 30
dizzypoints = 0
animtype = Hard
fall.animtype = Hard
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 12, 24
guard.pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 40) * (map(sparkx.max) := 65), map(sparky) := -64
hitsound = s2, 9
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
p2facing = 1
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.velocity = 0, 0
getpower = 0, 0
givepower = 36, 36
envshake.time = 0
forcestand = 1
yaccel = 0.4850
p2facing = 1
p1sprpriority = sprpriority
forcestand = 1

[State 4150, P2 State]
type = targetstate
trigger1 = anim = 4150
trigger1 = movehit = 1
trigger1 = numtarget(4150)
trigger1 = target(4150), stateno = 5000 || target(4150), stateno = 5010 || target(4150), stateno = 5020
value = 4160
ID = 4150
ignorehitpause = 1

[State 4150, Horizontal Shake]
type = zoom
trigger1 = anim = 4150
trigger1 = movehit = 1
trigger1 = hitpausetime
scale = 1
pos = 3 * cos(pi * hitpausetime), 0
lag = 0
stagebound = 1
camerabound = 0
ignorehitpause = 1

[State 4150, Switch]
type = changeanim
trigger1 = anim = 4150
trigger1 = movehit
trigger1 = animelemtime(9) >= 0 && animelemtime(10) < 0
value = 4151

[State 4150, Sound]
type = playsnd
trigger1 = anim = 4151
trigger1 = animelemtime(13) = 1
value = 0, 41

[State 4150, Dust]
type = helper
trigger1 = anim = 4151
trigger1 = animelemtime(13) = 1
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 4150, Type]
type = statetypeset
trigger1 = anim = 4151
trigger1 = animelem = 13
statetype = A
physics = N

[State 4150, Accel]
type = veladd
trigger1 = anim = 4151 && animelemtime(13) >= 1
y = 0.672

[State 4150, Vel]
type = velset
trigger1 = anim = 4151
trigger1 = animelemtime(5) = 1
x = 5

[State 4150, Vel]
type = velset
trigger1 = anim = 4151
trigger1 = animelemtime(13) = 1
x = 10.25
y = -14.50

[State 4150, Sound]
type = playsnd
trigger1 = anim = 4151
trigger1 = animelem = 12
value = 14, 12
channel = 0

[State 4150, Dust Shockwave]
type = explod
trigger1 = anim = 4151
trigger1 = animelem = 12
anim = 4105
ID = 4105
postype = p1
pos = p2dist x / 2.0, -pos y
ownpal = 1
under = 1
ignorehitpause = 1
persistent = 0

[State 4150, Shake]
type = offset
trigger1 = anim = 4151
trigger1 = animelemtime(9) % 2
trigger1 = animelemtime(9) >= 1 && animelemtime(10) < 0
x = 1

[State 4150, BGPalFX]
type = bgpalfx
trigger1 = anim = 4151 && animelem = 5
sinadd = -64, -64, -64, 120
time = 60

[State 4150, Sound]
type = playsnd
trigger1 = anim = 4151
trigger1 = animelem = 4
value = 13, 8
channel = 0

[State 4150, Sound]
type = playsnd
trigger1 = anim = 4151
trigger1 = animelem = 5
value = 6, 13

[State 4150, Aura]
type = explod
trigger1 = anim = 4151
trigger1 = animelemtime(6) >= 0
trigger1 = animelemtime(12) < 0
ID = 4150
postype = p1
pos = 2 * sin(time / 8.0 * pi), 0
sprpriority = sprpriority + 1
anim = anim
animfreeze = 1
animelem = animelemno(0)
removetime = 12
trans = addalpha
alpha = 128, 256
scale = const(size.xscale), const(size.yscale)
palfx.time = 12
palfx.color = 0
palfx.mul = 256, 0, 0
interpolation.time = 12
interpolation.alpha = 0, 256
interpolation.scale = const(size.xscale) * 1.2, const(size.yscale) * 1.2
removeonchangestate = 1
ownpal = 1

[State 4150, FX Swirl]
type = explod
trigger1 = anim = 4151
trigger1 = animelemtime(9) = 0
anim = 4157
postype = p1
pos = 12 * const(size.xscale), -25 * const(size.yscale)
sprpriority = sprpriority + 1
bindtime = -1
removeongethit = 1

[State 4150, FX Cloud]
type = explod
trigger1 = anim = 4151
trigger1 = animelem = 10
ID = 4150
anim = 4159
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
pos = 12 * const(size.xscale), -25 * const(size.yscale)
sprpriority = sprpriority + 1
ownpal = 1

[State 4150, Sound]
type = playsnd
trigger1 = anim = 4151
trigger1 = animelem = 13
value = 6, 18

[State 4150, FX Vertical]
type = explod
trigger1 = anim = 4151
trigger1 = animelem = 11
ID = 4158
anim = 4158
postype = p1
pos = 50, -80
scale = 1, 0.5
angle = -45
sprpriority = sprpriority + 1
removeongethit = 1
ownpal = 1

[State 4150, FX Vertical]
type = explod
trigger1 = anim = 4151
trigger1 = animelemtime(13) >= 0
trigger1 = !(animelemtime(13) % 2)
trigger1 = animelemtime(14) < 0
ID = 4158
anim = 4158
postype = p1
pos = 20, -150
scale = 1, abs(pos y - 150) / 200.0
sprpriority = sprpriority + 1
removeongethit = 1
ownpal = 1

[State 4150, Hit Low]
type = hitdef
trigger1 = anim = 4151
trigger1 = animelem = 12
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 99)
attr = S, HA
damage = 120, 30
dizzypoints = 0
animtype = Back
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 4, 4
sparkno = -1 + 0 * (map(sparkno) := 8024)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 55), map(sparky) := -75
hitsound = s2, 13
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = 0.5, -7.5
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.velocity = 0.5, -7.5
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0, 0
givepower = 36, 36
envshake.time = 12
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -3, 3)
fall = 1
fall.recover = 0
down.recover = 0; cannot mash
down.recovertime = 30
fall.animtype = Medium
yaccel = 0.4850
p1sprpriority = sprpriority
forcestand = 1

[State 4150, Shoryuu Hit]
type = hitdef
trigger1 = anim = 4151
trigger1 = animelemtime(13) >= 0 && !(animelemtime(13) % 2)
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 99)
attr = A, HA
damage = 10, 3
dizzypoints = 0
animtype = Up
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 4, 4
sparkno = -1 + 0 * (map(sparkno) := 8024)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 10) * (map(sparkx.max) := 40), map(sparky) := -106
hitsound = s2, 13
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
p2facing = 1
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -3, -10.5
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.velocity = -3, -10.5
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0, 0
givepower = 36, 36
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
fall = 1
fall.recover = 0
down.recover = 0; cannot mash
down.recovertime = 30
yaccel = 0.4850
p1sprpriority = sprpriority
forcestand = 1

[State 4150, Juggle Reset]
type = mapset
trigger1 = time > 0
trigger1 = movehit = 1
trigger1 = hitcount >= 10
map = "juggle_count"
value = 0
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = anim = 4150
trigger1 = animelemtime(9) >= 0
movetype = I
persistent = 0

[State 4150, End]
type = changestate
trigger1 = !animtime
trigger1 = anim = 4150
value = 0
ctrl = 1

[State Land]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 3141


;----- TARGET -----
[Statedef 4160]
type = S
physics = S
movetype = H
ctrl = 0
velset = 0, 0

[State 4160, NHB];shinkuu hadouken fix
type = nothitby
trigger1 = !hitshakeover
value = , AP

[State 4160, Pos]
type = posset
trigger1 = 1
y = 0

[State 4160, Hitfall]
type = hitfallset
trigger1 = 1
value = 0

[State 4160, Anim]
type = changeanim
trigger1 = !hitshakeover
value = 5012

[State 4160, Anim]
type = changeanim2
trigger1 = hitshakeover
value = 4160
persistent = 0

[State 4160, Shake]
type = offset
trigger1 = !hitshakeover
x = ifelse((gametime % 2), 2, -2)
ignorehitpause = 1

[State 4160, No PalFX]
type = palfx
trigger1 = !time
time = 1
add = 0, 0, 0

[State 4160, End]
type = selfstate
trigger1 = time >= 90
value = 5011


;REPPU JINRAI SHOU
[Statedef 3180]
type = S
physics = S
movetype = A
anim = 3180
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

[State 3180, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 3180, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_super) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 3180, Sound]
type = playsnd
trigger1 = time = 3
value = 4, 21
channel = 0

[State 3180, Super Pause FX]
type = helper
trigger1 = map(cfg_superfx)
trigger1 = time = 3
helpertype = normal
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = ceil(0 * const(size.xscale)), ceil(-80 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3180, Super Pause]
type = superpause
trigger1 = time = 3
time = 41
movetime = 41
anim = ifelse(map(cfg_superfx), -1, 100)
pos = ceil(0 * const(size.xscale)), ceil(-80 * const(size.yscale))
sound = s0, 8500
darken = !map(cfg_superfx)
p2defmul = 1


[State 3180, NHB]
type = nothitby
trigger1 = animelemtime(11) < 1
time = 1
value = SCA

[State 3180, Vel]
type = velset
trigger1 = animelem = 10 || animelem = 17 || animelem = 29
x = 6

[State 3180, Vel]
type = velset
trigger1 = animelem = 34
x = 9

[State 3180, Dust]
type = explod
trigger1 = animelem = 10 || animelem = 17 || animelem = 29 || animelem = 34
anim = 7103
ID = 7103
sprpriority = 3
postype = p1
pos = 31, 0
vel = 1, 0
ownpal = 1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1

[State 3180, Sound]
type = playsnd
trigger1 = animelem = 11 || animelem = 14 || animelem = 23 || animelem = 26
value = 3, 0
channel = 0

[State 3180, Sound]
type = playsnd
trigger1 = animelem = 17 || animelem = 29
value = 3, 2
channel = 0

[State 3180, Sound]
type = playsnd
trigger1 = animelem = 34
value = 3, 3
channel = 0

[State 3180, Sound]
type = playsnd
trigger1 = animelem = 11 || animelem = 23
value = 1, 1
;channel = 1
stopongethit = 1

[State 3180, Sound]
type = playsnd
trigger1 = animelem = 14 || animelem = 26
value = 1, 2
;channel = 1
stopongethit = 1

[State 3180, Sound]
type = playsnd
trigger1 = animelem = 18 || animelem = 30 || animelem = 34
value = 1, 3
;channel = 1
stopongethit = 1

[State 3180, High Hits]
type = hitdef
trigger1 = animelem = 11 || animelem = 14 || animelem = 23 || animelem = 26
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, HA
damage = 20, 5
dizzypoints = 0
animtype = Hard
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 2, 2
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 25) * (map(sparkx.max) := 70), map(sparky) := -86
hitsound = s2, 2
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = High
ground.slidetime = 18
ground.hittime = 1 + 24
guard.hittime = (1 + 24) - 6
ground.velocity = 0, 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.velocity = -5, -7
getpower = 0, 0
givepower = 36, 36
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
p1sprpriority = sprpriority
forcestand = 1
yaccel = 0.4850
air.fall = 1
fall.recover = 0
down.recover = 1

[State 3180, lowhits]
type = hitdef
trigger1 = animelem = 18 || animelem = 30
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = S, HA
damage = 40, 10
dizzypoints = 0
animtype = Hard
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 2, 2
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 35) * (map(sparkx.max) := 65), map(sparky) := -60
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.slidetime = 18
ground.hittime = 1 + 24
guard.hittime = (1 + 24) - 6
ground.velocity = -4.49, 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.velocity = -5, -7
getpower = 0, 0
givepower = 36, 36
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
p1sprpriority = sprpriority
forcestand = 1
yaccel = 0.4850
air.fall = 1
fall.recover = 0
down.recover = 1

[State 3180, Uppercut]
type = hitdef
trigger1 = animelem = 35
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
ID = 3180
attr = S, HA
damage = 40, 10
dizzypoints = 0
animtype = Up
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 55), map(sparky) := -77
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -3, -9
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.velocity = -3, -9
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0, 0
givepower = 36, 36
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
p1sprpriority = sprpriority
forcestand = 1
yaccel = 0.4850
p1sprpriority = sprpriority
forcestand = 1
fall = 1
fall.recover = 0
down.recover = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(36) >= 0
movetype = I
persistent = 0

[State 3180, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;SHINKUU TATSUMAKI SENPUU KYAKKU
[Statedef 3200]
type = S
physics = S
movetype = A
anim = 3200
ctrl = 0
velset = 0, 0
poweradd = -1000 + 0 * (map(superlevel) := 1)
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
trigger1 = var(1) != 3
value = ifelse(var(1) = 2, 14, 4), 7
channel = 0

[State 3200, Sound]
type = playsnd
trigger1 = time = 3
trigger1 = var(1) = 3
value = 4, 99
channel = 0

[State 3200, Super Pause FX]
type = helper
trigger1 = map(cfg_superfx)
trigger1 = time = 3
helpertype = normal
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = ceil(-28 * const(size.xscale)), ceil(-16 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3200, Super Pause]
type = superpause
trigger1 = time = 3
time = 41
movetime = 41
anim = ifelse(map(cfg_superfx), -1, 100)
pos = ceil(-28 * const(size.xscale)), ceil(-16 * const(size.yscale))
sound = s0, 8500
darken = !map(cfg_superfx)
p2defmul = 1

[State 3200, NHB]
type = nothitby
trigger1 = anim = 3200
trigger1 = animelemtime(9) < 0
time = 1
value = SCA

;Corner push takes care of this for the most part
;[State 3200, Width]
;type = width
;trigger1 = anim = [3201, 3202]
;trigger1 = movehit
;edge = 48, 32

[State 3200, Sound]
type = playsnd
trigger1 = anim = 3200 && animelem = 5
value = 0, 41

[State 3200, Dust]
type = helper
trigger1 = anim = 3200 && animelem = 5
helpertype = normal
stateno = 7100
ID = 7100
name = "Dust"
postype = p1
ownpal = 1

[State 3200, Vel]
type = velmul
trigger1 = vel x
x = 0.85

[State 3200, Vel]
type = velset
trigger1 = anim = 3200
trigger1 = animelem = 5
x = 0
y = -5.05

[State 3200, Anim]
type = changeanim
trigger1 = !animtime
trigger1 = anim = 3200
value = ifelse(var(1) = 2, 3202, 3201)

[State 3200, Sound]
type = playsnd
trigger1 = animelem = 1
trigger1 = anim = [3201, 3202]
value = ifelse(var(1) = 2, 14, 4), 2
channel = 0
persistent = 0

[State 3200, Sound Combo]
type = playsnd
trigger1 = var(1) != 2
trigger1 = animelem = 1
trigger1 = anim = [3201, 3202]
trigger1 = prevstateno = [3000, 4999]
value = 4, 20
channel = 0
persistent = 0

[State 3200, Vel]
type = velset
trigger1 = var(1) != 2
trigger1 = anim = [3201, 3202]
y = 0.15

[State 3200, Vel]
type = velset
trigger1 = var(1) = 2
trigger1 = anim = [3201, 3202]
y = -0.5

[State 3200, Push]
type = playerpush
trigger1 = anim = [3201, 3202]
trigger2 = anim = [3203, 3204]
value = 0
ignorehitpause = 1

[State 3200, Sound]
type = playsnd
trigger1 = anim = 3201 || anim = 3202
trigger1 = animelem = 1 || animelem = 7 || animelem = 13 || animelem = 19 || animelem = 25 || animelem = 31 || animelem = 37
value = 1, ifelse((anim = 3202), 4, 6)
;channel = 1
stopongethit = 1

[State 3200, Anim]
type = changeanim
trigger1 = !animtime
trigger1 = anim = [3201, 3202]
value = ifelse(anim = 3202, 3204, 3203)

[State 3200, Blur FX]
type = explod
trigger1 = anim = [3201, 3202]
trigger1 = animelem = 1 || animelem = 7 || animelem = 13 || animelem = 19 || animelem = 25 || animelem = 31 || animelem = 37
ID = 1290
anim = 1291
postype = p1
pos = 0, -80
bindtime = 60
sprpriority = sprpriority - 1
removeongethit = 1
removeonchangestate = 1
ownpal = 1

[State 3200, Blur FX]
type = explod
trigger1 = anim = [3201, 3202]
trigger1 = animelem = 4 || animelem = 10 || animelem = 16 || animelem = 22 || animelem = 28 || animelem = 34
ID = 1290
anim = 1290
postype = p1
pos = 0, -60
bindtime = 60
sprpriority = sprpriority + 1
removeongethit = 1
removeonchangestate = 1
ownpal = 1

[State 3200, Type]
type = statetypeset
trigger1 = anim = 3200 && animelemtime(5) >= 0
trigger2 = anim = [3203, 3204] && animelemtime(1) >= 1
statetype = A
physics = N

[State 3200, Type]
type = veladd
trigger1 = anim = 3200 && animelemtime(5) >= 0
trigger2 = anim = [3203, 3204] && animelemtime(1) >= 1
y = 0.5

[State 3200, Type]
type = statetypeset
trigger1 = anim = 3200 && animtime = -1
trigger2 = anim = [3201, 3202]
statetype = A
physics = N

[State 3200, Hit]
type = hitdef
trigger1 = anim = 3201
trigger1 = animelem = 2 || animelem = 8 || animelem = 14 || animelem = 20 || animelem = 26 || animelem = 32
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 10)
ID = 3200
attr = A, HA
damage = 20, 5
dizzypoints = 0
animtype = Hard
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 5, 0
sparkno = -1 + 0 * (map(sparkno) := 8014)
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
ground.velocity = ifelse(p2dist x > 48, 16, 12), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = 10.52
air.type = Low
air.velocity = ifelse(p2dist x > 32, 6, 5), ifelse(p2dist y < (-60 - p2, const(size.mid.pos.y)), -2.2, -4.0) + vel y
getpower = 0, 0
givepower = 36, 36
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
air.fall = 1
fall.recover = 0
down.recover = 1
p2facing = -1
p1sprpriority = sprpriority
p2sprpriority = sprpriority + 1
forcestand = 1
yaccel = 0.4850
forcestand = 1

[State 3200, Hit Behind]
type = hitdef
trigger1 = anim = 3201
trigger1 = animelem = 5 || animelem = 11 || animelem = 17 || animelem = 23 || animelem = 29 || animelem = 35
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 10)
ID = 3200
attr = A, HA
damage = 20, 5
dizzypoints = 0
animtype = Hard
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 5, 0
sparkno = -1 + 0 * (map(sparkno) := 8014)
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
ground.velocity = ifelse(p2dist x < -48, -16, -12), 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
air.type = Low
air.velocity = ifelse(p2dist x < -32, -6, -5), ifelse(p2dist y < (-60 - p2, const(size.mid.pos.y)), -2.2, -4.0) + vel y
getpower = 0, 0
givepower = 36, 36
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
air.fall = 1
fall.recover = 0
down.recover = 1
p1sprpriority = sprpriority
p2sprpriority = sprpriority - 1
forcestand = 1
yaccel = 0.4850
p2facing = 1
forcestand = 1

[State 3200, Hit Reversed Anim]
type = modifyhitdef
triggerall = anim = 3201
triggerall = p2, facing = facing
trigger1 = animelem = 2 || animelem = 8 || animelem = 14 || animelem = 20 || animelem = 26 || animelem = 32
trigger2 = animelem = 5 || animelem = 11 || animelem = 17 || animelem = 23 || animelem = 29 || animelem = 35
ground.type = Low; Because it is reversed when P2 is behind

[State 3200, Hit Final]
type = hitdef
trigger1 = anim = 3201
trigger1 = animelem = 38
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 10)
ID = 3200
attr = A, HA
damage = 20, 5
dizzypoints = 0
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 5, 0
sparkno = -1 + 0 * (map(sparkno) := 8014)
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
ground.velocity = -4, -8
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.velocity = -4, -8
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0, 0
givepower = 36, 36
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
fall = 1
fall.recover = 0
down.recover = 1
p1sprpriority = sprpriority
yaccel = 0.4850
p2facing = 1
forcestand = 1

[State 3200, Hit Evil]
type = hitdef
trigger1 = anim = 3202
trigger1 = animelem = 2 || animelem = 8 || animelem = 14 || animelem = 20 || animelem = 26 || animelem = 32
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := (2 + hitcount))
ID = 3200
attr = A, HA
damage = 20, 5
dizzypoints = 0
animtype = Hard
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 3, 0
sparkno = -1 + 0 * (map(sparkno) := 8014)
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
ground.velocity = ifelse(p2dist x > 32, 16, 12), ifelse(p2dist y < (-60 - p2, const(size.mid.pos.y)), 0, -4.0) + vel y
air.type = Low
air.velocity = ifelse(p2dist x > 32, 16, 12), ifelse(p2dist y < (-60 - p2, const(size.mid.pos.y)), 0, -4.0) + vel y
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0, 0
givepower = 36, 36
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
fall = 1
fall.recover = 0
down.recover = 1
p1sprpriority = sprpriority
p2sprpriority = sprpriority + 1
yaccel = 0.4850
p2facing = 1
forcestand = 1

[State 3200, Hit Evil Behind]
type = hitdef
trigger1 = anim = 3202
trigger1 = animelem = 5 || animelem = 11 || animelem = 17 || animelem = 23 || animelem = 29 || animelem = 35
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := (2 + hitcount))
ID = 3200
attr = A, HA
damage = 20, 5
dizzypoints = 0
animtype = Hard
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 3, 0
sparkno = -1 + 0 * (map(sparkno) := 8014)
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
ground.velocity = ifelse(p2dist x < -32, -16, -12), ifelse(p2dist y < (-60 - p2, const(size.mid.pos.y)), 0, -4.0) + vel y
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.velocity = ifelse(p2dist x < -32, -16, -12), ifelse(p2dist y < (-60 - p2, const(size.mid.pos.y)), 0, -4.0) + vel y
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0, 0
givepower = 36, 36
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
fall = 1
fall.recover = 0
down.recover = 1
p1sprpriority = sprpriority
p2sprpriority = sprpriority - 1
yaccel = 0.4850
p2facing = -1
forcestand = 1

[State 3200, Hit Evil Final]
type = hitdef
trigger1 = anim = 3202
trigger1 = animelem = 38
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := (2 + hitcount))
ID = 3200
attr = A, HA
damage = 20, 5
dizzypoints = 0
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 3, 0
sparkno = -1 + 0 * (map(sparkno) := 8014)
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
ground.velocity = -6, -6
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.velocity = -6, -6
guard.velocity = -10.52
guard.cornerpush.veloff = 0
getpower = 0, 0
givepower = 36, 36
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
fall = 1
fall.recover = 0
down.recover = 1
p1sprpriority = sprpriority
yaccel = 0.4850
p2facing = 1
forcestand = 1

[State 3200, Dust Left]
type = explod
trigger1 = anim = [3201, 3202]
trigger1 = animelem = 5 || animelem = 11 || animelem = 17 || animelem = 23 || animelem = 29 || animelem = 35 || animelem = 41
anim = 3210
ID = 3210
sprpriority = 2
postype = p1
pos = -20, -pos y
scale = 0.5, 0.5
vel = -2, 0
ownpal = 1

[State 3200, Dust Right]
type = explod
trigger1 = anim = [3201, 3202]
trigger1 = animelem = 2 || animelem = 8 || animelem = 14 || animelem = 20 || animelem = 26 || animelem = 32 || animelem = 38
anim = 3210
ID = 3210
sprpriority = 2
postype = p1
facing = -1
pos = 20, -pos y
scale = 0.5, 0.5
vel = 2, 0
ownpal = 1

[State 3200, Cloud]
type = helper
trigger1 = !time
trigger1 = var(1) = 3
helpertype = normal
stateno = 3215
ID = 3215
name = "Cloud"
postype = p1
pos = 0, -260
supermovetime = 9999
persistent = 0

[State 3200, Vacuum Effect P2]
redirectID = enemynear(0), ID
type = posadd
trigger1 = anim = [3201, 3202]
trigger1 = numenemy >= 1
trigger1 = enemynear(0), alive
trigger1 = enemynear(0), standby = 0
trigger1 = enemynear(0), hitshakeover
trigger1 = enemynear(0), pos y >= -60
trigger1 = abs(enemynear(0), pos x - pos x) <= 240
x = facing * ifelse(enemynear(0), facing = facing, -1, 1) * ifelse(enemynear(0), pos x < pos x, -1, 1) * ifelse(var(1) = 2, 1.50, 0.75)

[State 3200, Vacuum Dust P2]
redirectID = enemynear(0), ID
type = explod
trigger1 = !(gametime % ifelse(var(1) = 2, 6, 12))
trigger1 = anim = [3201, 3202]
trigger1 = numenemy >= 1
trigger1 = enemynear(0), alive
trigger1 = enemynear(0), standby = 0
trigger1 = enemynear(0), hitshakeover
trigger1 = enemynear(0), pos y = 0
trigger1 = enemynear(0), statetype != A
trigger1 = enemynear(0), gethitvar(chainID) != 3200
trigger1 = abs(enemynear(0), pos x - pos x) <= 240
anim = F 120
postype = p1
pos = 0, 0
ownpal = 1
sprpriority = 5

[State 3200, Vacuum Effect P3]
redirectID = partner(0), ID
type = posadd
trigger1 = anim = [3201, 3202]
trigger1 = numpartner >= 1
trigger1 = partner(0), alive
trigger1 = partner(0), standby = 0
trigger1 = partner(0), hitshakeover
trigger1 = partner(0), pos y >= -60
trigger1 = abs(partner(0), pos x - pos x) <= 240
x = facing * ifelse(partner(0), facing = facing, -1, 1) * ifelse(partner(0), pos x < pos x, -1, 1) * ifelse(var(1) = 2, 1.50, 0.75)

[State 3200, Vacuum Dust P3]
redirectID = partner(0), ID
type = explod
trigger1 = !(gametime % ifelse(var(1) = 2, 6, 12))
trigger1 = anim = [3201, 3202]
trigger1 = numpartner >= 1
trigger1 = partner(0), alive
trigger1 = partner(0), standby = 0
trigger1 = partner(0), hitshakeover
trigger1 = partner(0), pos y = 0
trigger1 = partner(0), statetype != A
trigger1 = abs(partner(0), pos x - pos x) <= 240
anim = F 120
postype = p1
pos = 0, 0
sprpriority = 5
ownpal = 1

[State 3200, Vacuum Effect P4]
redirectID = enemynear(1), ID
type = posadd
trigger1 = anim = [3201, 3202]
trigger1 = numenemy >= 2
trigger1 = enemynear(1), alive
trigger1 = enemynear(1), standby = 0
trigger1 = enemynear(1), hitshakeover
trigger1 = enemynear(1), pos y >= -60
trigger1 = abs(enemynear(1), pos x - pos x) <= 240
x = facing * ifelse(enemynear(1), facing = facing, -1, 1) * ifelse(enemynear(1), pos x < pos x, -1, 1) * ifelse(var(1) = 2, 1.50, 0.75)

[State 3200, Vacuum Dust P4]
redirectID = enemynear(1), ID
type = explod
trigger1 = !(gametime % ifelse(var(1) = 2, 6, 12))
trigger1 = anim = [3201, 3202]
trigger1 = numenemy >= 2
trigger1 = enemynear(1), alive
trigger1 = enemynear(1), standby = 0
trigger1 = enemynear(1), hitshakeover
trigger1 = enemynear(1), pos y = 0
trigger1 = enemynear(1), statetype != A
trigger1 = enemynear(1), gethitvar(chainID) != 3200
trigger1 = abs(enemynear(1), pos x - pos x) <= 240
anim = F 120
postype = p1
pos = 0, 0
sprpriority = 5
ownpal = 1

[State 3200, Vacuum Effect P5]
redirectID = partner(1), ID
type = posadd
trigger1 = anim = [3201, 3202]
trigger1 = numpartner >= 2
trigger1 = partner(1), alive
trigger1 = partner(1), standby = 0
trigger1 = partner(1), hitshakeover
trigger1 = partner(1), pos y >= -60
trigger1 = abs(partner(1), pos x - pos x) <= 240
x = facing * ifelse(partner(1), facing = facing, -1, 1) * ifelse(partner(1), pos x < pos x, -1, 1) * ifelse(var(1) = 2, 1.50, 0.75)

[State 3200, Vacuum Dust P5]
redirectID = partner(1), ID
type = explod
trigger1 = !(gametime % ifelse(var(1) = 2, 6, 12))
trigger1 = anim = [3201, 3202]
trigger1 = numpartner >= 2
trigger1 = partner(1), alive
trigger1 = partner(1), standby = 0
trigger1 = partner(1), hitshakeover
trigger1 = partner(1), pos y = 0
trigger1 = partner(1), statetype != A
trigger1 = abs(partner(1), pos x - pos x) <= 240
anim = F 120
postype = p1
pos = 0, 0
sprpriority = 5
ownpal = 1

[State 3200, Vacuum Effect P6]
redirectID = enemynear(2), ID
type = posadd
trigger1 = anim = [3201, 3202]
trigger1 = numenemy >= 3
trigger1 = enemynear(2), alive
trigger1 = enemynear(2), standby = 0
trigger1 = enemynear(2), hitshakeover
trigger1 = enemynear(2), pos y >= -60
trigger1 = abs(enemynear(2), pos x - pos x) <= 240
x = facing * ifelse(enemynear(2), facing = facing, -1, 1) * ifelse(enemynear(6), pos x < pos x, -1, 1) * ifelse(var(1) = 2, 1.50, 0.75)

[State 3200, Vacuum Dust P6]
redirectID = enemynear(2), ID
type = explod
trigger1 = !(gametime % ifelse(var(1) = 2, 6, 12))
trigger1 = anim = [3201, 3202]
trigger1 = numenemy >= 3
trigger1 = enemynear(2), alive
trigger1 = enemynear(2), standby = 0
trigger1 = enemynear(2), hitshakeover
trigger1 = enemynear(2), pos y = 0
trigger1 = enemynear(2), statetype != A
trigger1 = enemynear(2), gethitvar(chainID) != 3200
trigger1 = abs(enemynear(2), pos x - pos x) <= 240
anim = F 120
postype = p1
pos = 0, 0
sprpriority = 5
ownpal = 1

[State 3200, Vacuum Effect P7]
redirectID = partner(2), ID
type = posadd
trigger1 = anim = [3201, 3202]
trigger1 = numpartner >= 3
trigger1 = partner(2), alive
trigger1 = partner(2), standby = 0
trigger1 = partner(2), hitshakeover
trigger1 = partner(2), pos y >= -60
trigger1 = abs(partner(2), pos x - pos x) <= 240
x = facing * ifelse(partner(2), facing = facing, -1, 1) * ifelse(partner(2), pos x < pos x, -1, 1) * ifelse(var(1) = 2, 1.50, 0.75)

[State 3200, Vacuum Dust P7]
redirectID = partner(2), ID
type = explod
trigger1 = !(gametime % ifelse(var(1) = 2, 6, 12))
trigger1 = anim = [3201, 3202]
trigger1 = numpartner >= 3
trigger1 = partner(2), alive
trigger1 = partner(2), standby = 0
trigger1 = partner(2), hitshakeover
trigger1 = partner(2), pos y = 0
trigger1 = partner(2), statetype != A
trigger1 = abs(partner(2), pos x - pos x) <= 240
anim = F 120
postype = p1
pos = 0, 0
sprpriority = 5
ownpal = 1

[State 3200, Vacuum Effect P8]
redirectID = enemynear(3), ID
type = posadd
trigger1 = anim = [3201, 3202]
trigger1 = numenemy >= 4
trigger1 = enemynear(3), alive
trigger1 = enemynear(3), standby = 0
trigger1 = enemynear(3), hitshakeover
trigger1 = enemynear(3), pos y >= -60
trigger1 = abs(enemynear(3), pos x - pos x) <= 240
x = facing * ifelse(enemynear(3), facing = facing, -1, 1) * ifelse(enemynear(3), pos x < pos x, -1, 1) * ifelse(var(1) = 2, 1.50, 0.75)

[State 3200, Vacuum Dust P8]
redirectID = enemynear(3), ID
type = explod
trigger1 = !(gametime % ifelse(var(1) = 2, 6, 12))
trigger1 = anim = [3201, 3202]
trigger1 = numenemy >= 4
trigger1 = enemynear(3), alive
trigger1 = enemynear(3), standby = 0
trigger1 = enemynear(3), hitshakeover
trigger1 = enemynear(3), pos y = 0
trigger1 = enemynear(3), statetype != A
trigger1 = enemynear(3), gethitvar(chainID) != 3200
trigger1 = abs(enemynear(3), pos x - pos x) <= 240
anim = F 120
postype = p1
pos = 0, 0
sprpriority = 5
ownpal = 1

[State Idle]
type = statetypeset
trigger1 = movetype != I
trigger1 = anim = [3203, 3204]
movetype = I

[State Land]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 3209


;---Land---
[Statedef 3209]
type = S
physics = S
movetype = I
anim = 3209
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 3209, Pos]
type = posset
trigger1 = 1
y = 0

[State 3209, Sound]
type = playsnd
trigger1 = !time
value = 0, 52

[State 3209, Dust]
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

[State 3209, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;KAZE NO KEN
[Statedef 3300]
type = S
physics = S
movetype = A
anim = 3300
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

;[State 3300, NHB]
;type = nothitby
;trigger1 = animelemtime(3) < 0
;time = 1
;value = SCA

[State 3300, Sound]
type = playsnd
trigger1 = animelem = 2
value = 1, 1
;channel = 1
stopongethit = 1

[State 3300, No proximity block]
type = attackdist
trigger1 = 1
value = 0

[State 3300, Miss]
type = hitdef
trigger1 = animelemtime(4) < 0
ID = 3300
attr = S, HT
hitflag =

[State 3300, Reversal]
type = reversaldef
trigger1 = !map(hypercancelflag)
trigger1 = !movecontact
trigger1 = animelemtime(4) < 0
trigger1 = p2dist y >= -16
ID = 3300
attr = S, HT
reversal.attr = SCA, NA, SA, HA
pausetime = 0, 0
sparkno = -1 + 0 * (map(sparkno) := 0)
sparkxy = 0, 0
hitsound = -1
p1stateno = 3310
p2stateno = 3320
fall = 0
fall.recover = 0
down.recover = 0; cannot mash
down.recovertime = 30
numhits = 0

[State 3300, Reversal Miss]
type = reversaldef
trigger1 = numenemy = 1
trigger1 = reversaldefattr = SCA, AA, AP, AT
trigger1 = p2dist x < -const(size.ground.back)
attr =
reversal.attr =

[State 3300, Hit]
type = hitdef
trigger1 = map(hypercancelflag)
trigger1 = animelemtime(3) = [0, 3]
;trigger1 = !map(unthrowable) && !map(grabbehind)
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
ID = 3300
attr = S, HT
hitflag = MAF+
priority = 1, Miss
pausetime = 0, 0
sparkno = -1 + 0 * (map(sparkno) := 0)
sparkxy = 0, 0
hitsound = -1
p1stateno = 3310
p2stateno = 3320
fall = 0
fall.recover = 0
down.recover = 0; cannot mash
down.recovertime = 30
numhits = 0

[State 3300, Idle]
type = statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I
persistent = 0

[State 3300, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;-----SUCCESS-----
[Statedef 3310]
type = S
physics = S
movetype = A
anim = 3310
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 3300, Super Pause FX]
type = helper
trigger1 = map(cfg_superfx)
trigger1 = !time
helpertype = normal
stateno = 8510
ID = 8500
name = "Superpause FX"
postype = p1
pos = ceil(-27 * const(size.xscale)), ceil(-50 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3300, Super Pause]; no advantage
type = superpause
trigger1 = !time
time = 40
movetime = 40
anim = ifelse(map(cfg_superfx), -1, 101)
pos = ceil(-27 * const(size.xscale)), ceil(-50 * const(size.yscale))
sound = s0, 8510
darken = !map(cfg_superfx)
p2defmul = 1

[State 3310, Width]
type = width
;trigger1 = frontedgedist < 60
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(27) < 0
edge = 60, 0

[State 3310, Sound]
type = playsnd
trigger1 = animelem = 1
value = 5, 20
channel = 0

[State 3310, Sound]
type = playsnd
trigger1 = animelem = 4
value = 3, 8
channel = 0

[State 3310, Palfx]
redirectID = target(3300), ID
type = palfx
trigger1 = numtarget(3300)
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(6) < 0
time = 1
mul = 0, 0, 0

[State 3310, Palfx]
type = palfx
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(6) < 0
time = 1
mul = 0, 0, 0

[State 3310, BG Color]
type = envcolor
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(6) < 0
time = 1
value = 224, 224, 224
under = 1

[State 3310, Assert]
type = assertspecial
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(6) < 0
flag = nobardisplay
flag2 = noBG
flag3 = noFG

[State 3310, Shadow]
type = assertspecial
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(6) < 0
flag = globalnoshadow
flag2 = nomusic

[State 3310, Afterimage Off]
type = afterimagetime
trigger1 = animelemtime(6) < 0
time = 0

[State 3310, NHB]
type = nothitby
trigger1 = animelemtime(6) < 0
time = 1
value = SCA

[State 3310, Push]
type = playerpush
trigger1 = animelemtime(6) < 0
value = 0

[State 3310, Sound]
type = playsnd
trigger1 = animelem = 3
value = 6, 19

[State 3310, Leaves Before]
type = explod
trigger1 = animelemtime(2) = [0, 10]
anim = 6010
postype = p1
pos = -80 + (animelemtime(2) * 4), -20
random = 10, 10
vel = -8 - (random / 250.0), 2 + (random / 500.0)
scale = ifelse(random < 500, -0.5, 0.5), ifelse(random < 500, -0.5, 0.5)
palfx.time = -1
palfx.hue = (random / 15)
accel = 1.0, -0.25
sprpriority = 5
ownpal = 1

[State 3310, Leaves After]
type = explod
trigger1 = animelemtime(6) = [0, 10]
anim = 6010
postype = p1
pos = 46, -10
random = 20, 20
vel = 6 + (random / 250.0), 1 - (random / 500.0)
scale = ifelse(random < 500, -0.5, 0.5), ifelse(random < 500, -0.5, 0.5)
palfx.time = -1
palfx.hue = (random / 15)
accel = 0.25, -0.25
sprpriority = 5
ownpal = 1

[State 3310, Hitsound]
type = playsnd
trigger1 = animelem = 6
value = 2, 8
channel = 2

;[State 3310, Spark]
;in ZSS

[State 3310, Dust]
type = explod
trigger1 = animelem = 6
anim = 7106
ID = 7106
sprpriority = 3
postype = p1
facing = -1
pos = 60, 0
ownpal = 1
scale = 1.5, 0.5
pausemovetime = -1
supermovetime = -1

[State 3310, FX]
type = helper
trigger1 = animelem = 6
helpertype = normal
stateno = 3315
ID = 3315
name = "Kaze no Ken"
postype = p1
pos = 75, -75
ownpal = 1
pausemovetime = 255
supermovetime = 255

;[State 3310, Horizontal Shake]
;type = zoom
;trigger1 = animelemtime(6) = [1, 18]
;scale = 1
;pos = 3 * cos(pi * animelemtime(6)), 0
;lag = 0
;stagebound = 1
;camerabound = 0

[State 3310, Horizontal Shake]
type = envshake
trigger1 = animelemtime(6) = 1
time = 18
freq = 180
ampl = 4
mul = 0.9
dir = 90 * facing

[State 3310, Throw]
type = targetfacing
trigger1 = animelem = 6
ID = 3300
value = -1

[State 3310, Fix Overlap]
type = targetbind
trigger1 = animelem = 2; !time
trigger1 = numtarget(3300)
trigger1 = target(3300), pos y >= 0
trigger1 = (((target(3300), pos x) - pos x) * facing) < 60
ID = 3300
pos = 60, 0

[State 3310, Bind]
type = targetbind
trigger1 = animelem = 6
ID = 3300
pos = 46, 0

[State 3310, Throw]
type = targetstate
trigger1 = animelem = 6
ID = 3300
value = 3321

[State 3310, Fall Sooner]
type = targetstate
trigger1 = map(hypercancelflag)
trigger1 = time = 120
ID = 3300
value = 3322

[State 3310, Hitdamage]
type = hitadd
trigger1 = animelem = 6
value = 1

[State 3310, Damage]
type = targetlifeadd
trigger1 = animelem = 6
value = floor(-200 * map(damagescaling))
dizzy = 0
kill = 1

[State 3310, Givepower]
type = targetpoweradd
trigger1 = animelem = 6
value = 100

[State Idle]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I
persistent = 0

[State 3310, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- TARGET -----
[Statedef 3320]
type = A
physics = N
movetype = H
velset = 0, 0
ctrl = 0

[State 3320, NHB]
type = nothitby
trigger1 = 1
time = 1
value = SCA

[State 3320, Push]
type = playerpush
trigger1 = 1
value = 0

[State 3320, Anim]
type = assertspecial
trigger1 = 1
flag = animfreeze

[State 3320, Pos]
type = posfreeze
trigger1 = 1
value = 1

[State 3320, Sound]
type = stopsnd
trigger1 = !time
channel = 0

[State 3320, Sound]
type = stopsnd
trigger1 = !time
channel = 1

[State 3320, Sound]
type = stopsnd
trigger1 = !time
channel = 2

[State 3320, Sound]
type = stopsnd
trigger1 = !time
channel = 3

[State 3320, Sound]
type = stopsnd
trigger1 = !time
channel = 4

[State 3320, Sound]
type = stopsnd
trigger1 = !time
channel = 5

[State 3320, Sound]
type = stopsnd
trigger1 = !time
channel = 6

[State 3320, Sound]
type = stopsnd
trigger1 = !time
channel = 7

[State 3320, End]
type = selfstate
trigger1 = time >= 60
value = 5000


;----- Hit Pause -----
[Statedef 3321]
type = S
movetype = H
physics = S
velset = 0, 0

[State 3321, Stop]
type = posset
trigger1 = 1
y = 0

[State 3321, Anim]
type = changeanim
trigger1 = 1
value = ifelse(const(size.mid.pos.y) <= -80, 5012, 5002)

[State 3321, Hitfall]
type = hitfallset
trigger1 = 1
value = 0

[State 4150, Shake]
type = offset
trigger1 = time = [0, 24]
x = ifelse((time % 2), -2, 2)

[State 4150, Shake]
type = offset
trigger1 = time = [25, 48]
x = ifelse((time % 2), -1, 1)

[State 3321, End]
type = changestate
trigger1 = time >= 60
value = 3322


;----- Falling -----
[Statedef 3322]
type = S
physics = S
movetype = H
ctrl = 0
velset = 0, 0

[State 3322, Anim]
type = changeanim2
trigger1 = !time
value = 3322

[State 3322, Stop]
type = posset
trigger1 = 1
y = 0

[State 3322, Dust]
type = explod
trigger1 = animelem = 7
anim = F 60
postype = p1
pos = 0, 0
ownpal = 1
sprpriority = -10

[State 3322, Sound]
type = playsnd
trigger1 = animelem = 7
value = F 7, 0

[State 3322, Type]
type = statetypeset
trigger1 = animelem = 4
statetype = A
physics = C

[State 3322, Type]
type = statetypeset
trigger1 = animelem = 7
statetype = L
physics = C

[State 3322, Pos]
type = posadd
trigger1 = animelem = 7
x = -const(size.ground.back)

[State 3322, Hitfall]
type = hitfallset
trigger1 = statetype = A
trigger2 = statetype = L
value = 1

[State 3322, Die faster]
type = selfstate
trigger1 = !animtime
trigger1 = !alive
value = 5150

[State 3322, End]
type = selfstate
trigger1 = time >= 70
value = ifelse(alive, 5120, 5150)


;SHUN GOKU SATSU
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
value = 15, 19
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
pos = ceil(7 * const(size.xscale)), ceil(-105 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 4000, Super Pause]
type = superpause
trigger1 = time = 3
time = 45
movetime = 45
anim = ifelse(map(cfg_superfx), -1, 102)
pos = ceil(7 * const(size.xscale)), ceil(-105 * const(size.yscale))
sound = s0, 8520
darken = !map(cfg_superfx)
p2defmul = 1

[State 4000, NHB]
type = nothitby
trigger1 = animelemtime(2) < 8
time = 1
value = SCA

[State 4000, Vel]
type = velset
trigger1 = animelem = 2
x = 5

[State 4000, Sound]
type = playsnd
trigger1 = animelem = 2
value = 6, 4

[State 4000, No proximity block]
type = attackdist
trigger1 = 1
value = 0

[State 4000, Miss]
type = hitdef
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
attr = S, HT
hitflag =

[State 4000, Hit]
type = hitdef
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
trigger1 = !map(unthrowable) && !map(grabbehind)
trigger1 = map(truebodydistx) <= 12
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
fall = 1
fall.recover = 0
down.recover = 0; cannot mash
down.recovertime = 30
hitsound = s2, 800
hitsound.channel = 2

[State 4000, Vel]
type = velset
trigger1 = animelem = 3
x = 0

[State 4000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- PLAYER -----
[Statedef 4010]
type = S
physics = N
movetype = A
anim = 4010
ctrl = 0
velset = 0, 0
sprpriority = 2

[State Throw]
type = targetstate
trigger1 = !time
value = 4020

[State 4010, Sound]
type = playsnd
trigger1 = !time
value = 6, ifelse(var(1) = 3, 17, 11)

[State 4010, Pause]
type = pause
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(17) < -1
time = 2
movetime = 2

[State 4010, Push]
type = playerpush
trigger1 = animelemtime(17) >= 0
value = 0

[State 4010, NHB]
type = nothitby
trigger1 = animelemtime(17) < 0
value = SCA
time = 1

[State 4010, Image Off]
type = afterimagetime
trigger1 = animelemtime(5) > 0
time = 0

[State 4010, Fadeout]
type = allpalfx
trigger1 = animelemtime(2) = -16
time = 16
sinadd = -255, -255, -255, 64

[State 4010, BG Color]
type = envcolor
trigger1 = animelemtime(2) >= 0 && animelemtime(17) < 0
time = 2
value = 0, 0, 0

[State 4010, Assert]
type = assertspecial
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(17) < 0
flag = nobardisplay
flag2 = noBG
flag3 = noFG

[State 4010, Zoom]
type = zoom
trigger1 = animelemtime(17) < 0
trigger1 = numtarget(4000)
scale = 1.20 / camerazoom
pos = (pos x + target(4000), pos x) / 2.0 * camerazoom, 0
camerabound = 0
stagebound = 1
lag = 0.90

[State 4010, Sprite Priority]
type = sprpriority
trigger1 = animelemtime(17) >= 0
value = 1

[State 4010, Bind]
type = targetbind
trigger1 = animelemtime(17) < 0
pos = 45, 0

[State 4010, Hitadd]
type = hitadd
trigger1 = animelem = 2 || animelem = 3 || animelem = 4 || animelem = 5 || animelem = 6 || animelem = 7 || animelem = 8 || animelem = 9
trigger2 = animelem = 10 || animelem = 11 || animelem = 12 || animelem = 13 || animelem = 14 || animelem = 15 || animelem = 16
value = 1

[State 4010, Damage]
type = targetlifeadd
trigger1 = animelem = 2 || animelem = 3 || animelem = 4 || animelem = 5 || animelem = 6 || animelem = 7 || animelem = 8 || animelem = 9
trigger2 = animelem = 10 || animelem = 11 || animelem = 12 || animelem = 13 || animelem = 14 || animelem = 15 || animelem = 16
value = floor(-32 * map(damagescaling))
dizzy = 0
kill = animelem = 16

[State 4010, Givepower]
type = targetpoweradd
trigger1 = animelem = 2 || animelem = 3 || animelem = 4 || animelem = 5 || animelem = 6 || animelem = 7 || animelem = 8 || animelem = 9
trigger2 = animelem = 10 || animelem = 11 || animelem = 12 || animelem = 13 || animelem = 14 || animelem = 15 || animelem = 16
value = 25

[State 4010, HitSound]
type = playsnd
trigger1 = animelem = 2 || animelem = 3 || animelem = 4 || animelem = 5 || animelem = 6 || animelem = 7 || animelem = 8 || animelem = 9
trigger2 = animelem = 10 || animelem = 11 || animelem = 12 || animelem = 13 || animelem = 14 || animelem = 15 || animelem = 16
value = 2, ifelse((animelem = 16), 8, 3)
channel = 2

;[State 4010, Spark]
;in ZSS

[State 4010, Shake]
type = envshake
trigger1 = animelem = 2 || animelem = 3 || animelem = 4 || animelem = 5 || animelem = 6 || animelem = 7 || animelem = 8 || animelem = 9
trigger2 = animelem = 10 || animelem = 11 || animelem = 12 || animelem = 13 || animelem = 14 || animelem = 15 || animelem = 16
time = 6
freq = 180
ampl = 2

[State 4010, Throw]
type = targetstate
trigger1 = animelemtime(16) >= 0 && numtarget
value = 4021
persistent = 0

[State 4010, End]
type = changestate
trigger1 = animelemtime(16) >= 0 && winko
value = 4099

[State 4010, Sound]
type = playsnd
trigger1 = animelem = 17
value = 15, 15
channel = 0

[State 4010, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


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
trigger1 = time >= 180
value = 5040


[Statedef 4021]
type = L
physics = C
movetype = H
velset = 0, 0
ctrl = 0

[State 4021, Anim]
type = changeanim2
trigger1 = !time
value = 4021

[State 4021, End]
type = selfstate
trigger1 = !alive
value = 5150

[State 4021, End]
type = selfstate
trigger1 = alive
trigger1 = time >= 90
value = 5120
