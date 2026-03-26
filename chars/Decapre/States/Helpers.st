; _________________________________________
;| Decapre by varo_hades                   |
; 
;
;HELPER STATES=
;

;PARRY HELPER=
[StateDef 765]
type = A
physics = N
moveType = I
anim = ifElse(Root, StateType = C, 766, ifElse(Root, StateType = A, 767, 765))
velSet = 0,0
ctrl = 0

[State 765, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 765, BindToRoot]
type = BindToRoot
trigger1 = 1
time = -1

[State 765, Change to Crouching]
type = ChangeAnim
triggerAll = !Time
trigger1 = !(Root, AILevel) && Root, command = "down"
trigger2 = Root, AILevel && (Root, StateType != A) && P2StateType = C
value = 766

[State 765, Change to Standing / Jumping]
type = ChangeAnim
triggerAll = !Time
trigger1 = !(Root, AILevel) && Root, command = "fwd"
trigger2 = Root, AILevel && Anim != 766
value = ifElse((Root, StateType = A), 767, 765)

[State 765, Change to Standing / Jumping]
type = ChangeAnim
trigger1 = Anim = 765 || Anim = 767
value = ifElse((Root, StateType = A), 767, 765)

[State 765, Disable]
type = VarSet
trigger1 = Time >= ifElse((Root, StateType = A), 7, 8)
trigger2 = Facing != (Root, Facing)
trigger3 = !(Root, ctrl)
trigger3 = (Root, StateNo != [760,762]) && (Root, StateNo != 5120)
var(0) = 1

[State 765, Disable]
type = VarSet
triggerAll = !(Root, AILevel)
trigger1 = (Root, command = "holdback")
trigger2 = Time < 4 && (Root, command = "holdfwd" + Root, command = "holddown") > 1
trigger3 = Time >= 4 && (Root, command = "holdfwd" || Root, command = "holddown")
trigger4 = Time >= 1 && (((Anim = 765 || Anim = 767) && Root, command = "fwd") || (Anim = 766 && Root, command = "down"))
var(0) = 1

[State 765, Disable]
type = ChangeAnim
trigger1 = var(0) = 1
value = 1

[State 765, Standing/Air]
type = ReversalDef
trigger1 = !var(0) && (Anim = 765 || Anim = 767)
trigger1 = (Root, StateNo != 5120) || !(Root, AnimTime)
reversal.attr = SCA,AA
p1StateNo = 766
pauseTime = 0,0
sparkNo = -1
numHits = 0

[State 765, Crouching]
type = ReversalDef
trigger1 = !var(0) && Anim = 766
reversal.attr = SC,AA
p1StateNo = 766
pauseTime = 0,0
sparkNo = -1
numHits = 0

[State 765, Disable]
type = ReversalDef
trigger1 = var(0) = 1
reversal.attr =
pauseTime = 0,0
sparkNo = -1
numHits = 0

[State 765, End]
type = DestroySelf
trigger1 = Time >= 18
trigger2 = (Root, MoveType != I)
trigger3 = !(Root, ctrl) && (Root, StateNo != [760,762]) && (Root, StateNo != 5120)
trigger4 = (Root, StateNo = [760,762]) && (Root, Time <= 1)


;Success
[StateDef 766]
moveType = I
ctrl = 0

[State 766, Disable]
type = VarSet
trigger1 = 1
var(0) = 1

[State 766, End]
type = DestroySelf
trigger1 = Root, StateNo = [760,762]
trigger2 = Time >= 2

;PSYCHO STING PROJECTILE=
[Statedef 1025]
type = S
movetype = I
physics = N
anim = 1025
ctrl = 0
sprpriority = 5

[State 1025, Trans]
type = Trans
trigger1 = 1
trans = Addalpha
alpha = 256,256

[State 1025, Bind]
type=BindToParent
trigger1 = 1
;pos = ceil(-10*const(size.xscale)),ceil(20*const(size.yscale))
pos = ceil(-5*const(size.xscale)),ceil(-45*const(size.yscale))
postype = p1
;facing   = 1

[State 1025, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;ignorehitpause = 0

[State 1025, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,stateno != 1000
trigger3 = root,stateno = 1000 && root,animelemtime(7) = 0

;PSYCHO STING PROJECTILE=
[Statedef 1026]
type = S
movetype = I
physics = N
anim = 1025
ctrl = 0
sprpriority = 5

[State 1026, Trans]
type = Trans
trigger1 = 1
trans = Addalpha
alpha = 256,256

[State 1026, Bind]
type=BindToParent
trigger1 = 1
;pos = ceil(-10*const(size.xscale)),ceil(20*const(size.yscale))
pos = ceil(-5*const(size.xscale)),ceil(-45*const(size.yscale))
postype = p1
;facing   = 1

[State 1026, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;ignorehitpause = 0

[State 1026, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,stateno != 1030
trigger3 = root,stateno = 1030 && root,animelemtime(7) = 0

;RAPID DAGGER PROJECTILE=
[Statedef 7000]
type = S
movetype = I
physics = N
anim = 7000
ctrl = 0
sprpriority = 5

[State 1505,0]
type = BindToRoot
trigger1 = 1
pos = 54,-60
ignorehitpause = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(4) < 0
value = anim
elem = 0
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(4) > 0
trigger1 = root,animelemtime(5) < 0
value = anim
elem = 1
persistent = 1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;ignorehitpause = 1

[State 5035, 1]
type = Trans
trigger1 = 1
trans = add

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,stateno != 1200 && root,stateno != 1230
trigger3 = root,stateno = 1200 && root,time = 1
trigger4 = root,stateno = 1230 && root,time = 1
;trigger5 = root, stateno = 1200 && !root,var(5) && root,animelem = 8

;RAPID DAGGER PROJECTILE=
[Statedef 7001]
type = S
movetype = I
physics = N
anim = 7001
ctrl = 0
sprpriority = 5

[State 1505,0]
type = BindToRoot
trigger1 = 1
pos = 54,-60
ignorehitpause = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(7) < 0
value = anim
elem = 0
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(7) > 0
trigger1 = root,animelemtime(8) < 0
value = anim
elem = 1
persistent = 1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;ignorehitpause = 1

[State 5035, 1]
type = Trans
trigger1 = 1
trans = add

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,stateno != 1200 && root,stateno != 1230
trigger3 = root,stateno = 1200 && root,time = 1
trigger4 = root,stateno = 1230 && root,time = 1
;trigger5 = root, stateno = 1200 && !root,var(5) && root,animelem = 8

;RAPID DAGGER PROJECTILE=
[Statedef 7002]
type = S
movetype = I
physics = N
anim = 7002
ctrl = 0
sprpriority = 5

[State 1505,0]
type = BindToRoot
trigger1 = 1
pos = 54,-60
ignorehitpause = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(10) < 0
value = anim
elem = 0
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(10) > 0
trigger1 = root,animelemtime(11) < 0
value = anim
elem = 1
persistent = 1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;ignorehitpause = 1

[State 5035, 1]
type = Trans
trigger1 = 1
trans = add

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,stateno != 1200 && root,stateno != 1230
trigger3 = root,stateno = 1200 && root,time = 1
trigger4 = root,stateno = 1230 && root,time = 1
;trigger5 = root, stateno = 1200 && !root,var(5) && root,animelem = 8

;RAPID DAGGER PROJECTILE=
[Statedef 7003]
type = S
movetype = I
physics = N
anim = 7003
ctrl = 0
sprpriority = 5

[State 1505,0]
type = BindToRoot
trigger1 = 1
pos = 54,-60
ignorehitpause = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(13) < 0
value = anim
elem = 0
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(13) > 0
trigger1 = root,animelemtime(14) < 0
value = anim
elem = 1
persistent = 1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;ignorehitpause = 1

[State 5035, 1]
type = Trans
trigger1 = 1
trans = add

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,stateno != 1200 && root,stateno != 1230
trigger3 = root,stateno = 1200 && root,time = 1
trigger4 = root,stateno = 1230 && root,time = 1
;trigger5 = root, stateno = 1200 && !root,var(5) && root,animelem = 8

;RAPID DAGGER PROJECTILE=
[Statedef 7004]
type = S
movetype = I
physics = N
anim = 7004
ctrl = 0
sprpriority = 5

[State 1505,0]
type = BindToRoot
trigger1 = 1
pos = 54,-60
ignorehitpause = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(16) < 0
value = anim
elem = 0
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(16) > 0
trigger1 = root,animelemtime(17) < 0
value = anim
elem = 1
persistent = 1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;ignorehitpause = 1

[State 5035, 1]
type = Trans
trigger1 = 1
trans = add

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,stateno != 1200 && root,stateno != 1230
trigger3 = root,stateno = 1200 && root,time = 1
trigger4 = root,stateno = 1230 && root,time = 1
;trigger5 = root, stateno = 1200 && !root,var(5) && root,animelem = 8

;RAPID DAGGER PROJECTILE=
[Statedef 7005]
type = S
movetype = I
physics = N
anim = 7005
ctrl = 0
sprpriority = 5

[State 1505,0]
type = BindToRoot
trigger1 = 1
pos = 54,-60
ignorehitpause = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(19) < 0
value = anim
elem = 0
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(19) > 0
trigger1 = root,animelemtime(20) < 0
value = anim
elem = 1
persistent = 1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;ignorehitpause = 1

[State 5035, 1]
type = Trans
trigger1 = 1
trans = add

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,stateno != 1200 && root,stateno != 1230
trigger3 = root,stateno = 1200 && root,time = 1
trigger4 = root,stateno = 1230 && root,time = 1
;trigger5 = root, stateno = 1200 && !root,var(5) && root,animelem = 8

;RAPID DAGGER PROJECTILE=
[Statedef 7006]
type = S
movetype = I
physics = N
anim = 7004
ctrl = 0
sprpriority = 5

[State 1505,0]
type = BindToRoot
trigger1 = 1
pos = 54,-60
ignorehitpause = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(22) < 0
value = anim
elem = 0
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(22) > 0
trigger1 = root,animelemtime(23) < 0
value = anim
elem = 1
persistent = 1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;ignorehitpause = 1

[State 5035, 1]
type = Trans
trigger1 = 1
trans = add

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,stateno != 1200 && root,stateno != 1230
trigger3 = root,stateno = 1200 && root,time = 1
trigger4 = root,stateno = 1230 && root,time = 1
;trigger5 = root, stateno = 1200 && !root,var(5) && root,animelem = 8

;RAPID DAGGER PROJECTILE=
[Statedef 7007]
type = S
movetype = I
physics = N
anim = 7005
ctrl = 0
sprpriority = 5

[State 1505,0]
type = BindToRoot
trigger1 = 1
pos = 54,-60
ignorehitpause = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(25) < 0
value = anim
elem = 0
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(25) > 0
trigger1 = root,animelemtime(26) < 0
value = anim
elem = 1
persistent = 1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;ignorehitpause = 1

[State 5035, 1]
type = Trans
trigger1 = 1
trans = add

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,stateno != 1200 && root,stateno != 1230
trigger3 = root,stateno = 1200 && root,time = 1
trigger4 = root,stateno = 1230 && root,time = 1
;trigger5 = root, stateno = 1200 && !root,var(5) && root,animelem = 8

;RAPID DAGGER PROJECTILE=
[Statedef 7010]
type = S
movetype = I
physics = N
anim = 7010
ctrl = 0
sprpriority = 5

[State 1505,0]
type = BindToRoot
trigger1 = 1
pos = 34,-60
ignorehitpause = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(10) < 0
value = anim
elem = 0
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(10) >= 0
trigger1 = root,animelemtime(11) < 0
value = anim
elem = 1
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(11) >= 0
trigger1 = root,animelemtime(12) < 0
value = anim
elem = 2
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(12) >= 0
trigger1 = root,animelemtime(13) < 0
value = anim
elem = 3
persistent = 1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;ignorehitpause = 1

[State 5035, 1]
type = Trans
trigger1 = 1
trans = add

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,stateno != 1200 && root,stateno != 2800
trigger3 = root,stateno = 1200 && root,time = 1
trigger4 = root,stateno = 2800 && root,time = 1
;trigger5 = root, stateno = 1200 && !root,var(5) && root,animelem = 8

;RAPID DAGGER PROJECTILE=
[Statedef 7011]
type = S
movetype = I
physics = N
anim = 7011
ctrl = 0
sprpriority = 5

[State 1505,0]
type = BindToRoot
trigger1 = 1
pos = 34,-60
ignorehitpause = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(16) < 0
value = anim
elem = 0
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(16) >= 0
trigger1 = root,animelemtime(17) < 0
value = anim
elem = 1
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(17) >= 0
trigger1 = root,animelemtime(18) < 0
value = anim
elem = 2
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(18) >= 0
trigger1 = root,animelemtime(19) < 0
value = anim
elem = 3
persistent = 1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;ignorehitpause = 1

[State 5035, 1]
type = Trans
trigger1 = 1
trans = add

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,stateno != 1200 && root,stateno != 2800
trigger3 = root,stateno = 1200 && root,time = 1
trigger4 = root,stateno = 2800 && root,time = 1
;trigger5 = root, stateno = 1200 && !root,var(5) && root,animelem = 8

;RAPID DAGGER PROJECTILE=
[Statedef 7012]
type = S
movetype = I
physics = N
anim = 7012
ctrl = 0
sprpriority = 5

[State 1505,0]
type = BindToRoot
trigger1 = 1
pos = 34,-60
ignorehitpause = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(22) < 0
value = anim
elem = 0
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(22) >= 0
trigger1 = root,animelemtime(23) < 0
value = anim
elem = 1
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(23) >= 0
trigger1 = root,animelemtime(24) < 0
value = anim
elem = 2
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(24) >= 0
trigger1 = root,animelemtime(25) < 0
value = anim
elem = 3
persistent = 1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;ignorehitpause = 1

[State 5035, 1]
type = Trans
trigger1 = 1
trans = add

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,stateno != 1200 && root,stateno != 2800
trigger3 = root,stateno = 1200 && root,time = 1
trigger4 = root,stateno = 2800 && root,time = 1
;trigger5 = root, stateno = 1200 && !root,var(5) && root,animelem = 8

;RAPID DAGGER PROJECTILE=
[Statedef 7013]
type = S
movetype = I
physics = N
anim = 7012
ctrl = 0
sprpriority = 5

[State 1505,0]
type = BindToRoot
trigger1 = 1
pos = 34,-60
ignorehitpause = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(28) < 0
value = anim
elem = 0
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(28) >= 0
trigger1 = root,animelemtime(29) < 0
value = anim
elem = 1
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(29) >= 0
trigger1 = root,animelemtime(30) < 0
value = anim
elem = 2
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(31) >= 0
trigger1 = root,animelemtime(32) < 0
value = anim
elem = 3
persistent = 1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;ignorehitpause = 1

[State 5035, 1]
type = Trans
trigger1 = 1
trans = add

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,stateno != 1230 && root,stateno != 2800
trigger3 = root,stateno = 1230 && root,time = 1
trigger4 = root,stateno = 2800 && root,time = 1
;trigger5 = root, stateno = 1200 && !root,var(5) && root,animelem = 8

;RAPID DAGGER PROJECTILE=
[Statedef 7100]
type = S
movetype = I
physics = N
anim = 7100
ctrl = 0
sprpriority = 5

[State 1505,0]
type = BindToRoot
trigger1 = 1
pos = 45,-65
ignorehitpause = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(20) < 0
value = anim
elem = 0
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(20) > 0
trigger1 = root,animelemtime(21) < 0
value = anim
elem = 1
persistent = 0

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(21) > 0
trigger1 = root,animelemtime(22) < 0
value = anim
elem = 2
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(22) > 0
trigger1 = root,animelemtime(23) < 0
value = anim
elem = 3
persistent = 1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;ignorehitpause = 1

[State 5035, 1]
type = Trans
trigger1 = 1
trans = add

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,stateno != 1200 && root,stateno != 2800
trigger3 = root,stateno = 1200 && root,time = 1
trigger4 = root,stateno = 2800 && root,time = 1
;trigger5 = root, stateno = 1200 && !root,var(5) && root,animelem = 8

;RAPID DAGGER PROJECTILE=
[Statedef 7101]
type = S
movetype = I
physics = N
anim = 7101
ctrl = 0
sprpriority = 5

[State 1505,0]
type = BindToRoot
trigger1 = 1
pos = 45,-65
ignorehitpause = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(26) < 0
value = anim
elem = 0
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(26) > 0
trigger1 = root,animelemtime(27) < 0
value = anim
elem = 1
persistent = 0

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(27) > 0
trigger1 = root,animelemtime(28) < 0
value = anim
elem = 2
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(28) > 0
trigger1 = root,animelemtime(29) < 0
value = anim
elem = 3
persistent = 1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;ignorehitpause = 1

[State 5035, 1]
type = Trans
trigger1 = 1
trans = add

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,stateno != 1200 && root,stateno != 2800
trigger3 = root,stateno = 1200 && root,time = 1
trigger4 = root,stateno = 2800 && root,time = 1
;trigger5 = root, stateno = 1200 && !root,var(5) && root,animelem = 8

;RAPID DAGGER PROJECTILE=
[Statedef 7102]
type = S
movetype = I
physics = N
anim = 7102
ctrl = 0
sprpriority = 5

[State 1505,0]
type = BindToRoot
trigger1 = 1
pos = 45,-65
ignorehitpause = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(32) < 0
value = anim
elem = 0
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(32) > 0
trigger1 = root,animelemtime(33) < 0
value = anim
elem = 1
persistent = 0

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(33) > 0
trigger1 = root,animelemtime(34) < 0
value = anim
elem = 2
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(34) > 0
trigger1 = root,animelemtime(35) < 0
value = anim
elem = 3
persistent = 1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;ignorehitpause = 1

[State 5035, 1]
type = Trans
trigger1 = 1
trans = add

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,stateno != 1200 && root,stateno != 2800
trigger3 = root,stateno = 1200 && root,time = 1
trigger4 = root,stateno = 2800 && root,time = 1
;trigger5 = root, stateno = 1200 && !root,var(5) && root,animelem = 8

;RAPID DAGGER PROJECTILE=
[Statedef 7103]
type = S
movetype = I
physics = N
anim = 7102
ctrl = 0
sprpriority = 5

[State 1505,0]
type = BindToRoot
trigger1 = 1
pos = 45,-65
ignorehitpause = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(38) < 0
value = anim
elem = 0
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(38) > 0
trigger1 = root,animelemtime(39) < 0
value = anim
elem = 1
persistent = 0

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(39) > 0
trigger1 = root,animelemtime(40) < 0
value = anim
elem = 2
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(40) > 0
trigger1 = root,animelemtime(41) < 0
value = anim
elem = 3
persistent = 1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;ignorehitpause = 1

[State 5035, 1]
type = Trans
trigger1 = 1
trans = add

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,stateno != 1230 && root,stateno != 2800
trigger3 = root,stateno = 1230 && root,time = 1
trigger4 = root,stateno = 2800 && root,time = 1
;trigger5 = root, stateno = 1200 && !root,var(5) && root,animelem = 8

;INVISIBLE RAY PROJECTILE=
[Statedef 1501]
type = A
movetype = I
physics = N
ctrl = 0
anim = 1
velset = 0,0
ownpal = 1
sprpriority = 3

[State 1501,0]
type = Bindtoparent
trigger1 = 1
pos = 50,-80
postype = p1

[State 1501, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1501]
type = changeanim
trigger1 = parent,stateno = 1500 && parent,animelemtime(5) >= 0
value = 7901
persistent = 0

[State 1501, DestroySelf]
type = DestroySelf
trigger1 = anim = 7901 && animtime = 0
trigger2 = parent,stateno != 1500
trigger3 = parent,stateno = 1500 && parent,time = 1

;EX INVISIBLE RAY PROJECTILE=
[Statedef 1531]
type = A
movetype = I
physics = N
ctrl = 0
anim = 1
velset = 0,0
ownpal = 1
sprpriority = 3

[State 1531,0]
type = Bindtoparent
trigger1 = 1
pos = 50,-80
postype = p1

[State 1531, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 1531]
type = changeanim
trigger1 = parent,stateno = 1530 && parent,animelemtime(5) >= 0
value = 7901
persistent = 0

[State 1531, DestroySelf]
type = DestroySelf
trigger1 = anim = 7901 && animtime = 0
trigger2 = parent,stateno != 1530
trigger3 = parent,stateno = 1530 && parent,time = 1

;INVISIBLE RAY PROJECTILE=
[StateDef 1505]
type = S
physics = N
moveType = A
ctrl = 0
anim = 7800
sprPriority = 3

[State 1505, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1507
ignoreHitPause = 1

[State 1505, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1505, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 7800
value = 7800

[State 1505, Button Detect]
type = VarSet
trigger1= !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1505, VelSet]
type = VelSet
trigger1 = 1
x = (4.25 + (var(10)*1.125))*1

[State 1505, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1505, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1505, Transparency]
type = trans
trigger1 = Time = [0,20]
trans = addalpha
alpha = -256,256

[State 1505, Transparency]
type = trans
trigger1 = Time = [20,22]
trans = addalpha
alpha = (time-6)*10,256

[State 1505, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1505, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
trigger1 = Root, StateNo != 193
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10), 49, 42) < 7, 7, fvar(11) * ifElse(var(10), 49, 42))), 7
getPower = ifElse(!(Root, var(13)), 144, 72) * !(Root, var(20)), 36 * !(Root, var(20))
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -8, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.5, -6
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1505, HitDef (Intro)]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
trigger1 = Root, StateNo = 193
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = 0,0
getPower = 0,0
givePower = 0,0
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -10.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1505, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1506
ignoreHitPause = 1

[State 1505, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1507
ignoreHitPause = 1

[State 1505, End]
type = DestroySelf
trigger1 = pos x != [-200,200]

;Hit Pause
[StateDef 1506]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1

[State 1506, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1506, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
ignorehitPause = 1

[State 1506, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1506, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
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

[State 1506, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1506, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1

[State 1506, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1506, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = [1500,1530]
var(18) = 1

[State 1506, End]
type = ChangeState
trigger1 = Time >= 0
value = ifElse(var(12) < 2 && var(10) = 3, 1535, 1507)

;Disappear
[StateDef 1507]
type = A
physics = N
moveType = A
anim = 7805
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 1507, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2,6
channel = 3
volume = -128
lowPriority = 1

[State 1507, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 1507, End]
type = ChangeState
trigger1 = !AnimTime
value = 1508

;Wait
[StateDef 1508]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 1508, End]
type = DestroySelf
trigger1 = !NumTarget
trigger2 = NumTarget
trigger2 = Target, Time <= 1 && !(Target,HitShakeOver)

;EX INVISIBLE RAY PROJECTILE=
[StateDef 1535]
type = S
physics = N
moveType = A
ctrl = 0
anim = 7800
sprPriority = 3

[State 1535, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = ifElse(var(2) < 2, 1535, 1507)
ignoreHitPause = 1

[State 1535, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1535, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 7800 && !PrevStateNo
value = 7800

[State 1535, VarAdd]
type = VarAdd
trigger1 = !Time
var(2) = 1

[State 1035, VelSet]
type = VelSet
trigger1 = 1
x = ifElse((Time < 2 && var(2) > 1), 1, 8.25)

[State 1535, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1535, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1535, Transparency]
type = trans
trigger1 = Time = [0,20]
trans = addalpha
alpha = -256,256

[State 1535, Transparency]
type = trans
trigger1 = Time = [20,22]
trans = addalpha
alpha = (time-6)*10,256

[State 1535, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1535, Hit 1]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
trigger1 = var(2) < 2
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 8
getPower = 0, 0
givePower = 36, 36
pauseTime = 4 * (var(2) < 2), ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 4 * (var(2) < 2), ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -10.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1535, Hit 2]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
trigger1 = var(2) >= 2
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 8
getPower = 0, 0
givePower = 36, 36
pauseTime = 4 * (var(2) < 2), ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 4 * (var(2) < 2), ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -10.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1535, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 1535, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1535, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
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
persistent = 0
ignoreHitPause = 1

[State 1535, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1
persistent = 0

[State 1535, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1
persistent = 0

[State 1535, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1
persistent = 0

[State 1535, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = [1500,1530]
var(18) = 1
persistent = 0

[State 1535, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(var(2) < 2, 1535, 1507)
ignoreHitPause = 1

[State 1535, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1507
ignoreHitPause = 1

[State 1535, End]
type = DestroySelf
trigger1 = pos x != [-200,200]






;PSYCHO STREAM PROJECTILE
[StateDef 3105]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 7300
sprpriority = 4

[State 3105, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 3105, VarSet]
type = VarSet
trigger1 = time = 0
ignorehitpause = 1
var(10) = parent,var(10)

[State 3105, VelSet]
type = VelSet
trigger1 = time = 1
x = 1+.125*var(10)

[State 3105, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1000, Flame Particles]
type = Helper
trigger1 = AnimElemTime(1) > 0
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1506, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3105, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1110, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1117, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = ifElse(var(2) < 6, 3105, 1506)
ignoreHitPause = 1





[State 1117, VarAdd]
type = VarAdd
trigger1 = !Time
var(2) = 1

[State 1117, HitDef]
type = HitDef

trigger1 =  root,var(15)<6
trigger1 = 1
attr = S,HP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * (28 * (ifElse(var(20), 1.1, 1))) < 7, 7, fvar(11) * (28 * (ifElse(var(20), 1.1, 1))))), 4
getPower = 0, 0
givePower = 35, 35
pauseTime = 4 * (var(2) < 6), 12
guard.pauseTime = 4 * (var(2) < 6), 10
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = ifelse(var(2)<6, -10.52, -6), ifelse(var(2)<6, 0, -4.85)
ground.cornerPush.velOff = 0
guard.velocity = -10.25
guard.cornerPush.velOff = 0
air.velocity = -5.35, -6
air.cornerPush.velOff = 0
airGuard.velocity = -5, -1
airGuard.cornerPush.velOff = 0
yAccel = .5
fall = (var(2)>=4)
air.fall = 1
fall.recover = 0
fall.recoverTime = 120;34
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120



[State 1117, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1




[State 3105,Super]
type = null;Helper
Trigger1 = Time = 0
id = 3110
name = "shinku"
pos = 0,0
postype = P1
stateno = 3110
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
persistent = 0
pausemovetime = 99999
supermovetime = 99999
size.xscale = 0.2
size.yscale = 0.2

[State 3105,Super]
type = null;Helper
Trigger1 = Time = 0
id = 3120
name = "shinku"
pos = 0,0
postype = P1
stateno = 3120
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
persistent = 0
pausemovetime = 99999
supermovetime = 99999
size.xscale = 0.3
size.yscale = 0.3



[State 1117, ChangeState]
type = ChangeState
trigger1 = MoveContact = 1
value = ifElse(var(2) < 6, 3105, 1506)
ignoreHitPause = 1






[State 3105, End]
type = DestroySelf
triggerall = time > 1
trigger1 = FrontEdgeDist <= -40








;Disappear
[StateDef 3107]
type = A
physics = N
moveType = A
anim = 7705
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 3120]
Type = RemoveExplod
Trigger1 = Time = 0
ID = 7702

[State 3120]
Type = RemoveExplod
Trigger1 = Time = 0
ID = 7711

[State 3107, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 3107, End]
type = ChangeState
trigger1 = !AnimTime
value = 3108

;Wait
[StateDef 3108]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 3108, End]
type = DestroySelf
trigger1 = !NumTarget
trigger2 = NumTarget
trigger2 = Target, Time <= 1 && !(Target,HitShakeOver)

;FX
[StateDef 3110]
Type = S
MoveType = I
Physics = N
Ctrl = 0
Anim = 7700
VelSet = 0,0
SprPriority = 5

[State 3110]
Type = AssertSpecial
Trigger1 = 1
Flag = NoShadow

[State 3110]
Type = BindToParent
Trigger1 = 1
Pos = 0, 0

[State 3110, DestroySelf]
type = DestroySelf
triggerall = time > 1
trigger1 = FrontEdgeDist <= -40

[State 3110, 4]
type = ChangeState
triggerall = time > 1
trigger1 = time >= 287+(var(10)*2)
value = 3111

[State 3110, 4]
type = ChangeState
triggerall = time > 1
trigger1 = !root,NumProjID(3105)
value = 3111

;FX
[StateDef 3120]
Type = S
MoveType = I
Physics = N
Ctrl = 0
Anim = 7710
VelSet = 0,0
SprPriority = 5

[State 3120]
Type = AssertSpecial
Trigger1 = 1
Flag = NoShadow

[State 3120]
Type = BindToParent
Trigger1 = 1
Pos = 0, 0

[State 3120]
Type = RemoveExplod
Trigger1 = Time = 0
ID = 7300

[State 3120]
Type = changestate
triggerall = time > 1
trigger1 = FrontEdgeDist <= -40
trigger2 = root,projhittime(3105) = 1
trigger3 = !root,NumProjID(3105)
value = 3107




;FX
[StateDef 3111]
Type = S
MoveType = I
Physics = N
Ctrl = 0
Anim = 7701
VelSet = 0,0
SprPriority = 5

[State 3120]
Type = RemoveExplod
Trigger1 = Time = 0
ID = 7700

[State 3111]
Type = AssertSpecial
Trigger1 = 1
Flag = NoShadow

[State 3111]
Type = BindToParent
Trigger1 = 1
Pos = 0, 0

[State 3111, PalFX]
type = PalFX
trigger1 = time = 0
time = 1
add = 0,0,0

[State 3111, Transparency]
type = Trans
trigger1 = 1
Trans=AddAlpha
alpha = 256-(time),256

[State 3111]
Type = Changestate
triggerall = time > 10
trigger1 = FrontEdgeDist <= -40
trigger2 = root,projhittime(3105) = 1
trigger3 = !root,NumProjID(3105)
value = 3107












;MAX PSYCHO STREAM PROJECTILE
[StateDef 3155]
type = S
movetype = A
physics = N
ctrl = 0
velset = 0,0
anim = 7300
sprpriority = 4

[State 3105, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 3105, VarSet]
type = VarSet
trigger1 = time = 0
ignorehitpause = 1
var(10) = parent,var(10)

[State 3105, VelSet]
type = VelSet
trigger1 = time = 1
x = 1+.135*var(10)

[State 1000, Flame Particles]
type = Helper
trigger1 = AnimElemTime(1) > 0
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 1506, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3105, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3105, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1110, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1117, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = ifElse(var(2) < 10, 3105, 1506)
ignoreHitPause = 1





[State 1117, VarAdd]
type = VarAdd
trigger1 = !Time
var(2) = 1

[State 1117, HitDef]
type = HitDef
trigger1 =  root,var(15)<10
trigger1 = 1
attr = S,HP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * (28 * (ifElse(var(20), 1.1, 1))) < 7, 7, fvar(11) * (28 * (ifElse(var(20), 1.1, 1))))), 4
getPower = 0, 0
givePower = 35, 35
pauseTime = 4 * (var(2) < 10), 12
guard.pauseTime = 4 * (var(2) < 10), 10
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = ifelse(var(2)<10, -10.52, -6), ifelse(var(2)< 10, 0, -4.85)
ground.cornerPush.velOff = 0
guard.velocity = -10.25
guard.cornerPush.velOff = 0
air.velocity = -5.35, -6
air.cornerPush.velOff = 0
airGuard.velocity = -5, -1
airGuard.cornerPush.velOff = 0
yAccel = .5
fall = (var(2)>= 8)
air.fall = 1
fall.recover = 0
fall.recoverTime = 120;34
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120



[State 1117, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1




[State 3105,Super]
type = null;Helper
Trigger1 = Time = 0
id = 3110
name = "shinku"
pos = 0,0
postype = P1
stateno = 3110
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
persistent = 0
pausemovetime = 99999
supermovetime = 99999
size.xscale = 0.2
size.yscale = 0.2

[State 3105,Super]
type = null;Helper
Trigger1 = Time = 0
id = 3120
name = "shinku"
pos = 0,0
postype = P1
stateno = 3120
helpertype = normal
keyctrl = 0
ownpal = 1
ignorehitpause = 1
persistent = 0
pausemovetime = 99999
supermovetime = 99999
size.xscale = 0.3
size.yscale = 0.3



[State 1117, ChangeState]
type = ChangeState
trigger1 = MoveContact = 1
value = ifElse(var(2) < 9, 3155, 1506)
ignoreHitPause = 1






[State 3105, End]
type = DestroySelf
triggerall = time > 1
trigger1 = FrontEdgeDist <= -40


;SONIC HURRICANE PROJECTILE>=
[StateDef 3205]
type = S
moveType = A
ctrl = 0
sprPriority = 4

[State 3205, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = ceil(79 * Root, const(size.xScale)), ceil(-61 * Root, const(size.yScale))
ignoreHitPause = 1

[State 3205, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
slot = 0
stateNo = 3205
ignoreHitPause = 1

[State 3205, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignoreHitPause = 1

[State 3205, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3205
value = 3205

[State 3205, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 3205, Damage Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3205, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 3205, First 11 Hits]
type = HitDef
trigger1 = Root, StateNo = 3200
trigger1 = ((Time = 6 && PrevStateNo = 3206) || (Time = 0 && !var(14))) && (var(13) < 11)
attr = S, HP
hitFlag = MAFP
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0,2
guard.pauseTime = 0,2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
guard.hittime = (18) - 6
ground.slideTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = ifElse(var(13) % 2 = 0, -10.52, 10.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(13) % 2 = 0, -10.52, 10.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(13) % 2 = 0, -4.31, 4.31), -1.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.sparkNo = -1
sparkXY = -10, -48
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
sprPriority = 3

[State 3205, Final Hit]
type = HitDef
trigger1 = Root, StateNo = 3200
trigger1 = (Time = 6 && PrevStateNo = 3206) && (var(13) = 11)
attr = S, HP
hitFlag = MAFP
guardFlag = M
priority = 4,Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0,12
guard.pauseTime = 0,10
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = High
ground.hitTime = 15
guard.hittime = (15) - 6
ground.slideTime = 15
air.hitTime = 60
ground.velocity = -4.32, -7.49
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.sparkNo = -1
sparkXY = -10, -48
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
sprPriority = 3

[State 3205, Miss]
type = HitDef
trigger1 = (Root, var(16)) || (Root, var(15) >= (12 + HitCount) && Parent, StateNo = 3200)
attr = S, HP
hitFlag =
sparkXY = -10,0

[State 3205, End]
type = ChangeState
trigger1 = MoveContact
value = 3206
ignoreHitPause = 1

[State 3205, End]
type = ChangeState
trigger1 = Root, MoveType = H
trigger2 = Time = 50 + var(13) * 3
trigger3 = var(14) >= 12
value = 3207
ignoreHitPause = 1


;Hit Pause
[StateDef 3206]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1
hitCountPersist = 1

[State 3206, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 3206, VarSet]
type = VarAdd
trigger1 = 1
var(14) = 1

[State 3206, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
ignoreHitPause = 1

[State 3206, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ceil(P2Dist x), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3206, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ceil(P2Dist x), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3206, Parent Hit Count]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 3206, Self Hit Count]
type = VarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 3206, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1

[State 3206, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 3206, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = 3200
var(18) = 1

[State 3206, End]
type = ChangeState
trigger1 = Time >= 0
value = 3205


;Disappear
[StateDef 3207]
type = A
physics = N
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 3207, VarSet]
type = VarSet
trigger1 = !Time
var(10) = AnimElemNo(0)

[State 3207, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 3207
elem = var(10)

[State 3207, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256 - (32 * Time), 256
ignoreHitPause = 1

[State 3207, End]
type = ChangeState
trigger1 = Time = 8
value = 1008

;FX PROJECTILE=
[Statedef 7200]
type = S
movetype = I
physics = N
anim = 7200
ctrl = 0
sprpriority = 5

[State 1025, Trans]
type = Trans
trigger1 = 1
trans = Addalpha
alpha = 256,256

[State 1025, Bind]
type=BindToParent
trigger1 = 1
pos = ceil(90*const(size.xscale)),ceil(-190*const(size.yscale))
;pos = ceil(90*const(size.xscale)),ceil(-200*const(size.yscale))
postype = p1
;facing   = 1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;ignorehitpause = 0

[State 1025, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,stateno != 620
trigger3 = root,stateno = 620 && root,animelemtime(4) = 0

;FX PROJECTILE=
[Statedef 7201]
type = S
movetype = I
physics = N
anim = 7200
ctrl = 0
sprpriority = 5

[State 1025, Trans]
type = Trans
trigger1 = 1
trans = Addalpha
alpha = 256,256

[State 1025, Bind]
type=BindToParent
trigger1 = 1
pos = ceil(90*const(size.xscale)),ceil(-190*const(size.yscale))
;pos = ceil(90*const(size.xscale)),ceil(-200*const(size.yscale))
postype = p1
;facing   = 1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;ignorehitpause = 0

[State 1025, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,stateno != 621
trigger3 = root,stateno = 621 && root,animelemtime(4) = 0

;FX PROJECTILE=
[Statedef 7205]
type = S
movetype = I
physics = N
anim = 7200
ctrl = 0
sprpriority = 5

[State 1025, Trans]
type = Trans
trigger1 = 1
trans = Addalpha
alpha = 256,256

[State 1025, Bind]
type=BindToParent
trigger1 = 1
pos = ceil(90*const(size.xscale)),ceil(-190*const(size.yscale))
;pos = ceil(90*const(size.xscale)),ceil(-200*const(size.yscale))
postype = p1
;facing   = 1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;ignorehitpause = 0

[State 1025, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,stateno != 625
trigger3 = root,stateno = 625 && root,animelemtime(4) = 0

;FX PROJECTILE=
[Statedef 7250]
type = S
movetype = I
physics = N
anim = 7250
ctrl = 0
sprpriority = 5

[State 1025, Trans]
type = Trans
trigger1 = 1
trans = Addalpha
alpha = 256,256

[State 1025, Bind]
type=BindToParent
trigger1 = 1
pos = ceil(300*const(size.xscale)),ceil(-308*const(size.yscale))
;pos = ceil(90*const(size.xscale)),ceil(-200*const(size.yscale))
postype = p1
;facing   = 1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;ignorehitpause = 0

[State 1025, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,stateno != 420
trigger3 = root,stateno = 420 && root,animelemtime(5) = 0

;FX PROJECTILE=
[Statedef 7550]
type = S
movetype = I
physics = N
anim = 7550
ctrl = 0
sprpriority = 5

[State 1025, Trans]
type = Trans
trigger1 = 1
trans = Addalpha
alpha = 256,256

[State 1025, Bind]
type=BindToParent
trigger1 = 1
pos = ceil(185*const(size.xscale)),ceil(-208*const(size.yscale))
;pos = ceil(90*const(size.xscale)),ceil(-200*const(size.yscale))
postype = p1
;facing   = 1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;ignorehitpause = 0

[State 1025, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,stateno != 220
trigger3 = root,stateno = 220 && root,animelemtime(6) = 0

;FX PROJECTILE=
[Statedef 7450]
type = S
movetype = I
physics = N
anim = 7450
ctrl = 0
sprpriority = 5

[State 1505,0]
type = BindToRoot
trigger1 = 1
pos = 22,-53
ignorehitpause = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(3) < 0
value = anim
elem = 0
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(3) > 0
trigger1 = root,animelemtime(4) < 0
value = anim
elem = 1
persistent = 1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;ignorehitpause = 1

[State 5035, 1]
type = Trans
trigger1 = 1
trans = add

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,stateno != 225 && root,stateno != 225
trigger3 = root,stateno = 225 && root,time = 1
trigger4 = root,stateno = 225 && root,time = 1

;FX PROJECTILE=
[Statedef 7451]
type = S
movetype = I
physics = N
anim = 7451
ctrl = 0
sprpriority = 5

[State 1505,0]
type = BindToRoot
trigger1 = 1
pos = 35,-56
ignorehitpause = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(4) < 0
value = anim
elem = 0
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(4) > 0
trigger1 = root,animelemtime(6) < 0
value = anim
elem = 1
persistent = 1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;ignorehitpause = 1

[State 5035, 1]
type = Trans
trigger1 = 1
trans = add

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,stateno != 225 && root,stateno != 225
trigger3 = root,stateno = 225 && root,time = 1
trigger4 = root,stateno = 225 && root,time = 1

;FX PROJECTILE=
[Statedef 7452]
type = S
movetype = I
physics = N
anim = 7452
ctrl = 0
sprpriority = 5

[State 1505,0]
type = BindToRoot
trigger1 = 1
pos = 35,-56
ignorehitpause = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(6) < 0
value = anim
elem = 0
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(6) > 0
trigger1 = root,animelemtime(7) < 0
value = anim
elem = 1
persistent = 1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;ignorehitpause = 1

[State 5035, 1]
type = Trans
trigger1 = 1
trans = add

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,stateno != 225 && root,stateno != 225
trigger3 = root,stateno = 225 && root,time = 1
trigger4 = root,stateno = 225 && root,time = 1

;FX PROJECTILE=
[Statedef 7453]
type = S
movetype = I
physics = N
anim = 7453
ctrl = 0
sprpriority = 5

[State 1505,0]
type = BindToRoot
trigger1 = 1
pos = 43,-38
ignorehitpause = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(14) < 0
value = anim
elem = 0
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(14) > 0
trigger1 = root,animelemtime(15) < 0
value = anim
elem = 1
persistent = 1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;ignorehitpause = 1

[State 5035, 1]
type = Trans
trigger1 = 1
trans = add

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,stateno != 225 && root,stateno != 225
trigger3 = root,stateno = 225 && root,time = 1
trigger4 = root,stateno = 225 && root,time = 1

;FX PROJECTILE=
[Statedef 7454]
type = S
movetype = I
physics = N
anim = 7454
ctrl = 0
sprpriority = 5

[State 1505,0]
type = BindToRoot
trigger1 = 1
pos = 11,-15
ignorehitpause = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(15) < 0
value = anim
elem = 0
persistent = 1

[State 20000, ChangeAnim]
type = changeanim
trigger1 = root,animelemtime(15) > 0
trigger1 = root,animelemtime(16) < 0
value = anim
elem = 1
persistent = 1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
;ignorehitpause = 1

[State 5035, 1]
type = Trans
trigger1 = 1
trans = add

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,stateno != 225 && root,stateno != 225
trigger3 = root,stateno = 225 && root,time = 1
trigger4 = root,stateno = 225 && root,time = 1

;FX PROJECTILE=
[Statedef 7900]
type = A
movetype = I
physics = N
ctrl = 0
anim = 7900
velset = 0,0
ownpal = 1
sprpriority = 5

[State 1505,0]
type = Bindtoparent
trigger1 = anim != 7901
pos = 112, -88
postype = p1

[State 1025, Trans]
type = Trans
trigger1 = 1
trans    = Addalpha
alpha    = 256,256
ignorehitpause = 1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = anim = 7901 && animtime = 0
trigger2 = parent,stateno != 3000
trigger3 = parent,stateno = 3000 && parent,time = 1
trigger4 = root,movetype = H

;FX PROJECTILE=
[Statedef 7901]
type = A
movetype = I
physics = N
ctrl = 0
anim = 7901
velset = 0,0
ownpal = 1
sprpriority = 3

[State 1505,0]
type = Bindtoparent
trigger1 = anim != 7900
pos = 30,-45
postype = p1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = animtime = 0
trigger2 = root,movetype = H

;FX PROJECTILE=
[Statedef 7910]
type = A
movetype = I
physics = N
ctrl = 0
anim = 7900
velset = 0,0
ownpal = 1
sprpriority = 5

[State 1505,0]
type = Bindtoparent
trigger1 = anim != 7901
pos = 112, -88
postype = p1

[State 1025, Trans]
type = Trans
trigger1 = 1
trans    = Addalpha
alpha    = 256,256
ignorehitpause = 1

[State 9000, Assert]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 4110, DestroySelf]
type = DestroySelf
trigger1 = anim = 7901 && animtime = 0
trigger2 = parent,stateno != 3050
trigger3 = parent,stateno = 3050 && parent,time = 1
trigger4 = root,movetype = H

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



;JUMP DUST=
[StateDef 8100]
type = S
anim = 1
velSet = 0,0

[State 8100, Bind]
type = BindToRoot
trigger1 = Time

[State 8100, Floor Dust]
type = Explod
trigger1 = !Time
anim = 8100
sprPriority = 3
posType = P1
pos = 0, ceil(pos y)
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 8100, Player Dust]
type = Explod
trigger1 = !Time || Time = 2 || Time = 6
anim = 8101
sprPriority = 3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 8100, End]
type = DestroySelf
trigger1 = Time >= 7



;DASH DUST=
[StateDef 8103]
type = A
anim = 1
velSet = 0,0
sprPriority = 5

[State 8103, posSet]
type = PosSet
trigger1 = !Time = 0
y = 0

[State 8103, Dash Dust]
type = Explod
trigger1 = Time = 0 || Time = 3 || Time = 6
anim = 8103
ID = ifElse((Time = 6), 3, ifElse((Time = 3), 2, 1))
posType = P1
pos = 0,-4
random = 8,8
vel = -3 - (Random / 1000.0), -2 - (Random / 2000.0)
facing = ifElse(Random < 500,-1,1)
vFacing = ifElse(Random < 500,-1,1)
removeTime = 16
sprPriority = 3
pauseMoveTime = -1
superMoveTime = -1

[State 8103, Scale Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.1 + (0.025 * Time), 0.1 + (0.025 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8103, Scale Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.1 + (0.025 * (Time - 3)), 0.1 + (0.025 * (Time - 3))
trans = AddAlpha
alpha = 256 - (16 * (Time - 3)), 256

[State 8103, Scale Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 0.1 + (0.025 * (Time - 6)), 0.1 + (0.025 * (Time - 6))
trans = AddAlpha
alpha = 256 - (16 * (Time - 6)), 256

[State 8103, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 22

[State 8103, End]
type = DestroySelf
trigger1 = !NumExplod


;IMPACT DUST=
[StateDef 8110]
type = A
anim = 1
velSet = 0,0
sprPriority = 5

[State 8110, Impact Dust Explod 1]
type = Explod
trigger1 = !Time
anim = 8110
ID = ifElse(Time = 8, 3, ifElse(Time = 4, 2, 1))
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8110, Impact Dust Explod 2]
type = Explod
trigger1 = !Time
anim = 8120
ID = 2
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8110, Scale]
type = ModifyExplod
trigger1 = 1
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 256, 256 - (64 * (Time - 4))), 256

[State 8110, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 8

[State 8110, End]
type = DestroySelf
trigger1 = !NumExplod


;WALL IMPACT DUST=
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

;FLAMES>=
[StateDef 8150]
type = A
velSet = 0,0
anim = 1

[State 8150, Player]
type = VarSet
trigger1 = !Time
var(0) = Parent, var(43)

[State 8150, PosSet]
type = PosSet
trigger1 = PlayerIDexist(var(0))
x = ceil(PlayerID(var(0)), pos x)
y = ceil(PlayerID(var(0)), pos y) + (PlayerID(var(0)), const(size.mid.pos.y))

[State 8150, PosSet (Laying Down)]
type = PosSet
trigger1 = PlayerIDexist(var(0))
trigger1 = PlayerID(var(0)), StateType = L
x = ceil(PlayerID(var(0)), pos x)
y = ceil(PlayerID(var(0)), pos y) - 20

[State 8150, Facing]
type = Turn
trigger1 = PlayerIDexist(var(0))
trigger1 = Facing != (PlayerID(var(0)), Facing)

[State 8150, Flame Explod 1]
type = Explod
trigger1 = PlayerIDexist(var(0))
anim = 8150 + (Root, StateNo = [3500,3599])
sprPriority = 3
posType = P1
random = 40,40
vel = (Random / 2000.0), -0.5 - (Random / 2000.0)
facing = ifElse(Random < 500, -1, 1)
vfacing = ifElse(Random < 500, -1, 1)
scale = 0.5,0.5
ownpal = 1

[State 8150, Flames Explod 2]
type = Explod
trigger1 = PlayerIDexist(var(0))
anim = 8150 + (Root, StateNo = [3500,3599])
sprPriority = 3
posType = P1
random = 60,60
vel = (Random / 2000.0), -0.5 - (Random / 2000.0)
facing = ifElse(Random < 500, -1, 1)
vfacing = ifElse(Random < 500, -1, 1)
scale = 0.5,0.5
ownpal = 1

[State 8150, End]
type = DestroySelf
trigger1 = Time >= 600
trigger2 = !PlayerIDexist(var(0))
trigger3 = Time > 45 && (Root, StateNo = [3100,3101]) && !(Root, var(40))
trigger4 = Time > 45 && (Root, StateNo = [3200,3299])
trigger5 = Time > 45 && (Root, StateNo = [3400,3510])

[State 8150, End]
type = DestroySelf
triggerAll = PlayerIDexist(var(0))
trigger1 = PlayerID(var(0)), ctrl
trigger2 = PlayerID(var(0)), Movetype != H || PlayerID(var(0)), StateNo = 5300
trigger3 = PlayerID(var(0)), StateType = L && (PlayerID(var(0)), StateNo != [5080,5081])

;RECOVER FX>=
[StateDef 8200]
type = A
velSet = 0,0
anim = 8200
sprPriority = 5

[State 8200, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8200, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.25 + (0.017 * Time), 0.25 + (0.017 * Time)
ignoreHitPause = 1

[State 8200, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = ceil(256 - 17.1 * Time), 256
ignoreHitPause = 1

[State 8200, End]
type = DestroySelf
trigger1 = Time >= 15



;COUNTER FX>=
[StateDef 8290]
type = A
physics = N
velSet = 0,0
anim = 1

[State 8290, "Counter!" Text Explod]
type = Explod
trigger1 = !NumExplod(8290)
anim = 8290
ID = 8290
sprPriority = 64
posType = P1
facing = Facing
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8290, Scale]
type = ModifyExplod
trigger1 = Time < 8
ID = 8290
scale = 0.5, .5
trans = AddAlpha
alpha = 256,0

[State 8290, Scale]
type = ModifyExplod
trigger1 = Time >= 8
ID = 8290
scale = 0.5 + 0.0625 * (Time - 8), 0.5 + 0.0625 * (Time - 8)
trans = AddAlpha
alpha = 256 - 32 * (Time - 8), 32 * (Time - 8)

[State 8290, Safety]
type = RemoveExplod
trigger1 = Time >= 16

[State 8290, End]
type = DestroySelf
trigger1 = Time >= 16



;POWER CHARGE FX>=
;Aura and Dust
[StateDef 8330]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velset = 0,0

[State 8330, BindToRoot]
type = BindToRoot
trigger1 = (Root, StateNo = 730)
pos = 0,0

[State 8330, Charging Sound]
type = PlaySnd
trigger1 = !Time
value = 730,0
channel = 0

[State 8330, Power Charge Aura]
type = Explod
trigger1 = !NumExplod(8330)
ID = 8330
anim = 8330
sprPriority = 3
posType = P1
bindTime = -1
removeTime = -1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8330, Power Charge Dust]
type = Explod
trigger1 = !(Time % 6)
anim = 8105
sprPriority = -3
posType = P1
pos = 0, -ceil(pos y)
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8330, Modify Aura 1]
type = ModifyExplod
trigger1 = Numexplod(8330) && Root, Power < 3000
ID = 8330
scale = 0.5, 0.1 + 0.4 * (Root, Power / 3000.0)

[State 8330, Modify Aura 2]
type = ModifyExplod
trigger1 = NumExplod(8330) && Root, Power >= 3000
ID = 8330
scale = 0.5, 0.5

[State 8330, StopSnd]
type = StopSnd
trigger1 = Root, StateNo != 730
channel = 0

[State 8330, RemoveExplod]
type = RemoveExplod
trigger1 = Root, StateNo != 730

[State 8330, End]
type = DestroySelf
trigger1 = Root, StateNo != 730


;Particles
[StateDef 8331]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 8331, BindToRoot]
type = BindToRoot
trigger1 = !(Time % 8)
pos = ceil(-151 + (Random / 3.125)), ceil(98 - (Random / 3.125))

[State 8331, Particle]
type = Explod
trigger1 = (Time % 8) = 1
anim = 8331
sprPriority = ifElse(Random < 750, 5, -1)
posType = P1
vel = ((RootDist x - 9) / 32.0), ((RootDist y - 71) / 32.0)
scale = ifElse(Random < 500, 0.5, -0.5), ifElse(Random < 500, 0.5, -0.5)
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 8331, RemoveExplod]
type = RemoveExplod
trigger1 = Root, StateNo != 730

[State 8331, End]
type = DestroySelf
trigger1 = Root, StateNo != 730


;VIOLENT WIN VS VEGA PARTICLES>=
[StateDef 8332]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 8332, BindToRoot]
type = BindToRoot
trigger1 = !(Time % 4)
pos = ceil(-40 + (Random /10.25)), ceil(-17 - (Random / 10.25))

[State 8332, Particles]
type = Explod
trigger1 = (Time % 4) = 1
anim = 8332
sprPriority = ifElse(Random < 750,5,-1)
posType = P1
vel = (-(RootDist x + 4) / 10.0),(-(RootDist y - 85) / 10.0)
scale = ifElse(random < 500 ,0.5, -0.5),ifElse(random < 500, 0.5, -0.5)
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8332, RemoveExplod]
type = RemoveExplod
trigger1 = Root, StateNo != 187 || Root, AnimElemTime(60) >= 0

[State 833, End]
type = DestroySelf
trigger1 = Root, StateNo != 187 || Root, AnimElemTime(60) >= 0



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



;CUSTOM COMBO>=
[StateDef 8400]
type = A
physics = N
moveType = I
anim = 8400
ctrl = 0
velSet = 0,0
sprPriority = 5

[State 8400, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8400, BGpalFX]
type = BGpalFX
trigger1 = Time < 25
time = 1
mul = 128,128,128

[State 8400, Rotate]
type = AngleSet
trigger1 = !Time
value = 6 * (Random % 60)

[State 8400, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8400, Scale]
type = AngleDraw
trigger1 = Time < 8
scale = (0.0625 * Time), (0.0625 * Time)
ignoreHitPause = 1

[State 8400, Scale]
type = AngleDraw
trigger1 = Time >= 8
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8400, Transparency]
type = Trans
trigger1 = Time < 16
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8400, Transparency]
type = Trans
trigger1 = Time >= 16
trans = AddAlpha
alpha = ceil(256 - 25.6 * (Time - 16)), 256
ignoreHitPause = 1

[State 8400, Lines Explod]
type = Explod
trigger1 = !Time
anim = 8401
ID = 1
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8400, Scale Lines Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 2 - (0.125 * Time), 2 - (0.125 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8400, Circle Explod]
type = Explod
trigger1 = Time = 16
anim = 8402
ID = 2
sprPriority = 5
posType = P1
removeTime = 32
superMoveTime = -1

[State 8400, Scale Circle Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.1 * (Time - 16)), (0.1 * (Time - 16))
trans = AddAlpha
alpha = ceil(256 - 25.6 * (Time - 16)), 256

[State 8400, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 26

[State 8400, End]
type = DestroySelf
trigger1 = Time >= 26



;SUPER PAUSE FX>=
;Level 1 Super FX
[StateDef 8500]
type = A
velSet = 0,0
anim = 8500
sprPriority = 5

[State 8500, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8500, BGpalFX]
type = BGpalFX
trigger1 = Time < 39
time = 1
color = 0
mul = 0,0,256

[State 8500, Rotate]
type = AngleSet
trigger1 = !Time
value = 6 * (Random % 60)

[State 8500, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8500, Scale]
type = AngleDraw
trigger1 = Time < 16
scale = (0.03125 * Time), (0.03125 * Time)
ignoreHitPause = 1

[State 8500, Scale]
type = AngleDraw
trigger1 = Time >= 16
scale = 0.5,0.5
ignoreHitPause = 1

[State 8500, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8500, Lines Explod]
type = Explod
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24
anim = 8501
ID = ifElse(Time = 24, 4, ifElse(Time = 16, 3, ifElse(Time = 8, 2, 1)))
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8500, Scale Lines Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8500, Scale Lines Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 1 - (0.0625 * (Time - 8)), 1 - (0.0625 * (Time - 8))
trans = AddAlpha
alpha = ifElse((Time - 8) < 4, 64 * (Time - 8), 256), 256

[State 8500, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 1 - (0.0625 * (Time - 16)), 1 - (0.0625 * (Time - 16))
trans = AddAlpha
alpha = ifElse((Time - 16) < 4, 64 * (Time - 16), 256), 256

[State 8500, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 1 - (0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8500, Circle Explod]
type = Explod
trigger1 = Time = 24
anim = 8502
ID = 10
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 32
superMoveTime = -1

[State 8500, Scale Circle Explod]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
scale = 2 - (0.125 * (Time - 24)), 2 - (0.125 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8500, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 40

[State 8500, End]
type = DestroySelf
trigger1 = Time >= 40


;Level 2 Super FX
[StateDef 8510]
type = A
velSet = 0,0
anim = 8510
sprPriority = 5

[State 8510, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8510, BGpalFX]
type = BGpalFX
trigger1 = Time < 39
time = 1
color = 0
mul = 192,0,256

[State 8510, Rotate]
type = AngleSet
trigger1 = !Time
value =6 * (Random % 60)

[State 8510, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8510, Scale]
type = AngleDraw
trigger1 = Time < 16
scale = (0.03125 * Time), (0.03125 * Time)
ignoreHitPause = 1

[State 8510, Scale]
type = AngleDraw
trigger1 = Time >= 16
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8510, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8510, Lines Explod]
type = Explod
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24
anim = 8511
ID = ifElse(Time = 24, 4, ifElse(Time = 16, 3, ifElse(Time = 8, 2, 1)))
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8510, Scale Lines Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8510, Scale Lines Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 1 - (0.0625 * (Time - 8)), 1 - (0.0625 * (Time - 8))
trans = AddAlpha
alpha = ifElse((Time - 8) < 4, 64 * (Time - 8), 256), 256

[State 8510, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 1 - (0.0625 * (Time - 16)), 1 - (0.0625 * (Time - 16))
trans = AddAlpha
alpha = ifElse((Time - 16) < 4, 64 * (Time - 16), 256), 256

[State 8510, Scale Lines Explod 4]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 1 -(0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8510, Circle Explod]
type = Explod
trigger1 = Time = 24
anim = 8512
ID = 10
sprPriority = 5
posType = P1
facing = ifElse(Random < 500,-1,1)
vFacing = ifElse(Random < 500,-1,1)
removeTime = 32
superMoveTime = -1

[State 8510, Scale]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
scale = 2 - (0.125 * (Time - 24)), 2 - (0.125 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24)<4, 64 * (Time - 24), 256), 256

[State 8510, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 40

[State 8510, End]
type = DestroySelf
trigger1 = Time >= 40


;Level 3 Super FX
[StateDef 8520]
type = A
velset = 0,0
anim = 8520
sprPriority = 5

[State 8520, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8520, Assert: NoBG, NoFG]
type = AssertSpecial
trigger1 = Time < 40
flag = NoBG
flag2 = NoFG

[State 8520, Rotate]
type = AngleSet
trigger1 = !Time
value = 6 * (Random % 60)

[State 8520, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8520, Scale]
type = AngleDraw
trigger1 = Time < 16
scale = (0.03125 * Time), (0.03125 * Time)
ignoreHitPause = 1

[State 8520, Scale]
type = AngleDraw
trigger1 = Time >= 16
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8520, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8520, Portrait 1]
type = Explod
trigger1 = !Time
anim = 8525
ID = 20
sprPriority = -16
posType = Back
removeTime = 40
superMoveTime = -1

[State 8520, Portrait 2]
type = Explod
trigger1 = !Time
anim = 8525
ID = 21
sprPriority = -16
posType = Back
removeTime = 40
superMoveTime = -1

[State 8520, Scale Portrait 1a]
type = ModifyExplod
trigger1 = NumExplod(20) && Time < 16
ID = 20
posType = Back
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 1 - (0.03125 * Time), 1 - (0.03125 * Time)
trans = AddAlpha
alpha = (8 * Time), 256

[State 8520, Scale Portrait 2a]
type = ModifyExplod
trigger1 = NumExplod(21) && Time < 16
ID = 21
posType = Back
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 2 - (0.09375 * Time), 2 - (0.09375 * Time)
trans = AddAlpha
alpha = (8 * Time), 256

[State 8520, Scale Portrait 1b]
type = ModifyExplod
trigger1 = NumExplod(20) && (Time = [16,32])
ID = 20
posType = Back
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 0.5, 0.5
trans = AddAlpha
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

[State 8520, Lines Explod]
type = explod
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24
anim = 8521
ID = ifElse(Time = 24, 4, ifElse(Time = 16, 3, ifElse(Time = 8, 2, 1)))
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8520, Scale Lines Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8520, Scale Lines Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 1-(0.0625 * (Time - 8)), 1 - (0.0625 * (Time - 8))
trans = AddAlpha
alpha = ifElse((Time - 8) < 4, 64 * (Time - 8), 256), 256

[State 8520, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 1 - (0.0625 * (Time - 16)), 1 - (0.0625 * (Time - 16))
trans = AddAlpha
alpha = ifElse((Time - 16) < 4, 64 * (Time - 16), 256), 256

[State 8520, Scale Lines Explod 4]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 1 - (0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8520, Circle Explod]
type = Explod
trigger1 = Time = 24
anim = 8522
ID = 10
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1 ,1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 32
superMoveTime = -1

[State 8520, Scale Circle Explod]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
scale = 2 - (0.125 * (Time - 24)), 2 - (0.125 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8520, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 40

[State 8520, End]
type = DestroySelf
trigger1 = Time >= 40



;SUPER FINISH>=
[StateDef 8600]
type = A
velSet = 0,0
anim = 1

[State 8600, Super Finish Sound]
type = PlaySnd
trigger1 = !Time
value = 8600,0
channel = 0

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

[State 8600, Move Name: Somersault Strike]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3000,3099])
var(0) = 2

[State 8600, Move Name: Total Wipeout]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3100,3199])
var(0) = 3

[State 8600, Move Name: Sonic Hurricane]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3200,3299])
var(0) = 4

[State 8600, Move Name: Opening Gambit]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3300,3399])
var(0) = 5

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
scale = (0.25 * Time) * (1.3333333 * GameHeight / GameWidth), (0.25 * Time) * (1.3333333 * GameHeight / GameWidth)
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



;CAMERA CONTROL>=
[StateDef 8999]
type = S
velSet = 0,0
anim = 1

[State 8999, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 1,1
ignoreHitPause = 1

[State 8999, End]
type = DestroySelf
trigger1 = RoundState = 2
