;***************************************************************************;
;******************************* Helpers State *****************************;
;***************************************************************************;
;***************************************************************************;

;-------------------------------------------------------------------
; Explosion
[Statedef 3180]
type = A
movetype= I
physics = N
anim = 9999
ctrl = 0
sprpriority = 1

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 3180
ID = 3180
postype = p1
pos = 1,-10
sprpriority = 3
ownpal = 1
scale = .5,.5

[State 0, SprPriority]
type = SprPriority
trigger1 = animelem = 2
value = 4

[State 0, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256

[state 1240, 1]
type = varset
trigger1 = time = 0
var(0) = root,stateno

[state 1240, 1]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = var(0) != root,stateno

;-----------------------------------------------------------------------
; Smash Hitbox
[StateDef 3310]
type = S
movetype = A
physics = S
ctrl = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,var(17) <= 1
value = 3310
ignorehitpause = 1 

 [State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,var(17) >= 2
value = 3311
ignorehitpause = 1

[State 1000, 1]
type = varset
trigger1 = root,var(17) = 0
var(26) = 286

[State 1000, 1]
type = varset
trigger1 = root,var(17) = 1
var(26) = 301

[State 1000, 1]
type = varset
trigger1 = root,var(17) = 2
var(26) = 332

[State 1000, 1]
type = varset
trigger1 = root,var(17) = 3
var(26) = 374

[State 3006, Flames]
type = helper
triggerall = movehit&&movecontact&&numtarget
trigger1 = stateno = 3206
trigger2 = !(target,time)&&(target,movetype=H)
helpertype = normal
stateno = 7500
ID = 7500
name = "Flames"
postype = p2
ownpal = 1
facing = 1
pos = 25,-30
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1
persistent = 0

[State 1000, HitSound]
type = playsnd
trigger1 = movecontact=1 && numtarget
trigger1 = !(target,hitshakeover) && enemynear,time = 1
value= ifelse(moveguarded, 6, 2), ifelse(moveguarded, 0, 6)
ignorehitpause = 1

[State 3006, Hits]
type = Hitdef
trigger1 = !time
trigger1 = root,var(17) <= 4
priority = 6,Hit
attr = S,HP
damage = ceil(var(26)),8
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 4,8
sparkno = -1
guard.sparkno = -1
sparkxy = -1
hitsound = -1
guardsound = -1
ground.type = High
ground.slidetime = 24
ground.hittime = 24
guard.hittime = (24) - 6
ground.velocity = -1.4,-10
ground.cornerpush.veloff = 0
guard.velocity = -12
guard.ctrltime = 15
air.velocity = -3,-8
p2facing = 1
fall = 1
air.fall = 1
fall.recover = 0
getpower = 0
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
palfx.time = 56
palfx.add = -80,-80,-80
palfx.sinadd = -30,-30,-30,10

[State 1005, HitSpark]
type = Helper
triggerall = root,var(45) = 0
trigger1 = movecontact=1 && numtarget
trigger1 = (enemynear, movetype=H) && !(target, time)
helpertype = Normal
stateno = ifElse(MoveGuarded, 7305, 7030)
ID = 7030
name = "Spark"
pos = ifelse(p2dist x<0, 0, ifelse(p2dist x<14, ceil(p2dist x), 14)), -50
facing = -1
ownpal = 1
postype = p2
size.xscale = .5
size.yscale = .5
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
persistent = 0

[State 1005, HitSpark]
type = Helper
triggerall = root,var(45) = 1
trigger1 = movecontact=1 && numtarget
trigger1 = (enemynear, movetype=H) && !(target, time)
helpertype = Normal
stateno = ifElse(MoveGuarded, 7305, 7030)
ID = 7030
name = "Spark"
pos = ifelse(p2dist x<0, 0, ifelse(p2dist x<14, ceil(p2dist x), 14)), -50
facing = -1
ownpal = 1
postype = p2
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
persistent = 0

[State 3301, Pow Effect]
type = helper
triggerall = movehit&&numtarget
trigger1 = stateno = 3300
trigger2 = !(target,time)&&(target,movetype=H)
id = 7805
name = "Pow Effect"
pos = ifelse(p2dist x<0, 0, ifelse(p2dist x<14, ceil(p2dist x), 14)), -50
postype = P2
stateno = 7805
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
pausemovetime = 99999
supermovetime = 99999
size.xscale = 1
size.yscale = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time >= 30
ignorehitpause = 1
persistent = 1

;-----------------------------------------------------------------------
; Smash Hitbox
[StateDef 3340]
type = S
movetype = A
physics = S
ctrl = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,var(17) <= 1
value = 3310
ignorehitpause = 1 

 [State 0, ChangeAnim]
type = ChangeAnim
trigger1 = root,var(17) >= 2
value = 3311
ignorehitpause = 1

[State 1000, 1]
type = varset
trigger1 = root,var(17) = 0
var(26) = 186

[State 1000, 1]
type = varset
trigger1 = root,var(17) = 1
var(26) = 201

[State 1000, 1]
type = varset
trigger1 = root,var(17) = 2
var(26) = 232

[State 1000, 1]
type = varset
trigger1 = root,var(17) = 3
var(26) = 274

[State 3006, Flames]
type = helper
triggerall = movehit&&movecontact&&numtarget
trigger1 = stateno = 3206
trigger2 = !(target,time)&&(target,movetype=H)
helpertype = normal
stateno = 7500
ID = 7500
name = "Flames"
postype = p2
ownpal = 1
facing = 1
pos = 25,-30
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1
persistent = 0

[State 1000, HitSound]
type = playsnd
trigger1 = movecontact=1 && numtarget
trigger1 = !(target,hitshakeover) && enemynear,time = 1
value= ifelse(moveguarded, 6, 2), ifelse(moveguarded, 0, 6)
ignorehitpause = 1

[State 3006, Hits]
type = Hitdef
trigger1 = !time
trigger1 = root,var(17) <= 4
priority = 6,Hit
attr = S,HP
damage = ceil(var(26)),8
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 4,8
sparkno = -1
guard.sparkno = -1
sparkxy = -1
hitsound = -1
guardsound = -1
ground.type = High
ground.slidetime = 24
ground.hittime = 24
guard.hittime = (24) - 6
ground.velocity = -1.4,-10
ground.cornerpush.veloff = 0
guard.velocity = -12
guard.ctrltime = 15
air.velocity = -3,-8
p2facing = 1
fall = 1
air.fall = 1
fall.recover = 0
getpower = 0
envshake.time = 18
envshake.ampl = 6
envshake.freq = 120
palfx.time = 56
palfx.add = -80,-80,-80
palfx.sinadd = -30,-30,-30,10

[State 1005, HitSpark]
type = Helper
triggerall = root,var(45) = 0
trigger1 = movecontact=1 && numtarget
trigger1 = (enemynear, movetype=H) && !(target, time)
helpertype = Normal
stateno = ifElse(MoveGuarded, 7305, 7030)
ID = 7030
name = "Spark"
pos = ifelse(p2dist x<0, 0, ifelse(p2dist x<14, ceil(p2dist x), 14)), -50
facing = -1
ownpal = 1
postype = p2
size.xscale = .5
size.yscale = .5
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
persistent = 0

[State 1005, HitSpark]
type = Helper
triggerall = root,var(45) = 1
trigger1 = movecontact=1 && numtarget
trigger1 = (enemynear, movetype=H) && !(target, time)
helpertype = Normal
stateno = ifElse(MoveGuarded, 7305, 7030)
ID = 7030
name = "Spark"
pos = ifelse(p2dist x<0, 0, ifelse(p2dist x<14, ceil(p2dist x), 14)), -50
facing = -1
ownpal = 1
postype = p2
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
persistent = 0

[State 3301, Pow Effect]
type = helper
triggerall = movehit&&numtarget
trigger1 = stateno = 3350
trigger2 = !(target,time)&&(target,movetype=H)
id = 7805
name = "Pow Effect"
pos = ifelse(p2dist x<0, 0, ifelse(p2dist x<14, ceil(p2dist x), 14)), -50
postype = P2
stateno = 7805
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
pausemovetime = 99999
supermovetime = 99999
size.xscale = 1
size.yscale = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = time >= 30
ignorehitpause = 1
persistent = 1

;-----------------------------------------------------------------------
; Electric FX
[Statedef 3420]
physics = N
velset = 0,0
anim = 9999
sprpriority = 4

[State 7180, assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 7180, Electricity]
type = explod
trigger1 = 1
anim = 3220
ID = 3220
sprpriority = 3
postype = p2
vel = -.2,-.75
pos = (enemynear,const(size.mid.pos.x)),(enemynear,const(size.mid.pos.y))+10
random = 40,40
scale = .2,.2
ownpal = 1

[State 7180, pos]
type = posadd
trigger1 = 1
x = ceil(p2dist x)
y = ceil(p2dist y)

[State 7180, end]
type = destroyself
trigger1 = time >=150
trigger2 = enemynear,ctrl||(enemynear,movetype!=H)||(enemynear,statetype=L)

;-------------------------------------------------------------------
; Normal Hit Spark
[Statedef 7010]
type = A
physics = N
movetype = I
velset=0,0
sprpriority=5

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = root,var(45) = 0
trigger1 = !time
value = 7000

[State 8010, assert]
type=assertspecial
triggerall = root,var(45) = 0
trigger1= 1
flag=noshadow

[State 8010, angle]
type=angleset
triggerall = root,var(45) = 0
trigger1= !time
value=15*(random%24)

[State 8010, scale]
type=angledraw
triggerall = root,var(45) = 0
trigger1= time<11
scale= 1.35+(time*.20), 1.15-(time*.12)

[State 8010, scale]
type=angledraw
triggerall = root,var(45) = 0
trigger1= time>=11
scale=0,0

[State 8010, trans]
type=trans
triggerall = root,var(45) = 0
trigger1= 1
trans=addalpha
alpha=256,256

[State 8030, Circle]
type=explod
triggerall = root,var(45) = 0
trigger1= !time
anim=7001
ID=7001
postype=p1
removetime=10
sprpriority=4
pausemovetime=-1
supermovetime=-1

[State 8030, Circle Scale]
type=modifyexplod
triggerall = root,var(45) = 0
trigger1= numexplod(7001)
ID=7001
scale=.15+(.03*time),.15+(.03*time)
trans=addalpha
alpha=ceil(256-30.6*time),256

[State 8010, Center]
type=explod
triggerall = root,var(45) = 0
trigger1= time = 3
anim=7002
ID=7002
postype=p1
facing= ifelse(random<500, -1, 1)
vfacing=ifelse(random<500, -1, 1)
scale=.35,.35
sprpriority=5
pausemovetime=-1
supermovetime=-1

[State 8010, end]
type=removeexplod
triggerall = root,var(45) = 0
trigger1= time>=15

[State 8010, end]
type=destroyself
triggerall = root,var(45) = 0
trigger1= time>=15
;trigger2 = enemynear,movetype !=H



; Normal Hit Spark
[State 0, ChangeAnim]
type = ChangeAnim
triggerall = root,var(45) = 1
trigger1 = !time
value = 7050

[State 8011, Assert: NoShadow]
type = AssertSpecial
triggerall = root,var(45) = 1
trigger1 = 1
flag = NoShadow

[State 8011, AngleSet]
type = AngleSet
triggerall = root,var(45) = 1
trigger1 = !Time
value = 30 * (Random % 12)

[State 8011, AngleAdd]
type = AngleAdd
triggerall = root,var(45) = 1
trigger1 = 1
value = 30

[State 8011, Scale]
type = AngleDraw
triggerall = root,var(45) = 1
trigger1 = Time < 10
scale = 0.35 - (Time * 0.035), 0.35 - (Time * 0.035)

[State 8011, Scale]
type = AngleDraw
triggerall = root,var(45) = 1
trigger1 = Time >= 10
scale = 0,0

[State 8011, Transparency]
type = Trans
triggerall = root,var(45) = 1
trigger1 = 1
trans = AddAlpha
alpha = 256,256

[State 8011, Center]
type = Explod
triggerall = root,var(45) = 1
trigger1 = !Time
anim = 7051
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removetime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Center Explod]
type = ModifyExplod
triggerall = root,var(45) = 1
trigger1 = NumExplod(1)
ID = 1
scale = 0.175 + (0.0109375 * Time), 0.175 + (0.0109375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8011, Streaks Explod]
type = Explod
triggerall = root,var(45) = 1
trigger1 = !Time
anim = 7052
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Streaks Explod]
type = ModifyExplod
triggerall = root,var(45) = 1
trigger1 = NumExplod(2)
ID = 2
scale = 0.175 + (0.0109375 * Time), 0.175 + (0.0109375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8013, P2 Back Explod]
type = Explod
triggerall = root,var(45) = 1
trigger1 = !Time
anim = 7053
ID = 3
posType = P1
facing = -1
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale P2 Back Explod]
type = ModifyExplod
triggerall = root,var(45) = 1
trigger1= NumExplod(3)
ID = 3
scale = 0.3 + (0.0125 * Time), 0.3 - (0.0125 * Time)
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8011, Impact Explod]
type = Explod
triggerall = root,var(45) = 1
trigger1 = !Time
anim = 7054
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Impact Explod]
type = ModifyExplod
triggerall = root,var(45) = 1
trigger1 = NumExplod(4)
ID = 4
scale = 0.325 - (0.04375 * Time), 0.325 - (0.04375 * Time)
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8011, Remove Explods]
type = RemoveExplod
triggerall = root,var(45) = 1
trigger1 = Time >= 16

[State 8011, End]
type = DestroySelf
triggerall = root,var(45) = 1
trigger1 = Time >= 16

;-------------------------------------------------------------------
; Normal Slice Hit Spark
[Statedef 7015]
type=A
anim=7003
velset=0,0
sprpriority=5

[State 8015, Assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 8015, Angle]
type=angleset
trigger1= !time
value=15*(random%24)

[State 8015, Scale]
type=angledraw
trigger1= time<10
scale= .5+(time*.15), 1-(time*.1)

[State 8015, Scale]
type=angledraw
trigger1= time>=10
scale=0,0

[State 8015, Trans]
type=trans
trigger1= 1
trans=addalpha
alpha=256,256

[State 8015, End]
type=removeexplod
trigger1= time>=16

[State 8015, End]
type=destroyself
trigger1= time>=16

;-------------------------------------------------------------------
; Special Hit Spark
[Statedef 7020]
type = A
physics = N
movetype = I
velset=0,0
sprpriority=5

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = root,var(45) = 0
trigger1 = !time
value = 7010

[State 8010, assert]
type=assertspecial
triggerall = root,var(45) = 0
trigger1= 1
flag=noshadow

[State 8010, angle]
type=angleset
triggerall = root,var(45) = 0
trigger1= !time
value=15*(random%24)

[State 8010, scale]
type=angledraw
triggerall = root,var(45) = 0
trigger1= time<13
scale= 1.15+(time*.20), 1.35-(time*.11)

[State 8010, scale]
type=angledraw
triggerall = root,var(45) = 0
trigger1= time>=13
scale=0,0

[State 8010, trans]
type=trans
triggerall = root,var(45) = 0
trigger1= 1
trans=addalpha
alpha=256,256

[State 8030, Circle]
type=explod
triggerall = root,var(45) = 0
trigger1= !time
anim=7011
ID=7011
postype=p1
removetime=13
sprpriority=4
pausemovetime=-1
supermovetime=-1

[State 8030, Circle Scale]
type=modifyexplod
triggerall = root,var(45) = 0
trigger1= numexplod(7011)
ID=7011
scale=.15+(.03*time),.15+(.03*time)
trans=addalpha
alpha=ceil(256-15.6*time),256

[State 8010, Center]
type=explod
triggerall = root,var(45) = 0
trigger1= time = 3
anim=7002
ID=7002
postype=p1
facing= ifelse(random<500, -1, 1)
vfacing=ifelse(random<500, -1, 1)
scale=.35,.35
sprpriority=5
pausemovetime=-1
supermovetime=-1

[State 8010, end]
type=removeexplod
triggerall = root,var(45) = 0
trigger1= time>=15

[State 8010, end]
type=destroyself
triggerall = root,var(45) = 0
trigger1= time>=15
;trigger2 = enemynear,movetype !=H



;Special Move Hit Spark
[State 0, ChangeAnim]
type = ChangeAnim
triggerall = root,var(45) = 1
trigger1 = !time
value = 7050

[State 8013, Assert: NoShadow]
type = AssertSpecial
triggerall = root,var(45) = 1
trigger1 = 1
flag = NoShadow

[State 8013, AngleSet]
type = AngleSet
triggerall = root,var(45) = 1
trigger1 = !Time
value = 30 * (Random % 12)

[State 8013, AngleAdd]
type = AngleAdd
triggerall = root,var(45) = 1
trigger1 = 1
value = 30

[State 8014, Scale]
type = AngleDraw
triggerall = root,var(45) = 1
trigger1 = Time < 10
scale = 0.5 - (Time * 0.05), 0.5 - (Time * 0.05)

[State 8014, Scale]
type = AngleDraw
triggerall = root,var(45) = 1
trigger1 = Time >= 10
scale = 0,0

[State 8013, Transparency]
type = Trans
triggerall = root,var(45) = 1
trigger1 = 1
trans = AddAlpha
alpha = 256,256

[State 8013, Center Explod]
type = Explod
triggerall = root,var(45) = 1
trigger1 = !Time
anim = 7051
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Center Explod]
type = ModifyExplod
triggerall = root,var(45) = 1
trigger1 = NumExplod(1)
ID = 1
scale = 0.225 + (0.0140625 * Time), 0.225 + (0.0140625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8013, Streaks Explod]
type = Explod
triggerall = root,var(45) = 1
trigger1 = !Time
anim = 7052
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Streaks Explod]
type = ModifyExplod
triggerall = root,var(45) = 1
trigger1 = NumExplod(2)
ID = 2
scale = 0.225 + (0.0140625 * Time), 0.225 + (0.0140625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8013, P2 Back Explod]
type = Explod
triggerall = root,var(45) = 1
trigger1 = !Time
anim = 7053
ID = 3
posType = P1
facing = -1
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale P2 Back Explod]
type = ModifyExplod
triggerall = root,var(45) = 1
trigger1= NumExplod(3)
ID = 3
scale = 0.3 + (0.0125 * Time), 0.3 - (0.0125 * Time)
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8013, Impact Explod]
type = Explod
triggerall = root,var(45) = 1
trigger1 = !Time
anim = 7054
ID = 4
posType = P1
facing = ifElse(random < 500, -1, 1)
vFacing = ifElse(random < 500, -1, 1)
sprPriority=3
removeTime=8
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Impact Explod]
type = ModifyExplod
triggerall = root,var(45) = 1
trigger1 = NumExplod(4)
ID = 4
scale = 0.375 - (0.05625 * Time), 0.375 - (0.05625 * Time)
trans = AddAlpha
alpha = 192 - (24 * Time), 256

[State 8013, Remove Explods]
type = RemoveExplod
triggerall = root,var(45) = 1
trigger1 = Time >= 16

[State 8013, End]
type = DestroySelf
triggerall = root,var(45) = 1
trigger1 = Time >= 16

;-------------------------------------------------------------------
; Special Slice Hit Spark
[Statedef 7025]
type=A
anim=7012
velset=0,0
sprpriority=5

[State 8025, Assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 8025, Angle]
type=angleset
trigger1= !time
value=15*(random%24)

[State 8025, Scale]
type=angledraw
trigger1= time<10
scale= .7+(time*.15), 1.1-(time*.1)

[State 8025, Scale]
type=angledraw
trigger1= time>=10
scale=0,0

[State 8025, Trans]
type=trans
trigger1= 1
trans=addalpha
alpha=256,256

[State 8025, Circle]
type=explod
trigger1= !time
anim=7011
ID=7011
postype=p1
removetime=10
sprpriority=5
pausemovetime=-1
supermovetime=-1

[State 8025, Circle Scale]
type=modifyexplod
trigger1= numexplod(7011)
ID=7011
scale=.25+(.025*time),.25+(.025*time)
trans=addalpha
alpha=ceil(256-25.6*time),256

[State 8025, End]
type=removeexplod
trigger1= time>=16

[State 8025, End]
type=destroyself
trigger1= time>=16

;-------------------------------------------------------------------
; Super Hit Spark
[Statedef 7030]
type = A
physics = N
movetype = I
velset=0,0
sprpriority=5

;--------
; CVS ;
;--------

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = root,var(45) = 0
trigger1 = !time
value = 7020

[State 8030, Assert]
type=assertspecial
triggerall = root,var(45) = 0
trigger1= 1
flag=noshadow

[State 8030, Angle]
type=angleset
triggerall = root,var(45) = 0
trigger1= !time
value=15*(random%24)

[State 8030, Scale]
type=angledraw
triggerall = root,var(45) = 0
trigger1= time<14
scale= 1+(time*.15), 1.4-(time*.1)

[State 8030, Scale]
type=angledraw
triggerall = root,var(45) = 0
trigger1= time>=14
scale=0,0

[State 8030, Trans]
type=trans
triggerall = root,var(45) = 0
trigger1= 1
trans=addalpha
alpha=256,256

[State 8010, Center]
type=explod
triggerall = root,var(45) = 0
trigger1= time = 3
anim=7002
ID=7002
postype=p1
facing= ifelse(random<500, -1, 1)
vfacing=ifelse(random<500, -1, 1)
scale=.45,.45
sprpriority=5
pausemovetime=-1
supermovetime=-1

[State 8030, Circle]
type=explod
triggerall = root,var(45) = 0
trigger1= !time
anim=7011
ID=7011
postype=p1
removetime=10
sprpriority=5
pausemovetime=-1
supermovetime=-1

[State 8030, Circle Scale]
type=modifyexplod
triggerall = root,var(45) = 0
trigger1= numexplod(7011)
ID=7011
scale=.25+(.03*time),.25+(.03*time)
trans=addalpha
alpha=ceil(256-15.6*time),256

[State 8030, End]
type=removeexplod
triggerall = root,var(45) = 0
trigger1= time>=16

[State 8030, End]
type=destroyself
triggerall = root,var(45) = 0
trigger1= time>=16


;--------
; CFJ ;
;--------

[State 0, ChangeAnim]
type = ChangeAnim
triggerall = root,var(45) = 1
trigger1 = !time
value = 7050

[State 8014, Assert: NoShadow]
type = AssertSpecial
triggerall = root,var(45) = 1
trigger1 = 1
flag = NoShadow

[State 8014, AngleSet]
type = AngleSet
triggerall = root,var(45) = 1
trigger1 = !Time
value = 30 * (Random % 12)

[State 8014, AngleAdd]
type = AngleAdd
triggerall = root,var(45) = 1
trigger1 = 1
value = 30

[State 8014, Scale]
type = AngleDraw
triggerall = root,var(45) = 1
trigger1 = Time < 10
scale = 0.55 - (Time * 0.05), 0.55 - (Time * 0.05)

[State 8014, Scale]
type = AngleDraw
triggerall = root,var(45) = 1
trigger1 = Time >= 10
scale = 0,0

[State 8014, Transparency]
type = Trans
triggerall = root,var(45) = 1
trigger1 = 1
trans = AddAlpha
alpha = 256,256

[State 8014, Center Explod]
type = Explod
triggerall = root,var(45) = 1
trigger1 = !Time
anim = 7051
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Center Explod]
type = ModifyExplod
triggerall = root,var(45) = 1
trigger1 = NumExplod(1)
ID = 1
scale = 0.25 + (0.015625 * Time), 0.25 + (0.015625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, Streaks Explod]
type = Explod
triggerall = root,var(45) = 1
trigger1 = !Time
anim = 7052
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Streaks Explod]
type = ModifyExplod
triggerall = root,var(45) = 1
trigger1 = NumExplod(2)
ID = 2
scale = 0.25 + (0.015625 * Time), 0.25 + (0.015625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, P2 Back Explod]
type = Explod
triggerall = root,var(45) = 1
trigger1 = !Time
anim = 7053
ID = 3
posType = P1
facing = -1
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale P2 Back Explod]
type = ModifyExplod
triggerall = root,var(45) = 1
trigger1= NumExplod(3)
ID = 3
scale = 0.5 + (0.0125 * Time), 0.5 - (0.0125 * Time)
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8014, Impact Explod]
type = Explod
triggerall = root,var(45) = 1
trigger1 = !Time
anim = 7054
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Impact Explod]
type = ModifyExplod
triggerall = root,var(45) = 1
trigger1 = NumExplod(4)
ID = 4
scale = 0.4 - (0.0625 * Time), 0.4 - (0.0625 * Time)
trans = AddAlpha
alpha = 256 - (32 * Time),256

[State 8014, Remove Explods]
type = RemoveExplod
triggerall = root,var(45) = 1
trigger1 = time >= 16

[State 8014, End]
type = DestroySelf
triggerall = root,var(45) = 1
trigger1 = Time >= 16

;-------------------------------------------------------------------
; Super Slice Hit Spark
[Statedef 7035]
type=A
anim=7021
velset=0,0
sprpriority=5

[State 8025, Assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 8025, Angle]
type=angleset
trigger1= !time
value=15*(random%24)

[State 8025, Scale]
type=angledraw
trigger1= time<10
scale= .6+(time*.15), 1.2-(time*.1)

[State 8025, Scale]
type=angledraw
trigger1= time>=10
scale=0,0

[State 8025, Trans]
type=trans
trigger1= 1
trans=addalpha
alpha=256,256

[State 8025, Circle]
type=explod
trigger1= !time
anim=7011
ID=7011
postype=p1
removetime=10
sprpriority=5
pausemovetime=-1
supermovetime=-1

[State 8025, Circle Scale]
type=modifyexplod
trigger1= numexplod(7011)
ID=7011
scale=.25+(.025*time),.25+(.025*time)
trans=addalpha
alpha=ceil(256-25.6*time),256

[State 8025, End]
type=removeexplod
trigger1= time>=16

[State 8025, End]
type=destroyself
trigger1= time>=16

;-------------------------------------------------------------------
; Sword Clash Spark
[Statedef 7050]
type=A
anim=7012
velset=0,0
sprpriority=4

[State 8025, Assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 8025, Angle]
type=angleset
trigger1= !time
value=15*(random%24)

[State 8025, Scale]
type=angledraw
trigger1= time<10
scale= 1+(time*.15), 1.2-(time*.1)

[State 8025, Scale]
type=angledraw
trigger1= time>=10
scale=0,0

[State 8025, Trans]
type=trans
trigger1= 1
trans=addalpha
alpha=256,256

[State 198, Explod]
type = Explod
trigger1 = !time
anim = 7750+(random%2)
pos = 0,0
postype = p1 ;p2,front,back,left,right
removetime = 30
scale = .5,.5
sprpriority = 0
ontop = 1
ownpal = 1

[State 8025, End]
type=destroyself
trigger1= time>=16

;-----------------------------------------------------------------------
; Jump Dust
[Statedef 7100]
physics = N
velset = 0,0
anim = 9999

[State 7100, bind]
type = bindtoroot
trigger1 = time

[State 7100, dust]
type = explod
trigger1 = !time
anim = 7405
ID = 7100
sprpriority = 3
postype = p1
scale = .5,.5

[State 7100, dust]
type = explod
trigger1 = !time||time=2||time=6
anim = 7410
ID = 7100
sprpriority = 3
postype = p1
scale = .5,.5

[State 7100, assert]
type = assertspecial
trigger1 = 1
flag = invisible

[State 7100, end]
type = destroyself
trigger1 = time>=7

;-----------------------------------------------------------------------
; Land Dust
[Statedef 7200]
physics = N
velset = 0,0
anim = 9999

[State 7200, bind]
type = bindtoroot
trigger1 = time

[State 7100, dust]
type = explod
trigger1 = !time
anim = 7400
ID = 7400
pos = 0, 0
sprpriority = 0
postype = p1
scale = .5,.5

[State 7200, assert]
type = assertspecial
trigger1 = 1
flag = invisible

[State 7200, end]
type = destroyself
trigger1 = time>=7

;-----------------------------------------------------------------------
; Normal Guard
[Statedef 7300]
type = A
physics = N
movetype = I
anim = 7300
velset = 0,0
sprpriority = 5

[State 8000, Assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 8000, Scale]
type=angledraw
triggerall = root,var(45) = 0
trigger1= 1
scale= .450+(.046875*time), .450+(.046875*time)

[State 8000, Scale]
type=angledraw
triggerall = root,var(45) = 1
trigger1= 1
scale= 0.125+(0.046875*Time), 0.125+(0.046875*Time)

[State 8000, Trans]
type=trans
trigger1= time<4
trans= addalpha
alpha= 256, 256

[State 8000, Trans]
type=trans
trigger1= time>=4
trans= addalpha
alpha= 256 - 64*(time-4), 256

[State 8000, End]
type=destroyself
trigger1= time>=8

;-----------------------------------------------------------------------
; Special Guard
[Statedef 7305]
type = A
physics = N
movetype = I
anim = 7305
velset = 0,0
sprpriority = 5

[State 8001, Assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 8001, Scale]
type=angledraw
triggerall = root,var(45) = 0
trigger1= 1
scale= .4+(.03125*time), .4+(.03125*time)

[State 8001, Scale]
type=angledraw
triggerall = root,var(45) = 1
trigger1= 1
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)

[State 8001, Trans]
type=trans
trigger1= time<4
trans= addalpha
alpha= 256, 256

[State 8001, Trans]
type=trans
trigger1= time>=4
trans= addalpha
alpha= 256 - 64*(time-4), 256

[State 8001, End]
type=destroyself
trigger1= time>=8

;-----------------------------------------------------------------------
; Dash Dust
[Statedef 7416]
type = A
anim = 9999
velset = 0,0
sprpriority = 5

[State 7416, Pos]
type = posset
trigger1 = !time = 0
y = 0

[State 7416, Dust]
type = explod
trigger1 = time = 0 || time = 3 || time = 6
anim = 7416
ID= ifelse((time=6), 3, ifelse((time=3), 2, 1))
postype = p1
pos = 0,-4
random = 8,8
vel = -2-(random/1000.0), -2-(random/2000.0)
facing = ifelse(random<500,-1,1)
vfacing = ifelse(random<500,-1,1)
removetime = 16
sprpriority = 3
pausemovetime = -1
supermovetime = -1

[State 7416, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = .1+(.025*time), .1+(.025*time)
trans = addalpha
alpha = 256-(16*time), 256

[State 7416, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = .1+(.025*(time-3)), .1+(.025*(time-3))
trans = addalpha
alpha = 256-(16*(time-3)), 256

[State 7416, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = .1+(.025*(time-6)), .1+(.025*(time-6))
trans = addalpha
alpha = 256-(16*(time-6)), 256

[State 7416, End]
type = removeexplod
trigger1 = time>=22

[State 7416, End]
type = destroyself
trigger1 = !numexplod

;-----------------------------------------------------------------------
; Charge Dust
[Statedef 7420]
physics = N
velset = 0,0
anim = 7420
sprpriority = 4

[State 7200, assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 7200, end]
type = destroyself
trigger1 = !animtime

;-----------------------------------------------------------------------
; Seichuzen Dust 1
[Statedef 7430]
physics = N
velset = 0,0
anim = 7430
sprpriority = 4

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1 
pos = -90,-4
time = 1

[State 7200, assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1240, 1]
type = varset
trigger1 = time = 0
var(0) = root,stateno

[State 7200, end]
type = destroyself
trigger1 = var(0) != root,stateno
trigger2 = !animtime

;-----------------------------------------------------------------------
; Seichuzen Dust 2
[Statedef 7435]
physics = N
velset = 0,0
anim = 7435
sprpriority = 4

[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1 
time = 1

[State 7200, assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 1240, 1]
type = varset
trigger1 = time = 0
var(0) = root,stateno

[State 7200, end]
type = destroyself
trigger1 = var(0) != root,stateno
trigger2 = !animtime

;-----------------------------------------------------------------------
; Intro Dust
[Statedef 7440]
type=A
anim=9999
velset=0,0
sprpriority=5

[State 7105, FX]
type=explod
triggerall = root,anim!=4102
trigger1= !time
anim=7440
ID= 7440
postype=p1
removetime=14
sprpriority=-1
pausemovetime=-1
supermovetime=-1

[State 7105, Scale]
type=modifyexplod
triggerall = root,anim!=4102
trigger1= 1
scale= .2+(.03125*time), .2+(.03125*time)
trans= addalpha
alpha= ifelse(time<6, 256, 256-(64*(time-6))), 256

[State 7105, FX]
type=explod
triggerall = root,anim=4102
trigger1= !time
anim=7440
ID= 7440
postype=p1
removetime=14
sprpriority=-1
pausemovetime=-1
supermovetime=-1

[State 7105, Scale]
type=modifyexplod
triggerall = root,anim=4102
trigger1= 1
scale= .35+(.125*time), .2+(.03125*time)
trans= addalpha
alpha= ifelse(time<13, 256, 256-(8*(time-1))), 256

[State 7105, End]
type=removeexplod
trigger1 = root,anim!=4102
trigger1= time>=14
trigger2 = root,anim=4102
trigger2= time>=18

[State 7105, End]
type=destroyself
trigger1= !numexplod

;-----------------------------------------------------------------------
; Fukiage Dust
[Statedef 7445]
physics = N
velset = 0,0
anim = 7445
sprpriority = 4

[State 7200, assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 7200, end]
type = destroyself
trigger1 = !animtime

;-----------------------------------------------------------------------
; Ground Smash Dust
[Statedef 7450]
physics = N
velset = 0,0
anim = 7450
sprpriority = 5

[State 7200, assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 7200, end]
type = destroyself
trigger1 = !animtime

;-----------------------------------------------------------------------
; Ground Crack 1
[Statedef 7460]
physics = N
velset = 0,0
anim = 7460
sprpriority = 1

[State 7200, assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 7200, end]
type = destroyself
trigger1 = !animtime

;-----------------------------------------------------------------------
; Ground Crack 2
[Statedef 7465]
physics = N
velset = 0,0
anim = 7465
sprpriority = 6

[State 7200, assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 7200, end]
type = destroyself
trigger1 = !animtime

;-----------------------------------------------------------------------
; Hayate no Red Hawk Start Skin
[Statedef 7470]
physics = N
anim = 3401
ctrl = 0
velset=0,0
sprpriority=3

[State 3401, Trans]
type = Trans
trigger1 =1
trans = addalpha
alpha = 0+6*time,256-6*time

[State 3401, BindToRoot]
type = BindToRoot
trigger1 =root,anim=3400
pos = 0,0
ignorehitpause =1

[State 3401, Destroyself]
type = destroyself
trigger1 =root,stateno!=3400
trigger2 =root,Movetype=H
ignorehitpause =1

;-----------------------------------------------------------------------
; Hayate no Red Hawk Success Skin
[Statedef 7471]
physics = N
anim = 3421
ctrl = 0
velset=0,0
sprpriority=3

[State 3403, Trans]
type = Trans
trigger1 =1
trans = addalpha
alpha = 255-6*time,0+9*time

[State 3401, BindToRoot]
type = BindToRoot
trigger1 =root,anim=3420
pos = 0,0
ignorehitpause =1

[State 3401, Destroyself]
type = destroyself
trigger1 =root,stateno!=3420
trigger2 =root,Movetype=H
ignorehitpause =1

;-----------------------------------------------------------------------
; Hayate no Red Hawk Stop Skin
[Statedef 7472]
physics = N
anim = 3431
ctrl = 0
velset=0,0
sprpriority=3

[State 3403, Trans]
type = Trans
trigger1 =1
trans = addalpha
alpha = 255-6*time,0+9*time

[State 3401, BindToRoot]
type = BindToRoot
trigger1 =root,anim=3430
pos = 0,0
ignorehitpause =1

[State 3401, Destroyself]
type = destroyself
trigger1 =root,stateno!=3430
trigger2 =root,Movetype=H
ignorehitpause =1

;-----------------------------------------------------------------------
; Hayate no Red Hawk Steam
[Statedef 7480]
physics = N
anim = 7470
ctrl = 0
velset=0,0
sprpriority=3

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 3401, BindToRoot]
type = BindToRoot
trigger1 =root,anim=3420
pos = 0,0
ignorehitpause =1

[State 3401, BindToRoot]
type = BindToRoot
trigger1 =root,anim=3430
pos = -10,8
ignorehitpause =1

[State 3401, Destroyself]
type = destroyself
trigger1 = root,stateno!=[3420,3430]
trigger2 = root,Movetype=H
ignorehitpause =1

;-------------------------------------------------------------------
; Hayate no Red Hawk Flame Charge
[Statedef 7485]
physics = N
anim = 3413
sprpriority = 5

[State 3401, BindToRoot]
type = BindToRoot
trigger1 = time <= 20
pos = 40,-56
ignorehitpause =1

[State 4006, assert]
type=trans
trigger1= 1
trans=addalpha
alpha=256,256
ignorehitpause=1

[State 7509, Spin]
type = angleset
trigger1 = 1
value = -6*(random%60)

[State 7509, Spin]
type = angleadd
trigger1 = 1
value = -6

[State 4006, shrink]
type=angledraw
trigger1= 1
scale=.0105*time,.0105*time

[State 4006, snd]
type=playsnd
trigger1= !time
value = 3400,3

[State 4006, end]
type=destroyself
trigger1 = root,animelemtime(2)=0 || root,movetype!=A

;-------------------------------------------------------------------
; Hayate no Red Hawk Flame Burst 1
[Statedef 7490]
type = A
movetype= I
physics = N
anim = 3410
ctrl = 0
sprpriority = 4
movehitpersist = 1

[State 3401, BindToRoot]
type = BindToRoot
triggerall =root,anim=3406
trigger1 = time <= 5 
pos = -10,-60
ignorehitpause =1

[State 0, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256

[state 1240, 1]
type = varset
trigger1 = time = 0
var(0) = root,stateno

[State 1240,ChangeAnim]
type = ChangeAnim
trigger1 = root,HitPauseTime
value = anim
elem = AnimElemNo(0)-1

[state 1240, 1]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = var(0) != root,stateno
trigger3 = root,stateno = [5000,5300]

;-------------------------------------------------------------------
; Hayate no Red Hawk Flame Burst 2
[Statedef 7491]
type = A
movetype= I
physics = N
anim = 3411
ctrl = 0
sprpriority = 4
movehitpersist = 1

[State 3401, BindToRoot]
type = BindToRoot
triggerall = root,anim=3406
trigger1 = time <= 5 
pos = 60,-60
ignorehitpause = 1

[State 0, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256

[state 1240, 1]
type = varset
trigger1 = time = 0
var(0) = root,stateno

[State 1240,ChangeAnim]
type = ChangeAnim
trigger1 = root,HitPauseTime
value = anim
elem = AnimElemNo(0)-1

[state 1240, 1]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = var(0) != root,stateno
trigger3 = root,stateno = [5000,5300]

;-------------------------------------------------------------------
; Hayate no Red Hawk Flame Burst 3
[Statedef 7492]
type = A
movetype= A
physics = N
anim = 3414
ctrl = 0
sprpriority = 4
movehitpersist = 1

[State 0, Explod]
type = Explod
trigger1 = !time
anim = 3412
ID = 3412
pos = 0,0
postype = p1 
removetime = -2
pausemovetime = 0
scale = .3,.3
sprpriority = 0
ignorehitpause = 1

[State 3401, BindToRoot]
type = BindToRoot
triggerall = root,anim=3406
trigger1 = time <= 5 
pos = 60,-60
ignorehitpause = 1

[State 1005, hitsnd]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = target,time=0 && target,movetype=H
value = 2,6
persistent = 0
ignorehitpause = 1

[State 1005, hitsnd]
type = playsnd
triggerall = time <= 49
trigger1 = movehit && numtarget
trigger1 = target,time=0 && target,movetype=H
value = 3400,4
persistent = 0
ignorehitpause = 1

[State 1005, hitsnd]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = target,time=0 && target,movetype=H
value = 3300,1
persistent = 0
ignorehitpause = 1

[State 1006, Hits]
type = HitDef
trigger1 = !time
attr = S, SP
hitflag = MAF
guardflag = MAF
damage = 235,10
priority = 4, Hit
pausetime = 12,14
getpower = 0
givepower = 0
sparkxy = -1
sparkno = -1
guard.sparkno = -1
guardsound = s6,1
animtype = heavy
ground.type = High
ground.slidetime = 19
ground.hittime = 25
guard.hittime = (25) - 6
guard.ctrltime = 15
ground.velocity = -7,-2
guard.velocity = -5
air.velocity = -4,-3
guard.ctrltime = 15
envshake.time = 24
envshake.ampl = 14
envshake.freq = 120
air.fall = 1
fall.recover = 0
fall = 1
persistent = 0
ignorehitpause = 1
ground.cornerpush.veloff = 6

[State 3301, Pow Effect]
type = helper
trigger1 = movehit=1 && numtarget
trigger1 = !(target,time)&&(target,movetype=H)
id = 7805
name = "Pow Effect"
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(32), ceil(P2Dist x), var(32))), var(33)
postype = P1
stateno = 7805
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
pausemovetime = 99999
supermovetime = 99999
size.xscale = 1
size.yscale = 1

[State 3006, Flames]
type = helper
triggerall = movehit&&movecontact&&numtarget
trigger1 = !(target,time)&&(target,movetype=H)
helpertype = normal
stateno = 7500
ID = 7500
name = "Flames"
postype = p2
ownpal = 1
facing = 1
pos = 25,-80
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1
persistent = 0

[State 1005, HitSpark]
type = Helper
triggerall = root,var(45) = 0
trigger1 = movecontact=1 && numtarget
trigger1 = (enemynear, movetype=H) && !(target, time)
helpertype = Normal
stateno = ifElse(MoveGuarded, 7305, 7030)
ID = 8000
name = "Spark"
pos = ifelse(p2dist x<0, 0, ifelse(p2dist x<14, ceil(p2dist x), 14)), -60
facing = -1
ownpal = 1
postype = p2
size.xscale = .5
size.yscale = .5
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
persistent = 0

[State 7010, Spark]
type = helper
triggerall = root,var(45) = 1
trigger1 = movecontact=1 && numtarget
trigger1 = (enemynear, movetype=H) && !(target, time)
helpertype = normal
stateno = ifelse(moveguarded, 7305, 7030)
ID = 8000
name = "Spark"
postype = p2
size.xscale = 1
size.yscale = 1
pos = ifelse(p2dist x<0, 0, ifelse(p2dist x<14, ceil(p2dist x), 18)), -60
facing = -1
ownpal = 1
pausemovetime = 65535
supermovetime = 65535
ignoreHitPause = 1
persistent = 0

[State 0, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256

[state 1240, 1]
type = DestroySelf
trigger1 = AnimTime = 0

;-----------------------------------------------------------------------
; Burn FX
[Statedef 7500]
physics = N
velset = 0,0
anim = 9999
sprpriority = 4

[State 7180, assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 7180, Flames]
type = explod
trigger1 = 1
anim = 7500
ID = 7500
sprpriority = 3
postype = p2
pos = (enemynear,const(size.mid.pos.x)),(enemynear,const(size.mid.pos.y))+10
vel = (Random / 2000.0), -0.5 - (Random / 2000.0)
facing = ifElse(Random < 500, -1, 1)
vfacing = ifElse(Random < 500, -1, 1)
random = 40,40
scale = .5,.5
ownpal = 1

[State 7180, pos]
type = posadd
trigger1 = 1
x = ceil(p2dist x)
y = ceil(p2dist y)

[State 7180, end]
type = destroyself
trigger1 = time >=150
trigger2 = enemynear,ctrl||(enemynear,movetype!=H)||(enemynear,statetype=L)

;-----------------------------------------------------------------------
; Flame FX
[Statedef 7505]
type = A
movetype= I
physics = N
anim = 9999
ctrl = 0
sprpriority = 4
movehitpersist = 1

[State 1242, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 100
pos = 35,18

[State 7180, Flames]
type = explod
triggerall = root,anim = 3110
trigger1 = 1
anim = 7500
ID = 7500
sprpriority = 3
postype = p1
vel = -.6,-.3
pos = -10,-30
random = 17,10
scale = .4,.4
ownpal = 1

[State 7180, Flames]
type = explod
triggerall = root,anim = 3120
trigger1 = 1
anim = 7500
ID = 7500
sprpriority = 3
postype = p1
vel = -.6,-.3
pos = 5,-45
random = 17,10
scale = .4,.4
ownpal = 1

[State 7180, Flames]
type = explod
triggerall = root,anim = 3130
trigger1 = 1
anim = 7500
ID = 7500
sprpriority = 3
postype = p1
vel = -.6,-.3
pos = 40,-55
random = 17,10
scale = .4,.4
ownpal = 1

[State 0, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256,256

[state 1240, 1]
type = varset
trigger1 = time = 0
var(0) = root,stateno

[State 1240,ChangeAnim]
type = ChangeAnim
trigger1 = root,HitPauseTime
value = anim
elem = AnimElemNo(0)-1

[state 1240, 1]
type = DestroySelf
trigger1 = var(0) != root,stateno
trigger2 = root,stateno = [5000,5300]

;-------------------------------------------------------------------
; Custom Combo Effect
[Statedef 7790]
type = A
velset = 0,0
anim = 7790
sprpriority=5

[State 7790, Trans]
type = Trans
trigger1 = 1
trans = addalpha
alpha = 256,256

[State 0, BindToRoot]
type = BindToRoot
triggerall = root,anim = 790
trigger1 = 1
time = 1
pos = 0,-45

[State 0, BindToRoot]
type = BindToRoot
triggerall = root,anim = 791
trigger1 = 1
time = 1
pos = 7,-85

[State 7790, scale]
type = angledraw
trigger1 = 1
scale = .75-(time*.025),.75-(time*.025)

[State 7790, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 7790, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = S4000,10
volume = 256
channel = -1
freqmul = 1

[State 7790, bgpalfx]
type=bgpalfx
trigger1=time <=28
time=1
mul = 20,175,175
sinadd=255,128,128,140

[State 7790, assert]
type=assertspecial
trigger1=1
flag=noshadow

[State 7790, Explod(P1)]
type = Explod
trigger1 = Time = 16
anim = 7791
id = 7791
pos = 0,0
postype = P1
sprpriority = 5
supermove = 1
bindtime = -1
removetime = 15
ownpal = 1
persistent = 0
;pausemovetime = 999999
Supermovetime = 999999

[State 7790, 16]
type = ModifyExplod
trigger1 = 1
Id = 7791
scale = 0+((time-15)*.06),0+((time-15)*.06)
trans = addalpha
alpha = 256-((time-15)*20),256

[State 7790, FX]
type = Explod
trigger1 = !time
anim = 7792
ID = 7792
sprpriority = 4
postype = p1
removetime = 15
supermovetime = -1

[State 7790, Scale]
type=ModifyExplod
trigger1 = numexplod(7792)
ID = 7792
scale = 2-(.133*time),2-(.133*time)

[State 7790, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 30

[State 7790, ChangeState]
type = DestroySelf
trigger1 = Time >= 30

;-------------------------------------------------------------------
; Pow Hitspark Effect 1
[Statedef 7800]
type = A
movetype= I
physics = N
anim = 7315
velset = 0,0
ctrl = 0
sprpriority = 5

[State 7800, 1]
type = PalFX
trigger1 = time = 0
time = 1
add = 0,0,0

[State 7800,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 7800, 1]
type = Trans
trigger1 = 1
trans = add

[State 7800, Burst]
type = VarSet
trigger1 = Time = 0
fvar(1) = .175

[State 7800, Burst]
type = VarAdd
trigger1 = fvar(1) > 0
fvar(1) = .15

[State 7800, scale]
type = AngleDraw
trigger1 = 1
scale = fvar(1),fvar(1)

[State 7800, 1]
type = PalFX
trigger1 = time = 5
time = 1
add = -50,-50,-50

[State 7800, 1]
type = PalFX
trigger1 = time = 6
time = 1
add = -120,-120,-120

[State 7800, 1]
type = PalFX
trigger1 = time = 7
time = 1
add = -190,-190,-190

[State 7800, ChangeState]
type = DestroySelf
trigger1 = Time > 7

;-------------------------------------------------------------------
; Pow Hitspark Effect 2
[Statedef 7805]
type = A
movetype= I
physics = N
anim = 7320
velset = 0,0
ctrl = 0
sprpriority = 5

[State 7800, 1]
type = PalFX
trigger1 = time = 0
time = 1
add = 0,0,0

[State 7800,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 7800, 1]
type = Trans
trigger1 = 1
trans = add

[State 7800, Burst]
type = VarSet
trigger1 = Time = 0
fvar(1) = .075

[State 7800, Burst]
type = VarAdd
trigger1 = fvar(1) > 0
fvar(1) = .08

[State 7800, scale]
type = AngleDraw
trigger1 = 1
scale = fvar(1),fvar(1)

[State 7800, 1]
type = PalFX
trigger1 = time = 5
time = 1
add = -50,-50,-50

[State 7800, 1]
type = PalFX
trigger1 = time = 6
time = 1
add = -120,-120,-120

[State 7800, 1]
type = PalFX
trigger1 = time = 7
time = 1
add = -190,-190,-190

[State 7800, ChangeState]
type = DestroySelf
trigger1 = Time > 7

;-------------------------------------------------------------------
; Tanden Renki Time Bar
[Statedef 8100]
physics = N
velset = 0,0
anim = 9999

[State 8405, Turn]
type = turn
trigger1 = facing = -1

[State 8405, back]
type = explod
triggerall = root,stateno != [3400,3499]
trigger1 = !numexplod(8101)
anim = 8101
ID = 8101
postype = p1
bindtime = -1
removetime = -1
scale = .5,.5
pausemovetime = -1
supermovetime = -1
ontop = 1

[State 8495, front]
type = explod
triggerall = root,stateno != [3400,3499]
trigger1 = !numexplod(8102)
anim = 8102
ID = 8102
postype = p1
bindtime = -1
removetime = -1
scale = .5,.5
pausemovetime = -1
supermovetime = -1
ontop = 1

[State 8405, frame]
type = explod
triggerall = root,stateno != [3400,3499]
trigger1 = !numexplod(8100)
anim = 8100
ID = 8100
postype = p1
bindtime = -1
removetime = -1
scale = .5,.5
pausemovetime = -1
supermovetime = -1
ontop = 1

[State 8405, Scale]
type = modifyexplod
triggerall = root,var(48) = 1
trigger1 = numexplod(8102)
ID = 8102
scale = (root,var(8))/846.0,.5

[State 8405, Scale]
type = modifyexplod
triggerall = root,var(48) = 2
trigger1 = numexplod(8102)
ID = 8102
scale = (root,var(8))/1106.0,.5

[State 8405, Scale]
type = modifyexplod
triggerall = root,var(48) = 3
trigger1 = numexplod(8102)
ID = 8102
scale = (root,var(8))/1406.0,.5

[State 8405, Bind]
type = bindtoroot
triggerall = root,stateno != [3400,3499]
trigger1 = 1
pos = 0*(root,facing),-9
time = -1

[State 8405, Safety]
type = removeexplod
trigger1 = (root,var(8)<=0)

[State 8405, End]
type = destroyself
trigger1 = (root,var(46)<=0)
persistent = 1			 
ignorehitpause = 1

;-------------------------------------------------------------------
; Recover FX
[StateDef 8200]
type = A
velSet = 0,0
anim = 8200
sprPriority = 5

[State 8200, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8200, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.25 + (0.017 * Time), 0.25 + (0.017 * Time)

[State 8200, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = ceil(256 - 17.1 * Time), 256

[State 8200, End]
type = DestroySelf
trigger1 = Time >= 15

;ZERO COUNTER FX>=
[StateDef 8350]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 8350, bgPalFX]
type = bgPalFX
trigger1 = 1
time = 1
color = 16 * Time
mul = 16 * Time, 16 * Time, 16 * Time

[State 8350, Circle Explod]
type = Explod
trigger1 = !Time
anim = 8350
ID = 1
sprPriority = 3
posType = P1
removeTime = 16
superMoveTime = -1
ownPal = 1

[State 8350, Scale]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = (0.0625 * Time), (0.0625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8350, Lightning Explod]
type = Explod
trigger1 = !Time
anim = 8351
ID = 2
sprPriority = -2
posType = P1
pos = 0, -ceil(pos y)
superMoveTime = -1
ownPal = 1

[State 8350, End]
type = DestroySelf
trigger1 = Time >= 16

;-------------------------------------------------------------------
; Level 1 Super Effect
[Statedef 8500]
type=A
velset=0,0
anim=7800
sprpriority=5

[State 8500, Assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 8500, BG PalFX]
type=bgpalfx
trigger1= time<39
time=1
color=0
mul=0,0,256

[State 8500, Rotate]
type=angleset
trigger1= !time
value=6*(random%60)
[State 8500, Rotate]
type=angleadd
trigger1= 1
value=-6

[State 8500, Scale]
type=angledraw
trigger1= time<16
scale= (.03125*time), (.03125*time)
[State 8500, Scale]
type=angledraw
trigger1= time>=16
scale= .5, .5
[State 8500, Trans]
type=trans
trigger1= 1
trans=addalpha
alpha=256,256

[State 8500, Lines]
type=explod
trigger1= time=0 || time=8 || time=16 || time=24
anim=7804
ID=ifelse(time=24, 4, ifelse(time=16, 3, ifelse(time=8, 2, 1)))
sprpriority=5
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
removetime=16
supermovetime=-1

[State 8500, Scale]
type=modifyexplod
trigger1= numexplod(1)
ID=1
scale= 1-(.0625*time), 1-(.0625*time)
trans= addalpha
alpha= ifelse(time<4, 64*time, 256), 256
[State 8500, Scale]
type=modifyexplod
trigger1= numexplod(2)
ID=2
scale= 1-(.0625*(time-8)), 1-(.0625*(time-8))
trans= addalpha
alpha= ifelse((time-8)<4, 64*(time-8), 256), 256
[State 8500, Scale]
type=modifyexplod
trigger1= numexplod(3)
ID=3
scale= 1-(.0625*(time-16)), 1-(.0625*(time-16))
trans= addalpha
alpha= ifelse((time-16)<4, 64*(time-16), 256), 256
[State 8500, Scale]
type=modifyexplod
trigger1= numexplod(4)
ID=4
scale= 1-(.0625*(time-24)), 1-(.0625*(time-24))
trans= addalpha
alpha= ifelse((time-24)<4, 64*(time-24), 256), 256

[State 8500, Circle]
type=explod
trigger1= time=24
anim=7801
ID=10
sprpriority=5
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
removetime=32
supermovetime=-1

[State 8500, Scale]
type=modifyexplod
trigger1= numexplod(10)
ID=10
scale= 2-(.125*(time-24)), 2-(.125*(time-24))
trans= addalpha
alpha= ifelse((time-24)<4, 64*(time-24), 256), 256

[State 8500, Safety]
type=removeexplod
trigger1= time>=40
[State 8500, End]
type=destroyself
trigger1= time>=40

;-------------------------------------------------------------------
; Level 2 Super Effect
[Statedef 8510]
type=A
velset=0,0
anim=7805
sprpriority=5

[State 8510, Assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 8510, BG PalFX]
type=bgpalfx
trigger1= time<39
time=1
color=0
mul=192,0,256

[State 8510, Rotate]
type=angleset
trigger1= !time
value=6*(random%60)
[State 8510, Rotate]
type=angleadd
trigger1= 1
value=-6

[State 8510, Scale]
type=angledraw
trigger1= time<16
scale= (.03125*time), (.03125*time)
[State 8510, Scale]
type=angledraw
trigger1= time>=16
scale= .5, .5
[State 8510, Trans]
type=trans
trigger1= 1
trans=addalpha
alpha=256,256

[State 8510, Lines]
type=explod
trigger1= time=0 || time=8 || time=16 || time=24
anim=7807
ID=ifelse(time=24, 4, ifelse(time=16, 3, ifelse(time=8, 2, 1)))
sprpriority=5
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
removetime=16
supermovetime=-1

[State 8510, Scale]
type=modifyexplod
trigger1= numexplod(1)
ID=1
scale= 1-(.0625*time), 1-(.0625*time)
trans= addalpha
alpha= ifelse(time<4, 64*time, 256), 256
[State 8510, Scale]
type=modifyexplod
trigger1= numexplod(2)
ID=2
scale= 1-(.0625*(time-8)), 1-(.0625*(time-8))
trans= addalpha
alpha= ifelse((time-8)<4, 64*(time-8), 256), 256
[State 8510, Scale]
type=modifyexplod
trigger1= numexplod(3)
ID=3
scale= 1-(.0625*(time-16)), 1-(.0625*(time-16))
trans= addalpha
alpha= ifelse((time-16)<4, 64*(time-16), 256), 256
[State 8510, Scale]
type=modifyexplod
trigger1= numexplod(4)
ID=4
scale= 1-(.0625*(time-24)), 1-(.0625*(time-24))
trans= addalpha
alpha= ifelse((time-24)<4, 64*(time-24), 256), 256

[State 8510, Circle]
type=explod
trigger1= time=24
anim=7806
ID=10
sprpriority=5
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
removetime=32
supermovetime=-1

[State 8510, Scale]
type=modifyexplod
trigger1= numexplod(10)
ID=10
scale= 2-(.125*(time-24)), 2-(.125*(time-24))
trans= addalpha
alpha= ifelse((time-24)<4, 64*(time-24), 256), 256

[State 8510, Safety]
type=removeexplod
trigger1= time>=40
[State 8510, End]
type=destroyself
trigger1= time>=40

;-------------------------------------------------------------------
; Level 3 Super Effect
[Statedef 8520]
type=A
velset=0,0
anim=7810
sprpriority=5

[State 8520, Assert]
type=assertspecial
trigger1= 1
flag=noshadow
[State 8520, Assert]
type=assertspecial
trigger1= time<40
flag=noBG
flag2=noFG

[State 8520, Rotate]
type=angleset
trigger1= !time
value=6*(random%60)
[State 8520, Rotate]
type=angleadd
trigger1= 1
value=-6

[State 8520, Scale]
type=angledraw
trigger1= time<16
scale= (.03125*time), (.03125*time)
[State 8520, Scale]
type=angledraw
trigger1= time>=16
scale= .5, .5
[State 8520, Trans]
type=trans
trigger1= 1
trans=addalpha
alpha=256,256

[State 8520, Scale]
type=modifyexplod
trigger1= numexplod(20) && time<16
ID=20
postype=back
pos= 160, 120
scale= 1 - (.03125*time), 1 - (.03125*time)
trans= addalpha
alpha= (8*time), 256
[State 8520, Scale]
type=modifyexplod
trigger1= numexplod(21) && time<16
ID=21
postype=back
pos= 160, 120
scale= 2 - (.09375*time), 2 - (.09375*time)
trans= addalpha
alpha= (8*time), 256

[State 8520, Scale]
type=modifyexplod
trigger1= numexplod(20) && (time=[16,32])
ID=20
postype=back
pos= 160, 120
scale= .5, .5
trans= addalpha
alpha= 256, 256
[State 8520, Scale]
type=removeexplod
trigger1= numexplod(21) && time>=16
ID=21

[State 8520, Scale]
type=modifyexplod
trigger1= numexplod(20) && time>=32
ID=20
postype=back
pos= 160, 120
scale= .5, .5
trans= addalpha
alpha= 128 - 16*(time-32), 256

[State 8520, Lines]
type=explod
trigger1= time=0 || time=8 || time=16 || time=24
anim=7814
ID=ifelse(time=24, 4, ifelse(time=16, 3, ifelse(time=8, 2, 1)))
sprpriority=5
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
removetime=16
supermovetime=-1

[State 8520, Scale]
type=modifyexplod
trigger1= numexplod(1)
ID=1
scale= 1-(.0625*time), 1-(.0625*time)
trans= addalpha
alpha= ifelse(time<4, 64*time, 256), 256
[State 8520, Scale]
type=modifyexplod
trigger1= numexplod(2)
ID=2
scale= 1-(.0625*(time-8)), 1-(.0625*(time-8))
trans= addalpha
alpha= ifelse((time-8)<4, 64*(time-8), 256), 256
[State 8520, Scale]
type=modifyexplod
trigger1= numexplod(3)
ID=3
scale= 1-(.0625*(time-16)), 1-(.0625*(time-16))
trans= addalpha
alpha= ifelse((time-16)<4, 64*(time-16), 256), 256
[State 8520, Scale]
type=modifyexplod
trigger1= numexplod(4)
ID=4
scale= 1-(.0625*(time-24)), 1-(.0625*(time-24))
trans= addalpha
alpha= ifelse((time-24)<4, 64*(time-24), 256), 256

[State 8520, Circle]
type=explod
trigger1= time=24
anim=7811
ID=10
sprpriority=5
postype=p1
facing=ifelse(random<500,-1,1)
vfacing=ifelse(random<500,-1,1)
removetime=32
supermovetime=-1

[State 8520, Scale]
type=modifyexplod
trigger1= numexplod(10)
ID=10
scale= 2-(.125*(time-24)), 2-(.125*(time-24))
trans= addalpha
alpha= ifelse((time-24)<4, 64*(time-24), 256), 256

[State 8520, Safety]
type=removeexplod
trigger1= time>=40
[State 8520, End]
type=destroyself
trigger1= time>=40

;-------------------------------------------------------------------
; Rikujou Gekiha Ken Super Effect
[Statedef 8530]
physics = N
velset = 0,0
anim = 9999

[State 8500, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noFG

[State 8500, BG]
type = bgpalfx
trigger1 = time<=20
time = 1
add = 256-ceil(12.8*time),256-ceil(12.8*time),256-ceil(12.8*time)
mul = 256-floor(12.8*time),256-floor(12.8*time),256-floor(12.8*time)
color = 256-floor(12.8*time)

[State 8500, BG]
type = bgpalfx
trigger1 = (time=[21,54])
time = 1
mul = 0,0,0
color = 0

[State 8500, BG]
type = bgpalfx
trigger1 = time>=55
time = 1
mul = ceil(51.2*(time-55)),ceil(51.2*(time-55)),ceil(51.2*(time-55))
color = floor(51.2*(time-55))

[State 7500, Main]
type = explod
trigger1 = !time
anim = 7800
ID = 7800
sprpriority = 6
postype = p1
removetime = -1
pausemovetime = -1
supermovetime = -1

[State 7500, portrait]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8540
ID = 8540
name = "Super Charge Portrait"
postype = p1
supermovetime = 300
ownpal = 1

[State 7500, Main]
type = explod
trigger1 = !time
anim = 7800
ID = 7800
sprpriority = 6
postype = p1
removetime = -1
pausemovetime = -1
supermovetime = -1

[State 7500, spiral]
type = helper
trigger1 = !time && root,var(10)>=6
helpertype = normal
stateno = 8550
ID = 8550
name = "Super Charge Spiral"
postype = p1
size.xscale = 1
size.yscale = 1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 7500, Large Circle]
type = explod
trigger1 = !time
anim = 7801
ID = 7801
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1
removetime = 30

[State 7500, Circle]
type = explod
trigger1 = !time
anim = 7802
ID = 78021
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1

[State 7500, Circle]
type = explod
trigger1 = time=7
anim = 7802
ID = 78022
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1

[State 7500, Circle]
type = explod
trigger1 = time=14
anim = 7802
ID = 78023
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1

[State 7500, Circle]
type = explod
trigger1 = time=21
anim = 7802
ID = 78024
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1

[State 7500, Circle]
type = explod
trigger1 = time=28
anim = 7802
ID = 78025
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1

[State 7500, Absorb]
type = Explod
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24
anim = 7804
ID = ifelse(Time = 24, 78044, ifelse(Time = 16, 78043, ifelse(Time = 8, 78042, 78041)))
sprpriority = 5
postype = p1
facing = ifelse(Random<500,-1,1)
vfacing = ifelse(Random<500,-1,1)
removetime = 16
supermovetime = 99999
pausemovetime = 99999

[State 7500, Absorb]
type = ModifyExplod
trigger1 = NumExplod(78041) = 1
ID = 78041
scale = 1-(.0625*Time), 1-(.0625*Time)
trans = addalpha
alpha = ifelse(Time<4, 64*Time, 256), 256

[State 7500, Absorb]
type = ModifyExplod
trigger1 = NumExplod(78042) = 1
ID = 78042
scale = 1-(.0625*(Time-8)), 1-(.0625*(Time-8))
trans = addalpha
alpha = ifelse((Time-8)<4, 64*(Time-8), 256), 256

[State 7500, Absorb]
type = ModifyExplod
trigger1 = NumExplod(78043) = 1
ID = 78043
scale = 1-(.0625*(Time-16)), 1-(.0625*(Time-16))
trans = addalpha
alpha = ifelse((Time-16)<4, 64*(Time-16), 256), 256

[State 7500, Absorb]
type = ModifyExplod
trigger1 = NumExplod(78044) = 1
ID = 78044
scale = 1-(.0625*(Time-24)), 1-(.0625*(Time-24))
trans = addalpha
alpha = ifelse((Time-24)<4, 64*(Time-24), 256), 256

[State 7500, scale]
type=modifyexplod
trigger1 = numexplod(7800)
ID = 7800
scale = 1.5-(.0333*time),1.5-(.0333*time)

[State 7500, scale]
type = modifyexplod
trigger1 = numexplod(7801)
ID = 7801
scale = 2-(time*.066666),2-(time*.066666)
trans = addalpha
alpha = ceil(100+20.4*time),256

[State 7500, scale]
type = modifyexplod
trigger1 = numexplod(78021)
ID = 78021
scale = .25+(.0375*time),.25+(.0375*time)

[State 7500, scale]
type = modifyexplod
trigger1 = numexplod(78022)
ID = 78022
scale = .25+(.0375*(time-7)),.25+(.0375*(time-7))

[State 7500, scale]
type = modifyexplod
trigger1 = numexplod(78023)
ID = 78023
scale = .25+(.0375*(time-14)),.25+(.0375*(time-14))

[State 7500, scale]
type = modifyexplod
trigger1 = numexplod(78024)
ID = 78024
scale = .25+(.0375*(time-21)),.25+(.0375*(time-21))

[State 7500, scale]
type = modifyexplod
trigger1 = numexplod(78025)
ID = 78025
scale = .25+(.0375*(time-28)),.25+(.0375*(time-28))

[State 7500, Safety]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible

[State 7500, Safety]
type = removeexplod
trigger1 = time>=45
trigger2 = time>=53
trigger3 = time>=60

[State 7500, End]
type = destroyself
trigger1 = time>=45
trigger2 = time>=53
trigger3 = time>=60

;-------------------------------------------------------------------
; Hayate no Red Hawk Super Effect
[Statedef 8535]
physics = N
velset = 0,0
anim = 9999

[State 8500, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noFG

[State 8500, BG]
type = bgpalfx
trigger1 = time<=20
time = 1
add = 256-ceil(12.8*time),256-ceil(12.8*time),256-ceil(12.8*time)
mul = 256-floor(12.8*time),256-floor(12.8*time),256-floor(12.8*time)
color = 256-floor(12.8*time)

[State 8500, BG]
type = bgpalfx
trigger1 = (time=[21,54])
time = 1
mul = 0,0,0
color = 0

[State 8500, BG]
type = bgpalfx
trigger1 = time>=55
time = 1
mul = ceil(51.2*(time-55)),ceil(51.2*(time-55)),ceil(51.2*(time-55))
color = floor(51.2*(time-55))

[State 7500, portrait]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8545
ID = 8545
name = "Super Charge Portrait"
postype = p1
supermovetime = 300
ownpal = 1

[State 7500, spiral]
type = helper
trigger1 = !time && root,var(10)>=6
helpertype = normal
stateno = 8552
ID = 8552
name = "Super Charge Spiral"
postype = p1
size.xscale = 1
size.yscale = 1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 7500, Main]
type = explod
trigger1 = !time
anim = 7810
ID = 7810
sprpriority = 6
postype = p1
removetime = -1
pausemovetime = -1
supermovetime = -1

[State 7500, Large Circle]
type = explod
trigger1 = !time
anim = 7811
ID = 7811
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1
removetime = 30

[State 7500, Circle]
type = explod
trigger1 = !time
anim = 7812
ID = 78121
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1

[State 7500, Circle]
type = explod
trigger1 = time = 7
anim = 7812
ID = 78122
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1

[State 7500, Circle]
type = explod
trigger1 = time = 14
anim = 7812
ID = 78123
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1

[State 7500, Circle]
type = explod
trigger1 = time = 21
anim = 7812
ID = 78124
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1

[State 7500, Circle]
type = explod
trigger1 = time = 28
anim = 7812
ID = 78125
sprpriority = 5
postype = p1
pausemovetime = -1
supermovetime = -1

[State 7500, Absorb]
type = Explod
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24
anim = 7814
ID = ifelse(Time = 24, 78144, ifelse(Time = 16, 78143, ifelse(Time = 8, 78142, 78141)))
sprpriority = 5
postype = p1
facing = ifelse(Random<500,-1,1)
vfacing = ifelse(Random<500,-1,1)
removetime = 16
supermovetime = 99999
pausemovetime = 99999

[State 7500, Absorb]
type = ModifyExplod
trigger1 = NumExplod(78141) = 1
ID = 78141
scale = 1-(.0625*Time), 1-(.0625*Time)
trans = addalpha
alpha = ifelse(Time<4, 64*Time, 256), 256

[State 7500, Absorb]
type = ModifyExplod
trigger1 = NumExplod(78142) = 1
ID = 78142
scale = 1-(.0625*(Time-8)), 1-(.0625*(Time-8))
trans = addalpha
alpha = ifelse((Time-8)<4, 64*(Time-8), 256), 256

[State 7500, Absorb]
type = ModifyExplod
trigger1 = NumExplod(78143) = 1
ID = 78143
scale = 1-(.0625*(Time-16)), 1-(.0625*(Time-16))
trans = addalpha
alpha = ifelse((Time-16)<4, 64*(Time-16), 256), 256

[State 7500, Absorb]
type = ModifyExplod
trigger1 = NumExplod(78144) = 1
ID = 78144
scale = 1-(.0625*(Time-24)), 1-(.0625*(Time-24))
trans = addalpha
alpha = ifelse((Time-24)<4, 64*(Time-24), 256), 256

[State 7500, scale]
type = modifyexplod
trigger1 = numexplod(7810)
ID = 7810
scale = 1.5-(.0333*time),1.5-(.0333*time)

[State 7500, scale]
type = modifyexplod
trigger1 = numexplod(7811)
ID = 7811
scale = 2-(time*.066666),2-(time*.066666)
trans = addalpha
alpha = ceil(100+20.4*time),256

[State 7500, scale]
type = modifyexplod
trigger1 = numexplod(78121)
ID = 78121
scale = .25+(.0375*time),.25+(.0375*time)

[State 7500, scale]
type = modifyexplod
trigger1 = numexplod(78122)
ID = 78122
scale = .25+(.0375*(time-7)),.25+(.0375*(time-7))

[State 7500, scale]
type = modifyexplod
trigger1 = numexplod(78123)
ID = 78123
scale = .25+(.0375*(time-14)),.25+(.0375*(time-14))

[State 7500, scale]
type = modifyexplod
trigger1 = numexplod(78124)
ID = 78124
scale = .25+(.0375*(time-21)),.25+(.0375*(time-21))

[State 7500, scale]
type = modifyexplod
trigger1 = numexplod(78125)
ID = 78125
scale = .25+(.0375*(time-28)),.25+(.0375*(time-28))

[State 7500, Safety]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible

[State 7500, Safety]
type = removeexplod
trigger1 = time>=45
trigger2 = time>=53
trigger3 = time>=60

[State 7500, End]
type = destroyself
trigger1 = time>=45
trigger2 = time>=53
trigger3 = time>=60

;-------------------------------------------------------------------
; Blue Hyper Portrait
[Statedef 8540]
physics = N
anim = 9999

[State 7510, assert]
type = assertspecial
trigger1 = 1
flag = invisible
ignorehitpause = 1

[State 7510, portrait]
type = explod
triggerall = root,facing = 1
trigger1 = !time
anim = 7900
ID = 7900
postype = back
pos = 160,130
under = 1
facing = 1
bindtime = -1
removetime = 60
pausemovetime = 300
supermovetime = 300

[State 7510, portrait]
type = explod
triggerall = root,facing = -1
trigger1 = !time
anim = 7900
ID = 7900
postype = back
pos = 160,130
under = 1
facing = -1
bindtime = -1
removetime = 60
pausemovetime = 300
supermovetime = 300

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = roundstate = 3
id = 7900
ignorehitpause = 1
persistent = 1

[State 7510, shrink]
type = modifyexplod
trigger1 = time <45
ID = 7900
scale = .35,.35

[State 7510, shrink]
type = modifyexplod
trigger1 = time>=45
ID = 7900
scale = .5225+(.13*(time-45)),.5225+(.13*(time-45))

[State 7510, fade]
type = palfx
trigger1 = time=45
time = 15
sinadd = -255,-255,-255,60

[State 7510, safety]
type = removeexplod
trigger1 = time >=61

[State 7510, end]
type = destroyself
trigger1 = time >=61

;-------------------------------------------------------------------
; Red Hyper Portrait
[Statedef 8545]
physics = N
anim = 9999

[State 7510, assert]
type = assertspecial
trigger1 = 1
flag = invisible
ignorehitpause = 1

[State 7510, portrait]
type = explod
triggerall = root,facing = 1
trigger1 = !time
anim = 7901
ID = 7901
postype = back
pos = 150,150
under = 1
facing = 1
bindtime = -1
removetime = 60
pausemovetime = 300
supermovetime = 300
ignorehitpause = 1

[State 7510, portrait]
type = explod
triggerall = root,facing = -1
trigger1 = !time
anim = 7901
ID = 7901
postype = back
pos = 150,150
under = 1
facing = -1
bindtime = -1
removetime = 60
pausemovetime = 300
supermovetime = 300
ignorehitpause = 1

[State 7510, shrink]
type = modifyexplod
trigger1 = time <45
ID = 7901
scale = .43,.43

[State 7510, shrink]
type = modifyexplod
trigger1 = time>=45
ID = 7901
scale = .5225+(.13*(time-45)),.5225+(.13*(time-45))

[State 7510, fade]
type = palfx
trigger1 = time=45
time = 15
sinadd = -255,-255,-255,60

[State 7510, safety]
type = removeexplod
trigger1 = time >=61

[State 7510, end]
type = destroyself
trigger1 = time >=61

;-------------------------------------------------------------------
; Blue Spiral
[Statedef 8550]
physics = N
anim = 7803
sprpriority = 5

[State 7509, assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 7509, Spin]
type = angleset
trigger1 = 1
value = -6*(random%60)

[State 7509, Spin]
type = angleadd
trigger1 = 1
value = -6

[State 7509, Angle]
type = angledraw
trigger1 = root,var(10) = 6
scale = 1-(time/35.0),1-(time/35.0)

[State 7509, Trans]
type = trans
trigger1 = root,var(10) = 6
trans = addalpha
alpha = floor(4.83*time),256

[State 7509, Angle]
type = angledraw
trigger1 = root,var(10) = 7
scale = 1-(time/42.0),1-(time/42.0)

[State 7509, Trans]
type = trans
trigger1 = root,var(10) = 7
trans = addalpha
alpha = floor(4.267*time),256

[State 7509, end]
type = destroyself
trigger1 = root,var(10) = 6 && time >=35
trigger2 = time>= 42

;-------------------------------------------------------------------
; Green Spiral
[Statedef 8551]
physics = N
anim = 7808
sprpriority = 5

[State 7509, assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 7509, Spin]
type = angleset
trigger1 = 1
value = -6*(random%60)

[State 7509, Spin]
type = angleadd
trigger1 = 1
value = -6

[State 7509, Angle]
type = angledraw
trigger1 = root,var(10) = 6
scale = 1-(time/35.0),1-(time/35.0)

[State 7509, Trans]
type = trans
trigger1 = root,var(10) = 6
trans = addalpha
alpha = floor(4.83*time),256

[State 7509, Angle]
type = angledraw
trigger1 = root,var(10) = 7
scale = 1-(time/42.0),1-(time/42.0)

[State 7509, Trans]
type = trans
trigger1 = root,var(10) = 7
trans = addalpha
alpha = floor(4.267*time),256

[State 7509, end]
type = destroyself
trigger1 = root,var(10) = 6 && time >=35
trigger2 = time>= 42

;-------------------------------------------------------------------
; Red Spiral
[Statedef 8552]
physics = N
anim = 7813
sprpriority = 5

[State 7509, assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 7509, Spin]
type = angleset
trigger1 = 1
value = -6*(random%60)

[State 7509, Spin]
type = angleadd
trigger1 = 1
value = -6

[State 7509, Angle]
type = angledraw
trigger1 = root,var(10) = 6
scale = 1-(time/35.0),1-(time/35.0)

[State 7509, Trans]
type = trans
trigger1 = root,var(10) = 6
trans = addalpha
alpha = floor(4.83*time),256

[State 7509, Angle]
type = angledraw
trigger1 = root,var(10) = 7
scale = 1-(time/42.0),1-(time/42.0)

[State 7509, Trans]
type = trans
trigger1 = root,var(10) = 7
trans = addalpha
alpha = floor(4.267*time),256

[State 7509, end]
type = destroyself
trigger1 = root,var(10) = 6 && time >=35
trigger2 = time>= 42

;-------------------------------------------------------------------
; Power Charge FX
[Statedef 8780]
type = A
movetype = I
physics = N
ctrl = 0
anim = 8780
velset = 0,0
sprpriority = 5

[State 4110, BindToParent]
type = BindToParent
trigger1 = 1
pos = -3,2

[State -2,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State -2, 1]
type = Trans
trigger1 = 1
trans = add

[State 3001, Super]
type = Helper
trigger1 = !NumHelper(8781)
id = 8781
name = "pso"
pos = 0,0
postype = P1
stateno = 8781
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
persistent = 1

[State 900, particulas]
type = Explod
trigger1 = !(time%4)
anim = 8783
pos = 0,-5
random = 80,10
sprpriority = 5
ownpal = 1
vel = ceil(1-random/500),-ceil(2+random/333)
accel = 0,.15
facing = -1+(random<500)*2
scale = .5,.5

[State 900, particulas]
type = Explod
trigger1 = !(time%4)
anim = 8783
pos = 0,-65
random = 50,80
sprpriority = -5
ownpal = 1
vel = 0, -1.2
scale = .5,.5

[State 820, Voice]
type = Playsnd
trigger1 = Time = 0
value = 10,3
channel = 15

[State -2, scale]
type = AngleDraw
trigger1 = root,power<3000
scale= .5, .3 + .3*(root,power/3000.0)

[State -2, scale]
type = AngleDraw
trigger1 = root,power>=3000
scale= .5, .5

[State 0, EnvShake]
type = EnvShake
trigger1 = power < 1000
trigger1 = (gametime%4) =1
time = 3
ampl = -2

[State 0, EnvShake]
type = EnvShake
trigger1 = power = [1001,2000]
trigger1 = (gametime%4) =1
time = 3
ampl = -3

[State 0, EnvShake]
type = EnvShake
trigger1 = power > 2000
trigger1 = (gametime%4) =1
time = 3
ampl = -4

[State 820, Voice]
type = Stopsnd
trigger1 = Root,StateNo != 780
channel = 15

[State 4110, RemoveExplod]
type = RemoveExplod
trigger1 = Root,StateNo != 780

[State 4110, DestroySelf]
type = destroyself
trigger1 = Root,StateNo != 780
trigger1 = root,movetype = h

[State 4110, DestroySelf]
type = changestate
trigger1 = Root,anim = 781
value = 8782

;-------------------------------------------------------------------
; Power Charge FX 2
[Statedef 8781]
type = A
movetype = I
physics = N
ctrl = 0
anim = 8781
velset = 0,0
sprpriority = -1

[State 4110, BindToParent]
type = BindToroot
trigger1 = 1
pos = -3,2

[State -2,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State -2, 1]
type = Trans
trigger1 = 1
trans = add

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .45,.4;.1+(time*.022),.07+(time*.02);0+(time*.04),.0+(time*.008)

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = Root,StateNo != 780
;trigger2 = time >=11

;-------------------------------------------------------------------
; Power Charge Fade
[Statedef 8782]
type = A
movetype = I
physics = N
ctrl = 0
anim = 8782
velset = 0,0
sprpriority = 2

[State 0, Explod]
type = Explod
trigger1 = time = 0
anim = 8784
ID = 8784
pos = 0,-5
postype = p1
bindtime = 1
removetime = -2
scale = .4,.4
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1
removeongethit = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = s10,4
volume = 50
channel = 15

[State -2,AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State -2, 1]
type = Trans
trigger1 = 1
trans = add

[State -2, scale]
type = AngleDraw
trigger1 = 1
scale= .5-(time*.1), (.3 + .3*(root,power/3000.0))+(time*.065)

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = time >5

;----------------------------------------------------------------------------
; Super KO
[Statedef 9000]
type=A
velset=0,0
anim=9999

[State 8600, Sound]
type=playsnd
trigger1= !time
value=0,8600
channel=0

[State 8600, BG PalFX]
type=bgpalfx
trigger1= time<16
time=1
mul= 0, 0, 0
[State 8600, BG PalFX]
type=bgpalfx
trigger1= time=[16,24)
time=1
mul= 32*(time-16), 32*(time-16), 32*(time-16)

[State 8600, Move Name]
type=varset
trigger1= !time && root,var(40)=790
var(0)=1
[State 8600, Seichuzen Godanzuki]
type=varset
trigger1= !time && (root,var(40)=[3000,3099])
var(0)=2
[State 8600, Abare Tosanami]
type=varset
trigger1= !time && (root,var(40)=[3100,3199])
var(0)=3
[State 8600, Tanden Renki]
type=varset
trigger1= !time && (root,var(8)) 
var(0)=4
[State 8600, Rikujou Gekiha Ken]
type=varset
trigger1= !time && (root,var(40)=[3300,3399])
var(0)=5
[State 8600, Hayate no Red Hawk]
type=varset
trigger1= !time && (root,var(40)=[3400,3499])
var(0)=6

[State 8600, MvC]
type=explod
trigger1= !time
anim=8600
ID=8600
ontop=1
postype=left
pos=160,120
scale=.5,.5
bindtime=-1
removetime=32
pausemovetime=-1
supermovetime=-1

[State 8600, Fade]
type=modifyexplod
trigger1= numexplod(8600)
ID=8600
trans= addalpha
alpha= ifelse(time<16, 256, 256-32*(time-16)), 256

[State 8600, Text]
type=explod
trigger1= !time && var(0)
anim=8610+var(0)
ID=10
ontop=1
postype=left
pos=160,120
scale=.5,.5
bindtime=-1
removetime=32
pausemovetime=-1
supermovetime=-1
[State 8600, Text]
type=explod
trigger1= !time && var(0)
anim=8610+var(0)
ID=11
ontop=1
postype=left
pos=160,120
scale=.5,.5
bindtime=-1
removetime=8
pausemovetime=-1
supermovetime=-1

[State 8600, Fade]
type=modifyexplod
trigger1= numexplod(10)
ID=10
trans=addalpha
alpha= ifelse(time<16, 256, 256-32*(time-16)), ifelse(time<16, 0, 32*(time-16))
[State 8600, Fade]
type=modifyexplod
trigger1= numexplod(11)
ID=11
scale= .5 + (.0625*time), .5 + (.0625*time)
trans=addalpha
alpha= 256 - (32*time), 32*time

[State 8600, Circle]
type=explod
trigger1= !time
anim=8601
ID=8601
under=1
postype=left
pos=160,120
bindtime=-1
removetime=16
pausemovetime=-1
supermovetime=-1

[State 8600, Fade]
type=modifyexplod
trigger1= numexplod(8601)
ID=8601
scale= (.25*time), (.25*time)
trans= addalpha
alpha= 256 - (16*time), 256

[State 8600, Assert]
type=assertspecial
trigger1= time<16
flag=noFG


[State 8600, End]
type=removeexplod
trigger1= time>=24
trigger2= roundstate<3
[State 8600, End]
type=destroyself
trigger1= roundstate<3

;----------------------------------------------------------------------------
; Blank State
[Statedef 9999]
type = S
movetype = I
physics = N

[State 0, DestroySelf]
type = DestroySelf
trigger1 = !time
