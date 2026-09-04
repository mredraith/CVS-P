; _______________________________
;| Vega by Phantom.of.the.Server |
; 
;==
;==SUPER STATES==
;==

;==NIGHTMARE BOOSTER=
[Statedef 3000]
type = S
physics = S
movetype = A
ctrl = 0
anim = 3000
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

[State 3000, Pos]
type = posset
trigger1 = !time
y = 0

[State 3000, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_super) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 3000, Lose Charge]
type = null
trigger1 = time <= 0
trigger1 = 1 || map(cmd_charge4) := 0
trigger1 = 1 || map(ai_charge4) := 0
ignorehitpause = 1
persistent = 0

[State 3000, Sound]
type = playsnd
trigger1 = time = 3
value = 3, 7
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
pos = ceil(-21 * const(size.xscale)), ceil(-67 * const(size.yscale))
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
pos = ceil(-21 * const(size.xscale)), ceil(-67 * const(size.yscale))
sound = s0, 8500
p2defmul = 1
darken = !map(cfg_superfx)

[State 3000, Shield]
type = helper
trigger1 = !numhelper(1007)
trigger1 = animelemtime(6) >= 0
helpertype = normal
stateno = 1007
ID = 1007
name = "Projectile Shield"
postype = p1

[State 3000, Shield]
type = nothitby
trigger1 = numhelper(1007)
trigger1 = animelemtime(6) >= 0
value2 = , NP, SP
time = 1
ignorehitpause = 1

[State 3000, NHB]
type = nothitby
trigger1 = animelemtime(6) < 0
time = 1
value = SCA
ignorehitpause = 1

[State 3000, Vel]
type = velset
trigger1 = animelemtime(4) >= 0
x = 8
y = 0

[State 3000, Type]
type = statetypeset
trigger1 = animelem = 4
statetype = A
physics = N

[State 3000, Sound]
type = playsnd
trigger1 = animelem = 4
value = 0, 40

[State 3000, Dust]
type = explod
trigger1 = animelem = 4
anim = 7100
ID = 7100
sprpriority = 3
postype = p1
pos = 0, ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1

[State 3000, Sound]
type = playsnd
trigger1 = animelem = 5
value = 5, 4

[State 3000, FX]
type = explod
trigger1 = animelemtime(5) >= 0
trigger1 = !(animelemtime(5) % 4)
trigger1 = !movecontact && !movereversed
ID = 3005
postype = p1
pos = 90, -58
velocity = vel x / 2, 0
anim = 3005
scale = 1, 1
sprpriority = 3
removeongethit = 1
pausemovetime = p2, pausetime
supermovetime = p2, pausetime
ownpal = 1

[State 3000, Hit]
type = hitdef
trigger1 = animelem = 6
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 2)
attr = S, HA
damage = 30, 8
dizzypoints = 0
animtype = Medium
fall.animtype = Medium
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 8, 8
guard.pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8014)
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
ground.velocity = -10.52, 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
air.type = Low
air.velocity = -2, -2
getpower = 0, 0
givepower = 40, 40
p1sprpriority = sprpriority
forcestand = 1
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
palfx.time = 60
palfx.color = 0
palfx.sinadd = 128, 128, 128, 4
palfx.mul = map(palfx1_r), map(palfx1_g), map(palfx1_b)
air.fall = 1
fall.recover = 0
down.recover = 1
ID = 3000
yAccel = (0.5 + (ComboCount * 0.06))
kill = 0
guard.kill = 1

[State 3000, P1 State]
type = changestate
trigger1 = movecontact || movereversed
value = ifelse(movehit, 3001, 3003)

[State 3000, End]
type = changestate
trigger1 = animelemtime(6) >= 1
trigger1 = frontedgedist <= (abs(map(cornerpush)) + 1); because of processing order and corner priority respectively
trigger2 = time >= 120
value = 3002


;----- Spinning -----
[Statedef 3001]
type = A
physics = N
movetype = A
ctrl = 0
anim = 3001
sprpriority = 2

[State 3001, NHB]
type = nothitby
trigger1 = 1
time = 1
value = , AP
ignorehitpause = 1

[State 3001, Sound]
type = playsnd
trigger1 = !time
value = 4, 12
channel = 0

[State 3001, Vel]
type = velset
trigger1 = 1
x = 8
y = 0

[State 3001, Hit]
type = hitdef
trigger1 = !((movecontact + movereversed) % 8)
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 99)
ID = 3000
attr = S, HA
damage = 30, 8
dizzypoints = 0
animtype = Medium
fall.animtype = Medium
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = ifelse(hitcount >= 4, 2, 0), 8; hitspark alignment
guard.pausetime = 0, 8
sparkno = -1 + 0 * (map(sparkno) :=8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 60) * (map(sparkx.max) := 75), map(sparky) := -59
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
guard.velocity = -10.52
air.type = Low
air.velocity = -2, -2
getpower = 0, 0
givepower = 40, 40
p1sprpriority = sprpriority
forcestand = 1
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
palfx.time = 60
palfx.color = 0
palfx.sinadd = 128, 128, 128, 4
palfx.mul = map(palfx1_r), map(palfx1_g), map(palfx1_b)
air.fall = 1
fall.recover = 0
down.recover = 0; cannot mash
down.recovertime = 30
yAccel = (0.5 + (ComboCount * 0.06))
kill = 0
guard.kill = 1

[State 3001, Target Drop]
type = targetdrop
trigger1 = numtarget(3000) > 1
ID = 3000
keepone = 1
excludeID = 3000
ignorehitpause = 1

[State 3001, P2 State]
type = targetstate
trigger1 = movehit = 1
trigger1 = numtarget(3000) = 1
trigger1 = hitcount >= 5
ID = 3000
value = 3020

[State 3001, P1 State]
type = changestate
trigger1 = movehit = 1
trigger1 = numtarget(3000) = 1
trigger1 = hitcount >= 5
value = 3010

[State 3001, End]
type = changestate
trigger1 = time >= 60
value = 3002


;----- Miss -----
[Statedef 3002]
type = A
physics = S
movetype = I
ctrl = 0
anim = 3002
velset = 0, 0
sprpriority = 2

[State 3002, End]
type = changeanim
trigger1 = !animtime
trigger1 = anim = 3301
value = 3302

[State 3002, Vel]
type = velset
trigger1 = animelem = 3
x = 0
y = 0

[State 3002, Pos]
type = posset
trigger1 = 1
y = 0

[State 3002, Type]
type = statetypeset
trigger1 = animelem = 3
statetype = S
physics = S

[State 3002, Sound]
type = playsnd
trigger1 = animelem = 3
value = 0, 52
persistent = 0

[State 3002, Dust]
type = explod
trigger1 = animelem = 3
anim = 7102
ID = 7102
sprpriority = -2
postype = p1
scale = 0.5, 0.5
ownpal = 1
persistent = 0
pausemovetime = -1
supermovetime = -1

[State 3002, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- Blocked -----
[Statedef 3003]
type = A
physics = N
movetype = I
anim = 3003
ctrl = 0
velset = -1.5, -10

[State 3003, Pos Fix]
type = posadd
trigger1 = !time
x = 20

[State 3003, Accel]
type = veladd
trigger1 = 1
y = 0.55

[State 3003, Land]
type = changestate
trigger1 = statetype = A
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;----- Flying -----
[Statedef 3010]
type = A
physics = N
movetype = A
ctrl = 0
anim = 3010
velset = 0, 0
sprpriority = 2

[State 3010, Rotate]
type = offset
trigger1 = 1
x = 0
y = -60

[State 3010, Rotate]
type = angledraw
trigger1 = time < 45
value = time * 6

[State 3010, Rotate]
type = angledraw
trigger1 = time >= 45
value = 270

[State 3010, Vel]
type = velset
trigger1 = time = [0, 14]
x = 16 * cos(time / 30.0 * pi)
y = -12 * sin(time / 30.0 * pi)

[State 3010, Vel]
type = velset
trigger1 = time = [15, 45]
x = 8 * cos(time / 30.0 * pi)
y = -12 * sin(time / 30.0 * pi)

[State 3010, Throw]
type = targetfacing
trigger1 = !time
value = -1

[State 3010, Bind 2]
type = targetbind
trigger1 = time < 45
pos = 68 * cos(time / 30.0 * pi), -60 -60 * sin(time / 30.0 * pi)

[State 3010, Bind 2]
type = targetbind
trigger1 = time = 45
pos = 0, 0

[State 3010, Vel]
type = velset
trigger1 = time >= 45
x = 0
y = 0

[State 3010, Fake Hit]
type = hitadd
trigger1 = time = 45
value = 1

[State 3010, Juggle]
type = mapadd
trigger1 = time = 45
map = "juggle_count"
value = 1

[State 3010, Fake Hit]
type = playsnd
trigger1 = time = 45
value = 2, 3
channel = 2

[State 3010, Damage]
type = targetlifeadd
trigger1 = time = 45
value = floor(-30 * map(damagescaling))
dizzy = 0
kill = 0

[State 3010, Give Power]
type = targetpoweradd
trigger1 = time = 45
value = 40; givepower

;[State 3010, Spark]
;in ZSS

[State 3010, Shake]
type = envshake
trigger1 = numtarget
trigger1 = time = 45
time = 24
freq = 180
ampl = -4
mul = 0.85

[State 3010, P2 State]
type = targetstate
trigger1 = numtarget
trigger1 = time = 45
ID = 3000
value = 3021

[State 3010, Freeze Anim]
type = changeanim
trigger1 = numtarget
trigger1 = time >= 45
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
value = 3010
elem = 2

[State 3010, End]
type = changestate
trigger1 = time >= 60
value = 3011


;----- Stomping -----
[Statedef 3011]
type = A
physics = N
movetype = A
ctrl = 0
anim = 3011
velset = 0, 0
sprpriority = 2

[State 3011, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 3011, Rotate]
type = offset
trigger1 = !time
x = 0
y = 0

[State 3011, Rotate]
type = angledraw
trigger1 = !time
value = 0

[State 3011, Push]
type = playerpush
trigger1 = 1
value = 0

[State 3011, Accel]
type = veladd
trigger1 = animelemtime (6) >= 0
y = 1

[State 3011, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 3012


;----- Stomp -----
[Statedef 3012]
type = S
physics = N
movetype = A
ctrl = 0
anim = 3012
velset = 0, 0
sprpriority = 2

[State 3012, Push]
type = playerpush
trigger1 = animelemtime(10) < 0
value = 0
ignorehitpause = 1

[State 3012, Pos]
type = offset
trigger1 = numtarget(3012)
trigger1 = animelemtime(6) < 0
y = -(target(3012), const(size.ground.front))
ignorehitpause = 1

[State 3012, Pos]
type = offset
trigger1 = animelemtime(6) >= 0 && animelemtime(7) < 0
trigger1 = numtarget(3012)
y = ceil(-0.5 * (target(3012), const(size.ground.front)))

[State 3012, Pos]
type = posset
trigger1 = 1
y = 0

[State 3012, Vel]
type = velset
trigger1 = animelem = 5
x = -5

[State 3012, Sound]
type = playsnd
trigger1 = animelem = 5
value = 0, 105

[State 3012, Vel]
type = velset
trigger1 = animelem = 12
x = 0

[State 3012, Sound]
type = playsnd
trigger1 = animelem = 12
value = 0, 52

[State 3012, Dust]
type = explod
trigger1 = animelem = 12
anim = 7102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 3012, Sound]
type = playsnd
trigger1 = !time
value = 5, 7

[State 3012, Dust]
type = explod
trigger1 = !time
anim = 7100
ID = 7100
sprpriority = 3
postype = p1
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 3012, Dust]
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

[State 3012, Shake]
type = envshake
trigger1 = !time
time = 18
freq = 180
ampl = 2

[State 3012, Hit]
type = hitdef
trigger1 = !time
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 99)
attr = S, HA
hitflag = MAFD
guardflag = M
priority = 4, Hit
damage = 30, 8
dizzypoints = 0
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
air.hittime = 120
ground.velocity = -4, -6
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.velocity = -4, -6
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
air.fall = 1
fall.recover = 0
down.recover = 0; cannot mash
down.recovertime = 30
p1sprpriority = sprpriority
forcestand = 1
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -20) * (map(sparkx.max) := 20), map(sparky) := -10
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
down.velocity = 0, 0
ID = 3012

[State 3012, P2 Stay Down on KO]
type = targetstate
trigger1 = movehit = 1
trigger1 = numtarget(3012) = 1
trigger1 = target(3012), alive = 0
trigger1 = target(3012), pos y >= 0
trigger1 = target(3012), stateno = 5080
trigger1 = target(3012), incustomstate = 0
value = 1115080
ID = 3012
ignorehitpause = 1

[State 3012, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- Target taken for a ride -----
[Statedef 3020]
type = A
physics = N
movetype = H
velset = 0, 0
sprpriority = -1

[State 3020, Anim]
type = changeanim2
trigger1 = 1
value = 3020

[State 3020, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0, 0

[State 3020, Rotate]
type = angledraw
trigger1 = time < 45
value = time * -6

[State 3020, Rotate]
type = angledraw
trigger1 = time >= 45
value = -270

[State 3020, Safety]
type = selfstate
trigger1 = time >= 180
value = 5040


;----- Target falling -----
[Statedef 3021]
type = A
movetype= H
physics = N
velset = 0, 8

[State 3021, Rotate]
type = angledraw
trigger1 = !time
value = 0

[State 3021, 1]
type = ChangeAnim
trigger1 = !time
value = 5080

[State 3021, Pos]
type = posadd
trigger1 = !time
y = const(size.ground.back)

[State 3021, 3]
type = VelAdd
trigger1 = 1
y = 0.4850; yaccel

[State 3021, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -vel y
value = 3022


;----- Target fallen -----
[Statedef 3022]
type = L
movetype= H
physics = N
velset = 0, 0

[State 3022, EnvShake]
type = envshake
trigger1 = !time
time = 12
freq = 180
ampl = 2

[State 3022, Anim]
type = changeanim
trigger1 = !time
value = 5100

[State 3022, Pos]
type = posset
trigger1 = 1
y = 0

[State 3022, Anim]
type = changeanim
trigger1 = !animtime
trigger1 = anim = 5100
value = 5110

[State 3022, FX]
type = explod
trigger1 = time = 1
anim = F 62
postype = p1
pos = 0, 0
ownpal = 1
sprpriority = ifelse (sysvar(1) <= const720p(56), -10, 10)

[State 3022, Sound]
type = playsnd
trigger1 = time = 1
value = F 7, 2

[State 3022, 12]
type = selfstate
trigger1 = time >= 60
value = 5120


;==PSYCHO BREAK SMASHER=
[Statedef 3300]
type = S
physics = S
movetype = A
ctrl = 0
anim = 3300
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

[State 3300, Pos]
type = posset
trigger1 = !time
y = 0

[State 3300, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_super) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 3300, Lose Charge]
type = null
trigger1 = time <= 0
trigger1 = 1 || map(cmd_charge4) := 0
trigger1 = 1 || map(ai_charge4) := 0
ignorehitpause = 1
persistent = 0

[State 3300, Sound]
type = playsnd
trigger1 = time = 3
value = 4, 10
channel = 0

[State 3300, Super Pause FX]
type = helper
trigger1 = map(cfg_superfx)
trigger1 = time = 3
helpertype = normal
stateno = 8510
ID = 8500
name = "Superpause FX"
postype = p1
pos = ceil(24 * const(size.xscale)), ceil(-91 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3300, Super Pause]
type = superpause
trigger1 = time = 3
time = 43
movetime = 43
anim = ifelse(map(cfg_superfx), -1, 101)
pos = ceil(24 * const(size.xscale)), ceil(-91 * const(size.yscale))
sound = s0, 8510
p2defmul = 1
darken = !map(cfg_superfx)

[State 3300, Shield]
type = helper
trigger1 = !numhelper(1007)
trigger1 = anim = 3300
trigger1 = animelemtime(13) >= 0
helpertype = normal
stateno = 1007
ID = 1007
name = "Projectile Shield"
postype = p1

[State 3300, Shield]
type = nothitby
trigger1 = numhelper(1007)
trigger1 = anim = 3300
trigger1 = animelemtime(13) >= 0
value2 = , AP
time = 1
ignorehitpause = 1

[State 3300, NHB]
type = nothitby
trigger1 = time <= 52
time = 1
value = SCA
ignorehitpause = 1

[State 3300, Width]
type = width
trigger1 = anim = 3300
trigger1 = animelemtime(13) = -2
player = 20, 0

[State 3300, Width]
type = width
trigger1 = anim = 3300
trigger1 = animelemtime(13) = -1
player = 40, 0

[State 3300, Push]
type = playerpush
trigger1 = anim = 3300
trigger1 = animelemtime(13) >= 0
value = 0
ignorehitpause = 1

[State 3300, Hit Var]
type = varset
trigger1 = !time
var(14) = 0

[State 3300, Hit Var]
type = varadd
trigger1 = movehit = 1 || moveguarded = 1 || movereversed = 1
var(14) = 1

[State 3300, Vel]
type = velset
trigger1 = anim = 3300
trigger1 = animelemtime(11) > 0
x = 10
y = 0

[State 3300, Vel]
type = posfreeze
trigger1 = anim = 3300
trigger1 = animelemtime(11) > 0 && var(14) < 9
trigger1 = (movecontact = [1, 3]) || (movereversed = [1, 3])
value = 1

[State 3300, Type]
type = statetypeset
trigger1 = anim = 3300
trigger1 = animelem = 11
statetype = A
physics = N

[State 3300, Sound]
type = playsnd
trigger1 = anim = 3300
trigger1 = animelem = 11
value = 0, 40

[State 3300, Dust]
type = explod
trigger1 = anim = 3300
trigger1 = animelem = 11
anim = 7100
ID = 7100
sprpriority = 3
postype = p1
pos = 0, ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1

[State 3300, Sound]
type = playsnd
trigger1 = anim = 3300
trigger1 = time = 48
value = 4, 5
channel = 0

[State 3300, Sound]
type = playsnd
trigger1 = anim = 3300
trigger1 = animelem = 13
value = 5, 5

[State 3300, FX]
type = helper
trigger1 = !numhelper(3310)
trigger1 = anim = 3300
trigger1 = animelemtime(13) >= 0
helpertype = normal
stateno = 3310
ID = 3310
name = "Psycho Crusher"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1
pausemovetime = p2, pausetime
supermovetime = p2, pausetime

[State 3300, Hit]
type = hitdef
trigger1 = anim = 3300
trigger1 = animelemtime(13) >= 0
trigger1 = !((movecontact + movereversed) % 4)
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 9)
ID = 3300
attr = S, HA
damage = 120 / (hitcount + 1), 30 / (guardcount + 1)
dizzypoints = 0
animtype = Diagup
fall.animtype = Diagup
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 4, 8
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 0) * (map(sparkx.max) := 75), map(sparky) := -59
hitsound = s2, 8
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.slidetime = 12
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.velocity = -6, -6
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -4.49
air.type = Low
air.velocity = -6, -6
getpower = 0, 0
givepower = 40, 40
p1sprpriority = sprpriority
forcestand = 1
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
palfx.time = 60
palfx.color = 0
palfx.sinadd = 128, 128, 128, 4
palfx.mul = map(palfx1_r), map(palfx1_g), map(palfx1_b)
fall = 1
fall.recover = 0
down.recover = 0; cannot mash
down.recovertime = 30
yAccel = (0.5 + (ComboCount * 0.06))

[State 3300, Vel]
type = velmul
trigger1 = anim = 3301
x = 0.90

[State 3300, End]
type = changestate
triggerall = anim = 3300
triggerall = animelemtime(13) >= 0
trigger1 = frontedgedist <= (abs(map(cornerpush)) + 1); because of processing order and corner priority respectively
trigger2 = time >= 180
value = 3301


;----- Recovery -----
[Statedef 3301]
type = S
physics = N
movetype = I
anim = 3301
ctrl = 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 1000, Vel]
type = velmul
trigger1 = 1
x = 0.90

[State 3301, End]
type = changestate
trigger1 = !animtime
value = 3302


;----- Land -----
[Statedef 3302]
type = S
physics = S
movetype = I
anim = 3302
ctrl = 0
velset = 0, 0
sprpriority = 2
movehitpersist = 1
hitcountpersist = 1

[State 3302, Pos]
type = posset
trigger1 = 1
y = 0

[State 3302, Sound]
type = playsnd
trigger1 = !time
value = 0, 52

[State 3302, Dust]
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

[State 3302, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==KNEE PRESS NIGHTMARE=
[Statedef 3100]
type = S
physics = S
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

[State 3100, Pos]
type = posset
trigger1 = !time
y = 0

[State 3100, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_super) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 3100, Lose Charge]
type = null
trigger1 = time <= 0
trigger1 = 1 || map(cmd_charge4) := 0
trigger1 = 1 || map(ai_charge4) := 0
ignorehitpause = 1
persistent = 0

[State 3100, Sound]
type = playsnd
trigger1 = time = 3
value = 4, 11
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
pos = ceil(20 * const(size.xscale)), ceil(-23 * const(size.yscale))
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
pos = ceil(20 * const(size.xscale)), ceil(-23 * const(size.yscale))
sound = s0, 8500
p2defmul = 1
darken = !map(cfg_superfx)

[State 3100, NHB]
type = nothitby
trigger1 = animelemtime(4) < 0
time = 1
value = SCA
ignorehitpause = 1

[State 3100, Anim]
type = changeanim
triggerall = vel y > 0
triggerall = pos y > -vel y
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
trigger2 = animelemtime(11) >= 0 && animelemtime(12) < 0
value = 3100
elem = animelemno(0) + 1

[State 3100, Sound]
type = playsnd
trigger1 = animelem = 2 || animelem = 8
value = 0, 40

[State 3100, Dust]
type = explod
trigger1 = animelem = 2 || animelem = 8
anim = 7100
ID = 7100
sprpriority = 3
postype = p1
pos = 0, ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1

[State 3100, Vel]
type = velset
trigger1 = animelem = 2 || animelem = 8
x = 7.5
y = ifelse((animelem = 2), -4.5, -3.5)

[State 3100, Vel]
type = velset
trigger1 = animelem = 16
x = 25

[State 3100, Type]
type = statetypeset
trigger1 = animelem = 2
trigger2 = animelem = 8
statetype = A
physics = N

[State 3100, Type]
type = statetypeset
trigger1 = animelem = 6
statetype = S
physics = S

[State 3100, Type]
type = statetypeset
trigger1 = animelem = 12
statetype = C
physics = C

[State 3100, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0
trigger1 = animelemtime(6) < 0
trigger2 = animelemtime(8) >= 0
trigger2 = animelemtime(12) < 0
y = 0.50

[State 3100, Vel]
type = velset
trigger1 = animelem = 6
trigger2 = animelem = 12
x = 0
y = 0

[State 3100, Pos]
type = posset
trigger1 = animelem = 6
trigger2 = animelem = 12
y = 0

[State 3100, Pos]
type = posadd
trigger1 = animelem = 7
x = 8

[State 3100, Sound]
type = playsnd
trigger1 = animelem = 3 || animelem = 9
value = 1, 6
;channel = 1
stopongethit = 1

[State 3100, Sound]
type = playsnd
trigger1 = animelem = 15
value = 5, 8
;channel = 1
stopongethit = 1

[State 3100, Sound]
type = playsnd
trigger1 = animelem = 6 || animelem = 12
value = 0, 52

[State 3100, Dust]
type = explod
trigger1 = animelem = 6 || animelem = 12
anim = 7102
ID = 7102
sprpriority = -2
postype = p1
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1100, Blur FX]
type = explod
trigger1 = animelem = 4 || animelem = 10
ID = 1190
anim = 1190
postype = p1
pos = 70 * const(size.xscale), -50 * const(size.yscale)
bindtime = 60
sprpriority = sprpriority + 1
removeongethit = 1
removeonchangestate = 1
ownpal = 1

[State 3100, Hit High]
type = hitdef
trigger1 = animelem = 4 || animelem = 10
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 4)
attr = S, HA
damage = 40, 10
dizzypoints = 0
animtype = Medium
fall.animtype = Back
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 4, 12
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 80), map(sparky) := -85
hitsound = s2, 6
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
air.velocity = -3, -4.5
air.cornerpush.veloff = 0
getpower = 0, 0
givepower = 40, 40
p1sprpriority = sprpriority
forcestand = 1
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
fall = 0
air.fall = 1
fall.recover = 0
down.recover = 1
yAccel = (0.5 + (ComboCount * 0.06))

[State 3100, Hit Low]
type = hitdef
trigger1 = animelem = 5 || animelem = 11
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 4)
attr = S, HA
damage = 40, 10
dizzypoints = 0
animtype = Hard
fall.animtype = Back
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 4, 12
sparkno = -1 + 0 * (map(sparkno) := 8014)
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
ground.velocity = -7.51, 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.type = Low
air.velocity = -3, -4.5
air.cornerpush.veloff = 0
getpower = 0, 0
givepower = 40, 40
p1sprpriority = sprpriority
forcestand = 1
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
fall = 0
air.fall = 1
fall.recover = 0
down.recover = 1
yAccel = (0.5 + (ComboCount * 0.06))

[State 3100, Hit Slide]
type = hitdef
trigger1 = animelem = 16
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 5)
attr = C, HA
damage = 40, 10
dizzypoints = 0
animtype = Hard
hitflag = MAFD
guardflag = L
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8014)
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
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.type = Low
air.velocity = -1.0, -8.0
air.cornerpush.veloff = 0
down.hittime = 20
down.velocity = 0, 0
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
fall = 1
fall.recover = 0
down.recover = 1
yAccel = (0.5 + (ComboCount * 0.06))
p1sprpriority = sprpriority
forcestand = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(17) >= 0
movetype = I
persistent = 0

[State 3100, Kicks]
type = changestate
trigger1 = animelem = 14
trigger1 = movehit || movereversed
value = 3110

[State 3100, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;----- Kicks -----
[Statedef 3110]
type = A
physics = N
movetype = A
ctrl = 0
anim = 3110
velset = 0, 0
sprpriority = 2

[State 3110, Vel]
type = velset
trigger1 = animelemtime(2) >= 0 && animelemtime(12) < 0
x = 4

[State 3110, Sound]
type = playsnd
trigger1 = animelem = 11
value = 3, 1
channel = 0

[State 3100, Sound]
type = playsnd
trigger1 = animelem = 2 || animelem = 7 || animelem = 9 || animelem = 12
value = 1, 6
;channel = 1
stopongethit = 1

[State 3110, Hit]
type = hitdef
trigger1 = animelem = 2 || animelem = 7 || animelem = 9
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 99)
attr = A, HA
damage = 20, 5
dizzypoints = 0
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = ifelse((animelem = 2), 8, 4), 12
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 10) * (map(sparkx.max) := 36), map(sparky) := -79
hitsound = s2, 5
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
air.type = Low
ground.type = High
ground.slidetime = 12
ground.hittime = 1 + 20
guard.hittime = (1 + 20) - 6
ground.velocity = -4.49, 0
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.velocity = -6, -3.5
air.cornerpush.veloff = 0
getpower = 0, 0
givepower = 40, 40
p1sprpriority = sprpriority
forcestand = 1
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
fall = 0
air.fall = 1
fall.recover = 0
down.recover = 1
yAccel = (0.5 + (ComboCount * 0.06))

[State 3110, Hit]
type = hitdef
trigger1 = animelem = 12
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 99)
attr = A, HA
damage = 20, 5
dizzypoints = 0
animtype = Diagup
fall.animtype = Diagup
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 12, 12
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 30) * (map(sparkx.max) := 80), map(sparky) := -86
hitsound = s2, 6
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
air.type = Low
ground.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
ground.velocity = -6, -6
guard.velocity = -7.51
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.velocity = -6, -6
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
guard.velocity = -10.52
getpower = 0, 0
givepower = 40, 40
p1sprpriority = sprpriority
forcestand = 1
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
fall = 1
fall.recover = 0
down.recover = 1
yAccel = (0.5 + (ComboCount * 0.06))

[State 3110, Accel]
type = veladd
trigger1 = animelemtime(13) >= 0
y = 0.5

[State 3110, Vel]
type = velset
trigger1 = animelem = 13
x = -4
y = -8

[State 3110, Type]
type = statetypeset
trigger1 = animelem = 13
movetype = I

[State 3110, End]
type = changestate
trigger1 = animelemtime(13) >= 0
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 3111


;----- Land -----
[Statedef 3111]
type = S
physics = S
ctrl = 0
anim = 1103
velset = 0, 0

[State 3111, Pos]
type = posset
trigger1 = 1
y = 0

[State 3111, Sound]
type = playsnd
trigger1 = !time
value = 0, 52

[State 3111, Dust]
type = explod
trigger1 = !time
anim = 7102
ID = 7102
sprpriority = -2
postype = p1
scale = 0.5, 0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 3111, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==PSYCHO CANNON=
[Statedef 3200]
type = S
physics = S
movetype = A
ctrl = 0
anim = 3200
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

[State 3200, Custom Combo End]
type = palfx
trigger1 = !time
trigger1 = map(customcombo) > 0
trigger1 = (map(customcombo) := 0) || (map(juggle_count) := 0) || 1
time = 1

[State 3200, Pos]
type = posset
trigger1 = !time
y = 0

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
value = 4, 14
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
pos = ceil(47 * const(size.xscale)), ceil(-70 * const(size.yscale))
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
pos = ceil(47 * const(size.xscale)), ceil(-70 * const(size.yscale))
sound = s0, 8500
p2defmul = 1
darken = !map(cfg_superfx)

[State 3200, NHB]
type = nothitby
trigger1 = 1
time = 1
value = SCA
ignorehitpause = 1

[State 3200, End]
type = changestate
trigger1 = !animtime
value = 3201


;----- Charging -----
[Statedef 3201]
type = S
physics = S
movetype = A
ctrl = 0
anim = 3201
velset = 0, 0
sprpriority = 2

[State 3201, Charge]
type = varset
trigger1 = !time
var(0) = 0

[State 3201, Correct Projectile Trade]
type = hitby
trigger1 = !time
value2 = SCA, AA, AT
time = 1

[State 3201, Fireball]
type = helper
trigger1 = !time
helpertype = normal; projectile
stateno = 3209
ID = 3210
name = "Psycho Cannon"
postype = p1
pos = 48, -90
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 3201, Sound]
type = playsnd
trigger1 = time = 20
value = 3, 7
channel = 0

[State 3201, End]
type = changestate
trigger1 = time >= 180 || roundstate != 2
trigger2 = command != "/x" && command != "/y" && command != "/z"
trigger3 = numhelper(3210)
trigger3 = helper(3210), stateno = 3209
trigger3 = helper(3210), moveguarded || helper(3210), movereversed
value = 3202

[State 3201, End]
type = changestate
trigger1 = time >= 20
trigger1 = !numhelper(3210)
value = 0
ctrl = 1

[State 3201, Charge]
type = varadd
trigger1 = time = 10 || time = 20 || time = 40 || time = 60 || time = 90
var(0) = 1


;----- Firing -----
[Statedef 3202]
type = S
physics = S
movetype = A
ctrl = 0
anim = 3202
velset = 0, 0
sprpriority = 2

[State 3202, Sound]
type = playsnd
trigger1 = !time
value = 3, 2
channel = 0

[State 3202, Sound]
type = playsnd
trigger1 = animelem = 3
value = 2, 1
channel = 5

;[State 3202, Spark]
;in ZSS

[State 3202, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;==FINAL PSYCHO CRUSHER=
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

[State 4000, Pos]
type = posset
trigger1 = !time
y = 0

[State 4000, Erase Inputs]
type = null
trigger1 = !AIlevel
trigger1 = time <= 0
trigger1 = 1 || map(cmd_erase_motion_super) := 1
trigger1 = 1 || map(cmd_erase_completed) := 1
ignorehitpause = 1
persistent = 0

[State 4000, Lose Charge]
type = null
trigger1 = time <= 0
trigger1 = 1 || map(cmd_charge2) := 0
trigger1 = 1 || map(ai_charge2) := 0
trigger1 = 1 || map(cmd_charge4) := 0
trigger1 = 1 || map(ai_charge4) := 0
ignorehitpause = 1
persistent = 0

[State 4000, Sound]
type = playsnd
trigger1 = !time
value = 4, 15
channel = 0

[State 4000, Super Pause FX]
type = helper
trigger1 = map(cfg_superfx)
trigger1 = time = 20
helpertype = normal
stateno = 8520
ID = 8500
name = "Superpause FX"
postype = p1
pos = ceil(2 * const(size.xscale)), ceil(-87 * const(size.yscale))
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 4000, Super Pause]
type = superpause
trigger1 = time = 20
time = 70
movetime = 70
anim = ifelse(map(cfg_superfx), -1, 102)
pos = ceil(2 * const(size.xscale)), ceil(-87 * const(size.yscale))
sound = s0, 8520
p2defmul = 1
darken = !map(cfg_superfx)

[State 4000, NHB]
type = nothitby
trigger1 = 1
time = 1
value = SCA

[State 4000, Pos Fix]
type = posadd
trigger1 = animelem = 2 || animelem = 3
x = ifelse((animelem = 2), -8, -12)

[State 4000, Push]
type = playerpush
trigger1 = 1
value = 0

[State 4000, Camera]
type = screenbound
trigger1 = time >= 20
value = (time < 60)
stagebound = (time < 60)
movecamera = 0, 0

[State 4000, Camera Effect]
type = null
trigger1 = time = [20, 74]
trigger1 = map(finalzoom) := pos x * camerazoom

[State 4000, Camera Effect]
type = zoom
trigger1 = time = [20, 89]
scale = 1.0 / camerazoom
lag = 0.75
stagebound = 1
camerabound = 0
pos = map(finalzoom), 0

[State 4000, BG PalFX]
type = bgpalfx
trigger1 = time >= 60
time = 30
add = -96, -96, -96

[State 4000, Vel]
type = velset
trigger1 = animelem = 10
x = -20

[State 4000, Guard]
type = attackdist
trigger1 = 1
value = 320

[State 4000, End]
type = changestate
trigger1 = time >= 90
value = 4001


;----- Attack -----
[Statedef 4001]
type = A
physics = N
movetype = A
anim = 4001
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 4001, NHB]
type = nothitby
trigger1 = 1
time = 1
value = SCA

[State 4001, Shield]
type = helper
trigger1 = !numhelper(1007)
helpertype = normal
stateno = 1007
ID = 1007
name = "Projectile Shield"
postype = p1

[State 4001, Push]
type = playerpush
trigger1 = 1
value = 0

[State 4001, Screen]
type = screenbound
trigger1 = 1
value = 0
stagebound = 0
movecamera = 0, 0

[State 4001, BG PalFX]
type = bgpalfx
trigger1 = 1
time = 90
add = -96, -96, -96
sinadd = 96, 96, 96, 360
ignorehitpause = 1

[State 4001, Sound]
type = playsnd
trigger1 = !time
value = 4, 9
channel = 0
abspan = 0

[State 4001, Voice Pos]
type = sndpan
trigger1 = 1
channel = 4
abspan = 0; so it does not follow Vega
ignorehitpause = 1

[State 4001, Sound]
type = playsnd
trigger1 = !time
value = 5, 10

[State 4001, Pos]
type = posset
trigger1 = !time
x = -gamewidth * facing
y = -45

[State 4001, End]
type = changestate
trigger1 = time >= 180
trigger2 = frontedgedist <= -160
value = 4002

[State 4001, Sync FX]
type = modifyexplod
trigger1 = numexplod(4005)
trigger1 = (gametime % 4) = 0
ID = 4005
anim = 4005
persistent = 0

[State 4001, FX]
type = explod
trigger1 = !numexplod(4005)
ID = 4005
anim = 4005
ownpal = 1
postype = p1
sprpriority = 4
removetime = 300
pausemovetime = 0
supermovetime = 0
removeongethit = 1
ignorehitpause = 1

[State 4001, FX]
type = modifyexplod
trigger1 = 1
ID = 4005
postype = p1
pos = 75, -60
vel = vel x, 0
removetime = 300
trans = addalpha
alpha = 192 + 64 * (random / 1000.0), 256
scale = 1, 0.75 + random / 4000.0
ignorehitpause = 1

[State 4001, Palfx Shared]
type = palfx
trigger1 = (gametime % 4) = [0, 1]
time = 1
color = 0
add = 64, 64, 64
mul = 256 + map(palfx1_r), 256 + map(palfx1_g), 256 + map(palfx1_b)
ignorehitpause = 1

[State 4001, Palfx Unshared]
type = palfx
trigger1 = (gametime % 4) != [0, 1]
time = 1
color = 0
add = 64, 64, 64
mul = 256, 512, 512
ignorehitpause = 1

[State 4001, Circles]
type = explod
trigger1 = !(time % 4)
trigger1 = !hitpausetime
ID = 4006
anim = 4006
ownpal = 1
postype = p1
pos = 75, -60
removetime = -2
sprpriority = sprpriority + 1
pausemovetime = 0
supermovetime = 0
removeongethit = 1
ignorehitpause = 1

[State 4001, Hit Var]
type = varset
trigger1 = !time
var(14) = 0

[State 4001, Hit Var]
type = varadd
trigger1 = movehit = 1 || moveguarded = 1 || movereversed = 1
var(14) = 1

[State 4001, Vel]
type = velset
trigger1 = 1
x = 20
y = 0

[State 4001, Vel]
type = posfreeze
trigger1 = (movecontact + movereversed) = [1, 4]
value = 1

[State 4001, Guard]
type = attackdist
trigger1 = 1
value = 320

[State 4001, Hit]
type = hitdef
trigger1 = var(14) < 15
trigger1 = !((movecontact + movereversed) % 4)
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 15)
attr = S, HA
damage = 35, 6
dizzypoints = 0
animtype = Diagup
hitflag = MAF
guardflag = M
priority = 4, Hit
pausetime = 0, 4
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := 0) * (map(sparkx.max) := 80), map(sparky) := -60
hitsound = s2, 3
hitsound.channel = 2
guardsound = s2, 0
guardsound.channel = 2
ground.type = Low
ground.slidetime = 18
ground.hittime = 1 + 24
guard.hittime = (1 + 24) - 6
ground.velocity = -12, -12
ground.cornerpush.veloff = 0
guard.ctrltime = 1 + 16
guard.slidetime = 16
guard.velocity = -10.52
guard.cornerpush.veloff = 0
air.type = Low
air.velocity = -12, -12
guard.dist = 320
getpower = 0, 0
givepower = 40, 40
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
sprpriority = 5
fall = 1
fall.recover = 0
down.recover = 0; cannot mash
down.recovertime = 30
ID = 4001
yAccel = (0.5 + (ComboCount * 0.06))
p1sprpriority = sprpriority
forcestand = 1


;----- END -----
[Statedef 4002]
type = S
physics = S
movetype = I
anim = 4002
ctrl = 0
velset = 0, 0

[State 4002, Anim]
type = changeanim
trigger1 = time <= 20
value = 4002
elem = 1

[State 4002, Pos]
type = posset
trigger1 = animelemtime(2) <= -1
x = -60 * facing
y = 0

[State 4002, Palfx]
type = palfx
trigger1 = !time
time = 1
add = 0, 0, 0

[State 4002, afterimageoff]
type = afterimagetime
trigger1 = 1
time = 0

[State 4002, Sound]
type = playsnd
trigger1 = animelem = 2
value = 4, 1
channel = 0

[State 4002, Sound]
type = playsnd
trigger1 = animelem = 2
value = 5, 6

[State 4002, fadein]
type = trans
trigger1 = animelemtime(2) = [0, 10]
trans = addalpha
alpha = 25 * animelemtime(2), ceil(256 -25 * animelemtime(2))

[State 4002, Warp FX In]
type = explod
trigger1 = animelem = 2
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

[State 4002, Warp FX In]
type = explod
trigger1 = animelem = 2
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

[State 4002, Push]
type = playerpush
trigger1 = animelemtime(2) <= 10
value = 0

[State 4002, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1
