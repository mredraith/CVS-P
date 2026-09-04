; _________________________________________
;| Character by Author Name |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<NORMAL MOVES>========================================
;==============================================================================================

;---------------------------------------------------------------------------
; Standing Light Punch
[Statedef 200]
type = S
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
trigger1= !time && random<200
value= 4, ifElse(Random < 500, 0, 1)
channel=0

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
damage = ceil(ifelse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 0
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
ground.velocity = ifelse(var(20), -2.41, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -2.41, -4.49)
guard.cornerpush.veloff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0 * (var(31) := 0)
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 66), var(36) := -77
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
; Standing Body Blow
[Statedef 205]
type = S
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
value=205

[State 210,Posset]
type=posset
trigger1=!time
y=0

[State 210, Snd]
type=playsnd
trigger1= animelem=2 && random<350
value= 4, ifelse(random<500, 1, 2)
channel=0

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
damage = ceil(ifElse(fvar(11) * 53 < 7, 7, fvar(11) * 53)), 0
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
ground.velocity = ifElse(var(20), -3.66, -7.51), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -3.24, -7.73
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=1)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=75), var(36):=-33
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 200, Type]
type=statetypeset
trigger1= animelemtime(5)>=0
movetype=I

[State 210, 5]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Punch
[Statedef 210]
type = S
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
trigger1= animelem=2 && random<350
value= 4, ifelse(random<500, 1, 2)
channel=0

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
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
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
ground.velocity = ifElse(var(20), -3.66, -7.51), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -3.24, -7.73
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=1)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=79), var(36):=-76
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 200, Type]
type=statetypeset
trigger1= animelemtime(5)>=0
movetype=I

[State 210, 5]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Far Strong Punch
[Statedef 220]
type = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
facep2 = 1
anim = 220

[State 220,Posset]
type=posset
trigger1=!time
y=0

[State 220, Snd]
type=playsnd
trigger1= animelem=2 && random<500
value= 4, ifelse(random<500, 1, 2)
channel=0

[State 220, Snd]
type=playsnd
trigger1= animelem=2
value=1,2
channel=1

[State 40, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 2
y = 0

[State 220, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= AnimElem = 4
forcenofall = !var(20)
attr = S,NA
hitflag = MAF
guardflag = M
damage = ceil(ifelse(fvar(11)*63<7, 7, fvar(11)*63)), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
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
ground.velocity = ifElse(var(20), -4.86, -10.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -5.39, -5.65
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=62), var(36):=-66
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 200, Type]
type=statetypeset
trigger1= animelemtime(5)>=0
movetype=I

[State 220, 5]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Kick
[Statedef 230]
type = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
facep2 = 1
anim = 230

[State 230,Posset]
type=posset
trigger1=!time
y=0

[State 230, Snd]
type=playsnd
trigger1= !time && random<500
value= 4, ifelse(random<500, 0, 1)
channel=0

[State 230, Snd]
type=playsnd
trigger1= !time
value=1,3
channel=1

[State 230, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1 = AnimElem = 4
forcenofall = !var(20)
attr = S,NA
hitflag = MAF
guardflag = M
damage = ceil(ifelse(fvar(11)*35<7, 7, fvar(11)*35)), 0
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
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.41, -4.49)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=3)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8010)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=50), var(36):=-10
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
; Standing Hop Kick
[Statedef 235]
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
value=235

[State 40, Jump Sound]
type = PlaySnd
trigger1 = !AnimTime
value = ifElse((var(3) = [2,3]), 41, 40), 0

[State 40, Dust Helper]
type = Helper
trigger1 = !AnimTime
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 40, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = 1
y = 0

[State 40, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 1
y = 0

[State 40, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 1
y = 0

[State 0, VelAdd]
type = VelAdd
trigger1 = AnimTime < 26 && AnimElem <= 8
x = 0.5
y = 0

[State 40, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 3
y = 0

[State 250,Posset]
type=posset
trigger1=!time
y=0

[State 250, Snd]
type=playsnd
trigger1= animelem=3 && random<500
value= 4, ifelse(random<500, 1, 2)
channel=0

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
damage = ceil(ifelse(fvar(11)*53<7, 7, fvar(11)*53)), 0
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
ground.velocity = ifElse(PrevStateNo = 700, -6.46, ifElse(var(20), -4.86, -10.52)), ifElse(PrevStateNo = 700, -5.25, 0)
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = ifElse(PrevStateNo = 700, 1, 0)
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=70), var(36):=-75
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 200, Type]
type=statetypeset
trigger1= animelemtime(5)>=0
movetype=I

[State 250, 5]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Kick
[Statedef 240]
type = S
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

[State 240, Snd]
type=playsnd
trigger1= animelem=3 && random<350
value= 4, ifelse(random<500, 1, 2)
channel=0

[State 240, Snd]
type=playsnd
trigger1= animelem=3
value=1,4
channel=1

[State 240, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !Time
forcenofall = !var(20)
attr = S,NA
hitflag = MAF
guardflag = M
damage = ceil(ifelse(fvar(11)*42<7, 7, fvar(11)*42)), 0
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
ground.velocity = ifElse(var(20), -3.66, -7.51), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=4)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=62), var(36):=-66
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 200, Type]
type=statetypeset
trigger1= animelemtime(6)>=0
movetype=I

[State 240, 5]
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
trigger1= animelem=3 && random<500
value= 4, ifelse(random<500, 1, 2)
channel=0

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
damage = ceil(ifelse(fvar(11)*90<7, 7, fvar(11)*90)), 0
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
ground.velocity = ifElse(PrevStateNo = 700, -6.46, ifElse(var(20), -4.86, -10.52)), ifElse(PrevStateNo = 700, -5.25, 0)
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = ifElse(PrevStateNo = 700, 1, 0)
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=83), var(36):=-77
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 200, Type]
type=statetypeset
trigger1= animelemtime(6)>=0
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
trigger1= !Time && random<200
value= 4, ifelse(random<500, 0, 1)
channel=0

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
damage = ceil(ifelse(fvar(11)*21<7, 7, fvar(11)*21)), 0
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
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.41, -4.49)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=0)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8010)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=59), var(36):=-49
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 400, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
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
type=changeanim
trigger1=!time
value=410

[State 410,Posset]
type=posset
trigger1=!time
y=0

[State 410, Snd]
type=playsnd
trigger1= !time && random<350
value= 4, ifelse(random<500, 1, 2)
channel=0

[State 410, Snd]
type=playsnd
trigger1= !time
value=1,1
channel=1

[State 410, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !Time
forcenofall = !var(20)
attr = C,NA
hitflag = MAF
guardflag = M
damage = ceil(ifelse(fvar(11)*42<7, 7, fvar(11)*42)), 0
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
ground.velocity = ifElse(var(20), -3.66, -7.51), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=1)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=58), var(36):=-49
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 410, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
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
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 420, Anim]
type=changeanim
trigger1=!time
value=420

[State 420,Posset]
type=posset
trigger1=!time
y=0

[State 40, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 2
y = 0

[State 420, Snd]
type=playsnd
trigger1= !time && random<500
value= 4, ifelse(random<500, 1, 2)
channel=0

[State 420, Snd]
type=playsnd
trigger1= !time
value=1,2
channel=1

[State 420, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !Time
forcenofall = !var(20)
attr = C,NA
hitflag = MAF
guardflag = M
damage = ceil(ifelse(fvar(11)*63<7, 7, fvar(11)*63)), 0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
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
ground.velocity = ifElse(var(20), -4.86, -10.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -3.23, -7.73
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=35), var(36):=-50
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
forceStand = 1

[State 420, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
moveType = I

[State 420, 5]
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
trigger1= !time && random<200
value= 4, ifelse(random<500, 0, 1)
channel=0
[State 430, Snd]
type=playsnd
trigger1= !time
value=1,3
channel=1

[State 430, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !Time
forcenofall = !var(20)
attr = C,NA
hitflag = MAF
guardflag = L
damage = ceil(ifelse(fvar(11)*28<7, 7, fvar(11)*28)), 0
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
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.41, -4.49)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=3)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8010)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=55), var(36):=-4
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 430, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
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
type=playsnd
trigger1= animelem=2 && random<350
value= 4, ifelse(random<500, 1, 2)
channel=0

[State 440, Snd]
type=playsnd
trigger1= animelem=2
value=1,4
channel=1

[State 440, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !Time
forcenofall = !var(20)
attr = C,NA
hitflag = MAF
guardflag = L
damage = ceil(ifelse(fvar(11)*46<7, 7, fvar(11)*46)), 0
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
ground.velocity = ifElse(var(20), -3.66, -7.51), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = -1 + 0*(var(31):=4)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=62), var(36):=-7
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

[State 0, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 5
y = 0
persistent = 1
ignorehitpause = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S101,0
channel = -1
loop = 0
pan = 1
persistent = 1
ignorehitpause = 0

[State 102, Dust]
type = helper
trigger1 = animelem = 2
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 450, Anim]
type=changeanim
trigger1=!time
value=450

[State 450,Posset]
type=posset
trigger1=!time
y=0

[State 450, Snd]
type=playsnd
trigger1= animelem=2 && random<500
value= 4, ifelse(random<500, 1, 2)
channel=0

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
damage = ceil(ifelse(fvar(11)*81<7, 7, fvar(11)*81)), 0
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
ground.velocity = -1, -6.25
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -1, -8.24
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 0
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=77), var(36):=-9
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 450, TargetState]
type = TargetState
trigger1 = MoveHit && NumTarget(450)
value = 455
ID = 450
ignoreHitPause = 1
persistent = 0

[State 450, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(6) >= 0
moveType = I

[State 450, 5]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1


;---------------------------------------------------------------------------
; Tripped get-hit (shaking)
[Statedef 455]
type = A
movetype= H
physics = N
velset = 0,0

[State 5070, 1]
type = ChangeAnim
trigger1 = 1
value = 5070

[State 5070, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 456

[State 5070, 3]
type = ForceFeedback
trigger1 = time = 0
time = 12
waveform = sinesquare
ampl = 140


; Tripped get-hit (knocked away)
[Statedef 456]
type = A
movetype= H
physics = N

[State 5071, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5071, 2] ;Acceleration
type = VelAdd
trigger1 = time > 0
y = GetHitVar(yaccel)

[State 5071, 3] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(movement.air.gethit.trip.groundlevel)
type = SelfState
value = 5110


;---------------------------------------------------------------------------
; Jump Light Punch
[Statedef 600]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 1
powerAdd = 0
anim = 600

[State 600, Snd]
type=playsnd
trigger1= animelem=2 && random<200
value= 4, ifelse(random<500, 0, 1)
channel=0

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
airguard.ctrltime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.41, -4.49)
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=0)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8010)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=34), var(36):=-15
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 600, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 600
elem = 4
ignoreHitPause = 1

[State 620, Type]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I

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
physics = N
moveType = A
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)
anim = 610

[State 610, Snd]
type=playsnd
trigger1= animelem=3 && random<350
value= 4, ifelse(random<500, 1, 2)
channel=0

[State 610, Snd]
type=playsnd
trigger1= animelem=3
value=1,1
channel=1

[State 610, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= animelem=3
forcenofall = !var(20)
attr = A,NA
hitflag = MAF
guardflag = HA
damage = ceil(ifelse(fvar(11)*42<7, 7, fvar(11)*42)), 0
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
airguard.ctrltime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=1)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=37), var(36):=-24
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 610, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 610
elem = 5
ignoreHitPause = 1

[State 610, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
movetype = I

[State 610, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 620, End]
type=changestate
trigger1= pos y>-vel y
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
anim = 620

[State 620, Snd]
type=playsnd
trigger1= animelem=2 && random<500
value= 4, ifelse(random<500, 1, 2)
channel=0

[State 620, Snd]
type=playsnd
trigger1= animelem=2
value=1,2
channel=1

[State 620, Hit]
type=hitdef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1= animelem=3
forcenofall = !var(20)
attr = A,NA
hitflag = MAF
guardflag = HA
damage = ceil(ifelse(fvar(11)*75<7, 7, fvar(11)*75)), 0
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
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=42), var(36):=-28
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 620, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
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
anim = 630

[State 630, Snd]
type=playsnd
trigger1= animelem=2 && random<200
value= 4, ifelse(random<500, 0, 1)
channel=0

[State 630, Snd]
type=playsnd
trigger1= animelem=2
value=1,3
channel=1

[State 630, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1 = AnimElem = 2
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
airguard.ctrltime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.41, -4.49)
guard.cornerPush.velOff = 0
air.velocity = -3.23, -7.73
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=3)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8010)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -20 + 0*(var(35):=65), var(36):=-8
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 630, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 2, 6)
value = 630
elem = 4
ignoreHitPause = 1

[State 630, Type]
type=statetypeset
trigger1= animelemtime(3)>=0
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
trigger1= animelem=2 && random<350
value= 4, ifelse(random<500, 1, 2)
channel=0

[State 640, Snd]
type=playsnd
trigger1= animelem=2
value=1,4
channel=1

[State 640, Hit]
type=hitdef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
forcenofall = !var(20)
attr = A,NA
hitflag = MAF
guardflag = HA
damage = ceil(ifelse(fvar(11)*46<7, 7, fvar(11)*46)), 0
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
airguard.ctrltime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -7.51)
guard.cornerPush.velOff = 0
air.velocity = -3.23, -7.73
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=4)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -30 + 0*(var(35):=78), var(36):=-46
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 640, ChangeAnimElem]
type = ChangeAnim
trigger1 = MoveContact = 1 && HitPauseTime
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) <= 0
trigger1 = HitPauseTime <= ifElse(var(20), 3, 8)
value = 640
elem = 4
ignoreHitPause = 1

[State 640, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
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
trigger1= animelem=3 && random<500
value= 4, ifelse(random<500, 1, 2)
channel=0

[State 650, Snd]
type=playsnd
trigger1= animelem=3
value=1,5
channel=1

[State 650, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= animelem=3
forcenofall = !var(20)
attr = A,NA
hitflag = MAF
guardflag = HA
damage = ceil(ifelse(fvar(11)*63<7, 7, fvar(11)*63)), 0
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
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -20 + 0*(var(35):=47), var(36):=-12
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 650, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 650, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 650, End]
type=changestate
trigger1= pos y>-vel y
value=52

;===========<THROW ATTEMPT>==========
[StateDef 800]
type = S
physics = S
movetype = A
anim = 800
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 800, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = (command = "kk")

[State 800, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = (Random < 500)

[State 800, Tech Hit Reset]
type = VarSet
trigger1 = 1
var(19) = 0

[State 800, Tech Hit]
type = VarSet
trigger1 = NumEnemy
trigger1 = EnemyNear, StateType != A
trigger1 = (EnemyNear, StateNo = [0,999]) && (EnemyNear, StateNo != [100,119]) && (EnemyNear, StateNo != [200,799])
var(19) = 7

[State 800, AttackDist]
type = AttackDist
trigger1 = 1
value = 0

[State 800, HitDef: PP Throw]
type = HitDef
trigger1 = AnimElem = 2
trigger1 = P2BodyDist x < 55
trigger1 = !var(38)
attr = S, NT
hitFlag = M-
priority = 1, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 +0 * (var(33) := 0)
guard.sparkNo = -1 +0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 +0 * (var(31) := 800)
guardSound = -1 +0 * (var(32) := 0)
fall = 1
fall.recover = 1
numHits = 0
p1StateNo = ifElse(ifElse(!NumExplod(92828282) && !NumExplod(92468246), command = "holdfwd", command = "holdback"), ifElse(var(40) = 1 || var(40) = 3, 841, 841), 805)

[State 800, HitDef: KK Throw]
type = HitDef
trigger1 = AnimElem = 2 && var(10)
trigger1 = !var(38)
trigger1 = P2BodyDist x < 55
attr = S, NT
hitFlag = M-
priority = 1, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 +0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 +0 * (var(31) := 800)
guardSound = -1 +0 * (var(32) := 0)
fall = 1
fall.recover = 1
numhits = 0
p1StateNo = ifElse(ifElse(!NumExplod(92828282) && !NumExplod(92468246), command = "holdback", command = "holdfwd"), ifElse(var(40) = 1 || var(40) = 3, 841, 805), ifElse(var(40) = 1 || var(40) = 3, 805, 820))

[State 800, Voice (Missed)]
type = PlaySnd
trigger1 = AnimElem = 4 && var(40) != 1
value = 800,0
channel = 0

[State 800, Voice (Missed, Violent)]
type = PlaySnd
trigger1 = AnimElem = 4 && var(40) = 1
value = 5000,10
channel = 0

[State 800, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,0
channel = 1

[State 800, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 800, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<THROW SWITCHING SIDES>==========
[StateDef 805]
type = S
moveType = A
physics = S
anim = 805
ctrl = 0
sprPriority = 0

[State 805, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 806

[State 805, TargetFacing]
type = TargetFacing
trigger1 = !Time && NumTarget
value = -1

[State 805, Width]
type = Width
trigger1 = 1
edge = 24,24
ignoreHitPause = 1

[State 805, Turn]
type = Turn
trigger1 = AnimElem = 4

[State 805, Facing]
type = TargetFacing
trigger1 = 1
value = -1

[State 805, Tech Hit]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback") && Target, command != "holdup" && Target, command != "holddown"
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 805, Tech Hit Countdown]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 805, TargetBind 1]
type = TargetBind
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = 30, 0

[State 805, TargetBind 2]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger2 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = 15, 0

[State 805, TargetBind 3]
type = TargetBind
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = 0,0

[State 805, SprPriority 1]
type = SprPriority
trigger1 = AnimElemTime(2) < 0 || AnimElemTime(5) >= 0
value = 1

[State 805, SprPriority 2]
type = SprPriority
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(5) < 0
value = -1

[State 805, End]
type = ChangeState
trigger1 = !NumTarget
value = 0
ctrl = 1

[State 805, End]
type = ChangeState
trigger1 = AnimElemTime(5) >= 0
value = ifElse(var(10), ifElse(var(40) = 1 || var(40) = 3, 820, 820), ifElse(var(40) = 1 || var(40) = 3, 841, 841))



;===========<THROW SWITCHING SIDES (TARGET)>==========
[StateDef 806]
type = S
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 806, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 806, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 806

[State 806, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 806, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 1,1
ignoreHitPause = 1

[State 806, SelfState]
type = SelfState
trigger1 = Time >= 60
value = ifElse(pos y < 0, 5040, 0)
ctrl = 1




;===========<TSUKAMI NAGE>==========
[StateDef 820]
type = S
physics = N
moveType = A
anim = 820
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 820, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 820, Tech Hit]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback")
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 820, Throw Escape]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 820, Escape]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 820, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 825

[State 820, Width]
type = Width
trigger1 = 1
edge = 55, 0
ignoreHitPause = 1

[State 820, Timer Start]
type = VarSet
trigger1 = !Time
var(44) = 140

[State 820, Timer End (Round Over)]
type = VarSet
trigger1 = RoundState != 2
var(44) = 0

[State 820, Timer Countdown]
type = VarAdd
trigger1 = HitCount
var(44) = -1

[State 820, Timer]
type = VarAdd
triggerAll = NumTarget && HitCount
trigger1 = Target, command = "x" || Target, command = "y" || Target, command = "z"
trigger2 = Target, command = "a" || Target, command = "b" || Target, command = "c"
trigger3 = Target, command = "up" || Target, command = "down" || Target, command = "back" || Target, command = "fwd"
var(44) = -1

[State 820, Mashing]
type = VarSet
trigger1 = !Time
var(42) = 0

[State 820, Mashing]
type = VarSet
trigger1 = !Time
var(12) = 0

[State 820, Mashing]
type = VarSet
triggerAll = var(42) = 0
trigger1 = !AILevel && (command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z")
trigger2 = !AILevel && (command = "up" || command = "down" || command = "back" || command = "fwd")
trigger3 = AILevel && Random < 800
var(42) = ifElse(AILevel, 3, 1)

[State 820, Mashing Increment]
type = VarAdd
trigger1 = var(42) = ifElse(AILevel, 3, 1)
var(12) = 1

[State 820, Mashing Decrement]
type = VarAdd
trigger1 = var(42) > 0
var(42) = -1

[State 820, Anim Skip]
type = ChangeAnim
triggerall = var(44) > 0
trigger1 = AnimElemTime(AnimElemNo(0)) >= 0 && AnimElemTime(4) < 0
trigger1 = AnimElemTime(AnimElemNo(0) + 1) >= -var(12)
trigger1 = 1 || var(12) := (var(12) + AnimElemTime(AnimElemNo(0) + 1))
value = 820
elem = AnimElemNo(0) + 1

[State 820, Anim Skip]
type = ChangeAnim
triggerAll = var(44) > 0
trigger1 = AnimElemTime(4) > 0
trigger1 = AnimElemTime(4) >= (10 - var(12))
trigger1 = 1 || var(12) := (var(12) + 10 - AnimElemTime(4))
value = 820
elem = 1

[State 820, PalFX Flash]
type = PalFX
trigger1 = command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z"
trigger2 = command = "up" || command = "down" || command = "back" || command = "fwd"
time = 1
add = 32, 32, 32

[State 820, TargetBind]
type = TargetBind
triggerAll = NumTarget
trigger1 = AnimElemTime(0) >= 0 && AnimElemTime(2) < 0
trigger2 = AnimElemTime(5) >= 0
pos = 36,0

[State 820, TargetBind]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 34,0

[State 820, TargetBind]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = 45,-97

[State 820, TargetBind]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = 41,-96

[State 820, Throw]
type = TargetState
trigger1 = NumTarget
trigger1 = AnimElemTime(3) < 0 || AnimElemTime(5) >= 0
value = 825

[State 820, Throw]
type = TargetState
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(5) < 0 && Target, StateNo != 826
value = 826

[State 820, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 3
value = floor(ifElse(14 * fvar(11) < 7, -7, -14 * fvar(11)))
kill = 1

[State 820, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = HitCount = 1
trigger1 = NumTarget && AnimElem = 3
value = 36

[State 820, Power]
type = PowerAdd
trigger1 = HitCount = 1
trigger1 = NumTarget && AnimElem = 3 && !var(20)
value = 72

[State 820, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 3
value = 1

[State 820, Hit Count Increment]
type = VarAdd
trigger1 = NumTarget && AnimElem = 3
var(13) = 1

[State 820, Juggle Points Increment]
type = VarAdd
trigger1 = NumTarget && AnimElem = 3
var(15) = 1
ignoreHitPause = 1

[State 820, EnvShake]
type = EnvShake
trigger1 = NumTarget && AnimElem = 3
time = 14
ampl = 4
freq = 120

[State 820, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,2
channel = 0

[State 820, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,5
channel = 1

[State 820, Hit Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 3
value = 2,5
channel = 2

[State 820, Hit Spark]
type = Helper
trigger1 = NumTarget && AnimElem = 3
helperType = Normal
stateNo = 8012
ID = 8000
name = "Spark"
posType = P1
pos = ceil(49 * const(size.xScale)), ceil(-62 * const(size.yScale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 820, End]
type = ChangeState
trigger1 = var(44) <= 0
trigger1 = !AnimTime
trigger2 = NumTarget
trigger2 = !(Target, Alive)
trigger3 = Time >= 140
value = 821


;Final Hit
[StateDef 821]
type = S
physics = N
moveType = A
anim = 821
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 821, Width]
type = Width
trigger1 = 1
edge = 55, 0
ignoreHitPause = 1

[State 821, Throw]
type = TargetState
trigger1 = NumTarget && !Time
value = 827

[State 821, TargetBind]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = 41,-96

[State 821, TargetBind]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 45,-97

[State 821, TargetBind]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) = 0
pos = 55,-20

[State 821, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 3
value = floor(ifElse(56 * fvar(11) < 7, -7, -56 * fvar(11)))
kill = 1

[State 821, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 3
value = 1

[State 821, Hit Count Increment]
type = VarAdd
trigger1 = NumTarget && AnimElem = 3
var(13) = 1

[State 821, Juggle Points Increment]
type = VarAdd
trigger1 = NumTarget && AnimElem = 3
var(15) = 1
ignoreHitPause = 1

[State 821, Juggle Flag Set]
type = VarSet
trigger1 = NumTarget && AnimElem = 3
var(16) = 1
ignoreHitPause = 1

[State 821, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 3
value = 828

[State 821, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 820,0
channel = 0

[State 821, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,5
channel = 1

[State 821, Hit Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 3
value = 2,5
channel = 2

[State 821, Hit Spark]
type = Helper
trigger1 = NumTarget && AnimElem = 3
helperType = Normal
stateNo = 8012
ID = 8000
name = "Spark"
posType = P1
pos = ceil(42 * const(size.xScale)), ceil(-94 * const(size.yScale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 821, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<TSUKAMI NAGE (TARGET)>==========
;Startup
[StateDef 825]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 825, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = ifelse(Enemy,Name = "Kamen Rider Kuuga",8251,825)

[State 825, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 825, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 825, PalFX Flash]
type = PalFX
trigger1 = command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z"
trigger2 = command = "up" || command = "down" || command = "back" || command = "fwd"
time = 1
add = 32, 32, 32


;Being Hit
[StateDef 826]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 826, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = ifelse(Enemy,Name = "Kamen Rider Kuuga",8261,826)

[State 826, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 826, PalFX Flash]
type = PalFX
trigger1 = command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z"
trigger2 = command = "up" || command = "down" || command = "back" || command = "fwd"
time = 1
add = 32, 32, 32


;Finish (Before hit)
[StateDef 827]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 827, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = ifelse(Enemy,Name = "Kamen Rider Kuuga",8271,827)

[State 827, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1


;After Throw
[StateDef 828]
type = A
physics = N
moveType = H
ctrl = 0
velSet = 0,0
sprPriority = 0

[State 828, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5030

[State 828, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
trigger1 = SelfAnimExist(5035)
value = 5035

[State 828, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 5050 && !AnimTime
value = 5050

[State 828, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,0
ignoreHitPause = 1

[State 828, VelSet]
type = VelSet
trigger1 = !Time
x = -5
y = -6.5625

[State 828, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5126953125

[State 828, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 828, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 828, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100




;===========<SEOI NAGE>==========
[Statedef 830]
type = S
physics = N
moveType = A
anim = 830
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 830, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 830, Tech Hit]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback")
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 830, Throw Escape]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 830, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 835

[State 830, Width]
type = Width
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(3) < 0
edge = 0,32
ignoreHitPause = 1

[State 830, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(8) < 0
edge = 0,64
ignoreHitPause = 1

[State 830, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = 35,0

[State 830, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 15,-5

[State 830, TargetBind 3]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
pos = 0,-96

[State 830, TargetBind 4]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
pos = -41,-88

[State 830, TargetBind 5]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = -60, -87

[State 830, TargetBind 6]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 1
pos = -105, -36

[State 830, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElemTime(7) = 1
value = floor(ifElse(140 * fvar(11) < 7, -7, -140 * fvar(11)))

[State 830, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElemTime(7) = 1
value = 36

[State 830, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElemTime(7) = 1 && !var(20)
value = 72

[State 830, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElemTime(7) = 1
value = 1

[State 830, VarAdd]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(7) = 1
var(13) = 1

[State 830, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElemTime(7) = 1
var(15) = 1
ignoreHitPause = 1

[State 830, Juggle]
type = VarSet
trigger1 = NumTarget && AnimElemTime(7) = 1
var(16) = 1
ignoreHitPause = 1

[State 830, Throw]
type = TargetState
trigger1 = NumTarget && AnimElemTime(7) = 1
value = 836

[State 830, Voice]
type = PlaySnd
trigger1 = AnimElem = 6 && var(40) != 1
value = 4,4
channel = 0

[State 830, Voice (Violent)]
type = PlaySnd
trigger1 = AnimElem = 6 && var(40) = 1
value = 810,10
channel = 0

[State 830, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,5
channel = 1

[State 830, Turn]
type = Turn
trigger1 = !AnimTime

[State 830, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;===========<SEOI NAGE (TARGET)>==========
;Being Thrown
[StateDef 835]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 835, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = ifelse(Enemy,Name = "Kamen Rider Kuuga",8351,835)

[State 835, Turn]
type = Turn
trigger1 = !Time
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

[State 835, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 835, SprPriority]
type = SprPriority
trigger1 = AnimElem = 3
value = 2

[State 835, SprPriority]
type = SprPriority
trigger1 = AnimElem = 4
value = 0

[State 835, ChangeAnim]
type = ChangeAnim
triggerAll = const(movement.down.bounce.offset.y) > 0
trigger1 = !AnimTime && Anim = 835
trigger2 = Anim != 835
value = 5160

[State 835, ChangeAnim2]
type = ChangeAnim2
triggerAll = const(movement.down.bounce.offset.y) <= 0
trigger1 = !AnimTime && Anim = 835
trigger2 = Anim != 835
value = 816


;After Throw
[StateDef 836]
type = A
physics = N
movetype = H
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 836, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,0
ignoreHitPause = 1

[State 836, VelSet]
type = VelSet
trigger1 = Time = 1
x = 5
y = -5.78125

[State 836, VelAdd]
type = VelAdd
Trigger1 = Time > 1
y = 0.5126953125

[State 836, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 836, Recover]
type = SelfState
trigger1 = Alive
trigger1 = command = "recovery"
trigger1 = vel y > 0 && pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 836, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100




;===========<THROW ESCAPED>==========
[StateDef 890]
type = S
physics = N
movetype = I
anim = 5945
ctrl = 0
velset = 0,0
sprPriority = 1

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
ignoreHitPause = 1

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

[State 890, Voice]
type = PlaySnd
trigger1 = AnimElem = 2 && var(40) != 1
value = 800,0
channel = 0

[State 890, Voice (Violent)]
type = PlaySnd
trigger1 = AnimElem = 2 && var(40) = 1
value = 5000,10
channel = 0

[State 890, Escape Sound]
type = PlaySnd
trigger1 = !Time
value = 760,0

[State 890, Throw Escape FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8000
ID = 8000
name = "Spark"
PosType = P1
pos = 0, -68
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
trigger1 = !Time
value = ifElse(SelfAnimExist(5945), 5945, 130)

[State 895, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5945) && SelfAnimExist(5940)
value = 5940

[State 895, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5945) && !SelfAnimExist(5940) && SelfAnimExist(5910)
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
ignoreHitPause = 1

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



;===========<THROW ESCAPE MIDAIR>==========
[StateDef 892]
type = A
physics = N
moveType = I
anim = 892
ctrl = 0
velSet = 0, 0
sprPriority = 1

[State 892, TargetBind]
type = TargetBind
trigger1 = !Time && NumTarget
pos = 48, 0

[State 892, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 897

[State 892, TargetFacing]
type = TargetFacing
trigger1 = !Time && NumTarget
value = -1

[State 892, PosAdd]
type = PosAdd
trigger1 = !Time
x = 24

[State 892, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 892, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 892, PosFreeze]
type = PosFreeze
trigger1 = Time < 18
value = 1

[State 892, VelSet]
type = VelSet
trigger1 = Time = 18
x = -2
y = -4

[State 892, VelAdd]
type = VelAdd
trigger1 = Time > 18
y = 0.5

[State 892, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5000,2
channel = 0

[State 892, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 760,0

[State 892, Throw Escape FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8000
ID = 8000
name = "Spark"
posType = P1
pos = 24,-64
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

[State 892, ChangeState]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52


;Target Escape
[StateDef 897]
type = A
physics = N
moveType = I
ctrl = 0
velSet = 0, 0
sprPriority = 1

[State 897, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 152

[State 897, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 18
value = 142

[State 897, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 897, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 897, PosFreeze]
type = PosFreeze
trigger1 = Time < 18
value = 1

[State 897, VelSet]
type = VelSet
trigger1 = Time = 18
x = -2
y = -4

[State 897, VelAdd]
type = VelAdd
trigger1 = Time >= 18
y = 0.5

[State 897, SelfState]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52

;Uppercut Throw
[StateDef 841]
type = S
physics = N
moveType = A
anim = 841
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 821, Width]
type = Width
trigger1 = 1
edge = 55, 0
ignoreHitPause = 1

[State 821, Throw]
type = TargetState
trigger1 = NumTarget && !Time
value = 827

[State 821, TargetBind]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
pos = 41,-96

[State 821, TargetBind]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
pos = 45,-97

[State 821, TargetBind]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(3) = 0
pos = 55,-20

[State 821, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 3
value = floor(ifElse(56 * fvar(11) < 7, -7, -56 * fvar(11)))
kill = 1

[State 821, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 3
value = 1

[State 821, Hit Count Increment]
type = VarAdd
trigger1 = NumTarget && AnimElem = 3
var(13) = 1

[State 821, Juggle Points Increment]
type = VarAdd
trigger1 = NumTarget && AnimElem = 3
var(15) = 1
ignoreHitPause = 1

[State 821, Juggle Flag Set]
type = VarSet
trigger1 = NumTarget && AnimElem = 3
var(16) = 1
ignoreHitPause = 1

[State 821, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 3
value = 828

[State 821, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 820,0
channel = 0

[State 821, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,5
channel = 1

[State 821, Hit Sound]
type = PlaySnd
trigger1 = NumTarget && AnimElem = 3
value = 2,5
channel = 2

[State 821, Hit Spark]
type = Helper
trigger1 = NumTarget && AnimElem = 3
helperType = Normal
stateNo = 8012
ID = 8000
name = "Spark"
posType = P1
pos = ceil(42 * const(size.xScale)), ceil(-94 * const(size.yScale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 821, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1