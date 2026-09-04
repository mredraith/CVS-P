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
type = varset
trigger1 = 1
var(18) = 0

[State 10000, turn]
type = turn
trigger1 = facing != root, facing

[State 10000, Pos]
type = posadd
trigger1 = !var(51)
trigger1 = abs(rootdist x) < abs(vel x)
x = rootdist x
[State 10000, Pos]
type = posadd
trigger1 = !var(51)
trigger1 = abs(ifelse((root, movetype = H), -144 - pos y, rootdist y - 144)) < abs(vel y)
y = ifelse((root, movetype = H), -144 - pos y, rootdist y - 144)

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
fvar(2) = ifelse((root, movetype = H), -144 - pos y, rootdist y - 144)

[State 10000, X]
type = varset
trigger1 = var(51)
fvar(1) = rootdist x - 6
[State 10000, Y]
type = varset
trigger1 = var(51)
fvar(2) = -80 - pos y

[State 10000, / ]
type = varset
trigger1 = 1
fvar(3) = (fvar(1) ** 2 + fvar(2) ** 2) ** 0.5

[State 10000, accel]
type = varadd
trigger1 = (fvar(1) || fvar(2)) && fvar(3) && fvar(4) < 2.0
fvar(4) = 0.2
[State 10000, accel]
type = varset
trigger1 = fvar(4) < 0.0
trigger2 = !fvar(1) && !fvar(2)
fvar(4) = 0
[State 10000, accel]
type = varset
trigger1 = fvar(4) > 2.0
fvar(4) = 2.0

[State 10000, Vel]
type = velset
trigger1 = 1
x = 0
y = 0
[State 10000, Vel]
type = velset
trigger1 = fvar(3)
x = (fvar(1) / fvar(3)) * fvar(4);1.33
y = (fvar(2) / fvar(3)) * fvar(4);1.33

[State 10000, flap]
type = playsnd
trigger1 = animelem = 6
value = 8, 0
volumescale = 30 + (random % 15)
channel = 0
[State 10000, cry]
type = playsnd
triggerall = random < 333
triggerall = root, movetype = H && root, time = 1; && root, gethitvar(hitcount) = 1
trigger1 = root, stateno = 5000 || root, stateno = 5010 || root, stateno = 5020 || root, stateno = 5070 || root, stateno = 5080
trigger2 = (root, stateno = 5050 || root, stateno = 5100) && (root, prevstateno != [5000, 5199])
value = 8, 4
volumescale = ifelse(root, gethitvar(hitcount) >= 8, 100, 20 + (root, gethitvar(hitcount) * 10))
channel = 1
lowpriority = 1

[State 10000, Rest Var]
type = varadd
trigger1 = roundstate = 2
var(50) = 1
[State 10000, Rest Var]
type = varset
trigger1 = !time
trigger2 = (rootdist x != [0, 6]) || (root, facing != facing)
trigger3 = root, movetype = H
trigger4 = root, stateno != 0 || (root, anim != [0, 1])
var(50) = 0

[State 10000, Wait to rest Var]
type = varset
trigger1 = !time && prevstateno != 10005
trigger2 = root, movetype = H
trigger3 = root, stateno = 181 || root, stateno = 182 || root, stateno = 183 || root, stateno = 184 || root, stateno = 186
var(51) = 0
[State 10000, Wait to rest Var]
type = varset
trigger1 = root, stateno = 195 && root, animelemtime(3) > 0 && root, animelemtime(4) < 0
trigger2 = var(50) >= 180 || prevstateno = 10010 || prevstateno = 10011
trigger2 = root, stateno = 170 || root, stateno = 184 || root, stateno = 185 || root, stateno = 197
var(51) = 1

[State 10000, Rest Var]
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
trigger1 = (root, stateno = [1500, 1510]) || (root, stateno = [670, 689])
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
triggerall = root, stateno = 181
triggerall = root, movetype != H
trigger1 = (prevstateno != [10010, 10011]) && root, anim = 181 && root, animelemtime(4) >= 0
trigger2 = (prevstateno = [10010, 10011]) && root, anim = 181 && root, animelemtime(4) >= 8
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
trigger1 = root, anim = 185 && root, animelemtime(19) >= 0
value = 10070

[State 10000, SD Taunt]
type = changestate
trigger1 = root, stateno = 197
trigger1 = root, movetype != H
value = 10060

[State 10000, Rest]
type = changestate
trigger1 = time && var(50) >= 180
trigger1 = root, stateno = 0 && (root, anim = [0, 1])
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
type = varset
trigger1 = 1
var(18) = 0

[State 10005, Wait to rest Var]
type = varset
trigger1 = !time
trigger2 = root, stateno = 181 || root, stateno = 182 || root, stateno = 183 || root, stateno = 184 || root, stateno = 186
var(51) = 0
[State 10005, Wait to rest Var]
type = varset
trigger1 = root, stateno = 195 && root, animelemtime(3) > 0 && root, animelemtime(4) < 0
var(51) = 1

[State 10005, Snd]
type = playsnd
trigger1 = var(51)
value = 8, 1
channel = 1
volumescale = 50
lowpriority = 1
persistent = 0

[State 10005, turn]
type = turn
trigger1 = rootdist x < 0

[State 10005, Pos]
type = posadd
trigger1 = abs(rootdist x) < abs(vel x)
x = rootdist x
[State 10005, Pos]
type = posadd
trigger1 = !var(51)
trigger1 = abs(rootdist y - 144) < abs(vel y)
y = rootdist y - 144

[State 10005, Pos]
type = posadd
trigger1 = var(51)
trigger1 = abs(rootdist y - 80) < abs(vel y)
y = rootdist y - 80

[State 10005, X]
type = varset
trigger1 = 1
fvar(1) = rootdist x
[State 10005, Y]
type = varset
trigger1 = 1
fvar(2) = rootdist y - 144

[State 10005, Y]
type = varset
trigger1 = var(51)
fvar(2) = -80 - pos y

[State 10005, / ]
type = varset
trigger1 = 1
fvar(3) = (fvar(1) ** 2 + fvar(2) ** 2) ** 0.5

[State 10005, accel]
type = varadd
triggerall = (fvar(1) || fvar(2)) && fvar(3)
trigger1 = fvar(4) < 5.0 && !var(51)
trigger2 = fvar(4) < 6.67
fvar(4) = 0.2
[State 10005, accel]
type = varset
trigger1 = fvar(4) < 0.0
trigger2 = !fvar(1) && !fvar(2)
fvar(4) = 0
[State 10005, accel]
type = varset
trigger1 = fvar(4) > 5.0 && !var(51)
fvar(4) = 5.0
[State 10005, accel]
type = varset
trigger1 = fvar(4) > 6.67
fvar(4) = 6.67

[State 10005, Vel]
type = velset
trigger1 = 1
x = 0
y = 0
[State 10005, Vel]
type = velset
trigger1 = fvar(3)
x = (fvar(1) / fvar(3)) * fvar(4);3.25
y = (fvar(2) / fvar(3)) * fvar(4);3.25

[State 10005, flap]
type = playsnd
trigger1 = animelem = 1 || animelem = 8 || animelem = 16 || animelem = 24
value = 8, 0
volumescale = 75
channel = 0
[State 10005, cry]
type = playsnd
triggerall = random < 500
triggerall = root, movetype = H && root, gethitvar(hitcount) = 1 && root, time = 1
trigger1 = root, stateno = 5000 || root, stateno = 5010 || root, stateno = 5020 || root, stateno = 5070 || root, stateno = 5080
trigger2 = (root, stateno = 5050 || root, stateno = 5100) && (root, prevstateno != [5000, 5199])
value = 8, 4
volumescale = 100
channel = 1
lowpriority = 1

[State 10005, P2 Safe Fall]
type = targetstate
trigger1 = numtarget = 1
trigger1 = target, command = "recovery"
trigger1 = target, pos y >= -48 && target, vel y > 0
trigger1 = target, alive && target, hitfall && target, gethitvar(fall.recover)
trigger1 = target, stateno = 5030 || target, stateno = 5035 || target, stateno = 5050 || target, stateno = 5071
value = 1115200
ignorehitpause = 1

[State 10005, End]
type = changestate
triggerall = abs(rootdist x) < 1
trigger1 = !var(51) && (rootdist y = [84, 204])
trigger2 = var(51)
value = 10000


;====================<RESTING ON NAKORURU>====================
[Statedef 10010]
type = A
physics = N
movetype = I
velset = 0, 0
sprpriority = -2

[State 10010, End]
type = changestate
trigger1 = (root, facing != facing)
trigger2 = rootdist x != [0, 6]
trigger3 = root, movetype = H; || roundstate != 2
trigger4 = root, stateno != 0 || (root, anim != [0, 1])
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
[State 10010, / ]
type = varset
trigger1 = 1
fvar(3) = (fvar(1) ** 2 + fvar(2) ** 2) ** 0.5

[State 10010, accel]
type = varadd
trigger1 = (fvar(1) || fvar(2)) && fvar(3) && fvar(4) < 1.0
fvar(4) = 0.2
[State 10010, accel]
type = varset
trigger1 = fvar(4) < 0.0
trigger2 = !fvar(1) && !fvar(2)
fvar(4) = 0
[State 10010, accel]
type = varset
trigger1 = fvar(4) > 1.0
fvar(4) = 1.0

[State 10010, Vel]
type = velset
trigger1 = 1
x = 0
y = 0
[State 10010, Vel]
type = velset
trigger1 = fvar(3)
x = (fvar(1) / fvar(3)) * fvar(4);.8
y = (fvar(2) / fvar(3)) * fvar(4);.8

[State 10010, flap]
type = playsnd
trigger1 = animelem = 6
value = 8, 0
volumescale = 30 + (random % 15)
channel = 0

[State 10010, End]
type = changestate
trigger1 = rootdist x = [5, 7]
trigger1 = rootdist y = [67, 69]
value = 10011


;--- Resting ---
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
trigger2 = root, stateno != 0 || (root, anim != [0, 1])
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
trigger1 = anim != 10012 && !animtime
value = 10012

[State 10011, Anim]
type = changeanim
trigger1 = anim = 10012
trigger1 = random < 10
value = 10015 + (random % 3)

[State 10011, Snd]
type = playsnd
trigger1 = anim = 10011 && animelem = 1
trigger2 = anim = 10015 && animelem = 3
trigger3 = anim = 10016 && animelem = 2
value = 8, 0
volumescale = 80
channel = 0
[State 10011, Snd]
type = playsnd
trigger1 = anim = 10017 && animelem = 4
value = 8, 1
channel = 1


;====================<TIME OVER>====================
[Statedef 10020]
type = A
physics = N
movetype = I
velset = 0, 0
sprpriority = -2

[State 10020, End]
type = changestate
trigger1 = root, movetype = H || roundstate < 3
trigger2 = root, stateno != 170 || root, anim != 170
value = 10000

[State 10020, Anim]
type = changeanim
trigger1 = anim != 10000
value = 10000

[State 10020, turn]
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
[State 10020, / ]
type = varset
trigger1 = 1
fvar(3) = (fvar(1) ** 2 + fvar(2) ** 2) ** 0.5

[State 10020, accel]
type = varadd
trigger1 = (fvar(1) || fvar(2)) && fvar(3) && fvar(4) < 1.0
fvar(4) = 0.2
[State 10020, accel]
type = varset
trigger1 = fvar(4) < 0.0
trigger2 = !fvar(1) && !fvar(2)
fvar(4) = 0
[State 10020, accel]
type = varset
trigger1 = fvar(4) > 1.0
fvar(4) = 1.0

[State 10020, Vel]
type = velset
trigger1 = 1
x = 0
y = 0
[State 10020, Vel]
type = velset
trigger1 = fvar(3)
x = (fvar(1) / fvar(3)) * fvar(4);.8
y = (fvar(2) / fvar(3)) * fvar(4);.8

[State 10020, flap]
type = playsnd
trigger1 = animelem = 6
value = 8, 0
volumescale = 40 + (random % 20)
channel = 0

[State 10020, End]
type = changestate
trigger1 = rootdist x = [1, 3]
trigger1 = rootdist y = [34, 46]
value = 10021


;--- Resting ---
[Statedef 10021]
type = A
physics = N
movetype = I
anim = 10021
velset = 0, 0
sprpriority = -2

[State 10021, End]
type = changestate
trigger1 = root, movetype = H || roundstate < 3
trigger2 = root, stateno != 170 || root, anim != 170
value = 10000

[State 10021, bind]
type = bindtoroot
trigger1 = root, anim = 170
pos = 2, -35
facing = 1

[State 10021, Snd]
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

[State 10030, Anim]
type = changeanim
trigger1 = anim != 10030
value = 10030

[State 10030, End]
type = changestate
trigger1 = root, movetype = H
trigger2 = root, stateno != 190
trigger3 = (root, stateno = 190) && (root, animelemtime(13) >= 0)
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

[State 10035, Anim]
type = changeanim
trigger1 = anim != 10035
value = 10035

[State 10035, bind]
type = bindtoroot
trigger1 = (root, stateno = 192) && (root, animelemtime(3) >= 0)
pos = -18, -90
facing = 1

[State 10035, End]
type = changestate
trigger1 = root, movetype = H
trigger2 = root, stateno != 192
trigger3 = (root, stateno = 192) && (root, animelemtime(3) >= 0)
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
trigger1 = root, movetype = H || roundstate < 3
trigger2 = root, stateno != 181 || root, anim != 181
value = 10000

[State 10040, Anim]
type = changeanim
trigger1 = anim != 10000
value = 10000

[State 10040, turn]
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
[State 10040, / ]
type = varset
trigger1 = 1
fvar(3) = (fvar(1) ** 2 + fvar(2) ** 2) ** 0.5

[State 10040, accel]
type = varadd
trigger1 = (fvar(1) || fvar(2)) && fvar(3) && fvar(4) < 1.0
fvar(4) = 0.2
[State 10040, accel]
type = varset
trigger1 = fvar(4) < 0.0
trigger2 = !fvar(1) && !fvar(2)
fvar(4) = 0
[State 10040, accel]
type = varset
trigger1 = fvar(4) > 1.0
fvar(4) = 1.0

[State 10040, Vel]
type = velset
trigger1 = 1
x = 0
y = 0
[State 10040, Vel]
type = velset
trigger1 = fvar(3)
x = (fvar(1) / fvar(3)) * fvar(4);1.1
y = (fvar(2) / fvar(3)) * fvar(4);1.1

[State 10040, flap]
type = playsnd
trigger1 = animelem = 6
value = 8, 0
volumescale = 40 + (random % 20)
channel = 0

[State 10040, End]
type = changestate
trigger1 = rootdist x = [5, 7]
trigger1 = rootdist y = [61, 63]
value = 10041


;--- Resting ---
[Statedef 10041]
type = A
physics = N
movetype = I
anim = 10041
velset = 0, 0
sprpriority = -2

[State 10041, End]
type = changestate
trigger1 = root, movetype = H || roundstate < 3
trigger2 = root, stateno != 181 || root, anim != 181
value = 10000

[State 10041, bind]
type = bindtoroot
trigger1 = root, anim = 181
pos = -6, -62
facing = 1

[State 10041, Snd]
type = playsnd
trigger1 = animelem = 1
value = 8, 0
volumescale = 80
channel = 0
[State 10041, Snd]
type = playsnd
trigger1 = animelem = 10
value = 8, 1
channel = 1


;====================<WIN 2>====================
[Statedef 10050]
type = A
physics = N
movetype = I
velset = 0, 0
sprpriority = -2

[State 10050, End]
type = changestate
trigger1 = root, movetype = H || roundstate < 3
trigger2 = root, stateno != 184 || root, anim != 184
value = 10000

[State 10050, Anim]
type = changeanim
trigger1 = anim != 10000
value = 10000

[State 10050, turn]
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
[State 10050, / ]
type = varset
trigger1 = 1
fvar(3) = (fvar(1) ** 2 + fvar(2) ** 2) ** 0.5

[State 10050, accel]
type = varadd
trigger1 = (fvar(1) || fvar(2)) && fvar(3) && fvar(4) < 2.0
fvar(4) = 0.2
[State 10050, accel]
type = varset
trigger1 = fvar(4) < 0.0
trigger2 = !fvar(1) && !fvar(2)
fvar(4) = 0
[State 10050, accel]
type = varset
trigger1 = fvar(4) > 2.0
fvar(4) = 2.0

[State 10050, Vel]
type = velset
trigger1 = 1
x = 0
y = 0
[State 10050, Vel]
type = velset
trigger1 = fvar(3)
x = (fvar(1) / fvar(3)) * fvar(4);2
y = (fvar(2) / fvar(3)) * fvar(4);2

[State 10050, flap]
type = playsnd
trigger1 = animelem = 6
value = 8, 0
volumescale = 80
channel = 0

[State 10050, End]
type = changestate
trigger1 = ((helper(6100), pos x - pos x) * facing) = -5
trigger1 = (helper(6100), pos y - pos y) = 53
value = 10051


;--- Resting ---
[Statedef 10051]
type = A
physics = N
movetype = I
anim = 10041
velset = 0, 0
sprpriority = -2

[State 10051, End]
type = changestate
trigger1 = root, movetype = H || roundstate < 3
trigger2 = root, stateno != 184 || root, anim != 184
value = 10000

[State 10051, turn]
type = turn
trigger1 = numhelper(6100)
trigger1 = helper(6100), facing != facing

[State 10051, bind]
type = posset
trigger1 = numhelper(6100)
x = (helper(6100), pos x) - 5 * facing
y = (helper(6100), pos y) - 53

[State 10051, Snd]
type = playsnd
trigger1 = animelem = 1
value = 8, 0
volumescale = 80
channel = 0
[State 10051, Snd]
type = playsnd
trigger1 = animelem = 10
value = 8, 1
channel = 1


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

[State 10060, turn]
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
[State 10060, / ]
type = varset
trigger1 = 1
fvar(3) = (fvar(1) ** 2 + fvar(2) ** 2) ** 0.5

[State 10060, accel]
type = varadd
trigger1 = (fvar(1) || fvar(2)) && fvar(3) && fvar(4) < 4.0
fvar(4) = 0.2
[State 10060, accel]
type = varset
trigger1 = fvar(4) < 0.0
trigger2 = !fvar(1) && !fvar(2)
fvar(4) = 0
[State 10060, accel]
type = varset
trigger1 = fvar(4) > 4.0
fvar(4) = 4.0

[State 10060, Vel]
type = velset
trigger1 = 1
x = 0
y = 0
[State 10060, Vel]
type = velset
trigger1 = fvar(3)
x = (fvar(1) / fvar(3)) * fvar(4)
y = (fvar(2) / fvar(3)) * fvar(4)

[State 10060, flap]
type = playsnd
trigger1 = animelem = 6
value = 8, 0
volumescale = 40 + (random % 20)
channel = 0

[State 10060, End]
type = changestate
trigger1 = rootdist x = [2, 4]
trigger1 = rootdist y = [42, 44]
value = 10061


;--- Resting ---
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
trigger1 = root, anim = 181
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
trigger1 = root, movetype = H || roundstate < 3
trigger2 = root, stateno != 185 || root, anim != 185
value = 10000

[State 10070, Anim]
type = changeanim
trigger1 = anim != 10000
value = 10000

[State 10070, turn]
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
[State 10070, / ]
type = varset
trigger1 = 1
fvar(3) = (fvar(1) ** 2 + fvar(2) ** 2) ** 0.5

[State 10070, accel]
type = varadd
trigger1 = (fvar(1) || fvar(2)) && fvar(3) && fvar(4) < 2.0
fvar(4) = 0.2
[State 10070, accel]
type = varset
trigger1 = fvar(4) < 0.0
trigger2 = !fvar(1) && !fvar(2)
fvar(4) = 0
[State 10070, accel]
type = varset
trigger1 = fvar(4) > 2.0
fvar(4) = 2.0

[State 10070, Vel]
type = velset
trigger1 = 1
x = 0
y = 0
[State 10070, Vel]
type = velset
trigger1 = fvar(3)
x = (fvar(1) / fvar(3)) * fvar(4)
y = (fvar(2) / fvar(3)) * fvar(4)

[State 10070, flap]
type = playsnd
trigger1 = animelem = 6
value = 8, 0
volumescale = 40 + (random % 20)
channel = 0

[State 10070, End]
type = changestate
trigger1 = rootdist x = [17, 19]
trigger1 = rootdist y = [58, 60]
value = 10071


;--- Resting ---
[Statedef 10071]
type = A
physics = N
movetype = I
anim = 10071
velset = 0, 0
sprpriority = -2

[State 10071, End]
type = changestate
trigger1 = root, movetype = H || roundstate < 3
trigger2 = root, stateno != 185 || root, anim != 185
value = 10000

[State 10071, bind]
type = bindtoroot
trigger1 = root, anim = 185
pos = -18, -59
facing = 1

[State 10071, Snd]
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

[State 10100, turn]
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

[State 10100, flap]
type = playsnd
trigger1 = animelem = 6
value = 8, 0
volumescale = 80
channel = 0

[State 10100, ok]
type = changestate
trigger1 = root, movetype != H
trigger1 = (root, stateno = [1509, 1510]) || (root, stateno = [670, 689])
value = 10110

[State 10100, End]
type = changestate
trigger1 = root, movetype = H
trigger2 = (root, stateno != [1500, 1510]) && (root, stateno != [670, 689])
value = 10000


;--- Carrying Nakoruru ---
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

[State 10110, flap]
type = playsnd
trigger1 = animelem = 6
value = 8, 0
volumescale = 100
channel = 0

[State 10110, End]
type = changestate
trigger1 = root, movetype = H
trigger2 = root, stateno != 1510
trigger2 = (root, stateno != [670, 689]) && (root, stateno != [1500, 1589])
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
sprpriority = 3

[State 10200, hitoverride]
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

[State 10200, Snd]
type = playsnd
trigger1 = !time
trigger1 = prevstateno != [10200, 10201]
value = 8, 2
channel = 1

[State 10200, Button]
type = varset
trigger1 = !time
trigger1 = prevstateno != [10200, 10201]
var(10) = root, var(10)

[State 10200, Anim]
type = changeanim
trigger1 = anim != 10200
value = 10200

[State 10200, Vel]
type = velset
trigger1 = 1
x = ifelse(var(10) = 2, 6.46, ifelse(var(10) = 1, 5.39, 4.31))
y = ifelse(var(10) = 2, 4, ifelse(var(10) = 1, 4.66, 5.32))

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

[State 10200, counterflag]
type = varset
trigger1 = numenemy
trigger1 = movecontact != 1
var(9) = (enemynear, movetype = A)

[State 10200, dampener]
type = varset
trigger1 = 1
fvar(11) = (root, fvar(10)) * ifelse(var(9), 1.2, 1)

[State 10200, Hit]
type = hitdef
trigger1 = 1
attr = A, SP
hitflag = MAF
guardflag = MA
guarddist = root, const(size.proj.attack.dist)
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * (83 + var(10) * 7) < 7, 7, fvar(11) * (83 + var(10) * 7))), 11
getpower = 50 * !(root, var(20)), 25 * !(root, var(20))
givepower = 40, 40
pausetime = 0, ifelse((root, var(20)), 4, 8)
guard.pausetime = 0, ifelse((root, var(20)), 4, 8)
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = High
air.type = High
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 60
ground.velocity = -4.31, -7.27
guard.velocity = -10.52
air.velocity = -4.31, -7.27
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = ifelse((p2stateno != [5020, 5119]), 1, 0)
forcestand = 1
sparkno = -1
guard.sparkno = -1
sparkxy = -10, -13
hitsound = -1
guardsound = -1
palfx.time = 60
palfx.mul = 128, 128, 128
palfx.sinadd = 64, 64, 64, 4
sprpriority = 3
envshake.time = 10
envshake.ampl = 2
envshake.freq = 180
ID = 10200

[State 10200, Burned]
type = targetstate
trigger1 = movehit
trigger1 = numtarget(10200)
trigger1 = target, selfanimexist(7697)
trigger1 = (target(10200), stateno = 5000) || (target(10200), stateno = 5010) || (target(10200), stateno = 5020)
value = 7697
ID = 10200
ignorehitpause = 1

[State 10200, Miss]
type = hitdef
trigger1 = root, var(15) >= 1 && !(root, var(20))
attr = A, SP
hitflag =
sparkxy = -10, -13

[State 10200, End]
type = changestate
trigger1 = movecontact || movereversed
value = 10201
ignorehitpause = 1

[State 10200, End]
type = changestate
trigger1 = pos y >= 0
value = 10005


;--- Hitpause ---
[Statedef 10201]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 3
movehitpersist = 1

[State 10201, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 10201, HitSound]
type = playsnd
trigger1 = movecontact = 1
value = ifelse((movehit && numtarget), 2, 3), ifelse((movehit && numtarget), 9, 0)
channel = 2
ignorehitpause = 1

[State 10201, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = prevstateno = [5000, 5999]
value = 3, 0
channel = 2
volumescale = 50

[State 10201, Flames]
type = helper
trigger1 = !numhelper(8150)
trigger1 = movehit && numtarget
trigger1 = !(target, hitshakeover)
trigger1 = var(40) := (target, ID)
helpertype = normal
stateno = 8150
ID = 8150
name = "Flames"
postype = p2
ownpal = 1
ignorehitpause = 1

[State 10201, Spark]
type = helper
trigger1 = root, fvar(31)
trigger1 = movecontact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helpertype = normal
stateno = ifelse(moveguarded, 8001, 8020)
ID = 8000
name = "Spark"
postype = p1
pos = ifelse(p2dist x < 0, 0, ifelse(p2dist x < 18, ceil(p2dist x), 18)), -13
facing = -1
size.xscale = 0.5
size.yscale = 0.5
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 10201, Spark]
type = explod
trigger1 = !(root, fvar(31))
trigger1 = movecontact = 1 && numtarget
trigger1 = !(target, hitshakeover)
anim = Fifelse(moveguarded, 40, 2)
ID = 8000
postype = p1
pos = ifelse(p2dist x < 0, 0, ifelse(p2dist x < 18, ceil(p2dist x), 18)), -13
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 10201, Counter FX]
type = helper
trigger1 = movecontact = 1 && numtarget && var(9)
trigger1 = !(target, hitshakeover)
helpertype = normal
stateno = 8290
ID = 8290
name = "Counter FX"
postype = p2
pos = (target, const(size.ground.front) -10) * (target, facing) * (-facing), floor(pos y -target, pos y) -13
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 10201, Stun System - Add]
type = parentvaradd
trigger1 = movehit = 1
trigger1 = numtarget
trigger1 = target, gethitvar(damage) > 0
trigger1 = root, var(42) >= 0
trigger1 = root, var(20) <= 0
var(42) = ceil(100 * root, fvar(11))
ignorehitpause = 1

[State 10201, Stun System - Dizzy]
type = targetstate
trigger1 = movehit = 1
trigger1 = numenemy = 1 && numpartner = 0
trigger1 = roundstate = 2 && numtarget
trigger1 = target, gethitvar(damage) < target, life
trigger1 = root, var(42) >= (target, const(data.life))
value = 1115310
ignorehitpause = 1

[State 10201, numhit]
type = varadd
trigger1 = !time
var(22) = 1

[State 10201, juggle]
type = parentvaradd
trigger1 = !time
trigger1 = movecontact && numtarget
var(15) = 1

[State 10201, ProjContact]
type = parentvarset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
trigger1 = root, stateno = 1300
var(18) = 1
[State 10201, ProjContact]
type = varset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
var(18) = 1

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
sprpriority = 1

[State 10250, hitoverride]
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

[State 10250, Snd]
type = playsnd
trigger1 = !time
trigger1 = prevstateno != [10250, 10251]
value = 8, 1
channel = 1

[State 10250, Anim]
type = changeanim
trigger1 = anim != 10250
value = 10250

[State 10250, Vel]
type = velset
trigger1 = 1
x = 12;13.7
y = 6;5.2

[State 10250, Accel]
type = veladd
trigger1 = 0;vel x < 12
x = 0.5
y = 0
[State 10250, Vel]
type = velset
trigger1 = 0;!time
trigger1 = prevstateno != [10250, 10251]
x = 2
y = 4

[State 10250, counterflag]
type = varset
trigger1 = numenemy
trigger1 = movecontact != 1
var(9) = (enemynear, movetype = A)

[State 10250, dampener]
type = varset
trigger1 = 1
fvar(11) = (root, fvar(10)) * ifelse(var(9), 1.2, 1)

[State 10250, Hit]
type = hitdef
trigger1 = 1
ID = 10250
attr = A, SA
hitflag = MAF
guardflag = MA
guarddist = root, const(size.proj.attack.dist)
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 40 < 7, 7, fvar(11) * 40)), 7
getpower = 0, 0
givepower = 40, 40
pausetime = 0, 8
guard.pausetime = 0, 8
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = High
air.type = High
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 60
ground.velocity = -4.31, -7.27
guard.velocity = -10.52
air.velocity = -4.31, -7.27
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.ctrltime = 16
airguard.velocity = -6.00, -1.00
airguard.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 1
fall.recovertime = 120
p2facing = ifelse((p2stateno != [5020, 5119]), 1, 0)
forcestand = 1
sparkno = -1
guard.sparkno = -1
sparkxy = -10, -13
hitsound = -1
guardsound = -1
sprpriority = 3
envshake.time = 10
envshake.ampl = 2
envshake.freq = 180

[State 10250, Miss]
type = hitdef
trigger1 = root, var(15) >= 1 && !(root, var(20))
attr = A, SA
hitflag =
sparkxy = -10, -13

[State 10250, End]
type = changestate
trigger1 = movecontact || movereversed
value = 10251
[State 10250, End]
type = changestate
trigger1 = pos y >= 0
value = 10005


;--- Hitpause ---
[Statedef 10251]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 1
movehitpersist = 1

[State 10251, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 10251, HitSound]
type = playsnd
trigger1 = movecontact = 1
value = ifelse((movehit && numtarget), 2, 3), ifelse((movehit && numtarget), 6, 0)
channel = 2
ignorehitpause = 1

[State 10251, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = prevstateno = [5000, 5999]
value = 3, 0
channel = 2
volumescale = 50

[State 10251, Spark]
type = helper
trigger1 = root, fvar(31)
trigger1 = movecontact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helpertype = normal
stateno = ifelse(moveguarded, 8001, 8020)
ID = 8000
name = "Spark"
postype = p1
facing = -1
pos = ifelse(moveguarded, -22, -7), ifelse(moveguarded, -6, -10)
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 10251, Spark]
type = explod
trigger1 = !(root, fvar(31))
trigger1 = movecontact = 1 && numtarget
trigger1 = !(target, hitshakeover)
anim = Fifelse(moveguarded, 40, 1)
ID = 8000
postype = p1
pos = -22, -7
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 10251, Counter FX]
type = helper
trigger1 = movecontact = 1 && numtarget && var(9)
trigger1 = !(target, hitshakeover)
helpertype = normal
stateno = 8290
ID = 8290
name = "Counter FX"
postype = p2
pos = (target, const(size.ground.front) -10) * (target, facing) * (-facing), floor(pos y -target, pos y) -13
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 10251, numhit]
type = varadd
trigger1 = !time
var(22) = 1

[State 10251, ProjContact]
type = parentvarset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
trigger1 = root, stateno = 1350
var(18) = 1
[State 10251, ProjContact]
type = varset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
var(18) = 1

[State 10251, p2state]
type = targetstate
trigger1 = movehit = 1 && numtarget(10250)
ID = 10250
value = 10270
[State 10251, p1state]
type = changestate
trigger1 = movehit = 1 && numtarget(10250)
value = 10260

[State 10251, End]
type = changestate
trigger1 = time >= 0
value = 10250


;--- Throwing ---
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
trigger1 = !time && !numtarget(10250)
value = 10000

[State 10260, Throw]
type = targetstate
trigger1 = !time && numtarget(10250)
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

[State 10260, Pos]
type = posset
trigger1 = !time
trigger1 = numtarget(10250)
trigger1 = pos y > (target(10250), const(size.head.pos.y))
y = target(10250), const(size.head.pos.y)

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

[State 10260, flap]
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

[State 10260, Throw]
type = targetstate
trigger1 = !time && numtarget(10250)
ID = 10250
value = 10271
[State 10260, Throw]
type = targetdrop
trigger1 = !time

[State 10261, flap]
type = playsnd
trigger1 = animelem = 6
value = 8, 0
volumescale = 100
channel = 0

[State 10261, End]
type = changestate
trigger1 = time >= 13
value = 10000


;--- Target ---
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

[State 10271, Recover]
type = selfstate
trigger1 = alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 10271, End]
type = selfstate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 5100


;========================<SHICHIKAPU KAMUI IRUSHIKA>=============================
[Statedef 10400]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 3

[State 10400, Button]
type = varset
trigger1 = !time
var(10) = root, var(11)

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


;--- Gaining momentum ---
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

[State 10401, Snd]
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
name = "Amube Yatoro FX"
postype = p1
size.xscale = 0.5
size.yscale = 0.5
ownpal = 1

[State 10401, End]
type = changestate
trigger1 = time >= 10
value = 10410


;--- Attacking ---
[Statedef 10410]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 3

[State 10410, numhit]
type = varset
trigger1 = !time
trigger1 = prevstateno != [10410, 10411]
var(22) = 0

[State 10410, hitoverride]
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

[State 10410, counterflag]
type = varset
trigger1 = numenemy
trigger1 = movecontact != 1
var(9) = (enemynear, movetype = A)

[State 10410, dampener]
type = varset
trigger1 = 1
fvar(11) = (root, fvar(10)) * ifelse(var(9), 1.2, 1)

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
trigger1 = var(10) = 0 && vel x < 10
trigger2 = var(10) = 1 && vel x < 13
trigger3 = var(10) = 2 && vel x < 16
x = ifelse(var(10) = 0, 2.5,  ifelse(var(10) = 1, 3.25, 4))
[State 10410, Vel]
type = velset
trigger1 = var(10) = 0 && vel x > 10
trigger2 = var(10) = 1 && vel x > 13
trigger3 = var(10) = 2 && vel x > 16
x = ifelse(var(10) = 0, 10,  ifelse(var(10) = 1, 13, 16))

[State 10410, miss]
type = hitdef
trigger1 = 1
attr = A, HP
hitflag =
sparkxy = -10, -21

[State 10410, hit high]
type = hitdef
trigger1 = !(var(22) % 2)
trigger1 = root, var(15) < (var(22) + 2)
attr = A, HP
hitflag = MAF
guardflag = M
guarddist = root, const(size.proj.attack.dist)
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getpower = 0, 0
givepower = 40, 40
pausetime = 0, 12
guard.pausetime = 0, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = High
air.type = High
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 60
ground.velocity = -5.32, -7.33
guard.velocity = -10.52
air.velocity = -5.32, -7.33
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 0
p2facing = ifelse((p2stateno != [5020, 5119]), 1, 0)
forcestand = 1
sparkno = -1
guard.sparkno = -1
sparkxy = -10, -21
hitsound = -1
guardsound = -1
palfx.time = 60
palfx.mul = 128, 128, 128
palfx.sinadd = 64, 64, 64, 4
envshake.time = 12
envshake.ampl = 6
sprpriority = 3
envshake.freq = 180
ID = 10410

[State 10410, hit low]
type = hitdef
trigger1 = (var(22) % 2)
trigger1 = root, var(15) < (var(22) + 2)
attr = A, HP
hitflag = MAF
guardflag = M
guarddist = root, const(size.proj.attack.dist)
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getpower = 0, 0
givepower = 40, 40
pausetime = 0, 12
guard.pausetime = 0, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 60
ground.velocity = -5.32, -7.33
guard.velocity = -10.52
air.velocity = -5.32, -7.33
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 0
p2facing = ifelse((p2stateno != [5020, 5119]), 1, 0)
forcestand = 1
sparkno = -1
guard.sparkno = -1
sparkxy = -10, -21
hitsound = -1
guardsound = -1
palfx.time = 60
palfx.mul = 128, 128, 128
palfx.sinadd = 64, 64, 64, 4
envshake.time = 12
envshake.ampl = 6
sprpriority = 3
envshake.freq = 180
ID = 10410

[State 10410, Burned]
type = targetstate
trigger1 = movehit
trigger1 = numtarget(10410)
trigger1 = target, selfanimexist(7697)
trigger1 = (target(10410), stateno = 5000) || (target(10410), stateno = 5010) || (target(10410), stateno = 5020)
value = 7697
ID = 10410
ignorehitpause = 1

[State 10410, End]
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


;--- Hitpause ---
[Statedef 10411]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 3
movehitpersist = 1

[State 10411, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 10411, numhit]
type = varadd
trigger1 = !time
var(22) = 1

[State 10411, juggle]
type = parentvaradd
trigger1 = !time
trigger1 = movecontact && numtarget
var(15) = 1

[State 10411, ProjContact]
type = parentvarset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
trigger1 = root, stateno = 3100
var(18) = 1
[State 10411, ProjContact]
type = varset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
var(18) = 1

[State 10411, HitSound]
type = playsnd
trigger1 = !time
trigger1 = movecontact = 1
value = ifelse((movehit && numtarget), 2, 3), ifelse((movehit && numtarget), ifelse(var(22) < 5, 2, 9), 0)
channel = 2
ignorehitpause = 1

[State 10411, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = prevstateno = [5000, 5999]
value = 3, 0
channel = 2
volumescale = 50

[State 10411, Flames]
type = helper
trigger1 = !numhelper(8150)
trigger1 = movehit && numtarget
trigger1 = !(target, hitshakeover)
trigger1 = var(40) := (target, ID)
helpertype = normal
stateno = 8150
ID = 8150
name = "Flames"
postype = p2
ownpal = 1
ignorehitpause = 1

[State 10411, Spark]
type = helper
trigger1 = root, fvar(31)
trigger1 = !time
trigger1 = movecontact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helpertype = normal
stateno = ifelse(moveguarded, 8001, 8030)
ID = 8000
name = "Spark"
postype = p1
pos = ifelse(p2dist x < 0, 0, ifelse(p2dist x < 14, ceil(p2dist x), 14)), -21
facing = -1
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 10411, Spark]
type = explod
trigger1 = !(root, fvar(31))
trigger1 = movecontact = 1 && numtarget
trigger1 = !(target, hitshakeover)
anim = Fifelse(moveguarded, 40, 3)
ID = 8000
postype = p1
pos = ifelse(p2dist x < 0, 0, ifelse(p2dist x < 14, ceil(p2dist x), 14)), -21
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 10411, Counter FX]
type = helper
trigger1 = !time
trigger1 = movecontact = 1 && numtarget && var(9)
trigger1 = !(target, hitshakeover)
helpertype = normal
stateno = 8290
ID = 8290
name = "Counter FX"
postype = p2
pos = (target, const(size.ground.front) -10) * (target, facing) * (-facing), floor(pos y -target, pos y) -21
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 10411, Underground Juggle Prevention]
type = targetbind
trigger1 = movecontact = 1
trigger1 = numtarget = 1 && numenemy
trigger1 = target, time <= 0
trigger1 = target, ID = enemynear, ID
trigger1 = !(target, hitshakeover) && (target, pos y > 0)
pos = ceil(p2dist x), ceil(-pos y)
ignorehitpause = 1

[State 10411, End]
type = changestate
trigger1 = time >= 2
value = ifelse(var(22) < 5, 10410, 10412)


;--- Finished ---
[Statedef 10412]
type = A
physics = N
movetype = I
ctrl = 0
sprpriority = 3

[State 10412, hitoverride]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 10411
ignorehitpause = 1

[State 10412, HB]
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

[State 10500, turn]
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

[State 10500, flap]
type = playsnd
trigger1 = animelem = 6
value = 8, 0
volumescale = 80
channel = 0

[State 10500, ok]
type = changestate
trigger1 = root, stateno = 3001
value = 10510
[State 10500, End]
type = changestate
trigger1 = root, stateno != [3000, 3001]
value = 10000


;--- Holding Nakoruru ---
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

[State 10510, flap]
type = playsnd
trigger1 = animelem = 6
value = 8, 0
volumescale = 80
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

[State 10600, Button]
type = varset
trigger1 = !time
var(10) = root, var(11)

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


;--- Moving ---
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

[State 10601, flap]
type = playsnd
trigger1 = animelem = 6
value = 8, 0
volumescale = 40 + (random % 20)
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


;--- Positioned ---
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

[State 10602, Snd]
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


;--- Attacking ---
[Statedef 10610]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 3

[State 10610, numhit]
type = varset
trigger1 = !time
trigger1 = prevstateno != [10610, 10611]
var(22) = 0

[State 10610, hitoverride]
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

[State 10610, counterflag]
type = varset
trigger1 = numenemy
trigger1 = movecontact != 1
var(9) = (enemynear, movetype = A)

[State 10610, dampener]
type = varset
trigger1 = 1
fvar(11) = (root, fvar(10)) * ifelse(var(9), 1.2, 1)

[State 10610, Anim]
type = changeanim
trigger1 = anim != 10610
value = 10610

[State 10610, Vel]
type = velset
trigger1 = 1
x = ifelse(var(10) = 0, 3.0, ifelse(var(10) = 1, 7.0, 11.0))
y = 9.3

[State 10610, miss]
type = hitdef
trigger1 = 1
attr = A, HP
hitflag =
sparkxy = -10, -21

[State 10610, Hit]
type = hitdef
trigger1 = root, var(15) < (var(22) + 2)
trigger1 = time || (prevstateno != [10610, 10611])
attr = A, HP
hitflag = MAF
guardflag = M
guarddist = root, const(size.proj.attack.dist)
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 3
getpower = 0, 0
givepower = 40, 40
pausetime = 0, 4
guard.pausetime = 0, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = High
air.type = High
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 60
ground.velocity = -10.52, 0
guard.velocity = -10.52
air.velocity = -vel x, vel y
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
air.fall = 1
fall.recover = 0
p2facing = ifelse((p2stateno != [5020, 5119]), 1, 0)
forcestand = 1
sparkno = -1
guard.sparkno = -1
sparkxy = -10, -21
hitsound = -1
guardsound = -1
palfx.time = 60
palfx.mul = 128, 128, 128
palfx.sinadd = 64, 64, 64, 4
envshake.time = 12
envshake.ampl = 6
sprpriority = 3
envshake.freq = 180

[State 10610, End]
type = changestate
trigger1 = movecontact || movereversed
value = 10611
ignorehitpause = 1
[State 10610, End]
type = changestate
trigger1 = vel y > 0 && (pos y > -vel y)
value = 10620


;--- Hitpause ---
[Statedef 10611]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 3
movehitpersist = 1

[State 10611, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 10611, numhit]
type = varadd
trigger1 = !time
var(22) = 1

[State 10611, juggle]
type = parentvaradd
trigger1 = !time
trigger1 = movecontact && numtarget
var(15) = 1

[State 10611, ProjContact]
type = parentvarset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
trigger1 = root, stateno = 3300
var(18) = 1
[State 10611, ProjContact]
type = varset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
var(18) = 1

[State 10611, HitSound]
type = playsnd
trigger1 = !time
trigger1 = movecontact = 1
value = ifelse((movehit && numtarget), 2, 3), ifelse((movehit && numtarget), 10, 0)
channel = 2
ignorehitpause = 1

[State 10611, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = prevstateno = [5000, 5999]
value = 3, 0
channel = 2
volumescale = 50

[State 10611, Flames]
type = helper
trigger1 = !numhelper(8150)
trigger1 = movehit && numtarget
trigger1 = !(target, hitshakeover)
trigger1 = var(40) := (target, ID)
helpertype = normal
stateno = 8150
ID = 8150
name = "Flames"
postype = p2
ownpal = 1
ignorehitpause = 1

[State 10611, Spark]
type = helper
trigger1 = root, fvar(31)
trigger1 = !time
trigger1 = movecontact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helpertype = normal
stateno = ifelse(moveguarded, 8001, 8030)
ID = 8000
name = "Spark"
postype = p1
pos = ifelse(p2dist x < -18, -18, ifelse(p2dist x < 18, ceil(p2dist x), 18)), -14
facing = -1
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 10611, Spark]
type = explod
trigger1 = !(root, fvar(31))
trigger1 = movecontact = 1 && numtarget
trigger1 = !(target, hitshakeover)
anim = Fifelse(moveguarded, 40, 3)
ID = 8000
postype = p1
pos = ifelse(p2dist x < -18, -18, ifelse(p2dist x < 18, ceil(p2dist x), 18)), -14
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 10611, Counter FX]
type = helper
trigger1 = !time
trigger1 = movecontact = 1 && numtarget && var(9)
trigger1 = !(target, hitshakeover)
helpertype = normal
stateno = 8290
ID = 8290
name = "Counter FX"
postype = p2
pos = (target, const(size.ground.front) -10) * (target, facing) * (-facing), floor(pos y -target, pos y) -21
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 10611, Underground Juggle Prevention]
type = targetbind
trigger1 = movecontact = 1
trigger1 = numtarget = 1 && numenemy
trigger1 = target, time <= 0
trigger1 = target, ID = enemynear, ID
trigger1 = !(target, hitshakeover) && (target, pos y > 0)
pos = ceil(p2dist x), ceil(-pos y)
ignorehitpause = 1

[State 10611, End]
type = changestate
trigger1 = time >= 2
value = 10610


;--- Burst ---
[Statedef 10620]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 3

[State 10620, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 10620, counterflag]
type = varset
trigger1 = numenemy
trigger1 = movecontact != 1
var(9) = (enemynear, movetype = A)

[State 10620, dampener]
type = varset
trigger1 = 1
fvar(11) = (root, fvar(10)) * ifelse(var(9), 1.2, 1)

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

[State 10620, miss]
type = hitdef
trigger1 = 1
attr = A, HP
hitflag =
sparkxy = -10, -21

[State 10620, Hit]
type = hitdef
trigger1 = !time
trigger1 = (root, var(15) < var(22) + 2)
attr = A, HP
hitflag = MAFD
guardflag = M
guarddist = root, const(size.proj.attack.dist)
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 160 < 7, 7, fvar(11) * 160)), 20
getpower = 0, 0
givepower = 40, 40
pausetime = 0, 12
guard.pausetime = 0, 12
animtype = Up
air.animtype = Up
fall.animtype = Up
ground.type = High
air.type = High
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 60
down.hittime = 60
ground.velocity = 0, -13.66
guard.velocity = -10.52
air.velocity = 0, -13.66
down.velocity = 0, -13.66
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
down.cornerpush.veloff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 0
p2facing = ifelse((p2stateno != [5020, 5119]), 1, 0)
forcestand = 1
sparkno = -1
guard.sparkno = -1
sparkxy = -10, -21
hitsound = -1
guardsound = -1
palfx.time = 60
palfx.mul = 128, 128, 128
palfx.sinadd = 64, 64, 64, 4
envshake.time = 12
envshake.ampl = 6
sprpriority = 3
envshake.freq = 180
ID = 10620

[State 10620, Burned]
type = targetstate
trigger1 = movehit
trigger1 = numtarget(10620)
trigger1 = target, selfanimexist(7697)
trigger1 = (target(10620), stateno = 5000) || (target(10620), stateno = 5010) || (target(10620), stateno = 5020)
value = 7697
ID = 10620
ignorehitpause = 1

[State 10620, End]
type = changestate
trigger1 = movecontact || movereversed
trigger2 = time >= 12
value = 10621
ignorehitpause = 1


;--- Hitpause ---
[Statedef 10621]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 3
movehitpersist = 1

[State 10621, Freeze]
type = posfreeze
trigger1 = 1
value = 1

[State 10621, numhit]
type = varadd
trigger1 = !time
var(22) = 1

[State 10621, juggle]
type = parentvarset
trigger1 = !time
trigger1 = movecontact && numtarget
var(15) = 0

[State 10621, ProjContact]
type = parentvarset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
trigger1 = root, stateno = 3300
var(18) = 1
[State 10621, ProjContact]
type = varset
trigger1 = movecontact = 1 && numenemy
trigger1 = (enemynear, movetype = H) && !(enemynear, time)
var(18) = 1

[State 10621, HitSound]
type = playsnd
trigger1 = !time
trigger1 = movecontact = 1
value = ifelse((movehit && numtarget), 2, 3), ifelse((movehit && numtarget), 10, 0)
channel = 2
ignorehitpause = 1

[State 10621, Trade Sound]
type = playsnd
trigger1 = !time
trigger1 = prevstateno = [5000, 5999]
value = 3, 0
channel = 2
volumescale = 50

[State 10621, Flames]
type = helper
trigger1 = !numhelper(8150)
trigger1 = movehit && numtarget
trigger1 = !(target, hitshakeover)
trigger1 = var(40) := (target, ID)
helpertype = normal
stateno = 8150
ID = 8150
name = "Flames"
postype = p2
ownpal = 1
ignorehitpause = 1

[State 10621, Spark]
type = helper
trigger1 = root, fvar(31)
trigger1 = !time
trigger1 = movecontact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helpertype = normal
stateno = ifelse(moveguarded, 8001, 8030)
ID = 8000
name = "Spark"
postype = p1
pos = ifelse(p2dist x < -32, -32, ifelse(p2dist x < 32, ceil(p2dist x), 32)), -64
facing = -1
ownpal = 1
size.xscale = 0.5
size.yscale = 0.5
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 10621, Spark]
type = explod
trigger1 = !(root, fvar(31))
trigger1 = movecontact = 1 && numtarget
trigger1 = !(target, hitshakeover)
anim = Fifelse(moveguarded, 40, 3)
ID = 8000
postype = p1
pos = ifelse(p2dist x < -32, -32, ifelse(p2dist x < 32, ceil(p2dist x), 32)), -64
supermovetime = -1
pausemovetime = -1
ontop = 1
ownpal = 1

[State 10621, Counter FX]
type = helper
trigger1 = !time
trigger1 = movecontact = 1 && numtarget && var(9)
trigger1 = !(target, hitshakeover)
helpertype = normal
stateno = 8290
ID = 8290
name = "Counter FX"
postype = p2
pos = (target, const(size.ground.front) -10) * (target, facing) * (-facing), floor(pos y -target, pos y) -21
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 10621, End]
type = changestate
trigger1 = time >= 2
value = 10005
