;***************************************************************************;
;***************************************************************************;
; CVS Maxima POTS/Infinite by Falcon Rapper
;***************************************************************************;
;***************************************************************************;
; "Porque o guerreiro de fé nunca gela" by: Racionais mc's
;***************************************************************************;
;***************************************************************************;

;
; HELPER STATES =
;

;Pal Select
[Statedef 256]
physics = N
anim = 256
velset=0,0
sprpriority=99999
 
[State 256, PosSet]
type = PosSet
trigger1 =!time 
x = root,facing*-90
y = 20
ignorehitpause = 1

[State 256, AS]
type=assertspecial
trigger1=1
flag=intro
flag2=noshadow
[State 256, Reset]
type=varset
trigger1=!time
var(29)=200
[State 256, Pal]
type=varset
trigger1=!time
var(26)=root,palno

[State 256, Varset]
type=varset
trigger1=var(26)<1||var(26)>20
var(26)=1+(var(26)<1)*19

[State 256, PlaySnd]
type = PlaySnd
trigger1 =var(10)=2 
value = S256,0
volumescale = 50
channel = 20
[State 256, PlaySnd]
type = PlaySnd
triggerall=ishelper(256)
trigger1=root,command="a"||root,command="b"||root,command="c"||root,command="x"||root,command="y"||root,command="z"||root,command="s"||roundstate=2
trigger2=var(29)<=5
value = S256,1
volumescale = 50
channel = 20
persistent =0 

[State 256, Countdown]
type = VarAdd
trigger1 =1 
var(29)=-1
[State 256, Countdown]
type = VarAdd
trigger1=!var(10)&&var(29)<150
trigger1=root,command="holdup"||root,command="holddown"||root,command="holdback"||root,command="holdfwd"
var(29)=25

[State 256, Varadd]
type=varadd
trigger1=!var(10)
trigger1=root,command="holdup"||root,command="holddown"||root,command="holdback"||root,command="holdfwd"
var(26)=1-(root,command="holddown"||root,command="holdback"&&facing=1||root,command="holdfwd"&&facing=-1)*2

[State 256, Varadd]
type=varadd
trigger1=(root,command="holdup"||root,command="holddown"||root,command="holdback"||root,command="holdfwd")&&!var(10)||var(10)
var(10)=1

[State 256, Varset]
type=varset
trigger1=!time||var(10)>=17
var(10)=0

[State 256, End]
type=destroyself
triggerall=ishelper(256)
trigger1=root,command="a"||root,command="b"||root,command="c"||root,command="x"||root,command="y"||root,command="z"||root,command="s"||roundstate=2
trigger2=var(29)<=0
trigger3=root,AILevel

;--------------------------------------------------------------------------------------
;---------------------------------------------------------------------------
;CAMERA FOCUS
[Statedef 6001]
type = S
physics = S
anim = 0
ctrl = 0

[state 6001,TURN]
type=turn
trigger1=ishelper(6001)
trigger1=facing!=root,facing
ignorehitpause=1

[State 6001,vel]
type = VelSet
trigger1 = parent,pos X > 0
x = ifelse(facing = 1,4,-4)
[State 6001,vel]
type = VelSet
trigger1 = parent,pos X < 0
x = ifelse(facing = 1,-4,4)
[State 6001,vel]
type = VelSet
trigger1 = parent,pos X = [-5,5]
x = 0

[State 6001, WIDTH]
type = Width
trigger1 = 1
value = 1,1

[State 6001, NHB]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 6001,AS]
type = AssertSpecial
Trigger1 = 1
flag = invisible
flag2 = noshadow

[State 6001,Bound]
type = ScreenBound
trigger1 =1
value =1
movecamera = 320,0
[State 6001,push]
type = PlayerPush
trigger1 =1
value = 0

[State 6001, Destroyself]
type = destroyself
trigger1 = Time = 50
trigger1 = enemy, Life >= 1
trigger2=numhelper(6001)>=2
;
;HI Res Hitspark Coding 1.0
;
;SPARKS>=
;Guard Spark (Normal)
[StateDef 8000]
type = A
physics = N
moveType = I
anim = 8000
velset = 0,0
sprPriority = 5

[State 8000, Assert: No Shadow]
type = AssertSpecial
trigger1= 1
flag = NoShadow

[State 8000, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.125 + (0.046875 * Time), 0.125 + (0.046875 * Time)

[State 8000, Transparency]
type = Trans
trigger1 = Time < 4
trans = AddAlpha
alpha = 256, 256

[State 8000, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256

[State 8000, End]
type = DestroySelf
trigger1 = Time >= 8


;Guard Spark (Special)
[StateDef 8001]
type = A
physics = N
moveType = I
anim = 8001
velSet = 0,0
sprPriority = 5

[State 8001, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8001, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)

[State 8001, Transparency]
type = Trans
trigger1 = time < 4
trans = AddAlpha
alpha = 256, 256

[State 8001, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256

[State 8001, End]
type = DestroySelf
trigger1 = Time >= 8


;
;HI Res Hitspark Coding 1.0
;
;Hit Spark for Helpers and Throws
[StateDef 8005]
physics = N
anim = 8010
velSet = 0,0
sprPriority = Ifelse(root,stateno=3301,15,5)

[State 8005, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8005, VarSet]
type = VarSet
trigger1 =!time 
var(33)=Ifelse((parent,stateno=[0,999]),8012,Ifelse((parent,stateno=[1000,2999]),8013,8014))
[State 8005, VarSet]
type = VarSet
trigger1 =!time 
fvar(18)=Ifelse(var(33)=8010,0.3,Ifelse(var(33)=8011,0.35,Ifelse(var(33)=8012,0.4,Ifelse(var(33)=8013,0.45,0.5))))
[State 8005, RemapPal]
type = RemapPal
trigger1 =!time&&((root,var(43)=0)||(root,var(43)=2))
source = 8010,1
dest = 8010,Ifelse(var(33)=8014,3,Ifelse(var(33)=8013,2,1))

[State 8005, AngleSet]
type = AngleDraw
trigger1 = 1
value = 30 * (Random % 12)+30*time

[State 8005, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = fvar(18) - (Time * fvar(18)*0.1), fvar(18) - (Time * fvar(18)*0.1)
[State 8005, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0

[State 8005, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256 - (16 * Time),256

[State 8005, Helper]
type = Helper
trigger1 =!time 
helpertype = normal
name ="Center" 
ID =8011 
stateno =8011
persistent=0
size.xscale =1 
size.yscale =1 
ownpal=0
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State 8005, Helper]
type = Helper
trigger1 =!time 
helpertype = normal
name ="Streaks" 
ID =8012
stateno =8012
persistent=0
size.xscale =1 
size.yscale =1 
ownpal=0
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State 8005, Helper]
type = Helper
trigger1 =!time&&(var(33)=[8012,8014])
trigger1 =root,var(43)=0
trigger2 =!time&&(var(33)=[8013,8014])
trigger2 =root,var(43)
helpertype = normal
name ="Back" 
ID =8013
stateno =8013
facing = -1
persistent=0
size.xscale =1 
size.yscale =1 
ownpal=0
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State 8005, Helper]
type = Helper
trigger1 =!time
helpertype = normal
name ="Impact" 
ID =8014
stateno =8014
facing = -1
persistent=0
size.xscale =1 
size.yscale =1 
ownpal=0
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 8005, End]
type = DestroySelf
trigger1 = Time >= 16
;-------------------------------------------------------------------------
;Hit Spark
[StateDef 8010]
physics = N
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8010, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8010, VarSet]
type = VarSet
trigger1 =!time 
var(33)=root,var(33)
[State 8010, VarSet]
type = VarSet
trigger1 =!time 
fvar(18)=Ifelse(var(33)=8010,0.3,Ifelse(var(33)=8011,0.35,Ifelse(var(33)=8012,0.4,Ifelse(var(33)=8013,0.45,0.5))))
[State 8010, RemapPal]
type = RemapPal
trigger1 =!time&&((root,var(43)=0)||(root,var(43)=2))
source = 8010,1
dest = 8010,Ifelse(var(33)=8014,3,Ifelse(var(33)=8013,2,1))

[State 8010, AngleSet]
type = AngleDraw
trigger1 = 1
value = 30 * (Random % 12)+30*time

[State 8010, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = fvar(18) - (Time * fvar(18)*0.1), fvar(18) - (Time * fvar(18)*0.1)
[State 8010, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0

[State 8010, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256 - (16 * Time),256

[State 8010, Helper]
type = Helper
trigger1 =!time 
helpertype = normal
name ="Center" 
ID =8011 
stateno =8011
persistent=0
size.xscale =1 
size.yscale =1 
ownpal=0
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State 8010, Helper]
type = Helper
trigger1 =!time 
helpertype = normal
name ="Streaks" 
ID =8012
stateno =8012
persistent=0
size.xscale =1 
size.yscale =1 
ownpal=0
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State 8010, Helper]
type = Helper
trigger1 =!time&&(var(33)=[8012,8014])
trigger1 =root,var(43)=0
trigger2 =!time&&(var(33)=[8013,8014])
trigger2 =root,var(43)
helpertype = normal
name ="Back" 
ID =8013
stateno =8013
facing = -1
persistent=0
size.xscale =1 
size.yscale =1
ownpal=0
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1 
[State 8010, Helper]
type = Helper
trigger1 =!time
helpertype = normal
name ="Impact" 
ID =8014
stateno =8014
facing = -1
persistent=0
size.xscale =1 
size.yscale =1 
ownpal=0
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 8010, End]
type = DestroySelf
trigger1 = Time >= 16
;-------------------------------------------------------------------------
;Center Spark
[StateDef 8011]
physics = N
anim = 8011
velSet = 0,0
sprPriority = Ifelse(root,stateno=3301,15,5)

[State 8011, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8011, VarSet]
type = VarSet
trigger1 =!time 
var(33)=parent,var(33)
[State 8011, VarSet]
type = VarSet
trigger1 =!time 
fvar(17)=Ifelse(var(33)=8010,0.15,Ifelse(var(33)=8011,0.175,Ifelse(var(33)=8012,0.2,Ifelse(var(33)=8013,0.225,0.25))))
[State 8011, VarSet]
type = VarSet
trigger1 =!time 
fvar(18)=Ifelse(var(33)=8010,0.009375,Ifelse(var(33)=8011,0.0109375,Ifelse(var(33)=8012,0.0125,Ifelse(var(33)=8013,0.0140625,0.015625))))

[State 8011, AngleSet]
type = AngleDraw
trigger1 = !time
value = 90 * (Random % 4)

[State 8011, Scale]
type = AngleDraw
trigger1 = 1
scale = fvar(17) + (fvar(18) * Time), fvar(17) + (fvar(18) * Time)

[State 8011, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256 - (16 * Time),256

[State 8011, End]
type = DestroySelf
trigger1 = Time >= 16
;-------------------------------------------------------------------------
;Streaks Spark
[StateDef 8012]
physics = N
anim = 8012
velSet = 0,0
sprPriority = Ifelse(root,stateno=3301,15,5)

[State 8012, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8012, VarSet]
type = VarSet
trigger1 =!time 
var(33)=parent,var(33)
[State 8012, VarSet]
type = VarSet
trigger1 =!time 
fvar(17)=Ifelse(var(33)=8010,0.15,Ifelse(var(33)=8011,0.175,Ifelse(var(33)=8012,0.2,Ifelse(var(33)=8013,0.225,0.25))))
[State 8012, VarSet]
type = VarSet
trigger1 =!time 
fvar(18)=Ifelse(var(33)=8010,0.009375,Ifelse(var(33)=8011,0.0109375,Ifelse(var(33)=8012,0.0125,Ifelse(var(33)=8013,0.0140625,0.015625))))

[State 8012, AngleSet]
type = AngleDraw
trigger1 = !time
value = 90 * (Random % 4)

[State 8012, Scale]
type = AngleDraw
trigger1 = 1
scale = fvar(17) + (fvar(18) * Time), fvar(17) + (fvar(18) * Time)

[State 8012, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256 - (16 * Time),256

[State 8012, End]
type = DestroySelf
trigger1 = Time >= 16
;-------------------------------------------------------------------------
;Back Spark
[StateDef 8013]
physics = N
anim = Ifelse(root,var(43),8016,8013)
velSet = 0,0
sprPriority =Ifelse(root,stateno=3301,11,-3)
[State 8013, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8013, VarSet]
type = VarSet
trigger1 =!time 
var(33)=parent,var(33)
[State 8013, VarSet]
type = VarSet
trigger1 =!time&&anim=8016 
fvar(17)=Ifelse(var(33)=8013,0.4,0.5)
[State 8013, VarSet]
type = VarSet
trigger1 =!time&&anim=8016 
fvar(18)=Ifelse(var(33)=8013,0.4,0.5)
[State 8013, VarSet]
type = VarSet
trigger1 =!time&&anim!=8016 
fvar(17)=Ifelse(var(33)=8012,0.35,Ifelse(var(33)=8013,0.375,0.4))
[State 8013, VarSet]
type = VarSet
trigger1 =!time&&anim!=8016 
fvar(18)=0.0125

[State 8013, AngleSet]
type = AngleDraw
trigger1 = !time
value = Ifelse(random<=500,360,-360)

[State 8013, Scale]
type = AngleDraw
trigger1 = anim=8016
scale = fvar(17), fvar(18)
[State 8013, Scale]
type = AngleDraw
trigger1 = anim!=8016
scale = fvar(17) + (fvar(18) * Time), fvar(17) - (fvar(18) * Time)

[State 8013, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256 - (32 * Time),256

[State 8013, End]
type = DestroySelf
trigger1 = Time >= 8
;-------------------------------------------------------------------------
;Impact Spark
[StateDef 8014]
physics = N
anim = 8014
velSet = 0,0
sprPriority =Ifelse(root,stateno=3301,13,3)

[State 8014, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8014, VarSet]
type = VarSet
trigger1 =!time 
var(33)=parent,var(33)

[State 8014, VarSet]
type = VarSet
trigger1 =!time&&((parent,stateno=8005)||(parent,stateno=8010))
fvar(17)=Ifelse(var(33)=8010,0.3,Ifelse(var(33)=8011,0.35,Ifelse(var(33)=8012,0.4,Ifelse(var(33)=8013,0.45,0.5))))
[State 8014, VarSet]
type = VarSet
trigger1 =!time&&((parent,stateno=8005)||(parent,stateno=8010))
fvar(18)=Ifelse(var(33)=8010,0.0375,Ifelse(var(33)=8011,0.04375,Ifelse(var(33)=8012,0.05,Ifelse(var(33)=8013,0.05625,0.0625))))
[State 8014, VarSet]
type = VarSet
trigger1 =!time&&((parent,stateno=8015)||(parent,stateno=8020))
fvar(17)=Ifelse(var(33)=8020,0.2,Ifelse(var(33)=8021,0.225,Ifelse(var(33)=8022,0.25,Ifelse(var(33)=8023,0.275,0.3))))
[State 8014, VarSet]
type = VarSet
trigger1 =!time&&((parent,stateno=8015)||(parent,stateno=8020))
fvar(18)=0.025

[State 8014, VarSet]
type = VarSet
trigger1 =!time
var(10)=Ifelse((var(33)=[8010,8012]),128,Ifelse(var(33)=8013,192,256))
[State 8014, VarSet]
type = VarSet
trigger1 =!time
var(11)=Ifelse(var(33)>=8020,64,Ifelse((var(33)=[8010,8012]),16,Ifelse(var(33)=8013,24,32)))

[State 8014, AngleSet]
type = AngleDraw
trigger1 = !time
value = 30 * (Random % 12)

[State 8014, Scale]
type = AngleDraw
trigger1 = (parent,stateno=8005||parent,stateno=8010)
scale = fvar(17) - (fvar(18) * Time), fvar(17) - (fvar(18) * Time)
[State 8014, Scale]
type = AngleDraw
trigger1 = (parent,stateno=8015||parent,stateno=8020)
scale = fvar(17) + (fvar(18) * Time), fvar(17) + (fvar(18) * Time)

[State 8014, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = var(10) - (var(11) * Time),256

[State 8014, End]
type = DestroySelf
trigger1 = Time >= 8
;-------------------------------------------------------------------------
;Slash Spark for Helpers and Throws
[StateDef 8015]
physics = N
anim = 8040
velSet = 0,0
sprPriority = 5

[State 8015, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8015, VarSet]
type = VarSet
trigger1 =!time 
var(33)=Ifelse((parent,stateno=[0,999]),8022,Ifelse((parent,stateno=[1000,2999]),8023,8024))
[State 8015, VarSet]
type = VarSet
trigger1 =!time 
fvar(17)=0.025
[State 8015, VarSet]
type = VarSet
trigger1 =!time 
fvar(18)=Ifelse(var(33)=8020,0.35,Ifelse(var(33)=8021,0.375,Ifelse(var(33)=8022,0.4,Ifelse(var(33)=8023,0.425,0.45))))
[State 8015, RemapPal]
type = RemapPal
trigger1 =!time&&((root,var(43)=0)||(root,var(43)=2))
source = 8010,1
dest = 8010,Ifelse(var(33)=8024,3,Ifelse(var(33)=8023,2,1))

[State 8015, AngleSet]
type = AngleDraw
trigger1 = !time
value = 30 * (Random % 12)

[State 8015, Scale]
type = AngleDraw
trigger1 = 1
scale = fvar(18) + (Time * fvar(17)), fvar(18) - (Time * fvar(17))

[State 8015, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256 - (16 * Time),256

[State 8015, Helper]
type = Helper
trigger1 =!time 
helpertype = normal
name ="Center" 
ID =8021 
stateno =8021
persistent=0
size.xscale =1 
size.yscale =1 
ownpal=0
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State 8015, Helper]
type = Helper
trigger1 =!time&&root,var(43)=0
helpertype = normal
name ="Streaks" 
ID =8022
stateno =8022
persistent=0
size.xscale =1 
size.yscale =1 
ownpal=0
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State 8015, Helper]
type = Helper
trigger1 =!time&&root,var(43)=0&&(var(33)=[8022,8024])
helpertype = normal
name ="Back" 
ID =8023
stateno =8023
facing = -1
persistent=0
size.xscale =1 
size.yscale =1 
ownpal=0
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State 8015, Helper]
type = Helper
trigger1 =!time&&root,var(43)=0
helpertype = normal
name ="Impact" 
ID =8014
stateno =8014
facing = -1
persistent=0
size.xscale =1 
size.yscale =1 
ownpal=0
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State 8015, Helper]
type = Helper
trigger1 =time <= 4&&root,var(43)
helpertype = normal
name ="Particles" 
ID =8024
stateno =8024
size.xscale =1 
size.yscale =1
ownpal=0
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 8015, End]
type = DestroySelf
trigger1 = Time >= 16
;-------------------------------------------------------------------------
;Slash Spark
[StateDef 8020]
physics = N
anim = 8040
velSet = 0,0
sprPriority = 5

[State 8020, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8020, VarSet]
type = VarSet
trigger1 =!time 
var(33)=root,var(33)
[State 8020, VarSet]
type = VarSet
trigger1 =!time 
fvar(17)=0.025
[State 8020, VarSet]
type = VarSet
trigger1 =!time 
fvar(18)=Ifelse(var(33)=8020,0.35,Ifelse(var(33)=8021,0.375,Ifelse(var(33)=8022,0.4,Ifelse(var(33)=8023,0.425,0.45))))
[State 8020, RemapPal]
type = RemapPal
trigger1 =!time&&((root,var(43)=0)||(root,var(43)=2))
source = 8010,1
dest = 8010,Ifelse(var(33)=8024,3,Ifelse(var(33)=8023,2,1))

[State 8020, AngleSet]
type = AngleDraw
trigger1 = !time
value = 30 * (Random % 12)

[State 8020, Scale]
type = AngleDraw
trigger1 = 1
scale = fvar(18) + (Time * fvar(17)), fvar(18) - (Time * fvar(17))

[State 8020, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256 - (16 * Time),256

[State 8020, Helper]
type = Helper
trigger1 =!time 
helpertype = normal
name ="Center" 
ID =8021 
stateno =8021
persistent=0
size.xscale =1 
size.yscale =1 
ownpal=0
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State 8020, Helper]
type = Helper
trigger1 =!time&&root,var(43)=0
helpertype = normal
name ="Streaks" 
ID =8022
stateno =8022
persistent=0
size.xscale =1 
size.yscale =1 
ownpal=0
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State 8020, Helper]
type = Helper
trigger1 =!time&&root,var(43)=0&&(var(33)=[8022,8024])
helpertype = normal
name ="Back" 
ID =8023
stateno =8023
facing = -1
persistent=0
size.xscale =1 
size.yscale =1 
ownpal=0
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State 8020, Helper]
type = Helper
trigger1 =!time&&root,var(43)=0
helpertype = normal
name ="Impact" 
ID =8014
stateno =8014
facing = -1
persistent=0
size.xscale =1 
size.yscale =1 
ownpal=0
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1
[State 8020, Helper]
type = Helper
trigger1 =time <= 4&&root,var(43)
helpertype = normal
name ="Particles" 
ID =8024
stateno =8024
size.xscale =1 
size.yscale =1
ownpal=0
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1+
[State 8020, End]
type = DestroySelf
trigger1 = Time >= 16
;-------------------------------------------------------------------------
;Center Slash
[StateDef 8021]
physics = N
anim = Ifelse(root,var(43),8044,8041)
velSet = 0,0
sprPriority = 5

[State 8021, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8021, VarSet]
type = VarSet
trigger1 =!time 
var(33)=parent,var(33)
[State 8021, VarSet]
type = VarSet
trigger1 =!time 
fvar(17)=Ifelse(var(33)=8020,0.25,Ifelse(var(33)=8021,0.275,Ifelse(var(33)=8022,0.3,Ifelse(var(33)=8023,0.325,0.35))))

[State 8021, AngleSet]
type = AngleDraw
trigger1 = !time
value = 90 * (Random % 4)

[State 8021, Scale]
type = AngleDraw
trigger1 =anim!=8044
scale = fvar(17) - (0.0125 * time), fvar(17) - (0.0125 * time)
[State 8021, Scale]
type = AngleDraw
trigger1 =anim=8044
scale = (fvar(17) - 0.05) + (0.025 * time), (fvar(17) - 0.05) + (0.025 * time)

[State 8021, Transparency]
type = Trans
trigger1 =root,var(43)=0
trans = AddAlpha
alpha = 256 - (16 * Time),256
[State 8021, Transparency]
type = Trans
trigger1 =root,var(43)!=0
trans = AddAlpha
alpha = 256 - (32 * Time),256

[State 8021, End]
type = DestroySelf
trigger1 = Ifelse(root,var(43)=0,Time >= 10,Time >= 16)
;-------------------------------------------------------------------------
;Streaks Slash
[StateDef 8022]
physics = N
anim = 8042
velSet = 0,0
sprPriority = 5

[State 8022, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8022, VarSet]
type = VarSet
trigger1 =!time 
var(33)=parent,var(33)
[State 8022, VarSet]
type = VarSet
trigger1 =!time 
fvar(17)=Ifelse(var(33)=8020,0.09,Ifelse(var(33)=8021,0.175,Ifelse(var(33)=8022,0.2,Ifelse(var(33)=8023,0.225,0.25))))

[State 8022, AngleSet]
type = AngleDraw
trigger1 = !time
value = 90 * (Random % 4)

[State 8022, Scale]
type = AngleDraw
trigger1 = 1
scale = fvar(17) + (0.0125 * Time), fvar(17) + (0.0125 * Time)

[State 8022, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256 - (16 * Time),256

[State 8022, End]
type = DestroySelf
trigger1 = Time >= 16
;-------------------------------------------------------------------------
;Back Slash
[StateDef 8023]
physics = N
anim = 8043
velSet = 0,0
sprPriority =-3
[State 8023, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 8023, VarSet]
type = VarSet
trigger1 =!time 
var(33)=parent,var(33)
[State 8023, VarSet]
type = VarSet
trigger1 =!time
fvar(17)=Ifelse(var(33)=8022,0.2,Ifelse(var(33)=8022,0.225,0.25))
[State 8023, VarSet]
type = VarSet
trigger1 =!time
fvar(18)=0.025

[State 8023, AngleSet]
type = AngleDraw
trigger1 = !time
value = Ifelse(random<=500,360,-360)

[State 8023, Scale]
type = AngleDraw
trigger1 = anim=8016
scale = fvar(17), fvar(18)
[State 8023, Scale]
type = AngleDraw
trigger1 = anim!=8016
scale = fvar(17) + (fvar(18) * Time), fvar(17) + (fvar(18) * Time)

[State 8023, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256 - (32 * Time),256

[State 8023, End]
type = DestroySelf
trigger1 = Time >= 8
;-------------------------------------------------------------------------
;Particles
[StateDef 8024]
physics = N
anim = 8045
velset = -10 + (random / 50.0), -10 + (random / 50.0)
sprPriority = 5

[State 8024, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
[State 8024, VarSet]
type = VarSet
trigger1 =!time 
fvar(17)= 0.25 + (random / 5000.0)

[State 8024, Scale]
type = AngleDraw
trigger1 = 1
scale = fvar(17) , fvar(17)

[State 8024, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256 - (32 * Time),256

[State 8024, End]
type = DestroySelf
trigger1 = Time >= 16

;Super Hit Spark (Shun Goku Satsu)
[StateDef 8025]
type = A
physics = N
moveType = I
anim = 1
velSet = 0,0
sprPriority = 5

[State 8005, RemapPal]
type=RemapPal
triggerall = root, var(43) != 1
trigger1 =!time
source = 8010,1
dest = 8010,Ifelse(var(43)=0,3,Ifelse(var(43)=1,1,3))

[State 4015, BindToRoot]
type = BindToRoot
triggerall = !Time
trigger1 = (Root, StateNo = [3211,3510]) && (Root, Anim = [3211,3510]) && (Root, AnimElemTime(2) > 0) && (Root, AnimElemTime(53) < 0)
pos = (Random % 40) * ifElse(Random % 2, -1, 1) + 26, -50 - (Random % 40) * ifElse(Random % 2, -1, 1)
facing = 1

[State 4015, BindToRoot]
type = BindToRoot
triggerall = !Time
trigger1 = (Root, StateNo = 178) && (Root, Anim = 178) && (Root, AnimElemTime(2) >= 30) && (Root, AnimElemTime(3) < 0)
pos = (Random % 25) * ifElse(Random % 2, -1, 1) - 52, -50 - (Random % 40) * ifElse(Random % 2, -1, 1)
facing = 1

[State 8015, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8014, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8014, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8014, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.5 - (Time * 0.05), 0.5 - (Time * 0.05)
ignoreHitPause = 1

[State 8014, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8014, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8014, Center Explod]
type = Explod
triggerAll = !Time
trigger1 = (Root, StateNo = 3510)
trigger2 = (Root, StateNo = 3211)
trigger3 = (Root, StateNo = 3252)
trigger4 = (Root, StateNo = 3240)
trigger5 = (Root, StateNo = 3270)
anim = 8010
ID = 10
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = 300
superMoveTime = 300
onTop = 1

[State 8014, Scale Center Explod]
type = ModifyExplod
triggerall = root,stateno != [3211,3252]
trigger1 = NumExplod(10)
trigger1 = time < 10
ID = 10
scale = 0.5 - (Time * 0.05), 0.5 - (Time * 0.05)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, Scale Center Explod]
type = ModifyExplod
triggerall = root,stateno = [3211,3252]
trigger1 = NumExplod(10)
trigger1 = time < 10
ID = 10
scale = 0.1 - (Time * 0.05), 0.1 - (Time * 0.05)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, Center Explod]
type = Explod
triggerAll = !Time
trigger1 = (Root, StateNo = 3510)
trigger2 = (Root, StateNo = 3211)
trigger3 = (Root, StateNo = 3252)
trigger4 = (Root, StateNo = 3240)
trigger5 = (Root, StateNo = 3270)
anim = 8011+10*((root,var(43)=0)||(root,var(43)=2))
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = 300
superMoveTime = 300
onTop = 1

[State 8014, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.25 + (0.015625 * Time), 0.25 + (0.015625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, Streaks Explod]
type = Explod
triggerAll = !Time
trigger1 = (Root, StateNo = 3510)
trigger2 = (Root, StateNo = 3211)
trigger3 = (Root, StateNo = 3252)
trigger4 = (Root, StateNo = 3240)
trigger5 = (Root, StateNo = 3270)
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = 300
superMoveTime = 300
onTop = 1

[State 8014, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.25 + (0.015625 * Time), 0.25 + (0.015625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, P2 Back Explod]
type = Explod
triggerAll = !Time
trigger1 = (Root, StateNo = 3510)
trigger2 = (Root, StateNo = 3211)
trigger3 = (Root, StateNo = 3252)
trigger4 = (Root, StateNo = 3240)
trigger5 = (Root, StateNo = 3270)
anim = 8013
ID = 3
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -3
removeTime = 8
pauseMoveTime = 300
superMoveTime = 300
onTop = 1

[State 8014, Scale P2 Back Explod]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 0.5,0.5
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8014, Impact Explod]
type = Explod
triggerAll = !Time
trigger1 = (Root, StateNo = 3510)
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = 300
superMoveTime = 300
onTop = 1

[State 8014, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.5 - (0.0625 * Time), 0.5 - (0.0625 * Time)
trans = AddAlpha
alpha = 256 - (32 * Time),256

[State 8014, Remove Explods]
type = RemoveExplod
trigger1 = time >= 16

[State 8014, End]
type = DestroySelf
trigger1 = Time >= 16





;Jump dust
[Statedef 8100]
type = S
anim = 1
velset = 0, 0

[State 8100, Bind]
type = bindtoroot
trigger1 = time

[State 8100, Dust]
type = explod
trigger1 = !time
anim = 8100
sprpriority = 3
postype = p1
pos = 0, ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8100, Dust]
type = explod
trigger1 = !time || time = 2 || time = 6
anim = 8101
sprpriority = 3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8100, End]
type = destroyself
trigger1 = time >= 7


;Dash dust
[Statedef 8103]
type = A
anim = 1
velset = 0, 0
sprpriority = 5

[State 8103, Pos]
type = posset
trigger1 = !time = 0
y = 0

[State 8103, Dust]
type = explod
trigger1 = time = 0 || time = 3 || time = 6
anim = 8103
ID = ifelse((time = 6), 3, ifelse((time = 3), 2, 1))
postype = p1
pos = 0, -4
random = 8, 8
vel = -3 -(random / 1000.0), -2 -(random / 2000.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 16
sprpriority = 3
pausemovetime = -1
supermovetime = -1

[State 8103, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 0.1 + (0.025 * time), 0.1 + (0.025 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8103, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 0.1 + (0.025 * (time -3)), 0.1 + (0.025 * (time -3))
trans = addalpha
alpha = 256 -(16 * (time -3)), 256

[State 8103, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 0.1 + (0.025 * (time -6)), 0.1 + (0.025 * (time -6))
trans = addalpha
alpha = 256 -(16 * (time -6)), 256

[State 8103, End]
type = removeexplod
trigger1 = time >= 22

[State 8103, End]
type = destroyself
trigger1 = !numexplod

;-----------------------------------
;Ground Impact 
[Statedef 8110]
type = A
anim = 1
velset = 0, 0
sprpriority = 5

[State 8110, FX]
type = explod
trigger1 = !time
anim = 8110
ID = ifelse(time = 8, 3, ifelse(time = 4, 2, 1))
postype = p1
removetime = 8
sprpriority = -4
pausemovetime = -1
supermovetime = -1

[State 8110, FX]
type = explod
trigger1 = !time
anim = 8120
ID = 2
postype = p1
removetime = 8
sprpriority = -4
pausemovetime = -1
supermovetime = -1

[State 8110, Scale]
type = modifyexplod
trigger1 = 1
scale = 0.25 + (0.03125 * time), 0.25 + (0.03125 * time)
trans = addalpha
alpha = ifelse(time < 4, 256, 256 -(64 * (time -4))), 256

[State 8110, End]
type = removeexplod
trigger1 = time >= 8

[State 8110, End]
type = destroyself
trigger1 = !numexplod

;WALL IMPACT DUST
[StateDef 8111]
type = A
anim = 1
velSet = 0,0
sprPriority = 5

[State 8111, Impact Dust Explod 1]
type = Explod
trigger1 = !Time
anim = 8111
ID = ifElse(Time = 8, 3, ifElse(Time = 4, 2, 1))
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8111, Impact Dust Explod 2]
type = Explod
trigger1 = !Time
anim = 8121
ID = 2
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8111, Scale]
type = ModifyExplod
trigger1 = 1
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 256, 256 - (64 * (Time - 4))), 256

[State 8111, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 8

[State 8111, End]
type = DestroySelf
trigger1 = !NumExplod

;FLAMES
[Statedef 8150]
type = A
velset = 0, 0
anim = 1

[State 8150, player]
type = varset
trigger1 = !time
var(0) = parent, var(43)

[State 8150, Pos]
type = posset
trigger1 = playerIDexist(var(0))
x = ceil(playerID(var(0)), pos x)
y = ceil(playerID(var(0)), pos y) + (playerID(var(0)), const(size.mid.pos.y))

[State 8150, Pos]
type = posset
trigger1 = playerIDexist(var(0))
trigger1 = playerID(var(0)), statetype = L
x = ceil(playerID(var(0)), pos x)
y = ceil(playerID(var(0)), pos y) - 20

[State 8150, facing]
type = turn
trigger1 = playerIDexist(var(0))
trigger1 = facing != (playerID(var(0)), facing)

[State 8150, flames]
type = explod
trigger1 = playerIDexist(var(0))
anim = 8150
sprpriority = 3
postype = p1
random = 40, 40
vel = (random / 2000.0), -.5 -(random / 2000.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
scale = 0.5, 0.5
ownpal = 1

[State 8150, flames]
type = explod
trigger1 = playerIDexist(var(0))
anim = 8150
sprpriority = 3
postype = p1
random = 60, 60
vel = (random / 2000.0), -.5 -(random / 2000.0)
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
scale = 0.5, 0.5
ownpal = 1

[State 8150, End]
type = destroyself
trigger1 = time >= 600
trigger2 = !playerIDexist(var(0))

[State 8150, End]
type = destroyself
triggerall = playerIDexist(var(0))
trigger1 = playerID(var(0)), ctrl
trigger2 = playerID(var(0)), movetype != H || playerID(var(0)), stateno = 5300
trigger3 = playerID(var(0)), statetype = L && (playerID(var(0)), stateno != [5080, 5081])

;RECOVER FX
[Statedef 8200]
type = A
velset = 0, 0
anim = 8200
sprpriority = 5

[State 8200, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow
ignoreHitPause = 1

[State 8200, Scale]
type = angledraw
trigger1 = 1
scale = 0.25 + (0.017 * time), 0.25 + (0.017 * time)
ignoreHitPause = 1

[State 8200, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = ceil(256 -17.1 * time), 256
ignoreHitPause = 1

[State 8200, End]
type = destroyself
trigger1 = time >= 15


;COUNTER FX
[Statedef 8290]
type = A
physics = N
velset = 0, 0
anim = 1

[State 8290, Circle]
type = explod
trigger1 = !numexplod(8290)
anim = 8290
ID = 8290
sprpriority = 64
postype = p1
facing = facing
removetime = 32
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8290, Scale]
type = modifyexplod
trigger1 = time < 8
ID = 8290
scale = 0.5, 0.5
trans = addalpha
alpha = 256, 0

[State 8290, Scale]
type = modifyexplod
trigger1 = time >= 8
ID = 8290
scale = 0.5 + .0625 * (time -8), 0.5 + .0625 * (time -8)
trans = addalpha
alpha = 256 -32 * (time -8), 32 * (time -8)

[State 8290, Safety]
type = removeexplod
trigger1 = time >= 16

[State 8290, End]
type = destroyself
trigger1 = time >= 16

;MAX MODE TEXT FX
[StateDef 8291]
type = A
physics = N
velSet = 0,0
anim = 1

[State 8291, "Power Up!" Text Explod]
type = Explod
trigger1 = !NumExplod(8291)
anim = 8291
ID = 8291
sprPriority = 64
posType = P1
facing = Facing
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8291, Scale]
type = ModifyExplod
trigger1 = Time < 8
ID = 8291
scale = 0.5, .5
trans = AddAlpha
alpha = 256,0

[State 8291, Scale]
type = ModifyExplod
trigger1 = Time >= 8
ID = 8291
scale = 0.5 + 0.0625 * (Time - 8), 0.5 + 0.0625 * (Time - 8)
trans = AddAlpha
alpha = 256 - 32 * (Time - 8), 32 * (Time - 8)

[State 8291, Safety]
type = RemoveExplod
trigger1 = Time >= 16

[State 8291, End]
type = DestroySelf
trigger1 = Time >= 16

;POWER CHARGE MAIN FX 
[Statedef 8330]
type = A
physics = N
movetype = I
anim = 1
ctrl = 0
velset = 0, 0

[State 8330, Bind]
type = bindtoroot
trigger1 = (root, stateno = 730)
pos = 0,0

[State 8330, Snd]
type = playsnd
trigger1 = !time
value = 730,0
channel = 0

[State 8330, Aura]
type = explod
trigger1 = !numexplod(8330)
ID = 8330
anim = 8330
sprpriority = 3
postype = p1
bindtime = -1
removetime = -1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8330, Dust]
type = explod
trigger1 = !(time % 6)
anim = 8105
sprpriority = -3
postype = p1
pos = 0, -ceil(pos y)
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 8330, FX]
type = modifyexplod
trigger1 = numexplod(8330) && root, power < 3000
ID = 8330
scale = 0.5, 0.1 + 0.4 * (root, power / 3000.0)

[State 8330, FX]
type = modifyexplod
trigger1 = numexplod(8330) && root, power >= 3000
ID = 8330
scale = 0.5, 0.5

[State 8330, End]
type = stopsnd
trigger1 = root, stateno != 730
channel = 0

[State 8330, End]
type = removeexplod
trigger1 = root, stateno != 730

[State 8330, End]
type = destroyself
trigger1 = root, stateno != 730


;POWER CHARGE Particles 
[Statedef 8331]
type = A
physics = N
movetype = I
anim = 1
ctrl = 0
velset = 0, 0

[State 8331, Bind]
type=bindtoroot
trigger1= !(time%8)
pos=ceil(-153+(random/3.125)),ceil(82-(random/3.125))

[State 8331, Particle]
type=explod
trigger1= (time%8)=1
anim=8331
sprpriority=ifelse(random<750,5,-1)
pos = 0,-20
postype=p1
vel= ((rootdist x+1)/32.0), ((rootdist y-75)/32.0)
scale= ifelse(random<500,.5,-.5), ifelse(random<500,.5,-.5)
pausemovetime=-1
supermovetime=-1
ownpal=1

[State 8331, End]
type = removeexplod
trigger1 = root, stateno != 730

[State 8331, End]
type = destroyself
trigger1 = root, stateno != 730


;ZERO COUNTER PAUSE
[Statedef 8350]
type = A
physics = N
movetype = I
anim = 1
ctrl = 0
velset = 0, 0

[State 8350, BG PalFX]
type = bgpalfx
trigger1 = 1
time = 1
color = 16 * time
mul = 16 * time, 16 * time, 16 * time

[State 8350, Circle]
type = explod
trigger1 = !time
anim = 8350
ID = 1
sprpriority = 3
postype = p1
removetime = 16
supermovetime = -1
ownpal = 1

[State 8350, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = (0.0625 * time), (0.0625 * time)
trans = addalpha
alpha = 256 -(16 * time), 256

[State 8350, Lightning]
type = explod
trigger1 = !time
anim = 8351
ID = 2
sprpriority = -2
postype = p1
pos = 0, -ceil(pos y)
supermovetime = -1
ownpal = 1

[State 8350, End]
type = destroyself
trigger1 = time >= 16


;CUSTOM COMBO
[Statedef 8400]
type = A
physics = N
movetype = I
anim = 8400
ctrl = 0
velset = 0, 0
sprpriority = 5

[State 8400, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignoreHitPause = 1

[State 8400, BG PalFX]
type = bgpalfx
trigger1 = time < 25
time = 1
mul = 128, 128, 128

[State 8400, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)

[State 8400, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 8400, Scale]
type = angledraw
trigger1 = time < 8
scale = (0.0625 * time), (0.0625 * time)
ignoreHitPause = 1

[State 8400, Scale]
type = angledraw
trigger1 = time >= 8
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8400, Trans]
type = trans
trigger1 = time < 16
trans = addalpha
alpha = 256, 256
ignoreHitPause = 1

[State 8400, Trans]
type = trans
trigger1 = time >= 16
trans = addalpha
alpha = ceil(256 - 25.6 * (time -16)), 256
ignoreHitPause = 1

[State 8400, Lines]
type = explod
trigger1 = !time
anim = 8401
ID = 1
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 16
supermovetime = -1

[State 8400, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 2 -(0.125 * time), 2 -(0.125 * time)
trans = addalpha
alpha = ifelse(time < 4, 64 * time, 256), 256

[State 8400, Circle]
type = explod
trigger1 = time = 16
anim = 8402
ID = 2
sprpriority = 5
postype = p1
removetime = 32
supermovetime = -1

[State 8400, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = (0.1 * (time -16)), (0.1 * (time -16))
trans = addalpha
alpha = ceil(256 - 25.6 * (time -16)), 256

[State 8400, Safety]
type = removeexplod
trigger1 = time >= 26

[State 8400, End]
type = destroyself
trigger1 = time >= 26


; SUPERPAUSE FX >=
;--- --Level 1 -----
[Statedef 8500]
type = A
velset = 0, 0
anim = 8500
sprpriority = 5

[State 8500, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignoreHitPause = 1

[State 8500, BG PalFX]
type = bgpalfx
trigger1 = time < 39
time = 1
color = 0
mul = 0, 0, 256

[State 8500, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)

[State 8500, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 8500, Scale]
type = angledraw
trigger1 = time < 16
scale = (0.03125 * time), (0.03125 * time)
ignoreHitPause = 1

[State 8500, Scale]
type = angledraw
trigger1 = time >= 16
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8500, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignoreHitPause = 1

[State 8500, Lines]
type = explod
trigger1 = time = 0 || time = 8 || time = 16 || time = 24
anim = 8501
ID = ifelse(time = 24, 4, ifelse(time = 16, 3, ifelse(time = 8, 2, 1)))
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 16
supermovetime = -1

[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 1 -(0.0625 * time), 1 -(0.0625 * time)
trans = addalpha
alpha = ifelse(time < 4, 64 * time, 256), 256

[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 1 -(0.0625 * (time -8)), 1 -(0.0625 * (time -8))
trans = addalpha
alpha = ifelse((time -8) < 4, 64 * (time -8), 256), 256

[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 1 -(0.0625 * (time -16)), 1 -(0.0625 * (time -16))
trans = addalpha
alpha = ifelse((time -16) < 4, 64 * (time -16), 256), 256

[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 1 -(0.0625 * (time -24)), 1 -(0.0625 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8500, Circle]
type = explod
trigger1 = time = 24
anim = 8502
ID = 10
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 32
supermovetime = -1

[State 8500, Scale]
type = modifyexplod
trigger1 = numexplod(10)
ID = 10
scale = 2 -(0.125 * (time -24)), 2 -(0.125 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8500, Safety]
type = removeexplod
trigger1 = time >= 40

[State 8500, End]
type = destroyself
trigger1 = time >= 40


;--- --Level 2 -----
[Statedef 8510]
type = A
velset = 0, 0
anim = 8510
sprpriority = 5

[State 8510, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignoreHitPause = 1

[State 8510, BG PalFX]
type = bgpalfx
trigger1 = time < 39
time = 1
color = 0
mul = 192, 0, 256

[State 8510, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)

[State 8510, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 8510, Scale]
type = angledraw
trigger1 = time < 16
scale = (0.03125 * time), (0.03125 * time)
ignoreHitPause = 1

[State 8510, Scale]
type = angledraw
trigger1 = time >= 16
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8510, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignoreHitPause = 1

[State 8510, Lines]
type = explod
trigger1 = time = 0 || time = 8 || time = 16 || time = 24
anim = 8511
ID = ifelse(time = 24, 4, ifelse(time = 16, 3, ifelse(time = 8, 2, 1)))
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 16
supermovetime = -1

[State 8510, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 1 -(0.0625 * time), 1 -(0.0625 * time)
trans = addalpha
alpha = ifelse(time < 4, 64 * time, 256), 256

[State 8510, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 1 -(0.0625 * (time -8)), 1 -(0.0625 * (time -8))
trans = addalpha
alpha = ifelse((time -8) < 4, 64 * (time -8), 256), 256

[State 8510, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 1 -(0.0625 * (time -16)), 1 -(0.0625 * (time -16))
trans = addalpha
alpha = ifelse((time -16) < 4, 64 * (time -16), 256), 256

[State 8510, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 1 -(0.0625 * (time -24)), 1 -(0.0625 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8510, Circle]
type = explod
trigger1 = time = 24
anim = 8512
ID = 10
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 32
supermovetime = -1

[State 8510, Scale]
type = modifyexplod
trigger1 = numexplod(10)
ID = 10
scale = 2 -(0.125 * (time -24)), 2 -(0.125 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8510, Safety]
type = removeexplod
trigger1 = time >= 40

[State 8510, End]
type = destroyself
trigger1 = time >= 40


;--- --Level 3 -----
[Statedef 8520]
type = A
velset = 0, 0
anim = 8520
sprpriority = 5

[State 8520, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignoreHitPause = 1

[State 8520, Assert]
type = assertspecial
trigger1 = time < 40
flag = noBG
flag2 = noFG

[State 8520, Rotate]
type = angleset
trigger1 = !time
value = 6 * (random % 60)

[State 8520, Rotate]
type = angleadd
trigger1 = 1
value = -6

[State 8520, Scale]
type = angledraw
trigger1 = time < 16
scale = (0.03125 * time), (0.03125 * time)
ignoreHitPause = 1

[State 8520, Scale]
type = angledraw
trigger1 = time >= 16
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8520, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignoreHitPause = 1

[State 8520, Portrait]
type = explod
trigger1 = !time
anim = 8525
ID = 20
sprpriority = -16
postype = back
removetime = 40
supermovetime = -1

[State 8520, Portrait]
type = explod
trigger1 = !time
anim = 8525
ID = 21
sprpriority = -16
postype = back
removetime = 40
supermovetime = -1

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(20) && time < 16
ID = 20
postype = back
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 121)
scale = 1 - (0.03125 * time), 1 - (0.03125 * time)
trans = addalpha
alpha = (8 * time), 256

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(21) && time < 16
ID = 21
postype = back
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 121)
scale = 2 - (0.09375 * time), 2 - (0.09375 * time)
trans = addalpha
alpha = (8 * time), 256

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(20) && (time = [16, 32])
ID = 20
postype = back
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 121)
scale = 0.5, 0.5
trans = addalpha
alpha = 256, 256

[State 8520, Scale Portrait 2b]
type = ModifyExplod
trigger1 = NumExplod(21) && (Time = [16,32])
ID = 21
scale = 0,0

[State 8520, Scale Portrait 1c]
type = ModifyExplod
trigger1 = NumExplod(20) && Time >= 32
ID = 20
posType = Back
pos = 160 + (8 * (Time - 32)), floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 128 - 16 * (Time - 32), 256

[State 8520, Scale Portrait 2c]
type = ModifyExplod
trigger1 = NumExplod(21) && Time >= 32
ID = 21
posType = Back
pos = 160 - (8 * (Time - 32)), floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 128 - 16 * (Time - 32), 256

[State 8520, Lines]
type = explod
trigger1 = time = 0 || time = 8 || time = 16 || time = 24
anim = 8521
ID = ifelse(time = 24, 4, ifelse(time = 16, 3, ifelse(time = 8, 2, 1)))
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 16
supermovetime = -1

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(1)
ID = 1
scale = 1 -(0.0625 * time), 1 -(0.0625 * time)
trans = addalpha
alpha = ifelse(time < 4, 64 * time, 256), 256

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(2)
ID = 2
scale = 1 -(0.0625 * (time -8)), 1 -(0.0625 * (time -8))
trans = addalpha
alpha = ifelse((time -8) < 4, 64 * (time -8), 256), 256

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(3)
ID = 3
scale = 1 -(0.0625 * (time -16)), 1 -(0.0625 * (time -16))
trans = addalpha
alpha = ifelse((time -16) < 4, 64 * (time -16), 256), 256

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(4)
ID = 4
scale = 1 -(0.0625 * (time -24)), 1 -(0.0625 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8520, Circle]
type = explod
trigger1 = time = 24
anim = 8522
ID = 10
sprpriority = 5
postype = p1
facing = ifelse(random < 500, -1, 1)
vfacing = ifelse(random < 500, -1, 1)
removetime = 32
supermovetime = -1

[State 8520, Scale]
type = modifyexplod
trigger1 = numexplod(10)
ID = 10
scale = 2 -(0.125 * (time -24)), 2 -(0.125 * (time -24))
trans = addalpha
alpha = ifelse((time -24) < 4, 64 * (time -24), 256), 256

[State 8520, Safety]
type = removeexplod
trigger1 = time >= 40

[State 8520, End]
type = destroyself
trigger1 = time >= 40

;Super Portrait Adjust
[StateDef 8525]
type=A
velset=0,0
anim=1
sprPriority=5

[State 8520, Assert: NoShadow]
type=AssertSpecial
trigger1=1
flag=NoShadow
ignoreHitPause=1

[State 8520, Assert: NoBG, NoFG]
type=null;AssertSpecial
trigger1=Time < 40
flag=NoBarDisplay
flag2=NoBG
flag3=NoFG

[State 8520, Rotate]
type=AngleSet
trigger1=!Time
value=6 * (Random % 60)

[State 8520, Rotate]
type=AngleAdd
trigger1=1
value=-6

[State 8520, Scale]
type=AngleDraw
trigger1=Time < 16
scale=(0.03125 * Time), (0.03125 * Time)
ignoreHitPause=1

[State 8520, Scale]
type=AngleDraw
trigger1=Time >= 16
scale=0.5, 0.5
ignoreHitPause=1

[State 8520, Transparency]
type=Trans
trigger1=1
trans=AddAlpha
alpha=256,256
ignoreHitPause=1

[State 8520, Portrait 1]
type=Explod
trigger1=!Time
anim=8525 + Root, var(41)
ID=20
sprPriority=-16
posType=Back
removeTime=40
superMoveTime=-1

[State 8520, Portrait 2]
type=Explod
trigger1=!Time
anim=8525 + Root, var(41)
ID=21
sprPriority=-16
posType=Back
removeTime=40
superMoveTime=-1

[State 8520, Scale Portrait 1a]
type=ModifyExplod
trigger1=NumExplod(20) && Time < 16
ID=20
posType=Back
pos=160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale=1 - (0.03125 * Time), 1 - (0.03125 * Time)
trans=AddAlpha
alpha=(8 * Time), 256

[State 8520, Scale Portrait 2a]
type=ModifyExplod
trigger1=NumExplod(21) && Time < 16
ID=21
posType=Back
pos=160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale=2 - (0.09375 * Time), 2 - (0.09375 * Time)
trans=AddAlpha
alpha=(8 * Time), 256

[State 8520, Scale Portrait 1b]
type=ModifyExplod
trigger1=NumExplod(20) && (Time=[16,32])
ID=20
posType=Back
pos=160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale=0.5, 0.5
trans=AddAlpha
alpha=256, 256

[State 8520, Scale Portrait 2b]
type=ModifyExplod
trigger1=NumExplod(21) && (Time=[16,32])
ID=21
scale=0,0

[State 8520, Scale Portrait 1c]
type=ModifyExplod
trigger1=NumExplod(20) && Time >= 32
ID=20
posType=Back
pos=160 + (8 * (Time - 32)), floor((1.3333333 * GameHeight / GameWidth) * 120)
scale=0.5, 0.5
trans=AddAlpha
alpha=128 - 16 * (Time - 32), 256

[State 8520, Scale Portrait 2c]
type=ModifyExplod
trigger1=NumExplod(21) && Time >= 32
ID=21
posType=Back
pos=160 - (8 * (Time - 32)), floor((1.3333333 * GameHeight / GameWidth) * 120)
scale=0.5, 0.5
trans=AddAlpha
alpha=128 - 16 * (Time - 32), 256

[State 8520, Remove Explods]
type=RemoveExplod
trigger1=Time >= 40
trigger2=root,stateno!=[3050,3510]

[State 8520, End]
type=DestroySelf
trigger1=Time >= 40
trigger2=root,stateno!=[3050,3510]

;; SPECIAL FINISH ==
[Statedef 8550]
ctrl = 0
anim = 1
sprpriority = -10

[State 8600, Assert]
type = AssertSpecial
trigger1 = 1
flag = NoMusic
flag2 = nofg
ignorehitpause=1

[State 8600, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S8600,0
volume = 255
channel = 0
persistent=0

[State 8600, Explod]
type = Explod
trigger1 = time = 0
anim =8550
ID = 8600
pos = 0,0
postype = back
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime =30
supermovetime = 9999
pausemovetime = 9999
scale = 1.2,1.2
sprpriority = -990
ontop = 0
shadow = 0,0,0
ownpal = 0
removeongethit = 1
ignorehitpause = 1
;persistent =

[State 8600, ModifyExplod]
type = ModifyExplod
trigger1 = time>=1
ID = 8600
trans = addalpha
alpha=256-((time)*10),256

[State 8600, End]
type=removeexplod
trigger1= time>=120
trigger2= roundstate<3
[State 8600, End]
type=destroyself
trigger1= roundstate!=3


;SUPER FINISH
[Statedef 8600]
type = A
velSet = 0,0
anim = 1

[State 8600, Super Finish Sound]
type = PlaySnd
trigger1 = !Time
value = 8600,1
channel = 0
persistent=0

[State 8600, SndPan]
type = SndPan
trigger1 = Time <= 80
channel = 1
absPan = ceil(sin(GameTime / 20.0 * pi) * 160)

[State 8600, BG PalFX]
type = BGpalFX
trigger1 = Time < 16
time = 1
mul = 0, 0, 0

[State 8600, BG PalFX]
type = BGpalFX
trigger1 = Time = [16,24)
time = 1
mul = 32 * (Time - 16), 32 * (Time - 16), 32 * (Time - 16)

[State 8600, Move Name: Custom Combo]
type = VarSet
trigger1= !Time && Root, var(23) = 900
var(0) = 1

[State 8600, Move Name: Bunker Buster]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3000,3099])
var(0) = 2

[State 8600, Move Name: Maxima Revenger]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3100,3199])
var(0) = 3

[State 8600, Move Name: Maxima Laser]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3500,3599])
var(0) = 4

[State 8600, Super Finish Explod]
type = Explod
trigger1 = !Time
anim = 8600
ID = 8600
ontop = 1
postype = Left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Super Finish Explod Fade]
type = ModifyExplod
trigger1 = NumExplod(8600)
ID = 8600
trans = AddAlpha
alpha = ifElse(Time < 16, 256, 256 - 32 * (Time - 16)), 256

[State 8600, Text 1]
type = Explod
trigger1 = !Time && var(0)
anim = 8610 + var(0)
ID = 10
onTop = 1
posType = Left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Text 2]
type = Explod
trigger1 = !Time && var(0)
anim = 8610 + var(0)
ID = 11
onTop = 1
posType = left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Text 1 Fade]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
trans = AddAlpha
alpha = ifElse(Time < 16, 256, 256 - 32 * (Time - 16)), ifElse(Time < 16, 0, 32 * (Time - 16))

[State 8600, Text 2 Fade]
type = ModifyExplod
trigger1 = NumExplod(11)
ID = 11
scale = 0.5 + (0.0625 * Time), 0.5 + (0.0625 * Time)
trans = AddAlpha
alpha = 256 - (32 * Time), 32 * Time

[State 8600, Circle Explod]
type = Explod
trigger1 = !Time
anim = 8601
ID = 8601
under = 1
posType = Left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
bindTime = -1
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Circle Fade]
type = ModifyExplod
trigger1 = NumExplod(8601)
ID = 8601
scale = (0.25 * time) * (1.3333333 * GameHeight / GameWidth), (0.25 * time) * (1.3333333 * GameHeight / GameWidth)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8600, Assert: NoFG]
type = AssertSpecial
trigger1 = Time < 16
flag = NoFG



[State 8600, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 24
trigger2 = RoundState < 3

[State 8600, End]
type = DestroySelf
trigger1 = RoundState < 3

;CAMERA CONTROL
[Statedef 8999]
type = S
velset = 0, 0
anim = 1

[State 8999, bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1
ignoreHitPause = 1

[State 8999, End]
type = destroyself
trigger1 = roundstate = 2

;------------------------------------------------------------------------------------
;Lightning FX
[Statedef 6240]
physics = N
velset = 0,0
anim = 1
sprpriority = 4

[State 7181, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = S2,10
volume = 255
ignorehitpause = 1

[State 7181, LIGHTING]
type=explod
trigger1 = Time%3 = 0
anim = 6240+random%6
ID=7180
sprpriority=3
postype=p2
vel=-.2,-.75
bindtime = -1
pos= (enemynear,const(size.mid.pos.x)), ifelse((enemynear,statetype=L), 0, (enemynear,const(size.mid.pos.y) + 15))
random=40,40
scale=.4,.4
ownpal = 0

[State 7181, PosAdd]
type = PosAdd
trigger1 = 1
x = ceil(p2dist x)
y = ceil(p2dist y)

[State End]
type=destroyself
triggerall= numenemy
trigger1= enemynear,ctrl
trigger2= enemynear,movetype!=H || enemynear,stateno=5300
trigger3= enemynear,statetype=L && (enemynear,stateno!=[3080,3085])
[State End]
type=destroyself
trigger1= !numenemy || time>=60

;---------------------------------------------------------------------------
;Wall-knockdown
[Statedef 4060]
type = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 4061, screen]
type=screenbound
trigger1= 1
value=1
movecamera=0,1
[State 4060, anim]
type=changeanim
trigger1= !time&&selfanimexist(5035)
value=5035
[State 4060, anim]
type=changeanim
trigger1= !time&&!selfanimexist(5035)&&selfanimexist(5030)
value=5030
[State 4060, anim]
type=changeanim2
trigger1= !time&&!selfanimexist(5035)&&!selfanimexist(5030)
value=4020
[State 4060, Turn]
type = Turn
trigger1 = Time = 0
trigger1 = P2Dist X < 0

[State 4060, VelSet]
type = VelSet
trigger1 = !time
x = -19
y = Ifelse(BackEdgeBodyDist<=35,-8,-4)

[State 4060, ChangeState]
type = ChangeState
triggerall = AnimElem = 1, > 0
trigger1 = BackEdgeBodyDist <= 5
trigger2 = Time >= 60
value = 4061
;---------------------------------------------------------------------------
[Statedef 4061]
type = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 4061, screen]
type=screenbound
trigger1= 1
value=1
movecamera=0,1
[State 4061, push]
type=playerpush
trigger1= 1
value=1
[State 4061, pos]
type=posset
trigger1= 1
x=-160*facing
[State 4061, pos]
type=posfreeze
trigger1= 1
x=1
y=1

[State 4061, Anim]
type=changeanim
trigger1= !time&&selfanimexist(5051)
value=5051
[State 4061, Anim]
type=changeanim
trigger1= !time&&!selfanimexist(5051)&&selfanimexist(5050)
value=5050
[State 4060, anim]
type=changeanim2
trigger1= !time&&!selfanimexist(5051)&&!selfanimexist(5050)
value=4020
elem=3
[State 4061, EnvShake]
type = EnvShake
trigger1 = !Time
time = 14
ampl = 6

[State 4061, ChangeState]
type = ChangeState
trigger1=time=10
value = 4062
;---------------------------------------------------------------------------
[Statedef 4062]
type = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1

[State 0, Turn]
type = Turn
trigger1 =!time
[State 4062, screen]
type=screenbound
trigger1= 1
value=1
movecamera=0,1
[State 4062, Anim]
type=changeanim
trigger1= !time&&selfanimexist(5061)
value=5061
[State 4062, Anim]
type=changeanim
trigger1= !time&&!selfanimexist(5061)&&selfanimexist(5062)
value=5062
[State 4062, Anim]
type=changeanim
trigger1= !time&&!selfanimexist(5061)&&!selfanimexist(5062)&&selfanimexist(5070)
value=5070
[State 4062, Anim]
type=changeanim
trigger1= !time&&!selfanimexist(5061)&&!selfanimexist(5062)&&!selfanimexist(5070)&&selfanimexist(5050)
value=5050
[State 4060, anim]
type=changeanim2
trigger1= !time&&!selfanimexist(5061)&&!selfanimexist(5062)&&!selfanimexist(5070)&&!selfanimexist(5050)
value=4020
elem=4
[State 4062, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = -2
y = -2

[State 4062, VelAdd]
type = VelAdd
Trigger1 = 1
y = .45

[State 4062, SelfState]
type = SelfState
trigger1 = Pos Y >= 0&&Vel Y > 0
value = 5100
;---------------------------------------------------------------------------
;Custom-ceiling bounce
[Statedef 4065]
type = A
movetype= H
physics = N
velset = 0,0
sprpriority = 1
facep2=1

[State 4065, anim2]
type=changeanim2
trigger1= !time
value=4065
[State 4065, VelSet]
type = VelSet
trigger1 =!time
x = -6
y = -10

[State 4065, ScreenBound]
type = ScreenBound
trigger1 =1
value = 1
movecamera = 1,0

[State 4060, ChangeState]
type = ChangeState
trigger1 = ceil(pos y<=-145)
trigger2 = Time=50
value = 4066

;---------------------------------------------------------------------------
;M-4 Type: Vapour Cannon
[Statedef 1005]
physics=N
velset=0,0
anim=1005
sprpriority=4

[State 1010,Effect]
type=Explod
trigger1=AnimElem=4
anim=1006
id = 1006
pos=65,5
postype=P1
sprpriority=5
ontop=1
bindtime=1
scale=.575,.525

[State 0, BindToRoot]
type = BindToRoot
trigger1 =animelemtime(1)>=0
pos=-35,-6
ignorehitpause =1
[State 0, BindToRoot]
type = BindToRoot
trigger1 =animelemtime(2)>=0
pos=-28,-8
ignorehitpause =1
[State 0, BindToRoot]
type = BindToRoot
trigger1 =animelemtime(2)>=2
pos=-8,-5
ignorehitpause =1
[State 0, BindToRoot]
type = BindToRoot
trigger1 =animelemtime(3)>=0
pos=-25,-9
ignorehitpause =1
[State 0, BindToRoot]
type = BindToRoot
trigger1 =animelemtime(4)>=0
pos=-35,-8
ignorehitpause =1
[State 0, BindToRoot]
type = BindToRoot
trigger1 =animelemtime(5)>=0
pos=-25,-8
ignorehitpause =1
[State 0, BindToRoot]
type = BindToRoot
trigger1 =animelemtime(7)>=0
pos=-10,-8
ignorehitpause =1

[State 1010, noshadow]
type=assertspecial
trigger1= 1
flag=noshadow
ignorehitpause=1

[State 1010, end]
type=Changestate
trigger1=root,Movetype=H
trigger2=!animtime
trigger3=root,stateno!=[1000,1050]
value = 1006

;---------------------------------------------------------------------------
;M-19 Type: Blitz Cannon
[Statedef 1006]
physics=N
velset=0,0
anim=1
sprpriority=4

[State 0, RemoveExplod]
type = RemoveExplod
trigger1 = 1
id = 1006

[State 1010, end]
type=destroyself
trigger1=!time

;---------------------------------------------------------------------------
;M-19 Type: Blitz Cannon
[Statedef 1305]
physics=N
velset=0,0
anim=1305
sprpriority=4

[State 0, BindToRoot]
type = BindToRoot
trigger1 =root,animelemtime(7)<=0
pos=-5,60
ignorehitpause =1

[State 1010, noshadow]
type=assertspecial
trigger1= 1
flag=noshadow
ignorehitpause=1

[State 1010, end]
type=destroyself
trigger1=root,Movetype=H
trigger2=!animtime

;---------------------------------------------------------------------------
;Bunker Buster Helper 1
[Statedef 3007]
type = S
ctrl = 0
anim = 3007
velset = 0,0
movetype = A
physics = N
sprpriority = 3

;---------------------[“–gŠÖŒW]
[state a]
type = nothitby
trigger1 = 1
value = SCA
time = -1


;---------------------[ƒqƒbƒgƒGƒtƒFƒNƒg]
[State explod];ƒqƒbƒgƒGƒtƒFƒNƒg
type = Explod
trigger1 = movehit = 1
anim = 7002
id = 7000
sprpriority = 20
postype = p1
pos = 146/2,-122/2
bindtime = 1
supermove = 999
pausemove = 999
ignorehitpause = 1
persistent = 0
under = 0
ontop = 1
ownpal = 1
scale = 0.5,0.5

[State explod];ƒK[ƒhƒGƒtƒFƒNƒg
type = Explod
trigger1 = moveguarded = 1
anim = 7052
id = 7000
sprpriority = 20
postype = p1
pos = 146/2,-122/2
bindtime = 1
supermove = 999
pausemove = 999
ignorehitpause = 1
persistent = 0
under = 0
ontop = 1
ownpal = 1
scale = 0.5,0.5
facing = -1


;---------------------[UŒ‚]
[State 300, 2]
type = HitDef
triggerall = root,var(7) = 0
triggerall = enemynear,stateno != [5040,5049]
trigger1 = animelem = 2
attr = S, HP
hitflag = MAFD
animtype = hard
damage = 40,7
priority = 5, Hit
getpower = 0,0
guardflag = M
pausetime = 2,2
guard.pausetime = 0,12
sparkno = s-1
sparkxy = -12,-90
hitsound = S2,6
guardsound = s3,1
guard.sparkno = s-1
ground.type = high
ground.slidetime = 24
ground.hittime = 24
guard.hittime = (24) - 6
ground.velocity = -2.1,-11.5
air.velocity = -2.1,-11.5
air.hittime = 120
guard.velocity = -9
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
ID = 3000
nochainID = 9999
p2facing = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 1805, Strength]
type=varset
trigger1=!time
var(10)=root, var(10)
[State 1805, movehitvar]
type=varset
trigger1=movecontact && numtarget
trigger1=!(target, ishelper)
var(3)=1
ignorehitpause=1
[State 1805, VarAdd]
type=VarAdd
trigger1 =!time
var(8)=1

[State 1805, HitCount]
type=ParentVarAdd
trigger1=MoveContact=1 && NumTarget
var(13)=1
[State 1805, Juggle Points]
type=ParentVarAdd
trigger1=MoveContact=1 && NumTarget
var(15)=1
[State 1805, ProjContact]
type=VarSet
trigger1=MoveContact=1 && NumTarget
var(18)=1
[State 1805, ProjContact]
type=ParentVarSet
trigger1=MoveContact=1 && NumTarget
trigger1=Root, StateNo=[1500,1590]
var(18)=1

[State 1606, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8005)
ID = 8000
name = "Spark"
posType = P1
pos= ceil(p2dist x), (target, const(size.mid.pos.y))
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1606, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos= ceil(p2dist x),-30
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[state a]
type = changestate
trigger1 = animtime = 0
value = 3015
;---------------------------------------------------------------------------
;Bunker Buster Helper 2
[Statedef 3008]
type = S
ctrl = 0
anim = 3008
velset = 0,0
movetype = A
physics = N
sprpriority = 3

;---------------------[“–gŠÖŒW]
[state a]
type = nothitby
trigger1 = 1
value = SCA
time = -1


;---------------------[ƒqƒbƒgƒGƒtƒFƒNƒg]
[State explod];ƒqƒbƒgƒGƒtƒFƒNƒg
type = Explod
trigger1 = movehit = 1
anim = 7002
id = 7000
sprpriority = 20
postype = p1
pos = 146/2,-62/2
bindtime = 1
supermove = 999
pausemove = 999
ignorehitpause = 1
persistent = 0
under = 0
ontop = 1
ownpal = 1
scale = 0.5,0.5

[State explod];ƒK[ƒhƒGƒtƒFƒNƒg
type = Explod
trigger1 = moveguarded = 1
anim = 7052
id = 7000
sprpriority = 20
postype = p1
pos = 146/2,-62/2
bindtime = 1
supermove = 999
pausemove = 999
ignorehitpause = 1
persistent = 0
under = 0
ontop = 1
ownpal = 1
scale = 0.5,0.5
facing = -1


;---------------------[UŒ‚]
[State 300, 2]
type = HitDef
triggerall = root,var(7) = 0
triggerall = enemynear,stateno != [5040,5049]
trigger1 = animelem = 1
attr = S, HP
animtype = hard
damage = 140,7
priority = 5, Hit
getpower = 0,0
hitflag = MAFD
guardflag = M
pausetime = 2,2
guard.pausetime = 0,12
sparkno = s-1
sparkxy = -12,-90
hitsound = S2,6
guardsound = s3,1
guard.sparkno = s-1
ground.type = high
ground.slidetime = 24
ground.hittime = 24
guard.hittime = (24) - 6
ground.velocity = -3.2,-6.5
air.velocity = -3.2,-6.5
air.hittime = 120
guard.velocity = -9
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
ID = 3000
nochainID = 9999
p2facing = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 1805, Strength]
type=varset
trigger1=!time
var(10)=root, var(10)
[State 1805, movehitvar]
type=varset
trigger1=movecontact && numtarget
trigger1=!(target, ishelper)
var(3)=1
ignorehitpause=1
[State 1805, VarAdd]
type=VarAdd
trigger1 =!time
var(8)=1

[State 1805, HitCount]
type=ParentVarAdd
trigger1=MoveContact=1 && NumTarget
var(13)=1
[State 1805, Juggle Points]
type=ParentVarAdd
trigger1=MoveContact=1 && NumTarget
var(15)=1
[State 1805, ProjContact]
type=VarSet
trigger1=MoveContact=1 && NumTarget
var(18)=1
[State 1805, ProjContact]
type=ParentVarSet
trigger1=MoveContact=1 && NumTarget
trigger1=Root, StateNo=[1500,1590]
var(18)=1

[State 1606, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8005)
ID = 8000
name = "Spark"
posType = P1
pos= ceil(p2dist x), (target, const(size.mid.pos.y))
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1606, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos= ceil(p2dist x),-30
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[state a]
type = changestate
trigger1 = animtime = 0
value = 3015

;---------------------------------------------------------------------------
;Bunker Buster Helper 3
[Statedef 3009]
type = S
ctrl = 0
anim = 3009
velset = 0,0
movetype = A
physics = N
sprpriority = 3

;---------------------[“–gŠÖŒW]
[state a]
type = nothitby
trigger1 = 1
value = SCA
time = -1


;---------------------[ƒqƒbƒgƒGƒtƒFƒNƒg]
[State explod];ƒqƒbƒgƒGƒtƒFƒNƒg
type = Explod
trigger1 = movehit = 1
anim = 7002
id = 7000
sprpriority = 20
postype = p1
pos = 146/2,-122/2
bindtime = 1
supermove = 999
pausemove = 999
ignorehitpause = 1
persistent = 0
under = 0
ontop = 1
ownpal = 1
scale = 0.5,0.5

[State explod];ƒK[ƒhƒGƒtƒFƒNƒg
type = Explod
trigger1 = moveguarded = 1
anim = 7052
id = 7000
sprpriority = 20
postype = p1
pos = 146/2,-122/2
bindtime = 1
supermove = 999
pausemove = 999
ignorehitpause = 1
persistent = 0
under = 0
ontop = 1
ownpal = 1
scale = 0.5,0.5
facing = -1


;---------------------[UŒ‚]
[State 300, 2]
type = HitDef
triggerall = root,var(7) = 0
triggerall = enemynear,stateno != [5040,5049]
trigger1 = animelem = 2
attr = S, HP
hitflag = MAFD
animtype = hard
damage = 40,7
priority = 5, Hit
getpower = 0,0
guardflag = M
pausetime = 2,2
guard.pausetime = 0,12
sparkno = s-1
sparkxy = -12,-90
hitsound = S2,6
guardsound = s3,1
guard.sparkno = s-1
ground.type = high
ground.slidetime = 24
ground.hittime = 24
guard.hittime = (24) - 6
ground.velocity = -2.1,-11.5
air.velocity = -2.1,-11.5
air.hittime = 120
guard.velocity = -9
yAccel = (0.5 + (ComboCount * 0.01))
fall = 1
fall.recover = 0
ID = 3000
nochainID = 9999
p2facing = 1
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0

[State 1805, Strength]
type=varset
trigger1=!time
var(10)=root, var(10)
[State 1805, movehitvar]
type=varset
trigger1=movecontact && numtarget
trigger1=!(target, ishelper)
var(3)=1
ignorehitpause=1
[State 1805, VarAdd]
type=VarAdd
trigger1 =!time
var(8)=1

[State 1805, HitCount]
type=ParentVarAdd
trigger1=MoveContact=1 && NumTarget
var(13)=1
[State 1805, Juggle Points]
type=ParentVarAdd
trigger1=MoveContact=1 && NumTarget
var(15)=1
[State 1805, ProjContact]
type=VarSet
trigger1=MoveContact=1 && NumTarget
var(18)=1
[State 1805, ProjContact]
type=ParentVarSet
trigger1=MoveContact=1 && NumTarget
trigger1=Root, StateNo=[1500,1590]
var(18)=1

[State 1606, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8005)
ID = 8000
name = "Spark"
posType = P1
pos= ceil(p2dist x), (target, const(size.mid.pos.y))
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1606, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos= ceil(p2dist x),-30
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[state a]
type = changestate
trigger1 = animtime = 0
value = 3015

;Wait
[StateDef 3015]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 1008, End]
type = DestroySelf
triggerall = root, stateno != [3000,3099]
trigger1 = 1

; Maxima Laser Helper 1
[Statedef 3550]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 3055, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 3550
ignorehitpause = 1
[State 3055, hitby]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 3055, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 3055, Bind]
type = bindtoroot
trigger1 = 1
pos = -10, -85

[State 3055, Anim]
type = changeanim
trigger1 = !time && !prevstateno
value = 3550

[State 3055, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(3) = 1
ignorehitpause = 1
[State 3055, movehitvar2]
type = varset
trigger1 = !time && prevstateno
var(4) = animelemno(0)
ignorehitpause = 1

[State 3055, HitSound]
type = playsnd
trigger1 = movehit && numtarget
trigger1 = !(target, time) && target, movetype = H
value = 2,6
channel = 1
ignorehitpause = 1

[State 0, VarAdd]
type = Varadd
trigger1 =!time
var(8)=1
[State 0, VarSet]
type = VarSet
trigger1 =!time
var(2)=root,var(2)

[State 3055, Hit]
type = hitdef
trigger1 = Animelemtime(65) <= 0 && (GameTime % 8)
attr=S,HP
animtype=hard
damage=50
hitflag=MAF
guardflag=M
hitsound=s0,78
guardsound=s2,1
pausetime=4,4
guard.pausetime=4,4
sparkno=-1
sparkxy=-10,-70
guard.sparkno=-1
ground.type=High
ground.hittime=8
guard.hittime = (8) - 6
ground.slidetime=2
ground.velocity=Ifelse(var(8)<25,-6,-12),Ifelse(var(8)<25,-1,-5)
air.velocity=Ifelse(var(8)<25,-6,-12),Ifelse(var(8)<25,-1,-5)
fall.recover = 0
fall=1
yAccel = (0.5 + (ComboCount * 0.01))
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
sprpriority = 4
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time=10
envshake.ampl=6
p2stateno = Ifelse(var(8)<25,3520,3525)
id = 3005

[State 3005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
trigger1 = (target, movetype = H) && !(target, time)
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8005)
ID = 8000
name = "Spark"
posType = P2
pos = (target, const(size.ground.front)), (target, const(size.mid.pos.y))
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 1
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && (root, var(29))
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3006, Parent Hit Count]
type = ParentVarAdd
trigger1 = MoveContact = 1 && NumTarget
var(13) = 1
[State 3006, Self Hit Count]
type = VarAdd
trigger1 = MoveContact = 1 && NumTarget
var(13) = 1
[State 3006, Juggle Points]
type = ParentVarAdd
trigger1 = MoveContact = 1 && NumTarget
var(15) = 1

[State 0, End]
type = changestate
trigger1 = movecontact
value = Ifelse(var(8)<25,3550,3551)

[State 3055, End]
type = Destroyself
trigger1 = !animtime || root, stateno != 3500

; Maxima Laser Helper 2
[Statedef 3551]
type = A
physics = N
movetype = I
ctrl = 0
velset = 0, 0
sprpriority = 4

[State 3055, Anim]
type = changeanim
trigger1 = !time && !prevstateno
value = 3550

[State 3056, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3056, End]
type = destroyself
trigger1 = !Animtime

; Maxima Laser Helper 3
[Statedef 3552]
physics = N
movetype = A
anim = 3552

[State 3054, NHB]
type = nothitby
trigger1 = 1
time = -1
value = SCA
[State 3054, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 3552
ignorehitpause = 1
[State 3054, bound]
type = screenbound
trigger1 = 1
value = 0
[State 3054, Push]
type = playerpush
trigger1 = 1
value = 1
[State 3054, Vel]
type = velset
trigger1 = !time && !prevstateno
x = 40
[State 3054, Vel]
type = velmul
trigger1 = 1
x = 0.9
[State 3054, Snd]
type = playsnd
trigger1 = !time && !prevstateno
value = 5, 2
[State 3054, Hit]
type = hitdef
trigger1 = !time
priority = 4, Hit
attr = S, SP
damage = 0, 0
numhits = 0
animtype = Back
hitflag = MAF
guard.dist = 0
sparkno = -1
guard.sparkno = -1
guardsound = s3,1
ground.type = High
ground.slidetime = 16
ground.hittime = 16
guard.hittime = (16) - 6
ground.velocity = -8, -6
ground.cornerpush.veloff = 0
guard.velocity = -10.52
air.velocity = -8, -6
kill = 0
[State 3054, End]
type = destroyself
trigger1 = time >= 15