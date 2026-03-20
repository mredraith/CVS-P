;KOTE NAGE
[Statedef 1000]
type = S
movetype = A
physics = S
anim = 1000
juggle = 10
poweradd = 100
velset = 0
ctrl = 0

[State 1410, hit]
type = ChangeState
trigger1 = enemy,stateno = 1456
trigger1 = prevstateno = 1405
value = 1407

[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1,0

[State 240, pos]
type = Posadd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
trigger3 = AnimElem = 5
x = 10

[State 220, 2]
type = HitDef
trigger1 = animelem = 5, = 1
attr = S, ST
damage = 0,0
animtype = medium
hitflag = MAF
guardflag = MA
sparkno = -1 +0*(var(33):=0)
guard.sparkno = -1 +0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=40), var(36):=-50
hitsound = S2,800
guardsound = -1 +0*(var(32):=0)
pausetime = 12,13
ground.hittime = 17
guard.hittime = (17) - 6
ground.type = high
ground.slidetime = 17
ground.velocity = -12.3
air.velocity = -3,-4
getpower = 25,25
givepower = 16,16

[State 220, 3]
type = ChangeState
trigger1 = movehit
trigger1 = AnimTime = 0
value = 1005

[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 1001

[Statedef 1001]
type = S
movetype = A
physics = S
anim = 1001
velset = 0
ctrl = 0

[State 240, pos]
type = Posadd
trigger1 = AnimElem = 2
x = 9

[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1005] ; THE throw
type = S
movetype = A
physics = S
anim = 1005
velset = 0
ctrl = 0

[State 1005, witdh]
type = width
trigger1 = 1
value = 30,50

[State 1005, target]
type = TargetState
trigger1 = time = 0
value = 1006

[State 1005, bind]
type = TargetBind
trigger1 = animelem = 1
pos = 10,0

[State 1005, bind]
type = TargetBind
trigger1 = animelem = 6
pos = -20,-32

[State 1005, bind]
type = TargetBind
trigger1 = animelem = 7
pos = -40,-19

[State 1005, bind]
type = TargetBind
trigger1 = animelem = 8
pos = -60,0

[State 240, pos]
type = Posadd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 10
trigger5 = AnimElem = 11
x = -9

[State 240, pos]
type = Posadd
trigger1 = AnimElem = 9
x = -14

[State 240, pos]
type = Posadd
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
x = 15

[State 1005, turn]
type = Turn
trigger1 = animtime = 0

[State 1005, snd]
type = Playsnd
trigger1 = animelem = 6
value = 1000,0 ;Kote Nage desu

[State 1005, snd]
type = Playsnd
trigger1 = animelem = 8
value = 7,4

[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1006]
type = A
movetype = H
physics = N
poweradd = 0
velset = 0
ctrl = 0
facep2 = 1
sprpriority = 2

[State 1006, anim]
type = changeanim2
trigger1 = time = 0
value = 1006

[State 1006, life]
type = lifeadd
trigger1 = animelem = 5
value = -120

[State 1006, state]
type = Velset
trigger1 = animelem = 5, > 0
x = 2

[State 1006, state]
type = ChangeState
trigger1 = time = 27
value = 9042

[Statedef 1007]
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
x = 4

[State 816, vel]
type = Velset
trigger1 = time < 2
y = -4

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
;---------------------------------------------------------------------------
;
[Statedef 9042]
type = A
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1000, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 9042, 1]
type = velset
trigger1 = Time = 0
x = 10

[State 9042, 1]
type = ChangeAnim2
trigger1 = Time = 0
trigger1 = !SelfAnimExist(5161)
value = 9042

[State 9042, 1]
type = ChangeAnim
trigger1 = SelfAnimExist(5101)
trigger1 = SelfAnimExist(5161)
trigger1 = Time < 24
value = 5101

[State 9042, 1]
type = ChangeAnim
trigger1 = Time = 24
trigger1 = anim = 5101
value = 5161

[State 9042, 1]
type = velmul
trigger1 = Time < 28
x = .9

[State 9042, 1]
type = velset
trigger1 = Time = 28
x = 0

[State 9042, 1]
type = SelfState
trigger1 = Time = 34
value = 5110

[Statedef 1407] ;Hinako missed her throw
type = A
;movetype = H
physics = N
velset = 0,0
anim = 5035

[State 816, nothitby]
type = Nothitby
trigger1 = 1
value = SCA

[State 816, vel]
type = Velset
trigger1 = 1
x = -4

[State 816, vel]
type = Velset
trigger1 = time < 2
y = -6

[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 5,2



[State 865, 2]
type = VelAdd
trigger1 = time > 1
y = .5

[State 865, 4]
type = ChangeAnim
trigger1 = Time = 10
value = 5050

[State 1407, life]
type = Lifeadd
trigger1 = time = 1
value = -100

[State 1407, state]
type = Changestate
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 5100


;YORIGIRI
[Statedef 1100]
type = S
movetype = I
physics = S
anim = 1100
juggle = 10
poweradd = 100
velset = 0
ctrl = 0

[State 1000, NotHitBy]
type = NotHitBy
trigger1 = Time = [0,31]
value = SCA

[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1,0

[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1100,0

[State 240, pos]
type = Posadd
trigger1 = AnimElem = 8
trigger2 = AnimElem = 9
x = 10

[State 1000, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 9
movetype = A

[State 220, 2]
type = HitDef
trigger1 = animelem = 9, = 3
attr = S, ST
damage = 0,0
animtype = medium
hitflag = MAF
guardflag = -1
sparkno = -1
guard.sparkno = -1
sparkxy = -5,-50
hitsound = S2,800
guardsound = -1
pausetime = 0,0
ground.hittime = 17
guard.hittime = (17) - 6
ground.type = high
ground.slidetime = 17
ground.velocity = 0
air.velocity = -3,-4
fall = 1
getpower = 25,25
givepower = 16,16

[State 220, 3]
type = ChangeState
trigger1 = movehit
trigger1 = AnimTime = 0
value = 1105

[State 1005, target]
type = TargetState
trigger1 = movehit
value = 1110
ignorehitpause = 1

[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 1101

[Statedef 1101]
type = S
movetype = A
physics = S
anim = 1101
velset = 0
ctrl = 0

[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1100,2

[State 240, pos]
type = Posadd
trigger1 = AnimElem = 2
x = 9

[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1105] ; THE throw
type = S
movetype = A
physics = S
anim = 1105
velset = 0
ctrl = 0
sprpriority = 7



[State 1005, target]
type = TargetState
trigger1 = time = 0
value = 1110

[State 1005, bind]
type = TargetBind
trigger1 = time = 0
pos = 60,0

[State 1005, bind]
type = TargetBind
trigger1 = time = 3
pos = 57,0

[State 1005, bind]
type = TargetBind
trigger1 = time = 7
pos = 40,0

[State 1005, bind]
type = TargetBind
trigger1 = time = 11
pos = 30,0

[State 240, pos]
type = Posadd
trigger1 = AnimElem = 2
x = 10

[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 1106

[Statedef 1106]
type = S
movetype = A
physics = S
anim = 1106
velset = 0
ctrl = 0

[State 1005, target]
type = TargetState
trigger1 = time = 0
value = 1111

[State 1005, bind]
type = TargetBind
trigger1 = 1
pos = 50,0

[State 240, pos]
type = Velset
trigger1 = 1
x = 7

[State 240, Step Sound]
type = PlaySnd
trigger1 = (AnimElem = 1 || AnimElem = 8)
value = 100,1

[State 220, 3]
type = ChangeState
trigger1 = FrontEdgeDist < 50
trigger2 = Time = 300 ;In case of bug or an infinite look-like stage
value = 1107

[Statedef 1107]
type = S
movetype = A
physics = S
anim = 1107
velset = 0,0
ctrl = 0

[State 1000, EnvColor]
type = EnvColor
trigger1 = time = 0
value = 255,255,255
time = 1
under = 1

[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1100,1

[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2,5

[State 1005, target]
type = TargetState
trigger1 = time = 0
value = 1112

[State 197, quake]
type = EnvShake
trigger1 = AnimElem = 1
time = 12
ampl = 4
freq = 70

[State 1006, Spark]
type = helper
trigger1 = animelem = 1
helpertype = normal
stateno = ifelse(moveguarded, 8001, 8012)
ID = 8000
name = "Spark"
postype = p1
pos = 40,-60
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1
sprpriority = 9

[State 1006, Counter FX]
type = helper
trigger1 = movecontact = 1 && numtarget && var(9)
trigger1 = !(target, hitshakeover)
helpertype = normal
stateno = 8290
ID = 8290
name = "Counter FX"
postype = p1
pos = ifelse(p2dist x < 0, 0, ifelse(p2dist x < 20, ceil(p2dist x), 20)), -32
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 1108

[Statedef 1108]
type    = A
physics = N
ctrl = 0
anim = 105
sprpriority = 1

[State 105, 1]
type = VelSet
trigger1 = Time = 0
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 105, 1]
type = Veladd
trigger1 = Time > 0
x = .3
y = .75

[State 1108, Jump Snd]
type = PlaySnd
trigger1 = animelem = 1
value = 0,4

[State 105, 3]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 1109

[Statedef 1109]
type = S
movetype = A
physics = S
anim = 1108
velset = 0,0
ctrl = 0

[State 1000, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 52, Landing Sound]
type = PlaySnd
trigger1 = Time = 0
value = 0,2

[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1110]
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
value = 1110

[State 1006, state]
type = ChangeState
trigger1 = AnimTime = 0 ;debug
value = 1111

[Statedef 1111]
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
value = 1110

[State 1006, state]
type = ChangeState
trigger1 = time = 300 ;debug
value = 1112

[Statedef 1112]
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
value = 1110

[State 1006, life]
type = lifeadd
trigger1 = animelem = 1
value = -150

[State 1006, state]
type = ChangeState
trigger1 = AnimTime = 0
value = 1113

[Statedef 1113]
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
x = -4

[State 816, vel]
type = Velset
trigger1 = time < 2
y = -4

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

;KAKE NAGE
[Statedef 1200]
type = S
movetype = A
physics = S
anim = 1200
juggle = 10
poweradd = 100
velset = 0
ctrl = 0

[State 220, 2]
type = HitDef
trigger1 = time = 0
attr = S, ST
damage = 0,0
animtype = medium
hitflag = M
guardflag = P
sparkno = -1
guard.sparkno = -1
hitsound = -1
guardsound = -1
pausetime = 0,0
p1stateno = 1205
fall = 1
getpower = 25,25
givepower = 16,16

[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1205] ; THE throw
type = S
movetype = A
physics = S
anim = 1205
velset = 0
ctrl = 0

[State 1005, witdh]
type = width
trigger1 = 1
value = 30,50

[State 1005, snd]
type = Playsnd
trigger1 = animelem = 1
value = s2,800



[State 1005, target]
type = TargetState
trigger1 = time = 0
value = 1206

[State 1005, bind]
type = TargetBind
trigger1 = animelem = 1
pos = 30,0

[State 1005, bind]
type = TargetBind
trigger1 = animelem = 3
pos = 20,0

[State 1005, bind]
type = TargetBind
trigger1 = animelem = 4
pos = 3,-59

[State 1005, bind]
type = TargetBind
trigger1 = animelem = 5
pos = -10,-63

[State 1005, bind]
type = TargetBind
trigger1 = animelem = 6
pos = -30,-53

[State 1005, bind]
type = TargetBind
trigger1 = animelem = 7
pos = -50,-44

[State 1005, bind]
type = TargetBind
trigger1 = animelem = 8
pos = -70,-30

[State 1005, bind]
type = TargetBind
trigger1 = animelem = 9
pos = -90,0

[State 240, pos]
type = Posadd
trigger1 = AnimElem = 14
trigger2 = AnimElem = 15
trigger3 = AnimElem = 16
x = -8

[State 1005, turn]
type = Turn
trigger1 = animtime = 0

[State 1005, snd]
type = Playsnd
trigger1 = animelem = 6
value = 1200,0 ;Kake Nage desu

[State 1005, snd]
type = Playsnd
trigger1 = animelem = 7
value = 7,3

[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1206]
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
value = 1206

[State 1006, life]
type = lifeadd
trigger1 = animtime = 0
value = -150

[State 1006, state]
type = ChangeState
trigger1 = AnimTime = 0
value = 1207

[Statedef 1207]
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
x = 4.5

[State 816, vel]
type = Velset
trigger1 = time < 2
y = -5

[State 865, 2]
type = VelAdd
trigger1 = time > 1
y = .5

[State 865, 4]
type = ChangeAnim2
trigger1 = Time = 0
value = 1207

[State 865, 5]
type = SelfState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 5100

;TSUKI OTOSHI
[Statedef 1300]
type = S
movetype = A
physics = S
anim = 1300
poweradd = 100
velset = 0
juggle = 10
ctrl = 0

[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 13
value = 4,3

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1300,0

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 13
value = 1300,1

[State 240, pos]
type = Posadd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 6
x = 8

[State 240, pos]
type = Posadd
trigger1 = AnimElem = 5
x = 4

[State 1000, NotHitBy]
type = NotHitBy
trigger1 = Time = [0,3]
value = SCA

[State 1200, ]
type = ReversalDef
trigger1 = time = [0,8]
reversal.attr = SCA,AA
numhits = 0
pausetime = 10,12
sparkno = 55
hitsound = f5,5
ID = 1155

[State 1000, PosAdd]
type = PosAdd
triggerall = Numtarget(1155)
trigger1 = Enemynear,Movereversed = 1
x = Ifelse(Gametime%2=0,1,-1)
y = 0
ignorehitpause = 1
persistent = 1

[State 1000, MoveHitReset]
type = MoveHitReset
triggerall = Numtarget(1155)
trigger1 = Enemynear,Movereversed = 1
ignorehitpause = 1
persistent = 1

[State 220, 2]
type = HitDef
trigger1 = animelem = 3
attr = S, SA
damage = 80,10
animtype = medium
hitflag = MAF
guardflag = MA
pausetime = 5,15
ground.hittime = 17
guard.hittime = (17) - 6
ground.type = high
ground.slidetime = 17
ground.velocity = 0
air.velocity = 0,-4
air.fall = 1
getpower = 25,25
givepower = 16,16
ground.cornerpush.veloff = 0
yaccel = .5
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=-69
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 220, 2]
type = HitDef
trigger1 = animelem = 14
attr = S, SA
damage = 40,10
animtype = hard
hitflag = MAF
guardflag = HA
pausetime = 12,12
ground.type = low
ground.slidetime = 20
ground.hittime  = 20
guard.hittime = (20) - 6
ground.velocity = -5
guard.velocity = -11
air.velocity = -3,15
airguard.velocity = -3,-5
air.animtype = back
air.hittime = 12
air.fall = 1
fall = 1
fall.recover = 0
getpower = 25,25
givepower = 16,16
yaccel = .5
ground.cornerpush.veloff = 0
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=-69
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;TSUKI OTOSHI 2
[Statedef 1350]
type = S
movetype = A
physics = S
anim = 1350
poweradd = 100
velset = 0
juggle = 10
ctrl = 0

[State 1000, PosAdd]
type = PosAdd
trigger1 = animelem = 2
trigger2 = animelem = 7
trigger3 = animelem = 21
x = 5

[State 1000, PosAdd]
type = PosAdd
trigger1 = animelem = 3
trigger2 = animelem = 8
trigger3 = animelem = 11
trigger4 = animelem = 12
trigger5 = animelem = 24
x = 7

[State 1000, PosAdd]
type = PosAdd
trigger1 = animelem = 6
trigger2 = animelem = 16
x = 15

[State 1000, PosAdd]
type = PosAdd
trigger1 = animelem = 9
x = 7

[State 1000, PosAdd]
type = PosAdd
trigger1 = animelem = 13
x = -5


[State 1000, PosAdd]
type = PosAdd
trigger1 = animelem = 14
trigger2 = animelem = 15
x = 10

[State 1000, PosAdd]
type = PosAdd
trigger1 = animelem = 18
trigger2 = animelem = 19
trigger3 = animelem = 20
x = 8

[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = animelem = 3
trigger3 = animelem = 8
value = S400,0
channel = 6

[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 15
value = S315,0
channel = 6

[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
trigger2 = animelem = 3
trigger3 = animelem = 8
value = S1,2

[State 100, PlaySnd]
type = PlaySnd
trigger1 = animelem = 15
value = S1,3

[State 200, ƒqƒbƒg’è‹`]
type = HitDef
trigger1 = AnimElem = 2
attr = S, SA
damage = 27,7
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,12
ground.type = High
ground.slidetime = 20
ground.hittime = 19
guard.hittime = (19) - 6
ground.velocity = 0
guard.velocity = 0
air.velocity = 0,-5
air.type = High
air.hittime = 12
air.fall = 1
air.juggle = 8
ground.cornerpush.veloff = 0
getpower = 25,25
givepower = 16,16
yaccel = .5
hitsound = -1 + 0*(var(31):=1)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=66), var(36):=-71
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 200, ƒqƒbƒg’è‹`]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
damage = 27,7
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,12
ground.type = High
ground.slidetime = 20
ground.hittime = 19
guard.hittime = (19) - 6
ground.velocity = 0
guard.velocity = 0
air.velocity = 0,-5
air.type = High
air.hittime = 12
air.fall = 1
air.juggle = 8
ground.cornerpush.veloff = 0
getpower = 25,25
givepower = 16,16
yaccel = .5
hitsound = -1 + 0*(var(31):=1)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=66), var(36):=-71
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 200, ƒqƒbƒg’è‹`]
type = HitDef
trigger1 = AnimElem = 9
attr = S, SA
damage = 27,7
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,12
ground.type = High
ground.slidetime = 20
ground.hittime = 19
guard.hittime = (19) - 6
ground.velocity = 0
guard.velocity = 0
air.velocity = 0,-5
air.type = High
air.hittime = 12
air.fall = 1
air.juggle = 8
ground.cornerpush.veloff = 0
getpower = 25,25
givepower = 16,16
yaccel = .5
hitsound = -1 + 0*(var(31):=1)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=66), var(36):=-71
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 200, ƒqƒbƒg’è‹`]
type = HitDef
trigger1 = AnimElem = 17
attr = S, SA
damage = 39,10
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10,12
ground.type = High
ground.slidetime = 20
ground.hittime = 19
guard.hittime = (19) - 6
ground.velocity = -5,-6
guard.velocity = -12
air.velocity = -5,-6
air.type = High
air.hittime = 12
air.fall = 1
air.juggle = 8
fall = 1
air.fall = 1
ground.cornerpush.veloff = 0
getpower = 25,25
givepower = 16,16
yaccel = .5
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=-69
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48


[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;TSUKIDASHI EX
[Statedef 1500]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=-500
facep2=1

[State 1050, Anim]
type=changeanim
trigger1=!time
value=1500

[State 1050, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500


[State 1050, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1050, Custom Combo Juggle Points Reset]
type = varset
trigger1 = !time && var(20)
var(15) = 0
ignorehitpause = 1

[State 1050, CC Reset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1050, ExFX]
type = varset
trigger1 = !time
var(25) = 44

[State 1050, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = 20,-70
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1050, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
channel = 1

[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 11
trigger3 = AnimElem = 16
trigger4 = AnimElem = 21
value = 1,3

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1500,0

[State 240, pos]
type = Posadd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 5
trigger3 = AnimElem = 6
trigger4 = AnimElem = 7
trigger5 = AnimElem = 8
trigger6 = AnimElem = 13
trigger7 = AnimElem = 14
trigger8 = AnimElem = 15
trigger9 = AnimElem = 16
trigger10 = AnimElem = 17
trigger11 = AnimElem = 18
trigger12 = AnimElem = 23
x = 8

[State 220, 2]
type = HitDef
trigger1 = AnimElem = 6
trigger2 = AnimElem = 16
attr = S, SA
damage = 20,10
animtype = medium
hitflag = MAF
guardflag = MA
pausetime = 5,13
ground.hittime = 17
guard.hittime = (17) - 6
ground.type = high
ground.slidetime = 17
ground.velocity = 0
air.velocity = -3,-4
air.fall = 1
getpower = 25,25
givepower = 16,16
hitsound = -1 + 0*(var(31):=1)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=66), var(36):=-71
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 220, 2]
type = HitDef
trigger1 = AnimElem = 11
trigger2 = AnimElem = 21
attr = S, SA
damage = 20,10
animtype = medium
hitflag = MAF
guardflag = MA
pausetime = 5,13
ground.hittime = 17
guard.hittime = (17) - 6
ground.type = high
ground.slidetime = 17
ground.velocity = 0
air.velocity = -3,-4
air.fall = 1
getpower = 25,25
givepower = 16,16
hitsound = -1 + 0*(var(31):=1)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=66), var(36):=-71
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 1501
[Statedef 1501]
type = S
movetype = A
physics = S
anim = 1501
velset = 0
juggle = 10
ctrl = 0

[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 9
value = 1,3

[State 240, pos]
type = Posadd
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
trigger6 = AnimElem = 9
x = 8

[State 240, pos]
type = Posadd
trigger1 = AnimElem = 13
trigger2 = AnimElem = 14
trigger3 = AnimElem = 15
trigger4 = AnimElem = 16
x = 9

[State 220, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
damage = 40,10
animtype = medium
hitflag = MAF
guardflag = MA
pausetime = 5,13
ground.hittime = 17
guard.hittime = (17) - 6
ground.type = high
ground.slidetime = 17
ground.velocity = 0
air.velocity = -3,-4
air.fall = 1
getpower = 25,25
givepower = 16,16
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=66), var(36):=-71
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 220, 2]
type = HitDef
trigger1 = AnimElem = 9
attr = S, SA
damage = 50,10
animtype = medium
hitflag = MAF
guardflag = MA
pausetime = 5,13
ground.hittime = 17
guard.hittime = (17) - 6
ground.type = high
ground.slidetime = 17
ground.velocity = -4,-6
air.velocity = -4,-6
fall = 1
yaccel = .5
getpower = 25,25
givepower = 16,16
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=66), var(36):=-71
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Cho Zutsuki 1
[Statedef 1600]
type = S
movetype = A
physics = S
anim = 1600
poweradd = 100
velset = 0
juggle = 10
ctrl = 0


[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,5

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 192,1


[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 1601

[Statedef 1601]
type = A
movetype = A
physics = N
anim = 1601
velset = 0
juggle = 10
ctrl = 0

[State 1600, pos]
type = Velset
trigger1 = 1
x = 4

[State 1600, pos]
type = Velset
trigger1 = time < 2
y = -3

[State 1600, pos]
type = Veladd
trigger1 = time > 1
y = .5

[State 220, 2]
type = HitDef
trigger1 = time = 0
attr = S, SA
damage = 60,10
animtype = medium
hitflag = MAF
guardflag = MA
pausetime = 11,15
ground.hittime = 17
guard.hittime = (17) - 6
ground.type = high
ground.slidetime = 17
ground.velocity = -4,-7
air.velocity = -4,-7
fall = 1
yaccel = .5
air.juggle = 10
getpower = 25,25
givepower = 16,16
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=66), var(36):=-71
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48


[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 1602

[Statedef 1602]
type = S
movetype = A
physics = S
anim = 1602
velset = 0,0
juggle = 10
ctrl = 0

[State 1600, pos]
type = Velset
trigger1 = time < 2
x = 4

[State 1600, pos]
type = Posset
trigger1 = time = 0
y = 0

[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 7,4

[State 1600, pos]
type = Posadd
trigger1 = animelem = 4
x = 21

[State 220, 2]
type = HitDef
trigger1 = animelem = 1
attr = S, SA
damage = 60,10
animtype = medium
hitflag = MAF
guardflag = MA
pausetime = 11,15
ground.hittime = 17
guard.hittime = (17) - 6
ground.type = high
ground.slidetime = 17
ground.velocity = -4,-7
air.velocity = -4,-7
fall = 1
yaccel = .5
air.juggle = 10
getpower = 25,25
givepower = 16,16
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=66), var(36):=-25
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48


[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 1603

[Statedef 1603]
type = S
movetype = A
physics = S
anim = 5121
velset = 0,0
ctrl = 0

[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Cho Zutsuki 2
[Statedef 1605]
type = S
movetype = A
physics = S
anim = 1600
poweradd = 100
velset = 0
juggle = 10
ctrl = 0



[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,5

[State 200, 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 192,1

[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 1606

[Statedef 1606]
type = A
movetype = A
physics = N
anim = 1601
velset = 0
juggle = 10
ctrl = 0

[State 1600, pos]
type = Velset
trigger1 = 1
x = 6

[State 1600, pos]
type = Velset
trigger1 = time < 2
y = -3

[State 1600, pos]
type = Veladd
trigger1 = time > 1
y = .5

[State 220, 2]
type = HitDef
trigger1 = time = 0
attr = S, SA
damage = 70,10
animtype = medium
hitflag = MAF
guardflag = MA
pausetime = 11,15
ground.hittime = 17
guard.hittime = (17) - 6
ground.type = high
ground.slidetime = 17
ground.velocity = -4,-7
air.velocity = -4,-7
fall = 1
yaccel = .5
air.juggle = 10
getpower = 25,25
givepower = 16,16
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=66), var(36):=-71
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 1607

[Statedef 1607]
type = S
movetype = A
physics = S
anim = 1602
velset = 5,0
juggle = 10
ctrl = 0

[State 1600, pos]
type = Velset
trigger1 = time > 15
x = 0

[State 1600, pos]
type = Velset
trigger1 = time < 2
x = 5

[State 1600, pos]
type = Veladd
trigger1 = time > 1 && time < 16
x = .4

[State 1600, pos]
type = Posset
trigger1 = time = 0
y = 0

[State 1600, pos]
type = Posadd
trigger1 = animelem = 4
x = 21

[State 220, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 7,4

[State 220, 2]
type = HitDef
trigger1 = animelem = 1
attr = S, SA
damage = 70,10
animtype = medium
hitflag = MAF
guardflag = MA
pausetime = 11,15
ground.hittime = 17
guard.hittime = (17) - 6
ground.type = high
ground.slidetime = 17
ground.velocity = -4,-7
air.velocity = -4,-7
fall = 1
yaccel = .5
air.juggle = 10
getpower = 25,25
givepower = 16,16
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=66), var(36):=-71
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 1603

;-------------------------------------------------------------------------------
;Earthquake 2
[Statedef 1615]
type     = S
movetype = A
physics  = S
juggle   = 0
poweradd = 100
velset   = 0,0
anim     = 1615
ctrl     = 0
sprpriority = 5

[State 1000, NotHitBy]
type = NotHitBy
trigger1 = Time = [0,10]
value = SCA

[State 1000, EnvShake]
type = EnvShake
trigger1 = animelem = 17
time = 20
ampl = -4
freq = 200

[State 1000, Explod]
type = Explod
trigger1 = AnimElem = 17
anim = 8100
pos = 20,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = -1

[State 1000, Explod]
type = Explod
trigger1 = AnimElem = 17
anim = 8102
pos = 20,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 9

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S192,1

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 17
value = S820,1
volumescale = 100

[State 1005, Hitdef]
type = HitDef
triggerall = AnimElem = 17
trigger1 = p2statetype = S
attr = S, ST
damage = 120
hitflag = H
guardflag = L
animtype = Back
ground.animtype = Trip
pausetime = 7,12
sparkno = -1
guard.sparkno = 50
hitsound = -1
guardsound = -1
ground.velocity = -1.5,-5
air.velocity = -1.5,-5
fall = 1
fall.recovertime = 35
hitonce = 0
yaccel = .55
getpower = 25,25
givepower = 16,16
ground.cornerpush.veloff = 0

[State 220, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;PUNCH ZERO COUNTER
[STATEDEF 2900]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 0
faceP2 = 1

[STATE 2900,POSSET]
type=posset
trigger1=!time
y=0

[STATE 2900,ANIM]
type=changeanim
trigger1=!time
value=2900

[STATE 2900,DUST]
type = helper
trigger1 = Animelem=3
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[STATE 2900,WIDTH]
type = Width
trigger1 = 1
edge = 30,0

[STATE 2900,NOT HIT BY]
type = NotHitBy
trigger1 = Anim = 2900
trigger1 = AnimElemNo(0) = [1,5]
value = SCA
time = 1

[STATE 2900,HIT]
type=hitdef
trigger1= !var(16) && (var(15)<15 || var(20))
trigger1= !Time
ID = 2900
attr = S,SA
hitflag = MAF
guardflag = M
damage = ceil(ifelse(fvar(11) * 100 < 7, 7, fvar(11) * 100)), 7
getpower = 0
givepower = 0, 0
pausetime = ceil(13*(2-(var(20)>0))/2),ceil(13*(2-(var(20)>0))/2)
guard.pausetime = ceil(10*(2-(var(20)>0))/2),ceil(10*(2-(var(20)>0))/2)
animtype = Heavy
air.animtype = Heavy
fall.animtype = Diagup
ground.type = hIGH
air.type = Low
ground.hittime = 18
guard.hittime = (18) - 6
ground.slidetime = 18
air.hittime = 120
ground.velocity = -3,-7.5
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2,-7
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = S-1 + 0*(var(33):=8013)
guard.sparkno = S-1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=92), var(36):=-77
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120

[STATE 2900,IDLE]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[STATE 2900,CHANGE STATE]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
 
;KICK ZERO COUNTER
[STATEDEF 2910]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 0

[STATE 2910,POSSET]
type=posset
trigger1=!time
y=0

[STATE 2910,ANIM]
type=changeanim
trigger1=!time
value=2910

[STATE 2910,NOT HIT BY]
type = nothitby
trigger1 = animelemtime(6) < 0
value = SCA
time = 1
ignorehitpause = 1

[STATE 2910,WIDTH]
type = Width
trigger1 = 1
edge = 40,0

[STATE 2910,HIT]
type = hitdef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
ID = 2910
attr = S, SA
hitFlag = MAF
guardFlag = M
damage =ceil(ifelse(fvar(11) * 100 < 7, 7, fvar(11) * 100)), 7
getPower = 0, 0
givePower = 0, 0
pausetime = ceil(13*(2-(var(20)>0))/2),ceil(13*(2-(var(20)>0))/2)
guard.pausetime = ceil(10*(2-(var(20)>0))/2),ceil(10*(2-(var(20)>0))/2)
animType = Back
air.animType = Back
fall.animType = Diagup
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slideTime = 18 + 4 * var(9)
air.hitTime = 120
ground.velocity = -6,-5.5
ground.cornerPush.velOff = 0
guard.velocity = -6
guard.cornerPush.velOff = 0
air.velocity = -6.46, -4.25
air.cornerPush.velOff = 0
yaccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = S-1 + 0*(var(33):=8013)
guard.sparkno = S-1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=76), var(36):=-83
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[STATE 2910,IDLE]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
movetype = I

[STATE 2910,CHANGE STATE]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1