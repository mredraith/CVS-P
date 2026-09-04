; _________________________________________
;| Character by Author Name |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;
;SUPER MOVES=
;

;---------------------------------------------------------------------------
;Super 1
[Statedef 3995]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -1000
facep2 = 1

[State 3000, Anim]
type = changeanim
trigger1 = !time
value = 3000

[state 3000]
type = Width
trigger1 = time = [0, 1]
edge = 40,0

[state 3000, Posset]
type = posset
trigger1 = !time
y = 0

[State 3000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = 3

[State 3000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = 3

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

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S4,7

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = animelem = 24
value = S1, 2

[State 3000, Superpause FX]
type = helper
trigger1 = Time = 3
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = 17, -75
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = Time = 3
time = 44
movetime = 44
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, Helper]
type = Helper
trigger1 = animelem = 26
helpertype = normal ;player
name = "Needles"
ID = 3000
stateno = 3005
pos = 90,0
postype = p1 ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 0
pausemovetime = 0

[State 3000, Idle]
type = StateTypeSet
trigger1 = AnimElemTime(28) >= 0
moveType = I

[State 3000, ChangeState]
type = ChangeState
trigger1 = !animtime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;MAX Super 1
[StateDef 3998]
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
value=3050

[state 3050,Posset]
type=posset
trigger1=!time
y=0

[State 3050, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 4

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
pos = 3, -104
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

[State 3050, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-----------------------------------------------
;LVL 3 Super
[StateDef 3997]
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
value=3500

[state 3500,Posset]
type=posset
trigger1=!time
y=0

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

[State 3500, Super Pause FX]
type = Helper
trigger1 = animelem = 4
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = 11, -63
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3500, Super Pause]
type = SuperPause
trigger1 = animelem = 4
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3500, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; NOVOS =
; level 1 drill
[Statedef 3000]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 2000
poweradd = -1000
juggle = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT,MF,MAFLD,MAFD
value2 = S,NA
time = 60
;ignorehitpause =
;persistent =

;add to superpause:
[State 0, VarSet]
type = VarSet
trigger1 = time = 5
v = 20
value = 0


[State 3000, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S4,7

[State 3000, Superpause FX]
type = helper
trigger1 = Time = 0
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = 17, -75
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = Time = 0
time = 44
movetime = 44
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 2000,1]
type = ChangeState
trigger1 = time = 40
value = 3001
ctrl = 0

; ==

[Statedef 3001]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 2001
juggle = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT,MF,MAFLD,MAFD
value2 = S,NA
time = 120
;ignorehitpause =
;persistent =

[State 3002]
type = Helper
trigger1 = time = 4
stateno = 21300
id = 21300
ownpal = 1
;pos = 56,-12
offset = 150,0

;[State 0, Projectile]
;type = Projectile
;trigger1 = time = 4
;trigger2 = time = 6
;trigger3 = time = 8
;ProjID = 2000
;projanim = 2040
;projhitanim = -1;
;projremanim = -1;
;attr = S, SP
;damage = 60,6
;animtype = high
;air.animtype = Back
;ground.type = High
;guardflag = M
;hitflag = MAF
;sparkno = S7201+(random%4)
;guard.sparkno = S6060+(random%3);
;sparkxy = -10,-10
;pausetime = 10,10
;guard.pause = 10,10
;getpower = 0,0
;GivePower = 20,10
;hitsound = S5,1
;guardsound = S6,1
;ground.slidetime = 15
;ground.hittime = 15
;ground.velocity = -12
;air.velocity = -3,-8
;yaccel = 0.55
;guard.velocity = -12
;guard.ctrltime = 15
;air.juggle = 0
;fall = 0
;air.fall = 1
;fall.recover = 0
;projscale = 1,1
;projremove = 1 ;0 or 1
;projremovetime = 34 ;-1 is no remove time.
;velocity = 9, 0
;projmisstime = 0
;offset = 40,0
;postype = p1
;projshadow = 0,0,0
;sprpriority = 7
;projhits = 1
;projpriority = 3
;ownpal = 1
;envshake.time = 3
;envshake.freq = 110
;envshake.ampl = 7
;fall.envshake.time = 10
;fall.envshake.freq = 110 ;speed
;fall.envshake.ampl = 7	;strong weak
;getpower = 0
;GivePower = ifelse ( var(20) > 0,20, 20)


;[State 2000, Projectile]
;type = Projectile
;trigger1 = time = 5
;trigger2 = time = 7
;ProjID = 2000
;projanim = 2040
;projhitanim = -1;
;projremanim = -1;
;attr = S, SP
;damage = 60,6

;animtype = high
;air.animtype = Back
;ground.type = High
;guardflag = M
;hitflag = MAF
;sparkno = S7201+(random%4)
;guard.sparkno = S6060+(random%3)
;
;sparkxy = 30,-40
;pausetime = 10,10
;guard.pause = 10,10
;
;getpower = 0,0
;GivePower = 20,10
;
;hitsound = S5,1
;guardsound = S6,1
;ground.slidetime = 15
;ground.hittime = 15
;ground.velocity = -12
;air.velocity = -3,-8
;yaccel = 0.55
;
;guard.velocity = -12
;guard.ctrltime = 15
;
;air.juggle = 0
;fall = 0
;air.fall = 1
;fall.recover = 0
;projscale = 1,1
;projremove = 1 ;0 or 1
;projremovetime = 34 ;-1 is no remove time.
;velocity = 9 , 0
;projmisstime = 0
;offset = 40,0
;postype = p1
;projshadow = 0,0,0
;sprpriority = 7
;projhits = 1
;projpriority = 3
;ownpal = 1
;
;envshake.time = 3
;envshake.freq = 110
;envshake.ampl = 7
;
;fall.envshake.time = 10
;fall.envshake.freq = 110 ;speed
;fall.envshake.ampl = 7	;strong weak
;
;getpower = 0
;GivePower = ifelse ( var(20) > 0,20, 20)

;[State 2000,EXPLOD]
;type = Explod
;trigger1 = animelem = 3
;anim = 2080
;sprpriority = 4
;postype = p1
;pos = 60,0 ;##21#
;bindtime = 1
;pausemovetime = 0
;removetime = -2
;ignorehitpause = 0
;scale = 0.9,1
;vel = 0,0
;ownpal = 1
;removeongethit = 0

[State 1001,1]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 0, CtrlSet]
type = CtrlSet
trigger1 = time>=74
value = 1

; ==

[Statedef 21300]
type = A
movetype = A
physics = N
;anim = 21300
ctrl = 0
sprpriority = 3
velset = 0,0
;hitcountpersist = 1

;[State 0, VarAdd]
;type = parentVarAdd
;trigger1 = animelem = 1
;v = 40
;value = 1

[State 21300]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 2099;21300
value = 2099;21300


[State 21300]
type = AssertSpecial
trigger1 = 1
flag = noshadow



[State 21300]
type = PlaySnd
trigger1 = AnimElem = 1
value = s1,0

;[State 21300]
;type = VelSet
;trigger1 = Time = 0
;y = -9


;[State 21300]
;type = VelAdd
;trigger1 = Pos Y < 0
;y = 0.4


;[State 21300]
;type = VelSet
;trigger1 = Pos Y >= 0
;trigger1 = Vel Y > 0
;y = 0


[State 21300]
type = HitBy
trigger1 = 1
value = SCA,AP

[State 21300]
type = HitOverride
trigger1 = 1
stateno = 21300
attr = SCA,AP
slot = 0
time = -1


[State 21240]
type = HitDef
attr = A, SP
;triggerall = stateno = 21300
trigger1 = time = 0;hitcount < 1
;trigger1 = moveguarded < 1
damage = 70,35
animtype = Medium
priority = 5, Hit
guardflag = MA
hitflag = MAFD
pausetime = 13,2
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=211), var(36):=-65
ground.type = High
ground.slidetime = 10
ground.hittime = 20
guard.hittime = (20) - 6
ground.velocity = -7,-3
air.velocity = -7,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 50,25
sprpriority = 3
air.fall = 1
fall = 1
envshake.time = 14
envshake.ampl = 4
envShake.freq = 120

[State 21300]
type = Helper
triggerall = root,stateno=[3000,3051]
trigger1 = Time = 8 && FrontEdgeDist > -10
stateno = 21300
id = 21300
ownpal = 1
pos = 80,floor(-Pos Y)-12

[State -2, HitSound]
type = playsnd
trigger1 = movecontact = 1 && var(30) = hitpausetime
trigger1 = movehit = 1 && var(31) >= 0
value = 2, var(31)
channel = 2
ignorehitpause = 1

[State -2, GuardSound]
type = playsnd
trigger1 = movecontact = 1 && var(30) = hitpausetime
trigger1 = moveguarded = 1 && var(32) >= 0
value = 3, var(32)
channel = 2
ignorehitpause = 1

;[State -2, Sparks]
;type = helper
;;triggerall = StateNo != 1301 && StateNo != 1331
;triggerall = movecontact = 1 ;&& var(30) = hitpausetime
;trigger1 = movehit = 1 && numenemy
;;trigger1 = var(33) = 8010 || var(33) = 8011 || var(33) = 8012 || var(33) = 8013 || var(33) = 8014 || var(33) = 8001
;trigger2 = moveguarded = 1 && numenemy
;;trigger2 = var(34) = 8000 || var(34) = 8001
;trigger3 = MoveHit = 1 && NumEnemy
;;trigger3 = var(33) = 8015 || var(33) = 8016 || var(33) = 8017
;stateno = ifelse(moveguarded, var(34), var(33))
;ID = 8000
;name = "Spark"
;postype = p1
;pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35))), var(36)
;facing = -1
;ownpal = 1
;pausemovetime = 65535
;supermovetime = 65535
;ignorehitpause = 1

[State -2, Hit Sparks]
type = Helper
triggerAll = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = MoveHit = 1 && NumEnemy
;trigger1 = hitcount < 1
;trigger1 = moveguarded < 1
;trigger1 = var(33) = [8010,8024]
;trigger2 = MoveGuarded = 1 && NumEnemy
;trigger2 = var(34) = 8000 || var(34) = 8001
helperType = Normal
;stateNo = Ifelse(MoveGuarded, var(34), Ifelse(var(33) < 8020,8010,8020))
;stateno = ifelse(moveguarded, var(34), var(33))
stateNo = 8010;Ifelse(MoveGuarded, var(34), Ifelse(var(33) < 8020,8010,8020))
ID = 8000
name = "Spark"
postype = P2
pos = 0,-60;Ifelse(P2Dist x < 0, 0, Ifelse(P2Dist x < var(35), ceil(P2Dist x), var(35))), var(36)
facing = -1
ownPal = 1
size.xscale =1.0
size.yscale =1.0
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1


[State -2, Hit Sparks]
type = Helper
triggerAll = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = Moveguarded = 1 && NumEnemy
;trigger1 = hitcount < 1
;trigger1 = moveguarded < 1
;trigger1 = var(33) = [8010,8024]
;trigger2 = MoveGuarded = 1 && NumEnemy
;trigger2 = var(34) = 8000 || var(34) = 8001
helperType = Normal
;stateNo = Ifelse(MoveGuarded, var(34), Ifelse(var(33) < 8020,8010,8020))
;stateno = ifelse(moveguarded, var(34), var(33))
stateNo = 8000;Ifelse(MoveGuarded, var(34), Ifelse(var(33) < 8020,8010,8020))
ID = 8000
name = "Spark"
postype = P2
pos = 0,-60;Ifelse(P2Dist x < 0, 0, Ifelse(P2Dist x < var(35), ceil(P2Dist x), var(35))), var(36)
facing = -1
ownPal = 1
size.xscale =1.0
size.yscale =1.0
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
;[State 21300]
;type = DestroySelf
;trigger1 = AnimTime = 0
;ignorehitpause = 1
;persistent = 0

[State 1006, End]
type = destroyself
triggerall = !animtime
trigger8 = Enemy, Name = "Twelve" && p2stateno = 3000
trigger7 = Enemy, Name = "Twelve" && p2stateno = 3001
trigger6 = Enemy, Name = "Twelve" && p2stateno = 3050
trigger5 = Enemy, Name = "Twelve" && p2stateno = 3051
trigger4 = Enemy, Name = "Twelve" && p2stateno = 3052
trigger3 = Enemy, Name = "Twelve" && p2stateno = 21300
trigger1 = !numtarget
trigger2 = numtarget

; ==

; level 2 drill
[Statedef 3050]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 2000
poweradd = -2000
juggle = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 60
;ignorehitpause =
;persistent =

;add to superpause:
[State 0, VarSet]
type = VarSet
trigger1 = time = 5
v = 20
value = 0


[State 3000, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S4,7

[State 3000, Superpause FX]
type = helper
trigger1 = Time = 0
stateno = 8510
ID = 8510
name = "Superpause FX"
postype = p1
pos = 17, -75
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = Time = 0
time = 44
movetime = 44
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 2000,1]
type = ChangeState
trigger1 = time = 40
value = 3051
ctrl = 0

; ==

[Statedef 3051]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 2051;2001
juggle = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = time=0
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT,MF,MAFLD,MAFD
value2 = S,NA
time = 120

[State 3002]
type = Helper
trigger1 = time = 4
stateno = 3052
id = 3052
ownpal = 1
;pos = 56,-12
offset = 150,0

[State 3002]
type = Helper
trigger1 = time = 10
stateno = 3052
id = 3052
ownpal = 1
;pos = 56,-12
offset = 150,0

;[State 0, Projectile]
;type = Projectile
;trigger1 = time = 4
;trigger2 = time = 6
;trigger3 = time = 8
;ProjID = 2000
;projanim = 2040
;projhitanim = -1;
;projremanim = -1;
;attr = S, SP
;damage = 60,6
;animtype = high
;air.animtype = Back
;ground.type = High
;guardflag = M
;hitflag = MAF
;sparkno = S7201+(random%4)
;guard.sparkno = S6060+(random%3);
;sparkxy = -10,-10
;pausetime = 10,10
;guard.pause = 10,10
;getpower = 0,0
;GivePower = 20,10
;hitsound = S5,1
;guardsound = S6,1
;ground.slidetime = 15
;ground.hittime = 15
;ground.velocity = -12
;air.velocity = -3,-8
;yaccel = 0.55
;guard.velocity = -12
;guard.ctrltime = 15
;air.juggle = 0
;fall = 0
;air.fall = 1
;fall.recover = 0
;projscale = 1,1
;projremove = 1 ;0 or 1
;projremovetime = 34 ;-1 is no remove time.
;velocity = 9, 0
;projmisstime = 0
;offset = 40,0
;postype = p1
;projshadow = 0,0,0
;sprpriority = 7
;projhits = 1
;projpriority = 3
;ownpal = 1
;envshake.time = 3
;envshake.freq = 110
;envshake.ampl = 7
;fall.envshake.time = 10
;fall.envshake.freq = 110 ;speed
;fall.envshake.ampl = 7	;strong weak
;getpower = 0
;GivePower = ifelse ( var(20) > 0,20, 20)


;[State 2000, Projectile]
;type = Projectile
;trigger1 = time = 5
;trigger2 = time = 7
;ProjID = 2000
;projanim = 2040
;projhitanim = -1;
;projremanim = -1;
;attr = S, SP
;damage = 60,6

;animtype = high
;air.animtype = Back
;ground.type = High
;guardflag = M
;hitflag = MAF
;sparkno = S7201+(random%4)
;guard.sparkno = S6060+(random%3)
;
;sparkxy = 30,-40
;pausetime = 10,10
;guard.pause = 10,10
;
;getpower = 0,0
;GivePower = 20,10
;
;hitsound = S5,1
;guardsound = S6,1
;ground.slidetime = 15
;ground.hittime = 15
;ground.velocity = -12
;air.velocity = -3,-8
;yaccel = 0.55
;
;guard.velocity = -12
;guard.ctrltime = 15
;
;air.juggle = 0
;fall = 0
;air.fall = 1
;fall.recover = 0
;projscale = 1,1
;projremove = 1 ;0 or 1
;projremovetime = 34 ;-1 is no remove time.
;velocity = 9 , 0
;projmisstime = 0
;offset = 40,0
;postype = p1
;projshadow = 0,0,0
;sprpriority = 7
;projhits = 1
;projpriority = 3
;ownpal = 1
;
;envshake.time = 3
;envshake.freq = 110
;envshake.ampl = 7
;
;fall.envshake.time = 10
;fall.envshake.freq = 110 ;speed
;fall.envshake.ampl = 7	;strong weak
;
;getpower = 0
;GivePower = ifelse ( var(20) > 0,20, 20)

;[State 2000,EXPLOD]
;type = Explod
;trigger1 = animelem = 3
;anim = 2080
;sprpriority = 4
;postype = p1
;pos = 60,0 ;##21#
;bindtime = 1
;pausemovetime = 0
;removetime = -2
;ignorehitpause = 0
;scale = 0.9,1
;vel = 0,0
;ownpal = 1
;removeongethit = 0

[State 1001,1]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 0, CtrlSet]
type = CtrlSet
trigger1 = time>=74
value = 1

; ==

[Statedef 3052]
type = A
movetype = A
physics = N
;anim = 21300
ctrl = 0
sprpriority = 3
velset = 0,0
;hitcountpersist = 1

[State 0, VarAdd]
type = parentVarAdd
trigger1 = animelem = 1
v = 40
value = 1

[State 21300]
type = ChangeAnim
trigger1 = Time = 0 && Anim != 2099;21300
value = 2099;21300


[State 21300]
type = AssertSpecial
trigger1 = 1
flag = noshadow



[State 21300]
type = PlaySnd
trigger1 = AnimElem = 1
value = s1,0

;[State 21300]
;type = VelSet
;trigger1 = Time = 0
;y = -9


;[State 21300]
;type = VelAdd
;trigger1 = Pos Y < 0
;y = 0.4


;[State 21300]
;type = VelSet
;trigger1 = Pos Y >= 0
;trigger1 = Vel Y > 0
;y = 0


[State 21300]
type = HitBy
trigger1 = 1
value = SCA,AP

[State 21300]
type = HitOverride
trigger1 = 1
stateno = 3052;21300
attr = SCA,AP
slot = 0
time = -1


[State 21240]
type = HitDef
attr = A, SP
trigger1 = hitcount < 1
trigger1 = moveguarded < 1
damage = 50,25
animtype = Medium
priority = 5, Hit
guardflag = MA
hitflag = MAFD
pausetime = 13,2
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=211), var(36):=-65
ground.type = High
ground.slidetime = 10
ground.hittime = 20
guard.hittime = (20) - 6
ground.velocity = -7,-3
air.velocity = -7,-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 50,25
sprpriority = 3
air.fall = 1
fall = 1
envshake.time = 14
envshake.ampl = 4
envShake.freq = 120

[State 21300]
type = Helper
triggerall = root,stateno=[3050,3051]
trigger1 = Time = 8 && FrontEdgeDist > -10
stateno = 3052
id = 3052
ownpal = 1
pos = 80,floor(-Pos Y)-12

[State -2, HitSound]
type = playsnd
trigger1 = movecontact = 1 && var(30) = hitpausetime
trigger1 = movehit = 1 && var(31) >= 0
value = 2, var(31)
channel = 2
ignorehitpause = 1

[State -2, GuardSound]
type = playsnd
trigger1 = movecontact = 1 && var(30) = hitpausetime
trigger1 = moveguarded = 1 && var(32) >= 0
value = 3, var(32)
channel = 2
ignorehitpause = 1

;[State -2, Sparks]
;type = helper
;;triggerall = StateNo != 1301 && StateNo != 1331
;triggerall = movecontact = 1 ;&& var(30) = hitpausetime
;trigger1 = movehit = 1 && numenemy
;;trigger1 = var(33) = 8010 || var(33) = 8011 || var(33) = 8012 || var(33) = 8013 || var(33) = 8014 || var(33) = 8001
;trigger2 = moveguarded = 1 && numenemy
;;trigger2 = var(34) = 8000 || var(34) = 8001
;trigger3 = MoveHit = 1 && NumEnemy
;;trigger3 = var(33) = 8015 || var(33) = 8016 || var(33) = 8017
;stateno = ifelse(moveguarded, var(34), var(33))
;ID = 8000
;name = "Spark"
;postype = p1
;pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35))), var(36)
;facing = -1
;ownpal = 1
;pausemovetime = 65535
;supermovetime = 65535
;ignorehitpause = 1

[State -2, Hit Sparks]
type = Helper
triggerAll = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = MoveHit = 1 && NumEnemy
;trigger1 = hitcount < 1
;trigger1 = moveguarded < 1
;trigger1 = var(33) = [8010,8024]
;trigger2 = MoveGuarded = 1 && NumEnemy
;trigger2 = var(34) = 8000 || var(34) = 8001
helperType = Normal
;stateNo = Ifelse(MoveGuarded, var(34), Ifelse(var(33) < 8020,8010,8020))
;stateno = ifelse(moveguarded, var(34), var(33))
stateNo = Ifelse(MoveGuarded, var(34), Ifelse(var(33) < 8020,8010,8020))
ID = 8000
name = "Spark"
postype = P2
pos = 0,-60;Ifelse(P2Dist x < 0, 0, Ifelse(P2Dist x < var(35), ceil(P2Dist x), var(35))), var(36)
facing = -1
ownPal = 1
size.xscale =1.0
size.yscale =1.0
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State -2, Hit Sparks]
type = Helper
triggerAll = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = Moveguarded = 1 && NumEnemy
;trigger1 = hitcount < 1
;trigger1 = moveguarded < 1
;trigger1 = var(33) = [8010,8024]
;trigger2 = MoveGuarded = 1 && NumEnemy
;trigger2 = var(34) = 8000 || var(34) = 8001
helperType = Normal
;stateNo = Ifelse(MoveGuarded, var(34), Ifelse(var(33) < 8020,8010,8020))
;stateno = ifelse(moveguarded, var(34), var(33))
stateNo = 8000;Ifelse(MoveGuarded, var(34), Ifelse(var(33) < 8020,8010,8020))
ID = 8000
name = "Spark"
postype = P2
pos = 0,-60;Ifelse(P2Dist x < 0, 0, Ifelse(P2Dist x < var(35), ceil(P2Dist x), var(35))), var(36)
facing = -1
ownPal = 1
size.xscale =1.0
size.yscale =1.0
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

;[State 21300]
;type = DestroySelf
;trigger1 = AnimTime = 0
;trigger2 = stateno !=3052

[State 1006, End]
type = destroyself
triggerall = !animtime
trigger8 = Enemy, Name = "Twelve" && p2stateno = 3000
trigger7 = Enemy, Name = "Twelve" && p2stateno = 3001
trigger6 = Enemy, Name = "Twelve" && p2stateno = 3050
trigger5 = Enemy, Name = "Twelve" && p2stateno = 3051
trigger4 = Enemy, Name = "Twelve" && p2stateno = 3052
trigger3 = Enemy, Name = "Twelve" && p2stateno = 21300
trigger1 = !numtarget
trigger2 = numtarget

; ==
;Level Max
[Statedef 3100]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0,0
anim = 2999;2100
poweradd=-3000
juggle = 0

[State 3500, Super Pause FX]
type = Helper
trigger1 = time = 0
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = 11, -95
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3500, Super Pause]
type = SuperPause
trigger1 = time = 0
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

;[State 2000,SuperPause BG]
;type = Explod
;trigger1 = time = 0
;anim = 6070
;sprpriority = -2
;postype = back
;pos = -50,-30
;bindtime = 1
;pausemovetime = 70
;removetime = -2
;ignorehitpause = 0
;scale = 1.2 , 1.2
;vel = 0,0
;ownpal = 1
;supermove = 1

[State 0, VarSet]
type = VarSet
trigger1 = time = 1
v = 44
value = 2500

[State 0, VarSet]
type = VarSet
trigger1 = prevstateno = [1000,2999]
trigger1 = time = 1
v = 20
value = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 40
value = 3101
ctrl = 0

; ==
; part 01 level max
[Statedef 3101]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 2101
juggle = 0

[State -3, VarSet]
type = VarSet
trigger1 = var(44) <= 0
trigger1 = time=0
v = 44
value = 2500

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
x = 14
y = 10

[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = A, HT ;Attributes: Standing, Normal Throw
hitflag = MAF ;MAFD M- Affect only ground people who are not being hit
priority = 5, Miss ;1-6
sprpriority = 1 ;Draw in front of p2
;p1facing = ifelse (command = "holdfwd", -1, 1) ;Turn if holding forwards
p2facing = 1
p1stateno = 3102; ok
p2stateno = 3108; ok
fall = 1
fall.recover = 0
hitsound = -1 + 0*(var(31):=4)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8011)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=25), var(36):=-83

[State 0,ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 3103; ok
ctrl = 0

; ==

[Statedef 3102]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 2101
juggle = 0

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
x = 16
y = 12

[State 0, Posset]
type = Changestate
trigger1 = time = 16
value = 3105

; ==
;part 02 level max

[Statedef 3105]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 2105
juggle = 0

; testar sem
;[State 0, jump up explode]
;type = Explod
;trigger1 = Time = 0
;anim = 6033
;sprpriority = -2
;postype = left
;pos = -30, -10
;bindtime = 1
;pausemovetime = 0
;removetime = 180
;ignorehitpause = 1
;scale = 0.55,0.5
;ownpal = 1

;925/ 920 add jump smnoke
;[State 0, jump up explode]
;type = Explod
;trigger1 = Time = 0
;anim = 6033
;sprpriority = -2
;postype = left
;pos = -30, -200
;bindtime = 1
;pausemovetime = 0
;removetime = 180
;ignorehitpause = 1
;scale = 0.55,0.55
;ownpal = 1


[State 0, EnvColor] ;White flash
type = EnvColor
;triggerall = var(38) = 0
trigger1 = animelem = 1
value = 0,0,0;248,248,248
time = 200
under = 1





[State 0, TargetBind]
type = TargetBind
trigger1 = facing = -1
trigger1 = animelem = 1
time = 1
pos = 20,-150

[State 0, TargetBind]
type = TargetBind
trigger1 = facing = 1
trigger1 = animelem = 1
time = 1
pos = -20,-150

[State 0, ScreenBound]
type = ScreenBound
trigger1 = time >= 0
value = 1
movecamera = 0,0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time >= 0
flag = noshadow


[State 0, PosSet]
type = PosSet
trigger1 = time = 0
x = 20
y = 110

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
x = 0
y = 0
[State 0, VelSet]
type = VelSet
trigger1 = time >= 20
x = 0
y = -30

[State 0, VelSet]
type = Posadd
trigger1 = time = 30
x = -50
[State 0, VelSet]
type = VelSet
trigger1 = time >= 31
x = 15
y = 30

[State 0, VelSet]
type = Posadd
trigger1 = time = 40
x = 50
y = -100
[State 0, VelSet]
type = VelSet
trigger1 = time >= 41
x = -30
y = -15

[State 0, VelSet]
type = Posadd
trigger1 = time = 50
x = 0
y = 30
[State 0, VelSet]
type = VelSet
trigger1 = time >= 51
x = 30
y = 0

[State 0, VelSet]
type = Posadd
trigger1 = time = 60
x = 0
y = -40
[State 0, VelSet]
type = VelSet
trigger1 = time >= 61
x = -30
y = 15

[State 0, VelSet]
type = Posadd
trigger1 = time = 70
x = 0
y = 0
[State 0, VelSet]
type = VelSet
trigger1 = time >= 71
x = 30
y = -15

[State 0, VelSet]
type = Posadd
trigger1 = time = 80
x = -50
y = 0
[State 0, VelSet]
type = VelSet
trigger1 = time >= 81
x = -15
y = 30

[State 0, VelSet]
type = Posadd
trigger1 = time = 90
x = 180
y = 0
[State 0, VelSet]
type = VelSet
trigger1 = time >= 91
x = -15
y = -30

[State 0, VelSet]
type = Posadd
trigger1 = time = 100
x = -100
y = 0
[State 0, VelSet]
type = VelSet
trigger1 = time >= 101
x = 30
y = 15

[State 0, VelSet]
type = Posadd
trigger1 = time = 110
x = 0
y = -100
[State 0, VelSet]
type = VelSet
trigger1 = time >= 111
x = -30
y = 0

[State 0, VelSet]
type = Posadd
trigger1 = time = 120
x = 100
y = 100
[State 0, VelSet]
type = VelSet
trigger1 = time >= 121
x = 15
y = -30

[State 0, VelSet]
type = Posadd
trigger1 = time = 130
x = -60
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = time >= 131
x = 0
y = 30
[State 0, VelSet]
type = VelSet
trigger1 = time >= 150
x = 0
y = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 24
trigger2 = time = 34
trigger3 = time = 44
trigger4 = time = 54
trigger5 = time = 64
trigger6 = time = 74
trigger7 = time = 84
trigger8 = time = 98
trigger9 = time = 105
trigger10 = time = 114
trigger11 = time = 124
trigger12 = time = 138
time = 5
freq = 100
ampl = 6

[State 0, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time = 24
trigger2 = time = 34
trigger3 = time = 44
trigger4 = time = 54
trigger5 = time = 64
trigger6 = time = 74
trigger7 = time = 84
trigger8 = time = 98
trigger9 = time = 105
trigger10 = time = 114
trigger11 = time = 124
trigger12 = time = 138
value = -27
kill = 0
;absolute = 0

[State 2100, PlaySnd]
type = PlaySnd
trigger1 = time = 24
trigger2 = time = 44
trigger3 = time = 64
trigger4 = time = 84
trigger5 = time = 105
trigger6 = time = 124
value = 2,1

[State 2100, PlaySnd]
type = PlaySnd
trigger1 = time = 34
trigger2 = time = 54
trigger3 = time = 74
trigger4 = time = 98
trigger5 = time = 114
trigger6 = time = 138
value = 999,999

[State 0, HitAdd]
type = HitAdd
trigger1 = time = 24
trigger2 = time = 44
trigger3 = time = 64
trigger4 = time = 84
trigger5 = time = 105
trigger6 = time = 124
value = 1

[State 0, HitAdd]
type = HitAdd
trigger1 = time = 34
trigger2 = time = 54
trigger3 = time = 74
trigger4 = time = 98
trigger5 = time = 114
trigger6 = time = 138
value = 1

;[State 0,explod]
;type = Explod
;trigger1 = time = 24
;anim = 7208+(random%4)
;sprpriority = 6
;ownpal = 1
;postype = p2
;pos = 10,-70
;removetime = 50
;bindtime = 1
;scale = 1,1

[State 890, spark]
type = Helper
trigger1 = time = 24
helperType = Normal
stateNo = 8011
ID = 8011
name = "Spark"
PosType = P2
;pos =0,IfElse((AnimElem=4,=1),-50,IfElse((AnimElem =83,=1),-69,-60))
pos = 0,-60
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

;[State 0,explod]
;type = Explod
;trigger1 = time = 34
;trigger1 = var(10) = 1
;anim = 7201+(random%4)
;sprpriority = 6
;ownpal = 1
;postype = p2
;pos = -165,50
;removetime = 18
;bindtime = 0
;scale = 1,1

[State 890, spark]
type = Helper
trigger1 = time = 34
helperType = Normal
stateNo = 8011
ID = 8011
name = "Spark"
PosType = P2
;pos =0,IfElse((AnimElem=4,=1),-50,IfElse((AnimElem =83,=1),-69,-60))
pos = 10,-60
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

;[State 0,explod]
;type = Explod
;trigger1 = time = 44
;trigger1 = var(10) = 1
;anim = 7201+(random%4)
;sprpriority = 6
;ownpal = 1
;postype = p2
;pos = -155,90
;removetime = 18
;bindtime = 0
;scale = 1,1

[State 890, spark]
type = Helper
trigger1 = time = 44
helperType = Normal
stateNo = 8011
ID = 8011
name = "Spark"
PosType = P2
;pos =0,IfElse((AnimElem=4,=1),-50,IfElse((AnimElem =83,=1),-69,-60))
pos = 0,-60
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

;[State 0,explod]
;type = Explod
;trigger1 = time = 54
;trigger1 = var(10) = 1
;anim = 7205+(random%3)
;sprpriority = 6
;ownpal = 1
;postype = p2
;pos = -165,60
;removetime = 24
;bindtime = 0
;scale = 1,1

[State 890, spark]
type = Helper
trigger1 = time = 54
helperType = Normal
stateNo = 8011
ID = 8011
name = "Spark"
PosType = P2
;pos =0,IfElse((AnimElem=4,=1),-50,IfElse((AnimElem =83,=1),-69,-60))
pos = 0,-60
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

;[State 0,explod]
;type = Explod
;trigger1 = time = 64
;trigger1 = var(10) = 1
;anim = 7208+(random%4)
;sprpriority = 6
;ownpal = 1
;postype = p2
;pos = -155,40
;removetime = 50
;bindtime = 0
;scale = 1,1

[State 890, spark]
type = Helper
trigger1 = time = 64
helperType = Normal
stateNo = 8011
ID = 8011
name = "Spark"
PosType = P2
;pos =0,IfElse((AnimElem=4,=1),-50,IfElse((AnimElem =83,=1),-69,-60))
pos = 0,-60
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

;[State 0,explod]
;type = Explod
;trigger1 = time = 74
;trigger1 = var(10) = 1
;anim = 7205+(random%3)
;sprpriority = 6
;ownpal = 1
;postype = p2
;pos = -165,80
;removetime = 24
;bindtime = 0
;scale = 1,1

[State 890, spark]
type = Helper
trigger1 = time = 74
helperType = Normal
stateNo = 8011
ID = 8011
name = "Spark"
PosType = P2
;pos =0,IfElse((AnimElem=4,=1),-50,IfElse((AnimElem =83,=1),-69,-60))
pos = 0,-60
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

;[State 0,explod]
;type = Explod
;trigger1 = time = 84
;trigger1 = var(10) = 1
;anim = 7208+(random%4)
;sprpriority = 6
;ownpal = 1
;postype = p2
;pos = -155,50
;removetime = 50
;bindtime = 0
;scale = 1,1

[State 890, spark]
type = Helper
trigger1 = time = 84
helperType = Normal
stateNo = 8011
ID = 8011
name = "Spark"
PosType = P2
;pos =0,IfElse((AnimElem=4,=1),-50,IfElse((AnimElem =83,=1),-69,-60))
pos = 0,-60
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

;[State 0,explod]
;type = Explod
;trigger1 = time = 98
;trigger1 = var(10) = 1
;anim = 7201+(random%4)
;sprpriority = 6
;ownpal = 1
;postype = p2
;pos = -160,80
;removetime = 18
;bindtime = 0
;scale = 1,1

[State 890, spark]
type = Helper
trigger1 = time = 98
helperType = Normal
stateNo = 8011
ID = 8011
name = "Spark"
PosType = P2
;pos =0,IfElse((AnimElem=4,=1),-50,IfElse((AnimElem =83,=1),-69,-60))
pos = 0,-60
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

;[State 0,explod]
;type = Explod
;trigger1 = time = 105
;trigger1 = var(10) = 1
;anim = 7205+(random%3)
;sprpriority = 6
;postype = p2
;pos = -165,50
;removetime = 50
;bindtime = 0
;scale = 1,1

[State 890, spark]
type = Helper
trigger1 = time = 105
helperType = Normal
stateNo = 8011
ID = 8011
name = "Spark"
PosType = P2
;pos =0,IfElse((AnimElem=4,=1),-50,IfElse((AnimElem =83,=1),-69,-60))
pos = 0,-60
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

;[State 0,explod]
;type = Explod
;trigger1 = time = 114
;trigger1 = var(10) = 1
;anim = 7208+(random%4)
;sprpriority = 6
;ownpal = 1
;postype = p2
;pos = -155,90
;removetime = 50
;bindtime = 0
;scale = 1,1

[State 890, spark]
type = Helper
trigger1 = time = 114
helperType = Normal
stateNo = 8011
ID = 8011
name = "Spark"
PosType = P2
;pos =0,IfElse((AnimElem=4,=1),-50,IfElse((AnimElem =83,=1),-69,-60))
pos = 0,-60
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

;[State 0,explod]
;type = Explod
;trigger1 = time = 124
;trigger1 = var(10) = 1
;anim = 7201+(random%4)
;sprpriority = 6
;ownpal = 1
;postype = p2
;pos = -160,70
;removetime = 18
;bindtime = 0
;scale = 1,1

[State 890, spark]
type = Helper
trigger1 = time = 124
helperType = Normal
stateNo = 8011
ID = 8011
name = "Spark"
PosType = P2
;pos =0,IfElse((AnimElem=4,=1),-50,IfElse((AnimElem =83,=1),-69,-60))
pos = 0,-60
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

;[State 0,explod]
;type = Explod
;trigger1 = time = 138
;trigger1 = var(10) = 1
;anim = 7208+(random%4)
;sprpriority = 6
;ownpal = 1
;postype = p2
;pos = -170,50
;removetime = 50
;bindtime = 0
;scale = 1,1

[State 890, spark]
type = Helper
trigger1 = time = 138
helperType = Normal
stateNo = 8011
ID = 8011
name = "Spark"
PosType = P2
;pos =0,IfElse((AnimElem=4,=1),-50,IfElse((AnimElem =83,=1),-69,-60))
pos = 0,-60
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

;var(10) = 2
;[State 0,explod]
;type = Explod
;trigger1 = time = 34
;trigger1 = var(10) = 2
;anim = 7201+(random%4)
;sprpriority = 6
;ownpal = 1
;postype = p2
;pos = 160,100
;removetime = 18
;bindtime = 0
;scale = 1,1

; comea a repetir
[State 890, spark]
type = Helper
trigger1 = time = 34
helperType = Normal
stateNo = 8011
ID = 8011
name = "Spark"
PosType = P2
;pos =0,IfElse((AnimElem=4,=1),-50,IfElse((AnimElem =83,=1),-69,-60))
pos = 0,-75
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

;[State 0,explod]
;type = Explod
;trigger1 = time = 44
;trigger1 = var(10) = 2
;anim = 7201+(random%4)
;sprpriority = 6
;ownpal = 1
;postype = p2
;pos = 170,60
;removetime = 18
;bindtime = 0
;scale = 1,1

[State 890, spark]
type = Helper
trigger1 = time = 44
helperType = Normal
stateNo = 8011
ID = 8011
name = "Spark"
PosType = P2
;pos =0,IfElse((AnimElem=4,=1),-50,IfElse((AnimElem =83,=1),-69,-60))
pos = 0,-75
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

[State 890, spark]
type = Helper
trigger1 = time = 54
helperType = Normal
stateNo = 8011
ID = 8011
name = "Spark"
PosType = P2
;pos =0,IfElse((AnimElem=4,=1),-50,IfElse((AnimElem =83,=1),-69,-60))
pos = 0,-75
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

;[State 0,explod]
;type = Explod
;trigger1 = time = 54
;trigger1 = var(10) = 2
;anim = 7205+(random%3)
;sprpriority = 6
;ownpal = 1
;postype = p2
;pos = 165,100
;removetime = 24
;bindtime = 0
;scale = 1,1

;[State 0,explod]
;type = Explod
;trigger1 = time = 64
;trigger1 = var(10) = 2
;anim = 7208+(random%4)
;sprpriority = 6
;ownpal = 1
;postype = p2
;pos = 155,40
;removetime = 50
;bindtime = 0
;scale = 1,1

[State 890, spark]
type = Helper
trigger1 = time = 64
helperType = Normal
stateNo = 8011
ID = 8011
name = "Spark"
PosType = P2
;pos =0,IfElse((AnimElem=4,=1),-50,IfElse((AnimElem =83,=1),-69,-60))
pos = 0,-75
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

;[State 0,explod]
;type = Explod
;trigger1 = time = 74
;trigger1 = var(10) = 2
;anim = 7205+(random%3)
;sprpriority = 6
;ownpal = 1
;postype = p2
;pos = 165,90
;removetime = 24
;bindtime = 0
;scale = 1,1

[State 890, spark]
type = Helper
trigger1 = time = 74
helperType = Normal
stateNo = 8011
ID = 8011
name = "Spark"
PosType = P2
;pos =0,IfElse((AnimElem=4,=1),-50,IfElse((AnimElem =83,=1),-69,-60))
pos = 0,-75
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

;[State 0,explod]
;type = Explod
;trigger1 = time = 84
;trigger1 = var(10) = 2
;anim = 7208+(random%4)
;sprpriority = 6
;ownpal = 1
;postype = p2
;pos = 155,50
;removetime = 50
;bindtime = 0
;scale = 1,1

[State 890, spark]
type = Helper
trigger1 = time = 84
helperType = Normal
stateNo = 8011
ID = 8011
name = "Spark"
PosType = P2
;pos =0,IfElse((AnimElem=4,=1),-50,IfElse((AnimElem =83,=1),-69,-60))
pos = 0,-75
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

;[State 0,explod]
;type = Explod
;trigger1 = time = 98
;trigger1 = var(10) = 2
;anim = 7201+(random%4)
;sprpriority = 6
;ownpal = 1
;postype = p2
;pos = 160,60
;removetime = 18
;bindtime = 0
;scale = 1,1

[State 890, spark]
type = Helper
trigger1 = time = 98
helperType = Normal
stateNo = 8011
ID = 8011
name = "Spark"
PosType = P2
;pos =0,IfElse((AnimElem=4,=1),-50,IfElse((AnimElem =83,=1),-69,-60))
pos = 0,-75
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

;[State 0,explod]
;type = Explod
;trigger1 = time = 105
;trigger1 = var(10) = 2
;anim = 7205+(random%3)
;sprpriority = 6
;postype = p2
;pos = 165,50
;removetime = 50
;bindtime = 0
;scale = 1,1

[State 890, spark]
type = Helper
trigger1 = time = 105
helperType = Normal
stateNo = 8011
ID = 8011
name = "Spark"
PosType = P2
;pos =0,IfElse((AnimElem=4,=1),-50,IfElse((AnimElem =83,=1),-69,-60))
pos = 0,-75
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

;[State 0,explod]
;type = Explod
;trigger1 = time = 114
;trigger1 = var(10) = 2
;anim = 7208+(random%4)
;sprpriority = 6
;ownpal = 1
;postype = p2
;pos = 155,70
;removetime = 50
;bindtime = 0
;scale = 1,1

[State 890, spark]
type = Helper
trigger1 = time = 114
helperType = Normal
stateNo = 8011
ID = 8011
name = "Spark"
PosType = P2
;pos =0,IfElse((AnimElem=4,=1),-50,IfElse((AnimElem =83,=1),-69,-60))
pos = 0,-75
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

;[State 0,explod]
;type = Explod
;trigger1 = time = 124
;trigger1 = var(10) = 2
;anim = 7201+(random%4)
;sprpriority = 6
;ownpal = 1
;postype = p2
;pos = 160,40
;removetime = 18
;bindtime = 0
;scale = 1,1

[State 890, spark]
type = Helper
trigger1 = time = 124
helperType = Normal
stateNo = 8011
ID = 8011
name = "Spark"
PosType = P2
;pos =0,IfElse((AnimElem=4,=1),-50,IfElse((AnimElem =83,=1),-69,-60))
pos = 0,-75
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

;[State 0,explod]
;type = Explod
;trigger1 = time = 138
;trigger1 = var(10) = 2
;anim = 7208+(random%4)
;sprpriority = 6
;ownpal = 1
;postype = p2
;pos = 170,50
;removetime = 50
;bindtime = 0
;scale = 1,1

[State 890, spark]
type = Helper
trigger1 = time = 138
helperType = Normal
stateNo = 8011
ID = 8011
name = "Spark"
PosType = P2
;pos =0,IfElse((AnimElem=4,=1),-50,IfElse((AnimElem =83,=1),-69,-60))
pos = 0,-75
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

[State 0, Posset]
type = Changestate
trigger1 = time = 155
value = 3110

; ==
; part 03 level max
[Statedef 3110]
type = A
movetype = I
physics = N
velset = 0, 0
ctrl = 0
anim = 2106
juggle = 0
poweradd = 0

[State 0, TargetBind]
type = null;TargetBind
trigger1 = facing = -1
trigger1 = animelem = 1
time = 1
pos = 10,-260
[State 0, TargetBind]
type = null;TargetBind
trigger1 = facing = 1
trigger1 = animelem = 1
time = 1
pos = -10,-260

[State 0, VelSet]
type = Posadd
trigger1 = time = 0
y = -20
[State 0, VelSet]
type = Posset
trigger1 = time = 0
x = 0

[State 0, VelSet]
type = VelSet
trigger1 = time >= 1
x = 0
y = -30
[State 0, VelSet]
type = VelSet
trigger1 = time >= 4
x = 0
y = -28
[State 0, VelSet]
type = VelSet
trigger1 = time >= 8
x = 0
y = -28
[State 0, VelSet]
type = VelSet
trigger1 = time >= 12
x = 0
y = -20
[State 0, VelSet]
type = VelSet
trigger1 = time >= 16
x = 0
y = -12
[State 0, VelSet]
type = VelSet
trigger1 = time >= 20
x = 0
y = -2
[State 0, VelSet]
type = VelSet
trigger1 = time >= 24
x = -1
y = 0
[State 0, VelSet]
type = VelSet
trigger1 = time >= 28
x = -2
y = 2
[State 0, VelSet]
type = VelSet
trigger1 = time >= 32
y = 4
[State 0, VelSet]
type = VelSet
trigger1 = time >= 36
y = 6
[State 0, VelSet]
type = VelSet
trigger1 = time >= 40
y = 8
[State 0, VelSet]
type = VelSet
trigger1 = time >= 44
y = 10

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 14
time = 20
freq = 100
ampl = 10
[State 0, Pause]
type = Pause
trigger1 = time = 10
trigger1 = time = 12
trigger1 = time = 14
trigger1 = time = 16
trigger1 = time = 18
time = 1
movetime = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 7
trigger2 = time = 9
trigger3 = time = 11
trigger4 = time = 13
value = 2,1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 8
trigger2 = time = 10
trigger3 = time = 12
value = 5,3

[State 0, HitAdd]
type = HitAdd
trigger1 = time = 7
trigger2 = time = 9
trigger3 = time = 11
trigger4 = time = 13
value = 1
[State 0, HitAdd]
type = HitAdd
trigger1 = time = 8
trigger2 = time = 10
trigger3 = time = 12
value = 1


;[State 0,explod]
;type = Explod
;trigger1 = time = 9
;trigger1 = var(10) = 1
;anim = 7205+(random%3)
;sprpriority = 6
;ownpal = 1
;postype = p2
;pos = 165,120
;removetime = -2
;bindtime = 0
;scale = 1,1

[State 890, spark]
type = Helper
trigger1 = time = 7
helperType = Normal
stateNo = 8011
ID = 8011
name = "Spark"
PosType = P2
;pos =0,IfElse((AnimElem=4,=1),-50,IfElse((AnimElem =83,=1),-69,-60))
pos = 0,-60
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

;[State 0,explod]
;type = Explod
;trigger1 = time = 10
;trigger1 = var(10) = 1
;anim = 7201+(random%4)
;sprpriority = 6
;ownpal = 1
;postype = p1
;pos = 165,110
;removetime = -2
;bindtime = 0
;scale = 1,1

[State 890, spark]
type = Helper
trigger1 = time = 9
helperType = Normal
stateNo = 8011
ID = 8011
name = "Spark"
PosType = P2
;pos =0,IfElse((AnimElem=4,=1),-50,IfElse((AnimElem =83,=1),-69,-60))
pos = 0,-65
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

;[State 0,explod]
;type = Explod
;trigger1 = time = 11
;trigger1 = var(10) = 1
;anim = 7205+(random%3)
;sprpriority = 6
;ownpal = 1
;postype = p2
;pos = 165,100
;removetime = -2
;bindtime = 0
;scale = 1,1

[State 890, spark]
type = Helper
trigger1 = time = 11
helperType = Normal
stateNo = 8011
ID = 8011
name = "Spark"
PosType = P2
;pos =0,IfElse((AnimElem=4,=1),-50,IfElse((AnimElem =83,=1),-69,-60))
pos = 0,-70
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

;[State 0,explod]
;type = Explod
;trigger1 = time = 12
;trigger1 = var(10) = 1
;anim = 7201+(random%4)
;sprpriority = 6
;ownpal = 1
;postype = p1
;pos = 165,90
;removetime = -2
;bindtime = 0
;scale = 1,1

[State 890, spark]
type = Helper
trigger1 = time = 13
helperType = Normal
stateNo = 8011
ID = 8011
name = "Spark"
PosType = P2
;pos =0,IfElse((AnimElem=4,=1),-50,IfElse((AnimElem =83,=1),-69,-60))
pos = 0,-75
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

;[State 0,explod]
;type = Explod
;trigger1 = time = 13
;trigger1 = var(10) = 1
;anim = 7208+(random%4)
;sprpriority = 6
;ownpal = 1
;postype = p1
;pos = 165,80
;removetime = -2
;bindtime = 0
;scale = 1,1

;[State 0,explod]
;type = Explod
;trigger1 = time = 7
;trigger1 = var(10) = 2
;anim = 7208+(random%4)
;sprpriority = 6
;ownpal = 1
;postype = p1
;pos = -165,140
;removetime = -2
;bindtime = 0
;scale = 1,1

;[State 0,explod]
;type = Explod
;trigger1 = time = 8
;trigger1 = var(10) = 2
;anim = 7201+(random%4)
;sprpriority = 6
;ownpal = 1
;postype = p1
;pos = -165,130
;removetime = -2
;bindtime = 0
;scale = 1,1

;[State 0,explod]
;type = Explod
;trigger1 = time = 9
;trigger1 = var(10) = 2
;anim = 7205+(random%3)
;sprpriority = 6
;ownpal = 1
;postype = p2
;pos = -165,120
;removetime = -2
;bindtime = 0
;scale = 1,1

;[State 0,explod]
;type = Explod
;trigger1 = time = 10
;trigger1 = var(10) = 2
;anim = 7201+(random%4)
;sprpriority = 6
;ownpal = 1
;postype = p1
;pos = -165,110
;removetime = -2
;bindtime = 0
;scale = 1,1

;[State 0,explod]
;type = Explod
;trigger1 = time = 11
;trigger1 = var(10) = 2
;anim = 7205+(random%3)
;sprpriority = 6
;ownpal = 1
;postype = p2
;pos = -165,100
;removetime = -2
;bindtime = 0
;scale = 1,1

;[State 0,explod]
;type = Explod
;trigger1 = time = 12
;trigger1 = var(10) = 2
;anim = 7201+(random%4)
;sprpriority = 6
;ownpal = 1
;postype = p1
;pos = -165,90
;removetime = -2
;bindtime = 0
;scale = 1,1

;[State 0,explod]
;type = Explod
;trigger1 = time = 13
;trigger1 = var(10) = 2
;anim = 7208+(random%4)
;sprpriority = 6
;ownpal = 1
;postype = p1
;pos = -165,80
;removetime = -2
;bindtime = 0
;scale = 1,1

[State 0,ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 3111
ctrl = 1

; ==

[Statedef 3111]
type = S
movetype = I
physics = S
velset = 0, 0
ctrl = 0
anim = 0
juggle = 0
poweradd = 0

[State 0,ChangeState]
type = Posset
trigger1 = time >= 0
y = 0

[State 0,ChangeState]
type = ChangeState
trigger1 = time = 10
value = 0
ctrl = 1

; ==

[Statedef 3103]
type = S
movetype = I
physics = S
velset = 0, 0
ctrl = 0
anim = 2290
juggle = 0
poweradd = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time <= 20
flag = noshadow

[State 0,ChangeState]
type = Posset
trigger1 = time >= 0
y = 0

[State 0,ChangeState]
type = Velset
trigger1 = time >= 0
x = 4
[State 0,ChangeState]
type = Velset
trigger1 = time >= 4
x = 2
[State 0,ChangeState]
type = Velset
trigger1 = time >= 8
x = 1
[State 0,ChangeState]
type = Velset
trigger1 = time >= 12
x = 0

[State 0,ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

; ==

[Statedef 3108]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0,0
juggle = 0

[State 0, TargetLifeAdd]
type = LifeAdd
trigger1 = time = 179
trigger2 = time = 180
trigger3 = time = 181
trigger4 = time = 182
value = -10
kill = 0
;absolute = 0

[State 0, TargetLifeAdd]
type = LifeAdd
trigger1 = time = 183
value = -40
kill = 1
;absolute = 0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 2280

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 201
value = 3109;3999
ctrl = 0

; ==

[Statedef 3109]
type = A
physics = N
movetype = H
ctrl = 0
velset = 0,0
juggle = 0

[State 2310, VelSet]
type = Changeanim2
trigger1 = time = 0
value = 2999

[State 0, Posset]
type = Posset
trigger1 = time = 0
y = -120

[State 2310, VelSet]
type = VelSet
trigger1 = time >= 0
x = -3
y = -12
[State 2310, VelSet]
type = VelSet
trigger1 = time >= 3
y = -10
[State 2310, VelSet]
type = VelSet
trigger1 = time >= 6
y = -8
[State 2310, VelSet]
type = VelSet
trigger1 = time >= 9
y = -6
[State 2310, VelSet]
type = VelSet
trigger1 = time >= 12
y = -4
[State 2310, VelSet]
type = VelSet
trigger1 = time >= 15
y = -2
[State 2310, VelSet]
type = VelSet
trigger1 = time >= 18
y = 0
[State 2310, VelSet]
type = VelSet
trigger1 = time >= 21
y = 2
[State 2310, VelSet]
type = VelSet
trigger1 = time >= 24
y = 4
[State 2310, VelSet]
type = VelSet
trigger1 = time >= 27
y = 6
[State 2310, VelSet]
type = VelSet
trigger1 = time >= 30
y = 8
[State 2310, VelSet]
type = VelSet
trigger1 = time >= 33
y = 10
[State 2310, VelSet]
type = VelSet
trigger1 = time >= 36
y = 12

[State 0, AngleDraw]
type = AngleDraw
trigger1 = time >=0
value = 45
ignorehitpause = 1

[State 821, 4] ;Hit ground
type = SelfState
triggerall = time > 4
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground

; ==
; LEVEL 1

[Statedef 3200]; ERA 2300
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
poweradd = -1000
anim = 2302
juggle = 0

;add to superpause:
[State 0, VarSet]
type = VarSet
trigger1 = time = 5
v = 20
value = 0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S4,7

[State 3000, Superpause FX]
type = helper
trigger1 = Time = 0
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = 17, -75
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = Time = 0
time = 44
movetime = 44
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 1001,1]
type = ChangeState
trigger1 = animtime = 0
value = 3210;2310
ctrl = 0

; ==

[Statedef 3210];2310
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 2300
juggle = 0

[State 210,3]
type = PlaySnd
trigger1 = animelem = 1
value = 200,4

[State 2310, 1]
type = HitDef

Triggerall = Time = 0
trigger1 = p2statetype != A
;trigger1 = p2stateno != [5000,5999]
;trigger1 = p2stateno != [150,152]

attr = S, HT ;Attributes: Standing, Normal Throw
hitflag = M ;M- ;Affect only ground people who are not being hit
priority = 5, Miss ;1-6
sparkno = -1 ;No spark
sprpriority = 2 ;Draw in front of p2
p2facing = 1 ;Force p2 to face player
p1stateno = 3220;2320
p2stateno = 3250;2350
fall = 1
fall.recover = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

; ==

[Statedef 3220];2320
type = A
movetype = A
physics = N
velset = 0, 0
ctrl = 0
anim = 2310
juggle = 0
poweradd = 0

;6007
;[State 0, jump up explode]
;type = Explod
;trigger1 = Time = 0
;anim = 6007
;sprpriority = 7
;postype = p1
;pos = 0,-70
;bindtime = 1
;pausemovetime = 0
;removetime = -2
;ignorehitpause = 1
;scale = 1,1
;ownpal = 1

[State 890, spark]
type = Helper
trigger1 = time = 0
helperType = Normal
stateNo = 8011
ID = 8011
name = "Spark"
PosType = P2
;pos =0,IfElse((AnimElem=4,=1),-50,IfElse((AnimElem =83,=1),-69,-60))
pos = 0,-60
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535


[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s2,3

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s2,3


;[State 2000,SuperPause BG]
;type = Explod
;trigger1 = time = 36
;trigger2 = time = 58
;trigger3 = time = 80
;trigger4 = time = 104
;trigger5 = time = 120
;anim = 7201+(random%7)
;sprpriority = 6
;postype = p1
;pos = 20,-50
;bindtime = -1
;removetime = -2
;ignorehitpause = 0
;scale = 1,1
;vel = 0,0
;;ownpal = 1
;;supermove = 1

[State 890, spark]
type = Helper
trigger1 = time = 36
trigger2 = time = 58
trigger3 = time = 80
trigger4 = time = 104
trigger5 = time = 120
helperType = Normal
stateNo = 8011
ID = 8011
name = "Spark"
PosType = P2
;pos =0,IfElse((AnimElem=4,=1),-50,IfElse((AnimElem =83,=1),-69,-60))
pos = 0,-50
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

;[State 2000,SuperPause BG]
;type = Explod
;trigger1 = time = 42
;trigger2 = time = 66
;trigger3 = time = 88
;trigger4 = time = 112
;trigger5= time = 136
;trigger6= time = 152
;anim = 7201+(random%11)
;sprpriority = 6
;postype = p1
;pos = 0,-20
;bindtime = -1
;removetime = -2
;ignorehitpause = 0
;scale = 1,1
;vel = 0,0
;ownpal = 1
;supermove = 1

[State 890, spark]
type = Helper
trigger1 = time = 42
trigger2 = time = 66
trigger3 = time = 88
trigger4 = time = 112
trigger5= time = 136
trigger6= time = 152
helperType = Normal
stateNo = 8011
ID = 8011
name = "Spark"
PosType = P2
;pos =0,IfElse((AnimElem=4,=1),-50,IfElse((AnimElem =83,=1),-69,-60))
pos = 0,-20
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

;[State 2000,SuperPause BG]
;type = Explod
;trigger1 = time = 50
;trigger2 = time = 96
;trigger3= time = 144
;trigger4 = time = 72
;trigger5= time = 128
;anim = 7201+(random%11)
;sprpriority = 6
;postype = p1
;pos = -20,-110
;bindtime = -1
;removetime = -2
;ignorehitpause = 0
;scale = 1,1
;vel = 0,0
;;ownpal = 1
;;supermove = 1

[State 890, spark]
type = Helper
trigger1 = time = 50
trigger2 = time = 96
trigger3= time = 144
trigger4 = time = 72
trigger5= time = 128
helperType = Normal
stateNo = 8011
ID = 8011
name = "Spark"
PosType = P2
;pos =0,IfElse((AnimElem=4,=1),-50,IfElse((AnimElem =83,=1),-69,-60))
pos = 0,-20
facing = -1
ownPal = 1
size.xScale = 0.5
size.yScale = 0.5
pauseMoveTime = 65535
superMoveTime = 65535

[State 800, 1]
type = Explod
trigger1 = time = 12
persistent = 0
ID = 2300
anim = 2330			;F186
sprpriority = 5
postype = p1
pos = 0,0
bindtime = -1
pausemovetime = 0			;if ATTACK STAR, then = 1
removetime = -2
ignorehitpause = 0			;if ATTACK STAR, then = 1
scale = 0.8,1
ownpal = 1

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 3

[State 800, 1]
type = Explod
trigger1 = time = 36
trigger2 = time = 42
trigger3 = time = 50
trigger4 = time = 58
trigger5 = time = 66
trigger6 = time = 72
trigger7 = time = 80
trigger8 = time = 88
trigger9 = time = 96
trigger10 = time = 104
trigger11 = time = 112
trigger12 = time = 120
trigger13= time = 128
trigger14= time = 136
trigger15= time = 144
trigger16= time = 152
ID = 8102;2320
anim = 8102;7215
sprpriority = -2
postype = p2
pos = 14, 0
bindtime = 1
pausemovetime = 1			;if ATTACK STAR, then = 1
removetime = -2
ignorehitpause = 1			;if ATTACK STAR, then = 1
scale = 0.5,0.5
ownpal = 1

[State 2320,TargetBind]
type = TargetBind
trigger1 = AnimElem = 1
pos = 20,0
time = 1

[State 2320, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = time = 36
trigger2 = time = 42
trigger3 = time = 50
trigger4 = time = 58
trigger5 = time = 66
trigger6 = time = 72
trigger7 = time = 80
trigger8 = time = 88
trigger9 = time = 96
trigger10 = time = 104
trigger11 = time = 112
trigger12 = time = 120
trigger13= time = 128
trigger14= time = 136
trigger15= time = 144
trigger16= time = 152
value = -10
kill=0

[State 2320, EnvShake]
type = EnvShake
trigger1 = time = 36
trigger2 = time = 42
trigger3 = time = 50
trigger4 = time = 58
trigger5 = time = 66
trigger6 = time = 72
trigger7 = time = 80
trigger8 = time = 88
trigger9 = time = 96
trigger10 = time = 104
trigger11 = time = 112
trigger12 = time = 120
trigger13= time = 128
trigger14= time = 136
trigger15= time = 144
trigger16= time = 152
time = 5
ampl = 6
freq = 100	;	(0-180)

[State 2310, PlaySnd]
type = PlaySnd
trigger1 = time = 36
trigger2 = time = 50
trigger3 = time = 72
trigger4 = time = 96
trigger5 = time = 120
trigger6= time = 144
value = 2,0

[State 2310, PlaySnd]
type = PlaySnd
trigger1 = time = 42
trigger2 = time = 66
trigger3 = time = 80
trigger4 = time = 112
trigger5= time = 136
value = 7,1

[State 2310, PlaySnd]
type = PlaySnd
trigger1= time = 152
trigger2 = time = 58
trigger3 = time = 88
trigger4 = time = 104
trigger5 = time = 128
value = 2,4

[State 2310, PlaySnd]
type = hitadd
trigger1 = time = 36
trigger2 = time = 42
trigger3 = time = 50
trigger4 = time = 58
trigger5 = time = 66
trigger6 = time = 72
trigger7 = time = 80
trigger8 = time = 88
trigger9 = time = 96
trigger10 = time = 104
trigger11 = time = 112
trigger12 = time = 120
trigger13= time = 128
trigger14= time = 136
trigger15= time = 144
trigger16= time = 152
value = 1

[State 2000,SuperPause BG]
type = Explod
trigger1 = time = 36
trigger2 = time = 58
trigger3 = time = 80
trigger4 = time = 104
trigger5= time = 128
trigger6= time = 152
anim = 2342
sprpriority = 5
postype = p1
pos = 0,0
bindtime = -1
pausemovetime = 8
removetime = 8
ignorehitpause = 0
scale = 1,1
vel = 0,0
;ownpal = 1
;supermove = 1
[State 2000,SuperPause BG]
type = Explod
trigger1 = time = 42
trigger2 = time = 66
trigger3 = time = 88
trigger4 = time = 112
trigger5= time = 136
anim = 2340
sprpriority = 5
postype = p1
pos = 0,0
bindtime = -1
pausemovetime = 8
removetime = 8
ignorehitpause = 0
scale = 1,1
vel = 0,0
;ownpal = 1
;supermove = 1
[State 2000,SuperPause BG]
type = Explod
trigger1 = time = 50
trigger2 = time = 72
trigger3 = time = 96
trigger4 = time = 120
trigger5= time = 144
anim = 2344
sprpriority = 5
postype = p1
pos = 0,0
bindtime = -1
pausemovetime = 8
removetime = 8
ignorehitpause = 0
scale = 1,1
vel = 0,0
;ownpal = 1
;supermove = 1

[State 0, PalFX]
type = PalFX
trigger1 = time = 152
time = 40
add = 0,0,0
mul = 0,0,0
invertall = 0
color = 256

[State 2000,SuperPause BG]
type = Explod
trigger1 = time = 152
anim = 2347
sprpriority = 0
postype = left
pos = -60,-60
bindtime = -1
pausemovetime = 0
removetime = 40
ignorehitpause = 1
scale = 2,2
vel = 0,0
ownpal = 1
;supermove = 1

[State 2320, EnvShake]
type = EnvShake
trigger1 = time = 155
time = 20
ampl = 11
freq = 110
ignorehitpause = 1

[State 2310, PlaySnd]
type = PlaySnd
trigger1= time = 162
value = 2,7

[State 2310, PlaySnd]
type = PlaySnd
trigger1= time = 162
value = 2,8

[State 0, Projectile]
type = Projectile
trigger1 = time = 162
ProjID = 2300
projanim = 2346
projhitanim = 7208+(random%4)
projscale = 1,1
projremove = 1
projremovetime = 51
velocity = 0,0
accel = 0,0
velmul = 1
projhits = 1
projmiss = 0
projpriority = 3
projsprpriority = 5
postype = p1 ;p2,front,back,left,right
projshadow = 0,0,0
supermovetime = 0
pausemovetime = 0
; HitDef
attr = S,HP ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF ;HLAFD+-
guardflag = M ;HLA
getpower = 0,0
givepower = 0,0
;affectteam = E ;B,E,F
animtype = hard ;light,medium,hard,back,up,diagup
air.animtype = hard
;fall.animtype = Back
priority = 4,Hit ;Hit,Miss,Dodge
damage = 120,10
pausetime = 30,30
guard.pausetime = 30,30
;hitsound = -1 + 0*(var(31):=5)
;guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=211), var(36):=-65
ground.type = High ;Low,Trip,None
;air.type = High
ground.slide = 20
guard.slide = 20
ground.hit = 20
guard.hit = 20
air.hittime = 20
guard.ctrl = 17
yAccel = (0.5 + (ComboCount * 0.06))
ground.velocity = -6,-12
guard.velocity = 0
air.velocity = -6,-12
sprpriority = 5
p1getp2facing = 0
;p2facing = 1
;p1stateno = 0
;p2stateno = 0
fall = 1
fall.recover = 0
air.fall = 1
kill = 1
guard.kill = 1
fall.kill = 1
numhits = 1
palfx.time = 30
palfx.mul = 0,0,0
palfx.add = 0,0,0
hitsound = S5,5
guardsound = S6,1
;envshake.time = 0,0
;envshake.freq = 0
;envshake.ampl = 0
;envshake.phase = 0
;
getpower = 0
GivePower = ifelse ( var(20) > 0,80, 80)

[State 2310, ChangeState]
type = ChangeState
trigger1 = time = 192
value = 3230;2330
ctrl = 0

; ==

[Statedef 3230];2330
type = A
movetype = I
physics = N
velset = 0, 0
ctrl = 0
anim = 2320

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 2310, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

; ==

[Statedef 3250];2350
type = A
movetype= H
physics = N
velset = 0,0

[State 0, SprPriority]
type = SprPriority
trigger1 = 1
value = 4

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 2350

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 160
value = 2355

[State 2310, ChangeState]
type = ChangeState
trigger1 = time = 200
value = 3260;2360
ctrl = 0

; ==

[Statedef 3260];2360
type = A
movetype= H
physics = N
velset = 0,0

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
x = -3
y = -8
[State 0, VelSet]
type = VelSet
trigger1 = time >= 4
y = -6
[State 0, VelSet]
type = VelSet
trigger1 = time >= 8
y = -4
[State 0, VelSet]
type = VelSet
trigger1 = time >= 12
y = -2
[State 0, VelSet]
type = VelSet
trigger1 = time >= 16
y = 0
[State 0, VelSet]
type = VelSet
trigger1 = time >= 20
y = 2
[State 0, VelSet]
type = VelSet
trigger1 = time >= 24
y = 3
[State 0, VelSet]
type = VelSet
trigger1 = time >= 28
y = 4
[State 0, VelSet]
type = VelSet
trigger1 = time >= 32
y = 6
[State 0, VelSet]
type = VelSet
trigger1 = time >= 36
y = 8
[State 0, VelSet]
type = VelSet
trigger1 = time >= 40
y = 10

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = time >= 10
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 5100 ;Hit ground

; ==
; level 1
[Statedef 3300];2400
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 2400
poweradd = -1000
juggle = 0

;[State 0, PosAdd]
;type = PosAdd
;trigger1 = time = 0
;y = -40

[State 800,SND]
type = PlaySnd
trigger1 = time = 0
value =970,0

;add to superpause:
[State 0, VarSet]
type = VarSet
trigger1 = time = 5
v = 20
value = 0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S4,7
channel = 2

[State 3000, Superpause FX]
type = helper
trigger1 = Time = 0
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = 10, -45
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = Time = 0
time = 44
movetime = 44
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 1001,1]
type = ChangeState
trigger1 = time = 40
value = 3310;2410
ctrl = 0

; ==

[Statedef 3310];2410
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 2410
juggle = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 0
y = -2

[State 0, PosAdd]
type = PosAdd
trigger1 = time = 5
y = -6

[State 0, AngleDraw]
type = null;AngleDraw
trigger1 = time >= 0
value = -20
;scale = (winmugen only)
;ignorehitpause =
;persistent =

[State 0, VelSet]
type = VelSet
trigger1 = time >= 6
x = 6
;y = 3

[State 0, BGPalFX]
type = null;BGPalFX
triggerall = movehit = 1
trigger1 = animelem = 6
trigger2 = animelem = 8
trigger3 = animelem = 10
time = 1
add = 256,256,256
mul = 256,256,256
;sinadd = 0,0,0,10
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
;trigger2 = animelem = 8
;trigger3 = animelem = 10
value = S30,4
;volume = 0
channel = 4
;lowpriority = -1
;freqmul = 1.0
;loop = 0
;pan = 0
;abspan =
ignorehitpause = 1
;persistent =


[State 0,HitDef]
type = HitDef
trigger1 = animelem = 6
trigger2 = animelem = 10
;trigger3 = animelem = 9
;trigger4 = animelem = 11
priority = 5, Hit			;2 for ??, 3 for M/H att, 4 for L att, 5 for super, 6 fot hyper
attr = A,HA			;STAND / NORMAL ATTACK
hitflag = MAF			;MIDDLE ATTACK
guardflag = M			;GUARD is MIDDLE /L is LOW
animtype = hard	 		;2p ANIM, light", "medium", "hard", "back", "up", or "diagup"
air.animtype = hard			;2p ANIM
ground.type = high
damage = 30,15
getpower = 0 ; ifelse ( var(20) > 0,40, 120)
GivePower = ifelse ( var(20) > 0,10, 10)
pausetime = 3,6
guard.pausetime = 3,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =17
ground.velocity = -4, -8
air.velocity = -4, -8
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -12
ground.cornerpush.veloff = -5; ifelse ( var(20) > 0,-15, -25)
guard.cornerpush.veloff = -5; ifelse ( var(20) > 0,-15, -25)
;
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=83), var(36):=-10
;
fall = 1
air.fall = 1
fall.recover = 0
;
;
fall.envshake.time = 10
fall.envshake.freq = 100 ;speed
fall.envshake.ampl = 10	;strong weak

[State 0,HitDef]
type = HitDef
trigger1 = animelem = 8
;trigger2 = animelem = 10
priority = 5, Hit			;2 for ??, 3 for M/H att, 4 for L att, 5 for super, 6 fot hyper
attr = A,HA			;STAND / NORMAL ATTACK
hitflag = MAF			;MIDDLE ATTACK
guardflag = M			;GUARD is MIDDLE /L is LOW
animtype = hard	 		;2p ANIM, light", "medium", "hard", "back", "up", or "diagup"
air.animtype = hard			;2p ANIM
ground.type = high
damage = 30,3
getpower = 0 ; ifelse ( var(20) > 0,40, 120)
GivePower = ifelse ( var(20) > 0,10, 10)
pausetime = 3,6
guard.pausetime = 3,6
ground.slidetime = 20
ground.hittime = 20
guard.hittime = (20) - 6
air.hittime = 40
guard.ctrltime =17
ground.velocity = -4, -6
air.velocity = -4, -6
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -12
ground.cornerpush.veloff = -5; ifelse ( var(20) > 0,-15, -25)
guard.cornerpush.veloff = -5; ifelse ( var(20) > 0,-15, -25)
;
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 + 0*(var(33):=8012)
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=83), var(36):=-10
;
fall = 1
air.fall = 1
fall.recover = 0
;
fall.envshake.time = 10
fall.envshake.freq = 100 ;speed
fall.envshake.ampl = 10	;strong weak

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 50;vel Y > 0 && pos Y >= 0
value = 3320;2420; falta
ctrl = 0

; ==

[Statedef 3320];2420
type = S
movetype = I
physics = N
velset = 0, 0
ctrl = 0
anim = 2420

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
x = 8
[State 0, VelSet]
type = VelSet
trigger1 = time >= 4
x = 6
[State 0, VelSet]
type = VelSet
trigger1 = time >= 8
x = 4
[State 0, VelSet]
type = VelSet
trigger1 = time >= 16
x = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = 4,0

;52 add landing smoke
[State 0, landing explode]
type = Explod
trigger1 = Time = 0
anim = 8102
sprpriority = 4
postype = p1
pos = 0,5
bindtime = 1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 0.5,0.5
ownpal = 1

[State 0, landing explode]
type = Explod
trigger1 = Time = 0
anim = 8100
sprpriority = 4
postype = p1
pos = 0,5
bindtime = 1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 0.5,0.5
ownpal = 1

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
y = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

; ==
; level 1
[Statedef 3400];3300
type = S
physics = S
movetype = A
ctrl = 0
velset = 0,0
anim = 3300
poweradd=-1000
juggle = 0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S4,7

[State 3000, Superpause FX]
type = helper
trigger1 = Time = 0
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = 17, -75
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = Time = 0
time = 44
movetime = 44
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 0, VarSet]
type = VarSet
trigger1 = time = 1
v = 44
value = 2500

[State 0, VarSet]
type = VarSet
trigger1 = prevstateno = [1000,2999]
trigger1 = time = 1
v = 20
value = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 40
value = 3402;3401;3301
ctrl = 0

; ==

[Statedef 3401]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 2001;3301
juggle = 0


[State 0, Explod]
type = Explod
trigger1 = Time = 24
anim = 3312
sprpriority = 4
postype = p1
pos = 0,10
bindtime = 1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 1,1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = Time = 14
anim = 3311
sprpriority = 4
postype = p1
pos = 0,10
bindtime = 1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 1,1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = Time = 4
anim = 3310
sprpriority = 4
postype = p1
pos = 0,10
bindtime = 1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 1,1
ownpal = 1


[State 0, Explod]
type = Explod
trigger1 = Time = 24
anim = 3322
sprpriority = 0
postype = p1
pos = 0,10
bindtime = 1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 1,1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = Time = 14
anim = 3321
sprpriority = 0
postype = p1
pos = 0,10
bindtime = 1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 1,1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = Time = 4
anim = 3320
sprpriority = 0
postype = p1
pos = 0,10
bindtime = 1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 1,1
ownpal = 1


[State 0, Projectile]
type = Projectile
trigger1 = time = 4
ProjID = 3300
projanim = 3330
projhitanim = -1;
projremanim = -1;
attr = S, HP
damage = 60,6
animtype = high
air.animtype = Back
ground.type = High
guardflag = M
hitflag = MAF
hitsound = S2,8
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 139), var(36) := -50
pausetime = 6,8
guard.pause = 6,8
;
getpower = 0,0
GivePower = 20,10
;

ground.slidetime = 15
ground.hittime = 15
ground.velocity = 6
air.velocity = 0,-8
yAccel = (0.5 + (ComboCount * 0.06))
;
guard.velocity = 6
guard.ctrltime = 15
;
air.juggle = 0
fall = 0
air.fall = 1
fall.recover = 0
projremove = 1
projremovetime = 9 ;-1 is no remove time.
velocity = 0,0
projmisstime = 0
offset = 0,10
postype = p1
projshadow = 0,0,0
sprpriority = 7
projhits = 2
projpriority = 3
ownpal = 1
;
envshake.time = 3
envshake.freq = 110
envshake.ampl = 7
;
fall.envshake.time = 10
fall.envshake.freq = 110 ;speed
fall.envshake.ampl = 7	;strong weak
;
getpower = 0
GivePower = ifelse ( var(20) > 0,20, 20)

[State 0, Projectile]
type = Projectile
trigger1 = time = 14
ProjID = 3300
projanim = 3331
projhitanim = -1;
projremanim = -1;
attr = S, HP
damage = 60,6
animtype = high
air.animtype = Back
ground.type = High
guardflag = M
hitflag = MAF
hitsound = S2,8
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 139), var(36) := -60
pausetime = 6,8
guard.pause = 6,8
;
getpower = 0,0
GivePower = 20,10
;

ground.slidetime = 15
ground.hittime = 15
ground.velocity = -6
air.velocity = -2,-8
yAccel = (0.5 + (ComboCount * 0.06))
;
guard.velocity = -6
guard.ctrltime = 15
;
air.juggle = 0
fall = 1
air.fall = 1
fall.recover = 0
projremove = 1
projremovetime = 9 ;-1 is no remove time.
velocity = 0,0
projmisstime = 0
offset = 0,10
postype = p1
projshadow = 0,0,0
sprpriority = 7
projhits = 2
projpriority = 3
ownpal = 1
;
envshake.time = 3
envshake.freq = 110
envshake.ampl = 7
;
fall.envshake.time = 10
fall.envshake.freq = 110 ;speed
fall.envshake.ampl = 7	;strong weak
;
getpower = 0
GivePower = ifelse ( var(20) > 0,20, 20)

[State 0, Projectile]
type = Projectile
trigger1 = time = 24
ProjID = 3300
projanim = 3332
projhitanim = -1;
projremanim = -1;
attr = S, HP
damage = 60,6
animtype = high
air.animtype = Back
ground.type = High
guardflag = M
hitflag = MAF
;
hitsound = S2,8
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 139), var(36) := -50
pausetime = 6,8
guard.pause = 6,8
;
getpower = 0,0
GivePower = 20,10
;
ground.slidetime = 15
ground.hittime = 15
ground.velocity = -12
air.velocity = -3,-12
yAccel = (0.5 + (ComboCount * 0.06))
;
guard.velocity = -12
guard.ctrltime = 15
;
air.juggle = 0
fall = 1
air.fall = 1
fall.recover = 0
projremove = 1
projremovetime = 9 ;-1 is no remove time.
velocity = 0,0
projmisstime = 0
offset = 0,10
postype = p1
projshadow = 0,0,0
sprpriority = 7
projhits = 2
projpriority = 3
ownpal = 1
;
envshake.time = 3
envshake.freq = 110
envshake.ampl = 7
;
fall.envshake.time = 10
fall.envshake.freq = 110 ;speed
fall.envshake.ampl = 7	;strong weak
;
getpower = 0
GivePower = ifelse ( var(20) > 0,20, 20)

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime=0
value = 0
ctrl = 1

[State -2, Sparks]
type = helper
triggerall = StateNo != 1301 && StateNo != 1331
triggerall = movecontact = 1 ;&& var(30) = hitpausetime
trigger1 = movehit = 1 && numenemy
;trigger1 = var(33) = 8010 || var(33) = 8011 || var(33) = 8012 || var(33) = 8013 || var(33) = 8014 || var(33) = 8001
trigger2 = moveguarded = 1 && numenemy
;trigger2 = var(34) = 8000 || var(34) = 8001
trigger3 = MoveHit = 1 && NumEnemy
;trigger3 = var(33) = 8015 || var(33) = 8016 || var(33) = 8017
stateno = ifelse(moveguarded, var(34), var(33))
ID = 8000
name = "Spark"
postype = p1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35))), var(36)
facing = -1
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignorehitpause = 1

; ==

[Statedef 3402]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3301
juggle = 0

;[State 3002]
;type = Helper
;trigger1 = time = 0
;stateno = 3403
;id = 3403
;ownpal = 1
;;pos = 56,-12
;offset = 0,0

[State 3000, Needle]
type = helper
trigger1 = Time = 0
stateno = 3403
ID = 3403
name = "Needle"
postype = p1
pos = 0, 0
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 1001,1]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 0, CtrlSet]
type = CtrlSet
trigger1 = time>=74
value = 1

; ==

[Statedef 3403]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 9998;9999
juggle = 0

;[State 0, ChangeState]
;type = ChangeState
;trigger1 = animtime=0
;value = 0
;ctrl = 1


[State 0, Explod]
type = Explod
trigger1 = Time = 24
anim = 3312
sprpriority = 4
postype = p1
pos = 0,10
bindtime = 1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 1,1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = Time = 14
anim = 3311
sprpriority = 4
postype = p1
pos = 0,10
bindtime = 1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 1,1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = Time = 4
anim = 3310
sprpriority = 4
postype = p1
pos = 0,10
bindtime = 1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 1,1
ownpal = 1


[State 0, Explod]
type = Explod
trigger1 = Time = 24
anim = 3322
sprpriority = 0
postype = p1
pos = 0,10
bindtime = 1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 1,1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = Time = 14
anim = 3321
sprpriority = 0
postype = p1
pos = 0,10
bindtime = 1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 1,1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = Time = 4
anim = 3320
sprpriority = 0
postype = p1
pos = 0,10
bindtime = 1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 1,1
ownpal = 1

;[State 0, ChangeAnim]
;type = ChangeAnim
;trigger1 = time = 4
;value = 3330
;elem = 1
;ignorehitpause =
;persistent =



[State 0, Projectile]
type = hitdef;Projectile
;triggerall = anim = 3330
trigger1 = time = 4
;ProjID = 3300
;projanim = 3330
;projhitanim = -1;
;projremanim = -1;
attr = S, HP
damage = 60,30
animtype = high
air.animtype = Back
ground.type = High
guardflag = M
hitflag = MAF
hitsound = S2,8
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 139), var(36) := -50
pausetime = 6,8
guard.pause = 6,8;
getpower = 0,0
GivePower = 20,10;
ground.slidetime = 15
ground.hittime = 15
guard.hittime = (15) - 6
ground.velocity = 6
air.velocity = 0,-8
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = 6
guard.ctrltime = 15;
air.juggle = 0
fall = 0
air.fall = 1
fall.recover = 0
;projremove = 1
;projremovetime = 9 ;-1 is no remove time.
;velocity = 0,0
;projmisstime = 0
;offset = 0,10
;postype = p1
;projshadow = 0,0,0
;sprpriority = 7
;projhits = 2
;projpriority = 3
;ownpal = 1;
;
fall.envshake.time = 10
fall.envshake.freq = 110 ;speed
fall.envshake.ampl = 7	;strong weak;
getpower = 0
;GivePower = ifelse ( var(20) > 0,20, 20)

;[State 0, ChangeAnim]
;type = ChangeAnim
;trigger1 = time = 9
;value = 3331

[State 0, Projectile]
type = hitdef;Projectile
;triggerall = anim = 3331
trigger1 = time = 14
;ProjID = 3300
;projanim = 3331
;projhitanim = -1;
;projremanim = -1;
attr = S, HP
damage = 60,30
animtype = high
air.animtype = Back
ground.type = High
guardflag = M
hitflag = MAF
hitsound = S2,8
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 139), var(36) := -60
pausetime = 6,8
guard.pause = 6,8
getpower = 0,0
GivePower = 20,10;
ground.slidetime = 15
ground.hittime = 15
guard.hittime = (15) - 6
ground.velocity = -6
air.velocity = -2,-8
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -6
guard.ctrltime = 15
air.juggle = 0
fall = 1
air.fall = 1
fall.recover = 0
;projremove = 1
;projremovetime = 9 ;-1 is no remove time.
;velocity = 0,0
;projmisstime = 0
;offset = 0,10
;postype = p1
;projshadow = 0,0,0
;sprpriority = 7
;projhits = 2
;projpriority = 3
;ownpal = 1
fall.envshake.time = 10
fall.envshake.freq = 110 ;speed
fall.envshake.ampl = 7	;strong weak
getpower = 0
;GivePower = ifelse ( var(20) > 0,20, 20)

;[State 0, ChangeAnim]
;type = ChangeAnim
;trigger1 = time = 9
;value = 3332

[State 0, Projectile]
type = hitdef;Projectile
;triggerall = anim = 3332
trigger1 = time = 24
;ProjID = 3300
;projanim = 3332
;projhitanim = -1;
;projremanim = -1;
attr = S, HP
damage = 60,30
animtype = high
air.animtype = Back
ground.type = High
guardflag = M
hitflag = MAF
hitsound = S2,8
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 139), var(36) := -50
pausetime = 6,8
guard.pause = 6,8
getpower = 0,0
GivePower = 20,10
ground.slidetime = 15
ground.hittime = 15
guard.hittime = (15) - 6
ground.velocity = -12
air.velocity = -3,-12
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -12
guard.ctrltime = 15
air.juggle = 0
fall = 1
air.fall = 1
fall.recover = 0
;projremove = 1
;projremovetime = 9 ;-1 is no remove time.
;velocity = 0,0
;projmisstime = 0
;offset = 0,10
;postype = p1
;projshadow = 0,0,0
;sprpriority = 7
;projhits = 2
;projpriority = 3
;ownpal = 1
fall.envshake.time = 10
fall.envshake.freq = 110 ;speed
fall.envshake.ampl = 7	;strong weak
getpower = 0
;GivePower = ifelse ( var(20) > 0,20, 20)

;[State -2, Hit Sparks]
;type = Helper
;triggerAll = ProjContact = 1 && var(30) = HitPauseTime
;trigger1 = ProjHit = 1 && NumEnemy
;helperType = Normal
;stateno = ifelse(moveguarded, var(34), var(33))
;ID = 8000
;name = "Spark"
;postype = P2
;pos = 0,-60;Ifelse(P2Dist x < 0, 0, Ifelse(P2Dist x < var(35), ceil(P2Dist x), var(35))), var(36)
;facing = -1
;ownPal = 1
;size.xscale =1.0
;size.yscale =1.0
;pauseMoveTime = 65535
;superMoveTime = 65535
;ignoreHitPause = 1

[State -2, Hit Sparks]
type = Helper
triggerAll = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = MoveHit = 1 && NumEnemy
;trigger1 = hitcount < 1
;trigger1 = moveguarded < 1
;trigger1 = var(33) = [8010,8024]
;trigger2 = MoveGuarded = 1 && NumEnemy
;trigger2 = var(34) = 8000 || var(34) = 8001
helperType = Normal
;stateNo = Ifelse(MoveGuarded, var(34), Ifelse(var(33) < 8020,8010,8020))
stateno = ifelse(moveguarded, var(34), var(33))
ID = 8000
name = "Spark"
postype = P2
pos = 0,-60;Ifelse(P2Dist x < 0, 0, Ifelse(P2Dist x < var(35), ceil(P2Dist x), var(35))), var(36)
facing = -1
ownPal = 1
size.xscale =1.0
size.yscale =1.0
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 21300]
type = DestroySelf
trigger1 = AnimTime = 0

; ==
; level 2
[Statedef 3450];3300
type = S
physics = S
movetype = A
ctrl = 0
velset = 0,0
anim = 3300
juggle = 0
poweradd=-2000

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S4,7

[State 3000, Superpause FX]
type = helper
trigger1 = Time = 0
stateno = 8510
ID = 8510
name = "Superpause FX"
postype = p1
pos = 17, -75
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = Time = 0
time = 44
movetime = 44
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 0, VarSet]
type = VarSet
trigger1 = time = 1
v = 44
value = 2500

[State 0, VarSet]
type = VarSet
trigger1 = prevstateno = [1000,2999]
trigger1 = time = 1
v = 20
value = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 40
value = 3452;3401;3301
ctrl = 0

; ==

[Statedef 3452]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 3301
juggle = 0

;[State 3002]
;type = Helper
;trigger1 = time = 0
;stateno = 3403
;id = 3403
;ownpal = 1
;;pos = 56,-12
;offset = 0,0

[State 3000, Needle]
type = helper
trigger1 = Time = 0
stateno = 3453
ID = 3453
name = "Needle"
postype = p1
pos = 0, 0
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Needle]
type = helper
trigger1 = Time = 20
stateno = 3453
ID = 3453
name = "Needle"
postype = p1
pos = 0, 0
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 1001,1]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[State 0, CtrlSet]
type = CtrlSet
trigger1 = time>=74
value = 1

; ==

[Statedef 3453]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
anim = 9998;9999
juggle = 0

;[State 0, ChangeState]
;type = ChangeState
;trigger1 = animtime=0
;value = 0
;ctrl = 1


[State 0, Explod]
type = Explod
trigger1 = Time = 24
anim = 3312
sprpriority = 4
postype = p1
pos = 0,10
bindtime = 1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 1,1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = Time = 14
anim = 3311
sprpriority = 4
postype = p1
pos = 0,10
bindtime = 1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 1,1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = Time = 4
anim = 3310
sprpriority = 4
postype = p1
pos = 0,10
bindtime = 1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 1,1
ownpal = 1


[State 0, Explod]
type = Explod
trigger1 = Time = 24
anim = 3322
sprpriority = 0
postype = p1
pos = 0,10
bindtime = 1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 1,1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = Time = 14
anim = 3321
sprpriority = 0
postype = p1
pos = 0,10
bindtime = 1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 1,1
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 = Time = 4
anim = 3320
sprpriority = 0
postype = p1
pos = 0,10
bindtime = 1
pausemovetime = 0
removetime = -2
ignorehitpause = 0
scale = 1,1
ownpal = 1

;[State 0, ChangeAnim]
;type = ChangeAnim
;trigger1 = time = 4
;value = 3330
;elem = 1
;ignorehitpause =
;persistent =



[State 0, Projectile]
type = hitdef;Projectile
;triggerall = anim = 3330
trigger1 = time = 4
;ProjID = 3300
;projanim = 3330
;projhitanim = -1;
;projremanim = -1;
attr = S, HP
damage = 50,25
animtype = high
air.animtype = Back
ground.type = High
guardflag = M
hitflag = MAF
hitsound = S2,8
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 139), var(36) := -50
pausetime = 6,8
guard.pause = 6,8;
getpower = 0,0
GivePower = 20,10;
ground.slidetime = 15
ground.hittime = 15
guard.hittime = (15) - 6
ground.velocity = 6
air.velocity = 0,-8
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = 6
guard.ctrltime = 15;
air.juggle = 0
fall = 0
air.fall = 1
fall.recover = 0
;projremove = 1
;projremovetime = 9 ;-1 is no remove time.
;velocity = 0,0
;projmisstime = 0
;offset = 0,10
;postype = p1
;projshadow = 0,0,0
;sprpriority = 7
;projhits = 2
;projpriority = 3
;ownpal = 1;
;
fall.envshake.time = 10
fall.envshake.freq = 110 ;speed
fall.envshake.ampl = 7	;strong weak;
getpower = 0
;GivePower = ifelse ( var(20) > 0,20, 20)

;[State 0, ChangeAnim]
;type = ChangeAnim
;trigger1 = time = 9
;value = 3331

[State 0, Projectile]
type = hitdef;Projectile
;triggerall = anim = 3331
trigger1 = time = 14
;ProjID = 3300
;projanim = 3331
;projhitanim = -1;
;projremanim = -1;
attr = S, HP
damage = 50,25
animtype = high
air.animtype = Back
ground.type = High
guardflag = M
hitflag = MAF
hitsound = S2,8
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 139), var(36) := -60
pausetime = 6,8
guard.pause = 6,8
getpower = 0,0
GivePower = 20,10;
ground.slidetime = 15
ground.hittime = 15
guard.hittime = (15) - 6
ground.velocity = -6
air.velocity = -2,-8
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -6
guard.ctrltime = 15
air.juggle = 0
fall = 1
air.fall = 1
fall.recover = 0
;projremove = 1
;projremovetime = 9 ;-1 is no remove time.
;velocity = 0,0
;projmisstime = 0
;offset = 0,10
;postype = p1
;projshadow = 0,0,0
;sprpriority = 7
;projhits = 2
;projpriority = 3
;ownpal = 1
fall.envshake.time = 10
fall.envshake.freq = 110 ;speed
fall.envshake.ampl = 7	;strong weak
getpower = 0
;GivePower = ifelse ( var(20) > 0,20, 20)

;[State 0, ChangeAnim]
;type = ChangeAnim
;trigger1 = time = 9
;value = 3332

[State 0, Projectile]
type = hitdef;Projectile
;triggerall = anim = 3332
trigger1 = time = 24
;ProjID = 3300
;projanim = 3332
;projhitanim = -1;
;projremanim = -1;
attr = S, HP
damage = 50,25
animtype = high
air.animtype = Back
ground.type = High
guardflag = M
hitflag = MAF
hitsound = S2,8
guardsound = -1 + 0 * (var(32) := 0)
sparkno = -1 + 0 * (var(33) := 8010)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 139), var(36) := -50
pausetime = 6,8
guard.pause = 6,8
getpower = 0,0
GivePower = 20,10
ground.slidetime = 15
ground.hittime = 15
guard.hittime = (15) - 6
ground.velocity = -12
air.velocity = -3,-12
yAccel = (0.5 + (ComboCount * 0.06))
guard.velocity = -12
guard.ctrltime = 15
air.juggle = 0
fall = 1
air.fall = 1
fall.recover = 0
;projremove = 1
;projremovetime = 9 ;-1 is no remove time.
;velocity = 0,0
;projmisstime = 0
;offset = 0,10
;postype = p1
;projshadow = 0,0,0
;sprpriority = 7
;projhits = 2
;projpriority = 3
;ownpal = 1
fall.envshake.time = 10
fall.envshake.freq = 110 ;speed
fall.envshake.ampl = 7	;strong weak
getpower = 0
;GivePower = ifelse ( var(20) > 0,20, 20)

;[State -2, Hit Sparks]
;type = Helper
;triggerAll = ProjContact = 1 && var(30) = HitPauseTime
;trigger1 = ProjHit = 1 && NumEnemy
;helperType = Normal
;stateno = ifelse(moveguarded, var(34), var(33))
;ID = 8000
;name = "Spark"
;postype = P2
;pos = 0,-60;Ifelse(P2Dist x < 0, 0, Ifelse(P2Dist x < var(35), ceil(P2Dist x), var(35))), var(36)
;facing = -1
;ownPal = 1
;size.xscale =1.0
;size.yscale =1.0
;pauseMoveTime = 65535
;superMoveTime = 65535
;ignoreHitPause = 1

[State -2, Hit Sparks]
type = Helper
triggerAll = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = MoveHit = 1 && NumEnemy
;trigger1 = hitcount < 1
;trigger1 = moveguarded < 1
;trigger1 = var(33) = [8010,8024]
;trigger2 = MoveGuarded = 1 && NumEnemy
;trigger2 = var(34) = 8000 || var(34) = 8001
helperType = Normal
;stateNo = Ifelse(MoveGuarded, var(34), Ifelse(var(33) < 8020,8010,8020))
stateno = ifelse(moveguarded, var(34), var(33))
ID = 8000
name = "Spark"
postype = P2
pos = 0,-60;Ifelse(P2Dist x < 0, 0, Ifelse(P2Dist x < var(35), ceil(P2Dist x), var(35))), var(36)
facing = -1
ownPal = 1
size.xscale =1.0
size.yscale =1.0
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 21300]
type = DestroySelf
trigger1 = AnimTime = 0
