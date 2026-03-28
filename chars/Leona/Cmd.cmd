;==============================================================================================
;=======================================<COMMAND FILE>=========================================
;==============================================================================================

;====================<BUTTON REMAPPING>====================

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;====================<DEFAULT VALUES>====================

[Defaults]
command.time = 15
command.buffer.time = 1

;====================<SINGLE BUTTON>====================

[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

;==================<HOLD DIRECTION>==================

[Command]
name = "holdfwd"
command=/$F
time=1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time=1

[Command]
name = "holddown"
command = /$D
time = 1

;====================<HOLD BUTTON>====================

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holdstart"
command = /s
time = 1

;====================<DIRECTION>====================

[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

;====================<RELEASE DIR>====================

[Command]
name = "rlsfwd"
command = ~$F
time = 1

[Command]
name = "rlsback"
command = ~$B
time = 1

[Command]
name = "rlsup"
command = ~$U
time = 1

[Command]
name = "rlsdown"
command = ~$D
time = 1

;====================<RELEASE BUTTON>====================

[Command]
name = "rlsx"
command = ~x
time = 1

[Command]
name = "rlsy"
command = ~y
time = 1

[Command]
name = "rlsz"
command = ~z
time = 1

[Command]
name = "rlsa"
command = ~a
time = 1

[Command]
name = "rlsb"
command = ~b
time = 1

[Command]
name = "rlsc"
command = ~c
time = 1

;====================<SUPER MOTIONS>===================
;----------------
;----------------LVL 3 Super
[Command]
name = "VSlasher Revision"
command = ~D,DB,B,D,DB,B,a+b
time = 30

[Command]
name = "VSlasher Revision"
command = ~D,DB,B,D,DB,B,b+c
time = 30

[Command]
name = "VSlasher Revision"
command = ~D,DB,B,D,DB,B,a+c
time = 30
;----------------MAX Supers
[Command]
name = "MaxVSlasher"
command = ~D,F,D,B,x+y
time = 30

[Command]
name = "MaxVSlasher"
command = ~D,F,D,B,y+z
time = 30

[Command]
name = "MaxVSlasher"
command = ~D,F,D,B,x+z
time = 30

[Command]
name = "MaxRebelSpark"
command = ~D,DB,B,D,DF,F,a+b
time = 30

[Command]
name = "MaxRebelSpark"
command = ~D,DB,B,D,DF,F,b+c
time = 30

[Command]
name = "MaxRebelSpark"
command = ~D,DB,B,D,DF,F,a+c
time = 30

[Command]
name = "MaxGravityStorm"
command = ~D,DF,F,D,DF,F,x+y
time = 30

[Command]
name = "MaxGravityStorm"
command = ~D,DF,F,D,DF,F,y+z
time = 30

[Command]
name = "MaxGravityStorm"
command = ~D,DF,F,D,DF,F,x+z
time = 30

[Command]
name = "RiderBurst"
command = ~D,DF,F,D,DF,F,a+b
time = 30

[Command]
name = "RiderBurst"
command = ~D,DF,F,D,DF,F,b+c
time = 30

[Command]
name = "RiderBurst"
command = ~D,DF,F,D,DF,F,a+c
time = 30

;----------------Supers
[Command]
name = "VSlasher"
command = ~D,F,D,B,x
time = 30

[Command]
name = "VSlasher"
command = ~D,F,D,B,y
time = 30

[Command]
name = "VSlasher"
command = ~D,F,D,B,z
time = 30

[Command]
name = "RebelSpark"
command = ~D,DB,B,D,DF,F,a
time = 30

[Command]
name = "RebelSpark"
command = ~D,DB,B,D,DF,F,b
time = 30

[Command]
name = "RebelSpark"
command = ~D,DB,B,D,DF,F,c
time = 30

[Command]
name = "GravityStorm"
command = ~D,DF,F,D,DF,F,x
time = 30

[Command]
name = "GravityStorm"
command = ~D,DF,F,D,DF,F,y
time = 30

[Command]
name = "GravityStorm"
command = ~D,DF,F,D,DF,F,z
time = 30

;----------------EX Specials
[Command]
name = "MoonSlasherEX"
command = ~$D, $U, x+y
time = 15

[Command]
name = "MoonSlasherEX"
command = ~$D, $U, y+z
time = 15

[Command]
name = "MoonSlasherEX"
command = ~$D, $U, x+z
time = 15

[Command]
name = "BalticLauncherEX"
command = ~30$B, F, x+y
time = 30

[Command]
name = "BalticLauncherEX"
command = ~30$B, F, y+z
time = 30

[Command]
name = "BalticLauncherEX"
command = ~30$B, F, x+z
time = 30

[Command]
name = "GrandSaberEX"
command = ~30$B, F, a+b
time = 30

[Command]
name = "GrandSaberEX"
command = ~30$B, F, b+c
time = 30

[Command]
name = "GrandSaberEX"
command = ~30$B, F, a+c
time = 30

[Command]
name = "ISlasherEX"
command = ~D, DB, B, x+y
time = 15

[Command]
name = "ISlasherEX"
command = ~D, DB, B, y+z
time = 15

[Command]
name = "ISlasherEX"
command = ~D, DB, B, x+z
time = 15

[Command]
name = "XCaliburEX"
command = ~D, DB, B, x+y
time = 15

[Command]
name = "XCaliburEX"
command = ~D, DB, B, y+z
time = 15

[Command]
name = "XCaliburEX"
command = ~D, DB, B, x+z
time = 15

[Command]
name = "HeartAttack"
command = ~D, DB, B, a+b
time = 15

[Command]
name = "HeartAttack"
command = ~D, DB, B, b+c
time = 15

[Command]
name = "HeartAttack"
command = ~D, DB, B, a+c
time = 15

;====================<SPECIAL MOTIONS>====================
[Command]
name = "MoonSlasherx"
command = ~$D, $U, x
time = 15

[Command]
name = "MoonSlashery"
command = ~$D, $U, y
time = 15

[Command]
name = "MoonSlasherz"
command = ~$D, $U, z
time = 15

[Command]
name = "BalticLauncherx"
command = ~30$B, F, x
time = 30

[Command]
name = "BalticLaunchery"
command = ~30$B, F, y
time = 30

[Command]
name = "BalticLauncherz"
command = ~30$B, F, z
time = 30

[Command]
name = "GrandSabera"
command = ~30$B, F, a
time = 30

[Command]
name = "GrandSaberb"
command = ~30$B, F, b
time = 30

[Command]
name = "GrandSaberc"
command = ~30$B, F, c
time = 30

[Command]
name = "XCaliburx"
command = ~D, DB, B, x
time = 15

[Command]
name = "XCalibury"
command = ~D, DB, B, y
time = 15

[Command]
name = "XCaliburz"
command = ~D, DB, B, z
time = 15

[Command]
name = "EarringBomba"
command = ~D, DB, B, a
time = 15

[Command]
name = "EarringBombb"
command = ~D, DB, B, b
time = 15

[Command]
name = "EarringBombc"
command = ~D, DB, B, c
time = 15

[Command]
name = "ISlasherx"
command = ~D, DB, B, x
time = 15

[Command]
name = "ISlashery"
command = ~D, DB, B, y
time = 15

[Command]
name = "ISlasherz"
command = ~D, DB, B, z
time = 15
;----------------

[Command]
name = "412p"
command = ~B, DB, D, x
time = 16

[Command]
name = "412p"
command = ~B, DB, D, y
time = 16

[Command]
name = "412p"
command = ~B, DB, D, z
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~x
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~y
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~z
time = 16

[Command]
name = "412k"
command = ~B, DB, D, a
time = 16

[Command]
name = "412k"
command = ~B, DB, D, b
time = 16

[Command]
name=  "412k"
command = ~B, DB, D, c
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~a
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~b
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~c
time = 16

;====================<OTHER>====================

[Command]
name = "highjump"
command = $D, $U
time = 15

;====================<DOUBLE TAP>====================

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;====================<2/3 BUTTON COMBINATION>====================

[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = a+x
time = 1

[Command]
name = "pp"
command = x+y
time = 1

[Command]
name = "pp"
command = x+z
time = 1

[Command]
name = "pp"
command = y+z
time = 1

[Command]
name = "kk"
command = a+b
time = 1

[Command]
name = "kk"
command = a+c
time = 1

[Command]
name = "kk"
command = b+c
time = 1

[Command]
name = "a+x"
command = a+x
time=1

[Command]
name = "b+y"
command = b+y
time = 1

[Command]
name = "c+z"
command = c+z
time = 1

;==============================================================================================
;========================================<-1 STATES>===========================================
;==============================================================================================
[StateDef -1]

[State -1, Tick Fix]
type = CtrlSet
triggerAll = !ctrl
trigger1 = (StateNo = 52 || StateNo = 101 || StateNo = 5120) && !AnimTime
trigger2 = (StateNo = [200,499]) && !AnimTime && Anim != 251 
trigger3 = ((StateNo = [760,762]) || (StateNo = [700,715]) || (StateNo = [900,905])) && !AnimTime
trigger4 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
value = 1

[State -1, CtrlSet For Helpers]
type = CtrlSet
trigger1 = IsHelper
value = 0

[State -1, Hit Count For Helpers]
type = ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime
trigger1 = !(HitDefAttr = SCA, AT)
var(13) = 1

[State -1, Juggle Count For Helpers]
type = ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State -1, Roll Forward]
type = ChangeState
value = 710
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdfwd"
trigger2 = var(20) && var(4)

[State -1, Roll Backward]
type = ChangeState
value = 715
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdback"

[State -1, Dodge]
type = ChangeState
value = 700
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))

;---------------------------------------------------------------------------
[State -1, V-Slasher Revision L.D.M. (Ground)]
type = ChangeState
value = 3040
triggerall = ifelse(var(53) <= 0, power >= 3000, power >= 1000)
triggerall = statetype != A
triggerall = ctrl ||((stateno=[200,440])&&MoveContact)||(stateno=[100,101])||stateno=40||stateno = 52 && Anim = 47
trigger1 = command = "VSlasher Revision"
trigger1 = AILevel = 0
trigger2 = AILevel!=0&&RoundState=2
trigger2 = (random<375*(AILevel**2/128.0))
trigger2 = abs(P2Bodydist X)=[0,130]
trigger2 = abs(P2Bodydist Y)<=35
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,MoveType!=A
trigger3 = AILevel!=0&&RoundState=2
trigger3 = (random<395*(AILevel**2/38.0))
trigger3 = abs(P2Bodydist X)=[0,130]
trigger3 = abs(P2Bodydist Y)=[0,55]
trigger3 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger3 = EnemyNear,MoveType!=A
trigger3 = EnemyNear,HitFall=1
;---------------------------------------------------------------------------
[State -1, V-Slasher Revision L.D.M. (Air)]
type = ChangeState
value = 3045
triggerall = ifelse(var(53) <= 0, power >= 3000, power >= 1000)
triggerall = statetype = A
triggerall = ctrl||((stateno=251)&&MoveContact)||((stateno=[600,650])&&MoveContact)
triggerall = Pos Y <=-30
trigger1 = command = "VSlasher Revision"
trigger1 = AILevel = 0
trigger2 = AILevel!=0&&RoundState=2
trigger2 = (random<375*(AILevel**2/72.0))
trigger2 = P2BodyDist X=[0,60]
trigger2 = abs(P2Bodydist Y)=[0,55]
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,MoveType!=A
trigger3 = AILevel!=0&&RoundState=2
trigger3 = (random<395*(AILevel**2/28.0))
trigger3 = P2BodyDist X=[0,60]
trigger3 = abs(P2Bodydist Y)=[0,55]
trigger3 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger3 = EnemyNear,MoveType!=A
trigger3 = EnemyNear,HitFall=1

;===========================================================================
; Lv. 2 V-Slasher
[State -1, Max V-Slasher]
type = ChangeState
value = 3005
triggerall = ifelse(var(53) <= 0, power >= 2000, power >= 1000)
triggerall = statetype = A
triggerall = ctrl||((stateno=251)&&MoveContact)||((stateno=[600,650])&&MoveContact)
trigger1 = command = "MaxVSlasher"
trigger1 = AILevel = 0
;==
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger2 = (random<300*(AILevel**2/48.0))
trigger2 = P2Bodydist X=[0,90]
trigger2 = (P2Bodydist Y>=0)
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,MoveType!=A
trigger2 = Pos Y <=-30
;==
trigger3 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger3 = (random<320*(AILevel**2/28.0))
trigger3 = P2Bodydist X=[0,90]
trigger3 = (P2Bodydist Y>=0)
trigger3 = EnemyNear,HitFall=1&&Var(15)+5<15
trigger3 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger3 = EnemyNear,MoveType!=A
trigger3 = Pos Y <=-30

;---------------------------------------------------------------------------
[State -1, Max Rebel Spark]
type = ChangeState
value = 3015
triggerall = ifelse(var(53) <= 0, power >= 2000, power >= 1000)
triggerall = statetype != A
triggerall = ctrl ||((stateno=[200,450])&&MoveContact)||(stateno=[100,101])||stateno=40||Anim = 47
trigger1 = command = "MaxRebelSpark"
trigger1 = AILevel = 0
;==
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger2 = (random<290*(AILevel**2/48.0))
trigger2 = abs(P2Bodydist X)=[0,70]
trigger2 = abs(P2Bodydist Y)=0||EnemyNear,Pos Y=0
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,MoveType!=A
;==
trigger3 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger3 = (random<310*(AILevel**2/28.0))
trigger3 = abs(P2Bodydist X)=[0,70]
trigger3 = abs(P2Bodydist Y)=0||EnemyNear,Pos Y=0
trigger3 = EnemyNear,HitFall=1&&Var(15)+5<15
trigger3 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger3 = EnemyNear,MoveType!=A

;---------------------------------------------------------------------------
[State -1, Max Gravity Storm]
type = ChangeState
value = 3025
triggerall = ifelse(var(53) <= 0, power >= 2000, power >= 1000)
triggerall = statetype != A
triggerall = ctrl ||((stateno=[200,450])&&MoveContact)||(stateno=[100,101])||stateno=40||Anim = 47
trigger1 = command = "MaxGravityStorm"
trigger1 = AILevel = 0
;==
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger2 = (random<300*(AILevel**2/48.0))
trigger2 = abs(P2Bodydist X)=[0,75]
trigger2 = abs(P2Bodydist Y)=[0,55]
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,MoveType!=A
;==
trigger3 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger3 = (random<380*(AILevel**2/28.0))
trigger3 = abs(P2Bodydist X)=[0,75]
trigger3 = abs(P2Bodydist Y)=[0,55]
trigger3 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger3 = P2StateType=A||EnemyNear,HitFall=1&&Var(15)+5<15
trigger3 = EnemyNear,MoveType!=A
trigger3 = P2StateType!=C

;===========================================================================
[State -1, Rider Burst]
type = ChangeState
value = 3030
triggerall = ifelse(var(53) <= 0, power >= 2000, power >= 1000)
triggerall = statetype != A
triggerall = ctrl ||((stateno=[200,450])&&MoveContact)||(stateno=[100,101])||stateno=40||stateno = 52 && Anim = 47
trigger1 = command = "RiderBurst"
trigger1 = AILevel = 0
trigger2 = AILevel!=0&&RoundState=2
trigger2 = (random<350*(AILevel**2/48.0))
trigger2 = abs(P2Bodydist X)<=90
trigger2 = abs(P2Bodydist Y)<=25
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,MoveType!=A
trigger3 = AILevel!=0&&RoundState=2
trigger3 = (random<370*(AILevel**2/28.0))
trigger3 = abs(P2Bodydist X)<=80
trigger3 = abs(P2Bodydist Y)<=25
trigger3 = P2StateType=S
trigger3 = EnemyNear,HitFall=1
trigger3 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger3 = EnemyNear,MoveType!=A

;---------------------------------------------------------------------------
; Lv. 1 V-Slasher
[State -1, V-Slasher]
type = ChangeState
value = 3000
triggerall = ifelse(var(53) <= 0, power >= 1000, power >= 0)
triggerall = statetype = A
triggerall = ctrl||((stateno=251)&&MoveContact)||((stateno=[600,650])&&MoveContact)
trigger1 = command = "VSlasher"
trigger1 = AILevel = 0
;==
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger2 = (random<300*(AILevel**2/48.0))
trigger2 = P2BodyDist X=[0,60]
trigger2 = (P2Bodydist Y>=0)
trigger2 = Pos Y <=-30
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,MoveType!=A
;==
trigger3 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger3 = (random<320*(AILevel**2/28.0))
trigger3 = P2BodyDist X=[0,60]
trigger3 = (P2Bodydist Y>=0)
trigger3 = EnemyNear,HitFall=1&&Var(15)+5<15
trigger3 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger3 = EnemyNear,MoveType!=A
trigger3 = Pos Y <=-30

;---------------------------------------------------------------------------
[State -1, Rebel Spark]
type = ChangeState
value = 3010
triggerall = ifelse(var(53) <= 0, power >= 1000, power >= 0)
triggerall = statetype != A
triggerall = ctrl ||((stateno=[200,450])&&MoveContact)||(stateno=[100,101])||stateno=40||Anim = 47
trigger1 = command = "RebelSpark"
trigger1 = AILevel = 0
;==
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger2 = (random<290*(AILevel**2/48.0))
trigger2 = abs(P2Bodydist X)=[0,50]
trigger2 = abs(P2Bodydist Y)=0||EnemyNear,Pos Y=0
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = P2StateType!=C
trigger2 = EnemyNear,MoveType!=A
;==
trigger3 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger3 = (random<310*(AILevel**2/28.0))
trigger3 = abs(P2Bodydist X)=[0,60]
trigger3 = abs(P2Bodydist Y)=0||EnemyNear,Pos Y=0
trigger3 = EnemyNear,HitFall=1&&Var(15)+5<15
trigger3 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger3 = EnemyNear,MoveType!=A

[State -1, Gravity Storm]
type = ChangeState
value = 3020
triggerall = ifelse(var(53) <= 0, power >= 1000, power >= 0)
triggerall = statetype != A
triggerall = ctrl ||((stateno=[200,450])&&MoveContact)||(stateno=[100,101])||stateno=40||Anim = 47
trigger1 = command = "GravityStorm"
trigger1 = AILevel = 0
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger2 = (random<300*(AILevel**2/48.0))
trigger2 = abs(P2Bodydist X)=[0,60]
trigger2 = abs(P2Bodydist Y)=[0,55]
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = P2StateType!=C
trigger2 = EnemyNear,MoveType!=A
trigger3 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger3 = (random<360*(AILevel**2/28.0))
trigger3 = abs(P2Bodydist X)=[0,50]
trigger3 = abs(P2Bodydist Y)=[0,55]
trigger3 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger3 = P2StateType=A||EnemyNear,HitFall=1&&Var(15)+5<15
trigger3 = EnemyNear,MoveType!=A
trigger3 = P2StateType!=C

;---------------------------------------------------------------------------
; EX Moon Slasher
[State -1, EX Moon Slasher]
type = ChangeState
value = 1003
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
triggerall = statetype != A
triggerall = ctrl||(stateno=[100,101])||stateno=40||Anim = 47||(stateno=40&&AILevel=0)||((stateno=[200,210])&&MoveContact)||((stateno=[230,240])&&MoveContact)||((stateno=[400,440])&&MoveContact)
trigger1 = command = "MoonSlasherEX"
trigger1 = AILevel = 0
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])&&(PrevStateNo!=[1000,1003])
trigger2 = (random<110*(AILevel**2/96.0))
trigger2 = abs(P2Bodydist X)=[0,70]
trigger2 = abs(P2Bodydist Y)<35
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,MoveType!=A
;---------------------------------------------------------------------------
; EX Baltic Launcher
[State -1, EX Baltic Launcher]
type = ChangeState
value = 1014
triggerall = NumHelper(11010)=0&&NumHelper(11011)=0&&NumHelper(11012)=0&&NumHelper(11014)=0
triggerall = statetype != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
triggerall = ctrl||(stateno=[100,101])||stateno=40||Anim = 47||((stateno=[200,210])&&MoveContact)||((stateno=[230,240])&&MoveContact)||((stateno=[400,440])&&MoveContact)
trigger1 = command = "BalticLauncherEX"
trigger1 = AILevel = 0
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger2 = (random<95*(AILevel**2/72.0))
trigger2 = (abs(P2Bodydist X)=[0,75])
trigger2 = (abs(P2Bodydist Y)=[25,75])||(abs(EnemyNear,Pos Y)=[25,75])
trigger2 = P2StateType !=C
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,MoveType!=A
trigger3 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger3 = (random<105*(AILevel**2/48.0))
trigger3 = (abs(P2Bodydist X)=[0,75])
trigger3 = (abs(P2Bodydist Y)=[25,75])||(abs(EnemyNear,Pos Y)=[25,75])
trigger3 = P2StateType = A || EnemyNear,Pos Y<0 || EnemyNear,HitFall = 1 && Var(15)+4<15
trigger3 = P2StateType !=C
trigger3 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger3 = EnemyNear,MoveType!=A
;---------------------------------------------------------------------------
; EX Grand Saber
[State -1, EX Grand Saber]
type = ChangeState
value = 1027
triggerall = statetype != A
triggerall = ctrl||(stateno=[100,101])||stateno=40||Anim = 47||((stateno=[200,210])&&MoveContact)||((stateno=[230,240])&&MoveContact)||((stateno=[400,440])&&MoveContact)
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = command = "GrandSaberEX"
trigger1 = AILevel = 0
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger2 = (random<160*(AILevel**2/96.0))
trigger2 = abs(P2Bodydist X)=[0,60]
trigger2 = abs(P2Bodydist Y)<15
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,MoveType!=A
;==
trigger3 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger3 = (random<180*(AILevel**2/72.0))
trigger3 = abs(P2Bodydist X)=[0,60]
trigger3 = abs(P2Bodydist Y)<15
trigger3 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger3 = EnemyNear,MoveType!=A
;==
trigger4 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger4 = (random<180*(AILevel**2/72.0))
trigger4 = abs(P2Bodydist X)=[0,60]
trigger4 = abs(P2Bodydist Y)=[15,35]
trigger4 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger4 = EnemyNear,HitFall=1 && Var(15)+4<15
trigger4 = EnemyNear,MoveType!=A
;==
trigger5 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger5 = (random<180*(AILevel**2/72.0))
trigger5 = abs(P2Bodydist X)=[0,60]
trigger5 = abs(P2Bodydist Y)<15
trigger5 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger5 = P2StateType = S
trigger5 = (EnemyNear,StateNo=[120,160])||(P2StateNo=[120,160])
trigger5 = EnemyNear,MoveType!=A
;---------------------------------------------------------------------------
; EX X-Calibur
[State -1, EX X-Calibur]
type = ChangeState
value = 1033
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
triggerall = statetype = A
triggerall = ctrl||(stateno=[100,101])||stateno=40||Anim = 47||((stateno=251)&&MoveContact)||((stateno=[600,650])&&MoveContact)
trigger1 = command = "XCaliburEX"
trigger1 = AILevel = 0
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger2 = (random<130*(AILevel**2/96.0))
trigger2 = abs(P2Bodydist X)=[0,60]
trigger2 = Pos Y<=-50
trigger2 = (P2Bodydist Y)>=-5
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,MoveType!=A
trigger2 = EnemyNear,MoveType!=A
trigger3 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger3 = (random<180*(AILevel**2/72.0))
trigger3 = Pos Y<=-50
trigger3 = abs(P2Bodydist X)=[0,60]
trigger3 = (P2Bodydist Y)>=-5
trigger3 = EnemyNear,HitFall
trigger3 = EnemyNear,MoveType!=A
trigger3 = EnemyNear,MoveType!=A
trigger3 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger4 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger4 = (random<180*(AILevel**2/72.0))
trigger4 = Pos Y<=-50
trigger4 = abs(P2Bodydist X)=[0,60]
trigger4 = (P2Bodydist Y)>=-5
trigger4 = stateno=251&&MoveContact||((stateno = [600,650])&&MoveContact)
trigger4 = EnemyNear,HitFall=1&&Var(15)+4<15
trigger4 = EnemyNear,MoveType!=A
trigger4 = EnemyNear,MoveType!=A
trigger4 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
;---------------------------------------------------------------------------
[State -1, EX Earring Bomb (Heart Attack)]
type = ChangeState
value = 1053
triggerall = NumHelper(11053)= 0
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
triggerall = statetype != A
triggerall = ctrl||(stateno=[100,101])||stateno=40||Anim = 47||((stateno=[200,210])&&MoveContact)||((stateno=[230,240])&&MoveContact)||((stateno=[400,440])&&MoveContact)
trigger1 = command = "HeartAttack"
trigger1 = AILevel = 0
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger2 = (random<150*(AILevel**2/84.0))
trigger2 = abs(P2Bodydist X)=[0,20]
trigger2 = P2StateType=S
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = (P2StateNo!=[120,160])||(EnemyNear,StateNo!=[120,160])
trigger2 = EnemyNear,MoveType!=A
trigger2 = EnemyNear,HitFall=0
trigger3 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger3 = (random<170*(AILevel**2/48.0))
trigger3 = abs(P2Bodydist X)=[0,30]
trigger3 = P2StateType=S
trigger3 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger3 = (P2StateNo!=[120,160])||(EnemyNear,StateNo!=[120,160])
trigger3 = ((stateno=[200,210])&&MoveContact)||((stateno=[230,240])&&MoveContact)
trigger3 = EnemyNear,MoveType!=A
trigger3 = EnemyNear,HitFall=0
;---------------------------------------------------------------------------
[State -1, Heart Attack Detonation]
type = ChangeState
value = 1054
triggerall = NumHelper(11053)= 1
triggerall = statetype != A
triggerall = ctrl||(stateno=[100,101])||stateno=40||Anim = 47||((stateno=[200,210])&&MoveContact)||((stateno=[230,240])&&MoveContact)||((stateno=[400,440])&&MoveContact)
trigger1 = command = "HeartAttack"
trigger1 = AILevel = 0
;---------------------------------------------------------------------------
; EX I-Slasher
[State -1, EX I-Slasher]
type = ChangeState
value = 1044
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
triggerall = statetype != A
triggerall = ctrl||(stateno=[100,101])||stateno=40||Anim = 47 ||((stateno=[200,210])&&MoveContact)||((stateno=[230,240])&&MoveContact)||((stateno=[400,440])&&MoveContact)
trigger1 = command = "ISlasherEX"
trigger1 = AILevel = 0
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger2 = (random<30*(AILevel**2/96.0))
trigger2 = abs(P2Bodydist X)=[100,240)
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,MoveType!=A
;---------------------------------------------------------------------------
; Weak Moon Slasher
[State -1, Weak Moon Slasher]
type = ChangeState
value = 1000
triggerall = statetype != A
triggerall = ctrl||(stateno=[100,101])||stateno=40||Anim = 47||(stateno=40&&AILevel=0)||((stateno=[200,210])&&MoveContact)||((stateno=[230,240])&&MoveContact)||((stateno=[400,440])&&MoveContact)
trigger1 = command = "MoonSlasherx"
trigger1 = AILevel = 0
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])&&(PrevStateNo!=[1000,1003])
trigger2 = (random<130*(AILevel**2/64.0))
trigger2 = abs(P2Bodydist X)=[0,45)
trigger2 = abs(P2Bodydist Y)<35
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,MoveType!=A
trigger3 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])&&(PrevStateNo!=[1000,1003])
trigger3 = (random<150*(AILevel**2/48.0))
trigger3 = abs(P2Bodydist X)=[0,45)
trigger3 = (EnemyNear,Pos Y =[0,-35])
trigger3 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger3 = EnemyNear,HitFall=1&&Var(15)+7<15
trigger3 = EnemyNear,MoveType!=A
;---------------------------------------------------------------------------
; Medium Moon Slasher
[State -1, Medium Moon Slasher]
type = ChangeState
value = 1001
triggerall = statetype != A
triggerall = ctrl||(stateno=[100,101])||stateno=40||Anim = 47||(stateno=40&&AILevel=0)||((stateno=[200,210])&&MoveContact)||((stateno=[230,240])&&MoveContact)||((stateno=[400,440])&&MoveContact)
trigger1 = command = "MoonSlashery"
trigger1 = AILevel = 0
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])&&(PrevStateNo!=[1000,1003])
trigger2 = (random<130*(AILevel**2/64.0))
trigger2 = abs(P2Bodydist X)=[0,60)
trigger2 = abs(P2Bodydist Y)<35
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,MoveType!=A
trigger3 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])&&(PrevStateNo!=[1000,1003])
trigger3 = (random<150*(AILevel**2/48.0))
trigger3 = abs(P2Bodydist X)=[0,60)
trigger3 = (EnemyNear,Pos Y =[0,-35])
trigger3 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger3 = EnemyNear,HitFall=1&&Var(15)+7<15
trigger3 = EnemyNear,MoveType!=A
;---------------------------------------------------------------------------
; Strong Moon Slasher
[State -1, Strong Moon Slasher]
type = ChangeState
value = 1002
triggerall = statetype != A
triggerall = ctrl||(stateno=[100,101])||stateno=40||Anim = 47||(stateno=40&&AILevel=0)||((stateno=[200,210])&&MoveContact)||((stateno=[230,240])&&MoveContact)||((stateno=[400,440])&&MoveContact)
trigger1 = command = "MoonSlasherz"
trigger1 = AILevel = 0
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])&&(PrevStateNo!=[1000,1003])
trigger2 = (random<130*(AILevel**2/64.0))
trigger2 = abs(P2Bodydist X)=[0,65)
trigger2 = abs(P2Bodydist Y)<35
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,MoveType!=A
trigger3 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])&&(PrevStateNo!=[1000,1003])
trigger3 = (random<150*(AILevel**2/48.0))
trigger3 = abs(P2Bodydist X)=[0,65)
trigger3 = abs(EnemyNear,Pos Y =[35,65])
trigger3 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger3 = EnemyNear,HitFall=1&&Var(15)+7<15
trigger3 = EnemyNear,MoveType!=A
;---------------------------------------------------------------------------
; Weak Baltic Launcher
[State -1, Weak Baltic Launcher]
type = ChangeState
value = 1010
triggerall = NumHelper(11010)=0&&NumHelper(11011)=0&&NumHelper(11012)=0&&NumHelper(11014)=0
triggerall = statetype != A
triggerall = ctrl||(stateno=[100,101])||stateno=40||Anim = 47||((stateno=[200,210])&&MoveContact)||((stateno=[230,240])&&MoveContact)||((stateno=[400,440])&&MoveContact)
trigger1 = command = "BalticLauncherx"
trigger1 = AILevel = 0
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger2 = (random<105*(AILevel**2/64.0))
trigger2 = (abs(P2Bodydist X)=[0,50])
trigger2 = (abs(P2Bodydist Y)=[25,75])||(abs(EnemyNear,Pos Y)=[25,75])
trigger2 = P2StateType !=C
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,HitFall=0
trigger2 = EnemyNear,MoveType!=A
trigger3 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger3 = (random<115*(AILevel**2/64.0))
trigger3 = (abs(P2Bodydist X)=[0,50])
trigger3 = (abs(P2Bodydist Y)=[0,75])
trigger3 = P2StateType = A || EnemyNear,Pos Y<0
trigger3 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger3 = EnemyNear,HitFall=0
trigger3 = EnemyNear,MoveType!=A
;---------------------------------------------------------------------------
; Medium Baltic Launcher
[State -1, Medium Baltic Launcher]
type = ChangeState
value = 1011
triggerall = NumHelper(11010)=0&&NumHelper(11011)=0&&NumHelper(11012)=0&&NumHelper(11014)=0
triggerall = statetype != A
triggerall = ctrl||(stateno=[100,101])||stateno=40||Anim = 47||((stateno=[200,210])&&MoveContact)||((stateno=[230,240])&&MoveContact)||((stateno=[400,440])&&MoveContact)
trigger1 = command = "BalticLaunchery"
trigger1 = AILevel = 0
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger2 = (random<105*(AILevel**2/64.0))
trigger2 = (abs(P2Bodydist X)=[0,50])
trigger2 = (abs(P2Bodydist Y)=[25,75])||(abs(EnemyNear,Pos Y)=[25,75])
trigger2 = P2StateType !=C
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,HitFall=0
trigger2 = EnemyNear,MoveType!=A
trigger3 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger3 = (random<115*(AILevel**2/64.0))
trigger3 = (abs(P2Bodydist X)=[0,50])
trigger3 = (abs(P2Bodydist Y)=[0,75])
trigger3 = P2StateType = A || EnemyNear,Pos Y<0
trigger3 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger3 = EnemyNear,HitFall=0
trigger3 = EnemyNear,MoveType!=A
;---------------------------------------------------------------------------
; Strong Baltic Launcher
[State -1, Strong Baltic Launcher]
type = ChangeState
value = 1012
triggerall = NumHelper(11010)=0&&NumHelper(11011)=0&&NumHelper(11012)=0&&NumHelper(11014)=0
triggerall = statetype != A
triggerall = ctrl||(stateno=[100,101])||stateno=40||Anim = 47||((stateno=[200,210])&&MoveContact)||((stateno=[230,240])&&MoveContact)||((stateno=[400,440])&&MoveContact)
trigger1 = command = "BalticLauncherz"
trigger1 = AILevel = 0
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger2 = (random<105*(AILevel**2/64.0))
trigger2 = (abs(P2Bodydist X)=[0,70])
trigger2 = (abs(P2Bodydist Y)=[0,75])
trigger2 = P2StateType !=C
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,HitFall=0
trigger2 = EnemyNear,MoveType!=A
trigger3 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger3 = (random<115*(AILevel**2/64.0))
trigger3 = (abs(P2Bodydist X)=[0,70])
trigger3 = (abs(P2Bodydist Y)=[25,75])||(abs(EnemyNear,Pos Y)=[25,75])
trigger3 = P2StateType = A || EnemyNear,Pos Y<0
trigger3 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger3 = EnemyNear,HitFall=0
trigger3 = EnemyNear,MoveType!=A
;---------------------------------------------------------------------------
; Weak Grand Saber
[State -1, Weak Grand Saber]
type = ChangeState
value = 1020
triggerall = statetype != A
triggerall = ctrl||(stateno=[100,101])||stateno=40||Anim = 47||((stateno=[200,210])&&MoveContact)||((stateno=[230,240])&&MoveContact)||((stateno=[400,440])&&MoveContact)
trigger1 = command = "GrandSabera"
trigger1 = AILevel = 0
;==
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger2 = (random<140*(AILevel**2/64.0))
trigger2 = abs(P2Bodydist X)=[0,50]
trigger2 = abs(P2Bodydist Y)<35
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,HitFall=0
trigger2 = EnemyNear,MoveType!=A
;==
trigger3 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger3 = (random<160*(AILevel**2/48.0))
trigger3 = abs(P2Bodydist X)=[0,50]
trigger3 = abs(P2Bodydist Y)<35
trigger3 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger3 = P2StateType=S
trigger3 = EnemyNear,MoveType!=A
trigger3 = EnemyNear,HitFall=0
;==
trigger4 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger4 = (random<160*(AILevel**2/48.0))
trigger4 = abs(P2Bodydist X)=[0,50]
trigger4 = abs(P2Bodydist Y)<35
trigger4 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger4 = P2StateType = S
trigger4 = (EnemyNear,StateNo=[120,160])||(P2StateNo=[120,160])
trigger4 = EnemyNear,MoveType!=A
trigger4 = EnemyNear,HitFall=0
;---------------------------------------------------------------------------
; Medium Grand Saber
[State -1, Medium Grand Saber]
type = ChangeState
value = 1023
triggerall = statetype != A
triggerall = ctrl||(stateno=[100,101])||stateno=40||Anim = 47||((stateno=[200,210])&&MoveContact)||((stateno=[230,240])&&MoveContact)||((stateno=[400,440])&&MoveContact)
trigger1 = command = "GrandSaberb"
trigger1 = AILevel = 0
;==
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger2 = (random<140*(AILevel**2/64.0))
trigger2 = abs(P2Bodydist X)=[0,50]
trigger2 = abs(P2Bodydist Y)<35
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,HitFall=0
trigger2 = EnemyNear,MoveType!=A
;==
trigger3 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger3 = (random<160*(AILevel**2/48.0))
trigger3 = abs(P2Bodydist X)=[0,50]
trigger3 = abs(P2Bodydist Y)<35
trigger3 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger3 = P2StateType=S
trigger3 = EnemyNear,MoveType!=A
trigger3 = EnemyNear,HitFall=0
;==
trigger4 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger4 = (random<160*(AILevel**2/48.0))
trigger4 = abs(P2Bodydist X)=[0,50]
trigger4 = abs(P2Bodydist Y)<35
trigger4 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger4 = P2StateType = S
trigger4 = (EnemyNear,StateNo=[120,160])||(P2StateNo=[120,160])
trigger4 = EnemyNear,MoveType!=A
;---------------------------------------------------------------------------
; Strong Grand Saber
[State -1, Strong Grand Saber]
type = ChangeState
value = 1024
triggerall = statetype != A
triggerall = ctrl||(stateno=[100,101])||stateno=40||Anim = 47||((stateno=[200,210])&&MoveContact)||((stateno=[230,240])&&MoveContact)||((stateno=[400,440])&&MoveContact)
trigger1 = command = "GrandSaberc"
trigger1 = AILevel = 0
;==
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger2 = (random<140*(AILevel**2/64.0))
trigger2 = abs(P2Bodydist X)=[0,60]
trigger2 = abs(P2Bodydist Y)<35
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,HitFall=0
trigger2 = EnemyNear,MoveType!=A
;==
trigger3 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger3 = (random<160*(AILevel**2/48.0))
trigger3 = abs(P2Bodydist X)=[0,60]
trigger3 = abs(P2Bodydist Y)<35
trigger3 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger3 = P2StateType=S
trigger3 = EnemyNear,MoveType!=A
trigger3 = EnemyNear,HitFall=0
trigger4 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
;==
trigger4 = (random<160*(AILevel**2/48.0))
trigger4 = abs(P2Bodydist X)=[0,60]
trigger4 = abs(P2Bodydist Y)<35
trigger4 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger4 = P2StateType=S
trigger4 = EnemyNear,MoveType!=A
;---------------------------------------------------------------------------
; Weak X-Calibur
[State -1, Weak X-Calibur]
type = ChangeState
value = 1030
triggerall = statetype = A
triggerall = ctrl||(stateno=[100,101])||stateno=40||Anim = 47||((stateno=251)&&MoveContact)||((stateno=[600,650])&&MoveContact)
trigger1 = command = "XCaliburx"
trigger1 = AILevel = 0
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger2 = (random<150*(AILevel**2/64.0))
trigger2 = Pos Y<=-50
trigger2 = abs(P2Bodydist X)=[0,55]
trigger2 = (P2Bodydist Y=[0,25])
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,HitFall=0
trigger2 = EnemyNear,MoveType!=A
trigger3 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger3 = stateno=251&&MoveContact
trigger3 = (random<180*(AILevel**2/48.0))
trigger3 = Pos Y<=-50
trigger3 = abs(P2Bodydist X)=[0,55]
trigger3 = (P2Bodydist Y=[0,25])
trigger3 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger3 = EnemyNear,HitFall=0
trigger3 = EnemyNear,MoveType!=A
trigger4 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger4 = ((stateno=251)&&MoveContact)||((stateno=[600,650])&&MoveContact)
trigger4 = (random<180*(AILevel**2/36.0))
trigger4 = Pos Y<=-50
trigger4 = abs(P2Bodydist X)=[0,55]
trigger4 = (P2Bodydist Y=[0,25])
trigger4 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger4 = EnemyNear,HitFall=0
trigger4 = EnemyNear,MoveType!=A
;---------------------------------------------------------------------------
; Medium X-Calibur
[State -1, Medium X-Calibur]
type = ChangeState
value = 1031
triggerall = statetype = A
triggerall = ctrl||(stateno=[100,101])||stateno=40||Anim = 47||((stateno=251)&&MoveContact)||((stateno=[600,650])&&MoveContact)
trigger1 = command = "XCalibury"
trigger1 = AILevel = 0
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger2 = (random<150*(AILevel**2/64.0))
trigger2 = Pos Y<=-50
trigger2 = abs(P2Bodydist X)=[0,55]
trigger2 = (P2Bodydist Y=[0,45])
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,HitFall=0
trigger2 = EnemyNear,MoveType!=A
trigger3 = stateno=251&&MoveContact
trigger3 = (random<180*(AILevel**2/48.0))
trigger3 = Pos Y<=-50
trigger3 = abs(P2Bodydist X)=[0,55]
trigger3 = (P2Bodydist Y=[20,55])
trigger3 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger3 = EnemyNear,HitFall=0
trigger3 = EnemyNear,MoveType!=A
trigger4 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger4 = ((stateno=251)&&MoveContact)||((stateno=[600,650])&&MoveContact)
trigger4 = (random<180*(AILevel**2/36.0))
trigger4 = Pos Y<=-50
trigger4 = abs(P2Bodydist X)=[0,55]
trigger4 = (P2Bodydist Y=[20,45])
trigger4 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger4 = EnemyNear,HitFall=0
trigger4 = EnemyNear,MoveType!=A
;---------------------------------------------------------------------------
; Strong X-Calibur
[State -1, Strong X-Calibur]
type = ChangeState
value = 1032
triggerall = statetype = A
triggerall = ctrl||(stateno=[100,101])||stateno=40||Anim = 47||((stateno=251)&&MoveContact)||((stateno=[600,650])&&MoveContact)
trigger1 = command = "XCaliburz"
trigger1 = AILevel = 0
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger2 = Pos Y<=-50
trigger2 = (random<150*(AILevel**2/64.0))
trigger2 = abs(P2Bodydist X)=[0,55]
trigger2 = (P2Bodydist Y=[25,55])
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,HitFall=0
trigger2 = EnemyNear,MoveType!=A
trigger3 = stateno=251&&MoveContact
trigger3 = (random<180*(AILevel**2/48.0))
trigger3 = Pos Y<=-50
trigger3 = abs(P2Bodydist X)=[0,55]
trigger3 = (P2Bodydist Y=[25,55])
trigger3 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger3 = EnemyNear,HitFall=0
trigger3 = EnemyNear,MoveType!=A
trigger4 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger4 = ((stateno=251)&&MoveContact)||((stateno=[600,650])&&MoveContact)
trigger4 = (random<180*(AILevel**2/36.0))
trigger4 = Pos Y<=-50
trigger4 = abs(P2Bodydist X)=[0,55]
trigger4 = (P2Bodydist Y=[25,55])
trigger4 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger4 = EnemyNear,HitFall=0
trigger4 = EnemyNear,MoveType!=A
;---------------------------------------------------------------------------
; Weak Earring Bomb
[State -1, Weak Earring Bomb]
type = ChangeState
value = 1050
triggerall = NumHelper(11050)= 0
triggerall = NumHelper(11051)= 0
triggerall = NumHelper(11052)= 0
triggerall = NumHelper(11053)= 0
triggerall = statetype != A
triggerall = ctrl||(stateno=[100,101])||stateno=40||Anim = 47||((stateno=[200,210])&&MoveContact)||((stateno=[230,240])&&MoveContact)||((stateno=[400,440])&&MoveContact)
trigger1 = command = "EarringBomba"
trigger1 = AILevel = 0
;trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
;trigger2 = (random<45*(AILevel**2/64.0))
;trigger2 = abs(P2Bodydist X)=[130,160)
;trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
;trigger2 = EnemyNear,HitFall=0
;trigger2 = P2MoveType!=A||EnemyNear,MoveType!=A
;trigger2 = EnemyNear,MoveType!=A
;---------------------------------------------------------------------------
; Medium Earring Bomb
[State -1, Medium Earring Bomb]
type = ChangeState
value = 1051
triggerall = NumHelper(11050)= 0
triggerall = NumHelper(11051)= 0
triggerall = NumHelper(11052)= 0
triggerall = NumHelper(11053)= 0
triggerall = statetype != A
triggerall = ctrl||(stateno=[100,101])||stateno=40||Anim = 47||((stateno=[200,210])&&MoveContact)||((stateno=[230,240])&&MoveContact)||((stateno=[400,440])&&MoveContact)
trigger1 = command = "EarringBombb"
trigger1 = AILevel = 0
;trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
;trigger2 = (random<45*(AILevel**2/64.0))
;trigger2 = abs(P2Bodydist X)=[160,190)
;trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
;trigger2 = EnemyNear,HitFall=0
;trigger2 = P2MoveType!=A||EnemyNear,MoveType!=A
;trigger2 = EnemyNear,MoveType!=A
;---------------------------------------------------------------------------
; Strong Earring Bomb
[State -1, Strong Earring Bomb]
type = ChangeState
value = 1052
triggerall = NumHelper(11050)= 0
triggerall = NumHelper(11051)= 0
triggerall = NumHelper(11052)= 0
triggerall = NumHelper(11053)= 0
triggerall = statetype != A
triggerall = ctrl||(stateno=[100,101])||stateno=40||Anim = 47||((stateno=[200,210])&&MoveContact)||((stateno=[230,240])&&MoveContact)||((stateno=[400,440])&&MoveContact)
trigger1 = command = "EarringBombc"
trigger1 = AILevel = 0
;trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
;trigger2 = (random<45*(AILevel**2/64.0))
;trigger2 = abs(P2Bodydist X)>=190
;trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
;trigger2 = EnemyNear,HitFall=0
;trigger2 = P2MoveType!=A||EnemyNear,MoveType!=A
;trigger2 = EnemyNear,MoveType!=A
;---------------------------------------------------------------------------
[State -1, Weak I-Slasher]
type = ChangeState
value = 1040
triggerall = statetype != A
triggerall = ctrl||(stateno=[100,101])||stateno=40||Anim = 47 ||((stateno=[200,210])&&MoveContact)||((stateno=[230,240])&&MoveContact)||((stateno=[400,440])&&MoveContact)
trigger1 = command = "ISlasherx"
trigger1 = AILevel = 0
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger2 = (random<30*(AILevel**2/72.0))
trigger2 = abs(P2Bodydist X)=[100,120)
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,HitFall=0
trigger2 = EnemyNear,MoveType!=A
;---------------------------------------------------------------------------
[State -1, Medium I-Slasher]
type = ChangeState
value = 1042
triggerall = statetype != A
triggerall = ctrl||(stateno=[100,101])||stateno=40||Anim = 47||((stateno=[200,210])&&MoveContact)||((stateno=[230,240])&&MoveContact)||((stateno=[400,440])&&MoveContact)
trigger1 = command = "ISlashery"
trigger1 = AILevel = 0
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger2 = (random<30*(AILevel**2/72.0))
trigger2 = abs(P2Bodydist X)=[120,140)
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,HitFall=0
trigger2 = EnemyNear,MoveType!=A
;---------------------------------------------------------------------------
[State -1, Strong I-Slasher]
type = ChangeState
value = 1043
triggerall = statetype != A
triggerall = ctrl||(stateno=[100,101])||stateno=40||Anim = 47||((stateno=[200,210])&&MoveContact)||((stateno=[230,240])&&MoveContact)||((stateno=[400,440])&&MoveContact)
trigger1 = command = "ISlasherz"
trigger1 = AILevel = 0
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger2 = (random<30*(AILevel**2/72.0))
trigger2 = abs(P2Bodydist X)=[140,160)
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,HitFall=0
trigger2 = EnemyNear,MoveType!=A

[State -1, Zero Counter]
type = ChangeState
value = 750
triggerAll = !AILevel
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = command = "412p" || command = "412k"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, MAX Mode]
type = ChangeState
value = 770
triggerall = !AIlevel
triggerall = command = "c+z"
triggerall = RoundState = 2 && StateType != A
triggerall = var(20) <= 0 && Power >= 1000
trigger1 = ctrl || (Stateno = [100,101])

[State -1, Power Charging]
type = ChangeState
value = 730
triggerAll = !AILevel
trigger1 = command = "holdb" && command = "holdy"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20)
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Dash Forward/Run]
type = ChangeState
value = 102
triggerAll = !AILevel
trigger1 = command = "FF"
trigger1 = roundstate = 2 && StateType = S
trigger1 = ctrl

[State -1, Dash Backward]
type = ChangeState
value = 105
triggerAll = !AILevel
trigger1 = command = "BB"
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Throw]
type=ChangeState
value =800
trigger1=(command="holdfwd"||command="holdback")&&(command="pp"||command="kk")
trigger1=!AILevel&&RoundState=2 && Statetype!=A && !var(20)
trigger1=ctrl

[State -1, Air Throw]
type = ChangeState
value = 860
triggerAll = !AILevel
trigger1 = (command = "holdfwd" || command = "holdback") && command = "kk"
trigger1 = RoundState = 2 && StateType = A
trigger1 = ctrl

[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = ctrl||stateno=40||Anim = 47||(stateno=[100,101])||(stateno=200&&Anim=200&&AnimElem=3,>=0)||(stateno=200&&Anim=201&&AnimElem=4,>=0)
trigger1 = command = "x"
trigger1 = AILevel = 0
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger2 = (random<250*(AILevel**2/12.0))
trigger2 = abs(P2Bodydist X)=[0,45]
trigger2 = abs(P2Bodydist Y)<55
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,HitFall=0
trigger2 = EnemyNear,MoveType!=A
;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = ctrl||stateno=40||Anim = 47 || ((stateno=200)&&MoveContact)||(stateno=[100,101])
trigger1 = command = "y"
trigger1 = AILevel = 0
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger2 = (random<250*(AILevel**2/12.0))
trigger2 = abs(P2Bodydist X)=[0,45]
trigger2 = abs(P2Bodydist Y)<55
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,HitFall=0
trigger2 = EnemyNear,MoveType!=A
;---------------------------------------------------------------------------
; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = ctrl||stateno=40||Anim = 47||(stateno=[100,101])||((stateno=200)&&MoveContact)
trigger1 = command = "z"
trigger1 = AILevel = 0
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger2 = (random<250*(AILevel**2/24.0))
trigger2 = abs(P2Bodydist X)=[0,45]
trigger2 = abs(P2Bodydist Y)<55
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,HitFall=0
trigger2 = EnemyNear,MoveType!=A
;---------------------------------------------------------------------------
; Strike Arch
[State -1, Strike Arch]
type = ChangeState
value = 251
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = ctrl||stateno=40||Anim = 47||(stateno=[100,101])||((stateno=[200,230])&&MoveContact&&StateNo!=220)||((stateno=240)&&MoveContact&&Anim=241)
trigger1 = IfElse((Anim!=[5,6]), command = "holdfwd", command = "holdback")
trigger1 = command = "a"
trigger1 = AILevel = 0
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger2 = (random<275*(AILevel**2/12.0))
trigger2 = abs(P2Bodydist X)=[0,35]
trigger2 = abs(P2Bodydist Y)<55
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,MoveType!=A
trigger2 = EnemyNear,HitFall=0
trigger3 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger3 = (random<300*(AILevel**2/6.0))
trigger3 = abs(P2Bodydist X)=[0,35]
trigger3 = abs(P2Bodydist Y)<55
trigger3 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger3 = P2StateType=C
trigger3 = EnemyNear,MoveType!=A
trigger3 = EnemyNear,HitFall=0
;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = ctrl||stateno=40||Anim = 47||(stateno=[100,101])
trigger1 = command = "a"
trigger1 = AILevel = 0
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger2 = (random<250*(AILevel**2/12.0))
trigger2 = abs(P2Bodydist X)=[0,45]
trigger2 = abs(P2Bodydist Y)<55
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,HitFall=0
trigger2 = EnemyNear,MoveType!=A
;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command != "holddown"
triggerall = statetype != A
triggerall = ctrl||stateno=40||Anim = 47 || ((stateno=230)&&MoveContact)||(stateno=[100,101])
trigger1 = command = "b"
trigger1 = AILevel = 0
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger2 = (random<250*(AILevel**2/12.0))
trigger2 = abs(P2Bodydist X)=[0,45]
trigger2 = abs(P2Bodydist Y)<55
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,HitFall=0
trigger2 = EnemyNear,MoveType!=A
;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl||stateno=40||Anim = 47 || ((stateno=230)&&MoveContact)||(stateno=[100,101])
trigger1 = command = "c"
trigger1 = AILevel = 0
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger2 = (random<250*(AILevel**2/20.0))
trigger2 = abs(P2Bodydist X)=[0,45]
trigger2 = abs(P2Bodydist Y)<55
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,HitFall=0
trigger2 = EnemyNear,MoveType!=A
;---------------------------------------------------------------------------
;Crouching Low Punch
[State -1, Crouching Low Punch]
type = ChangeState
value = 400
triggerall = !AILevel&&Roundstate=2&&statetype != A&&command = "holddown"&& command = "x"
trigger1 = ctrl
trigger2 = stateno = [100,101]
;---------------------------------------------------------------------------
;Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = !AILevel&&Roundstate=2&&statetype != A&&command= "holddown"&& command = "y"
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,409])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = [100,101]
;---------------------------------------------------------------------------
;Crouching High Punch
[State -1, Crouching High Punch]
type = ChangeState
value = 420
triggerall = !AILevel&&Roundstate=2&&statetype != A&&command = "holddown"&& command = "z"
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,249])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,449])&& movecontact
trigger6 = stateno = [100,101]
;---------------------------------------------------------------------------
;Crouching Low Kick
[State -1, Crouching Low Kick]
type = ChangeState
value = 430
triggerall = !AILevel&&Roundstate=2&&statetype != A&&command = "holddown"&& command = "a"
trigger1 = ctrl
trigger2 = (stateno = [200,209])&& movecontact
trigger3 = (stateno = [400,409])&& movecontact
trigger4 = stateno = [100,101]
;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = !AILevel&&Roundstate=2&&statetype != A&&command = "holddown"&& command = "b"
trigger1 = ctrl
trigger2 = (stateno = [200,219])&& movecontact
trigger3 = (stateno = [230,239])&& movecontact
trigger4 = (stateno = [400,419])&& movecontact
trigger5 = (stateno = [430,439])&& movecontact
trigger6 = stateno = [100,101]
;---------------------------------------------------------------------------
;Crouching High Kick
[State -1, Crouching High Kick]
type = ChangeState
value = 450
triggerall = !AILevel&&Roundstate=2&&statetype != A&&command = "holddown"&& command = "c"
trigger1 = ctrl
trigger2 = (stateno = [200,249])&& movecontact
trigger3 = (stateno = [400,449])&& movecontact
trigger4 = stateno = [100,101]
;---------------------------------------------------------------------------
;Jumping Low Punch
[State -1, Jumping Low Punch]
type = ChangeState
value = 600
triggerall = !AILevel&&Roundstate=2&&statetype = A&&command = "x"
trigger1 = ctrl
trigger2 = stateno = 100000
;---------------------------------------------------------------------------
;Jumping Medium Punch
[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerall = !AILevel&&Roundstate=2&&statetype = A&&command = "y"
trigger1 = ctrl
trigger2 = (stateno = [600,609])&& movecontact
trigger3 = (stateno = [630,639])&& movecontact
trigger4 = stateno = 100000
;---------------------------------------------------------------------------
;Jumping High Punch
[State -1, Jumping High Punch]
type = ChangeState
value = 620
triggerall = !AILevel&&Roundstate=2&&statetype = A&&command = "z"
trigger1 = ctrl
trigger2 = (stateno = [600,619])&& movecontact
trigger3 = (stateno = [630,649])&& movecontact
trigger4 = stateno = 100000
;---------------------------------------------------------------------------
; Rider Kick
[State -1, Rider Kick]
type = ChangeState
value = 651
triggerall = statetype = A && ctrl
trigger1 = command = "holdfwd"
trigger1 = command = "c"
trigger1 = AILevel = 0
trigger2 = AILevel!=0&&RoundState=2&&(EnemyNear,StateNo!=[120,160])
trigger2 = (random<250*(AILevel**2/12.0))
trigger2 = P2BodyDist X = [0,45]
trigger2 = enemynear,pos Y-pos Y=[-30,45]
trigger2 = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger2 = EnemyNear,HitFall=0
trigger2 = Pos Y<=-30
;---------------------------------------------------------------------------
;Jumping Low Kick
[State -1, Jumping Low Kick]
type = ChangeState
value = 630
triggerall = !AILevel&&Roundstate=2&&statetype = A&&command = "a"
trigger1 = ctrl
trigger2 = (stateno = [600,609])&& movecontact
trigger3 = stateno = 100000
;---------------------------------------------------------------------------
;Jumping Medium Kick
[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerall = !AILevel&&Roundstate=2&&statetype = A&&command = "b"
trigger1 = ctrl
trigger2 = (stateno = [600,619])&& movecontact
trigger3 = (stateno = [630,639])&& movecontact
trigger4 = stateno = 100000
;---------------------------------------------------------------------------
;Jumping High Kick
[State -1, Jumping High Kick]
type = ChangeState
value = 650
triggerall = !AILevel&&Roundstate=2&&statetype = A&&command = "c"
trigger1 = ctrl
trigger2 = (stateno = [600,649])&& movecontact
trigger3 = stateno = 100000

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
triggerall = !AILevel&&Roundstate=2&&StateType != A
triggerall = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(5)

;==============================================================================================
;===========================================< A.I >============================================
;==============================================================================================

[State -1, Fall Recovery (Air)]
type = ChangeState
value = 5210
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive
trigger1 = StateNo = 5050 && CanRecover
trigger1 = vel y > 0 && pos y < -20
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Fall Recovery (Ground)]
type = ChangeState
value = 5200
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive
trigger1 = StateNo = 5050 && GetHitVar(fall.recover)
trigger1 = vel y > 0 && pos y >= -20
trigger1 = Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Jump]
type = ChangeState
value = 40
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A && ctrl
trigger1 = EnemyNear, MoveType = A && P2BodyDist x < 160 && EnemyNear, HitDefAttr = SC, AT

[State -1, Roll Forward]
type = ChangeState
value = 710
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Random < (50 * (AILevel ** 2 / 64.0))
trigger1 = (ctrl || (StateNo = [100,101])) && var(20) <= 164 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [92,122])

[State -1, Dodge]
type = ChangeState
value = 700
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = (ctrl || (StateNo = [100,101])) && var(20) <= 164 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [0,60])

[State -1, Dodge]
type = ChangeState
value = 700
triggerall = AIlevel && numenemy
triggerall = (facing=1 && (enemy,facing=-1)) || (facing=-1 && (enemy,facing=1))
triggerall = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (145 * (AILevel ** 2 / 64.0))
triggerall = roundstate=2  && statetype != A
trigger1 = enemynear,movetype=A && (p2bodydist x=[0,40])&&(p2bodydist y=[0,0])
trigger2 = ((enemynear,numproj) || (enemynear,numhelper)) && inguarddist && p2bodydist x>=25 
trigger3 = RoundState = 2 && InGuardDist
trigger3 = ctrl && (StateNo != [120, 155]) && !var(20)
trigger3 = !var(26) || P2BodyDist x >= 40
trigger3 = !(EnemyNear, HitDefAttr = SCA, AT) && (EnemyNear, Time < 120)
trigger3 = StateType != A || P2StateType = A
trigger3 = ifElse(StateType = A, ((var(3) != [1, 2]) || StateNo = 5210), 1)
trigger3 = Random <  (ifElse((P2StateNo = [200, 699]), 125, ifElse((P2StateNo = [1000,2999]), 333, 1000)) * (AILevel ** 2 / 64.0))

[State -1, Dash Backward]
type = ChangeState
value = 105
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = ctrl && (StateNo != [100,106]) && var(20) <= 150 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && BackEdgeDist >= 80 && (P2BodyDist x = [80,120]) && (EnemyNear, vel x)
trigger1 = Random < (ifElse((EnemyNear, HitDefAttr = SC, AT), 150, 50) * (AILevel ** 2 / 64.0))
trigger2 = (P2BodyDist x = [0,80]) && BackEdgeBodyDist >= 80
trigger2 = EnemyNear, StateNo = 5120 && EnemyNear, AnimTime = -4 && Random < (750 * (AILevel ** 2 / 64.0))

[State -1, Guard]
type = ChangeState
value = 120
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && InGuardDist
trigger1 = ctrl && (StateNo != [120, 155]) && !var(20)
trigger1 = !var(26) || P2BodyDist x >= 40
trigger1 = !(EnemyNear, HitDefAttr = SCA, AT) && (EnemyNear, Time < 120)
trigger1 = StateType != A || P2StateType = A
trigger1 = ifElse(StateType = A, ((var(3) != [1, 2]) || StateNo = 5210), 1)
trigger1 = Random < (ifElse((P2StateNo = [200, 699]), 100, ifElse((P2StateNo = [1000,2999]), 333, 1000)) * (AILevel ** 2 / 64.0))

[State -1, Zero Counter]
type = ChangeState
value = 750
trigger1 = AILevel && NumEnemy
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power >= 1000 && var(20) <= 60
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))
trigger1 = (P2BodyDist x = [0,50]) && (Life < 0.5 * LifeMax)

[State -1, Power Charge]
type = ChangeState
value = 730
triggerAll = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power < const(data.power) && !var(20)
trigger1 = ctrl && Power < const(data.power) && Power < PowerMax && !var(20) && PrevStateNo != 5120
trigger1 = !InGuardDist && P2BodyDist x >= 160 && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != H
triggerAll = (P2BodyDist x = [-20,40]) && P2BodyDist y = 0
trigger1 = ctrl && Random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (P2StateNo = [120,140]) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Air Throw]
type = ChangeState
value = 860
triggerall = var(6) = 0
triggerall = AILevel!=0&&RoundState=2
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 100
triggerall = abs(P2BodyDist X)<=50
triggerall = abs(P2BodyDist Y)<=10
triggerall = (EnemyNear,StateNo!=[800,899])&&(EnemyNear,StateNo!=[5070,5120])&&(EnemyNear,StateType!=L)
trigger1 = (random<300*(AILevel**2/24.0))
trigger1 = (EnemyNear,StateNo=[120,160])
trigger1 = (EnemyNear,statetype = A) 
trigger1 = EnemyNear,MoveType!=H
trigger1 = EnemyNear,MoveType!=A

[State -1, Run]
type = ChangeState
value = 100
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl && (StateNo != [100,106])
trigger1 = (EnemyNear, MoveType != A) && P2BodyDist x >= 160 && Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Standing Heavy Punch]
type = ChangeState
value = 220 
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,57]) && (P2Dist y = [-60,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Heavy Kick]
type = ChangeState
value = 250 
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,75]) && (P2Dist y = [-64,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 4) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Heavy Punch]
type = ChangeState
value = 420
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && Statetype != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,35]) && (P2Dist y = [-135,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 4) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Heavy Kick]
type = ChangeState
value = 450
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,78]) && (P2Dist y = [-33,0]) && P2StateType != A && P2StateType != L
triggerAll = (P2StateType = S || (P2StateType = C && P2MoveType = H))
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 6) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Jumping Heavy Punch]
type = ChangeState
value = 620
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,51]) && (P2Dist y = [-101,76]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y <= 0 && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(4) && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Neutral Jumping Heavy Kick]
type = ChangeState
value = 650
triggerAll = AILevel && NumEnemy && !vel x
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,63]) && (P2Dist y = [-97,85]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y <= 0 && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = var(4) && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Standing Far/Close Medium Punch]
type = ChangeState
value = 210
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,35]) && (P2Dist y = [-60,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Far/Close Medium Kick]
type = ChangeState
value = 240
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,60]) && (P2Dist y = [-121,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,52]) && (P2Dist y = [-50,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,65]) && (P2Dist y = [-60,0]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,40]) && (P2Dist y = [-80,72]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [-60,44]) && (P2Dist y = [-60,68]) && P2StateType = A
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Standing Light Punch]
type = ChangeState
value = 200 
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,44]) && (P2Dist y = [-68,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (85 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Light Kick]
type = ChangeState
value = 230
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,53]) && (P2Dist y = [-68,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,55]) && (P2Dist y = [-44,0]) && P2StateType != A && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,60]) && (P2Dist y = [-25,0]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100, 101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = ((stateno = 400) && movehit && !animtime)
trigger3 = (enemy, statetype = S && (enemy, movetype = A || !enemy, ctrl) && random < (125 * (AIlevel ** 2 / 64.0)))

[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,40]) && (P2Dist y = [-51,60]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Jumping Light Kick]
type = ChangeState
value = 630
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,59]) && (P2Dist y = [-80,57]) && P2StateType != L
trigger1 = ctrl
trigger1 = vel y <= 0 && Random < (ifElse(P2Dist x < 0, 250, 50) * (AILevel ** 2 / 64.0))





