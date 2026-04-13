; _________________________________________
;| Character by Author Name |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==
;NORMAL MOVES
;==

;---------------------------------------------------------------------------
; Standing Light Punch
[Statedef 200]
type = S
movetype = A
physics = S
juggle = 0				
velset = 0,0			
ctrl = 0				
anim = 200				
poweradd = 20			
sprpriority = 2
facep2 = 1

[State 200, Swing Snd]
type=PlaySnd
trigger1=AnimElem=2
value=1,0
channel=1

[State 200, voice]
type = PlaySnd
trigger1 = animelem = 2 && random < 200 && var(1) != 2
value = S200,0+random%2
channel = 0

[State 200, ChangeAnim]
type = ChangeAnim
triggerall = Time = 0
trigger1 = P2Dist X <=50
value = 201

[State 200, 1]
type = HitDef
triggerall = Anim = 200
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1 = AnimElem = 2
attr = S, NA
damage = 25
animtype = Light
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 8,8
sparkNo=-1 + 0 * (var(33) := 8015)
guard.sparkNo=-1 + 0 * (var(34) := 8000)
sparkXY=-10 + 0 * (var(35) := 155), var(36):=-75
hitsound=S2,7
guardsound=s130, 0
ground.type = High
ground.slidetime = 5
ground.hittime = 12
guard.hittime = (12) - 6
ground.velocity = -6
airguard.velocity = -3.9,-.8
air.velocity = -3.4,-3
air.hittime = 12
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 200, 2]
type = HitDef
triggerall = Anim = 201
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1 = AnimElem = 3
attr = S, NA			
damage = 20
animtype = Light			
guardflag = MA			
hitflag = MA
priority = 4, Hit			
pausetime = 8,8
sparkNo=-1 + 0 * (var(33) := 8015)
guard.sparkNo=-1 + 0 * (var(34) := 8000)
sparkXY=-10 + 0 * (var(35) := 180), var(36):=-95
hitsound=S2,7
guardsound=s130, 0
ground.type = High		
ground.slidetime = 5		
ground.hittime = 12		
guard.hittime = (12) - 6
ground.velocity = -4		
airguard.velocity = -1.9,-.8	
air.velocity = -1.4,-3		
air.hittime = 12			
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = Anim = 200 && AnimElem = 3
trigger2 = Anim = 201 && AnimElem = 4
movetype = I

[State 200, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Punch
[Statedef 210]
type = S
movetype= A
physics = S
juggle = 0
poweradd= 65
ctrl = 0
velset = 0,0
anim = 210
facep2 = 1

[State 210, Swing Snd]
type=PlaySnd
trigger1=AnimElem=2
value=1,1
channel=1

[State 210, voice]
type = PlaySnd
trigger1 = animelem = 2 && random < 200 && var(1) != 2
value = S200,0+random%2
channel = 0

[State 210, PosAdd]
type = PosAdd
triggerall = Anim = 210
trigger1 = Time = 10
x = 10

[State 210, ChangeAnim]
type = ChangeAnim
triggerall = Time = 0
trigger1 = P2Dist X <=50
value = 211

[State 210, 1]
type = HitDef
triggerall = Anim = 210
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1 = AnimElem = 4
attr = S, NA
damage = 50, 0
animtype = Medium
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 10,10
sparkNo=-1 + 0 * (var(33) := 8011)
guard.sparkNo=-1 + 0 * (var(34) := 8000)
sparkXY=-10 + 0 * (var(35) := 155), var(36) := -78
hitsound=S2,1
guardsound=s130, 0
ground.type = High
ground.slidetime = 5
ground.hittime = 15
guard.hittime = (15) - 6
ground.velocity = -8
airguard.velocity = -3.9,-.8
air.velocity = -3.4,-3
air.hittime = 15
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 210, 2]
type = HitDef
triggerall = Anim = 211
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1 = AnimElem = 4
attr = S, NA
damage = 25, 0
animtype = Medium
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 12,12
sparkNo=-1 + 0 * (var(33) := 8015)
guard.sparkNo=-1 + 0 * (var(34) := 8000)
sparkXY=-10 + 0 * (var(35) := 155), var(36) := -78
hitsound=S2,8
guardsound=s130, 0
ground.type = Low
ground.slidetime = 2
ground.hittime = 18
guard.hittime = (18) - 6
ground.velocity = -3
airguard.velocity = -2.9,-.8
air.velocity = -2.4,-3
air.hittime = 18
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 210, 2]
type = HitDef
triggerall = Anim = 211
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1 = AnimElem = 5
attr = S, NA
damage = 30, 0
animtype = Medium
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 12,12
sparkNo=-1 + 0 * (var(33) := 8015)
guard.sparkNo=-1 + 0 * (var(34) := 8000)
sparkXY=-10 + 0 * (var(35) := 155), var(36) := -78
hitsound=S2,8
guardsound=s130, 0
ground.type = High
ground.slidetime = 5
ground.hittime = 20
guard.hittime = (20) - 6
ground.velocity = -6
airguard.velocity = -3.9,-.8
air.velocity = -3.4,-3
air.hittime = 20
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = Anim = 210 && AnimElem = 5
trigger2 = Anim = 211 && AnimElem = 6
movetype = I

[State 210, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Punch
[Statedef 220]
type = S
movetype= A
physics = S
juggle = 0
poweradd= 65
ctrl = 0
velset = 0,0
anim = 220
facep2 = 1

[State 220, Swing Snd]
type=PlaySnd
trigger1=AnimElem=2
value=1,2
channel=1

[State 220, voice]
type = PlaySnd
trigger1 = animelem = 2 && random < 200 && var(1) != 2
value = S200,0+random%2
channel = 0

[State 220, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3,>=0 && AnimElem = 9,<0
x = 3

[State 220, 1]
type = HitDef
trigger1 = AnimElem = 6
trigger1 = !var(16) && (var(15)<1 || var(20))
attr = S, NA
damage = 75, 0
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 12,12
sparkNo=-1 + 0 * (var(33) := 8012)
guard.sparkNo=-1 + 0 * (var(34) := 8000)
sparkXY=-10 + 0 * (var(35) := 155), var(36) := -70
hitsound=S2,2
guardsound=s130, 0
ground.type = High
ground.slidetime = 24
ground.hittime = 30
guard.hittime = (30) - 6
ground.velocity = -8
airguard.velocity = -5.9,-.8
air.type = High
air.velocity = -5.4,-3
air.hittime = 30
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 220, StateTypeSet]
type = StateTypeSet
trigger1 = Anim = 220 && AnimElem = 7
movetype = I

[State 220, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Light Kick
[Statedef 230]
type = S
movetype= A
physics = S
juggle = 0
poweradd= 25
ctrl = 0
velset = 0,0
anim = 230
facep2 = 1

[State 230, Swing Snd]
type=PlaySnd
trigger1=AnimElem=2
value=1,3
channel=1

[State 230, voice]
type = PlaySnd
trigger1 = animelem = 2 && random < 200 && var(1) != 2
value = S200,0+random%2
channel = 0

[State 230, ChangeAnim]
type = ChangeAnim
triggerall = Time = 0
trigger1 = P2Dist X <=50
value = 231

[State 230, 1]
type = HitDef
triggerall = Anim = 230
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1 = AnimElem = 3
attr = S, NA
damage = 20, 0
animtype = Light
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 8,8
sparkNo=-1 + 0 * (var(33) := 8010)
guard.sparkNo=-1 + 0 * (var(34) := 8000)
sparkXY=-10 + 0 * (var(35) := 155), var(36) := -85
hitsound=S2,3
guardsound=s130, 0
ground.type = High
ground.slidetime = 5
ground.hittime = 12
guard.hittime = (12) - 6
ground.velocity = -6
airguard.velocity = -3.9,-.8
air.velocity = -3.4,-3
air.hittime = 12
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 230, 2]
type = HitDef
triggerall = Anim = 231
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1 = AnimElem = 3
attr = S, NA
damage = 20, 0
animtype = Light
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 8,8
sparkNo=-1 + 0 * (var(33) := 8010)
guard.sparkNo=-1 + 0 * (var(34) := 8000)
sparkXY=-10 + 0 * (var(35) := 155), var(36):=-52
hitsound=S2,3
guardsound=s130, 0
ground.type = Low
ground.slidetime = 5
ground.hittime = 12
guard.hittime = (12) - 6
ground.velocity = -2
airguard.velocity = -1.9,-.8
air.velocity = -1.4,-3
air.hittime = 12
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 230, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
movetype = I

[State 230, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Medium Kick

[Statedef 240]
type = S
movetype= A
physics = S
juggle = 0
poweradd= 65
ctrl = 0
velset = 0,0
anim = 240
facep2 = 1

[State 240, Swing Snd]
type=PlaySnd
trigger1 = AnimElem = 5
value=1,4
channel=1

[State 240, voice]
type = PlaySnd
trigger1 = animelem = 2 && random < 200 && var(1) != 2
value = S200,0+random%2
channel = 0

[State 240, ChangeAnim]
type = ChangeAnim
triggerall = Time = 0
trigger1 = P2Dist X <=50
value = 241

[State 240, PosAdd]
type = PosAdd
triggerall = Anim = 240
trigger1 = Time = [7,18]
x = 3

[State 240, Width]
type = Width
triggerall = Anim = 240
trigger1 = Time = [7,9]
trigger2 = Time = [15,17]
value = 22,0

[State 240, Width]
type = Width
triggerall = Anim = 240
trigger1 = Time = [10,14]
value = 24,0

[State 240, 1]
type = HitDef
triggerall = Anim = 240
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1 = AnimElem = 2
attr = S, NA
damage = 55, 0
animtype = Medium
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 11,11
sparkNo=-1 + 0 * (var(33) := 8011)
guard.sparkNo=-1 + 0 * (var(34) := 8000)
sparkXY=-10 + 0 * (var(35) := 155), var(36) := -75
hitsound=S2,4
guardsound=s130, 0
ground.type = High
ground.slidetime = 8
ground.hittime = 24
guard.hittime = (24) - 6
ground.velocity = -6
airguard.velocity = -3.9,-.8
air.velocity = -3.4,-3
air.hittime = 24
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 240, 2]
type = HitDef
triggerall = Anim = 241
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1 = AnimElem = 3
attr = S, NA
damage = 30, 0
animtype = Light
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 10,10
sparkNo=-1 + 0 * (var(33) := 8011)
guard.sparkNo=-1 + 0 * (var(34) := 8000)
sparkXY=-10 + 0 * (var(35) := 155), var(36) := -69
hitsound=S2,4
guardsound=s130, 0
ground.type = Low
ground.slidetime = 2
ground.hittime = 24
guard.hittime = (24) - 6
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.velocity = -1.4,-3
air.hittime = 16
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 240, 3]
type = HitDef
triggerall = Anim = 241
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1 = AnimElem = 6
attr = S, NA
damage = 35, 0
animtype = Medium
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 14,14
sparkNo=-1 + 0 * (var(33) := 8011)
guard.sparkNo=-1 + 0 * (var(34) := 8000)
sparkXY=-10 + 0 * (var(35) := 155), var(36) := -69
hitsound=S2,4
guardsound=s130, 0
ground.type = Low
ground.slidetime = 8
ground.hittime = 24
guard.hittime = (24) - 6
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.velocity = -1.4,-3
air.hittime = 24
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 230, StateTypeSet]
type = StateTypeSet
trigger1 = Anim = 230 && AnimElem = 3
trigger2 = Anim = 241 && AnimElem = 7
movetype = I

[State 240, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Standing Strong Kick
[Statedef 250]
type = S
movetype= A
physics = S
juggle = 0
poweradd= 65
ctrl = 0
velset = 6,0
anim = 250
facep2 = 1

[State 250, Swing Snd]
type=PlaySnd
trigger1=AnimElem=3
value=1,5
channel=1

[State 250, voice]
type = PlaySnd
trigger1 = animelem = 2 && random < 200 && var(1) != 2
value = S200,0+random%2
channel = 0

[State 250, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4)>=0
movetype = I
ignorehitpause = 1

[State 250, 1]
type = HitDef
trigger1 = AnimElem = 3
trigger1 = !var(16) && (var(15)<1 || var(20))
attr = S, NA
damage = 80, 0
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 12,12
sparkNo=-1 + 0 * (var(33) := 8012)
guard.sparkNo=-1 + 0 * (var(34) := 8000)
sparkXY=-10 + 0 * (var(35) := 155), var(36) := -69
hitsound=S2,5
guardsound=s130, 0
ground.type = Low
ground.slidetime = 18
ground.hittime = 24
guard.hittime = (24) - 6
ground.velocity = -8
airguard.velocity = -3.9,-.8
air.velocity = -3.4,-3
air.hittime = 24
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 250, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
movetype = I

[State 250, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;---------------------------------------------------------------------------
;Strike Arch
[StateDef 251]
type = S
movetype= A
physics = N
juggle = 0
velset = 0,0
ctrl = 0
anim = 251
poweradd = 35
sprpriority = 2
facep2 = 1

[State 251, Swing Snd]
type=PlaySnd
trigger1=AnimElem=9
value=1,5
channel=1

[State 251, VelSet]
type = VelSet
trigger1 = AnimElem = 5
x = 3
y = -7.5

[State 251, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 5
statetype = A
movetype = A
physics = A

[State 251, Width]
type = Width
trigger1 = Time>=13
value = 30,0
ignorehitpause = 1

[State 251, 1]
type = HitDef
triggerall = (PrevStateNo=[200,210]) || (PrevStateNo=[230,240])
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1 = AnimElem = 9
attr = S, NA
damage = 35
animtype = Heavy
guardflag = HA
hitflag = MA
priority = 4, Hit
pausetime = 10,10
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno= -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 155), var(36) := -74
hitsound=S2,5
guardsound=s130, 0
ground.type = High
ground.slidetime = 5
ground.hittime = 30
guard.hittime = (30) - 6
ground.velocity = -8
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -8
air.hittime = 30
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 251, 2]
type = HitDef
triggerall = (PrevStateNo!=[200,210])&&(PrevStateNo!=[230,240])
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1 = AnimElem = 9
trigger2 = (EnemyNear,abs(Pos Y)!=0) || (abs(P2Dist Y)!=0)
trigger2 = AnimElem = 9
attr = S, NA
damage = 35
animtype = Heavy
guardflag = HA
hitflag = MA
priority = 4, Hit
pausetime = 10,10
sparkno = -1 + 0 * (var(33) := 8012)
guard.sparkno= -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 155), var(36) := -74
hitsound=S2,5
guardsound=s130, 0
ground.type = High
ground.slidetime = 5
ground.hittime = 25
guard.hittime = (25) - 6
ground.velocity = -4,12
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -4,12
air.hittime = 25
fall = 1
fall.recover = 0
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

;[State 251, ChangeState]
;type = ChangeState
;triggerall = Power >=1000
;triggerall = MoveContact
;trigger1 = AILevel=0 && command = "QCF_HCB_k"
;trigger2 = AILevel!=0&&RoundState=2
;trigger2 = MoveHit
;trigger2 = Random<250*(AILevel**2/32.0)
;value = 3000
;ctrl = 0
;
;[State 251, ChangeState]
;type = ChangeState
;triggerall = Power >=2000
;triggerall = MoveContact
;trigger1 = AILevel=0 && command = "QCF_HCB_2k"
;trigger2 = AILevel!=0&&RoundState=2
;trigger2 = MoveHit
;trigger2 = Random<250*(AILevel**2/32.0)
;value = 3005
;ctrl = 0

[State 251, end]
type = VelAdd
trigger1 = Time>=13
y = .4
ignorehitpause = 1
;---------------------------------------------------------------------------
; Crouching Light Punch
[Statedef 400]
type = C
movetype= A
physics = C
juggle = 0
poweradd= 15
ctrl = 0
anim = 400
facep2 = 1

[State 400, Swing Snd]
type=PlaySnd
trigger1=AnimElem=2
value=1,0
channel=1

[State 400, voice]
type = PlaySnd
trigger1 = animelem = 2 && random < 200 && var(1) != 2
value = S200,0+random%2
channel = 0

[State 400, 1]
type = HitDef
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1 = AnimElem = 4
attr = C, NA
damage = 18, 0
animtype = Light
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 8,8
sparkNo=-1 + 0 * (var(33) := 8015)
guard.sparkNo=-1 + 0 * (var(34) := 8000)
sparkXY=-10 + 0 * (var(35) := 155), var(36):=-60
hitsound=S2,7
guardsound=s130, 0
ground.type = Low
ground.slidetime = 5
ground.hittime = 12
guard.hittime = (12) - 6
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.velocity = -1.4,-3
air.hittime = 12
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 400, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 5
movetype = I

[State 400, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Punch
[Statedef 410]
type = C
movetype= A
physics = C
juggle = 0
poweradd= 50
ctrl = 0
anim = 410
facep2 = 1

[State 410, Swing Snd]
type=PlaySnd
trigger1=AnimElem=2
value=1,1
channel=1

[State 410, voice]
type = PlaySnd
trigger1 = animelem = 2 && random < 200 && var(1) != 2
value = S200,0+random%2
channel = 0

[State 410, 1]
type = HitDef
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1 = AnimElem = 4
attr = C, NA
damage = 18, 0
animtype = Medium
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 10,10
sparkNo=-1 + 0 * (var(33) := 8015)
guard.sparkNo=-1 + 0 * (var(34) := 8000)
sparkXY=-10 + 0 * (var(35) := 155), var(36) := -60
hitsound=S2,8
guardsound=s130, 0
ground.type = Low
ground.slidetime = 5
ground.hittime = 14
guard.hittime = (14) - 6
ground.velocity = -7
airguard.velocity = -4.9,-.8
air.velocity = -4.4,-3
air.hittime = 14
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 410, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 5
movetype = I

[State 410, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Strong Punch
[Statedef 420]
type = C
movetype= A
physics = C
juggle = 0
poweradd= 50
ctrl = 0
anim = 420
facep2 = 1

[State 420, Swing Snd]
type=PlaySnd
trigger1=AnimElem=2
value=1,2
channel=1

[State 420, voice]
type = PlaySnd
trigger1 = animelem = 2 && random < 200 && var(1) != 2
value = S200,0+random%2
channel = 0

[State 420, 1]
type = HitDef
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1 = AnimElem = 2
attr = C, NA
damage = 20, 0
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 12,12
sparkNo = -1 + 0 * (var(33) := 8015)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 155), var(36) := -40
hitsound = S2,9
guardsound = s130, 0
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.slidetime = 18 + 4*var(9)
ground.hittime = 18 + 4*var(9)
guard.hittime = (18 + 4*var(9)) - 6
air.hittime = Ifelse(var(55)=2,30,120)
ground.velocity = Ifelse(var(55)=2,-1,Ifelse(var(55)=1,-9,-10.52))*(ifelse(!var(20),1,.5)),Ifelse(var(55)=2,-12,0)
guard.velocity = Ifelse(var(20),-4,-8)
air.velocity = Ifelse(var(55)=2,-1,Ifelse(var(20),-2.5,-5)),Ifelse(var(55)=2,-10,-3)
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yaccel = Ifelse(var(55)=2,.4,.65)
fall = 0
fall.recover = 1
fall.recovertime = Ifelse(var(55)=2,20,120)

[State 420, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3
movetype = I

[State 420, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Light Kick
[Statedef 430]
type = C
movetype= A
physics = C
juggle = 0
poweradd= 25
ctrl = 0
anim = 430
facep2 = 1

[State 430, Swing Snd]
type=PlaySnd
trigger1=AnimElem=2
value=1,3
channel=1

[State 430, voice]
type = PlaySnd
trigger1 = animelem = 2 && random < 200 && var(1) != 2
value = S200,0+random%2
channel = 0

[State 430, 1]
type = HitDef
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1 = AnimElem = 2
attr = C, NA
damage = 18, 0
animtype = Light
guardflag = LA
hitflag = MA
priority = 4, Hit
pausetime = 9,9
sparkNo=-1 + 0 * (var(33) := 8010)
guard.sparkNo=-1 + 0 * (var(34) := 8000)
sparkXY=-10 + 0 * (var(35) := 155), var(36):=-10
hitsound=S2,3
guardsound=s130, 0
ground.type = Low
ground.slidetime = 5
ground.hittime = 13
guard.hittime = (13) - 6
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.velocity = -1.4,-3
air.hittime = 13
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 430, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3
movetype = I

[State 430, Width]
type = Width
trigger1 = AnimElem = 2,>=0 && AnimElem = 4,<0
value = 40,0
ignorehitpause = 1

[State 430, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouching Medium Kick
[Statedef 440]
type = C
movetype= A
physics = C
juggle = 0
poweradd= 25
ctrl = 0
anim = 440
facep2 = 1

[State 440, Swing Snd]
type=PlaySnd
trigger1=AnimElem=6
value=1,4
channel=1

[State 440, voice]
type = PlaySnd
trigger1 = animelem = 2 && random < 200 && var(1) != 2
value = S200,0+random%2
channel = 0

[State 440, Width]
type = Width
trigger1 = AnimElem = 2,>=0 && AnimElem = 4,<0
trigger2 = AnimElem = 7,>=0 && AnimElem = 8,<0
value = 40,0
ignorehitpause = 1

[State 440, 1]
type = HitDef
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1 = AnimElem = 2
attr = C, NA
damage = 18, 0
animtype = Light
guardflag = LA
hitflag = MA
priority = 4, Hit
pausetime = 13,13
sparkNo=-1 + 0 * (var(33) := 8011)
guard.sparkNo=-1 + 0 * (var(34) := 8000)
sparkXY=-10 + 0 * (var(35) := 155), var(36):=-10
hitsound=S2,4
guardsound=s130, 0
ground.type = Low
ground.slidetime = 8
ground.hittime = 16
guard.hittime = (16) - 6
ground.velocity = -2
airguard.velocity = -2.39,-.8
air.velocity = -1,-6
air.hittime = 14
id = 440
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 440, 2]
type = HitDef
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1 = AnimElem = 7
attr = C, NA
damage = 18, 0
animtype = Medium
guardflag = LA
hitflag = MA
priority = 4, Hit
pausetime = 10,10
sparkNo=-1 + 0 * (var(33) := 8011)
guard.sparkNo=-1 + 0 * (var(34) := 8000)
sparkXY=-10 + 0 * (var(35) := 155), var(36) := -36
hitsound=S2,4
guardsound=s130, 0
ground.type = Low
ground.slidetime = 10
ground.hittime = 18
guard.hittime = (18) - 6
ground.velocity = -6
airguard.velocity = -2.39,-.8
air.velocity = -2
air.hittime = 12
id = 440
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 440, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 8
movetype = I

[State 440, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Crouch Strong Kick
[Statedef 450]
type = C
movetype= A
physics = C
juggle = 0
poweradd= 70
ctrl = 0
anim = 450
facep2 = 1

[State 450, Swing Snd]
type=PlaySnd
trigger1=AnimElem=2
value=1,5
channel=1

[State 450, voice]
type = PlaySnd
trigger1 = animelem = 2 && random < 200 && var(1) != 2
value = S200,0+random%2
channel = 0

[State 450, Width]
type = Width
trigger1 = AnimElem = 3,>=0 && AnimElem = 4,<0
value = 40,0
ignorehitpause = 1

[State 450, 1]
type = HitDef
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1 = AnimElem = 3
attr = C, NA
damage = 20, 0
animtype = Heavy
guardflag = LA
hitflag = MA
priority = 4, Hit
pausetime = 12,12
sparkNo=-1 + 0 * (var(33) := 8012)
guard.sparkNo=-1 + 0 * (var(34) := 8000)
sparkXY=-10 + 0 * (var(35) := 155), var(36) := -36
hitsound=S2,5
guardsound=s130, 0
ground.type = Trip
ground.slidetime = 5
ground.hittime = 15
guard.hittime = (15) - 6
ground.velocity = -2,-8
airguard.velocity = -2.39,-.8
air.velocity = -2,-7
air.hittime = 15
fall = 1
fall.recover = 0
yaccel = 0.8
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 450, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
movetype = I

[State 450, end]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Jump Light Punch
[Statedef 600]
type = A
movetype= A
physics = A
juggle = 0
poweradd= 15
ctrl = 0
anim = 600

[State 600, Swing Snd]
type=PlaySnd
trigger1=AnimElem=2
value=1,0
channel=1

[State 600, voice]
type = PlaySnd
trigger1 = animelem = 2 && random < 200 && var(1) != 2
value = S200,0+random%2
channel = 0

[State 600, 1]
type = HitDef
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1 = AnimElem = 3
trigger2 = time = 0
attr = A, NA
damage = 18, 0
animtype = Light
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 8,8
sparkNo=-1 + 0 * (var(33) := 8010)
guard.sparkNo=-1 + 0 * (var(34) := 8000)
sparkXY=-10 + 0 * (var(35) := 155), var(36):=-40
hitsound=S2,0
guardsound=s130, 0
ground.type = High
ground.slidetime = 5
ground.hittime = 12
guard.hittime = (12) - 6
ground.velocity = -4
air.animtype = back
airguard.velocity = -3.9,-.8
air.velocity = -3.4,-3
air.hittime = 12
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 600, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
movetype = I
;---------------------------------------------------------------------------
; Jump Medium Punch
[Statedef 610]
type = A
movetype= A
physics = A
juggle = 0
poweradd= 65
ctrl = 0
anim = 610

[State 610, Swing Snd]
type=PlaySnd
trigger1=AnimElem=2
value=1,1
channel=1

[State 610, voice]
type = PlaySnd
trigger1 = animelem = 2 && random < 200 && var(1) != 2
value = S200,0+random%2
channel = 0

[State 610, Width]
type = Width
trigger1 = AnimElem = 2,>=0
trigger1 = AnimElem = 5,<0 
value = 25,16
ignorehitpause = 1

[State 610, 1]
type = HitDef
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1 = AnimElem = 2
trigger2 = time = 0
attr = A, NA
damage = 20, 0
animtype = Medium
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 8,8
guard.pausetime = 10,10
sparkNo=-1 + 0 * (var(33) := 8011)
guard.sparkNo=-1 + 0 * (var(34) := 8000)
sparkXY=-10 + 0 * (var(35) := 155), var(36) := -40
hitsound=S2,1
guardsound=s130, 0
ground.type = High
ground.slidetime = 5
ground.hittime = 15
guard.hittime = (15) - 6
ground.velocity = -4
guard.velocity = -6
air.animtype = back
airguard.velocity = -3.9,-.8
air.velocity = -3.4,-3
air.hittime = 12
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 610, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3
movetype = I
;---------------------------------------------------------------------------
; Jump Strong Punch
[Statedef 620]
type = A
movetype= A
physics = A
juggle = 0
poweradd= 70
ctrl = 0
anim = 620

[State 620, Swing Snd]
type=PlaySnd
trigger1=AnimElem=2
value=1,2
channel=1

[State 620, voice]
type = PlaySnd
trigger1 = animelem = 2 && random < 200 && var(1) != 2
value = S200,0+random%2
channel = 0

[State 620, 1]
type = HitDef
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1 = AnimElem = 3
trigger2 = time = 0
attr = A, NA
damage = 22, 0
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 8,8
guard.pausetime = 12,12
sparkNo=-1 + 0 * (var(33) := 8012)
guard.sparkNo=-1 + 0 * (var(34) := 8000)
sparkXY=-10 + 0 * (var(35) := 155), var(36) := -60
hitsound=S2,2
guardsound=s130, 0
ground.type = High
ground.slidetime = 5
ground.hittime = 18
guard.hittime = (18) - 6
ground.velocity = -4
guard.velocity = -9
air.animtype = back
airguard.velocity = -3.9,-.8
air.velocity = -3.4,-3
air.hittime = 12
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 620, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
movetype = I
;---------------------------------------------------------------------------
; Jump Light Kick
[Statedef 630]
type = A
movetype= A
physics = A
juggle = 0
poweradd= 20
ctrl = 0
anim = 630

[State 630, Swing Snd]
type=PlaySnd
trigger1=AnimElem=2
value=1,3
channel=1

[State 630, voice]
type = PlaySnd
trigger1 = animelem = 2 && random < 200 && var(1) != 2
value = S200,0+random%2
channel = 0

[State 630, 1]
type = HitDef
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1 = AnimElem = 5
trigger2 = time = 0
attr = A, NA
damage = 18, 0
animtype = Light
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 8,8
sparkNo=-1 + 0 * (var(33) := 8010)
guard.sparkNo=-1 + 0 * (var(34) := 8000)
sparkXY=-10 + 0 * (var(35) := 155), var(36):=-60
hitsound=S2,3
guardsound=s130, 0
ground.type = High
ground.slidetime = 5
ground.hittime = 12
guard.hittime = (12) - 6
ground.velocity = -4
air.animtype = back
airguard.velocity = -3.9,-.8
air.velocity = -3.4,-3
air.hittime = 12
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 630, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 6
movetype = I
;---------------------------------------------------------------------------
; Jump Medium Kick
[Statedef 640]
type = A
movetype= A
physics = A
juggle = 0
poweradd= 65
ctrl = 0
anim = 640

[State 640, Swing Snd]
type=PlaySnd
trigger1=AnimElem=2
value=1,4
channel=1

[State 640, voice]
type = PlaySnd
trigger1 = animelem = 2 && random < 200 && var(1) != 2
value = S200,0+random%2
channel = 0

[State 640, 1]
type = HitDef
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1 = AnimElem = 4
trigger2 = time = 0
attr = A, NA
damage = 18, 0
animtype = Medium
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 8,8
guard.pausetime = 10,10
sparkNo=-1 + 0 * (var(33) := 8011)
guard.sparkNo=-1 + 0 * (var(34) := 8000)
sparkXY=-10 + 0 * (var(35) := 155), var(36):=-90
hitsound=S2,4
guardsound=s130, 0
ground.type = High
ground.slidetime = 5
ground.hittime = 15
guard.hittime = (15) - 6
ground.velocity = -4
guard.velocity = -6
air.animtype = back
airguard.velocity = -3.9,-.8
air.velocity = -3.4,-3
air.hittime = 12
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 640, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 5
movetype = I
;---------------------------------------------------------------------------
; Jump Strong Kick
[Statedef 650]
type = A
movetype= A
physics = A
juggle = 0
poweradd= 70
ctrl = 0
anim = 650

[State 650, Swing Snd]
type=PlaySnd
trigger1=AnimElem=2
value=1,5
channel=1

[State 650, voice]
type = PlaySnd
trigger1 = animelem = 2 && random < 200 && var(1) != 2
value = S200,0+random%2
channel = 0

[State 650, 1]
type = HitDef
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1 = AnimElem = 3
trigger2 = time = 0
attr = A, NA
damage = 22, 0
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 8,8
guard.pausetime = 12,12
sparkNo=-1 + 0 * (var(33) := 8012)
guard.sparkNo=-1 + 0 * (var(34) := 8000)
sparkXY=-10 + 0 * (var(35) := 155), var(36) := -45
hitsound=S2,5
guardsound=s130, 0
ground.type = High
ground.slidetime = 5
ground.hittime = 18
guard.hittime = (18) - 6
ground.velocity = -4
guard.velocity = -9
air.animtype = back
airguard.velocity = -3.9,-.8
air.velocity = -3.4,-3
air.hittime = 12
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 650, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 5
movetype = I
;---------------------------------------------------------------------------
;Rider Kick
[StateDef 651]
type = A
movetype= A
physics = A
juggle = 0
ctrl = 0
anim = 651
poweradd = 50
sprpriority = 2

[State 651, Swing Snd]
type=PlaySnd
trigger1=AnimElem=2
value=1,5
channel=1

[State 651, voice]
type = PlaySnd
trigger1 = animelem = 2 && random < 200 && var(1) != 2
value = S200,0+random%2
channel = 0

[State 651, 1]
type = HitDef
trigger1 = !var(16) && (var(15)<1 || var(20))
trigger1 = AnimElem = 3
attr = A, NA
damage = 95
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 16,16
sparkNo=-1 + 0 * (var(33) := 8012)
guard.sparkNo=-1 + 0 * (var(34) := 8000)
sparkXY=-10 + 0 * (var(35) := 155), var(36) := -50
hitsound=S2,5
guardsound=s130, 0
ground.type = High
ground.slidetime = 5
ground.hittime = 12
guard.hittime = (12) - 6
ground.velocity = -4,6
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,5
air.hittime = 12
fall = 1
fall.recover = 0
yaccel = 0.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
down.cornerpush.veloff = 0

[State 651, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
movetype = I

;---------------------------------------------------------------------------
;Throw - Attempt
[Statedef 800]
type =S
movetype= A
physics=S
juggle =0
velset=0,0
ctrl=0
anim=800
facep2=1

[State 800, Strength]
type=varset
trigger1=!time && !AIlevel
var(10)=ifelse(command="kk",0,1)

[State 800, Strength]
type=varset
trigger1=!time && AIlevel
var(10)=ceil(random / 500)

[State 800, Throw Escape Reset]
type=VarSet
trigger1=1
var(19)=0

[State 800, Escape]
type=VarSet
trigger1=NumEnemy
trigger1=(EnemyNear, StateNo=[0,899]) && (EnemyNear, StateNo != [100,104]) && (EnemyNear, StateNo != [600,799])
var(19)=7

[State 800, AttackDist]
type=AttackDist
trigger1=1
value=0

[State 800, Throw 1]
type=Hitdef
trigger1=AnimElem=1 && !var(10)
trigger1=!var(38)
attr=S, NT
priority=1,Miss
getpower=35 * !var(20)
givepower=0
hitflag=M-
numhits=0
sparkno=-1
p1facing = ifelse (command = "holdfwd", -1, 1)
p2facing = 1
p1stateno = 840
p2stateno = 850
hitsound=s800, 0
fall=1
fall.recover=1

[State 800, Throw 2]
type=Hitdef
trigger1=AnimElem=1 && var(10)=1
trigger1=!var(38)
attr=S, NT
priority=1,Miss
getpower=35 * !var(20)
givepower=0
hitflag=M-
numhits=0
sparkno=-1
p1facing = ifelse (command = "holdback", -1, 1)
p2facing = 1
p1stateno=810
p2stateno = 820
hitsound=s800, 0
fall=1
fall.recover=1

[State 800, Miss Voice]
type =PlaySnd
trigger1=AnimElem=4
value=5000,0
channel=0

[State 800, Swing Snd]
type=PlaySnd
trigger1=AnimElem=2
value=1,0
channel=1

[State 800, End]
type=ChangeState
trigger1=!AnimTime
value=0
ctrl=1


;THROW SWITCHING SIDES
;Throw - Switching Sides
[Statedef 805]
type=S
movetype=A
physics=S
anim=805
ctrl=0
sprpriority=-1

[State 805, Throw]
type=targetstate
trigger1= !time && numtarget
value=806
[State 805, Throw]
type=targetfacing
trigger1= !time && numtarget
value=-1

[State 805, Width]
type=width
trigger1= 1
edge=24,24

[State 805, Turn]
type=turn
trigger1= animelem=3
[State 805, facing]
type=targetfacing
trigger1= 1
value=-1

[State 805, Escape]
type=changestate
trigger1= numtarget && var(19)
trigger1= (target,command="holdfwd" || target,command="holdback")
trigger1= (target,command="b" || target,command="c" || target,command="y" || target,command="z")
value=890
[State 805, Escape]
type=varadd
trigger1= var(19)>0
var(19)=-1

[State 805, Bind 1]
type=targetbind
trigger1= animelemtime(2)<0 || animelemtime(4)>=0
pos=ceil(55*const(size.xscale)),0
[State 805, Bind 2]
type=targetbind
trigger1= animelemtime(2)>=0 && animelemtime(4)<0
pos=ceil(35*const(size.xscale)),0

[State 805, spr]
type=sprpriority
trigger1= animelem=2
value=-1

[State 805, End]
type=changestate
trigger1= !numtarget
value=0
ctrl=1
[State 805, End]
type=changestate
trigger1= animelemtime(4)>=0
value=ifelse(var(10),820,810)
;THROW SWITCHING SIDES (TARGET)
;Throw - Target Switching Sides
[StateDef 806]
type = A
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

[State 806, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 1,1

[State 806, SelfState]
type = SelfState
trigger1 = Time >= 60
value = ifElse(pos y < 0, 5040, 0)
ctrl = 1
;----------------------------------------------------------------------------
; Order Buckler, P1
[Statedef 810]
type = S
movetype= A
physics = N
anim = 810
poweradd = 60
sprpriority = 2

[State 810, Throw]
type = TargetState
trigger1 = !time && numtarget
value = 820

[State 810, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5 || animelem = 10
value = S2,9
volume = 0
channel = 1
freqmul = 1.0
loop = 0
pan = 0

[State 810, Hit Spark]
type = Helper
trigger1 = animelem = 5
helperType = Normal
stateNo = 8015
ID = 8000
name = "Spark"
posType = P1
pos = 40,-85
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 810, PlaySnd]
type = PlaySnd
trigger1 = Time = 10
value = S810,0
volumescale = 100
channel = 0
freqmul = 1.0
loop = 0
pan = 0

[State 810, TargetBind]
type = TargetBind
trigger1 = Time < 55
time = 1
id = -1
pos = 30,0

[State 810, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = Time = 22
value = -125
absolute = 0

[State 810, TargetState]
type = TargetState
trigger1 = Time = 55
value = 821
ID = -1

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Order Buckler, P2
[Statedef 820]
type = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820

[State 820, No Scroll]
type = Screenbound
trigger1 = 1
movecamera = 0,0
;---------------------------------------------------------------------------
; Throw Air State
[Statedef 821]
type = A
movetype= H
physics = N
velset = -2.8,-7
poweradd = 40

[State 821, VelAdd]
type = VelAdd
trigger1 = 1
y = .5

[State 821, ScreenBound]
type = ScreenBound
triggerall = PrevStateNo = 53022 || PrevStateNo = 53027
trigger1 = 1
value = 1
movecamera = 1,0
ignorehitpause = 1 

[State 821, PalFX]
type = PalFX
triggerall = Time = 0
trigger1 = PrevStateNo = 51054||PrevStateNo = 53022 || PrevStateNo = 53027
time = 70
add = 240,50,0
mul = 250,224,120
sinadd = 110,55,85,10
invertall = 1
color = 0

[State 821, ChangeAnim]
type = ChangeAnim
triggerall = Time = 0
trigger1 = PrevStateNo = 51054||PrevStateNo = 53022 || PrevStateNo = 53027
value = 5050 

[State 821, end] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground
;---------------------------------------------------------------------------
;Leona Crush
[Statedef 830]
type = S
movetype= A
physics = S
juggle = 0
velset = 0,0
ctrl = 0
anim = 800

[State 830, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT
hitflag = M
priority = 1, Miss
sparkno = -1
hitsound = S800,0
sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 840
fall = 1
fall.recover = 0
fall.envshake.time = 10
fall.envshake.ampl = 90
fall.envshake.phase = 4
fall.envshake.freq = 180

[State 830, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
;Leona Crush, P1
[Statedef 840]
type = S
movetype= A
physics = N
anim = 840
poweradd = 60

[State 840, Throw]
type = TargetState
trigger1 = !time && numtarget
value = 850

[State 840, SprPriority]
type = SprPriority
trigger1 = AnimElem =1
value = 2

[State 840, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1,>=0 && AnimElem = 2,<0
pos = 40, 0

[State 840, SprPriority]
type = SprPriority
trigger1 = AnimElem =2
value = 2

[State 840, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2,>=0 && AnimElem = 3,<0
pos = 47, -103

[State 840, SprPriority]
type = SprPriority
trigger1 = AnimElem =3
value = 2

[State 840, Bind 3]
type = TargetBind
trigger1 = AnimElem = 3,>=0 && AnimElem = 4,<0
pos = 43, -105

[State 840, SprPriority]
type = SprPriority
trigger1 = AnimElem =4
value = 2

[State 840, Bind 4]
type = TargetBind
trigger1 = AnimElem = 4,>=0 && AnimElem = 5,<0
pos = 39, -77

[State 840, SprPriority]
type = SprPriority
trigger1 = AnimElem =5
value = 2

[State 840, Bind 5]
type = TargetBind
trigger1 = AnimElem = 5,>=0 && AnimElem = 6,<0
pos = 39, -77

[State 840, SprPriority]
type = SprPriority
trigger1 = AnimElem =6
value = 2

[State 840, Bind 6]
type = TargetBind
trigger1 = AnimElem = 6,>=0 && AnimElem = 7,<0
pos = 39, -77

[State 840, Bind 7]
type = TargetBind
trigger1 = AnimElem = 7,>=0 && AnimElem = 8,<0
pos = 39, -77

[State 840, Bind 8]
type = TargetBind
trigger1 = AnimElem = 8,>=0 && AnimElem = 9,<0
pos = 39, -77

[State 840, Bind 9]
type = TargetBind
trigger1 = AnimElem = 9,>=0 && AnimElem = 10,<0
pos = 53, -77

[State 840, Bind 10]
type = TargetBind
trigger1 = AnimElem = 10,>=0 && AnimElem = 11,<0
pos = 60, -77

[State 840, Bind 11]
type = TargetBind
trigger1 = AnimElem = 11,>=0 && AnimElem = 12,<0
pos = 62, -77

[State 840, SprPriority]
type = SprPriority
trigger1 = AnimElem =12
value = -1

[State 840, Bind 12]
type = TargetBind
trigger1 = AnimElem = 12,>=0 && AnimElem = 13,<0
pos = -8, -70

[State 840, Turn]
type = Turn
trigger1 = AnimElem = 13

[State 840, SprPriority]
type = SprPriority
trigger1 = AnimElem =13
value = -1

[State 840, Bind 13]
type = TargetBind
trigger1 = AnimElem = 13,>=0 && AnimElem = 14,<0
pos = 20, -80

[State 840, Bind 14]
type = TargetBind
trigger1 = AnimElem = 14,>=0 && AnimElem = 15,<0
pos = -12, -70

[State 840, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 10
value = S200,1
volumescale = 100
channel = 0
freqmul = 1.0
loop = 0
pan = 0

[State 840, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 14
value = S5,8
volumescale = 100
channel = 1
freqmul = 1.0
loop = 0
pan = 0

[State 840, Hurt]
type = TargetLifeAdd
trigger1 = AnimElem = 15
value = -120

[State 840, Throw]
type = TargetState
trigger1 = AnimElem = 15
value = 851
absolute = 0

[State 840, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;----------------------------------------------------------------------
;Leona Crush, P2
[Statedef 850]
type = A
movetype = H
physics = N
velset = 0,0

[State 850, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 850

[State 850, No Scroll]
type = Screenbound
trigger1 = 1
movecamera = 0,0

;----------------------------------------------------------------------
;Throw Air State 2
[Statedef 851]
type = A
movetype = H
physics = N
velset = 5,-7
poweradd = 40

[State 851, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 851, 2]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100
;---------------------------------------------------------------------------
;Heidern Inferno
[Statedef 860]
type = A
movetype= A
physics = A
juggle = 0
ctrl = 0
anim = 860

[State 860, 1]
type = HitDef
Trigger1 = AnimElem = 1
attr = A, NT
hitflag = A
priority = 1, Miss
sparkno = -1
sprpriority = 1
hitsound = S800,0
p1facing = 1
p2facing = -1
p1stateno = 870
fall = 1

;----------------------------------------------------------------------
;Heidern Inferno, P1
[Statedef 870]
type = A
movetype= A
physics = N
anim = 870
poweradd = 60
velset = 0,0

[State 870, Throw]
type = TargetState
trigger1 = !Time&&NumTarget
value = 880

[State 870, SprPriority]
type = SprPriority
trigger1 = AnimElem =1
value = -1

[State 870, Bind 1]
type = TargetBind
trigger1 = AnimElem = 1,>=0 && AnimElem =2,<0
pos = -10, -145

[State 870, Bind 2]
type = TargetBind
trigger1 = AnimElem = 2,>=0 && AnimElem =3,<0
pos = 10, -115

[State 870, Bind 3]
type = TargetBind
trigger1 = AnimElem = 3,>=0 && AnimElem =4,<0
pos = 10, -70

[State 870, Bind 4]
type = TargetBind
trigger1 = AnimElem = 4,>=0 && AnimElem =5,<0
pos = 10, -25

[State 870, Bind 5]
type = TargetBind
trigger1 = AnimElem = 5,>=0 && AnimElem =6,<0
pos = 10, -5

[State 870, Bind 6]
type = TargetBind
trigger1 = AnimElem = 6,>=0 && AnimElem =7,<0
pos = 15, -5

[State 870, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 7,=0
value = S5,5
volume = 0
channel = 1
freqmul = 1.0
loop = 0
pan = 0

[State 870, Explod]
type = Explod
trigger1 = AnimElem = 7,=0
anim = 8080
ID = 8080
pos = 15,-5
postype = p1
removetime = -2
scale = 1,1
sprpriority = 4
ownpal = 1

[State 870, EnvShake]
type = EnvShake
trigger1 = AnimElem = 7,=0
time = 5
ampl = 90
phase = 4
freq = 180

[State 870, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = AnimElem = 7,=0
value = -135
ID = -1
kill = 1
absolute = 0

[State 870, Throw]
type = TargetState
trigger1 = AnimElem = 7,=0
value = 881

[State 870, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 8
physics = A

[State 870, Turn]
type = Turn
trigger1 = AnimElem = 8

[State 870, VelSet]
type = VelSet
trigger1 = AnimElem = 8
x = 5

[State 870, No Scroll]
type = Screenbound
trigger1 = 1
movecamera = 0,0

;----------------------------------------------------------------------
;Heidern Inferno, P2
[Statedef 880]
type = A
movetype = H
physics = N
velset = 0,0

[State 880, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 880

[State 880, No Scroll]
type = Screenbound
trigger1 = 1
movecamera = 0,0
;----------------------------------------------------------------------
;Throw Air State 3
[Statedef 881]
type = A
movetype = H
physics = N
velset = 2,-9.5
poweradd = 40

[State 881, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .5

[State 881, 2] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground