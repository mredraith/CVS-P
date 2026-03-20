;DAI ICHIBAN
[Statedef 2000]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=-1000
facep2=1

[State 3000, Anim]
type=changeanim
trigger1=!time
value=2000

[State 3000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 3000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 3000, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = ((prevstateno = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000, 4999]) && var(8)

[State 3000, CC Reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = varset
trigger1 = time = 3
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3000, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 12
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3000, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3000, Superpause FX]
type = helper
trigger1 = Time = 3
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = 20,-20
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = Time = 3
time = 40
movetime = 40
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0



[State 1000, NotHitBy]
type = NotHitBy
trigger1 = time = [0,37]
value = SCA


[State 240, pos]
type = posadd
trigger1 = animelem = 7
trigger2 = animelem = 8
x = 10

[State 240, pos]
type = posadd
trigger1 = animelem = 9
trigger2 = animelem = 10
x = 8

[State 1000, dm sound]
type = Playsnd
trigger1 = AnimElem = 2
value = 192,0

[State 1000, dm sound]
type = Playsnd
trigger1 = AnimElem = 9
value = 192,1


[State 220, 2]
type = HitDef
trigger1 = AnimElem = 10
attr = S, HA
damage = 0,10
animtype = hard
hitflag = MAF
guardflag = M
priority = 3
pausetime = 45,46
ground.hittime = 17
guard.hittime = (17) - 6
ground.type = low
ground.slidetime = 17
ground.velocity = -12
air.velocity = -4,-6
air.juggle = 10
yaccel = .5
getpower = 0,0
givepower = 15,15
kill = 0
hitsound = -1 + 0*(var(31):=1)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=66), var(36):=-71
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 200, 3]
type = ChangeState
trigger1 = movehit
trigger1 = AnimTime = 0
value = 2005

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 2001

[Statedef 2001]
type = S
movetype = A
physics = S
anim = 2001
poweradd = 0
velset = 0,0
ctrl = 0

[State 240, pos]
type = posadd
trigger1 = animelem = 1
trigger2 = animelem = 2
x = 8

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 2005]
type = S
movetype = A
physics = S
anim = 2005
poweradd = 0
velset = 0,0
ctrl = 0


[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 2007, snd]
type = Playsnd
trigger1 = AnimElem = 1
value = 1000,2

[State 1000, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 2005, target]
type = TargetState
trigger1 = time = 0
value = 2050

[State 2005, target]
type = TargetBind
trigger1 = animelem = 1
pos = 50,0

[State 2005, target]
type = Posadd
trigger1 = animelem = 1
trigger2 = animelem = 2
trigger3 = animelem = 3
trigger4 = animelem = 5
trigger5 = animelem = 6
trigger6 = animelem = 7
trigger7 = animelem = 8
trigger8 = animelem = 11
trigger9 = animelem = 12
trigger10 = animelem = 18
trigger11 = animelem = 19
trigger12 = animelem = 20
trigger13 = animelem = 21
trigger14 = animelem = 25
trigger15 = animelem = 27
trigger16 = animelem = 28
trigger17 = animelem = 41
trigger18 = animelem = 42
trigger19 = animelem = 43
trigger20 = animelem = 44
trigger21 = animelem = 45
trigger22 = animelem = 52
trigger23 = animelem = 53
trigger24 = animelem = 54
trigger25 = animelem = 55
trigger26 = animelem = 56
trigger27 = animelem = 63
trigger28 = animelem = 64
trigger29 = animelem = 65
trigger30 = animelem = 66
trigger31 = animelem = 67
trigger32 = animelem = 74
trigger33 = animelem = 75
trigger34 = animelem = 76
trigger35 = animelem = 77
trigger36 = animelem = 78
trigger37 = animelem = 85
trigger38 = animelem = 86
trigger39 = animelem = 87
trigger40 = animelem = 88
trigger41 = animelem = 89
trigger42 = animelem = 98
x = 8

[State 2007, snd]
type = Playsnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 20
trigger3 = AnimElem = 13
trigger4 = AnimElem = 32
value = 4,0

[State 2007, snd]
type = Playsnd
trigger1 = AnimElem = 43
trigger2 = AnimElem = 54
trigger3 = AnimElem = 65
trigger4 = AnimElem = 48
trigger5 = AnimElem = 59
trigger6 = AnimElem = 70
trigger7 = AnimElem = 76
trigger8 = AnimElem = 81
trigger9 = AnimElem = 87
trigger10 = AnimElem = 92
value = 4,2

[State 9520, 51]
type = EnvColor
trigger1 = AnimElem = 4
trigger2 = AnimElem = 20
trigger3 = AnimElem = 13
trigger4 = AnimElem = 32
trigger5 = AnimElem = 43
trigger6 = AnimElem = 54
trigger7 = AnimElem = 65
trigger8 = AnimElem = 48
trigger9 = AnimElem = 59
trigger10 = AnimElem = 70
trigger11 = AnimElem = 76
trigger12 = AnimElem = 81
trigger13 = AnimElem = 87
trigger14 = AnimElem = 92
value = 255,255,255
time = 1
ignorehitpause = 1
under = 1

[State 220, 2]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 20
attr = S, HA
damage = 10
animtype = hard
hitflag = MAF
guardflag = M
pausetime = 2,0
p2stateno = 2050
getpower = 0,0
givepower = 15,15
kill = 0
hitsound = -1 + 0*(var(31):=1)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=66), var(36):=-71
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48


[State 220, 2]
type = HitDef
trigger1 = AnimElem = 13
trigger2 = AnimElem = 32
attr = S, HA
damage = 10
animtype = hard
hitflag = MAF
guardflag = M
pausetime = 2,0
p2stateno = 2051
getpower = 0,0
givepower = 15,15
kill = 0
hitsound = -1 + 0*(var(31):=1)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=66), var(36):=-71
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 220, 2]
type = HitDef
trigger1 = AnimElem = 43
trigger2 = AnimElem = 54
trigger3 = AnimElem = 65
attr = S, HA
damage = 10
animtype = hard
hitflag = MAF
guardflag = M
pausetime = 2,0
p2stateno = 2051
getpower = 0,0
givepower = 15,15
kill = 0
hitsound = -1 + 0*(var(31):=1)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=66), var(36):=-71
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 220, 2]
type = HitDef
trigger1 = AnimElem = 48
trigger2 = AnimElem = 59
trigger3 = AnimElem = 70
trigger4 = AnimElem = 76
trigger5 = AnimElem = 81
trigger6 = AnimElem = 87
trigger7 = AnimElem = 92
attr = S, HA
damage = 10
animtype = hard
hitflag = MAF
guardflag = M
pausetime = 2,0
p2stateno = 2050
getpower = 0,0
givepower = 15,15
kill = 0
hitsound = -1 + 0*(var(31):=1)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=66), var(36):=-71
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 220, 2]
type = HitDef
trigger1 = animelem = 98, = 2
attr = S, HT
damage = 0,0
animtype = medium
hitflag = MAF
guardflag = M
pausetime = 0,0
ground.hittime = 17
guard.hittime = (17) - 6
ground.type = high
ground.slidetime = 17
ground.velocity = 0
air.velocity = -3,-4
fall = 1
getpower = 0,0
givepower = 15,15
kill = 0
hitsound = -1 + 0*(var(31):=1)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=66), var(36):=-71
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 2006

[Statedef 2006] ; THE throw
type = S
movetype = A
physics = S
anim = 2006
velset = 0
ctrl = 0

[State 1005, target]
type = TargetState
trigger1 = time = 0
value = 2010

[State 1005, bind]
type = TargetBind
trigger1 = animelem = 1
pos = 30,0

[State 240, pos]
type = Posadd
trigger1 = AnimElem = 2
x = 10

[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 2007

[Statedef 2007]
type = S
movetype = A
physics = S
anim = 2007
velset = 0
ctrl = 0

[State 2007, snd]
type = Playsnd
trigger1 = AnimElem = 4
value = 1000,1

[State 2007, snd]
type = Playsnd
trigger1 = AnimElem = 4
value = 7,3

[State 1005, target]
type = TargetState
trigger1 = time = 0
value = 2011

[State 1005, bind]
type = TargetBind
trigger1 = animelem = 1
pos = 30,0

[State 1005, bind]
type = TargetBind
trigger1 = animelem = 3
pos = 27,-63

[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------p2's state
[Statedef 2050]
type = S
movetype = H
physics = S
anim = 5002
ctrl = 0
facep2 = 1

[State 1250, pos]
type = posadd
trigger1 = 1
x = -1.2

[State 1250, pos]
type = posset
trigger1 = 1
y = 0

[State 1250, anim]
type = changeanim
trigger1 = time = 5
value = 5007

[State 1250n state]
type = selfstate
trigger1 = time = 30
value = 0
ctrl = 1

[Statedef 2051]
type = S
movetype = H
physics = S
anim = 5012
ctrl = 0
facep2 = 1

[State 1250, pos]
type = posadd
trigger1 = 1
x = -1.2

[State 1250, pos]
type = posset
trigger1 = 1
y = 0

[State 1250, anim]
type = changeanim
trigger1 = time = 5
value = 5017

[State 1250n state]
type = selfstate
trigger1 = time = 30
value = 0
ctrl = 1

[Statedef 2010]
type = A
movetype = H
physics = N
poweradd = 0
velset = 0
ctrl = 0
facep2 = 1
sprpriority = 0

[State 1006, anim]
type = changeanim2
trigger1 = time = 0
value = 2010

[State 1006, state]
type = ChangeState
trigger1 = AnimTime = 0 ;debug
value = 2011

[Statedef 2011]
type = A
movetype = H
physics = N
poweradd = 0
velset = 0
ctrl = 0
facep2 = 1
sprpriority = 0

[State 1006, anim]
type = changeanim2
trigger1 = time = 0
value = 2011

[State 1006, life]
type = lifeadd
trigger1 = animtime = 0
value = -100

[State 1006, state]
type = ChangeState
trigger1 = AnimTime = 0
value = 2012

[Statedef 2012]
type = A
movetype = H
physics = N
velset = 0,0

[State 816, nothitby]
type = Nothitby
trigger1 = 1
value = SCA

[State 816, vel]
type = Velset
trigger1 = 1
x = -2

[State 816, vel]
type = Velset
trigger1 = time < 2
y = -11

[State 865, 2]
type = VelAdd
trigger1 = time > 1
y = .5

[State 865, 4]
type = ChangeAnim
trigger1 = Time = 0
value = 5050

[State 865, 5]
type = SelfState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 5100

;GASSHOU HINERI
[Statedef 2100]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=-1000
facep2=1

[State 3000, Anim]
type=changeanim
trigger1=!time
value=2100

[State 1000, NotHitBy]
type = NotHitBy
trigger1 = time = 0
value = SCA

[State 3000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 3000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 3000, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = ((prevstateno = [1000, 2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000, 4999]) && var(8)

[State 3000, CC Reset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = varset
trigger1 = time = 3
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3000, Super Cancel Flash]
type = palfx
trigger1 = var(21) || var(22)
trigger1 = !(time % 2) && time <= 12
time = 1
add = 255, 255, 255
ignorehitpause = 1

[State 3000, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3000, Superpause FX]
type = helper
trigger1 = Time = 3
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = -6,-70
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = Time = 3
time = 40
movetime = 40
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 1000, dm sound]
type = Playsnd
trigger1 = AnimElem = 2
value = 2100,0

[state 2100, NotHit]
type = NotHitBy
trigger1 = 1
value = SCA

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 2101

[Statedef 2101]
type = S
movetype = A
physics = S
anim = 2101
poweradd = 0
velset = 0,0
ctrl = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = animelem = 1
time = 2
length = 11
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 1000, NotHitBy]
type = NotHitBy
trigger1 = time = [0,5]
value = SCA

[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 0,1

[State 1600, pos]
type = Velset
trigger1 = 1
x = 8

[State 1600, pos]
type = Velset
trigger1 = time < 2
y = -5

[State 1600, pos]
type = Veladd
trigger1 = time > 1
y = .65

[State 1000, StateTypeSet]
type = StateTypeSet
trigger1 = time = 0
statetype = A

[State 220, 2]
type = HitDef
trigger1 = animelem = 4
attr = S, HT
damage = 0,0
animtype = medium
hitflag = MAF
guardflag = M
pausetime = 12,13
ground.hittime = 17
guard.hittime = (17) - 6
ground.type = high
ground.slidetime = 17
ground.velocity = -12.3
air.velocity = -3,-4
getpower = 0,0
givepower = 15,15
hitsound = s2,800
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=66), var(36):=-71
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 200, 3]
type = ChangeState
trigger1 = movehit
value = 2105

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 2102

[Statedef 2102]
type = S
movetype = A
physics = S
anim = 2102
ctrl = 0
velset = 0,0

[State 1600, pos]
type = Posset
trigger1 = time = 0
y = 0



[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 2105]
type = S
movetype = A
physics = S
anim = 2105
poweradd = 0
velset = 0,0
ctrl = 0

[State 1600, pos]
type = Posset
trigger1 = time = 0
y = 0

[State 2105, target]
type = TargetState
trigger1 = time = 0
value = 2110

[State 2105, target]
type = TargetBind
trigger1 = animelem = 1
pos = 22,-89

[State 2105, target]
type = TargetBind
trigger1 = animelem = 2
pos = 4,-93

[State 2105, target]
type = TargetBind
trigger1 = animelem = 3
pos = -21,-92

[State 2105, target]
type = TargetBind
trigger1 = animelem = 4
pos = -33,-86

[State 2105, target]
type = TargetBind
trigger1 = animelem = 5
pos = -42,-84

[State 2105, target]
type = TargetBind
trigger1 = animelem = 6
pos = -46,-82

[State 2105, target]
type = TargetBind
trigger1 = animelem = 7
pos = -31,-84

[State 2105, target]
type = TargetBind
trigger1 = animelem = 8
pos = -1,-84

[State 2105, target]
type = TargetBind
trigger1 = animelem = 9
pos = 5,-70

[State 2105, pos]
type = Posadd
trigger1 = animelem = 11
trigger2 = animelem = 12
trigger3 = animelem = 13
trigger4 = animelem = 14
trigger5 = animelem = 19
x = 10

[State 2105, snd]
type = PlaySnd
trigger1 = animelem = 3
value = 2100,1

[State 2105, snd]
type = PlaySnd
trigger1 = animelem = 8
value = 2100,2

[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 2110]
type = A
movetype = H
physics = N
poweradd = 0
velset = 0
ctrl = 0
facep2 = 1
sprpriority = 0

[State 2110, scren]
type = ScreenBound
trigger1 = 1
value = 0

[State 1006, anim]
type = changeanim2
trigger1 = time = 0
value = 2110

[State 1006, life]
type = lifeadd
trigger1 = animtime = 0
value = -200

[State 1006, state]
type = ChangeState
trigger1 = AnimTime = 0
value = 2111

[Statedef 2111]
type = A
movetype = H
physics = N
velset = 0,0

[State 816, nothitby]
type = Nothitby
trigger1 = 1
value = SCA

[State 816, vel]
type = Velset
trigger1 = 1
x = -7

[State 816, vel]
type = Velset
trigger1 = time < 2
y = -7

[State 865, 2]
type = VelAdd
trigger1 = time > 1
y = .5

[State 1028, Anim 5050] ;Self falling animation
type = ChangeAnim
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5052)
value = 5050

[State 1028, Anim 5052] ;Self falling animation (diagup type)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5052)
value = 5052

[State 1028, Anim 5060] ;Coming down - normal
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5050
trigger1 = SelfAnimExist(5060)
persistent = 0
value = 5060

[State 1028, Anim 5062] ;Coming down - diagup type
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5051
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 865, 5]
type = SelfState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 5100

;TOUGH HINAKO
[Statedef 2300]
type=S
movetype=A
physics=N
poweradd=-2000
ctrl=0
velset=0,0
sprpriority=1
facep2=1

[State 3050, Anim]
type=changeanim
trigger1=!time
value=2300


[State 3050, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 3050, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3050, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3050, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3050, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3050, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 40

[State 3050, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3050, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3050, Super Pause FX]
type = Helper
trigger1 = Time = 3
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 20, -20
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3050, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 40
moveTime = 40
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0




[State 240, pos]
type = posadd
trigger1 = animelem = 7
x = 6

[State 1000, dm sound]
type = Playsnd
trigger1 = AnimElem = 2
value = 315,0

[State 1000, dm sound]
type = Playsnd
trigger1 = AnimElem = 8
value = 4,2

[State 9520, 51]
type = EnvColor
trigger1 = movehit
value = 255,255,255
time = 1
ignorehitpause = 1
persistent = 0
under = 1

[State 1000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = nojugglecheck
ignorehitpause = 1

[State 1000, Helper]
type = Helper
triggerall = numhelper(2010) <= 0
trigger1 = movehit
helpertype = normal
name = "Slow Motion"
stateno = 2026
id = 2010
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 1000, NotHitBy]
type = NotHitBy
trigger1 = Time = [0,35]
value = SCA

[State 220, 2]
type = HitDef
trigger1 = AnimElem = 8
attr = S, HA
damage = 0
animtype = hard
hitflag = MAF
guardflag = MA
pausetime = 45,47
ground.hittime = 17
guard.hittime = (17) - 6
ground.type = high
ground.slidetime = 17
ground.velocity = -12
air.velocity = -4,-6
yaccel = .5
getpower = 0,0
givepower = 15,15
snap = 70,0,0
hitsound = -1 + 0*(var(31):=1)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=66), var(36):=-35
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 200, 3]
type = ChangeState
trigger1 = movehit
trigger1 = AnimTime = 0
value = 2305

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 2301

[Statedef 2301]
type = S
movetype = A
physics = S
anim = 2301
poweradd = 0
velset = 0,0
ctrl = 0

[State 240, pos]
type = posadd
trigger1 = animelem = 5
x = 10

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 2305]
type = S
movetype = A
physics = S
anim = 2305
poweradd = 0
velset = 0,0
ctrl = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = animelem = 1
time = 2
length = 11
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[state 2305, target]
type = Targetstate
trigger1 = time = 0
value = 2310

[State 240, pos]
type = posadd
trigger1 = animelem = 2
trigger2 = animelem = 19
trigger3 = animelem = 20
trigger4 = animelem = 24
trigger5 = animelem = 25
trigger6 = animelem = 26
trigger7 = animelem = 27
x = 10

[State 1000, dm sound]
type = Playsnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
value = 2,5

[State 1000, dm sound]
type = Playsnd
trigger1 = AnimElem = 18
value = 192,1

[State 9520, 51]
type = EnvColor
trigger1 = movehit
value = 255,255,255
time = 1
ignorehitpause = 1
persistent = 0
under = 1

[State 220, 2]
type = HitDef
trigger1 = AnimElem = 22
attr = S, HA
damage = 150
animtype = up
hitflag = MAF
guardflag = M
pausetime = 25,27
ground.hittime = 17
guard.hittime = (17) - 6
ground.type = high
ground.slidetime = 17
ground.velocity = -2,-13
air.velocity = -2,-13
yaccel = .5
getpower = 0,0
givepower = 15,15
fall = 1
fall.recover = 0
kill = 0
hitsound = -1 + 0*(var(31):=1)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=66), var(36):=-71
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 200, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 2306

[Statedef 2306]
type = A
movetype = A
physics = N
anim = 2306
poweradd = 0
velset = 0,0
ctrl = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = animelem = 1
time = 2
length = 11
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 1600, pos]
type = Velset
trigger1 = time < 10
x = 3

[State 1600, pos]
type = Velset
trigger1 = time < 2
y = -8

[State 1600, pos]
type = Veladd
trigger1 = time > 1
y = .5

[State 2306, snd]
type = Playsnd
trigger1 = animelem = 1
value = 0,1

[State 1000, dm sound]
type = Playsnd
trigger1 = AnimElem = 4
value = 1300,1

[State 9520, 51]
type = EnvColor
trigger1 = movehit
value = 255,255,255
time = 1
ignorehitpause = 1
persistent = 0
under = 1

[State 1000, Helper]
type = Helper
triggerall = numhelper(2010) <= 0
trigger1 = movehit
helpertype = normal
name = "Slow Motion"
stateno = 2026
id = 2010
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1

[State 220, 2]
type = HitDef
trigger1 = AnimElem = 5
attr = S, HA
damage = 200
animtype = hard
hitflag = MAF
guardflag = M
pausetime = 45,47
ground.hittime = 17
guard.hittime = (17) - 6
ground.type = high
ground.slidetime = 17
ground.velocity = -6,20
air.velocity = -6,20
yaccel = .5
getpower = 0,0
givepower = 15,15
hitsound = -1 + 0*(var(31):=1)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=66), var(36):=-71
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 200, 3]
type = ChangeState
trigger1 = time = 35
value = 2102

[Statedef 2310]
type = A
movetype = H
physics = N
poweradd = 0
velset = 0
ctrl = 0
facep2 = 1
sprpriority = 0

[State 2110, scren]
type = ScreenBound
trigger1 = 1
value = 0

[State 1006, anim]
type = changeanim2
trigger1 = time = 0
value = 2310

[State 1006, anim]
type = changeanim
trigger1 = time = 28
value = 0

[State 1006, anim]
type = changeanim
trigger1 = time = 52
value = 200

[State 2310, debug]
type = Changestate
trigger1 = anim = 200 & animtime = 0
value = 2311

[Statedef 2311]
type = A
movetype = H
physics = N
poweradd = 0
velset = 0
ctrl = 0
facep2 = 1
sprpriority = 0

[State 2110, scren]
type = ScreenBound
trigger1 = 1
value = 0

[State 1006, anim]
type = changeanim
trigger1 = time = 0
value = 0

[State 2310, debug]
type = SelfState
trigger1 = time = 100
value = 0
ctrl = 1

;Slow Effect
[Statedef 2026]
type = S
ctrl = 0
anim = 1
velset = 0,0

[State 1000, Pause]
type = Pause
triggerall = RoundState = 2
trigger1 = time = [0,12]
time = 1
movetime = 1
ignorehitpause = 1

[State 1000, DestroySelf]
type = DestroySelf
trigger1 = time = 40

;Reversal Of Destruction
[Statedef 2400]
type = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprpriority = 1
powerAdd = -3000
faceP2 = 1

[State 3500, Anim]
type=changeanim
trigger1=!time
value=2400


[State 170, –³“G]
type = NotHitBy
trigger1 = Time = [0,4]
value = SCA

[State 170, –³“G]
type = NotHitBy
trigger1 = Time = [5,35]
value = SA,HA,NP,HP,NT,ST,HT

[State 810, •¨—“I‚ÈƒLƒƒƒ‰‚Ì•]
type = Width
trigger1 = 1
edge = 25,0


[State 3600]
type = ReversalDef
trigger1 = 1
attr = S, HT
reversal.attr = SCA, NA, SA, HA
pausetime = 12,14
animtype = hard
p1facing = 1
p2facing = 1
sparkno =  -1 + 0*(var(33):=8001)
hitsound = S760,0
sparkxy = -10 + 0*(var(35):=63), var(36):=-69
p1stateno = 2410
p2stateno = 2450
getpower = 0,0
givepower = 15,15


[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-----------------------------Reversal Of Destruction Target
[Statedef 2410]
type = S
movetype = A
physics = S
anim = 2410
juggle = 0
poweradd = 0
velset = 0
ctrl = 0

[State 1000, TargetBind]
type = TargetBind
trigger1 = time = [0,20]
pos = 50,0
ignorehitpause = 1


[State 3500, Super Pause FX]
type = Helper
trigger1 = animelem = 1
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = 20,-65
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3500, Super Pause]
type = SuperPause
trigger1 = animelem = 1
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 21
value = S1000,2

[State 100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 23
value = S1,4

[State 100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S1,3


[State 1000, Helper]
type = Helper
triggerall = numhelper(2010) <= 0
trigger1 = AnimElem = 6
trigger2 = AnimElem = 25
helpertype = normal
name = "Slow Motion"
stateno = 2026
id = 2010
pos = 0,0
postype = p1
facing = 1
keyctrl = 0
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 200, ƒqƒbƒg’è‹`]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA
damage = 100,10
animtype = Hard
hitflag = MAF
priority = 3, Hit
pausetime = 10,12
ground.type = low
ground.slidetime = 21
ground.hittime  = 21
guard.hittime = (21) - 6
ground.velocity = -5
air.velocity = -4,15
air.hittime = 12
air.fall = 1
fall.recovertime = 30
p2stateno = 2460 + ((p2statetype=C)*10)
ground.cornerpush.veloff = 0
getpower = 0,0
givepower = 16,16
kill = 0
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8013)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=66), var(36):=-71
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 200, ƒqƒbƒg’è‹`]
type = HitDef
trigger1 = animelem = 25
attr = S, SA
damage = 350,50
animtype = Hard
hitflag = MAFD
priority = 3, Hit
pausetime = 20,22
ground.type = High
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
ground.velocity = -2,-12
air.velocity = -2,-12
air.type = High
air.hittime = 12
fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
p2stateno = 2470
getpower = 0,0
givepower = 16,16
yaccel = .5
hitsound = -1 + 0*(var(31):=1)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=66), var(36):=-5
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48


[State 5100, 12]
type = PlaySnd
trigger1 = animelem = 25
value = s820,1
volumescale = 50

[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
[Statedef 2450]
type    = S
movetype= H
physics = N
velset = 0,0

[State 52, 1]
type = VelSet
trigger1 = time = 0
x = 0
y = 0

[State 52, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1830]
type = ChangeAnim2
Trigger1 = Time = 0
value = 2450

[State 1830]
type = changestate
trigger1 = time = 200
value = 5000
;---------------------------------------------------------------------------
[Statedef 2460]
type    = S
movetype= H
physics = N
velset = 0,0

[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(groundtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5000, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5000, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5000, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5000, 6]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0 && !GetHitVar(fall)
value = 2465 ;HITG_SLIDE

[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5271

[State 5000, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5000, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140
;-------------------------------------------------------------------------------
[Statedef 2465]
type    = S
movetype= H
physics = N
velset = 0,0

[State 5380, Explod]
type = Explod
trigger1 = time = 1
anim = 8101
pos = -10,-20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 9

[State 5380, Explod]
type = Explod
trigger1 = time = 1
anim = 8102
pos = -10,-20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = -1

[State 5380, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = f7,5
volumescale = 50

[State 5380, Pause]
type = Pause
trigger1 = time = [2,10]
time = 1
movetime = 1
ignorehitpause = 1

[State 5380, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 20
freq = 100
ampl = -4

[State 2120]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 1000, PosAdd]
type = PosAdd
trigger1 = time = 0
y = 20

[State 5210, 1]
type = changeanim
trigger1 = Time = 0 && selfanimexist(5161)
value = 5161

[State 5210, 1]
type = changeanim
trigger1 = Time = 0 && selfanimexist(5162)
value = 5162

[State 5210, 1]
type = changeanim
trigger1 = Time = 0 && selfanimexist(5163)
value = 5163

[State 5210, 1]
type = changeanim
trigger1 = Time = 0
trigger1 = !selfanimexist(5161)
trigger1 = !selfanimexist(5162)
trigger1 = !selfanimexist(5163)
value = 5161

[State 1000, ChangeState]
type = ChangeState
trigger1 = time = 8
value = 2466
;-------------------------------------------------------------------------------
[Statedef 2466]
type    = L
movetype= H
physics = N

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5110, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5110, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5110, 14]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 5110, 15]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine

[State 1000, PalFX]
type = PalFX
trigger1 = time = 3
time = 1

[State 5210, 1]
type = changeanim
trigger1 = Time = 0 && selfanimexist(5111)
value = 5111

[State 5210, 1]
type = changeanim
trigger1 = Time = 0 && selfanimexist(5112)
value = 5112

[State 5210, 1]
type = changeanim
trigger1 = Time = 0 && selfanimexist(5113)
value = 5113

[State 5210, 1]
type = changeanim
trigger1 = Time = 0
trigger1 = !selfanimexist(5111)
trigger1 = !selfanimexist(5112)
trigger1 = !selfanimexist(5113)
value = 5110

[State 1000, ChangeState]
type = ChangeState
trigger1 = time = 8
value = 2467
;-------------------------------------------------------------------------------
[Statedef 2467]
type    = L
movetype= H
physics = N

[State 1000, PosSet]
type = PosSet
trigger1 = time = 0
y = 17

[State 5410, VelSet]
type = VelSet
trigger1 = time = 0
y = -2.7

[State 5410, VelAdd]
type = VelAdd
trigger1 = time > 0
y = .75

[State 5210, 1]
type = changeanim
trigger1 = Time = 0 && selfanimexist(5091)
value = 5091

[State 5210, 1]
type = changeanim
trigger1 = Time = 0 && selfanimexist(5092)
value = 5092

[State 5210, 1]
type = changeanim
trigger1 = Time = 0 && selfanimexist(503)
value = 5093

[State 5210, 1]
type = changeanim
trigger1 = Time = 0
trigger1 = !selfanimexist(5091)
trigger1 = !selfanimexist(5092)
trigger1 = !selfanimexist(5093)
value = 5091

[State 1000, ƒXƒe[ƒg•ÏX]
type = ChangeState
trigger1 = time = 7
value = 2468
;-------------------------------------------------------------------------------
[Statedef 2468]
type    = L
movetype= H
physics = N

[State 5110, 5]
type = PosSet
trigger1 = 1
y = 0

[State 5420, NotHitBy]
type = NotHitBy
trigger1 = Time = [0,51]
value = SCA

[State 5380, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = f7,0
volumescale = 50

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 60 + (sysvar(1) > 5)
pos = 0, 0
under = sysvar(0) <= 5

[State 5210, 1]
type = changeanim
trigger1 = Time = 0 && selfanimexist(5111)
value = 5111

[State 5210, 1]
type = changeanim
trigger1 = Time = 0 && selfanimexist(5112)
value = 5112

[State 5210, 1]
type = changeanim
trigger1 = Time = 0 && selfanimexist(5113)
value = 5113

[State 5210, 1]
type = changeanim
trigger1 = Time = 0
trigger1 = !selfanimexist(5111)
trigger1 = !selfanimexist(5112)
trigger1 = !selfanimexist(5113)
value = 5110

[State 5240, ChangeState]
type = Selfstate
triggerall = alive = 1
trigger1 = time = 200
value = 5120

[State 5240, ChangeState]
type = Selfstate
triggerall = alive = 0
trigger1 = time = 200
value = 5150
;-------------------------------------------------------------------------------
[Statedef 2470]
type    = S
movetype= H
physics = N
velset = 0,0

[State 1500,]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5000, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
value = 5430

[State 5380, Explod]
type = Explod
trigger1 = time = 5
anim = 8101
pos = -10,-20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 9

[State 5380, Explod]
type = Explod
trigger1 = time = 5
anim = 8102
pos = -10,-20
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = -1

[State 5380, Pause]
type = Pause
trigger1 = time = [2,10]
time = 1
movetime = 1
ignorehitpause = 1

[State 5380, EnvShake]
type = EnvShake
trigger1 = time = 0
time = 20
freq = 100
ampl = -4

[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 2475
;---------------------------------------------------------------------------
[Statedef 2475]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1500,]
type = NotHitBy
trigger1 = 1
value = SCA

[State 2120]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 52, 1]
type = VelSet
trigger1 = time = 0
x = -1.4
y = -15

[State 52, 2]
type = Veladd
trigger1 = time >= 2
y = .5

[State 1830]
type = ChangeAnim2
Trigger1 = Time = 0
value = 2470

[State 1830]
type = SelfState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 5100

