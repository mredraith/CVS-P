; _________________________________________
;| Character by Author Name                |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;
;NORMAL MOVES=
;

;---------------------------------------------------------------------------
; Standing Light Punch
[Statedef 200]
type    = S
physics = S
movetype= A
ctrl = 0
velset = 0,0
sprpriority = 1
poweradd = 0
facep2 = 1

[State 200, Anim]
type=changeanim
trigger1=!time
value=200

[State 200,Posset]
type=posset
trigger1=!time
y=0

[State 200, Snd]
type=playsnd
trigger1= !time
value=1,0
channel=1

[State 200, Hit]
type = hitdef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
forcenofall = !var(20)
attr = S, NA
hitflag = MAF
guardflag = M
damage = 35,15;ceil(ifelse(fvar(11) * 26 < 7, 7, fvar(11) * 26)), 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
guard.pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 12 + 2 * var(9)
guard.hittime = (12 + 2 * var(9)) - 6
ground.slidetime = 12 + 2 * var(9)
air.hittime = 120
ground.velocity = -3;ifelse(var(20), -3.48, -6.35)
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -3.48, -6.35)
guard.cornerpush.veloff = 0
air.velocity = -1.52, -5.76
air.cornerPush.velOff = 0
yAccel = 0.4
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 0)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 139), var(36) := -73
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48

[State 200, Type]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I

[State 200, 5]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Far Medium Punch
[Statedef 210]
type    = S
physics = S
movetype= A
ctrl = 0
velset = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 210, Anim]
type=changeanim
trigger1=!time
value=210

[State 210,Posset]
type=posset
trigger1=!time
y=0

[State 210, Snd]
type=playsnd
trigger1 = animelem = 1 && random<500
value = 4, 0
channel = 0

[State 210, Snd]
type=playsnd
trigger1= animelem=2
value=1,1
channel=1

[State 210, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !Time
forcenofall = !var(20)
attr = S,NA
hitflag = MAF
guardflag = M
damage = 35,15;ceil(ifElse(fvar(11) * 61 < 7, 7, fvar(11) * 61)), 0
getpower = ifelse(!var(13),144,72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
guard.pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 15 + 3*var(9)
guard.hittime = (15 + 3*var(9)) - 6
ground.slidetime = 15 + 3*var(9)
air.hittime = 120
ground.velocity = -3;ifElse(var(20), -3.05, -6.27), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.05, -6.27)
guard.cornerPush.velOff = 0
air.velocity = -2.66, -5.64
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=1)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=157), var(36) := -80
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 210, Type]
type=statetypeset
trigger1= animelemtime(5)>=0
movetype=I

[State 210, 5]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Close Medium Punch
[Statedef 215]
type    = S
physics = S
movetype= A
ctrl = 0
velset = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 215, Anim]
type=changeanim
trigger1=!time
value=215

[State 215,Posset]
type=posset
trigger1=!time
y=0

[State 215, Snd]
type=playsnd
trigger1 = animelem = 1 && random < 500
value = 4, 0
channel = 0

[State 215, Snd]
type=playsnd
trigger1= animelem=2
value=1,1
channel=1

[State 215, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !time
forcenofall = !var(20)
attr = S,NA
hitflag = MAF
guardflag = M
damage = ceil(ifElse(fvar(11) * 57 < 7, 7, fvar(11) * 57)), 0
getpower = ifelse(!var(13),144,72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
guard.pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 15 + 3*var(9)
guard.hittime = (15 + 3*var(9)) - 6
ground.slidetime = 15 + 3*var(9)
air.hittime = 120
ground.velocity = ifElse(var(20), -3.05, -6.27), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.05, -6.27)
guard.cornerPush.velOff = 0
air.velocity = -2.66, -5.64
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=1)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=97), var(36) := -59
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 215, Type]
type=statetypeset
trigger1= animelemtime(5)>=0
movetype=I

[State 215, 5]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Heavy Punch
[Statedef 220]
type = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
facep2 = 1

[State 220, Anim]
type=changeanim
trigger1=!time
value=220

[State 220,Posset]
type=posset
trigger1=!time
y=0

[State 220, Snd]
type = playsnd
trigger1 = animelem = 3 && random < 750
value = 4, 1
channel = 0

[State 220, Snd]
type=playsnd
trigger1= animelem=2
value=1,2
channel=1

[State 220, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !time
forcenofall = !var(20)
attr = S,NA
hitflag = MAF
guardflag = M
damage = ceil(ifelse(fvar(11)*94<7, 7, fvar(11)*94)), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 21 + 4 * var(9)
guard.hittime = (18 + 4 * var(9)) - 6
ground.slidetime = 21	 + 4 * var(9)
air.hittime = 120
ground.velocity = ifElse(var(20), -3.87, -8.36)
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.87, -8.36)
guard.cornerPush.velOff = 0
air.velocity = -3.8, -6.23
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=115), var(36):=-85
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 220, Type]
type=statetypeset
trigger1= animelemtime(10)>=0
movetype=I

[State 220, 5]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Kick
[Statedef 230]
type    = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
facep2 = 1

[State 230, Anim]
type=changeanim
trigger1=!time
value=230

[State 230,Posset]
type=posset
trigger1=!time
y=0

[State 230, Snd]
type=playsnd
trigger1= !time
value=1,3
channel=1

[State 230, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !Time
forcenofall = !var(20)
attr = S,NA
hitflag = MAF
guardflag = M
damage = 35,15;ceil(ifelse(fvar(11)*30<7, 7, fvar(11)*30)), 0
getpower = 72*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
guard.pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 12 + 2*var(9)
guard.hittime = (12 + 2*var(9)) - 6
ground.slidetime = 12 + 2*var(9)
air.hittime = 120
ground.velocity = -3;ifElse(var(20), -2.59, -4.83), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.59, -4.83)
guard.cornerPush.velOff = 0
air.velocity = -1.52, -5.64
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=3)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8010)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=95), var(36):=-25
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 200, Type]
type=statetypeset
trigger1= animelemtime(5)>=0
movetype=I

[State 230, 5]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Kick
[Statedef 240]
type    = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 240, Anim]
type=changeanim
trigger1=!time
value=240

[State 240,Posset]
type=posset
trigger1=!time
y=0

[State 0, Width]
type = Width
trigger1 = animelemtime(10) < 0
edge = -75, -8
player = -75, -8

[State 240,Posset]
type = posadd
trigger1 = animelem = 2
trigger2 = animelem = 8
trigger3 = animelem = 9
trigger3 = animelem = 10
x = 10 * const(size.xscale)

[State 240, Snd]
type=playsnd
trigger1 = animelem = 1 && random < 500
value = 4, 2
channel = 0

[State 240, Snd]
type=playsnd
trigger1= animelem=2
value=1,4
channel=1

[State 240, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !time
forcenofall = !var(20)
attr = S,NA
hitflag = MAF
guardflag = M
damage = ceil(ifelse(fvar(11)*63<7, 7, fvar(11)*63)), 0
getpower = ifelse(!var(13),144,72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
guard.pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18 + 3*var(9)
guard.hittime = (18 + 3*var(9)) - 6
ground.slidetime = 18 + 3*var(9)
air.hittime = 120
ground.velocity = ifElse(var(20), -3.05, -6.27), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.05, -6.27)
guard.cornerPush.velOff = 0
air.velocity = -2.66, -5.64
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=4)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=25), var(36):=-83
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 200, Type]
type=statetypeset
trigger1= animelemtime(5)>=0
movetype=I

[State 0, ChangeState]
type = ChangeState
trigger1 = command = "highjump" && (movecontact || movereversed)
value = 40

[State 240, 5]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;---------------------------------------------------------------------------
; B.M.K.
[Statedef 245]
type    = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 245, Anim]
type=changeanim
trigger1=!time
value=245

[State 245,Posset]
type=posset
trigger1=!time
y=0

[State 245, Width]
type = Width
trigger1 = animelemtime(10) < 0
edge = -75, -8
player = -75, -8

[State 245, Snd]
type=playsnd
trigger1 = animelem = 1 && random < 500
value = 4, 2
channel = 0

[State 245, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 4
channel = 1

[State 245, Hit]
type=hitdef
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1 = !time
forcenofall = !var(20)
attr = S,NA
hitflag = MAF
guardflag = M
damage = ceil(ifelse(fvar(11)*80<7, 7, fvar(11)*80)), 0
getpower = ifelse(!var(13),144,72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
guard.pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 15 + 3*var(9)
guard.hittime = (15 + 3*var(9)) - 6
ground.slidetime = 15 + 3*var(9)
air.hittime = 120
ground.velocity = ifElse(var(20), -3.05, -6.27), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.05, -6.27)
guard.cornerPush.velOff = 0
air.velocity = -3.8, -5.64
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=4)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -1 + 0*(var(35):=90), var(36):=-60
palfx.time = 12*var(9)
palfx.add = 255, 255, 255
palfx.sinadd= -255, -255, -255, 48

;[State 245, Type]
;type=statetypeset
;trigger1= animelemtime(6)>=0
;movetype=I

[State 245, 5]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Kick
[Statedef 250]
type = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 250, Anim]
type=changeanim
trigger1=!time
value=250

[State 250,Posset]
type=posset
trigger1=!time
y=0

[State 250, Snd]
type=playsnd
trigger1 = animelem = 2 && random < 750
value = 4, 3
channel = 0

[State 250, Snd]
type=playsnd
trigger1= animelem=3
value=1,5
channel=1

[State 250, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !Time
forcenofall = !var(20)
attr = S,NA
hitflag = MAF
guardflag = M
damage = ceil(ifelse(fvar(11)*87<7, 7, fvar(11)*87)), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 18 + 4*var(9)
guard.hittime = (18 + 4*var(9)) - 6
ground.slidetime = 18 + 4*var(9)
air.hittime = 120
ground.velocity = ifElse(PrevStateNo = 700, -5.16, ifElse(var(20), -3.87, -8.36)), ifElse(PrevStateNo = 700, -5.25, 0)
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yaccel = 0.58
fall = ifElse(PrevStateNo = 700, 1, 0)
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=211), var(36):=-65
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 200, Type]
type=statetypeset
trigger1= animelemtime(7)>=0
movetype=I

[State 250, 5]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Punch
[Statedef 400]
type = C
physics = C
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 400, Anim]
type=changeanim
trigger1=!time
value=400

[State 400,Posset]
type=posset
trigger1=!time
y=0

[State 400, Snd]
type=playsnd
trigger1= !time
value=1,0
channel=1

[State 400, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !Time
forcenofall = !var(20)
attr = C,NA
hitflag = MAF
guardflag = M
damage = ceil(ifelse(fvar(11)*23<7, 7, fvar(11)*23)), 0
getpower = 72*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
guard.pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 12 + 2*var(9)
guard.hittime = (12 + 2*var(9)) - 6
ground.slidetime = 12 + 2*var(9)
air.hittime = 120
ground.velocity = ifElse(var(20), -2.23, -4.83), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.23, -4.83)
guard.cornerPush.velOff = 0
air.velocity = -1.5, -5.64
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=0)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8010)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=94), var(36):=-37
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 400, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 400, 5]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Punch
[Statedef 410]
type = C
physics = C
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 410, Anim]
type = changeanim
trigger1 = !time
value = 410

[State 410,Posset]
type = posset
trigger1 = !time
y = 0

[State 210, Snd]
type=playsnd
trigger1 = animelem = 2 && random < 500
value = 4, 0
channel = 0

[State 410, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 1
channel = 1

[State 410, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !Time
forcenofall = !var(20)
attr = C,NA
hitflag = MAF
guardflag = M
damage = ceil(ifelse(fvar(11)*67<7, 7, fvar(11)*67)), 0
getpower = ifelse(!var(13),144,72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
guard.pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 12 + 3*var(9)
guard.hittime = (12 + 3*var(9)) - 6
ground.slidetime = 12 + 3*var(9)
air.hittime = 120
ground.velocity = ifElse(var(20), -2.91, -6.27), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.91, -6.27)
guard.cornerPush.velOff = 0
air.velocity = -2.66, -7.05
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=1)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=89), var(36):=-107
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 410, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 410, 5]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Punch
[Statedef 420]
type = C
physics = C
moveType = A
anim = 420
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd =  18 * !var(20)

[State 420, Width]
type = Width
trigger1 = animelem = 2
edge = floor (50 * const(size.xscale)), floor (10 * const(size.xscale))

[State 420, Width]
type = Width
trigger1 = animelem = 3
edge = floor (60 * const(size.xscale)), floor (10 * const(size.xscale))

[State 420, Width]
type = Width
trigger1 = animelem = 4
edge = floor (80 * const(size.xscale)), 0

[State 420, Width]
type = Width
trigger1 = animelemtime(5) >= 0
edge = floor (100 * const(size.xscale)), floor (-15 * const(size.xscale))

[State 420,Posset]
type = posset
trigger1 = !time
y = 0

[State 420, Snd]
type = playsnd
trigger1 = animelem = 3 && random < 750
value = 4, 1
channel = 0

[State 420, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 2
channel = 1

[State 420, Hit]
type=hitdef
triggerall= !var(16) && (var(15)<1 || var(20))
trigger1 = !time
forcenofall = !var(20)
attr = C,NA
hitflag = MAF
guardflag = M
damage = ceil(ifelse(fvar(11)*33<7, 7, fvar(11)*33)), 0
getpower = ifelse(!var(13), 72, 24)*!var(20), 12*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4*var(9)
guard.hittime = (18 + 4*var(9)) - 6
ground.slidetime = 18 + 4*var(9)
air.hittime = 120
ground.velocity = ifElse(var(20), -2.9, -6.27), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.9, -6.27)
guard.cornerPush.velOff = 0
air.velocity = -3.8, -5.64
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):= 126), var(36):=-69
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
forceStand = 1

[State 420, 5]
type = ChangeState
trigger1 = !AnimTime
value = 423;421
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Punch
[Statedef 421]
type = C
physics = C
moveType = A
anim = 421
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 421, Width]
type = Width
trigger1 = 1
edge = floor (110 * const(size.xscale)), floor (-15 * const(size.xscale))

[State 421, Hit]
type=hitdef
triggerall= !var(16) && (var(15)<1 || var(20))
trigger1 = !time
forcenofall = !var(20)
attr = C,NA
hitflag = MAF
guardflag = M
damage = ceil(ifelse(fvar(11)*33<7, 7, fvar(11)*33)), 0
getpower = ifelse(!var(13), 72, 24)*!var(20), 12*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4*var(9)
guard.hittime = (18 + 4*var(9)) - 6
ground.slidetime = 18 + 4*var(9)
air.hittime = 120
ground.velocity = ifElse(var(20), -2.9, -6.27), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.9, -6.27)
guard.cornerPush.velOff = 0
air.velocity = -3.8, -5.64
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=132), var(36):=-61
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 421, 5]
type = ChangeState
trigger1 = !AnimTime
value = 422


;---------------------------------------------------------------------------
; Crouching Strong Punch
[Statedef 422]
type = C
physics = C
moveType = A
anim = 422
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 422, Width]
type = Width
trigger1 = 1
edge = floor (115 * const(size.xscale)), floor (-15 * const(size.xscale))

[State 422, Hit]
type=hitdef
triggerall= !var(16) && (var(15)<1 || var(20))
trigger1 = !time
forcenofall = !var(20)
attr = C,NA
hitflag = MAF
guardflag = M
damage = ceil(ifelse(fvar(11)*33<7, 7, fvar(11)*33)), 0
getpower = ifelse(!var(13), 72, 24)*!var(20), 12*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18 + 4*var(9)
guard.hittime = (18 + 4*var(9)) - 6
ground.slidetime = 18 + 4*var(9)
air.hittime = 120
ground.velocity = ifElse(var(20), -2.9, -6.27), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.9, -6.27)
guard.cornerPush.velOff = 0
air.velocity = -3.8, -5.64
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=140), var(36):=-43
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
forceStand = 1

[State 422, 5]
type = ChangeState
trigger1 = !AnimTime
value = 423

;---------------------------------------------------------------------------
; Crouching Strong Punch
[Statedef 423]
type = C
physics = C
moveType = I
anim = 423
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 423, 5]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Kick
[Statedef 430]
type = C
physics = C
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 430, Anim]
type=changeanim
trigger1=!time
value=430

[State 430,Posset]
type=posset
trigger1=!time
y=0

[State 430, Snd]
type=playsnd
trigger1= !time
value=1,3
channel=1

[State 430, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1=  !Time
forcenofall = !var(20)
attr = C,NA
hitflag = MAF
guardflag = L
damage = ceil(ifelse(fvar(11)*23<7, 7, fvar(11)*23)), 0
getpower = 72*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
guard.pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 12 + 2*var(9)
guard.hittime = (12 + 2*var(9)) - 6
ground.slidetime = 12 + 2*var(9)
air.hittime = 120
ground.velocity = ifElse(var(20), -2.23, -4.83), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.23, -4.83)
guard.cornerPush.velOff = 0
air.velocity = -1.52, -5.64
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=3)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8010)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=110), var(36):=-22
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 430, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
moveType = I

[State 430, 5]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; Crouching Medium Kick
[Statedef 440]
type = C
physics = C
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 440, Anim]
type=changeanim
trigger1=!time
value=440

[State 440,Posset]
type=posset
trigger1=!time
y=0

[State 440, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 500
value = 4, 2
channel = 0

[State 440, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1, 4
channel = 1

[State 440, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !Time
forcenofall = !var(20)
attr = C,NA
hitflag = MAF
guardflag = L
damage = ceil(ifelse(fvar(11)*56<7, 7, fvar(11)*56)), 0
getpower = ifelse(!var(13),144,72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
guard.pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 15 + 3*var(9)
guard.hittime = (15 + 3*var(9)) - 6
ground.slidetime = 15 + 3*var(9)
air.hittime = 120
ground.velocity = ifElse(var(20), -2.9, -6.27), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.9, -6.27)
guard.cornerPush.velOff = 0
air.velocity = -2.66, -5.64
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=4)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=118), var(36):=-18
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 440, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
movetype = I

[State 440, 5]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Strong Kick
[Statedef 450]
type = C
physics = C
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1
Anim = 450

;[State 450, StateTypeSet]
;type = StateTypeSet
;trigger1 = animElem = 6
;physics = N

[State 450]
type = VelSet
trigger1 = animElemTime(6) = 1
x = 12

[State 450,Posset]
type=posset
trigger1=!time
y=0

[State 450, Snd]
type=playsnd
trigger1 = animelem = 2 && random < 750
value = 4, 3
channel = 0

[State 450, Snd]
type=playsnd
trigger1= animelem=2
value=1,5
channel=1

[State 450, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !Time
ID = 450
attr = C,NA
hitflag = MAF
guardflag = L
damage = 65,30;ceil(ifelse(fvar(11)*91<7, 7, fvar(11)*91)), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Trip
air.type = Trip
ground.hittime = 18 + 4*var(9)
guard.hittime = (18 + 4*var(9)) - 6
ground.slidetime = 18 + 4*var(9)
air.hittime = 120
ground.velocity = -6,-5;-1.14, -4.7
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.87, -8.36)
guard.cornerPush.velOff = 0
air.velocity = -1.14, -4.7
air.cornerPush.velOff = 0
yAccel = 0.677
fall = 1
fall.recover = 0
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=83), var(36):=-10
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 450, 5]
type = ChangeState
trigger1 = !AnimTime
value = 453;451

;---------------------------------------------------------------------------
[Statedef 451]
type = C
physics = N
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
Anim = 451

[State 450]
type = VelSet
trigger1 = time = 0
x = 12

[State 451, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !Time
ID = 450
attr = C,NA
hitflag = MAF
guardflag = L
damage = ceil(ifelse(fvar(11)*91<7, 7, fvar(11)*91)), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Trip
air.type = Trip
ground.hittime = 18 + 4*var(9)
guard.hittime = (18 + 4*var(9)) - 6
ground.slidetime = 18 + 4*var(9)
air.hittime = 120
ground.velocity = -1.14, -4.7
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.87, -8.36)
guard.cornerPush.velOff = 0
air.velocity = -1.14, -4.7
air.cornerPush.velOff = 0
yAccel = 0.677
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=83), var(36):=-10
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 451, 5]
type = ChangeState
trigger1 = !AnimTime
value = 452

;---------------------------------------------------------------------------
[Statedef 452]
type = C
physics = N
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
Anim = 452

[State 450]
type = VelSet
trigger1 = time = 0
x = 12

[State 452, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !Time
ID = 450
attr = C,NA
hitflag = MAF
guardflag = L
damage = ceil(ifelse(fvar(11)*91<7, 7, fvar(11)*91)), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Trip
air.type = Trip
ground.hittime = 18 + 4*var(9)
guard.hittime = (18 + 4*var(9)) - 6
ground.slidetime = 18 + 4*var(9)
air.hittime = 120
ground.velocity = -1.14, -4.7
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.87, -8.36)
guard.cornerPush.velOff = 0
air.velocity = -1.14, -4.7
air.cornerPush.velOff = 0
yAccel = 0.677
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=83), var(36):=-10
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 452, 5]
type = ChangeState
trigger1 = !AnimTime
value = 453

;---------------------------------------------------------------------------
[Statedef 453]
type = C
physics = C
moveType = I
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
Anim = 453

[State 453]
type = PosAdd
trigger1 = animElem = 4
trigger2 = animElem = 5
trigger3 = animElem = 6
x = 10 * const(size.xscale)

[State 453]
type = PosAdd
trigger1 = animElem = 7
x = 20 * const(size.xscale)

[State 452, 5]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl=1

;---------------------------------------------------------------------------
; Jump Light Punch
[Statedef 600]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 1
powerAdd = 0

[State 600, Anim]
type=changeanim
trigger1=!time
value=600

[State 600, Snd]
type=playsnd
trigger1= animelem=2
value=1,0
channel=1

[State 600, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1 = AnimElem = 3
forcenofall = !var(20)
attr = A,NA
hitflag = MAF
guardflag = HA
damage = ceil(ifelse(fvar(11)*30<7, 7, fvar(11)*30)), 0
getpower = 72*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
guard.pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 2*var(9)
guard.hittime = (12 + 2*var(9)) - 6
ground.slidetime = 12 + 2*var(9)
air.hittime = 120
airguard.ctrltime = 12
ground.velocity = ifElse(var(20), -1.93, -4.18), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -1.93, -4.18)
guard.cornerPush.velOff = 0
air.velocity = -1.52, -5.54
air.cornerPush.velOff = 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=0)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8010)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=74), var(36):=-25
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 620, Type]
type=statetypeset
trigger1 = animelemtime(4) >= 0
movetype = I

[State 600, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 620, End]
type=changestate
trigger1= pos y>-vel y
value=52

;---------------------------------------------------------------------------
; Jump Medium Punch
[Statedef 610]
type = A
physics  = N
moveType = A
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 610, Anim]
type=changeanim
trigger1=!time
value=610

[State 610, Snd]
type = playsnd
trigger1 = animelem = 1 && random < 500
value = 4, 0
channel = 0

[State 610, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1, 1
channel = 1

[State 610, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !time
forcenofall = !var(20)
attr = A,NA
hitflag = MAF
guardflag = HA
damage = ceil(ifelse(fvar(11)*63<7, 7, fvar(11)*63)), 0
getpower = ifelse(!var(13),144,72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
guard.pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = High
ground.hittime = 12 + 3*var(9)
guard.hittime = (12 + 3*var(9)) - 6
ground.slidetime = 12 + 3*var(9)
air.hittime = 120
airguard.ctrltime = 14
ground.velocity = ifElse(var(20), -2.55, -5.51), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.55, -5.51)
guard.cornerPush.velOff = 0
air.velocity = -2.66, -5.54
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=1)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=114), var(36):=-102 
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 610, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
movetype = I

[State 610, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 610, End]
type=changestate
trigger1 = pos y > - vel y
value=52

;---------------------------------------------------------------------------
; Jump Strong Punch
[Statedef 620]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 620, Anim]
type = changeanim
trigger1 = !time
value = 620

[State 620, Snd]
type = playsnd
trigger1 = animelem = 2 && random < 750
value = 4, 4
channel = 0

[State 620, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1, 2
channel = 1

[State 620, Hit]
type=hitdef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = animelem = 3
forcenofall = !var(20)
attr = A,NA
hitflag = MAF
guardflag = HA
damage = ceil(ifelse(fvar(11)*84<7, 7, fvar(11)*84)), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 4*var(9)
guard.hittime = (12 + 4*var(9)) - 6
ground.slidetime = 12 + 4*var(9)
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = ifElse(var(20), -2.9, -6.27), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.9, -6.27)
guard.cornerPush.velOff = 0
air.velocity = -3.8, -5.64
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=128), var(36):=-55
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 620, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 620, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 620, End]
type=changestate
trigger1= pos y>-vel y
value=52

;---------------------------------------------------------------------------
; Jump Light Kick
[Statedef 630]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 1
powerAdd = 0

[State 630, Anim]
type=changeanim
trigger1=!time
value=630

[State 630, Snd]
type=playsnd
trigger1= animelem=2
value=1,3
channel=1

[State 630, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1 = AnimElem = 3
forcenofall = !var(20)
attr = A,NA
hitflag = MAF
guardflag = HA
damage = ceil(ifelse(fvar(11)*35<7, 7, fvar(11)*35)), 0
getpower = 72*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
guard.pausetime = ifelse(var(20), 4, 8), ifelse(var(20), 4, 8)
animtype = Light
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 2*var(9)
guard.hittime = (12 + 2*var(9)) - 6
ground.slidetime = 12 + 2*var(9)
air.hittime = 120
airguard.ctrltime = 12
ground.velocity = ifElse(var(20), -2.23, -4.82), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.23, -4.82)
guard.cornerPush.velOff = 0
air.velocity = -1.52, -5.64
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=3)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8010)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=35), var(36):=-49
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 630, Type]
type=statetypeset
trigger1= animelemtime(5)>=0
movetype=I

[State 630, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 620, End]
type=changestate
trigger1= pos y>-vel y
value=52


;---------------------------------------------------------------------------
; Jump Medium Kick
[Statedef 640]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 640, Anim]
type=changeanim
trigger1=!time
value=640

[State 640, Snd]
type=playsnd
trigger1 = animelem = 2 && random < 500
value = 4, 2
channel = 0

[State 640, Snd]
type=playsnd
trigger1 = animelem = 2
value = 1, 4
channel = 1

[State 640, Hit]
type=hitdef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
forcenofall = !var(20)
attr = A,NA
hitflag = MAF
guardflag = HA
damage = ceil(ifelse(fvar(11)*56<7, 7, fvar(11)*56)), 0
getpower = ifelse(!var(13),144,72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
guard.pausetime = ifelse(var(20), 5, 10), ifelse(var(20), 5, 10)
animtype = Medium
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 3*var(9)
guard.hittime = (12 + 3*var(9)) - 6
ground.slidetime = 12 + 3*var(9)
air.hittime = 120
airguard.ctrltime = 14
ground.velocity = ifElse(var(20), -2.55, -5.51), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.55, -5.51)
guard.cornerPush.velOff = 0
air.velocity = -2.66, -5.64
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=4)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=91), var(36):=-101
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 640, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
movetype = I

[State 640, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 640, End]
type=changestate
trigger1= pos y>-vel y
value=52

;---------------------------------------------------------------------------
; Jump Strong Kick
[Statedef 650]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 650, Anim]
type=changeanim
trigger1=!time
value=650

[State 650, Snd]
type=playsnd
trigger1 = animelem = 2 && random < 750
value = 4, 5
channel = 0

[State 650, Snd]
type=playsnd
trigger1= animelem=3
value=1,5
channel=1

[State 650, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= animelem=4
forcenofall = !var(20)
attr = A,NA
hitflag = MAF
guardflag = HA
damage = ceil(ifelse(fvar(11)*98<7, 7, fvar(11)*98)), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = High
air.type = Low
ground.hittime = 12 + 4*var(9)
guard.hittime = (12 + 4*var(9)) - 6
ground.slidetime = 12 + 4*var(9)
air.hittime = 120
airguard.ctrltime = 16
ground.velocity = ifElse(var(20), -3.34, -7.22), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.34, -7.22)
guard.cornerPush.velOff = 0
air.velocity = -3.8, 0
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=30), var(36):=0
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 650, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(8) >= 0
moveType = I

[State 650, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 650, End]
type=changestate
trigger1= pos y>-vel y
value=52

;Throw Attempt=
[Statedef 800]
type=S
physics=S
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=18*!var(20)
facep2=1

[State 800, Anim]
type=changeanim
trigger1=!time
value=800

[State 800,Posset]
type=posset
trigger1=!time
y=0

[State 800, Button]
type=varset
trigger1= !time && !AILevel
var(10)= (command="kk")

[State 800, Button AI]
type=varset
trigger1= !time && AILevel
var(10)= (random<500)

[State 800, Tech Hit]
type = varset
trigger1 = 1
var(19) = 0

[State 800, Tech Hit]
type = varset
trigger1 = numenemy
trigger1 = enemynear, statetype != A
trigger1 = (enemynear, stateno = [0, 999]) && (enemynear, stateno != [100, 119]) && (enemynear, stateno != [200, 799])
var(19) = 7

[State 800, Guard Dist]
type=attackdist
trigger1= 1
value=0

[State 0, VarSet]
type = VarSet
trigger1 = 1
v = 14
value = ifelse(command = "holdback", 1, 0)

[State 800, Throw 1]
type = Hitdef
trigger1 = AnimElem = 2
trigger1 = !var(38)
attr = S, NT
priority = 3,Miss
getpower = 35 * !var(20)
givepower = 0
hitflag = M-
numhits = 0
sparkno = -1
p1stateno = ifelse ((!AIlevel && command = "holdback") || (AIlevel && frontedgedist < backedgedist), 830,810)
hitsound = s2, 800
fall = 1
fall.recover = 0

[State 800, Throw 2]
type = Hitdef
trigger1 = AnimElem = 2 && var(10)
trigger1 = !var(38)
attr = S, NT
priority = 3,Miss
getpower = 35 * !var(20)
givepower = 0
hitflag = M-
numhits = 0
sparkno = -1
p1stateno = 850
hitsound = s2, 800
fall = 1
fall.recover = 0

[State 800, Snd]
type=playsnd
trigger1= animelem=4
value=800,0
channel=0

[State 800, Snd]
type=playsnd
trigger1= animelem=2
value=1,0
channel=1

[State 800, Type]
type=statetypeset
trigger1= animelemtime(3)>=0
movetype=I

[State 800, End]
type=changestate
trigger1= !animtime
value=0
ctrl=1

;KUNG FU THRUST=
[Statedef 810]
type = S
movetype = A
physics = S
anim = 810
velset = 0, 0
poweradd = 0
sprpriority = -1

[State 810, Safety]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 810, More Safety]
type = NotHitBy
trigger1 = 1
value = SCA

[State 810, Throw Escape]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback")
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 810, Throw Escape]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 810, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 820

[State 810, Target Facing]
type = TargetFacing
trigger1 = Time <= 1
value = -1

[State 810, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 810, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 4,6

[State 810, Front Arm]
type = helper
trigger1 = AnimElem = 2 && !numhelper(810)
helpertype = normal
stateno = 811
ID = 810
name = "Front Arm For Throw"
postype = p1
pos = floor(0 * const(size.xscale)), floor(-0 * const(size.yscale))
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
ownpal = 0

[State 810, 1st Swing Snd]
type = PlaySnd
trigger1 = AnimElem = 12
value = 1,2
channel = 1

[State 810, 2nd Swing Snd]
type = PlaySnd
trigger1 = AnimElem = 19
value = 1,5
channel = 1

[State 810, Width]
type = Width
trigger1 = AnimElem = 2
edge = floor (100 * const(size.xscale)),0

[State 810, Width]
type = Width
trigger1 = AnimElem = 15
edge = 0, floor (20 * const(size.xscale))

[State 810, Width]
type = Width
trigger1 = AnimElemTime(15) > 0 && AnimElemTime(15) <= 2
edge = 0, floor (20 * const(size.xscale))

[State 810, Width]
type = Width
trigger1 = AnimElemTime(15) > 2 && AnimElemTime(16) < 0
edge = 0, floor (60 * const(size.xscale))

[State 810, Width]
type = Width
trigger1 = AnimElem = 16
edge = 0, floor (80 * const(size.xscale))

[State 810, Width]
type = Width
trigger1 = AnimElem = 19
edge = floor (50 * const(size.xscale)),0

[State 810, Width]
type = Width
trigger1 = AnimElemTime(20) > 0 && AnimElemTime(20) <= 2
edge = floor (80 * const(size.xscale)),0

[State 810, Width]
type = Width
trigger1 = AnimElemTime(20) > 2 && AnimElemTime(21) < 0
edge = floor (115 * const(size.xscale)),0

[State 810, Width]
type = Width
trigger1 = AnimElem = 21
edge = floor (150 * const(size.xscale)),0

[State 810, Width]
type = Width
trigger1 = AnimElem = 22
edge = floor (170 * const(size.xscale)),0

[State 810, Bind <12]
type = TargetBind
trigger1 = AnimElemtime(12) < 0
trigger1 = NumTarget
pos = ceil(92 * const(size.xScale)), ceil(0 * const(size.yScale))

[State 810, Bind 12]
type = TargetBind
trigger1 = AnimElem = 12
trigger1 = NumTarget
pos = ceil(98 * const(size.xScale)), ceil(5 * const(size.yScale))

[State 810, Bind 13]
type = TargetBind
trigger1 = AnimElem = 13
trigger1 = NumTarget
pos = ceil(107 * const(size.xScale)), ceil(0 * const(size.yScale))

[State 810, Bind 14]
type = TargetBind
trigger1 = AnimElem = 14
trigger1 = NumTarget
pos = ceil(104 * const(size.xScale)), ceil(-50 * const(size.yScale))

[State 810, Bind 15]
type = TargetBind
trigger1 = AnimElem = 15
trigger1 = NumTarget
pos = ceil(64 * const(size.xScale)), ceil(-100 * const(size.yScale))

[State 810, Bind 16]
type = TargetBind
trigger1 = AnimElem = 16
trigger1 = NumTarget
pos = ceil(-65 * const(size.xScale)), ceil(-124 * const(size.yScale))

[State 810, Bind 17]
type = TargetBind
trigger1 = AnimElem = 17
trigger1 = NumTarget
pos = ceil(-50 * const(size.xScale)), ceil(-200 * const(size.yScale))

[State 810, Bind 18]
type = TargetBind
trigger1 = AnimElem = 18
trigger1 = NumTarget
pos = ceil(-56 * const(size.xScale)), ceil(-196 * const(size.yScale))

[State 810, Bind 19]
type = TargetBind
trigger1 = AnimElem = 19
trigger1 = NumTarget
pos = ceil(-43 * const(size.xScale)), ceil(-196 * const(size.yScale))

[State 810, Bind 20]
type = TargetBind
trigger1 = AnimElem = 20
trigger1 = NumTarget
pos = ceil(-31 * const(size.xScale)), ceil(-60 * const(size.yScale))

[State 810, Bind 21]
type = TargetBind
trigger1 = AnimElem = 21
trigger1 = NumTarget
pos = ceil(140 * const(size.xScale)), ceil(-80 * const(size.yScale))

[State 810, Bind 22]
type = TargetBind
trigger1 = AnimElem = 22
trigger1 = NumTarget
pos = ceil(190 * const(size.xScale)), ceil(-10 * const(size.yScale))

[State 810, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(22) = 0
time = 14
freq = 120
ampl = 4

[State 810, Hit Sound]
type = PlaySnd
trigger1 = AnimElem = 22
value = F7, 2
channel = 2

[State 810, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 22
value = floor(ifElse(130 * fvar(11) < 7, -7, -100 * fvar(11)))

[State 810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 22
value = 35

[State 810, PowerAdd]
type = PowerAdd
trigger1 = NumTarget && AnimElem = 22 && !var(20)
value = 70

[State 810, VarAdd]
type = VarAdd
trigger1 = NumTarget && AnimElem = 22
var(13) = 1

[State 810, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 22
var(15) = 1
ignoreHitPause = 1

[State 810, Juggle]
type = VarSet
trigger1 = NumTarget && AnimElem = 22
var(16) = 1
ignoreHitPause = 1

[State 810, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 23
value = 821

[State 810, State End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;
[Statedef 820]
type = A
movetype = H
physics = N
ctrl = 0
sprpriority = 1

[State 820, On Ground]
type = PosSet
trigger1 = !Time
y = 0

[State 820, Screenbound]
type = ScreenBound
Trigger1 = 1
value = 1
movecamera = 0,0

[State 820, ChangeAnim2]
type = ChangeAnim2
Trigger1 = !Time
value = 820

;
[Statedef 821]
type    = A
movetype= H
physics = N
velset = 0,0

[State 821, Muteki]
type = NotHitBy
trigger1 = 1
value = SCA

[state 821]
type = changeanim
trigger1 = !time
value = 5080

[state 821]
type = changeanim
trigger1 = AnimElem = 2 || time >= 6
value = 5090

[State 821, Velocity]
type = Velset
trigger1 = !Time 
x = -3
y = -7

[State 821, Gravity]
type = Veladd
trigger1 = Time >= 0
y = 0.5

[state 821, Velocity]
type = VelSet
trigger1 = vel y > 0
trigger1 = pos y > -vel y
x = -2.0

[State 816, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 821, End]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 5100

;KUNG FU THRUST=
[Statedef 830]
type = S
movetype = A
physics = S
anim = 830
velset = 0, 0
poweradd = 0
sprpriority = -1

[State 830, Safety]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 830, More Safety]
type = NotHitBy
trigger1 = 1
value = SCA

[State 830, Throw Escape]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback")
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 830, Throw Escape]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 830, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 840

[State 830, Target Facing]
type = TargetFacing
trigger1 = Time <= 1
value = -1

[State 830, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 810, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 4,6

[State 830, Front Arm]
type = helper
trigger1 = AnimElem = 2 && !numhelper(830)
helpertype = normal
stateno = 811
ID = 830
name = "Front Arm For Throw"
postype = p1
pos = floor(0 * const(size.xscale)), floor(-0 * const(size.yscale))
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
ownpal = 0

[State 810, 1st Swing Snd]
type = PlaySnd
trigger1 = AnimElem = 12
value = 1,2
channel = 1

[State 810, Width]
type = Width
trigger1 = AnimElem = 2
edge = floor (100 * const(size.xscale)),0

[State 810, Width]
type = Width
trigger1 = AnimElem = 15
edge = 0, floor (20 * const(size.xscale))

[State 810, Width]
type = Width
trigger1 = AnimElemTime(15) > 0 && AnimElemTime(15) <= 2
edge = 0, floor (20 * const(size.xscale))

[State 810, Width]
type = Width
trigger1 = AnimElemTime(15) > 2 && AnimElemTime(16) < 0
edge = 0, floor (60 * const(size.xscale))

[State 810, Width]
type = Width
trigger1 = AnimElem = 16
edge = 0, floor (80 * const(size.xscale))

[State 810, Bind <12]
type = TargetBind
trigger1 = AnimElemtime(12) < 0
trigger1 = NumTarget
pos = ceil(92 * const(size.xScale)), ceil(0 * const(size.yScale))

[State 810, Bind 12]
type = TargetBind
trigger1 = AnimElem = 12
trigger1 = NumTarget
pos = ceil(98 * const(size.xScale)), ceil(5 * const(size.yScale))

[State 810, Bind 13]
type = TargetBind
trigger1 = AnimElem = 13
trigger1 = NumTarget
pos = ceil(107 * const(size.xScale)), ceil(0 * const(size.yScale))

[State 810, Bind 14]
type = TargetBind
trigger1 = AnimElem = 14
trigger1 = NumTarget
pos = ceil(104 * const(size.xScale)), ceil(-50 * const(size.yScale))

[State 810, Bind 15]
type = TargetBind
trigger1 = AnimElem = 15
trigger1 = NumTarget
pos = ceil(64 * const(size.xScale)), ceil(-100 * const(size.yScale))

[State 810, Bind 16]
type = TargetBind
trigger1 = AnimElem = 16
trigger1 = NumTarget
pos = ceil(41 * const(size.xScale)), ceil(-122 * const(size.yScale))

[State 810, Damage 5]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 17
value = floor(ifElse(130 * fvar(11) < 7, -7, -100 * fvar(11)))

[State 810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 17
value = 35

[State 810, PowerAdd]
type = PowerAdd
trigger1 = NumTarget && AnimElem = 17 && !var(20)
value = 70

[State 810, VarAdd]
type = VarAdd
trigger1 = NumTarget && AnimElem = 17
var(13) = 1

[State 810, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 17
var(15) = 1
ignoreHitPause = 1

[State 810, Juggle]
type = VarSet
trigger1 = NumTarget && AnimElem = 17
var(16) = 1
ignoreHitPause = 1

[State 810, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 17
value = 841

[State 0, Turn]
type = Turn
trigger1 = AnimElemTime(23) = 0 

[State 810, State End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;
[Statedef 840]
type = A
movetype = H
physics = N
ctrl = 0
sprpriority = 1

[State 840, ChangeAnim2]
type = ChangeAnim2
Trigger1 = !Time
value = 840

[State 840, On Ground]
type = PosSet
trigger1 = !Time
y = 0

[State 840, Screenbound]
type = ScreenBound
Trigger1 = 1
value = 1
movecamera = 0,0

;
[Statedef 841]
type    = A
movetype= H
physics = N
velset = 0,0

[State 841, ChangeAnim]
type = ChangeAnim
trigger1 = animelem = 12
trigger1 = anim != 5061
value = 5061

[State 841, Muteki]
type = NotHitBy
trigger1 = 1
value = SCA

[State 841, Velocity]
type = Velset
trigger1 = !Time 
x = 7
y = -7

[State 841, Gravity]
type = Veladd
trigger1 = Time >= 0
y = 0.5

[State 841, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[state 841, Velocity]
type = VelSet
trigger1 = vel y > 0
trigger1 = pos y > -vel y
x = 2.0

[State 841, End]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 5100

;KUNG FU THRUST=
[Statedef 850]
type = S
movetype = A
physics = S
anim = 850
velset = 0, 0
poweradd = 0
sprpriority = -1

[State 850, Safety]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 850, More Safety]
type = NotHitBy
trigger1 = 1
value = SCA

[State 850, Throw Escape]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback")
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 850, Throw Escape]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 850, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 860

[State 850, Target Facing]
type = TargetFacing
trigger1 = Time <= 1
value = -1

[State 850, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 850, PlaySnd]
type = PlaySnd
trigger1 = anim = 850
trigger1 = animelem = 3
value = 4,0

[State 850, Front Arm]
type = helper
trigger1 = anim = 850
trigger1 = AnimElemTime(4) = 0 && !numhelper(850)
helpertype = normal
stateno = 811
ID = 850
name = "Front Arm For Throw"
postype = p1
pos = floor(0 * const(size.xscale)), floor(-0 * const(size.yscale))
size.xscale = const(size.xscale)
size.yscale = const(size.yscale)
ownpal = 0

[State 850, Width]
type = Width
trigger1 = anim = 850
trigger1 = AnimElem = 2
edge = floor (45 * const(size.xscale)), floor (25 * const(size.xscale))

[State 850, Width]
type = Width
trigger1 = (anim = 850 && AnimElemTime(3) >= 0) || anim = 851
edge = floor (60 * const(size.xscale)), floor (25 * const(size.xscale))

[State 820, Timer Start]
type = VarSet
trigger1 = !Time
var(44) = 125

[State 820, Timer End (Round Over)]
type = VarSet
trigger1 = RoundState != 2
var(44) = 0

[State 820, Mashing]
type = VarSet
trigger1 = !Time
var(42) = 0

[State 820, Mashing]
type = VarSet
trigger1 = !Time
var(12) = 0

[State 820, Timer Countdown]
type = VarAdd
trigger1 = anim = 851
trigger1 = HitCount
var(44) = -1

[State 820, Timer]
type = VarAdd
triggerAll = anim = 851
triggerAll = NumTarget && HitCount
trigger1 = Target, command = "x" || Target, command = "y" || Target, command = "z"
trigger2 = Target, command = "a" || Target, command = "b" || Target, command = "c"
trigger3 = Target, command = "up" || Target, command= "down" || Target, command = "back" || Target, command = "fwd"
var(44) = -2

[State 820, Mashing]
type = VarSet
triggerAll = anim = 851
triggerAll = var(42) = 0
trigger1 = !AILevel && (command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z")
trigger2 = !AILevel && (command = "up" || command = "down" || command = "back" || command = "fwd")
trigger3 = AILevel && Random < 800
var(42) = 2

[State 820, Mashing Increment]
type  = VarAdd
triggerAll = anim = 851
trigger1 = var(42) = 2
var(12) = 2

[State 820, Mashing Decrement]
type = VarAdd
triggerAll = anim = 851
trigger1 = var(42) > 0
var(42) = -1

[State 820, Anim Skip]
type = ChangeAnim
triggerAll = anim = 851
triggerall = var(44) > 0
trigger1 = AnimElemTime(AnimElemNo(0)) >= 0 && AnimElemTime(6) < 0
trigger1 = AnimElemTime(AnimElemNo(0) + 1 ) >= -var(12)
trigger1 = 1 || var(12) := (var(12) + AnimElemTime(AnimElemNo(0) + 1))
value = 851
elem = AnimElemNo(0) + 1

[State 820, Anim Skip]
type = ChangeAnim
triggerAll = anim = 851
triggerAll = var(44) > 0
trigger1 = AnimElemTime(7) > 0
trigger1 = AnimElemTime(7) >= (4 - var(12))
trigger1 = 1 || var(12) := (var(12) + 4 - AnimElemTime(7))
value = 851
elem = 1

[State 850, Bind <2]
type = TargetBind
trigger1 = NumTarget
trigger1 = anim = 850
trigger1 = AnimElemtime(2) < 0
pos = ceil(30 * const(size.xScale)), ceil(0 * const(size.yScale))

[State 850, Bind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = anim = 850
trigger1 = AnimElem = 2
pos = ceil(15 * const(size.xScale)), ceil(5 * const(size.yScale))

[State 850, Bind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = anim = 850
trigger1 = AnimElem = 4
pos = ceil(12 * const(size.xScale)), ceil(-87 * const(size.yScale))

[State 850, ChangeAnim]
type = ChangeAnim
trigger1 = NumTarget
trigger1 = anim = 850 && !animtime
value = 851

[State 850, Bind anim 851]
type = TargetBind
trigger1 = NumTarget
trigger1 = anim = 851
pos = ceil(12 * const(size.xScale)), ceil(-87 * const(size.yScale))
ignorehitpause = 1

[State 850, TargetState]
type = TargetState
trigger1 = NumTarget
trigger1 = anim = 851 && animelem = 6
value = 861

[State 850, HitAdd]
type = HitAdd
trigger1 = NumTarget
trigger1 = anim = 851 && animelem = 6
value = 1

[State 820, Hit Spark]
type = Helper
trigger1 = NumTarget
trigger1 = anim = 851 && animelem = 6
helperType = Normal
stateNo = 8012
ID = 8000
name = "Spark"
posType = P1
pos = 13, -75 ;7, -92, 25, -64
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = NumTarget
trigger1 = anim = 851 && animelem = 6
value = S2,801

[State 850, HitAdd]
type = TargetLifeAdd
trigger1 = NumTarget
trigger1 = anim = 851 && animelem = 6
value = -13

[State 850, ChangeState]
type = ChangeState
triggerall = anim = 851 && !Animtime
trigger1 = var(44) <= 0
trigger2 = NumTarget
trigger2 = !(Target, Alive)
trigger3 = Time >= 170
value = 855

[State 850, ChangeState]
type = TargetState
triggerall = anim = 851 && !Animtime
trigger1 = var(44) <= 0
trigger1 = !Animtime
trigger2 = NumTarget
trigger2 = !(Target, Alive)
trigger3 = Time >= 200
value = ifelse(var(14), 862, 863)

;---------------------------------------------------------------------------
; 
[Statedef 855]
type = S
physics = N
moveType = I
ctrl = 0
sprPriority = -1
powerAdd = 0

[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = ifelse(animelemtime(9) < 0, 0, 1)

[State 855, Anim]
type=changeanim
trigger1=!time
value=852

[State 855, VelSet]
type = VelSet
trigger1 = animelem = 2
x = ifelse(var(14), 1, -1)
y = -7

[State 850, TargetState]
type = TargetState
trigger1 = animelem = 2
value = ifelse(var(14), 863, 862)

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelemtime(2) > 0
statetype = A       ;S,A,C,L
movetype = I        ;I,A,H
physics = A

[State 620, End]
type = changestate
trigger1 = pos y > -vel y
value = 52

;
[Statedef 860]
type = A
movetype = H
physics = N
ctrl = 0
sprpriority = 1

[State 860, On Ground]
type = PosSet
trigger1 = !Time
y = 0

[State 860, Screenbound]
type = ScreenBound
Trigger1 = 1
value = 1
movecamera = 0,0

[State 860, ChangeAnim2]
type = ChangeAnim2
Trigger1 = !Time
value = 860

;
[Statedef 861]
type = A
movetype = H
physics = N
ctrl = 0
sprpriority = 1

[State 860, Screenbound]
type = ScreenBound
Trigger1 = 1
value = 1
movecamera = 0,0

[State 860, ChangeAnim2]
type = ChangeAnim2
Trigger1 = !Time
value = 861

;
[Statedef 862]
type = A
movetype = I
physics = N
ctrl = 0
sprpriority = 1

[State 860, ChangeAnim2]
type = ChangeAnim2
Trigger1 = !Time
value = 862

[State 841, Muteki]
type = NotHitBy
trigger1 = 1
value = SCA

[State 821, Velocity]
type = Velset
trigger1 = !Time 
x = -1.5
y = -6

[State 821, Gravity]
type = Veladd
trigger1 = Time >= 0
y = 0.5

[State 841, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 821, End]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 5100

;
[Statedef 863]
type = A
movetype = I
physics = N
ctrl = 0
sprpriority = 1

[State 860, ChangeAnim2]
type = ChangeAnim2
Trigger1 = !Time
value = 862

[State 841, Muteki]
type = NotHitBy
trigger1 = 1
value = SCA

[State 821, Velocity]
type = Velset
trigger1 = !Time 
x = 1.5
y = -6

[State 821, Gravity]
type = Veladd
trigger1 = Time >= 0
y = 0.5

[State 841, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 821, End]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 5100

;THROW ESC'D=
[StateDef 890]
type = S
physics = N
movetype = I
anim = 5945
ctrl = 0
velset = 0,0
sprPriority = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
value = 4,4

[State 890, TargetBind]
type = TargetBind
trigger1 = !Time && NumTarget
pos = 0,0

[State 890, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 895

[State 890, TargetFacing]
type = TargetFacing
trigger1 = !Time && NumTarget
value = -1

[State 890, PosAdd]
type = PosAdd
trigger1 = !Time
x = 24

[State 890, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 890, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 890, SprPriority 1]
type = SprPriority
trigger1 = AnimElemTime(6) >= 0
value = 1

[State 890, SprPriority -1]
type = SprPriority
trigger1 = AnimElemTime(2) <= 0
value = -1

[State 890, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 890, VelSet]
type = VelSet
trigger1 = 1
x = -1.425
y = 0

[State 890, Escape Sound]
type = PlaySnd
trigger1= !Time
value = 3,0

[State 890, Throw Escape FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8000
ID = 8000
name = "Spark"
PosType = P1
pos = 0, -54
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

[State 890, End]
type = ChangeState
trigger1 = Time >= 27
value = 0
ctrl = 1

;Target Escape
[StateDef 895]
type = S
physics = N
moveType = I
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 895, ChangeAnim]
type = ChangeAnim
trigger1= !Time
value = ifElse(SelfAnimExist(5940), 5940, 130)

[State 895, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5945) && SelfAnimExist(5940)
value = 5940

[State 895, ChangeAnim]
type = ChangeAnim
trigger1= !Time && !SelfAnimExist(5945) && !SelfAnimExist(5940) && SelfAnimExist(5910)
value = 5910

[State 895, ChangeAnim]
type = ChangeAnim
trigger1 = Time >= 20 && Anim = 130
value = 140

[State 895, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 895, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 895, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 895, VelSet]
type = VelSet
trigger1 = 1
x = -1.425
y = 0

[State 895, End]
type = SelfState
trigger1 = Time >= 27
value = 0
ctrl = 1
