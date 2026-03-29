; ___________________________________
;| Nakoruru by Phantom.of.the.Server |
; 
;==============================================================================================
;======================================<MAMAHAHA STATES>=======================================
;==============================================================================================

;====================<IDLE>====================
[Statedef 10000]
type = A
physics = N
movetype = I
velset = 0, 0
sprpriority = -2

[State 10000, oops]
type = destroyself
trigger1 = numhelper(10000) > 1

[State 10000, Anim]
type = changeanim
trigger1 = anim = 10030 || anim = 10035
value = 10000
elem = 6

[State 10000, Anim]
type = changeanim
trigger1 = anim = 10005
value = 10000
elem = (animelemno(0) % 9)

[State 10000, Anim]
type = changeanim
trigger1 = anim != 10000
value = 10000

[State 10000, ProjContact]
type = mapset
trigger1 = 1
map = "projcontact"
value = 0

[State 10000, Turn]
type = turn
trigger1 = root, p2dist x >= 0
trigger1 = facing != root, facing
trigger2 = root, p2dist x < 0
trigger2 = facing = root, facing

[State 10000, Pos]
type = posadd
trigger1 = !var(51)
trigger1 = abs(rootdist x) < abs(vel x)
x = rootdist x

[State 10000, Pos]
type = posadd
trigger1 = !var(51)
trigger1 = abs(ifelse((root, movetype = H), -154 - pos y, rootdist y - 154)) < abs(vel y)
y = ifelse((root, movetype = H), -154 - pos y, rootdist y - 154)

[State 10000, Pos]
type = posadd
trigger1 = var(51)
trigger1 = abs(rootdist x - 6) < abs(vel x)
x = rootdist x - 6

[State 10000, Pos]
type = posadd
trigger1 = var(51)
trigger1 = abs(-80 - pos y) < abs(vel y)
y = -80 - pos y

[State 10000, X]
type = varset
trigger1 = 1
fvar(1) = rootdist x

[State 10000, Y]
type = varset
trigger1 = 1
fvar(2) = min(-154 - pos y, rootdist y - 154)

[State 10000, X]
type = varset
trigger1 = var(51)
fvar(1) = rootdist x - 6

[State 10000, Y]
type = varset
trigger1 = var(51)
fvar(2) = -80 - pos y

[State 10000, Hypotenuse]
type = varset
trigger1 = 1
fvar(3) = (fvar(1) ** 2 + fvar(2) ** 2) ** 0.5

[State 10000, Accel]
type = mapadd
trigger1 = map(velocity) < 2.0
trigger1 = (fvar(1) || fvar(2)) && fvar(3)
map = "velocity"
value = 0.2

[State 10000, Accel]
type = mapset
trigger1 = map(velocity) < 0
trigger2 = !fvar(1) && !fvar(2)
map = "velocity"
value = 0

[State 10000, Accel]
type = mapset
trigger1 = map(velocity) > 2.0
map = "velocity"
value = 2.0

[State 10000, Vel]
type = velset
trigger1 = 1
x = 0
y = 0

[State 10000, Vel]
type = velset
trigger1 = fvar(3)
x = (fvar(1) / fvar(3)) * map(velocity);1.33
y = (fvar(2) / fvar(3)) * map(velocity);1.33

[State 10000, Flap]
type = playsnd
trigger1 = animelem = 6
trigger1 = !(root, standby) || (screenpos x = [0, gamewidth])
value = 8, 0
volumescale = 33
channel = 0

[State 10000, Cry]
type = playsnd
triggerall = random < 333
triggerall = root, movetype = H && root, time = 1; && root, gethitvar(hitcount) = 1
trigger1 = root, stateno = 5000 || root, stateno = 5010 || root, stateno = 5020 || root, stateno = 5070 || root, stateno = 5080
trigger2 = (root, stateno = 5050 || root, stateno = 5100) && root, prevstateno != [5000, 5199]
value = 8, 4
volumescale = ifelse(root, gethitvar(hitcount) >= 8, 100, 20 + (root, gethitvar(hitcount) * 10))
freqmul = 0.95 + (random / 10000.0)
channel = 1
lowpriority = 1

[State 10000, Rest Timer Var]
type = varadd
trigger1 = roundstate = 2
var(50) = 1

[State 10000, Rest Timer Var]
type = varset
trigger1 = !time
trigger2 = rootdist x != [-6, 6] || (root, facing != facing)
trigger3 = root, movetype = H
trigger4 = root, stateno != 0 || root, anim != [0, 1]
trigger5 = root, standby
var(50) = 0

[State 10000, Rest Flag Var]
type = varset
trigger1 = !time
trigger1 = prevstateno != 10005
trigger2 = root, movetype = H
trigger3 = root, stateno = 181 || root, stateno = 182 || root, stateno = 183 || root, stateno = 184 || root, stateno = 186
var(51) = 0

[State 10000, Rest Flag Var]
type = varset
trigger1 = root, stateno = 195
trigger1 = root, animelemtime(3) > 0 && root, animelemtime(4) < 0
trigger2 = var(50) >= 180 || prevstateno = 10010 || prevstateno = 10011
trigger2 = root, stateno = 170 || root, stateno = 184 || root, stateno = 185 || root, stateno = 197
var(51) = 1

[State 10000, Rest Timer Var]
type = varset
trigger1 = var(51)
var(50) = 180

[State 10000, Elerush Kamui Rimse]
type = changestate
trigger1 = root, stateno = [3000, 3001]
trigger1 = root, movetype != H
value = 10500

[State 10000, Shichikapu Kamui Irushika]
type = changestate
trigger1 = root, stateno = 3100
trigger1 = root, movetype != H
trigger1 = root, animelemtime(5) >= 0 && root, animelemtime(9) < 0
value = 10401

[State 10000, Irusuka Yatoro Lise]
type = changestate
trigger1 = root, stateno = 3150
trigger1 = root, movetype != H
trigger1 = root, animelemtime(6) >= 0 && root, animelemtime(6) < 8
value = 10451

[State 10000, Irusuka Yatoro Lise]
type = changestate
trigger1 = root, stateno = 3300
trigger1 = root, movetype != H
trigger1 = root, animelemtime(6) >= 0 && root, animelemtime(7) < 0
value = 10610

[State 10000, EX Amube Yatoro]
type = changestate
trigger1 = root, stateno = 1350
trigger1 = root, movetype != H
trigger1 = root, animelemtime(5) >= 0 && root, animelemtime(6) < 0
value = 10250

[State 10000, Amube Yatoro]
type = changestate
triggerall = root, movetype != H
trigger1 = root, stateno = 1300
trigger1 = root, animelemtime(5) >= 0 && root, animelemtime(6) < 0
trigger2 = root, stateno = 1530
trigger2 = root, time = [2, 9];animelemtime(2) >= 0 && root, animelemtime(3) < -1
value = 10200

[State 10000, Mamahaha Ni Tsukamaru]
type = changestate
trigger1 = root, movetype != H
trigger1 = root, stateno = [1500, 1510] || root, stateno = [670, 689]
value = 10100

[State 10000, Fast Flight]
type = changestate
trigger1 = rootdist x != [-80, 80]
value = 10005

[State 10000, Time Over]
type = changestate
trigger1 = root, stateno = 170
trigger1 = root, movetype != H
trigger1 = root, anim = 170 && root, animelemtime(5) >= 0
value = 10020

[State 10000, Win 1]
type = changestate
triggerall = root, stateno = 183
triggerall = root, movetype != H
trigger1 = prevstateno != [10010, 10011]
trigger1 = root, anim = 183 && root, animelemtime(4) >= 0
trigger2 = prevstateno = [10010, 10011]
trigger2 = root, anim = 183 && root, animelemtime(4) >= 8
value = 10040

[State 10000, Win 2]
type = changestate
trigger1 = root, stateno = 184
trigger1 = root, movetype != H
trigger1 = numhelper(6100)
trigger1 = helper(6100), stateno = 6111 && helper(6100), animelemtime(13) >= 0
value = 10050

[State 10000, Win 3]
type = changestate
trigger1 = root, stateno = 185
trigger1 = root, movetype != H
trigger1 = root, anim = 185
trigger1 = root, animelemtime(19) >= 0
value = 10070

[State 10000, KO]
type = changestate
trigger1 = root, alive = 0
trigger1 = root, stateno = 5150
trigger1 = root, anim = 5110 || root, anim = 5150
trigger1 = root, incustomstate = 0
value = 10080

[State 10000, SD Taunt]
type = changestate
trigger1 = root, stateno = 197
trigger1 = root, movetype != H
value = 10060

[State 10000, Rest]
type = changestate
trigger1 = time
trigger1 = var(50) >= 180
trigger1 = root, stateno = 0 && root, anim = [0, 1]
value = 10010


;====================<FAST FLIGHT>====================
[Statedef 10005]
type = A
physics = N
movetype = I
sprpriority = -2

[State 10005, oops]
type = destroyself
trigger1 = numhelper(10000) > 1

[State 10005, Anim]
type = changeanim
trigger1 = anim != 10005
value = 10005

[State 10005, ProjContact]
type = mapset
trigger1 = 1
map = "projcontact"
value = 0

[State 10005, Wait to rest Var]
type = varset
trigger1 = !time
trigger2 = root, stateno = 181 || root, stateno = 182 || root, stateno = 183 || root, stateno = 184 || root, stateno = 186
var(51) = 0

[State 10005, Wait to rest Var]
type = varset
trigger1 = root, stateno = 195
trigger1 = root, animelemtime(3) > 0 && root, animelemtime(4) < 0
var(51) = 1

[State 10005, Sound]
type = playsnd
trigger1 = var(51)
value = 8, 1
channel = 1
volumescale = 50
freqmul = 0.95 + (random / 10000.0)
lowpriority = 1
persistent = 0

[State 10005, Turn]
type = turn
trigger1 = !time
trigger1 = rootdist x < 0

[State 10005, X]
type = varset
trigger1 = 1
fvar(1) = rootdist x
[State 10005, Y]
type = varset
trigger1 = 1
fvar(2) = min(-154 - pos y, rootdist y - 154)

[State 10005, Y]
type = varset
trigger1 = var(51)
fvar(2) = -80 - pos y

[State 10005, Hypotenuse]
type = varset
trigger1 = 1
fvar(3) = (fvar(1) ** 2 + fvar(2) ** 2) ** 0.5

[State 10005, Accel]
type = mapadd
triggerall = (fvar(1) || fvar(2)) && fvar(3)
trigger1 = map(velocity) < 5.0 && !var(51)
trigger2 = map(velocity) < 6.00
map = "velocity"
value = 0.2

[State 10005, Accel]
type = mapset
trigger1 = map(velocity) < 0
trigger2 = !fvar(1) && !fvar(2)
map = "velocity"
value = 0

[State 10005, Accel]
type = mapset
trigger1 = map(velocity) > 5.0 && !var(51)
map = "velocity"
value = 5.0

[State 10005, Accel]
type = mapset
trigger1 = map(velocity) > 6.00
map = "velocity"
value = 6.00

[State 10005, Vel]
type = velset
trigger1 = 1
x = 0
y = 0

[State 10005, Vel]
type = velset
trigger1 = fvar(3)
x = (fvar(1) / fvar(3)) * map(velocity);3.25
y = (fvar(2) / fvar(3)) * map(velocity);3.25

[State 10005, Flap]
type = playsnd
trigger1 = animelem = 1 || animelem = 8 || animelem = 16
trigger1 = !(root, standby) || (screenpos x = [0, gamewidth])
value = 8, 0
volumescale = 67
channel = 0

[State 10005, Flap]
type = playsnd
trigger1 = animelem = 24
trigger1 = !(root, standby) || (screenpos x = [0, gamewidth])
value = 8, 0
volumescale = 50
channel = 0

[State 10005, Cry]
type = playsnd
triggerall = random < 500
triggerall = root, movetype = H && root, gethitvar(hitcount) = 1 && root, time = 1
trigger1 = root, stateno = 5000 || root, stateno = 5010 || root, stateno = 5020 || root, stateno = 5070 || root, stateno = 5080
trigger2 = (root, stateno = 5050 || root, stateno = 5100) && root, prevstateno != [5000, 5199]
value = 8, 4
volumescale = 100
freqmul = 0.95 + (random / 10000.0)
channel = 1
lowpriority = 1

[State 10005, End]
type = changestate
trigger1 = rootdist x < 0
trigger2 = abs(rootdist x) <= abs(vel x)
value = 10000


;====================<RESTING ON NAKORURU>====================
[Statedef 10010]
type = A
physics = N
movetype = I
velset = 0, 0
sprpriority = root, sprpriority

[State 10010, End]
type = changestate
trigger1 = root, facing != facing
trigger2 = rootdist x != [0, 6]
trigger3 = root, movetype = H; || roundstate != 2
trigger4 = root, stateno != 0 || root, anim != [0, 1]
value = 10000

[State 10010, Anim]
type = changeanim
trigger1 = anim != 10000
value = 10000

[State 10010, Pos]
type = posadd
trigger1 = abs(rootdist x - 6) < abs(vel x)
x = rootdist x - 6

[State 10010, Pos]
type = posadd
trigger1 = abs(rootdist y -68) < abs(vel y)
y = rootdist y -68

[State 10010, X]
type = varset
trigger1 = 1
fvar(1) = rootdist x - 6

[State 10010, Y]
type = varset
trigger1 = 1
fvar(2) = rootdist y - 68

[State 10010, Hypotenuse]
type = varset
trigger1 = 1
fvar(3) = (fvar(1) ** 2 + fvar(2) ** 2) ** 0.5

[State 10010, Accel]
type = mapadd
trigger1 = map(velocity) < 1.0
trigger1 = (fvar(1) || fvar(2)) && fvar(3)
map = "velocity"
value = 0.2

[State 10010, Accel]
type = mapset
trigger1 = map(velocity) < 0
trigger2 = !fvar(1) && !fvar(2)
map = "velocity"
value = 0

[State 10010, Accel]
type = mapset
trigger1 = map(velocity) > 1.0
map = "velocity"
value = 1.0

[State 10010, Vel]
type = velset
trigger1 = 1
x = 0
y = 0

[State 10010, Vel]
type = velset
trigger1 = fvar(3)
x = (fvar(1) / fvar(3)) * map(velocity);.8
y = (fvar(2) / fvar(3)) * map(velocity);.8

[State 10010, Flap]
type = playsnd
trigger1 = animelem = 6
value = 8, 0
volumescale = 50
channel = 0

[State 10010, End]
type = changestate
trigger1 = rootdist x = [5, 7]
trigger1 = rootdist y = [67, 69]
value = 10011


;----- Resting -----
[Statedef 10011]
type = A
physics = N
movetype = I
anim = 10011
velset = 0, 0
sprpriority = -2

[State 10011, End]
type = changestate
trigger1 = root, movetype = H; || roundstate != 2
trigger2 = root, stateno != 0 || root, anim != [0, 1]
value = 10000

[State 10011, bind]
type = bindtoroot
trigger1 = root, anim = [0, 1]
trigger1 = ((root, animelemno(0)) % 7) = 1
pos = -6, -65
facing = 1

[State 10011, bind]
type = bindtoroot
trigger1 = root, anim = [0, 1]
trigger1 = ((root, animelemno(0)) % 7) = 2
pos = -6, -66
facing = 1

[State 10011, bind]
type = bindtoroot
trigger1 = root, anim = [0, 1]
trigger1 = ((root, animelemno(0)) % 7) = 3
pos = -6, -67
facing = 1

[State 10011, bind]
type = bindtoroot
trigger1 = root, anim = [0, 1]
trigger1 = ((root, animelemno(0)) % 7) = 4
pos = -6, -68
facing = 1

[State 10011, bind]
type = bindtoroot
trigger1 = root, anim = [0, 1]
trigger1 = ((root, animelemno(0)) % 7) = 5
pos = -6, -67
facing = 1

[State 10011, bind]
type = bindtoroot
trigger1 = root, anim = [0, 1]
trigger1 = ((root, animelemno(0)) % 7) = 6
pos = -6, -66
facing = 1

[State 10011, bind]
type = bindtoroot
trigger1 = root, anim = [0, 1]
trigger1 = ((root, animelemno(0)) % 7) = 0
pos = -6, -65
facing = 1

[State 10011, Anim]
type = changeanim
trigger1 = !animtime
trigger1 = anim != 10012
value = 10012

[State 10011, Anim]
type = changeanim
trigger1 = anim = 10012
trigger1 = random < 10
value = 10015 + (random % 3)

[State 10011, Sound]
type = playsnd
trigger1 = anim = 10011 && animelem = 1
trigger2 = anim = 10015 && animelem = 3
trigger3 = anim = 10016 && animelem = 2
value = 8, 0
volumescale = 80
channel = 0

[State 10011, Sound]
type = playsnd
trigger1 = anim = 10017 && animelem = 4
value = 8, 1
channel = 1
freqmul = 0.95 + (random / 10000.0)


;====================<TIME OVER>====================
[Statedef 10020]
type = A
physics = N
movetype = I
velset = 0, 0
sprpriority = -2

[State 10020, End]
type = changestate
trigger1 = root, movetype = H
trigger2 = roundstate = [0, 2]
trigger3 = root, stateno != 170 || root, anim != 170
value = 10000

[State 10020, Anim]
type = changeanim
trigger1 = anim != 10000
value = 10000

[State 10020, Turn]
type = turn
trigger1 = facing != root, facing

[State 10020, Pos]
type = posadd
trigger1 = abs(rootdist x -2) < abs(vel x)
x = rootdist x -2

[State 10020, Pos]
type = posadd
trigger1 = abs(rootdist y -35) < abs(vel y)
y = rootdist y -35

[State 10020, X]
type = varset
trigger1 = 1
fvar(1) = rootdist x -2

[State 10020, Y]
type = varset
trigger1 = 1
fvar(2) = rootdist y -35

[State 10020, Hypotenuse]
type = varset
trigger1 = 1
fvar(3) = (fvar(1) ** 2 + fvar(2) ** 2) ** 0.5

[State 10020, Accel]
type = mapadd
trigger1 = map(velocity) < 1.0
trigger1 = (fvar(1) || fvar(2)) && fvar(3)
map = "velocity"
value = 0.2

[State 10020, Accel]
type = mapset
trigger1 = map(velocity) < 0
trigger2 = !fvar(1) && !fvar(2)
map = "velocity"
value = 0

[State 10020, Accel]
type = mapset
trigger1 = map(velocity) > 1.0
map = "velocity"
value = 1.0

[State 10020, Vel]
type = velset
trigger1 = 1
x = 0
y = 0

[State 10020, Vel]
type = velset
trigger1 = fvar(3)
x = (fvar(1) / fvar(3)) * map(velocity);.8
y = (fvar(2) / fvar(3)) * map(velocity);.8

[State 10020, Flap]
type = playsnd
trigger1 = animelem = 6
value = 8, 0
volumescale = 30
channel = 0

[State 10020, End]
type = changestate
trigger1 = rootdist x = [1, 3]
trigger1 = rootdist y = [34, 46]
value = 10021


;----- Resting -----
[Statedef 10021]
type = A
physics = N
movetype = I
anim = 10021
velset = 0, 0
sprpriority = -2

[State 10021, End]
type = changestate
trigger1 = root, movetype = H
trigger2 = roundstate = [0, 2]
trigger3 = root, stateno != 170 || root, anim != 170
value = 10000

[State 10021, bind]
type = bindtoroot
trigger1 = root, anim = 170
pos = 2, -35
facing = 1

[State 10021, Sound]
type = playsnd
trigger1 = animelem = 7
value = 8, 0
volumescale = 80
channel = 0


;====================<INTRO 1>====================
[Statedef 10030]
type = A
physics = N
movetype = I
velset = 0, 0
sprpriority = 0

[State 10030, Wait]
type = assertspecial
trigger1 = roundstate = 0
flag = animfreeze

[State 10030, Anim]
type = changeanim
trigger1 = anim != 10030
value = 10030

[State 10030, End]
type = changestate
trigger1 = root, movetype = H
trigger2 = root, stateno != 190
trigger3 = root, stateno = 190 && root, animelemtime(13) >= 0
value = 10000

[State 10030, bind]
type = bindtoroot
trigger1 = 1
pos = -6, -73
facing = 1


;====================<INTRO 3>====================
[Statedef 10035]
type = A
physics = N
movetype = I
velset = 0, 0
sprpriority = 0

[State 10035, Wait]
type = assertspecial
trigger1 = roundstate = 0
flag = animfreeze

[State 10035, Anim]
type = changeanim
trigger1 = anim != 10035
value = 10035

[State 10035, End]
type = changestate
trigger1 = root, movetype = H
trigger2 = root, stateno != 192
trigger3 = root, stateno = 192 && root, animelemtime(3) >= 0
value = 10000

[State 10035, bind]
type = bindtoroot
trigger1 = 1
pos = -6, -73
facing = 1


;====================<WIN 1>====================
[Statedef 10040]
type = A
physics = N
movetype = I
velset = 0, 0
sprpriority = -2

[State 10040, End]
type = changestate
trigger1 = root, movetype = H
trigger2 = roundstate = [0, 2]
trigger3 = root, stateno != 183 || root, anim != 183
value = 10000

[State 10040, Anim]
type = changeanim
trigger1 = anim != 10000
value = 10000

[State 10040, Turn]
type = turn
trigger1 = facing != root, facing

[State 10040, Pos]
type = posadd
trigger1 = abs(rootdist x -6) < abs(vel x)
x = rootdist x -6

[State 10040, Pos]
type = posadd
trigger1 = abs(rootdist y -62) < abs(vel y)
y = rootdist y -62

[State 10040, X]
type = varset
trigger1 = 1
fvar(1) = rootdist x -6

[State 10040, Y]
type = varset
trigger1 = 1
fvar(2) = rootdist y -62

[State 10040, Hypotenuse]
type = varset
trigger1 = 1
fvar(3) = (fvar(1) ** 2 + fvar(2) ** 2) ** 0.5

[State 10040, Accel]
type = mapadd
trigger1 = map(velocity) < 1.0
trigger1 = (fvar(1) || fvar(2)) && fvar(3)
map = "velocity"
value = 0.2

[State 10040, Accel]
type = mapset
trigger1 = map(velocity) < 0
trigger2 = !fvar(1) && !fvar(2)
map = "velocity"
value = 0

[State 10040, Accel]
type = mapset
trigger1 = map(velocity) > 1.0
map = "velocity"
value = 1.0

[State 10040, Vel]
type = velset
trigger1 = 1
x = 0
y = 0

[State 10040, Vel]
type = velset
trigger1 = fvar(3)
x = (fvar(1) / fvar(3)) * map(velocity);1.1
y = (fvar(2) / fvar(3)) * map(velocity);1.1

[State 10040, Flap]
type = playsnd
trigger1 = animelem = 6
value = 8, 0
volumescale = 30
channel = 0

[State 10040, End]
type = changestate
trigger1 = rootdist x = [5, 7]
trigger1 = rootdist y = [61, 63]
value = 10041


;----- Resting -----
[Statedef 10041]
type = A
physics = N
movetype = I
anim = 10041
velset = 0, 0
sprpriority = -2

[State 10041, End]
type = changestate
trigger1 = root, movetype = H
trigger2 = roundstate = [0, 2]
trigger3 = root, stateno != 183 || root, anim != 183
value = 10000

[State 10041, bind]
type = bindtoroot
trigger1 = root, anim = 183
pos = -6, -62
facing = 1

[State 10041, Sound]
type = playsnd
trigger1 = animelem = 1
value = 8, 0
volumescale = 80
channel = 0

[State 10041, Sound]
type = playsnd
trigger1 = animelem = 10
value = 8, 1
channel = 1
freqmul = 0.95 + (random / 10000.0)


;====================<WIN 2>====================
[Statedef 10050]
type = A
physics = N
movetype = I
velset = 0, 0
sprpriority = -2

[State 10050, End]
type = changestate
trigger1 = root, movetype = H
trigger2 = roundstate = [0, 2]
trigger3 = root, stateno != 184 || root, anim != 184
value = 10000

[State 10050, Anim]
type = changeanim
trigger1 = anim != 10000
value = 10000

[State 10050, Turn]
type = turn
trigger1 = facing = helper(6100), facing
trigger1 = ((helper(6100), pos x - pos x) * facing + 5) > 20
trigger2 = facing != helper(6100), facing
trigger2 = ((helper(6100), pos x - pos x) * facing + 5) <= 20

[State 10050, Pos]
type = posadd
trigger1 = abs((helper(6100), pos x - pos x) * facing + 5) < abs(vel x)
x = (helper(6100), pos x - pos x) * facing + 5

[State 10050, Pos]
type = posadd
trigger1 = abs((helper(6100), pos y - pos y) - 53) < abs(vel y)
y = (helper(6100), pos y - pos y) - 53

[State 10050, X]
type = varset
trigger1 = 1
fvar(1) = (helper(6100), pos x - pos x) * facing + 5

[State 10050, Y]
type = varset
trigger1 = 1
fvar(2) = (helper(6100), pos y - pos y) - 53

[State 10050, Hypotenuse]
type = varset
trigger1 = 1
fvar(3) = (fvar(1) ** 2 + fvar(2) ** 2) ** 0.5

[State 10050, Accel]
type = mapadd
trigger1 = (fvar(1) || fvar(2)) && fvar(3) && map(velocity) < 2.0
map = "velocity"
value = 0.2

[State 10050, Accel]
type = mapset
trigger1 = map(velocity) < 0
trigger2 = !fvar(1) && !fvar(2)
map = "velocity"
value = 0

[State 10050, Accel]
type = mapset
trigger1 = map(velocity) > 2.0
map = "velocity"
value = 2.0

[State 10050, Vel]
type = velset
trigger1 = 1
x = 0
y = 0

[State 10050, Vel]
type = velset
trigger1 = fvar(3)
x = (fvar(1) / fvar(3)) * map(velocity);2
y = (fvar(2) / fvar(3)) * map(velocity);2

[State 10050, Flap]
type = playsnd
trigger1 = animelem = 6
value = 8, 0
volumescale = 33
channel = 0

[State 10050, End]
type = changestate
trigger1 = ((helper(6100), pos x - pos x) * facing) = -5
trigger1 = (helper(6100), pos y - pos y) = 53
value = 10051


;----- Resting -----
[Statedef 10051]
type = A
physics = N
movetype = I
anim = 10041
velset = 0, 0
sprpriority = -2

[State 10051, End]
type = changestate
trigger1 = root, movetype = H
trigger2 = roundstate = [0, 2]
trigger3 = root, stateno != 184 || root, anim != 184
value = 10000

[State 10051, Turn]
type = turn
trigger1 = numhelper(6100)
trigger1 = helper(6100), facing != facing

[State 10051, bind]
type = posset
trigger1 = numhelper(6100)
x = (helper(6100), pos x) - 5 * facing
y = (helper(6100), pos y) - 53

[State 10051, Sound]
type = playsnd
trigger1 = animelem = 1
value = 8, 0
volumescale = 80
channel = 0

[State 10051, Sound]
type = playsnd
trigger1 = animelem = 10
value = 8, 1
channel = 1
freqmul = 0.95 + (random / 10000.0)


;====================<S.D. TAUNT>====================
[Statedef 10060]
type = A
physics = N
movetype = I
velset = 0, 0
sprpriority = -2

[State 10060, End]
type = changestate
trigger1 = root, movetype = H
trigger2 = root, stateno != 197 || root, anim != 197
value = 10000

[State 10060, Anim]
type = changeanim
trigger1 = anim != 10000
value = 10000

[State 10060, Turn]
type = turn
trigger1 = facing != root, facing

[State 10060, Pos]
type = posadd
trigger1 = abs(rootdist x -3) < abs(vel x)
x = rootdist x -3

[State 10060, Pos]
type = posadd
trigger1 = abs(rootdist y -43) < abs(vel y)
y = rootdist y -43

[State 10060, X]
type = varset
trigger1 = 1
fvar(1) = rootdist x -3

[State 10060, Y]
type = varset
trigger1 = 1
fvar(2) = rootdist y -43

[State 10060, Hypotenuse]
type = varset
trigger1 = 1
fvar(3) = (fvar(1) ** 2 + fvar(2) ** 2) ** 0.5

[State 10060, Accel]
type = mapadd
trigger1 = (fvar(1) || fvar(2)) && fvar(3) && map(velocity) < 4.0
map = "velocity"
value = 0.2

[State 10060, Accel]
type = mapset
trigger1 = map(velocity) < 0
trigger2 = !fvar(1) && !fvar(2)
map = "velocity"
value = 0

[State 10060, Accel]
type = mapset
trigger1 = map(velocity) > 4.0
map = "velocity"
value = 4.0

[State 10060, Vel]
type = velset
trigger1 = 1
x = 0
y = 0

[State 10060, Vel]
type = velset
trigger1 = fvar(3)
x = (fvar(1) / fvar(3)) * map(velocity)
y = (fvar(2) / fvar(3)) * map(velocity)

[State 10060, Flap]
type = playsnd
trigger1 = animelem = 6
value = 8, 0
volumescale = 50
channel = 0

[State 10060, End]
type = changestate
trigger1 = rootdist x = [2, 4]
trigger1 = rootdist y = [42, 44]
value = 10061


;----- Resting -----
[Statedef 10061]
type = A
physics = N
movetype = I
anim = 10061
velset = 0, 0
sprpriority = -2

[State 10061, End]
type = changestate
trigger1 = root, movetype = H
trigger2 = root, stateno != 197
value = 10000

[State 10061, bind]
type = bindtoroot
trigger1 = root, anim = 183
pos = -3, -43
facing = 1


;====================<WIN 3>====================
[Statedef 10070]
type = A
physics = N
movetype = I
velset = 0, 0
sprpriority = -2

[State 10070, End]
type = changestate
trigger1 = root, movetype = H
trigger2 = roundstate = [0, 2]
trigger3 = root, stateno != 185 || root, anim != 185
value = 10000

[State 10070, Anim]
type = changeanim
trigger1 = anim != 10000
value = 10000

[State 10070, Turn]
type = turn
trigger1 = facing != root, facing

[State 10070, Pos]
type = posadd
trigger1 = abs(rootdist x -18) < abs(vel x)
x = rootdist x -18

[State 10070, Pos]
type = posadd
trigger1 = abs(rootdist y -59) < abs(vel y)
y = rootdist y -59

[State 10070, X]
type = varset
trigger1 = 1
fvar(1) = rootdist x -18

[State 10070, Y]
type = varset
trigger1 = 1
fvar(2) = rootdist y -59

[State 10070, Hypotenuse]
type = varset
trigger1 = 1
fvar(3) = (fvar(1) ** 2 + fvar(2) ** 2) ** 0.5

[State 10070, Accel]
type = mapadd
trigger1 = (fvar(1) || fvar(2)) && fvar(3) && map(velocity) < 2.0
map = "velocity"
value = 0.2

[State 10070, Accel]
type = mapset
trigger1 = map(velocity) < 0
trigger2 = !fvar(1) && !fvar(2)
map = "velocity"
value = 0

[State 10070, Accel]
type = mapset
trigger1 = map(velocity) > 2.0
map = "velocity"
value = 2.0

[State 10070, Vel]
type = velset
trigger1 = 1
x = 0
y = 0

[State 10070, Vel]
type = velset
trigger1 = fvar(3)
x = (fvar(1) / fvar(3)) * map(velocity)
y = (fvar(2) / fvar(3)) * map(velocity)

[State 10070, Flap]
type = playsnd
trigger1 = animelem = 6
value = 8, 0
volumescale = 33
channel = 0

[State 10070, End]
type = changestate
trigger1 = rootdist x = [17, 19]
trigger1 = rootdist y = [58, 60]
value = 10071


;----- Resting -----
[Statedef 10071]
type = A
physics = N
movetype = I
anim = 10071
velset = 0, 0
sprpriority = -2

[State 10071, End]
type = changestate
trigger1 = root, movetype = H
trigger2 = roundstate = [0, 2]
trigger3 = root, stateno != 185 || root, anim != 185
value = 10000

[State 10071, bind]
type = bindtoroot
trigger1 = root, anim = 185
pos = -18, -59
facing = 1

[State 10071, Sound]
type = playsnd
trigger1 = animelem = 1
value = 8, 0
volumescale = 80
channel = 0


;====================<KO>====================
[Statedef 10080]
type = A
physics = N
movetype = I
velset = 0, 0
sprpriority = -2

[State 10080, End]
type = changestate
trigger1 = root, alive
trigger2 = root, stateno != 5150
trigger3 = root, anim != 5110 && root, anim != 5150
trigger4 = root, incustomstate = 1
value = 10000

[State 10080, Anim]
type = changeanim
trigger1 = anim != 10000
value = 10000

[State 10080, Turn]
type = turn
trigger1 = facing = root, facing

[State 10080, Pos]
type = posadd
trigger1 = abs(rootdist x + 26) < abs(vel x)
x = rootdist x + 26

[State 10080, Pos]
type = posadd
trigger1 = abs(rootdist y - 7) < abs(vel y)
y = rootdist y - 7

[State 10080, X]
type = varset
trigger1 = 1
fvar(1) = rootdist x + 26

[State 10080, Y]
type = varset
trigger1 = 1
fvar(2) = rootdist y - 7

[State 10080, Hypotenuse]
type = varset
trigger1 = 1
fvar(3) = (fvar(1) ** 2 + fvar(2) ** 2) ** 0.5

[State 10080, Accel]
type = mapadd
trigger1 = (fvar(1) || fvar(2)) && fvar(3) && map(velocity) < 1.0
map = "velocity"
value = 0.2

[State 10080, Accel]
type = mapset
trigger1 = map(velocity) < 0
trigger2 = !fvar(1) && !fvar(2)
map = "velocity"
value = 0

[State 10080, Accel]
type = mapset
trigger1 = map(velocity) > 1.0
map = "velocity"
value = 1.0

[State 10080, Vel]
type = velset
trigger1 = 1
x = 0
y = 0

[State 10080, Vel]
type = velset
trigger1 = fvar(3)
x = (fvar(1) / fvar(3)) * map(velocity);1.1
y = (fvar(2) / fvar(3)) * map(velocity);1.1

[State 10080, Flap]
type = playsnd
trigger1 = animelem = 6
value = 8, 0
volumescale = 30
channel = 0

[State 10081, Cry]
type = playsnd
trigger1 = rootdist y < 80
value = 8, 4
channel = 1
volumescale = 50
persistent = 0

[State 10080, End]
type = changestate
trigger1 = rootdist x = [-27, -25]
trigger1 = rootdist y = [6, 8]
value = 10081


;----- Resting -----
[Statedef 10081]
type = A
physics = N
movetype = I
anim = 10081
velset = 0, 0
sprpriority = root, sprpriority - 1

[State 10081, End]
type = changestate
trigger1 = root, alive
trigger2 = root, stateno != 5150
trigger3 = root, anim != 5110 && root, anim != 5150
trigger4 = root, incustomstate = 1
value = 10000

[State 10081, Bind]
type = bindtoroot
trigger1 = 1
pos = -26, -7
facing = -1

[State 10081, Sound]
type = playsnd
trigger1 = animelem = 1
value = 8, 0
volumescale = 80
channel = 0


;========================<MAMAHAHA NI TSUKAMARU>=============================
[Statedef 10100]
type = A
physics = N
movetype = I
velset = 0, 0
sprpriority = -2

[State 10100, Anim]
type = changeanim
trigger1 = anim != 10000
value = 10000

[State 10100, Turn]
type = turn
trigger1 = facing != root, facing

[State 10100, Vel]
type = velset
trigger1 = !time
x = rootdist x / 10.0
y = (-142 -pos y) / 10.0

[State 10100, Vel]
type = velset
trigger1 = !rootdist x
x = 0

[State 10100, Vel]
type = velset
trigger1 = pos y = -142
y = 0

[State 10100, Flap]
type = playsnd
trigger1 = animelem = 6
value = 8, 0
volumescale = 75
channel = 0

[State 10100, ok]
type = changestate
trigger1 = root, movetype != H
trigger1 = root, stateno = [1509, 1510] || root, stateno = [670, 689]
value = 10110

[State 10100, End]
type = changestate
trigger1 = root, movetype = H
trigger2 = root, stateno != [1500, 1510] && root, stateno != [670, 689]
value = 10000


;----- Carrying Nakoruru -----
[Statedef 10110]
type = A
physics = N
movetype = I
velset = 0, 0
sprpriority = 2

[State 10110, Anim]
type = changeanim
trigger1 = anim != 10110
value = 10110

[State 10110, Flap]
type = playsnd
trigger1 = animelem = 6
value = 8, 0
volumescale = 100
channel = 0

[State 10110, End]
type = changestate
trigger1 = root, movetype = H
trigger2 = root, stateno != 1510
trigger2 = root, stateno != [670, 689] && root, stateno != [1500, 1589]
trigger3 = root, stateno = 1530 && root, animelemtime(2) >= 0
trigger4 = root, stateno = 1550 && root, animelemtime(2) >= 0
trigger5 = root, stateno = 1560 && root, animelemtime(2) >= 0
value = 10000

[State 10110, bind]
type = bindtoroot
trigger1 = 1
pos = 2, -94
facing = 1


;========================<AMUBE YATORO>=============================
[Statedef 10200]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 2

[State 10200, Override]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 10201
ignorehitpause = 1

[State 10200, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

; Damage Scaling was here

[State 10200, numhit]
type = varset
trigger1 = !time
trigger1 = prevstateno != [10200, 10201]
var(22) = 0

[State 10200, Type]
type = statetypeset
trigger1 = var(22)
movetype = I

[State 10200, NHB]
type = nothitby
trigger1 = var(22)
value = SCA
time = -1
ignorehitpause = 1

[State 10200, Sound]
type = playsnd
trigger1 = !time
trigger1 = prevstateno != [10200, 10201]
value = 8, 2
channel = 1

[State 10200, Strength]
type = mapset
trigger1 = !time
trigger1 = prevstateno != [10200, 10201]
map = "strength"
value = root, map(strength)

[State 10200, Anim]
type = changeanim
trigger1 = anim != 10200
value = 10200

[State 10200, Vel]
type = velset
trigger1 = 1
x = ifelse(map(strength) = 2, 6.46, ifelse(map(strength) = 1, 5.39, 4.31))
y = ifelse(map(strength) = 2, 4, ifelse(map(strength) = 1, 4.66, 5.32))

[State 10200, FX]
type = helper
trigger1 = !numhelper(10205)
helpertype = normal
stateno = 10205
ID = 10205
name = "Amube Yatoro FX"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 10200, Hit]
type = hitdef
trigger1 = 1
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
attr = A, SP
hitflag = MAF
guardflag = MA
guarddist = root, const(size.proj.attack.dist)
priority = 4, Hit
damage = ifelse(map(strength) = 2, 100, ifelse(map(strength) = 1, 90, 80)), ifelse(map(strength) = 2, 25, ifelse(map(strength) = 1, 23, 20))
dizzypoints = 150 * !(root, map(customcombo))
getpower = 0, 0
givepower = 40, 40
pausetime = 0, ifelse((root, map(customcombo)), 4, 8)
guard.pausetime = 0, ifelse((root, map(customcombo)), 4, 8)
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = High
air.type = High
ground.hittime = 1 + 18; + 2 * map(counterhit_buffer)
guard.hittime = (1 + 18; + 2 * map(counterhit_buffer)) - 6
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
guard.dist = const(size.proj.attack.dist)
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -30) * (map(sparkx.max) := 20), map(sparky) := -13
hitsound = -1
guardsound = s3, 0
guardsound.channel = 2
palfx.time = 60
palfx.color = 0
palfx.sinadd = 128, 128, 128, 4
palfx.mul = root, map(palfx2_r), root, map(palfx2_g), root, map(palfx2_b)
p1sprpriority = sprpriority
envshake.time = 10
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.freq = 180
ID = 10200

[State 10200, Burned]
type = targetstate
trigger1 = movehit
trigger1 = numtarget(10200)
trigger1 = target(10200), hitfall
trigger1 = target(10200), selfanimexist(7697)
trigger1 = (target(10200), stateno = 5000) || (target(10200), stateno = 5010) || (target(10200), stateno = 5020)
value = 7697
ID = 10200
ignorehitpause = 1

[State 10200, Connected]
type = changestate
trigger1 = movecontact || movereversed
value = 10201
ignorehitpause = 1

[State 10200, End]
type = changestate
trigger1 = pos y >= 0
trigger2 = time >= 180
value = 10005


;----- Hitpause -----
[Statedef 10201]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 2
movehitpersist = 1

[State 10201, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 10201, Getpower]
type = poweradd
trigger1 = movecontact = 1
trigger1 = numtarget
value = ifelse(moveguarded, 25, 50) * root, map(meterscaling)
ignorehitpause = 1

[State 10201, HitSound]
type = playsnd
trigger1 = movehit = 1 || movereversed = 1
value = ifelse(numtarget, 2, 3), ifelse(numtarget, 10, 0)
channel = 2
ignorehitpause = 1

[State 10201, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = hitoverridden || prevmovetype = H
value = 3, 0
channel = 2
volumescale = 33

[State 10201, numhit]
type = varadd
trigger1 = !time
var(22) = 1

[State 10201, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 1300
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 10201, End]
type = changestate
trigger1 = time >= 0
value = 10200


;========================<EX AMUBE YATORO>=============================
[Statedef 10250]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 2

[State 10250, Override]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 10251
ignorehitpause = 1

[State 10250, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

; Damage Scaling was here

[State 10250, numhit]
type = varset
trigger1 = !time
trigger1 = prevstateno != [10250, 10251]
var(22) = 0

[State 10250, Type]
type = statetypeset
trigger1 = var(22)
movetype = I

[State 10250, NHB]
type = nothitby
trigger1 = var(22)
value = SCA
time = -1
ignorehitpause = 1

[State 10250, Sound]
type = playsnd
trigger1 = !time
trigger1 = prevstateno != [10250, 10251]
value = 8, 1
channel = 1

[State 10250, Anim]
type = changeanim
trigger1 = anim != 10250
value = 10250

[State 10250, Y Distance]
type = null
trigger1 = !time
trigger1 = 1 || map(ex_amube_dist_y) := (p2dist y + p2, const(size.head.pos.y))
trigger1 = p2statetype = C || p2statetype = L
trigger1 = 1 || map(ex_amube_dist_y) := (p2dist y + 0.5 * p2, const(size.head.pos.y))

[State 10250, Angle]
type = null
trigger1 = !time
trigger1 = 1 || map(ex_amube_angle) := atan(map(ex_amube_dist_y) / p2dist x)
trigger1 = 1 || map(ex_amube_angle) := clamp(map(ex_amube_angle), pi / 12.0, pi / 2.0); 15 to 90

[State 10250, Vel]
type = velset
trigger1 = 1
x = 10 * cos(map(ex_amube_angle))
y = 10 * sin(map(ex_amube_angle))

[State 10250, Hit]
type = hitdef
trigger1 = 1
air.juggle = 0 * (map(juggle_start) := 0 || map(juggle_increase) := 1 || map(juggle_limit) := 1)
ID = 10250
attr = A, SA
hitflag = MAF
guardflag = MA
guarddist = root, const(size.proj.attack.dist)
priority = 4, Hit
damage = 40, 10
dizzypoints = 0
getpower = 0, 0
givepower = 40, 40
pausetime = 0, 8
guard.pausetime = 0, 8
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = High
air.type = High
ground.hittime = 1 + 18; + 2 * map(counterhit_buffer)
guard.hittime = (1 + 18; + 2 * map(counterhit_buffer)) - 6
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
guard.dist = const(size.proj.attack.dist)
yaccel = 0.4850
fall = 1
fall.recover = 1
fall.recovertime = 120
forcestand = 1
sparkno = -1 + 0 * (map(sparkno) := 8013)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -30) * (map(sparkx.max) := 0), map(sparky) := -10;0, -10
hitsound = -1
guardsound = s3, 0
guardsound.channel = 2
p1sprpriority = sprpriority
envshake.time = 10
envshake.ampl = ifelse((gametime % 2), -2, 2)
envshake.freq = 180

[State 10250, Connected]
type = changestate
trigger1 = movecontact || movereversed
value = 10251

[State 10250, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
trigger2 = frontedgedist < -80
trigger3 = time >= 60
value = 10005


;----- Hitpause -----
[Statedef 10251]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 2
movehitpersist = 1

[State 10251, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 10251, HitSound]
type = playsnd
trigger1 = movehit = 1 || movereversed = 1
value = ifelse(numtarget, 2, 3), ifelse(numtarget, 6, 0)
channel = 2
ignorehitpause = 1

[State 10251, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = hitoverridden || prevmovetype = H
value = 3, 0
channel = 2
volumescale = 33

[State 10251, numhit]
type = varadd
trigger1 = !time
var(22) = 1

[State 10251, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 1350
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 10251, P2 State]
type = targetstate
trigger1 = movehit = 1
trigger1 = numtarget(10250)
ID = 10250
value = 10270

[State 10251, P1 State]
type = changestate
trigger1 = movehit = 1
trigger1 = numtarget(10250)
value = 10260

[State 10251, End]
type = changestate
trigger1 = time >= 0
value = 10005


;----- Throwing -----
[Statedef 10260]
type = A
physics = N
movetype = A
anim = 10260
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 10260, Safety]
type = changestate
trigger1 = !time
trigger1 = !numtarget(10250)
value = 10000

[State 10260, Throw]
type = targetstate
trigger1 = !time
trigger1 = numtarget(10250)
ID = 10250
value = 10270

[State 10260, Throw]
type = targetfacing
trigger1 = numtarget(10250)
ID = 10250
value = -1

[State 10260, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

;This looked a bit too sudden
;[State 10260, Pos]
;type = posset
;trigger1 = !time
;trigger1 = numtarget(10250)
;trigger1 = pos y > (target(10250), const(size.head.pos.y))
;y = target(10250), const(size.head.pos.y)

[State 10260, Vel]
type = velset
trigger1 = !time
x = 10
y = 0

[State 10260, Vel]
type = velmul
trigger1 = 1
x = 0.9

[State 10260, Accel]
type = veladd
trigger1 = vel y > -6
y = -0.2

[State 10260, bind 1]
type = targetbind
trigger1 = numtarget(10250)
trigger1 = animelemtime(17) < 0
ID = 10250
pos = -22, -6

[State 10260, bind 1]
type = targetbind
trigger1 = numtarget(10250)
trigger1 = animelemtime(17) >= 0
ID = 10250
pos = -4, -6

[State 10260, Flap]
type = playsnd
trigger1 = animelem = 6 || animelem = 14 || animelem = 22
value = 8, 0
volumescale = 100
channel = 0

[State 10260, End]
type = changestate
trigger1 = time >= 38
value = 10261


[Statedef 10261]
type = A
physics = N
movetype = A
anim = 10000
ctrl = 0
sprpriority = 1

[State 10261, Throw]
type = targetstate
trigger1 = !time
trigger1 = numtarget(10250)
ID = 10250
value = 10271

[State 10261, Flap]
type = playsnd
trigger1 = animelem = 6
value = 8, 0
volumescale = 100
channel = 0

[State 10261, End]
type = changestate
trigger1 = time >= 13
value = 10000


;----- Target -----
[Statedef 10270]
type = A
physics = N
movetype = H
velset = 0, 0
sprpriority = 0

[State 10270, Anim]
type = changeanim2
trigger1 = !time
value = 10270

[State 10270, Camera]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0, 0


[Statedef 10271]
type = A
physics = N
movetype = H
anim = 5110
ctrl = 0
velset = 0, 0
sprpriority = 0

[State 10271, Anim]
type = changeanim2
trigger1 = !time
value = 10271

[State 10271, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 10271, Pos]
type = posadd
trigger1 = !time
y = -const(size.head.pos.y)

[State 10271, Accel]
type = veladd
trigger1 = 1
y = 0.6

[State 10271, Fall Recovery]
type = selfstate
trigger1 = alive = 1 && dizzy = 0 && dizzypoints > 0
trigger1 = gethitvar(fall.recover)
trigger1 = command = "recovery"
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 10271, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 5100


;========================<SHICHIKAPU KAMUI IRUSHIKA>=============================
[Statedef 10400]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 3

[State 10400, Strength]
type = mapset
trigger1 = !time
map = "strength"
value = root, map(strength)

[State 10400, Anim]
type = changeanim
trigger1 = anim != 10400
value = 10400

[State 10400, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 10400, Vel]
type = velset
trigger1 = 1
x = 0
y = 0

[State 10400, End]
type = changestate
trigger1 = root, movetype = H
trigger2 = root, stateno != 3100
value = 10000

[State 10400, End]
type = changestate
trigger1 = root, stateno = 3100
trigger1 = root, animelemtime(5) >= 0 && root, animelemtime(6) < 0
value = 10401


;----- Gaining momentum -----
[Statedef 10401]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 3

[State 10401, Anim]
type = changeanim
trigger1 = anim != 10401
value = 10401

[State 10401, Vel]
type = velset
trigger1 = !time
y = (-48 - pos y) / 10.0

[State 10401, Vel]
type = velset
trigger1 = 1
x = cos(time / 10.0 * pi) * -16

[State 10401, End]
type = changestate
trigger1 = root, movetype = H
trigger2 = root, stateno != 3100
value = 10000

[State 10401, Sound]
type = playsnd
trigger1 = time = 10
value = 8, 2
channel = 1

[State 10401, FX]
type = helper
trigger1 = time = 10
trigger1 = !numhelper(10415)
helpertype = normal
stateno = 10415
ID = 10415
name = "Shichikapu FX"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 10401, End]
type = changestate
trigger1 = time >= 10
value = 10410


;----- Attacking -----
[Statedef 10410]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 2

[State 10410, numhit]
type = varset
trigger1 = !time
trigger1 = prevstateno != [10410, 10411]
var(22) = 0

[State 10410, Override]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 10411
ignorehitpause = 1

[State 10410, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

; Damage Scaling was here

[State 10410, Anim]
type = changeanim
trigger1 = anim != 10410
value = 10410

[State 10410, Pos]
type = posset
trigger1 = 1
y = -48

[State 10410, Vel]
type = velset
trigger1 = !time
trigger1 = prevstateno != [10410, 10411]
x = 0
y = 0

[State 10410, Accel]
type = veladd
trigger1 = map(strength) = 0 && vel x < 10
trigger2 = map(strength) = 1 && vel x < 13
trigger3 = map(strength) = 2 && vel x < 16
x = ifelse(map(strength) = 0, 2.5, ifelse(map(strength) = 1, 3.25, 4))

[State 10410, Vel]
type = velset
trigger1 = map(strength) = 0 && vel x > 10
trigger2 = map(strength) = 1 && vel x > 13
trigger3 = map(strength) = 2 && vel x > 16
x = ifelse(map(strength) = 0, 10, ifelse(map(strength) = 1, 13, 16))

[State 10410, Hit High]
type = hitdef
trigger1 = !(var(22) % 2)
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 5)
attr = A, HP
hitflag = MAF
guardflag = M
guarddist = root, const(size.proj.attack.dist)
priority = 4, Hit
damage = 36, 9
dizzypoints = 0
getpower = 0, 0
givepower = 40, 40
pausetime = 0, 12
guard.pausetime = 0, 12
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
ground.velocity = -5.32, -7.33
guard.velocity = -10.52
air.velocity = -5.32, -7.33
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.dist = 320
yaccel = 0.4850
fall = 1
fall.recover = 0
down.recover = 1
forcestand = 1
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -60) * (map(sparkx.max) := 20), map(sparky) := -21
hitsound = -1
guardsound = s3, 0
guardsound.channel = 2
palfx.time = 60
palfx.color = 0
palfx.sinadd = 128, 128, 128, 4
palfx.mul = root, map(palfx2_r), root, map(palfx2_g), root, map(palfx2_b)
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
p1sprpriority = sprpriority
envshake.freq = 180
ID = 10410

[State 10410, Hit Low]
type = hitdef
trigger1 = (var(22) % 2)
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := 5)
attr = A, HP
hitflag = MAF
guardflag = M
guarddist = root, const(size.proj.attack.dist)
priority = 4, Hit
damage = 36, 9
dizzypoints = 0
getpower = 0, 0
givepower = 40, 40
pausetime = 0, 12
guard.pausetime = 0, 12
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
ground.velocity = -5.32, -7.33
guard.velocity = -10.52
air.velocity = -5.32, -7.33
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.dist = 320
yaccel = 0.4850
fall = 1
fall.recover = 0
down.recover = 1
forcestand = 1
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -60) * (map(sparkx.max) := 20), map(sparky) := -21
hitsound = -1
guardsound = s3, 0
guardsound.channel = 2
palfx.time = 60
palfx.color = 0
palfx.sinadd = 128, 128, 128, 4
palfx.mul = root, map(palfx2_r), root, map(palfx2_g), root, map(palfx2_b)
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
p1sprpriority = sprpriority
envshake.freq = 180
ID = 10410

[State 10410, Burned]
type = targetstate
trigger1 = movehit
trigger1 = numtarget(10410)
trigger1 = target(10410), hitfall
trigger1 = target(10410), selfanimexist(7697)
trigger1 = target(10410), stateno = 5000 || target(10410), stateno = 5010 || target(10410), stateno = 5020
value = 7697
ID = 10410
ignorehitpause = 1

[State 10410, Connected]
type = changestate
trigger1 = movecontact || movereversed
value = 10411
ignorehitpause = 1

[State 10410, End]
type = changestate
trigger1 = frontedgedist < -320 || backedgedist < -320
trigger2 = time >= 60
trigger2 = frontedgedist < -160 || backedgedist < -160
value = 10005


;----- Hitpause -----
[Statedef 10411]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 2
movehitpersist = 1

[State 10411, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 10411, numhit]
type = varadd
trigger1 = !time
var(22) = 1

[State 10411, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 3100
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 10411, HitSound]
type = playsnd
trigger1 = !time
trigger1 = movehit = 1
value = ifelse(numtarget, 2, 3), ifelse(numtarget, 10, 0)
channel = 2
ignorehitpause = 1

[State 10411, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = hitoverridden || prevmovetype = H
value = 3, 0
channel = 2
volumescale = 33

[State 10411, End]
type = changestate
trigger1 = var(22) >= 5
value = 10412

[State 10411, Hit More]
type = changestate
trigger1 = time >= ifelse(numtarget, 2, 0)
trigger1 = var(22) < 5
value = 10410


;----- Finished -----
[Statedef 10412]
type = A
physics = N
movetype = I
ctrl = 0
sprpriority = 2

[State 10412, Override]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 10411
ignorehitpause = 1

[State 10412, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 10412, Anim]
type = changeanim
trigger1 = anim != 10410
value = 10410

[State 10412, Pos]
type = posset
trigger1 = 1
y = -48

[State 10412, Vel]
type = velset
trigger1 = 1
x = 20
y = 0

[State 10412, End]
type = changestate
trigger1 = frontedgedist < -320 || backedgedist < -320
trigger2 = time >= 60
trigger2 = frontedgedist < -160 || backedgedist < -160
value = 10005


;========================<ELERUSH KAMUI RIMSE>=============================
[Statedef 10500]
type = A
physics = N
movetype = I
velset = 0, 0
sprpriority = -2

[State 10500, Anim]
type = changeanim
trigger1 = anim != 10000
value = 10000

[State 10500, Turn]
type = turn
trigger1 = facing != root, facing

[State 10500, Vel]
type = velset
trigger1 = !time
x = rootdist x / 10.0
y = (-142 -pos y) / 10.0

[State 10500, Vel]
type = velset
trigger1 = !rootdist x
x = 0

[State 10500, Vel]
type = velset
trigger1 = pos y = -142
y = 0

[State 10500, Flap]
type = playsnd
trigger1 = animelem = 6
value = 8, 0
volumescale = 75
channel = 0

[State 10500, ok]
type = changestate
trigger1 = root, stateno = 3001
value = 10510

[State 10500, End]
type = changestate
trigger1 = root, stateno != [3000, 3001]
value = 10000


;----- Holding Nakoruru -----
[Statedef 10510]
type = A
physics = N
movetype = I
velset = 0, 0
sprpriority = -1

[State 10510, Anim]
type = changeanim
trigger1 = anim != 10110
value = 10110

[State 10510, bind]
type = bindtoroot
trigger1 = 1
pos = 2, -94
facing = 1

[State 10510, Flap]
type = playsnd
trigger1 = animelem = 6
value = 8, 0
volumescale = 75
channel = 0

[State 10510, End]
type = changestate
trigger1 = root, movetype = H
trigger2 = root, stateno != 3001
value = 10000


;========================<IRUSUKA YATORO LISE>=============================
[Statedef 10600]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 3

[State 10600, Strength]
type = mapset
trigger1 = !time
map = "strength"
value = root, map(strength)

[State 10600, Anim]
type = changeanim
trigger1 = anim != 10600
value = 10600

[State 10600, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 10600, Vel]
type = velset
trigger1 = 1
x = 0
y = 0

[State 10600, End]
type = changestate
trigger1 = root, movetype = H
trigger2 = root, stateno != 3300
value = 10000

[State 10600, End]
type = changestate
trigger1 = root, stateno = 3300
trigger1 = root, animelemtime(8) >= -24 && root, animelemtime(8) < 0
value = 10601


;----- Moving -----
[Statedef 10601]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 3

[State 10601, Anim]
type = changeanim
trigger1 = anim != 10000
value = 10000

[State 10601, Vel]
type = velset
trigger1 = !time
x = (rootdist x + 16) / 24.0
y = (rootdist y -174) / 24.0

[State 10601, Flap]
type = playsnd
trigger1 = animelem = 6
value = 8, 0
volumescale = 50
channel = 0

[State 10601, End]
type = changestate
trigger1 = root, movetype = H
trigger2 = root, stateno != 3300
value = 10000

[State 10601, End]
type = changestate
trigger1 = time >= 24
value = 10602


;----- Positioned -----
[Statedef 10602]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 3

[State 10602, Anim]
type = changeanim
trigger1 = anim != 10000
value = 10000

[State 10602, Vel]
type = velset
trigger1 = 1
x = 0
y = 0

[State 10602, Sound]
type = playsnd
trigger1 = !time
value = 8, 3
channel = 1

[State 10602, FX]
type = helper
trigger1 = !time
trigger1 = !numhelper(10615)
helpertype = normal
stateno = 10615
ID = 10615
name = "Mamahaha FX"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 10602, End]
type = changestate
trigger1 = !time
value = 10610


;----- Attacking -----
[Statedef 10610]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 2

[State 10610, numhit]
type = varset
trigger1 = !time
trigger1 = prevstateno != [10610, 10611]
var(22) = 0

[State 10610, Override]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 10611
ignorehitpause = 1

[State 10610, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

[State 10610, NHB]
type = nothitby
trigger1 = var(22) >= 8
value = SCA
time = -1
ignorehitpause = 1

; Damage Scaling was here

[State 10610, Anim]
type = changeanim
trigger1 = anim != 10610
value = 10610

[State 10610, Vel]
type = velset
trigger1 = 1
x = ifelse(map(strength) = 0, 3.0, ifelse(map(strength) = 1, 7.0, 11.0))
y = 9.3

[State 10610, Hit]
type = hitdef
trigger1 = time || (prevstateno != [10610, 10611])
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := (var(22) + 2))
attr = A, HP
hitflag = MAF
guardflag = M
guarddist = root, const(size.proj.attack.dist)
priority = 4, Hit
damage = 15, 4
dizzypoints = 0
getpower = 0, 0
givepower = 40, 40
pausetime = 0, 4
guard.pausetime = 0, 12
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
ground.velocity = -10.52, 0
guard.velocity = -10.52
air.velocity = -vel x, vel y
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.dist = 320
yaccel = 0.4850
fall = 0
air.fall = 1
fall.recover = 0
down.recover = 1
forcestand = 1
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -40) * (map(sparkx.max) := 20), map(sparky) := -14
hitsound = -1
guardsound = s3, 0
guardsound.channel = 2
palfx.time = 60
palfx.color = 0
palfx.sinadd = 128, 128, 128, 4
palfx.mul = root, map(palfx2_r), root, map(palfx2_g), root, map(palfx2_b)
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
p1sprpriority = sprpriority
envshake.freq = 180

[State 10610, Connected]
type = changestate
trigger1 = movecontact || movereversed
value = 10611
ignorehitpause = 1

[State 10610, End]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y > -vel y
trigger2 = time >= 180
value = 10620


;----- Hitpause -----
[Statedef 10611]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 2
movehitpersist = 1

[State 10611, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 10611, numhit]
type = varadd
trigger1 = !time
var(22) = 1

[State 10611, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 3300
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 10611, HitSound]
type = playsnd
trigger1 = !time
trigger1 = movehit = 1
value = ifelse(numtarget, 2, 3), ifelse(numtarget, 10, 0)
channel = 2
ignorehitpause = 1

[State 10611, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = hitoverridden || prevmovetype = H
value = 3, 0
channel = 2
volumescale = 33

[State 10611, End]
type = changestate
trigger1 = time >= ifelse(numtarget, 2, 0)
value = 10610


;----- Pillar -----
[Statedef 10620]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 2

[State 10620, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

; Damage Scaling was here

[State 10620, Anim]
type = changeanim
trigger1 = anim != 10620
value = 10620

[State 10620, Pos]
type = posset
trigger1 = 1
y = 0

[State 10620, FX]
type = helper
trigger1 = !time
trigger1 = prevstateno != [10620, 10621]
helpertype = normal
stateno = 10625
ID = 10625
name = "Mamahaha FX"
postype = p1
ownpal = 1

[State 10620, Hit]
type = hitdef
trigger1 = !time
air.juggle = 0 * (map(juggle_start) := 1 || map(juggle_increase) := 1 || map(juggle_limit) := var(22) + 2)
attr = A, HP
hitflag = MAFD
guardflag = M
guarddist = root, const(size.proj.attack.dist)
priority = 4, Hit
damage = 150, 38
dizzypoints = 0
getpower = 0, 0
givepower = 40, 40
pausetime = 0, 12
guard.pausetime = 0, 12
animtype = Up
air.animtype = Up
fall.animtype = Up
ground.type = High
air.type = High
ground.hittime = 1 + 18
guard.hittime = (1 + 18) - 6
ground.slidetime = 18
guard.ctrltime = 1 + 16
guard.slidetime = 16
air.hittime = 120
down.hittime = 60
ground.velocity = 0, -13.66
guard.velocity = -10.52
air.velocity = 0, -13.66
down.velocity = 0, -13.66
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
guard.dist = 320
yaccel = 0.4850
fall = 1
fall.recover = 0
down.recover = 1
forcestand = 1
sparkno = -1 + 0 * (map(sparkno) := 8014)
guard.sparkno = -1 + 0 * (map(guard.sparkno) := 8001)
sparkxy = -10 + 0 * (map(sparkx.min) := -60) * (map(sparkx.max) := 30), map(sparky) := -64
hitsound = -1
guardsound = s3, 0
guardsound.channel = 2
palfx.time = 60
palfx.color = 0
palfx.sinadd = 128, 128, 128, 4
palfx.mul = root, map(palfx2_r), root, map(palfx2_g), root, map(palfx2_b)
envshake.time = 12; super
envshake.freq = 180
envshake.ampl = ifelse((gametime % 2), -4, 4)
envshake.mul = 0.667
p1sprpriority = sprpriority
ID = 10620

[State 10620, Burned]
type = targetstate
trigger1 = movehit
trigger1 = numtarget(10620)
trigger1 = target(10620), hitfall
trigger1 = target(10620), selfanimexist(7697)
trigger1 = target(10620), stateno = 5000 || target(10620), stateno = 5010 || target(10620), stateno = 5020
value = 7697
ID = 10620
ignorehitpause = 1

[State 10620, Connected]
type = changestate
trigger1 = movecontact || movereversed
trigger2 = time >= 12
value = 10621
ignorehitpause = 1


;----- Hitpause -----
[Statedef 10621]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 2
movehitpersist = 1

[State 10621, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 10621, numhit]
type = varadd
trigger1 = !time
var(22) = 1

[State 10621, Juggle Reset]
type = rootmapset
trigger1 = root, map(jugglereset) = 0
trigger1 = root, map(juggle_count)
trigger1 = !time
trigger1 = movehit && numtarget
trigger1 = 1 || root, map(jugglereset) := 1
map = "juggle_count"
value = 0
ignorehitpause = 1

[State 10621, ProjContact]
type = null
trigger1 = movecontact = 1
trigger1 = p2, gethitvar(frame)
trigger1 = p2, gethitvar(ID) = ID || movehitvar(ID) = p2, ID
trigger1 = 1 || map(projcontact) := 1
trigger1 = root, stateno = 3300
trigger1 = root, map(projcontact) := 1
ignorehitpause = 1

[State 10621, HitSound]
type = playsnd
trigger1 = !time
trigger1 = movehit = 1
value = ifelse(numtarget, 2, 3), ifelse(numtarget, 10, 0)
channel = 2
ignorehitpause = 1

[State 10621, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = hitoverridden || prevmovetype = H
value = 3, 0
channel = 2
volumescale = 33

[State 10621, End]
type = changestate
trigger1 = time >= 2
value = 10005
