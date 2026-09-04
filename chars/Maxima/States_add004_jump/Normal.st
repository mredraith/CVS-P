;***************************************************************************;
;***************************************************************************;
; CVS Maxima POTS/Infinite by Falcon Rapper
;***************************************************************************;
;***************************************************************************;
; "Porque o guerreiro de f nunca gela" by: Racionais mc's
;***************************************************************************;
;***************************************************************************;

;
;NORMAL MOVES=
;

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
value=200+5*(p2bodydist x <= (const(size.xscale) * 19))

[State 200,Posset]
type=posset
trigger1=!time
y=0

[State 200, Snd]
type=playsnd
trigger1= !time && random<200
value= 4,0
channel=0

[State 200, Snd]
type=playsnd
trigger1= !time
value=1,0
channel=1

[State 200, Hit]
type = hitdef
triggerall = !var(16) && (var(15) < 1 || var(20))
trigger1=anim=200&&Animelem = 3
trigger2=anim=200&&Animelem = 4 && movecontact = 0
id = 200
attr = S, NA
hitflag = MAF
guardflag = M
damage = 21,0
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
ground.velocity =Ifelse(var(20),-1,-3)
guard.velocity = Ifelse(var(20),-1,-3)
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY=-10 + 0 * (var(35) := 90), var(36) := Ifelse((animelem=4),-95,-79)
hitsound = S2+10*var(44), 0
guardsound = s3,0
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 200, Hit]
type = hitdef
triggerall = !var(16) && (var(15) < 1 || var(20))
trigger1=anim=205&&Animelem = 3
id = 200
attr = S, NA
hitflag = MAF
guardflag = M
damage = 21,0
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
ground.cornerpush.veloff = 0
ground.velocity =Ifelse(var(20),-1,-3)
guard.velocity = Ifelse(var(20),-1,-3)
guard.cornerpush.veloff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 90), var(36):=-79
hitsound = S2+10*var(44), 0
guardsound = s3,0

[State 200, Type]
type=statetypeset
trigger1= anim=200&&animelemtime(5)>=0
trigger2= anim=205&&animelemtime(4)>=0
movetype=I

[State 200, 5]
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
value=210+5*(p2bodydist x <= (const(size.xscale) * 29))

[State 210,Posset]
type=posset
trigger1=!time
y=0

[State 210, Snd]
type=playsnd
trigger1= animelem=2 && random<350
value= 4,1
channel=0

[State 210, Snd]
type=playsnd
trigger1= animelem=2
value=1,1
channel=1

[State 210, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1=anim=210&&!Time
id = 200
attr = S,NA
hitflag = MAF
guardflag = M
damage = Ifelse(var(55),53,63),0
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
ground.cornerPush.velOff = 0
ground.velocity = Ifelse(var(20),-1,-5)
guard.velocity = Ifelse(var(20),-1,-5)
guard.cornerPush.velOff = 0
air.velocity = -3.24, -7.73
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = S2+10*var(44), 1
guardsound = s3, 0
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -15 + 0 * (var(35) := 100), var(36) := -84
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 210, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1=anim=215&&!Time
id = 200
attr = S,NA
hitflag = MAF
guardflag = M
damage = Ifelse(var(55),53,63),0
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
ground.cornerPush.velOff = 0
ground.velocity = Ifelse(var(20),-1,-5)
guard.velocity = Ifelse(var(20),-1,-5)
guard.cornerPush.velOff = 0
air.velocity = -3.24, -7.73
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = S2+10*var(44), 1
guardsound = s3, 0
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -15 + 0 * (var(35) := 100), var(36) := -88
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 200, Type]
type=statetypeset
trigger1= anim=210&&animelemtime(6)>=0
trigger2= anim=215&&animelemtime(4)>=0
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

[State 220, Anim]
type=changeanim
trigger1=!time
value=220

[State 220,Posset]
type=posset
trigger1=!time
y=0

[State 220, Snd]
type=playsnd
trigger1= animelem=2 && random<500
value= 4,2
channel=0

[State 220, Snd]
type=playsnd
trigger1= animelem=2
value=1,2
channel=1

[State 220, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !Time
id = 200
attr = S,NA
hitflag = MAF
guardflag = M
damage = Ifelse(var(55),75,98),0
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
ground.cornerPush.velOff = 0
ground.velocity = Ifelse(var(20),-2,-7)
guard.velocity = Ifelse(var(20),-2,-7)
guard.cornerPush.velOff = 0
air.velocity = -5.39, -5.65
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound=S2+10*var(44),2
guardsound=s3, 0
sparkno = -1 + 0*(var(33):=8010)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=160), var(36):=-70
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 200, Type]
type=statetypeset
trigger1= animelemtime(9)>=0
movetype=I

[State 220, 5]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; Dodge Strong Punch/Z-Counter Punch
[Statedef 221]
type =S
movetype= A
physics=S
poweradd= ifElse(PrevStateNo=750, 0, 30 * !var(20))
ctrl=0
velset=0,0
anim=ifElse(PrevStateNo=750, 220, 215)
sprpriority=2
facep2=1

[State 221, Swing Snd]
type=playsnd
trigger1=animelem=2
value=1,2
channel=1

[State 221, Muteki: Z-Counter]
type=Nothitby
trigger1=PrevStateNo=750 && AnimElemTime(5)<0
time=1
value=SCA

[State 221, HitDef]
type=HitDef
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1=!Time && PrevStateNo != 750
attr=S,NA 
hitflag=MAF 
guardflag=M 
animtype=Hard 
priority=4, Hit 
damage = Ifelse(var(55),75,96), 0
;ID = 200*!var(20)
getpower=30 * !var(20), 0
givepower=30, 30
pausetime = Ifelse(var(20), 6, 12), Ifelse(var(20), 6, 12)
guard.pausetime = Ifelse(var(20), 6, 12), Ifelse(var(20), 6, 12)
sparkNo=-1 + 0 * (var(33) := 8012)
guard.sparkNo=-1 + 0 * (var(34) := 8000)
sparkXY=-10 + 0 * (var(35) := 80), var(36) := -70
hitsound=S2+10*var(44),2
guardsound=s3,0
air.animType=Back
fall.animType=Back
ground.type=High 
air.type=Low
ground.slidetime=18 + 4*var(9)
ground.hittime=18 + 4*var(9)
guard.hittime = (18 + 4*var(9)) - 6
air.hittime=120
ground.velocity=Ifelse(var(20),-4,-8), -2.5
guard.velocity=Ifelse(var(20),-5,-10)
air.velocity=Ifelse(var(20),-4,-8),-3
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yAccel = (0.5 + (ComboCount * 0.06))
fall=1
fall.recover=0
fall.recovertime=120
palFX.time=12 * var(9)
palFX.add=255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 221, HitDef Z-Counter]
type=HitDef
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1=!Time && PrevStateNo=750
attr=S,NA 
hitflag=MAF 
guardflag=M 
animtype=Hard 
priority=6, Hit ;Higher priority for counters
damage=105, 0
;ID = 200*!var(20)
getpower=0, 0
givepower=30, 30
pausetime = Ifelse(var(20), 6, 12), Ifelse(var(20), 6, 12)
guard.pausetime = Ifelse(var(20), 6, 12), Ifelse(var(20), 6, 12)
sparkNo=-1 + 0 * (var(33) := 8012)
guard.sparkNo=-1 + 0 * (var(34) := 8000)
sparkXY=-10 + 0 * (var(35) := 80), var(36) := -70
hitsound=S2+10*var(44),2
guardsound=s3,0
air.animType=Back
fall.animType=Back
ground.type=High 
air.type=Low
ground.slidetime=18 + 4*var(9)
ground.hittime=18 + 4*var(9)
guard.hittime = (18 + 4*var(9)) - 6
air.hittime=120
ground.velocity=Ifelse(var(20),-4,-8), -2.5
guard.velocity=Ifelse(var(20),-5,-10)
air.velocity=Ifelse(var(20),-4,-8),-3
ground.cornerPush.velOff=0
guard.cornerPush.velOff=0
air.cornerPush.velOff=0
yAccel = (0.5 + (ComboCount * 0.06))
fall=1
fall.recover=0
fall.recovertime=120
palFX.time=12 * var(9)
palFX.add=255,255,255
palFX.sinAdd= -255,-255,-255,48
p2stateno = 4060

[State 221, StateTypeSet: Idle]
type=StateTypeSet
trigger1=anim=220&&AnimElemTime(9) >= 0
trigger2=anim=420&&AnimElemTime(5) >= 0
moveType=I

[State 221, End]
type=ChangeState
trigger1=!AnimTime
value=0
ctrl=1

;---------------------------------------------------------------------------
; Mongolian Punch
[Statedef 228]
type = S
physics = S
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
facep2 = 1

[State 800,0]
type = PosAdd
trigger1 = AnimElem = 6
x = 24

[State 800,1]
type = PosAdd
trigger1 = AnimElem = 12
x = -24

[State 220, Anim]
type=changeanim
trigger1=!time
value=228+1*(prevstateno = [200,450])

[State 220,Posset]
type=posset
trigger1=!time
y=0

[State 220, Snd]
type=playsnd
trigger1= animelem=5
value= 228,0
channel=0

[State 220, Snd]
type=playsnd
trigger1= animelem=2
value=1,2
channel=1

[State 220, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= anim=229&&!Time
id = 200
attr = S,NA
hitflag = MAF
guardflag = M
damage = Ifelse(var(55),35,48),0
getpower = ifelse(!var(13), 216, 72)*!var(20), 36*!var(20)
givepower = 36, 36
pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
guard.pausetime = ifelse(var(20), 6, 12), ifelse(var(20), 6, 12)
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 22 + 4*var(9)
guard.hittime = (22 + 4*var(9)) - 6
ground.slidetime = 18 + 4*var(9)
air.hittime = 120
ground.velocity = ifElse(var(20), -1, -4), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -1, -4)
guard.cornerPush.velOff = 0
air.velocity = -5.39, -5.65
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound=S2+10*var(44),2
guardsound=s3, 0
sparkno = -1 + 0*(var(33):=8010)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -15 + 0*(var(35):=160), var(36):=-55
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
id = 200

[State 220, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= anim=228&&!Time
id = 200
attr = S,NA
hitflag = MAF
guardflag = M
damage = Ifelse(var(55),55,48),0
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
ground.velocity = -5.0,-4
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.86, -10.52)
guard.cornerPush.velOff = 0
air.velocity = -5.0,-2.5
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 1
fall.recover = 0
fall.recovertime = 120
hitsound=S2+10*var(44),2
guardsound=s3, 0
sparkno = -1 + 0*(var(33):=8010)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -15 + 0*(var(35):=160), var(36):=-55
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 200, Type]
type=statetypeset
trigger1= animelemtime(9)>=0
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
trigger1= !time && random<500
value= 4,0
channel=0

[State 230, Snd]
type=playsnd
trigger1= !time
value=1,3
channel=1

[State 230, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= !Time
id = 200
attr = S,NA
hitflag = MAF
guardflag = M
damage = Ifelse(var(55),28,35),0
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
ground.cornerPush.velOff = 0
ground.velocity =Ifelse(var(20),-1,-3)
guard.velocity = Ifelse(var(20),-1,-3)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = S2+10*var(44),3
guardsound = s3,0
sparkno = -1 + 0*(var(33):=8010)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=90), var(36):=-15
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 200, Type]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I

[State 230, 5]
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
value= 4,1
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
id = 200
attr = S,NA
hitflag = MAF
guardflag = M
damage = Ifelse(var(55),53,63),0
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
ground.cornerPush.velOff = 0
ground.velocity = Ifelse(var(20),-1,-5)
guard.velocity = Ifelse(var(20),-1,-5)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = S2+10*var(44),4
guardsound = s3,0
sparkno = -1 + 0*(var(33):=8010)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=120), var(36):=-77
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 200, Type]
type=statetypeset
trigger1= animelemtime(5)>=0
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
triggerall=prevstateno!=[700,750]
trigger1=!time
value=250+5*(p2bodydist x <= (const(size.xscale) * 29))

[State 250, Anim]
type=changeanim
triggerall=prevstateno=[700,750]
trigger1=!time
value=250+5*(prevstateno=700)

[State 250,Posset]
type=posset
trigger1=!time
y=0

[State 250, Snd]
type=playsnd
trigger1= animelem=3 && random<500
value= 4,2
channel=0

[State 250, Snd]
type=playsnd
trigger1= animelem=3
value=1,5
channel=1

[State 250, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= anim=250&&!Time
id = 200
attr = S,NA
hitflag = MAF
guardflag = M
damage = Ifelse(var(55),75,98),0
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
ground.velocity = ifElse(PrevStateNo = 750, -6.46, Ifelse(var(20),-2,-7)), ifElse(PrevStateNo = 750, -5.25, 0)
ground.cornerPush.velOff = 0
guard.velocity = Ifelse(var(20),-2,-7)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = ifElse(PrevStateNo = 750, 1, 0)
fall.recover = 1
fall.recovertime = 120
hitsound = S2+10*var(44),5
guardsound = s3,0
sparkno = -1 + 0*(var(33):=8010)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=160), var(36):=-62
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 250, Hit]
type=hitdef
trigger1= !var(16) && (var(15)<1 || var(20))
trigger1= anim=255&&!Time
id = 200
attr = S,NA
hitflag = MAF
guardflag = M
damage = ceil(ifelse(fvar(11)*91<7, 7, fvar(11)*91)), 0
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
ground.velocity = ifElse(PrevStateNo = 750, -6.46, Ifelse(var(20),-2,-7)), ifElse(PrevStateNo = 750, -5.25, 0)
ground.cornerPush.velOff = 0
guard.velocity = Ifelse(var(20),-2,-7)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = ifElse(PrevStateNo = 750, 1, 0)
fall.recover = 1
fall.recovertime = 120
hitsound = S2+10*var(44),5
guardsound = s3,0
sparkno = -1 + 0*(var(33):=8010)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=160), var(36):=-74
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 200, Type]
type=statetypeset
trigger1= anim=250&&animelemtime(9)>=0
trigger2= anim=255&&animelemtime(6)>=0
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
value= 4,0
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
id = 200
attr = C,NA
hitflag = MAF
guardflag = M
damage = 21,0
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
ground.cornerPush.velOff = 0
ground.velocity =Ifelse(var(20),-1,-3)
guard.velocity = Ifelse(var(20),-1,-3)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recovertime = 120
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 90), var(36):=-58
hitsound = S2+10*var(44), 0
guardsound = s3,0
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
value= 4,1
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
id = 200
attr = C,NA
hitflag = MAF
guardflag = M
damage = Ifelse(var(55),53,63),0
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
ground.cornerPush.velOff = 0
ground.velocity = Ifelse(var(20),-1,-5)
guard.velocity = Ifelse(var(20),-1,-5)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = S2+10*var(44), 1
guardsound = s3, 0
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -15 + 0 * (var(35) := 100), var(36) := -46
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 410, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
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

[State 420, Snd]
type=playsnd
trigger1= !time && random<500
value= 4,2
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
id = 200
attr = C,NA 
hitflag = MAF 
guardflag = MA 
animtype = Hard 
priority = 4,Hit 
damage = Ifelse(var(55),62,85), 0
ID = 200*!var(20)
getpower = 30 * !var(20), 0
givepower = 30, 30
pausetime=ceil(12*(ifelse(!var(20),1,.5))),ceil(12*(ifelse(!var(20),1,.5)))
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -5 + 0 * (var(35) := 135), var(36) := -80
hitsound = S2+10*var(44),2
guardsound = s3, 0
air.animType = Back
fall.animType = Back
ground.type =High ;Low,Trip,None
air.type = Low
ground.slidetime = 18 + 4*var(9)
ground.hittime = 18 + 4*var(9)
guard.hittime = (18 + 4*var(9)) - 6
air.hittime = Ifelse(var(55)=2,30,120)
ground.velocity = Ifelse(var(55)=2,-1,Ifelse(var(20),-1.5,-9)),Ifelse(var(55)=2,-9,0)
guard.velocity = Ifelse(var(20),-4.5,-9)
air.velocity = Ifelse(var(55)=2,-1,Ifelse(var(20),-1.5,-5)),Ifelse(var(55)=2,-9,-3)
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recovertime = Ifelse(var(55)=2,20,120)
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48

[State 420, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
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
value= 4,0
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
id = 200
attr = C,NA
hitflag = MAF
guardflag = L
damage = Ifelse(var(55),28,35),0
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
ground.cornerPush.velOff = 0
ground.velocity =Ifelse(var(20),-1,-3)
guard.velocity = Ifelse(var(20),-1,-3)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = S2+10*var(44),3
guardsound = s3,0
sparkno = -1 + 0*(var(33):=8010)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=90), var(36):=-28
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 430, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
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
value= 4,1
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
id = 200
attr = C,NA
hitflag = MAF
guardflag = L
damage = Ifelse(var(55),53,63),0
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
ground.cornerPush.velOff = 0
ground.velocity = Ifelse(var(20),-1,-5)
guard.velocity = Ifelse(var(20),-1,-5)
guard.cornerPush.velOff = 0
air.velocity = -6.46, -5.25
air.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recovertime = 120
hitsound = S2+10*var(44),4
guardsound = s3,0
sparkno = -1 + 0*(var(33):=8010)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=120), var(36):=-5
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
value= 4,2
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
damage = Ifelse(var(55),75,98),0
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
hitsound = S2+10*var(44),5
guardsound = s3,0
sparkno = -1 + 0*(var(33):=8010)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=160), var(36):=-5
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 450, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(5) >= 0
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

[State 600, Anim]
type=changeanim
trigger1=!time
value=600+5*(vel X = 0)

[State 600, Snd]
type=playsnd
trigger1= animelem=2 && random<200
value= 4,0
channel=0

[State 600, Snd]
type=playsnd
trigger1= animelem=2
value=1,0
channel=1

[State 600, Hit]
type=hitdef
triggerall = (fvar(8)<3 && var(15)<16 || var(20))
trigger1 = AnimElem = 2
id = 200
attr = A,NA
hitflag = MAF
guardflag = HA
damage = 21,0
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
air.velocity = Ifelse(var(20)||var(55)=2,-1,-3),-7
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY=-10 + 0 * (var(35) := 90), var(36) := -59
hitsound = S2+10*var(44), 0
guardsound = s3,0
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 620, Type]
type=statetypeset
trigger1= animelemtime(3)>=0
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

[State 610, Anim]
type=changeanim
trigger1=!time
value=610+5*(vel X = 0)

[State 610, Snd]
type=playsnd
trigger1= animelem=3 && random<350
value= 4,1
channel=0

[State 610, Snd]
type=playsnd
trigger1= animelem=3
value=1,1
channel=1

[State 610, Hit]
type=hitdef
triggerall = (fvar(8)<3 && var(15)<16 || var(20))
trigger1= anim=610&&animelem=3
id = 200
attr = A,NA
hitflag = MAF
guardflag = HA
damage = Ifelse(var(55),53,63),0
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
air.velocity = Ifelse(var(20)||var(55)=2,-1,-3),-7
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitsound = S2+10*var(44), 1
guardsound = s3, 0
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -15 + 0 * (var(35) := 100), var(36) := -88
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 610, Hit]
type=hitdef
triggerall = (fvar(8)<3 && var(15)<16 || var(20))
trigger1= anim=615&&animelem=4
id = 200
attr = A,NA
hitflag = MAF
guardflag = HA
damage = Ifelse(var(55),53,63),0
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
air.velocity = Ifelse(var(20)||var(55)=2,-1,-3),-7
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitsound = S2+10*var(44), 1
guardsound = s3, 0
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -15 + 0 * (var(35) := 100), var(36) := -88
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 610, StateTypeSet: Idle]
type = StateTypeSet
trigger1= anim=610&&animelemtime(4)>=0
trigger2= anim=615&&animelemtime(5)>=0
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

[State 620, Anim]
type=changeanim
trigger1=!time
value=620

[State 620, Snd]
type=playsnd
trigger1= animelem=2 && random<500
value= 4,2
channel=0

[State 620, Snd]
type=playsnd
trigger1= animelem=2
value=1,2
channel=1

[State 620, Hit]
type=hitdef
triggerall = (fvar(8)<3 && var(15)<16 || var(20))
trigger1= animelem=3
attr = A,NA
hitflag = MAF
guardflag = HA
damage = Ifelse(var(55),75,98),0
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
air.velocity = Ifelse(var(55)=2,-12,Ifelse(var(20),-1,-5)),Ifelse(var(55)=2,12,Ifelse(var(20),-2,-5))
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
air.fall=var(55)=2
fall.recover = 0
hitsound=S2+10*var(44),2
guardsound=s3, 0
sparkno = -1 + 0*(var(33):=8010)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=160), var(36):=-70
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 620, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
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
value=630+5*(vel X = 0)

[State 630, Snd]
type=playsnd
trigger1= animelem=2 && random<200
value= 4,0
channel=0

[State 630, Snd]
type=playsnd
trigger1= animelem=2
value=1,3
channel=1

[State 630, Hit]
type=hitdef
triggerall = (fvar(8)<3 && var(15)<16 || var(20))
trigger1 = Anim=630&&AnimElem = 3
id = 200
attr = A,NA
hitflag = MAF
guardflag = HA
damage = Ifelse(var(55),28,35),0
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
air.velocity = Ifelse(var(20)||var(55)=2,-1,-3),-7
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitsound = S2+10*var(44),3
guardsound = s3,0
sparkno = -1 + 0*(var(33):=8010)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=90), var(36):=-54
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 630, Hit]
type=hitdef
triggerall = (fvar(8)<3 && var(15)<16 || var(20))
trigger1 = Anim=635&&AnimElem = 3
id = 200
attr = A,NA
hitflag = MAF
guardflag = HA
damage = Ifelse(var(55),28,35),0
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
air.velocity = Ifelse(var(20)||var(55)=2,-1,-3),-7
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitsound = S2+10*var(44),3
guardsound = s3,0
sparkno = -1 + 0*(var(33):=8010)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=90), var(36):=-12
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 630, Type]
type=statetypeset
trigger1= animelemtime(4)>=0
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
value= 4,1
channel=0

[State 640, Snd]
type=playsnd
trigger1= animelem=2
value=1,4
channel=1

[State 640, Hit]
type=hitdef
triggerall = (fvar(8)<3 && var(15)<16 || var(20))
trigger1 = AnimElem = 3
id = 200
attr = A,NA
hitflag = MAF
guardflag = HA
damage = Ifelse(var(55),53,63),0
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
air.velocity = Ifelse(var(20)||var(55)=2,-1,-3),-7
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitsound = S2+10*var(44),4
guardsound = s3,0
sparkno = -1 + 0*(var(33):=8010)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=120), var(36):=-74
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 640, StateTypeSet: Idle]
type = StateTypeSet
trigger1= animelemtime(5)>=0
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
value= 4,2
channel=0

[State 650, Snd]
type=playsnd
trigger1= animelem=3
value=1,5
channel=1

[State 650, Hit]
type=hitdef
triggerall = (fvar(8)<3 && var(15)<16 || var(20))
trigger1= animelem=3
attr = A,NA
hitflag = MAF
guardflag = HA
damage = Ifelse(var(55),75,98),0
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
air.velocity = Ifelse(var(55)=2,-12,Ifelse(var(20),-1,-5)),Ifelse(var(55)=2,12,Ifelse(var(20),-2,-5))
air.cornerPush.velOff = 0
airguard.velocity = -5, 0
airguard.cornerPush.velOff = 0
yAccel = (0.5 + (ComboCount * 0.06))
fall = 0
air.fall=var(55)=2
fall.recover = 0
hitsound = S2+10*var(44),5
guardsound = s3,0
sparkno = -1 + 0*(var(33):=8010)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=160), var(36):=-35
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

[State 800, Hit]
type=hitdef
trigger1= animelem=2
trigger1 = P2BodyDist x < 55
trigger1= !var(38)
attr=S,NT
hitflag=M-
priority = 1, Miss
getpower=0,0
givepower=0,0
sparkno = -1 +0*(var(33):=0)
guard.sparkno = -1 +0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=40), var(36):=-50
hitsound = S2,800
guardsound = -1 +0*(var(32):=0)
fall=1
fall.recover=1
numhits=0
p1stateno=ifelse(command="holdback",815,810)
p2stateno=ifelse(command="holdback",825,820)

[State 800, Hit]
type=hitdef
trigger1= animelem=2
trigger1 = P2BodyDist x < 55
trigger1= !var(38) && numtarget(3200)
attr=S,NT
hitflag=M
priority = 1, Miss
getpower=0,0
givepower=0,0
sparkno = -1 +0*(var(33):=0)
guard.sparkno = -1 +0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=40), var(36):=-50
hitsound = S2,800
guardsound = -1 +0*(var(32):=0)
fall=1
fall.recover=1
numhits=0
p1stateno=ifelse(command="holdback",815,810)
p2stateno=ifelse(command="holdback",825,820)

[State 800, Hit]
type=hitdef
trigger1= animelem=2 && var(10)
trigger1= !var(38)
trigger1 = P2BodyDist x < 55
attr=S,NT
hitflag=M-
priority = 1, Miss
getpower=0,0
givepower=0,0
sparkno = -1 +0*(var(33):=0)
guard.sparkno = -1 +0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=40), var(36):=-50
hitsound = S2,800
guardsound = -1 +0*(var(32):=0)
fall=1
fall.recover=1
numhits=0
p1stateno=ifelse(command="holdback",850,855)
p2stateno=ifelse(command="holdback",870,875)

[State 800, Hit]
type=hitdef
trigger1= animelem=2 && var(10)
trigger1= !var(38) && numtarget(3200)
trigger1 = P2BodyDist x < 55
attr=S,NT
hitflag=M
priority = 1, Miss
getpower=0,0
givepower=0,0
sparkno = -1 +0*(var(33):=0)
guard.sparkno = -1 +0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=40), var(36):=-50
hitsound = S2,800
guardsound = -1 +0*(var(32):=0)
fall=1
fall.recover=1
numhits=0
p1stateno=ifelse(command="holdback",850,855)
p2stateno=ifelse(command="holdback",870,875)

[State 1200,Sound]
type=PlaySnd
trigger1=Time=0
value=1200,0
channel=0
[State 1210,Sound]
type=PlaySnd
trigger1=Animelem=3
value=1,2
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
;-------------------------------------------------------------------------------
; Throw 1 P1 States
[Statedef 810]
type = S
movetype = A
physics = S
anim = 810
velset = 0, 0
poweradd = 32

[State 910,0]
type = PosFreeze
trigger1 = Time >= 0

[State 910,1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 40, 0
time = 34

[State 910,6]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype = Heavy
damage = 120
getpower = 48
givepower = 10
pausetime = 12,12
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 90), var(36):=-72
hitsound = S2+10*var(44),5
guardsound = S0, 0
ground.type = High
ground.slidetime = 12
ground.hittime = 15
guard.hittime = (15) - 6
ground.velocity = -4.0,-3.0
fall = 1
fall.recover = 0

[State 52, Dust]
type = explod
trigger1 = Animelem = 13
anim = 8102
sprpriority = -3
pos = -10,0
postype = p1
scale = .75, .75
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 52, Snd]
type = playsnd
trigger1 = Animelem = 13
value = 52,0

[State 910,9]
type = PlaySnd
trigger1 = Animelem = 7
value = 900, 1

[State 910,10]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-------------------------------------------------------------------------------
; Throw 1 P1 States
[Statedef 815]
type = S
movetype = A
physics = S
anim = 810
velset = 0, 0
poweradd = 32

[State 0, Turn]
type = Turn
trigger1 = !time

[State 910,0]
type = PosFreeze
trigger1 = Time >= 0

[State 910,1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 40, 0
time = 34

[State 910,6]
type = HitDef
trigger1 = Time = 0
attr = S, NA
animtype = Heavy
damage = 120
getpower = 48
givepower = 10
pausetime = 12,12
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 90), var(36):=-72
hitsound = S2+10*var(44),5
guardsound = S0, 0
ground.type = High
ground.slidetime = 12
ground.hittime = 15
guard.hittime = (15) - 6
ground.velocity = -4.0,-3.0
fall = 1
fall.recover = 0

[State 52, Dust]
type = explod
trigger1 = Animelem = 13
anim = 8102
sprpriority = -3
pos = -10,0
postype = p1
scale = .75, .75
pausemovetime = -1
supermovetime = -1
ownpal = 1
[State 52, Snd]
type = playsnd
trigger1 = Animelem = 13
value = 52,0

[State 910,9]
type = PlaySnd
trigger1 = Animelem = 7
value = 900, 1

[State 910,10]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;-------------------------------------------------------------------------------
; Throw 1 P2 States
[Statedef 820]
type = S
movetype = H
physics = S
ctrl = 0

[State 920,1]
type = ChangeAnim2
trigger1 = Time = 0
value = 820

[State 920,2]
type = SelfState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
; Throw 1 P2 States
[Statedef 825]
type = S
movetype = H
physics = S
ctrl = 0

[State 0, Turn]
type = Turn
trigger1 = !time

[State 920,1]
type = ChangeAnim2
trigger1 = Time = 0
value = 820

[State 920,2]
type = SelfState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------
; Throw 2 P1 States
[Statedef 850]
type = S
movetype = A
physics = S
anim = 850
velset = 0, 0
poweradd = 72

[State 960,0]
type = PosFreeze
trigger1 = Time >= 0

[State 960,1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 40, 0
time = 5

[State 960,2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 32, 0
time = 10

[State 960,3]
type = TargetBind
trigger1 = AnimElem = 4
pos = 0, 0
time = 5

[State 960,4]
type = TargetBind
trigger1 = AnimElem = 5
pos = 0,-100
time = 28

[State 960,5]
type = TargetLifeAdd
trigger1 = AnimElem = 8
value = -120

[State 1100, HitSpark]
type=Helper
trigger1=AnimElem=8
helperType=Normal
stateNo=8005
ID=8000
name="Spark"
pos= 0,-98
facing=-1
ownPal=1
size.xScale=1
size.yScale=1
pauseMoveTime=65535
superMoveTime=65535
ignoreHitPause=1
persistent=4

[State 960,7]
type = SprPriority
trigger1 = Time = 0
value = 1

[State 960,7]
type = SprPriority
trigger1 = AnimElem = 2
value = -1

[State 1210,Shake]
type=EnvShake
trigger1 = AnimElem = 8
time=12
ampl=Ifelse(random<=500,-2,2)
ignorehitpause=1

[State 960,8]
type = Explod
trigger1 = AnimElem = 7
anim = 860
pos = -40,-98
postype = P1
sprpriority = 2
bindtime = -1

[State 960,9]
type = Turn
trigger1 = AnimTime = 0

[State 960,Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 900, 2

[State 960,Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 2,850

[State 960,13]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; Throw 2 P1 States
[Statedef 855]
type = S
movetype = A
physics = S
anim = 850
velset = 0, 0
poweradd = 72

[State 0, Turn]
type = Turn
trigger1 = AnimElem = 5

[State 960,0]
type = PosFreeze
trigger1 = Time >= 0

[State 960,1]
type = TargetBind
trigger1 = AnimElem = 1
pos = 40, 0
time = 5

[State 960,2]
type = TargetBind
trigger1 = AnimElem = 2
pos = 32, 0
time = 10

[State 960,3]
type = TargetBind
trigger1 = AnimElem = 4
pos = 0, 0
time = 5

[State 960,4]
type = TargetBind
trigger1 = AnimElem = 5
pos = 0,-100
time = 28

[State 960,5]
type = TargetLifeAdd
trigger1 = AnimElem = 8
value = -120

[State 1100, HitSpark]
type=Helper
trigger1=AnimElem=8
helperType=Normal
stateNo=8005
ID=8000
name="Spark"
pos= 0,-98
facing=-1
ownPal=1
size.xScale=1
size.yScale=1
pauseMoveTime=65535
superMoveTime=65535
ignoreHitPause=1
persistent=4

[State 960,7]
type = SprPriority
trigger1 = Time = 0
value = 1

[State 960,7]
type = SprPriority
trigger1 = AnimElem = 2
value = -1

[State 1210,Shake]
type=EnvShake
trigger1 = AnimElem = 8
time=12
ampl=Ifelse(random<=500,-2,2)
ignorehitpause=1

[State 960,8]
type = Explod
trigger1 = AnimElem = 5
anim = 860
pos = -40,-98
postype = P1
sprpriority = 2
bindtime = -1

[State 960,9]
type = Turn
trigger1 = AnimTime = 0

[State 960,Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 900, 2

[State 960,Sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 2,850

[State 960,13]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;-------------------------------------------------------------------------------
; Throw 2 P2 States
[Statedef 870]
type = A
movetype = H
physics = N
ctrl = 0

[State 970,Sprite]
type = SprPriority
trigger1 = Time = 0
value = 0
[State 0, ScreenBound]
type = ScreenBound
trigger1 =1
value = 1
movecamera = 1,0
[State 970,0]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoAutoTurn

[State 970,1]
type = ChangeAnim2
trigger1 = Time = 0
value = 870

[State 970,2]
type = VelSet
trigger1 = AnimElem = 3
x = 2.0
y = 2.0

[State 970,3]
type = VelAdd
trigger1 = AnimElem = 3, >= 0
y = .40

[State 970,4]
type = Turn
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -20
persistent = 0

[State 970,4]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -20
value = 5100
;-------------------------------------------------------------------------------
; Throw 2 P2 States
[Statedef 875]
type = A
movetype = H
physics = N
ctrl = 0

[State 0, Turn]
type = Turn
trigger1 = AnimElem = 3

[State 970,Sprite]
type = SprPriority
trigger1 = Time = 0
value = 0
[State 0, ScreenBound]
type = ScreenBound
trigger1 =1
value = 1
movecamera = 1,0
[State 970,0]
type = AssertSpecial
trigger1 = Time >= 0
flag = NoAutoTurn

[State 970,1]
type = ChangeAnim2
trigger1 = Time = 0
value = 870

[State 970,2]
type = VelSet
trigger1 = AnimElem = 3
x = 2.0
y = 2.0

[State 970,3]
type = VelAdd
trigger1 = AnimElem = 3, >= 0
y = .40

[State 970,4]
type = Turn
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -20
persistent = 0

[State 970,4]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -20
value = 5100