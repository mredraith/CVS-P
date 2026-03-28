; _________________________________________
;| Character by Author Name                |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================< HELPER STATES >========================================
;==============================================================================================

;========================<SPARKS>=============================
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
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8000, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.125 + (0.046875 * Time), 0.125 + (0.046875 * Time)
ignoreHitPause = 1

[State 8000, Transparency]
type = Trans
trigger1 = Time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8000, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

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
ignoreHitPause = 1

[State 8001, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)
ignoreHitPause = 1

[State 8001, Transparency]
type = Trans
trigger1 = time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8001, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

[State 8001, End]
type = DestroySelf
trigger1 = Time >= 8


;Weak Hit Spark
[StateDef 8010]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8010, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8010, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8010, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8010, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.3 - (Time * 0.03), 0.3 - (Time * 0.03)
ignoreHitPause = 1

[State 8010, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8010, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8010, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.15 + (0.009375 * Time), 0.15 + (0.009375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time),256

[State 8010, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.15 + (0.009375 * Time), 0.15 + (0.009375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8010, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.3 - (0.0375 * Time), 0.3 - (0.0375 * Time)
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8010, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8010, End]
type = DestroySelf
trigger1 = Time >= 16


;Medium Hit Spark
[StateDef 8011]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8011, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8011, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8011, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8011, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.35 - (Time * 0.035), 0.35 - (Time * 0.035)
ignoreHitPause = 1

[State 8011, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8011, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8011, Center]
type = Explod
trigger1 = !Time
anim = 8011
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
trigger1 = NumExplod(1)
ID = 1
scale = 0.175 + (0.0109375 * Time), 0.175 + (0.0109375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8011, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
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
trigger1 = NumExplod(2)
ID = 2
scale = 0.175 + (0.0109375 * Time), 0.175 + (0.0109375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8011, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
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
trigger1 = NumExplod(4)
ID = 4
scale = 0.35 - (0.04375 * Time), 0.35 - (0.04375 * Time)
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8011, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8011, End]
type = DestroySelf
trigger1 = Time >= 16


;Strong Hit Spark
[StateDef 8012]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8012, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8012, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8012, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8012, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.4 - (Time * 0.04), 0.4 - (Time * 0.04)
ignoreHitPause = 1

[State 8012, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8012, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8012, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.2 + (0.0125 * Time), 0.2 + (0.0125 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8012, Streaks Explod]
type = Explod
trigger1 = !time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.2 + (0.0125 * Time), 0.2 + (0.0125 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8012, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.4 - (0.05 * Time), 0.4 - (0.05 * Time)
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8012, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8012, End]
type = DestroySelf
trigger1 = Time >= 16


;Special Move Hit Spark
[StateDef 8013]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8013, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8013, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8013, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8013, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.45 - (Time * 0.045), 0.45 - (Time * 0.045)
ignoreHitPause = 1

[State 8012, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8013, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8013, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
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
trigger1 = NumExplod(1)
ID = 1
scale = 0.225 + (0.0140625 * Time), 0.225 + (0.0140625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8013, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
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
trigger1 = NumExplod(2)
ID = 2
scale = 0.225 + (0.0140625 * Time), 0.225 + (0.0140625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8013, P2 Back Explod]
type = Explod
trigger1 = !Time
anim = 8013
ID = 3
posType = P1
facing = -1
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale P2 Back Explod]
type = ModifyExplod
trigger1= NumExplod(3)
ID = 3
scale = 0.4, 0.4
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8013, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
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
trigger1 = NumExplod(4)
ID = 4
scale = 0.45 - (0.05625 * Time), 0.45 - (0.05625 * Time)
trans = AddAlpha
alpha = 192 - (24 * Time), 256

[State 8013, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8013, End]
type = DestroySelf
trigger1 = Time >= 16


;Super Hit Spark
[StateDef 8014]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8014, Assert: NoShadow]
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
trigger1 = !Time
anim = 8011
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
trigger1 = NumExplod(1)
ID = 1
scale = 0.25 + (0.015625 * Time), 0.25 + (0.015625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
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
trigger1 = NumExplod(2)
ID = 2
scale = 0.25 + (0.015625 * Time), 0.25 + (0.015625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, P2 Back Explod]
type = Explod
trigger1 = !Time
anim = 8013
ID = 3
posType = P1
facing = ifElse((Parent, StateNo = [3000,3999]), -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale P2 Back Explod]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 0.5,0.5
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8014, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
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

;Normal Slash Spark
[StateDef 8015]
type = A
physics = N
moveType = I
anim = 8015
velSet = 0,0
sprPriority = 5

[State 8015, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8015, AngleSet]
type = AngleSet
trigger1 = !Time
value = 15 * (Random % 24)

[State 8015, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = (0.5 + (Time * 0.15)) / 2, (1 - (Time * 0.1)) / 2
ignoreHitPause = 1

[State 8015, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8015, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8015, Center]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removetime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8015, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.175 + (0.0109375 * Time), 0.175 + (0.0109375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8015, Streaks Explod]
type = Explod
trigger1 = !time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8015, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.2 + (0.0125 * Time), 0.2 + (0.0125 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8015, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8015, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.3 - (0.0375 * Time), 0.3 - (0.0375 * Time)
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8015, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8015, End]
type = DestroySelf
trigger1 = Time >= 16

;Special Move Slash Spark
[StateDef 8016]
type = A
physics = N
moveType = I
anim = 8015
velSet = 0,0
sprPriority = 5

[State 8016, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8016, AngleSet]
type = AngleSet
trigger1 = !Time
value = 15 * (Random % 24)

[State 8016, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = (0.5 + (Time * 0.15)) / 2, (1 - (Time * 0.1)) / 2
ignoreHitPause = 1

[State 8016, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8016, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8016, Circle]
type = Explod
trigger1 = !Time
anim = 8016
ID = 8016
posType = p1
removeTime = 10
sprPriority = 5
pauseMoveTime = -1
superMoveTime = -1

[State 8016, Circle Scale]
type = ModifyExplod
trigger1 = NumExplod(8016)
ID = 8016
scale = 0.25 + (0.025 * Time), 0.25 + (0.025 * Time)
trans = AddAlpha
alpha = ceil(256 - 25.6 * Time), 256

[State 8016, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8016, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.225 + (0.0140625 * Time), 0.225 + (0.0140625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8016, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8016, End]
type = DestroySelf
trigger1 = Time >= 16

;Super Move Slash Spark
[StateDef 8017]
type = A
physics = N
moveType = I
anim = 8015
velSet = 0,0
sprPriority = 5

[State 8017, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8017, AngleSet]
type = AngleSet
trigger1 = !Time
value = 15 * (Random % 24)

[State 8017, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = (0.5 + (Time * 0.15)) / 2, (1 - (Time * 0.1)) / 2
ignoreHitPause = 1

[State 8017, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8017, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8017, Circle]
type = Explod
trigger1 = !Time
anim = 8016
ID = 8016
posType = p1
removeTime = 10
sprPriority = 5
pauseMoveTime = -1
superMoveTime = -1

[State 8017, Circle Scale]
type = ModifyExplod
trigger1 = NumExplod(8016)
ID = 8016
scale = 0.3 + (0.03 * Time), 0.3 + (0.03 * Time)
trans = AddAlpha
alpha = ceil(256 - 25.6 * Time), 256

[State 8017, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8017, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.25 + (0.015625 * Time), 0.25 + (0.015625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8017, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8017, End]
type = DestroySelf
trigger1 = Time >= 16

;Reversal Spark
[StateDef 8020]
type = A
physics = N
moveType = I
anim = 8020
velSet = 0,0
sprPriority = 5

[State 8020, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8020, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.25 + (0.09375 * Time), 0.25 + (0.09375 * Time)
ignoreHitPause = 1

[State 8020, Transparency]
type = Trans
trigger1 = Time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8020, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

[State 8020, End]
type = DestroySelf
trigger1 = Time >= 8



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


;========================< SUPERPAUSE FX >=============================
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
flag = nobardisplay
flag2 = noBG
flag3 = noFG

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


;SUPER FINISH
[Statedef 8600]
type = A
velset = 0, 0
anim = 1

[State 8600, Sound]
type = playsnd
trigger1 = !time
value = 8600,0
channel = 1

[State 8600, Snd]
type = sndpan
trigger1 = time <= 80
channel = 1
abspan = ceil(sin(gametime / 20.0 * pi) * 160)

[State 8600, BG PalFX]
type = bgpalfx
trigger1 = time < 16
time = 1
mul = 0, 0, 0

[State 8600, BG PalFX]
type = bgpalfx
trigger1 = time = [16, 24)
time = 1
mul = 32 * (time -16), 32 * (time -16), 32 * (time -16)

[State 8600, Move Name: Custom Combo]
type = varset
trigger1 = !time && root, var(23) = 900
var(0) = 1

[State 8600, Move Name: V-Slasher]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3000,3006])
var(0) = 2

[State 8600, Move Name: Rebel Spark]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3010,3019])
var(0) = 3

[State 8600, Move Name: Gravity Storm]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3020,3027])
var(0) = 4

[State 8600, Move Name: Rider Burst]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3030,3032])
var(0) = 5

[State 8600, Move Name: V-Slasher L.D.M.]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3040,3045])
var(0) = 6

[State 8600, MvC]
type = explod
trigger1 = !time
anim = 8600
ID = 8600
ontop = 1
postype = left
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * gameheight / gamewidth)
bindtime = -1
removetime = 32
pausemovetime = -1
supermovetime = -1

[State 8600, Fade]
type = modifyexplod
trigger1 = numexplod(8600)
ID = 8600
trans = addalpha
alpha = ifelse(time < 16, 256, 256 -32 * (time -16)), 256

[State 8600, Text]
type = explod
trigger1 = !time && var(0)
anim = 8610 + var(0)
ID = 10
ontop = 1
postype = left
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * gameheight / gamewidth)
bindtime = -1
removetime = 32
pausemovetime = -1
supermovetime = -1

[State 8600, Text]
type = explod
trigger1 = !time && var(0)
anim = 8610 + var(0)
ID = 11
ontop = 1
postype = left
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * gameheight / gamewidth)
bindtime = -1
removetime = 8
pausemovetime = -1
supermovetime = -1

[State 8600, Fade]
type = modifyexplod
trigger1 = numexplod(10)
ID = 10
trans = addalpha
alpha = ifelse(time < 16, 256, 256 -32 * (time -16)), ifelse(time < 16, 0, 32 * (time -16))

[State 8600, Fade]
type = modifyexplod
trigger1 = numexplod(11)
ID = 11
scale = 0.5 + (0.0625 * time), 0.5 + (0.0625 * time)
trans = addalpha
alpha = 256 - (32 * time), 32 * time

[State 8600, Circle]
type = explod
trigger1 = !time
anim = 8601
ID = 8601
under = 1
postype = left
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
bindtime = -1
removetime = 16
pausemovetime = -1
supermovetime = -1

[State 8600, Fade]
type = modifyexplod
trigger1 = numexplod(8601)
ID = 8601
scale = (0.25 * time) * (1.3333333 * gameheight / gamewidth), (0.25 * time) * (1.3333333 * gameheight / gamewidth)
trans = addalpha
alpha = 256 - (16 * time), 256

[State 8600, Assert]
type = assertspecial
trigger1 = time < 16
flag = noFG

[State 8600, Assert]
type = assertspecial
trigger1 = time < 24
flag = nobardisplay

[State 8600, End]
type = removeexplod
trigger1 = time >= 24
trigger2 = roundstate < 3

[State 8600, End]
type = destroyself
trigger1 = roundstate < 3

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

;---------------------------------------------------------------------------
;Baltic Launcher Ball
[StateDef 11010]
type = S
movetype= A
physics = N
velset = 0,0
ctrl = 0
anim = 11010
poweradd = 0
sprpriority = 2
hitcountpersist = 1

[State 11010, Trans]
type = Trans
trigger1 =  1
trans = add
ignorehitpause = 1

[State 11010, Damage Dampener]; Scaling in action (Light, Med, Heavy Baltic Ball)
type= Attackmulset
trigger1 = NumEnemy
trigger1 = !IsHelper(11014)
value= ifelse(enemynear, gethitvar(hitcount) < 3, 24, ifelse(enemynear, gethitvar(hitcount) >= 24, 2, 26 - enemynear, gethitvar(hitcount))) / 20.0
ignorehitpause= 1

[State 11010, Damage Dampener]; Scaling in action (EX Baltic Ball)
type= Attackmulset
trigger1 = NumEnemy
trigger1 = IsHelper(11014)
value= ifelse(enemynear, gethitvar(hitcount) < 3, 24, ifelse(enemynear, gethitvar(hitcount) >= 24, 2, 26 - enemynear, gethitvar(hitcount))) / 18.0
ignorehitpause= 1

[State 11010, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1

[State 11010, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 11010, VelSet]
type = VelSet
trigger1 = IsHelper(11012)
x = 1

[State 11010, PosAdd]
type = PosAdd
trigger1 = IsHelper(11014)
trigger1 = !MoveContact
x = 2.5

[State 11010, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S1010,1
volumescale = 200
channel = 1
freqmul = 1.0
loop = 0
pan = 0

[State 11010, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AP
slot = 0
stateno = 11011
time = 1
forceair = 0
ignorehitpause = 1

[State 11010, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AT
ignorehitpause = 1

[State 11010, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = IsHelper(11012)||IsHelper(11014)
value = 11012
;;=======================================================
;Light Baltic Ball
;;=======================================================
[State 11010, 1]
type = HitDef
triggerall = IsHelper(11010)
trigger1 = AnimElem = 2
attr = A, SP
damage = 45,2
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 2,16
guard.pausetime = 2,10
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
hitsound=S2,9
guardsound=S130,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 25
guard.hittime = (25) - 6
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 25
ground.cornerpush.veloff = 0
forcestand = 1
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
yaccel = 0.5

[State 11010, 2]
type = HitDef
triggerall = IsHelper(11010)
trigger1 = AnimElem = 4
attr = A, SP
damage = 15,2
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 2, 16
guard.pausetime = 2,10
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
hitsound=S2,9
guardsound=S130,0
ground.type = High
ground.slidetime = 5
ground.hittime = 25
guard.hittime = (25) - 6
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 25
ground.cornerpush.veloff = 0
forcestand = 1
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180

[State 11010, 3]
type = HitDef
triggerall = IsHelper(11010)
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
trigger3 = AnimElem = 10
trigger4 = AnimElem = 12
trigger5 = AnimElem = 14
attr = A, SP
damage = 5,2
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 2, 16
guard.pausetime = 2,10
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
hitsound=S2,9
guardsound=S130,0
ground.type = High
ground.slidetime = 5
ground.hittime = 25
guard.hittime = (25) - 6
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 25
ground.cornerpush.veloff = 0
forcestand = 1
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
yaccel = 0.5

[State 11010, 4]
type = HitDef
triggerall = IsHelper(11010)
trigger1 = AnimElem = 16
attr = A, SP
damage = 5,2
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 2,2
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
hitsound=S2,9
guardsound=S130,0
ground.type = High
ground.slidetime = 5
ground.hittime = 25
guard.hittime = (25) - 6
ground.velocity = -4,-8
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -4,-8
air.hittime = 25
ground.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
yaccel = 0.5
;;=======================================================
;Medium Baltic Ball
;;=======================================================
[State 11010, 5]
type = HitDef
triggerall = IsHelper(11011)
trigger1 = AnimElem = 2
attr = A, SP
damage = 45,2
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 2,18
guard.pausetime = 2,12
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
hitsound=S2,9
guardsound=S130,0
ground.type = High
ground.slidetime = 5
ground.hittime = 25
guard.hittime = (25) - 6
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 25
ground.cornerpush.veloff = 0
forcestand = 1
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
yaccel = 0.5

[State 11010, 6]
type = HitDef
triggerall = IsHelper(11011)
trigger1 = AnimElem = 4
attr = A, SP
damage = 20,2
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 2, 18
guard.pausetime = 2,12
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
hitsound=S2,9
guardsound=S130,0
ground.type = High
ground.slidetime = 5
ground.hittime = 25
guard.hittime = (25) - 6
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 25
ground.cornerpush.veloff = 0
forcestand = 1
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
yaccel = 0.5

[State 11010, 7]
type = HitDef
triggerall = IsHelper(11011)
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
trigger3 = AnimElem = 10
trigger4 = AnimElem = 12
trigger5 = AnimElem = 14
trigger6 = AnimElem = 16
attr = A, SP
damage = 5,2
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 2, 18
guard.pausetime = 2,12
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
hitsound=S2,9
guardsound=S130,0
ground.type = High
ground.slidetime = 5
ground.hittime = 25
guard.hittime = (25) - 6
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 25
ground.cornerpush.veloff = 0
forcestand = 1
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
yaccel = 0.5

[State 11010, 8]
type = HitDef
triggerall = IsHelper(11011)
trigger1 = AnimElem = 18
attr = A, SP
damage = 5,5
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 2,2
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
hitsound=S2,9
guardsound=S130,0
ground.type = High
ground.slidetime = 5
ground.hittime = 25
guard.hittime = (25) - 6
ground.velocity = -4,-8
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -4,-8
air.hittime = 25
ground.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
yaccel = 0.5
;;=======================================================
;Heavy Baltic Ball
;;=======================================================
[State 11010, 9]
type = HitDef
triggerall = IsHelper(11012)
trigger1 = AnimElem = 2
attr = A, SP
damage = 50,5
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 2, 20
guard.pausetime = 2,14
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
hitsound=S2,9
guardsound=S130,0
ground.type = High
ground.slidetime = 5
ground.hittime = 25
guard.hittime = (25) - 6
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 25
ground.cornerpush.veloff = 0
forcestand = 1
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
yaccel = 0.5

[State 11010, 10]
type = HitDef
triggerall = IsHelper(11012)
trigger1 = AnimElem = 4
attr = A, SP
damage = 15,1
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 2,2
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
hitsound=S2,9
guardsound=S130,0
ground.type = High
ground.slidetime = 5
ground.hittime = 25
guard.hittime = (25) - 6
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 25
ground.cornerpush.veloff = 0
forcestand = 1
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
yaccel = 0.5

[State 11010, 11]
type = HitDef
triggerall = IsHelper(11012)
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
trigger3 = AnimElem = 10
trigger4 = AnimElem = 12
trigger5 = AnimElem = 14
trigger6 = AnimElem = 16
trigger7 = AnimElem = 18
trigger8 = AnimElem = 20
trigger9 = AnimElem = 22
attr = A, SP
damage = 5,2
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 2,2
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
hitsound=S2,9
guardsound=S130,0
ground.type = High
ground.slidetime = 5
ground.hittime = 25
guard.hittime = (25) - 6
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 25
ground.cornerpush.veloff = 0
forcestand = 1
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
yaccel = 0.5

[State 11010, 12]
type = HitDef
triggerall = IsHelper(11012)
trigger1 = AnimElem = 24
attr = A, SP
damage = 5,2
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 2,2
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
hitsound=S2,9
guardsound=S130,0
ground.type = High
ground.slidetime = 5
ground.hittime = 25
guard.hittime = (25) - 6
ground.velocity = -4,-8
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -4,-8
air.hittime = 25
ground.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
yaccel = 0.5
;;=======================================================
;EX Baltic Ball
;;=======================================================
[State 11010, 13]
type = HitDef
triggerall = IfElse((EnemyNear,HitFall=1),Parent,Var(15)<15,1)
triggerall = IsHelper(11014)
trigger1 = Time = [2,4]
trigger2 = Time = [7,9]
trigger3 = Time = [12,14]
trigger4 = Time = [17,20]
trigger5 = Time = [23,25]
trigger6 = Time = [23,25]
attr = A, SP
damage = 10,1
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 2,2
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
hitsound=S2,9
guardsound=S130,0
ground.type = High
ground.slidetime = 10
ground.hittime = 25
guard.hittime = (25) - 6
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = 0
air.hittime = 25
ground.cornerpush.veloff = 0
forcestand = 1
getpower = 0
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
yaccel = 0.5

[State 11010, 14]
type = HitDef
triggerall = IfElse((EnemyNear,HitFall=1),Parent,Var(15)<15,1)
triggerall = IsHelper(11014)
trigger1 = Time = 27
attr = A, SP
damage = 25,5
animtype = Heavy
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 2,2
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
hitsound=S2,9
guardsound=S130,0
ground.type = High
ground.slidetime = 5
ground.hittime = 25
guard.hittime = (25) - 6
ground.velocity = -4,-8
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -4,-8
air.hittime = 25
ground.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
getpower = 0
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
yaccel = 0.5

[State 11010, HitSpark]
type=Helper
trigger1=movecontact=1 && numtarget
trigger1=(enemynear, movetype=H) && !(target, time)
helperType=Normal
stateNo=ifElse(MoveGuarded, 8001, 8016)
ID=8000
name="Spark"
posType=P1
pos = -10, 0
facing=-1
ownPal=0
size.xScale=1.0
size.yScale=1.0
pauseMoveTime=65535
superMoveTime=65535
ignoreHitPause=1
persistent=1

[State 11010, StateTypeSet]
type = StateTypeSet
trigger1 = IsHelper(11010)
trigger1 = UniqHitCount>=8
trigger2 = IsHelper(11011)
trigger2 = UniqHitCount>=9
trigger3 = IsHelper(11012)
trigger3 = UniqHitCount>=13
trigger4 = Anim = 11010
trigger4 = AnimElem = 21
trigger5 = Anim = 11012
trigger5 = AnimElem = 31
movetype = I
ignorehitpause = 1

;Set Scale Var
[State 11010, VarSet]
type = VarSet
trigger1 = !Time
fv = 0
value = 1

;Decrease Scale Var
[State 11010, VarAdd]
type = VarAdd
trigger1 = IsHelper(11010)
trigger1 = AnimElem =17,>=0
trigger2 = IsHelper(11011)
trigger2 = AnimElem =19,>=0
trigger3 = IsHelper(11012)
trigger3 = AnimElem =25,>=0
trigger4 = IsHelper(11014)
trigger4 = Time>=28
fv = 0
value = -0.1

;Fade out
[State 11010, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(11010)
trigger1 = AnimElem =17,>=0
trigger2 = IsHelper(11011)
trigger2 = AnimElem =19,>=0
trigger3 = IsHelper(11012)
trigger3 = AnimElem =25,>=0
trigger4 = IsHelper(11014)
trigger4 = Time>=28
scale = fvar(0),fvar(0)

[State 11010, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Time < 10
trigger2 = Parent,StateNo>=5000
trigger3 = MoveReversed
;---------------------------------------------------------------------------
;Projectile Null State
[StateDef 11011]
type = A
movetype= A
physics = N
juggle = 0
ctrl = 0
anim = 2990
poweradd = 0
sprpriority = 2

[State 11011, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 11011, DestroySelf]
type = DestroySelf
trigger1 = Time = 10

;---------------------------------------------------------------------------
;X-Calibur
[StateDef 11030]
type = S
movetype= A
physics = N
juggle = 0
velset = 0,0
ctrl = 0
anim = 11030
poweradd = 0
sprpriority = 3

[State 11030, Damage Dampener]; Scaling in action
type= Attackmulset
trigger1 = NumEnemy
value= ifelse(enemynear, gethitvar(hitcount) < 3, 24, ifelse(enemynear, gethitvar(hitcount) >= 24, 2, 26 - enemynear, gethitvar(hitcount))) / 24.0
ignorehitpause= 1

[State 11030, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1

[State 11030, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AP
slot = 0
stateno = 11011
time = 1
forceair = 0
ignorehitpause = 1

[State 11030, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AT
ignorehitpause = 1

[State 11030, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 11030, BindToParent]
type = BindToParent
triggerall = IsHelper(11033)||IsHelper(11034)
trigger1 = Parent,StateNo!=1034
time = 1
facing = 1
pos = 10,-110
ignorehitpause = 1

[State 11030, BindToParent]
type = BindToParent
triggerall = IsHelper(11033)||IsHelper(11034)
trigger1 = Parent,StateNo=1034
time = 1
facing = 1
pos = 10,30
ignorehitpause = 1

[State 11030, VelSet]
type = VelSet
trigger1 = IsHelper(11031)
x = 3
y = 3

[State 11030, VelSet]
type = VelSet
trigger1 = IsHelper(11032)
x = 5
y = 5

[State 11030, Slasher Sound]
type = PlaySnd
trigger1 = Time = 0
value = S1000,1
channel = 1
volumescale = 100

[State 11030, 1]
type = HitDef
triggerall = IsHelper(11030)
trigger1 = AnimElem = 4
attr = A, SP
damage = 85,15
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 0, 10
sparkNo=-1
guard.sparkNo=-1
sparkXY=-1
hitsound=S2,9
guardsound=S130,0
ground.type = High
ground.slidetime = 5
ground.hittime = 12
guard.hittime = (12) - 6
ground.velocity = -4,-8
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -2,-7
air.hittime = 12
fall = 1
fall.recover = 0
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
yaccel = 0.5

[State 11030, 2]
type = HitDef
triggerall = IsHelper(11031)
trigger1 = AnimElem = 4
attr = A, SP
damage = 100,15
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 0, 10
sparkNo=-1
guard.sparkNo=-1
sparkXY=-1
hitsound=S2,9
guardsound=S130,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
guard.hittime = (12) - 6
ground.velocity = -4,-8
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -2,-7
air.hittime = 12
fall = 1
fall.recover = 0
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
yaccel = 0.5

[State 11030, 3]
type = HitDef
triggerall = IsHelper(11032)
trigger1 = AnimElem = 4
attr = A, SP
damage = 110,15
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 0, 10
sparkNo=-1
guard.sparkNo=-1 
sparkXY=-1
hitsound=S2,9
guardsound=S130,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
guard.hittime = (12) - 6
ground.velocity = -4,-8
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -2,-7
air.hittime = 12
fall = 1
fall.recover = 0
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
yaccel = 0.5

[State 11030, HitSpark]
type=Helper
trigger1=movecontact=1 && numtarget
trigger1=(enemynear, movetype=H) && !(target, time)
helperType=Normal
stateNo=ifElse(MoveGuarded, 8001, 8016)
ID=8000
name="Spark"
posType=P1
pos = 10, 50
facing=-1
ownPal=0
size.xScale=1.0
size.yScale=1.0
pauseMoveTime=65535
superMoveTime=65535
ignoreHitPause=1
persistent=1

[State 11030, ChangeAnim]
type = ChangeAnim
trigger1 = IsHelper(11033)
trigger1 = !Time
value = 11033

[State 11030, DestroySelf]
type = DestroySelf
trigger1 = IsHelper(11030)||IsHelper(11031)||IsHelper(11032)
trigger1 = AnimTime = 0
trigger2 = IsHelper(11033)
trigger2 = Parent,StateNo=1034
trigger2 = Anim = 11033
trigger2 = AnimTime = 0
trigger3 = IsHelper(11033)
trigger3 = Parent,StateNo!=1033
trigger4 = IsHelper(11034)
trigger4 = Parent,StateNo!=3045
trigger5 = Time < 10
trigger5 = Parent,StateNo>=5000
trigger6 = MoveReversed
;---------------------------------------------------------------------------
; I-Slasher
[StateDef 11040]
type = A
movetype= A
physics = N
ctrl = 0
anim = 11040
poweradd = 0
sprpriority = 2

[State 11040, VarAdd]
type = VarAdd
trigger1 = !Time
var(0) = 1

[State 11040, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1
persistent = 1

[State 11040, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,SP,HP
slot = 0
stateno = 11011
time = -1
forceair = 0
ignorehitpause = 1

[State 11040, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AT
ignorehitpause = 1

[State 11040, HitBy]
type = HitBy
trigger1 = 1
value = SCA,AP
ignorehitpause = 1

[State 11040, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 11040, Damage Dampener]; Scaling in action
type= Attackmulset
trigger1 = NumEnemy
trigger1 = IsHelper(11043)
value= ifelse(enemynear, gethitvar(hitcount) < 3, 24, ifelse(enemynear, gethitvar(hitcount) >= 24, 2, 26 - enemynear, gethitvar(hitcount))) / 32.0
ignorehitpause= 1

[State 11040, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1

[State 11040, VelSet]
type = VelSet
triggerall = IsHelper(11040)
triggerall = PrevStateNo!=11040
trigger1 = Time = 0
x = 8
y = .5

[State 11040, VelSet]
type = VelSet
triggerall = IsHelper(11041)
triggerall = PrevStateNo!=11040
trigger1 = Time = 0
x = 9
y = .75
persistent = 0

[State 11040, VelSet]
type = VelSet
triggerall = IsHelper(11042)
triggerall = PrevStateNo!=11040
trigger1 = Time = 0
x = 10
y = 1.2
persistent = 0

[State 11040, VelSet]
type = VelSet
triggerall = IsHelper(11043)
trigger1 = Time = 0
x = 11
persistent = 0

[State 11040, VelAdd]
type = VelAdd
triggerall = IsHelper(11040)
trigger1 = 1
x = -.5

[State 11040, VelAdd]
type = VelAdd
triggerall = IsHelper(11040)
trigger1 = 1
trigger1 = Vel Y > -0.15
y = -.025

[State 11040, VelAdd]
type = VelAdd
triggerall = IsHelper(11041)
trigger1 = 1
x = -.2

[State 11040, VelAdd]
type = VelAdd
triggerall = IsHelper(11041)
trigger1 = 1
trigger1 = Vel Y > -0.2
y = -.05

[State 11040, VelAdd]
type = VelAdd
triggerall = IsHelper(11042)
trigger1 = 1
x = -.2

[State 11040, VelAdd]
type = VelAdd
triggerall = IsHelper(11042)
trigger1 = 1
trigger1 = Vel Y > -0.3
y = -.075

[State 11040, VelSet]
type = VelSet
triggerall = IsHelper(11043)
trigger1 = P2Dist X <=10
x = 0
y = 0

[State 11040, 1]
type = HitDef
triggerall = Var(0)<3
triggerall = IsHelper(11040)
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
attr = A, SP
damage = 85,15
animtype = Heavy
guardflag = MA
hitflag = MAP-
priority = 4, Hit
pausetime = 2, 10
sparkno = -1
guard.sparkno = -1
sparkxy = -1
hitsound = S2,9
guardsound = S130,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
guard.hittime = (12) - 6
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
fall = 1
fall.recover = 0
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
yaccel = 0.5

[State 11040, 2]
type = HitDef
triggerall = Var(0)<3
triggerall = IsHelper(11041)
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
attr = A, SP
damage = 95,15
animtype = Heavy
guardflag = MA
hitflag = MAP-
priority = 4, Hit
pausetime = 2, 10
sparkno = -1
guard.sparkno = -1
sparkxy = -1
hitsound = S2,9
guardsound = S130,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
guard.hittime = (12) - 6
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
fall = 1
fall.recover = 0
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
yaccel = 0.5

[State 11040, 3]
type = HitDef
triggerall = Var(0)<3
triggerall = IsHelper(11042)
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
attr = A, SP
damage = 110,15
animtype = Heavy
guardflag = MA
hitflag = MAP-
priority = 4, Hit
pausetime = 2, 10
sparkno = -1
guard.sparkno = -1
sparkxy = -1
hitsound = S2,9
guardsound = S130,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
guard.hittime = (12) - 6
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
fall = 1
fall.recover = 0
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
yaccel = 0.5

[State 11040, 4]
type = HitDef
triggerall = IfElse(EnemyNear,HitFall=1,Parent,Var(15)<15,1)
triggerall = IsHelper(11043)
triggerall = UniqHitCount < 5
trigger1 = AnimElem = 1
trigger2 = AnimElem = 2
trigger3 = AnimElem = 3
trigger4 = AnimElem = 4
trigger5 = AnimElem = 5
attr = A, SP
damage = 35,10
animtype = Heavy
guardflag = MA
hitflag = MAFP
priority = 4, Hit
pausetime = 2, 10
sparkno = -1
guard.sparkno = -1
sparkxy = -1
hitsound = S2,9
guardsound = S130,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
guard.hittime = (12) - 6
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
fall = 1
fall.recover = 0
getpower = 0
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
yaccel = 0.5

[State 11040, HitSpark]
type=Helper
trigger1=movecontact=1 && numtarget
trigger1=(enemynear, movetype=H) && !(target, time)
helperType=Normal
stateNo=ifElse(MoveGuarded, 8001, 8016)
ID=8000
name="Spark"
posType=P1
pos = -10, 0
facing=-1
ownPal=0
size.xScale=1.0
size.yScale=1.0
pauseMoveTime=65535
superMoveTime=65535
ignoreHitPause=1
persistent=1

[State 11040, ChangeState]
type = ChangeState
triggerall = !IsHelper(11043)
trigger1 = MoveContact 
value = 11040
ctrl = 0

[State 11040, VelSet]
type = VelSet
triggerall = IsHelper(11043)
trigger1 = UniqHitCount>=5
trigger2 = MoveGuarded
trigger3 = Time >= 36
x = -6.5

[State 11040, end]
type = DestroySelf
trigger1 = Vel X != 0
trigger1 = RootDist X >=-35
trigger2 = Vel X != 0
trigger2 = Time < 10
trigger2 = Parent,StateNo>=5000
trigger3 = MoveReversed
;---------------------------------------------------------------------------
;Bomb Pre-Bounce
[StateDef 11050]
type = A
movetype= A
physics = N
juggle = 0
ctrl = 0
anim = 11050
poweradd = 0
sprpriority = 2

[State 11050, Damage Dampener]; Scaling in action
type= Attackmulset
trigger1 = NumEnemy
value= ifelse(enemynear, gethitvar(hitcount) < 3, 24, ifelse(enemynear, gethitvar(hitcount) >= 24, 2, 26 - enemynear, gethitvar(hitcount))) / 16.0
ignorehitpause= 1

[State 11050, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1

[State 11050, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AP
slot = 0
stateno = 11051
time = 1
forceair = 0
ignorehitpause = 1

[State 11050, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AT
ignorehitpause = 1

[State 11050, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 11050, VelSet]
type = VelSet
trigger1 = !Time
trigger1 = IsHelper(11050)
x = 3
y = -2

[State 11050, VelSet]
type = VelSet
trigger1 = !Time
trigger1 = IsHelper(11051)
x = 4
y = -1

[State 11050, VelSet]
type = VelSet
trigger1 = !Time
trigger1 = IsHelper(11052)
x = 6
y = 1

[State 11050, VelAdd]
type = VelAdd
trigger1 = 1
y = .3

[State 11050, 1]
type = HitDef
triggerall = IsHelper(11050)
trigger1 = AnimElem = 1
attr = A, SP
damage = 80,15
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
hitsound=S2,6
guardsound=S130,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
guard.hittime = (12) - 6
ground.velocity = -4,-7
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
palfx.time = 70
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
fall = 1
fall.recover = 0
yaccel = 0.5

[State 11050, 2]
type = HitDef
triggerall = IsHelper(11051)
trigger1 = AnimElem = 1
attr = A, SP
damage = 95,15
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
hitsound=S2,6
guardsound=S130,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
guard.hittime = (12) - 6
ground.velocity = -4,-7
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
palfx.time = 70
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
fall = 1
fall.recover = 0
yaccel = 0.5

[State 11050, 3]
type = HitDef
triggerall = IsHelper(11052)
trigger1 = AnimElem = 1
attr = A, SP
damage = 115,20
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
hitsound=S2,6
guardsound=S130,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
guard.hittime = (12) - 6
ground.velocity = -4,-7
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
palfx.time = 70
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
fall = 1
fall.recover = 0
yaccel = 0.5

[State 11050, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 11051
ctrl = 0

[State 11050, ChangeState]
type = ChangeState
trigger1 = Vel Y>0
trigger1 = Pos Y >=-Vel Y
trigger1 = !MoveContact
value = 11052
ctrl = 0
;---------------------------------------------------------------------------
; Bomb Explosion
[StateDef 11051]
type = A
movetype= I
physics = N
juggle = 0
velset = 0,0
ctrl = 0
anim = 13013
poweradd = 0
sprpriority = 2
movehitpersist = 1

[State 11051, RemoveExplod]
type = RemoveExplod
trigger1 = 1 
id = 11053

[State 11051, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 11051, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = invisible

[State 11051, PlaySnd]
type = PlaySnd
trigger1 = Time = 0
value = S3010,3
volume = 0
channel = 2

[State 11051, Explod]
type = Explod
triggerall = !IsHelper(11053)
trigger1 = !Time
anim = 13013
ID = 11051
pos = 0,0
postype = p1  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = .25,.25
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
trans = add

[State 11051, StateTypeSet]
type = StateTypeSet
trigger1 = IsHelper(11053)
movetype = A
ignorehitpause = 1

[State 11051, Explod]
type = Explod
triggerall = IsHelper(11053)
trigger1 = !Time
anim = 13013
ID = 11054
pos = 0,-70
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -2
pausemovetime = 0
scale = .25,.25
sprpriority = 0
ontop = 1
shadow = 0,0,0
ownpal = 1
removeongethit = 1
trans = add

[State 11051, 3]
type = HitDef
triggerall = IfElse(EnemyNear,HitFall=1,Parent,Var(15)<15,1)
triggerall = IsHelper(11053)
trigger1 = AnimElem = 1
attr = A, SA
damage = 130,20
animtype = Heavy
guardflag =
hitflag = MAF
priority = 4, Hit
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
hitsound=S2,6
guardsound=S130,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
guard.hittime = (12) - 6
ground.velocity = -4,-7
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
palfx.time = 70
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
fall = 1
fall.recover = 0
yaccel = 0.5

[State 11051, HitSpark]
type=Helper
trigger1=movecontact=1 && numtarget
trigger1=(enemynear, movetype=H) && !(target, time)
helperType=Normal
stateNo=ifElse(MoveGuarded, 8001, 8013)
ID=8000
name="Spark"
posType=P1
pos = -10,0
facing=-1
ownPal=0
size.xScale=1.0
size.yScale=1.0
pauseMoveTime=65535
superMoveTime=65535
ignoreHitPause=1
persistent=1

[State 11051, EnvShake]
type = EnvShake
triggerall = IsHelper(11053)
trigger1 = !Time
time = 10
freq = 90
ampl = -4
phase = 180

[State 11051, ChangeState]
type = DestroySelf
trigger1 = AnimTime = 0
;---------------------------------------------------------------------------
;Bomb Post-Bounce
[StateDef 11052]
type = A
movetype= A
physics = N
juggle = 0
ctrl = 0
anim = 11050
poweradd = 0
sprpriority = 2

[State 11052, Damage Dampener]; Scaling in action
type= Attackmulset
trigger1 = NumEnemy
value= ifelse(enemynear, gethitvar(hitcount) < 3, 24, ifelse(enemynear, gethitvar(hitcount) >= 24, 2, 26 - enemynear, gethitvar(hitcount))) / 16.0
ignorehitpause= 1

[State 11052, Damage Dampener]; Full damage
type= attackmulset
trigger1= numenemy
trigger1= enemynear,movetype!=H || (enemynear,stateno=[120,155])
value= 1.0
ignorehitpause= 1

[State 11052, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AP
slot = 0
stateno = 11051
time = 1
forceair = 0
ignorehitpause = 1

[State 11052, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA,AA,AT
ignorehitpause = 1

[State 11052, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 11052, VelAdd]
type = VelAdd
trigger1 = 1
y = .3

[State 11052, VelSet]
type = VelSet
trigger1 = IsHelper(11050)
trigger1 = !Time
x = 3
y = -6

[State 11052, VelSet]
type = VelSet
trigger1 = IsHelper(11051)
trigger1 = !Time
x = 4
y = -5.5

[State 11052, VelSet]
type = VelSet
trigger1 = IsHelper(11052)
trigger1 = !Time
x = 6
y = -4.5

[State 11052, Explod Guardspark]
type = Explod
triggerall = !NumExplod(10040)
trigger1 = 1
trigger1 = MoveGuarded
anim = 10040
ID = 10040
pos = 0,0
postype = p1
removetime = -2
pausemovetime = 0
scale = .5,.5
ontop = 1
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 11052, 1]
type = HitDef
triggerall = IsHelper(11050)
trigger1 = AnimElem = 1
attr = A, SP
damage = 80,15
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
hitsound=S2,6
guardsound=S130,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
guard.hittime = (12) - 6
ground.velocity = -4,-7
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
palfx.time = 70
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
fall = 1
fall.recover = 0
yaccel = 0.5

[State 11052, 2]
type = HitDef
triggerall = IsHelper(11051)
trigger1 = AnimElem = 1
attr = A, SP
damage = 95,15
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
hitsound=S2,6
guardsound=S130,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
guard.hittime = (12) - 6
ground.velocity = -4,-7
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
palfx.time = 70
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
fall = 1
fall.recover = 0
yaccel = 0.5

[State 11052, 3]
type = HitDef
triggerall = IsHelper(11052)
trigger1 = AnimElem = 1
attr = A, SP
damage = 115,20
animtype = Heavy
guardflag = MA
hitflag = MA
priority = 4, Hit
pausetime = 0,0
sparkno = -1
guard.sparkno = -1
sparkxy = -10, 0
hitsound=S2,6
guardsound=S130,0
guardsound = -1
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
guard.hittime = (12) - 6
ground.velocity = -4,-7
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
palfx.time = 70
palfx.add = 240,50,0
palfx.mul = 250,224,120
palfx.sinadd = 110,55,85,10
fall = 1
fall.recover = 0
yaccel = 0.5

[State 11052, HitSpark]
type=Helper
trigger1=movecontact=1 && numtarget
trigger1=(enemynear, movetype=H) && !(target, time)
helperType=Normal
stateNo=ifElse(MoveGuarded, 8001, 8013)
ID=8000
name="Spark"
posType=P1
pos = -10, 0
facing=-1
ownPal=0
size.xScale=1.0
size.yScale=1.0
pauseMoveTime=65535
superMoveTime=65535
ignoreHitPause=1
persistent=1

[State 11052, ChangeAnim]
type = ChangeState
trigger1 = Vel Y>0
trigger1 = Pos Y >=-Vel Y
trigger2 = MoveContact
value = 11051
ctrl = 0
ignorehitpause = 1
;---------------------------------------------------------------------------
; Heart Attack
[StateDef 11053]
type = A
movetype= A
physics = N
juggle = 0
velset = 0,0
ctrl = 0
anim = 11053
poweradd = 0
sprpriority = 2

[State 11053, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[State 11053, Explod]
type = Explod
trigger1 = MoveHit 
anim = 11053
ID = 11053 
pos = 0,-70
postype = p2  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = 180
removetime = 180
scale = 1,1
sprpriority = 3
shadow = 0,0,0
ownpal = 1
removeongethit = 1
persistent = 0

[State 11053, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = A, SA
damage = 0
animtype = Heavy
guardflag = MA
hitflag = M
priority = 4, Hit
pausetime = 0,10
sparkno = -1
guard.sparkno = -1
sparkxy =-1
hitsound = S2,6
guardsound = S130,0
ground.type = High
ground.slidetime = 10
ground.hittime  = 12
guard.hittime = (12) - 6
ground.velocity = 0
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = 0
air.hittime = 12
ground.cornerpush.veloff = 0
getpower = 0
envshake.time = 10
envshake.freq = 90
envshake.ampl = -4
envshake.phase = 180
kill = 0
yaccel = 0.5
id = 11053
guard.dist = 0

[State 11053, HitSpark]
type=Helper
trigger1=movecontact=1 && numtarget
trigger1=(enemynear, movetype=H) && !(target, time)
helperType=Normal
stateNo=ifElse(MoveGuarded, 8001, 8013)
ID=8000
name="Spark"
posType=P1
pos = -10,0
facing=-1
ownPal=0
size.xScale=1.0
size.yScale=1.0
pauseMoveTime=65535
superMoveTime=65535
ignoreHitPause=1
persistent=1

[State 11053, ChangeState]
type = ChangeState
trigger1 = Time = 180&&Parent,StateNo!=1054
trigger2 = Parent,StateNo = 1054&&Parent,AnimElem = 6
value = 11051
ctrl = 0

[State 11051, RemoveExplod]
type = RemoveExplod
trigger1 = Root,StateNo>=3000 
id = 11053

[State 11053, DestroySelf]
type = DestroySelf
trigger1 = AnimElem = 2
trigger1 = !MoveHit
trigger2 = Root,StateNo=[800,899]
trigger3 = Root,StateNo>=3000 
;---------------------------------------------------------------------------
;Gravity Storm Pillar
[StateDef 13025]
type = A
movetype= A
physics = N
juggle = 0
ctrl = 0
anim = 13025
poweradd = 0
sprpriority = -1

[State 13025, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 13025, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 13025, DestroySelf]
type = DestroySelf
trigger1 = AnimTime = 0
;---------------------------------------------------------------------------
;P2 Heart Attack
[StateDef 51054]
type = S
movetype =H
physics = N
juggle = 0
ctrl = 0
poweradd = 0
velset = 0,0

[State 1054, ChangeAnim2]
type = ChangeAnim2
trigger1 = Time = 0
value = 51054