; ___________________________________
;| Nakoruru by Phantom.of.the.Server |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================< COMMAND FILE >=======================================
;==============================================================================================

;====================< BUTTON REMAPPING >====================

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s


;====================< DEFAULT VALUES >====================

[Defaults]
command.time = 15
command.buffer.time = 1


;====================< SINGLE BUTTON >====================

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
name = "start"
command = s
time = 1

[Command]
name = "a+"
command = a
time = 1
buffer.time = 5
[Command]
name = "b+"
command = b
time = 1
buffer.time = 5
[Command]
name = "c+"
command = c
time = 1
buffer.time = 5
[Command]
name = "x+"
command = x
time = 1
buffer.time = 5
[Command]
name = "y+"
command = y
time = 1
buffer.time = 5
[Command]
name = "z+"
command = z
time = 1
buffer.time = 5


;====================< HOLD DIR >====================

[Command]
name = "holdfwd"
command = /$F
time = 1
[Command]
name = "holdback"
command = /$B
time = 1
[Command]
name = "holdup"
command = /$U
time = 1
[Command]
name = "holddown"
command = /$D
time = 1


;====================< RELEASE DIR >====================

[Command]
name = "rlsdir"
command = ~$F
time = 1
[Command]
name = "rlsdir"
command = ~$B
time = 1
[Command]
name = "rlsdir"
command = ~$U
time = 1
[Command]
name = "rlsdir"
command = ~$D
time = 1


;====================< HOLD BUTTON >====================

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


;====================< DIR >====================

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


;====================< RELEASE BUTTON >====================

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

[Command]
name = "rlsx+"
command = ~x
time = 1
buffer.time = 5
[Command]
name = "rlsy+"
command = ~y
time = 1
buffer.time = 5
[Command]
name = "rlsz+"
command = ~z
time = 1
buffer.time = 5
[Command]
name = "rlsa+"
command = ~a
time = 1
buffer.time = 5
[Command]
name = "rlsb+"
command = ~b
time = 1
buffer.time = 5
[Command]
name = "rlsc+"
command = ~c
time = 1
buffer.time = 5


;===================< SUPER MOTIONS >===================

[Command]
name = "624624kk"
command = ~F, D, B, F, D, B, a+b
time = 48
[Command]
name = "624624kk"
command = ~F, D, B, F, D, B, a+c
time = 48
[Command]
name = "624624kk"
command = ~F, D, B, F, D, B, b+c
time = 48

[Command]
name = "624624kk+"
command = ~F, D, B, F, D, B, a+b
time = 48
buffer.time = 5
[Command]
name = "624624kk+"
command = ~F, D, B, F, D, B, a+c
time = 48
buffer.time = 5
[Command]
name = "624624kk+"
command = ~F, D, B, F, D, B, b+c
time = 48
buffer.time = 5

[Command]
name = "236236p"
command = ~D, DF, F, D, F, x
time = 30
[Command]
name = "236236p"
command = ~D, DF, F, D, F, y
time = 30
[Command]
name = "236236p"
command = ~D, DF, F, D, F, z
time = 30
[Command]
name = "236236p"
command = ~D, DF, F, D, F, ~x
time = 30
[Command]
name = "236236p"
command = ~D, DF, F, D, F, ~y
time = 30
[Command]
name = "236236p"
command = ~D, DF, F, D, F, ~z
time = 30

[Command]
name = "236236p+"
command = ~D, DF, F, D, F, x
time = 30
buffer.time = 5
[Command]
name = "236236p+"
command = ~D, DF, F, D, F, y
time = 30
buffer.time = 5
[Command]
name = "236236p+"
command = ~D, DF, F, D, F, z
time = 30
buffer.time = 5
[Command]
name = "236236p+"
command = ~D, DF, F, D, F, ~x
time = 30
buffer.time = 5
[Command]
name = "236236p+"
command = ~D, DF, F, D, F, ~y
time = 30
buffer.time = 5
[Command]
name = "236236p+"
command = ~D, DF, F, D, F, ~z
time = 30
buffer.time = 5

[Command]
name = "236236k"
command = ~D, DF, F, D, F, a
time = 30
[Command]
name = "236236k"
command = ~D, DF, F, D, F, b
time = 30
[Command]
name = "236236k"
command = ~D, DF, F, D, F, c
time = 30
[Command]
name = "236236k"
command = ~D, DF, F, D, F, ~a
time = 30
[Command]
name = "236236k"
command = ~D, DF, F, D, F, ~b
time = 30
[Command]
name = "236236k"
command = ~D, DF, F, D, F, ~c
time = 30

[Command]
name = "236236k+"
command = ~D, DF, F, D, F, a
time = 30
buffer.time = 5
[Command]
name = "236236k+"
command = ~D, DF, F, D, F, b
time = 30
buffer.time = 5
[Command]
name = "236236k+"
command = ~D, DF, F, D, F, c
time = 30
buffer.time = 5
[Command]
name = "236236k+"
command = ~D, DF, F, D, F, ~a
time = 30
buffer.time = 5
[Command]
name = "236236k+"
command = ~D, DF, F, D, F, ~b
time = 30
buffer.time = 5
[Command]
name = "236236k+"
command = ~D, DF, F, D, F, ~c
time = 30
buffer.time = 5

[Command]
name = "236236kk"
command = ~D, DF, F, D, F, a+b
time = 30
[Command]
name = "236236kk"
command = ~D, DF, F, D, F, a+c
time = 30
[Command]
name = "236236kk"
command = ~D, DF, F, D, F, b+c
time = 30

[Command]
name = "236236kk+"
command = ~D, DF, F, D, F, a+b
time = 30
buffer.time = 5
[Command]
name = "236236kk+"
command = ~D, DF, F, D, F, a+c
time = 30
buffer.time = 5
[Command]
name = "236236kk+"
command = ~D, DF, F, D, F, b+c
time = 30
buffer.time = 5

[Command]
name = "214214p"
command = ~D, DB, B, D, B, x
time = 30
[Command]
name = "214214p"
command = ~D, DB, B, D, B, y
time = 30
[Command]
name = "214214p"
command = ~D, DB, B, D, B, z
time = 30
[Command]
name = "214214p"
command = ~D, DB, B, D, B, ~x
time = 30
[Command]
name = "214214p"
command = ~D, DB, B, D, B, ~y
time = 30
[Command]
name = "214214p"
command = ~D, DB, B, D, B, ~z
time = 30

[Command]
name = "214214p+"
command = ~D, DB, B, D, B, x
time = 30
buffer.time = 5
[Command]
name = "214214p+"
command = ~D, DB, B, D, B, y
time = 30
buffer.time = 5
[Command]
name = "214214p+"
command = ~D, DB, B, D, B, z
time = 30
buffer.time = 5
[Command]
name = "214214p+"
command = ~D, DB, B, D, B, ~x
time = 30
buffer.time = 5
[Command]
name = "214214p+"
command = ~D, DB, B, D, B, ~y
time = 30
buffer.time = 5
[Command]
name = "214214p+"
command = ~D, DB, B, D, B, ~z
time = 30
buffer.time = 5

[Command]
name = "214214pp"
command = ~D, DB, B, D, B, x+y
time = 30
[Command]
name = "214214pp"
command = ~D, DB, B, D, B, x+z
time = 30
[Command]
name = "214214pp"
command = ~D, DB, B, D, B, y+z
time = 30

[Command]
name = "214214pp+"
command = ~D, DB, B, D, B, x+y
time = 30
buffer.time = 5
[Command]
name = "214214pp+"
command = ~D, DB, B, D, B, x+z
time = 30
buffer.time = 5
[Command]
name = "214214pp+"
command = ~D, DB, B, D, B, y+z
time = 30
buffer.time = 5

[Command]
name = "222kk"
command = D, D, D, a+b
time = 30
[Command]
name = "222kk"
command = D, D, D, a+c
time = 30
[Command]
name = "222kk"
command = D, D, D, b+c
time = 30

[Command]
name = "222kk+"
command = D, D, D, a+b
time = 30
buffer.time = 5
[Command]
name = "222kk+"
command = D, D, D, a+c
time = 30
buffer.time = 5
[Command]
name = "222kk+"
command = D, D, D, b+c
time = 30
buffer.time = 5

[Command]
name = "jiketsu"
command = ~B, F, D, s
time = 18


;===================< SPECIAL MOTIONS >===================

[Command]
name = "236p"
command = ~D, DF, F, x
time = 12
[Command]
name = "236p"
command = ~D, DF, F, y
time = 12
[Command]
name = "236p"
command = ~D, DF, F, z
time = 12
[Command]
name = "236p"
command = ~D, DF, F, ~x
time = 12
[Command]
name = "236p"
command = ~D, DF, F, ~y
time = 12
[Command]
name = "236p"
command = ~D, DF, F, ~z
time = 12

[Command]
name = "236p+"
command = ~D, DF, F, x
time = 12
buffer.time = 5
[Command]
name = "236p+"
command = ~D, DF, F, y
time = 12
buffer.time = 5
[Command]
name = "236p+"
command = ~D, DF, F, z
time = 12
buffer.time = 5
[Command]
name = "236p+"
command = ~D, DF, F, ~x
time = 12
buffer.time = 5
[Command]
name = "236p+"
command = ~D, DF, F, ~y
time = 12
buffer.time = 5
[Command]
name = "236p+"
command = ~D, DF, F, ~z
time = 12
buffer.time = 5

[Command]
name = "236pp"
command = ~D, DF, F, x+y
time = 12
[Command]
name = "236pp"
command = ~D, DF, F, x+z
time = 12
[Command]
name = "236pp"
command = ~D, DF, F, y+z
time = 12

[Command]
name = "236pp+"
command = ~D, DF, F, x+y
time = 12
buffer.time = 5
[Command]
name = "236pp+"
command = ~D, DF, F, x+z
time = 12
buffer.time = 5
[Command]
name = "236pp+"
command = ~D, DF, F, y+z
time = 12
buffer.time = 5

[Command]
name = "236k"
command = ~D, DF, F, a
time = 12
[Command]
name = "236k"
command = ~D, DF, F, b
time = 12
[Command]
name = "236k"
command = ~D, DF, F, c
time = 12
[Command]
name = "236k"
command = ~D, DF, F, ~a
time = 12
[Command]
name = "236k"
command = ~D, DF, F, ~b
time = 12
[Command]
name = "236k"
command = ~D, DF, F, ~c
time = 12

[Command]
name = "236k+"
command = ~D, DF, F, a
time = 12
buffer.time = 5
[Command]
name = "236k+"
command = ~D, DF, F, b
time = 12
buffer.time = 5
[Command]
name = "236k+"
command = ~D, DF, F, c
time = 12
buffer.time = 5
[Command]
name = "236k+"
command = ~D, DF, F, ~a
time = 12
buffer.time = 5
[Command]
name = "236k+"
command = ~D, DF, F, ~b
time = 12
buffer.time = 5
[Command]
name = "236k+"
command = ~D, DF, F, ~c
time = 12
buffer.time = 5

[Command]
name = "236kk"
command = ~D, DF, F, a+b
time = 12
[Command]
name = "236kk"
command = ~D, DF, F, a+c
time = 12
[Command]
name = "236kk"
command = ~D, DF, F, b+c
time = 12

[Command]
name = "236kk+"
command = ~D, DF, F, a+b
time = 12
buffer.time = 5
[Command]
name = "236kk+"
command = ~D, DF, F, a+c
time = 12
buffer.time = 5
[Command]
name = "236kk+"
command = ~D, DF, F, b+c
time = 12
buffer.time = 5

[Command]
name = "214p"
command = ~D, DB, B, x
time = 12
[Command]
name = "214p"
command = ~D, DB, B, y
time = 12
[Command]
name = "214p"
command = ~D, DB, B, z
time = 12
[Command]
name = "214p"
command = ~D, DB, B, ~x
time = 12
[Command]
name = "214p"
command = ~D, DB, B, ~y
time = 12
[Command]
name = "214p"
command = ~D, DB, B, ~z
time = 12

[Command]
name = "214p+"
command = ~D, DB, B, x
time = 12
buffer.time = 5
[Command]
name = "214p+"
command = ~D, DB, B, y
time = 12
buffer.time = 5
[Command]
name = "214p+"
command = ~D, DB, B, z
time = 12
buffer.time = 5
[Command]
name = "214p+"
command = ~D, DB, B, ~x
time = 12
buffer.time = 5
[Command]
name = "214p+"
command = ~D, DB, B, ~y
time = 12
buffer.time = 5
[Command]
name = "214p+"
command = ~D, DB, B, ~z
time = 12
buffer.time = 5

[Command]
name = "214pp"
command = ~D, DB, B, x+y
time = 12
[Command]
name = "214pp"
command = ~D, DB, B, x+z
time = 12
[Command]
name = "214pp"
command = ~D, DB, B, y+z
time = 12

[Command]
name = "214pp+"
command = ~D, DB, B, x+y
time = 12
buffer.time = 5
[Command]
name = "214pp+"
command = ~D, DB, B, x+z
time = 12
buffer.time = 5
[Command]
name = "214pp+"
command = ~D, DB, B, y+z
time = 12
buffer.time = 5

[Command]
name = "214k"
command = ~D, DB, B, a
time = 12
[Command]
name = "214k"
command = ~D, DB, B, b
time = 12
[Command]
name = "214k"
command = ~D, DB, B, c
time = 12
[Command]
name = "214k"
command = ~D, DB, B, ~a
time = 12
[Command]
name = "214k"
command = ~D, DB, B, ~b
time = 12
[Command]
name = "214k"
command = ~D, DB, B, ~c
time = 12

[Command]
name = "214k+"
command = ~D, DB, B, a
time = 12
buffer.time = 5
[Command]
name = "214k+"
command = ~D, DB, B, b
time = 12
buffer.time = 5
[Command]
name = "214k+"
command = ~D, DB, B, c
time = 12
buffer.time = 5
[Command]
name = "214k+"
command = ~D, DB, B, ~a
time = 12
buffer.time = 5
[Command]
name = "214k+"
command = ~D, DB, B, ~b
time = 12
buffer.time = 5
[Command]
name = "214k+"
command = ~D, DB, B, ~c
time = 12
buffer.time = 5

[Command]
name = "421pp"
command = ~B, D, DB, x+y
time = 18
[Command]
name = "421pp"
command = ~B, D, DB, x+z
time = 18
[Command]
name = "421pp"
command = ~B, D, DB, y+z
time = 18

[Command]
name = "421pp+"
command = ~B, D, DB, x+y
time = 18
buffer.time = 5
[Command]
name = "421pp+"
command = ~B, D, DB, x+z
time = 18
buffer.time = 5
[Command]
name = "421pp+"
command = ~B, D, DB, y+z
time = 18
buffer.time = 5

[Command]
name = "421p"
command = ~B, D, DB, x
time = 18
[Command]
name = "421p"
command = ~B, D, DB, y
time = 18
[Command]
name = "421p"
command = ~B, D, DB, z
time = 18
[Command]
name = "421p"
command = ~B, D, DB, ~x
time = 18
[Command]
name = "421p"
command = ~B, D, DB, ~y
time = 18
[Command]
name = "421p"
command = ~B, D, DB, ~z
time = 18

[Command]
name = "421p+"
command = ~B, D, DB, x
time = 18
buffer.time = 5
[Command]
name = "421p+"
command = ~B, D, DB, y
time = 18
buffer.time = 5
[Command]
name = "421p+"
command = ~B, D, DB, z
time = 18
buffer.time = 5
[Command]
name = "421p+"
command = ~B, D, DB, ~x
time = 18
buffer.time = 5
[Command]
name = "421p+"
command = ~B, D, DB, ~y
time = 18
buffer.time = 5
[Command]
name = "421p+"
command = ~B, D, DB, ~z
time = 18
buffer.time = 5

[Command]
name = "63214p"
command = ~F, D, B, x
time = 18
[Command]
name = "63214p"
command = ~F, D, B, y
time = 18
[Command]
name = "63214p"
command = ~F, D, B, z
time = 18
[Command]
name = "63214p"
command = ~F, D, B, ~x
time = 18
[Command]
name = "63214p"
command = ~F, D, B, ~y
time = 18
[Command]
name = "63214p"
command = ~F, D, B, ~z
time = 18

[Command]
name = "63214p+"
command = ~F, D, B, x
time = 18
buffer.time = 5
[Command]
name = "63214p+"
command = ~F, D, B, y
time = 18
buffer.time = 5
[Command]
name = "63214p+"
command = ~F, D, B, z
time = 18
buffer.time = 5
[Command]
name = "63214p+"
command = ~F, D, B, ~x
time = 18
buffer.time = 5
[Command]
name = "63214p+"
command = ~F, D, B, ~y
time = 18
buffer.time = 5
[Command]
name = "63214p+"
command = ~F, D, B, ~z
time = 18
buffer.time = 5

[Command]
name = "63214pp"
command = ~F, D, B, x+y
time = 18
[Command]
name = "63214pp"
command = ~F, D, B, x+z
time = 18
[Command]
name = "63214pp"
command = ~F, D, B, y+z
time = 18

[Command]
name = "63214pp+"
command = ~F, D, B, x+y
time = 18
buffer.time = 5
[Command]
name = "63214pp+"
command = ~F, D, B, x+z
time = 18
buffer.time = 5
[Command]
name = "63214pp+"
command = ~F, D, B, y+z
time = 18
buffer.time = 5

[Command]
name = "412p"
command = ~B, DB, D, x
time = 12
[Command]
name = "412p"
command = ~B, DB, D, y
time = 12
[Command]
name = "412p"
command = ~B, DB, D, z
time = 12
[Command]
name = "412p"
command = ~B, DB, D, ~x
time = 12
[Command]
name = "412p"
command = ~B, DB, D, ~y
time = 12
[Command]
name = "412p"
command = ~B, DB, D, ~z
time = 12

[Command]
name = "412p+"
command = ~B, DB, D, x
time = 12
buffer.time = 5
[Command]
name = "412p+"
command = ~B, DB, D, y
time = 12
buffer.time = 5
[Command]
name = "412p+"
command = ~B, DB, D, z
time = 12
buffer.time = 5
[Command]
name = "412p+"
command = ~B, DB, D, ~x
time = 12
buffer.time = 5
[Command]
name = "412p+"
command = ~B, DB, D, ~y
time = 12
buffer.time = 5
[Command]
name = "412p+"
command = ~B, DB, D, ~z
time = 12
buffer.time = 5

[Command]
name = "412pp"
command = ~B, DB, D, x+y
time = 12
[Command]
name = "412pp"
command = ~B, DB, D, x+z
time = 12
[Command]
name = "412pp"
command = ~B, DB, D, y+z
time = 12

[Command]
name = "412pp+"
command = ~B, DB, D, x+y
time = 12
buffer.time = 5
[Command]
name = "412pp+"
command = ~B, DB, D, x+z
time = 12
buffer.time = 5
[Command]
name = "412pp+"
command = ~B, DB, D, y+z
time = 12
buffer.time = 5

[Command]
name = "412s"
command = ~B, DB, D, s
time = 12
[Command]
name = "412s"
command = ~B, DB, D, ~s
time = 12

[Command]
name = "22s"
command = D, D, s
time = 12
[Command]
name = "22s"
command = D, D, ~s
time = 12


;====================< OTHER >====================

[Command]
name = "recovery"
command = x
time = 1
[Command]
name = "recovery"
command = y
time = 1
[Command]
name = "recovery"
command = z
time = 1
[Command]
name = "recovery"
command = a
time = 1
[Command]
name = "recovery"
command = b
time = 1
[Command]
name = "recovery"
command = c
time = 1

[Command]
name = "highjump"
command = $D, $U
time = 15

[Command]
name = "counter_p"
command = F, x + y
time = 8
[Command]
name = "counter_p"
command = F, x + z
time = 8
[Command]
name = "counter_p"
command = F, y + z
time = 8

[Command]
name = "counter_k"
command = F, a + b
time = 8
[Command]
name = "counter_k"
command = F, a + c
time = 8
[Command]
name = "counter_k"
command = F, b + c
time = 8

[Command]
name = "movelist"
command = s, s
time = 15


;====================< DOUBLE TAP >====================

[Command]
name = "FF"
command = F, F
time = 10
[Command]
name = "BB"
command = B, B
time = 10


;====================< 2/3 BUTTON COMBINATION >====================

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
time = 1

[Command]
name = "b+y"
command = b+y
time = 1

[Command]
name = "c+z"
command = c+z
time = 1


;====================< DIRECTION + BUTTON >====================

[Command]
name = "3z"
command = /DF, z
time = 1
[Command]
name = "3z+"
command = /DF, z
time = 1
buffer.time = 5


;====================< INPUT CHECK >====================

[Command]
name = "6v"
command = F, a
time = 10
buffer.time = 5
[Command]
name = "6v"
command = F, b
time = 10
buffer.time = 5
[Command]
name = "6v"
command = F, c
time = 10
buffer.time = 5
[Command]
name = "6v"
command = F, x
time = 10
buffer.time = 5
[Command]
name = "6v"
command = F, y
time = 10
buffer.time = 5
[Command]
name = "6v"
command = F, z
time = 10
buffer.time = 5

[Command]
name = "6v"
command = F, ~a
time = 10
buffer.time = 5
[Command]
name = "6v"
command = F, ~b
time = 10
buffer.time = 5
[Command]
name = "6v"
command = F, ~c
time = 10
buffer.time = 5
[Command]
name = "6v"
command = F, ~x
time = 10
buffer.time = 5
[Command]
name = "6v"
command = F, ~y
time = 10
buffer.time = 5
[Command]
name = "6v"
command = F, ~z
time = 10
buffer.time = 5

[Command]
name = "4v"
command = B, a
time = 10
buffer.time = 5
[Command]
name = "4v"
command = B, b
time = 10
buffer.time = 5
[Command]
name = "4v"
command = B, c
time = 10
buffer.time = 5
[Command]
name = "4v"
command = B, x
time = 10
buffer.time = 5
[Command]
name = "4v"
command = B, y
time = 10
buffer.time = 5
[Command]
name = "4v"
command = B, z
time = 10
buffer.time = 5

[Command]
name = "4v"
command = B, ~a
time = 10
buffer.time = 5
[Command]
name = "4v"
command = B, ~b
time = 10
buffer.time = 5
[Command]
name = "4v"
command = B, ~c
time = 10
buffer.time = 5
[Command]
name = "4v"
command = B, ~x
time = 10
buffer.time = 5
[Command]
name = "4v"
command = B, ~y
time = 10
buffer.time = 5
[Command]
name = "4v"
command = B, ~z
time = 10
buffer.time = 5

[Command]
name = "2v"
command = D, a
time = 10
buffer.time = 5
[Command]
name = "2v"
command = D, b
time = 10
buffer.time = 5
[Command]
name = "2v"
command = D, c
time = 10
buffer.time = 5
[Command]
name = "2v"
command = D, x
time = 10
buffer.time = 5
[Command]
name = "2v"
command = D, y
time = 10
buffer.time = 5
[Command]
name = "2v"
command = D, z
time = 10
buffer.time = 5

[Command]
name = "2v"
command = D, ~a
time = 10
buffer.time = 5
[Command]
name = "2v"
command = D, ~b
time = 10
buffer.time = 5
[Command]
name = "2v"
command = D, ~c
time = 10
buffer.time = 5
[Command]
name = "2v"
command = D, ~x
time = 10
buffer.time = 5
[Command]
name = "2v"
command = D, ~y
time = 10
buffer.time = 5
[Command]
name = "2v"
command = D, ~z
time = 10
buffer.time = 5


;==============================================================================================
;========================================< -1 STATES >===========================================
;==============================================================================================

[Statedef -1]

[State -1, Inputs]
type = changestate
trigger1 = ishelper(9999)
trigger1 = stateno != 9999
value = 9999

[State -1, Landing Buffer]
type = varset
trigger1 = time < 5
trigger1 = stateno = [600, 699]
trigger1 = vel y > 0 && (pos y > - vel y)
trigger1 = !movecontact && !movereversed && hitdefattr != SCA, AA, AP, AT
var(58) = 0
ignorehitpause = 0

[State -1, Buffer Timer]
type = varadd
trigger1 = var(58)
var(58) = ifelse(var(58) < 0, 1, -1)
ignorehitpause = 0

[State -1, Buffer Off]
type = varset
trigger1 = hitpausetime || movereversed = 1
var(58) = 5
ignorehitpause = 1

[State -1, Tick Fix]
type = ctrlset
triggerall = !ctrl
trigger1 = stateno = 5120 && !animtime
trigger2 = (stateno = 5001 || stateno = 5011 || stateno = 151 || stateno = 153) && hitover
value = 1

[State -1, Roll Forward]
type = varset
var(59) = 710
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "a+x"
triggerall = roundstate = 2 && statetype != A
trigger1 = (ctrl || (stateno = [100, 101])) && command = "holdfwd"
trigger2 = var(20) && var(4)

[State -1, Roll Backward]
type = varset
var(59) = 715
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "a+x"
triggerall = roundstate = 2 && statetype != A
trigger1 = (ctrl || (stateno = [100, 101])) && command = "holdback"

[State -1, Dodge]
type = varset
var(59) = 700
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "a+x"
triggerall = roundstate = 2 && statetype != A
trigger1 = (ctrl || (stateno = [100, 101]))

[State -1, Zetsumei Ougi]
type = varset
var(59) = 4100
ignorehitpause = 1
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = helper(9999), command = "4v"
triggerall = helper(9999), command = "624624kk+"
triggerall = helper(9999), command = "624624kk" || !var(58)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 3000 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7)

[State -1, Shirikoro Kamui Nomi]
type = varset
var(59) = 3200
ignorehitpause = 1
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "2v"
triggerall = command = "222kk"
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 3000 && var(20) <= 60 && life < lifemax
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7)

[State -1, Irusuka Yatoro Lise]
type = varset
var(59) = 3300
ignorehitpause = 1
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = helper(9999), command = "4v"
triggerall = helper(9999), command = "214214pp+"
triggerall = helper(9999), command = "214214pp" || !var(58)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 2000 && var(20) <= 60
triggerall = numhelper(10000)
triggerall = helper(10000), stateno = 10000 && helper(10000), pos y <= -120
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = stateno != 3300 && var(7)

[State -1, Elerush Kamui Rimse - Flying]
type = varset
var(59) = 3001
ignorehitpause = 1
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "6v"
triggerall = command = "236236k"
triggerall = roundstate = 2
triggerall = power >= 2000 && var(20) <= 60
trigger1 = stateno = 1510
trigger2 = var(20) && (stateno = [670, 685]) && movecontact
trigger3 = stateno = 670 && (animelemtime(4) < 0 || (animelemtime(6) < 0 && movecontact = 1))
trigger4 = stateno = 675 && (animelemtime(4) < 0 || (animelemtime(6) < 0 && movecontact = 1))
trigger5 = stateno = 680 && (animelemtime(3) < 0 || (animelemtime(4) < 0 && movecontact = 1))
trigger6 = stateno = 685 && (animelemtime(3) < 0 || (animelemtime(4) < 0 && movecontact = 1))

[State -1, Elerush Kamui Rimse]
type = varset
var(59) = 3000
ignorehitpause = 1
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = helper(9999), command = "6v"
triggerall = helper(9999), command = "236236kk+"
triggerall = helper(9999), command = "236236kk" || !var(58)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 2000 && var(20) <= 60
triggerall = numhelper(10000)
triggerall = helper(10000), stateno = 10000 && helper(10000), pos y <= -120
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = stateno != 3000 && var(7)

[State -1, Ganso Lela Mutsube]
type = varset
var(59) = 3400
ignorehitpause = 1
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = helper(9999), command = "6v"
triggerall = helper(9999), command = "236236p+"
triggerall = helper(9999), command = "236236p" || !var(58)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(7)

[State -1, Apefuchi Kamui Rimse]
type = varset
var(59) = 3500
ignorehitpause = 1
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = helper(9999), command = "6v"
triggerall = helper(9999), command = "236236k+"
triggerall = helper(9999), command = "236236k" || !var(58)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = stateno != 3500 && var(7)

[State -1, Shichikapu Kamui Irushika]
type = varset
var(59) = 3100
ignorehitpause = 1
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = helper(9999), command = "4v"
triggerall = helper(9999), command = "214214p+"
triggerall = helper(9999), command = "214214p" || !var(58)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000 && var(20) <= 60
triggerall = numhelper(10000)
triggerall = helper(10000), stateno = 10000 && helper(10000), pos y <= -120
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = stateno != 3100 && var(7)

[State -1, EX Kamui Mutsube]
type = varset
var(59) = 1560
ignorehitpause = 1
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "236pp"
triggerall = roundstate = 2
triggerall = power >= 500 && var(20) <= 60
trigger1 = stateno = 1510
trigger2 = var(20) && (stateno = [670, 685]) && movecontact
trigger3 = stateno = 670 && (animelemtime(4) < 0 || (animelemtime(6) < 0 && movecontact = 1))
trigger4 = stateno = 675 && (animelemtime(4) < 0 || (animelemtime(6) < 0 && movecontact = 1))
trigger5 = stateno = 680 && (animelemtime(3) < 0 || (animelemtime(4) < 0 && movecontact = 1))
trigger6 = stateno = 685 && (animelemtime(3) < 0 || (animelemtime(4) < 0 && movecontact = 1))

[State -1, EX Kamui Rimse]
type = varset
var(59) = 1220
ignorehitpause = 1
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = helper(9999), command = "421pp+"
triggerall = helper(9999), command = "421pp" || !var(58)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, EX Amube Yatoro]
type = varset
var(59) = 1350
ignorehitpause = 1
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = helper(9999), command = "63214pp+"
triggerall = helper(9999), command = "63214pp" || !var(58)
triggerall = roundstate = 2 && statetype != A
triggerall = numhelper(10000) && power >= 500 && var(20) <= 60
triggerall = helper(10000), stateno = 10000 && helper(10000), pos y <= -120
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, EX Annu Mutsube]
type = varset
var(59) = 1020
ignorehitpause = 1
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = helper(9999), command = "412pp+"
triggerall = helper(9999), command = "412pp" || !var(58)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, EX Lela Mutsube]
type = varset
var(59) = 1120
ignorehitpause = 1
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = helper(9999), command = "236pp+"
triggerall = helper(9999), command = "236pp" || !var(58)
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Kamui Mutsube]
type = varset
var(59) = 1550
ignorehitpause = 1
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "236p"
triggerall = roundstate = 2
trigger1 = stateno = 1510
trigger2 = var(20) && (stateno = [670, 685]) && movecontact
trigger3 = stateno = 670 && (animelemtime(4) < 0 || (animelemtime(6) < 0 && movecontact = 1))
trigger4 = stateno = 675 && (animelemtime(4) < 0 || (animelemtime(6) < 0 && movecontact = 1))
trigger5 = stateno = 680 && (animelemtime(3) < 0 || (animelemtime(4) < 0 && movecontact = 1))
trigger6 = stateno = 685 && (animelemtime(3) < 0 || (animelemtime(4) < 0 && movecontact = 1))

[State -1, Shichikapu Ai]
type = varset
var(59) = 1530
ignorehitpause = 1
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "214p"
triggerall = roundstate = 2
trigger1 = stateno = 1510
trigger2 = var(20) && (stateno = [670, 685]) && movecontact
trigger3 = stateno = 670 && (animelemtime(4) < 0 || (animelemtime(6) < 0 && movecontact = 1))
trigger4 = stateno = 675 && (animelemtime(4) < 0 || (animelemtime(6) < 0 && movecontact = 1))
trigger5 = stateno = 680 && (animelemtime(3) < 0 || (animelemtime(4) < 0 && movecontact = 1))
trigger6 = stateno = 685 && (animelemtime(3) < 0 || (animelemtime(4) < 0 && movecontact = 1))

[State -1, Kamui Rimse]
type = varset
var(59) = 1200
ignorehitpause = 1
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = helper(9999), command = "421p+"
triggerall = helper(9999), command = "421p" || !var(58)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Amube Yatoro]
type = varset
var(59) = 1300
ignorehitpause = 1
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = helper(9999), command = "63214p+"
triggerall = helper(9999), command = "63214p" || !var(58)
triggerall = roundstate = 2 && statetype != A
triggerall = numhelper(10000)
triggerall = helper(10000), stateno = 10000 && helper(10000), pos y <= -120
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Annu Mutsube]
type = varset
var(59) = 1000
ignorehitpause = 1
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = helper(9999), command = "412p+"
triggerall = helper(9999), command = "412p" || !var(58)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Lela Mutsube]
type = varset
var(59) = 1100
ignorehitpause = 1
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = helper(9999), command = "236p+"
triggerall = helper(9999), command = "236p" || !var(58)
triggerall = roundstate = 2 && statetype != A
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Mamahaha Ni Tsukamaru]
type = varset
var(59) = 1500
ignorehitpause = 1
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = helper(9999), command = "214k+"
triggerall = helper(9999), command = "214k" || !var(58)
triggerall = roundstate = 2 && statetype != A
triggerall = numhelper(10000)
triggerall = helper(10000), stateno = 10000 && helper(10000), pos y <= -120
trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
trigger2 = var(6)

;[State -1, Fake Annu Mutsube]
;type = varset
;var(59) = 1090
;ignorehitpause = 1
;triggerall = time > 0 || !hitpausetime
;triggerall = !AIlevel && !var(59) && !ishelper
;triggerall = helper(9999), command = "412s"
;triggerall = roundstate = 2 && statetype != A
;trigger1 = ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])
;trigger2 = var(6)

[State -1, Zero Counter]
type = changestate
value = 750
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "counter_p" || command = "counter_k"
triggerall = roundstate = 2 && power >= 1000 && statetype != A && !var(20)
trigger1 = stateno = 150 || stateno = 152
trigger2 = (stateno = 151 || stateno = 153) && time < 8

[State -1, Custom Combo]
type = varset
var(59) = ifelse(statetype = A, 905, 900)
trigger1 = !AIlevel && !var(59) && !ishelper
trigger1 = command = "c+z"
trigger1 = roundstate = 2
trigger1 = power >= 2000 && !var(20)
trigger1 = ctrl || (stateno = [100, 101])

[State -1, Power Charge]
type = varset
var(59) = 730
trigger1 = !AIlevel && !var(59) && !ishelper
trigger1 = command = "holdb" && command = "holdy"
trigger1 = roundstate = 2 && statetype != A
trigger1 = power < const(data.power) && power < powermax && !var(20)
trigger1 = ctrl || (stateno = [100, 101])

[State -1, Wall Jump]
type = varset
var(59) = 60
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "holdup"
triggerall = roundstate = 2 && statetype = A
triggerall = ctrl && vel x && pos y <= -32
trigger1 = backedgebodydist <= 0 && command = "holdfwd"
trigger2 = frontedgebodydist <= 0 && command = "holdback"

[State -1, Dash / Run]
type = varset
var(59) = 102
trigger1 = !AIlevel && !var(59) && !ishelper
trigger1 = helper(9999), command = "FF"
trigger1 = roundstate = 2 && statetype = S
trigger1 = ctrl

[State -1, Dash Backward]
type = varset
var(59) = 105
trigger1 = !AIlevel && !var(59) && !ishelper
trigger1 = helper(9999), command = "BB"
trigger1 = roundstate = 2 && statetype = S
trigger1 = ctrl

[State -1, Air Throw]
type = varset
var(59) = 850
trigger1 = !AIlevel && !var(59) && !ishelper
trigger1 = command = "pp" && (command = "holdfwd" || command = "holdback")
trigger1 = roundstate = 2 && statetype = A
trigger1 = ctrl && (pos y <= -42 || vel y < 0)

[State -1, Throw]
type = varset
var(59) = 800
trigger1 = !AIlevel && !var(59) && !ishelper
trigger1 = (command = "pp" || command = "kk") && (command = "holdfwd" || command = "holdback")
trigger1 = roundstate = 2 && statetype = S
trigger1 = ctrl

[State -1, MHK]
type = varset
var(59) = 1590
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "c"
triggerall = var(46) > 0
trigger1 = stateno = 1510
trigger2 = var(20) && (stateno = [670, 685]) && movecontact

[State -1, MHP]
type = varset
var(59) = 660
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "z"
triggerall = var(46) > 0
trigger1 = stateno = 1510
trigger2 = var(20) && (stateno = [670, 685]) && movecontact

[State -1, MMK]
type = varset
var(59) = 685
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "b"
triggerall = var(46) > 0
trigger1 = stateno = 1510
trigger2 = var(20) && (stateno = [670, 685]) && movecontact

[State -1, MMP]
type = varset
var(59) = 675
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "y"
triggerall = var(46) > 0
trigger1 = stateno = 1510
trigger2 = var(20) && (stateno = [670, 685]) && movecontact

[State -1, MLK]
type = varset
var(59) = 680
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "a"
triggerall = var(46) > 0
trigger1 = stateno = 1510
trigger2 = var(20) && (stateno = [670, 685]) && movecontact

[State -1, MLP]
type = varset
var(59) = 670
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "x"
triggerall = var(46) > 0
trigger1 = stateno = 1510
trigger2 = var(20) && (stateno = [670, 685]) && movecontact

[State -1, CHP2]
type = varset
var(59) = 425
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "3z+"
triggerall = (command = "z" && command = "holddown" && command = "holdfwd") || !var(58)
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)

[State -1, CHK]
type = varset
var(59) = 450
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "c" || (!var(58) && command = "c+")
triggerall = command = "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)

[State -1, CHP]
type = varset
var(59) = 420
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "z" || (!var(58) && command = "z+")
triggerall = command = "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)

[State -1, ScHK]
type = varset
var(59) = 251
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "c" || (!var(58) && command = "c+")
triggerall = command != "holddown" && statetype != A
triggerall = p2bodydist x <= (const(size.xscale) * 40)
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)

[State -1, SfHK]
type = varset
var(59) = 250
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "c" || (!var(58) && command = "c+")
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)

[State -1, ScHP]
type = varset
var(59) = 221
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "z" || (!var(58) && command = "z+")
triggerall = command != "holddown" && statetype != A
triggerall = p2bodydist x <= (const(size.xscale) * 40)
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)

[State -1, SfHP]
type = varset
var(59) = 220
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "z" || (!var(58) && command = "z+")
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)

[State -1, CMK]
type = varset
var(59) = 440
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "b" || (!var(58) && command = "b+")
triggerall = command = "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)

[State -1, CMP]
type = varset
var(59) = 410
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "y" || (!var(58) && command = "y+")
triggerall = command = "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)

[State -1, ScMK]
type = varset
var(59) = 241
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "b" || (!var(58) && command = "b+")
triggerall = command != "holddown" && statetype != A
triggerall = p2bodydist x <= (const(size.xscale) * 30)
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)

[State -1, SfMK]
type = varset
var(59) = 240
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "b" || (!var(58) && command = "b+")
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)

[State -1, ScMP]
type = varset
var(59) = 211
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "y" || (!var(58) && command = "y+")
triggerall = command != "holddown" && statetype != A
triggerall = p2bodydist x <= (const(size.xscale) * 30)
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)

[State -1, SfMP]
type = varset
var(59) = 210
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "y" || (!var(58) && command = "y+")
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(4)

[State -1, CLK]
type = varset
var(59) = 430
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "a" || (!var(58) && command = "a+")
triggerall = command = "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = (stateno = 200 || stateno = 201 || stateno = 400 || stateno = 430) && time >= 5
trigger3 = var(4)

[State -1, CLP]
type = varset
var(59) = 400
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "x" || (!var(58) && command = "x+")
triggerall = command = "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = (stateno = 200 || stateno = 201 || stateno = 400 || stateno = 430) && time >= 5
trigger3 = var(4)

[State -1, ScLK]
type = varset
var(59) = 231
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "a" || (!var(58) && command = "a+")
triggerall = command != "holddown" && statetype != A
triggerall = p2bodydist x <= (const(size.xscale) * 10)
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = (stateno = 200 || stateno = 201 || stateno = 400 || stateno = 430) && time >= 5
trigger3 = var(4)

[State -1, SfLK]
type = varset
var(59) = 230
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "a" || (!var(58) && command = "a+")
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = (stateno = 200 || stateno = 201 || stateno = 400 || stateno = 430) && time >= 5
trigger3 = var(4)

[State -1, ScLP]
type = varset
var(59) = 201
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "x" || (!var(58) && command = "x+")
triggerall = command != "holddown" && statetype != A
triggerall = p2bodydist x <= (const(size.xscale) * 30)
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = (stateno = 200 || stateno = 201 || stateno = 400 || stateno = 430) && time >= 5
trigger3 = var(4)

[State -1, SfLP]
type = varset
var(59) = 200
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "x" || (!var(58) && command = "x+")
triggerall = command != "holddown" && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = (stateno = 200 || stateno = 201 || stateno = 400 || stateno = 430) && time >= 5
trigger3 = var(4)

[State -1, Kamui Fumu Kesupu]
type = varset
var(59) = 655
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "holddown" && command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, AHK]
type = varset
var(59) = 650
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "c"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, AHP]
type = varset
var(59) = 620
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "z"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, AMK]
type = varset
var(59) = 640
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "b"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, AMP]
type = varset
var(59) = 610
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "y"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, ALK]
type = varset
var(59) = 630
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "a"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, ALP]
type = varset
var(59) = 600
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "x"
triggerall = statetype = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jiketsu]
type = varset
var(59) = 4000
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = helper(9999), command = "jiketsu"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100, 101])

[State -1, SD Taunt]
type = varset
var(59) = 197
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "22s"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Taunt]
type = varset
var(59) = 195 + (command = "holdfwd")
triggerall = !AIlevel && !var(59) && !ishelper
triggerall = command = "start"
triggerall = statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger2 = var(6)

[State -1, Punch Strength]
type = varset
triggerall = !AIlevel && var(59)
triggerall = var(59) = 1000 || var(59) = 1100 || var(59) = 1200 || var(59) = 1300 || var(59) = 1530 || var(59) = 1550
trigger1 = command = "x" || command = "y" || command = "z" || helper(9999), command = "x" || helper(9999), command = "y" || helper(9999), command = "z"
trigger1 = var(10) := ifelse(command = "z" || helper(9999), command = "z", 2, ifelse(command = "y" || helper(9999), command = "y", 1, 0)) || 1
trigger2 = command = "rlsx" || command = "rlsy" || command = "rlsz" || helper(9999), command = "rlsx" || helper(9999), command = "rlsy" || helper(9999), command = "rlsz"
trigger2 = var(10) := ifelse(command = "rlsz" || helper(9999), command = "rlsz", 2, ifelse(command = "rlsy" || helper(9999), command = "rlsy", 1, 0)) || 1
trigger3 = command = "x+" || command = "y+" || command = "z+" || helper(9999), command = "x+" || helper(9999), command = "y+" || helper(9999), command = "z+"
trigger3 = var(10) := ifelse(command = "z+" || helper(9999), command = "z+", 2, ifelse(command = "y+" || helper(9999), command = "y+", 1, 0)) || 1
trigger4 = command = "rlsx+" || command = "rlsy+" || command = "rlsz+" || helper(9999), command = "rlsx+" || helper(9999), command = "rlsy+" || helper(9999), command = "rlsz+"
trigger4 = var(10) := ifelse(command = "rlsz+" || helper(9999), command = "rlsz+", 2, ifelse(command = "rlsy+" || helper(9999), command = "rlsy+", 1, 0)) || 1
var(10) = var(10)
ignorehitpause = 0

[State -1, Do or do not]
type = hitoverride
trigger1 = ctrl
trigger1 = var(59) > 0
trigger1 = command = "holdback"
attr = SCA, AA, AP
stateno = ifelse(statetype = A, 5020, 5000)
slot = 0
time = 1

[State -1, Buffered State]
type = changestate
trigger1 = var(59) > 0
trigger1 = movetype != H || hitover
value = var(59) + 0 * (var(59) := 0) * (var(58) := 5)
ignorehitpause = 0

[State -1, Buffered State]
type = varset
trigger1 = 1
var(59) = 0
ignorehitpause = 0


;==============================================================================================
;===========================================< A.I >==============================================
;==============================================================================================

[State -1, Fall Recovery]
type = changestate
value = 5210
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && alive
trigger1 = stateno = 5050 && canrecover
trigger1 = vel y > 0 && pos y < -20
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))

[State -1, Fall Recovery]
type = changestate
value = 5200
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && alive
trigger1 = stateno = 5050 && gethitvar(fall.recover)
trigger1 = vel y > 0 && pos y >= -20
trigger1 = random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Jump]
type = changestate
value = 40
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && ctrl
trigger1 = enemynear, movetype = A && p2bodydist x < 160 && enemynear, hitdefattr = SC, AT

[State -1, Roll Forward]
type = changestate
value = 710
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = (ctrl || (stateno = [100, 101])) && var(20) <= 164 && !var(26)
trigger1 = (enemynear, movetype = A) && (enemynear, hitdefattr = SCA, AA) && (p2bodydist x = [90, 120])

[State -1, Dodge]
type = changestate
value = 700
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A
trigger1 = random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = (ctrl || (stateno = [100, 101])) && var(20) <= 164 && !var(26)
trigger1 = (enemynear, movetype = A) && (enemynear, hitdefattr = SCA, AA) && (p2bodydist x = [0, 60])

[State -1, Dash Backward]
type = changestate
value = 105
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = S && var(20) <= 150 && !var(26)
triggerall = ctrl && (stateno != [100, 106])
trigger1 = (enemynear, movetype = A) && backedgedist >= 80 && (p2bodydist x = [80, 120]) && (enemynear, vel x)
trigger1 = random < (ifelse((enemynear, hitdefattr = SC, AT), 150, 50) * (AIlevel ** 2 / 64.0))
trigger2 = (p2bodydist x = [0, 80]) && backedgebodydist >= 80
trigger2 = enemynear, stateno = 5120 && enemynear, animtime = -3 && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, Roll Fireballs]
type = changestate
value = 710
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A
trigger1 = ctrl || (stateno = [100, 101])
trigger1 = numenemy = 1
trigger1 = p2bodydist x >= 120
trigger1 = enemynear, time >= 10 || p2movetype != A
trigger1 = inguarddist && !(enemynear, hitdefattr = SCA, AA, AT)
trigger1 = ifelse(p2bodydist x < 180, (enemynear, animtime <= -30), 1)
trigger1 = random < (200 * (AIlevel ** 2 / 64.0))

[State -1, Guard]
type = changestate
value = 120
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && inguarddist
trigger1 = ctrl && (stateno != [120, 155]) && !var(20)
trigger1 = prevstateno != [710, 715]
trigger1 = !var(26) || p2bodydist x >= 40
trigger1 = !(enemynear, hitdefattr = SCA, AT) && (enemynear, time < 120)
trigger1 = statetype != A || p2statetype = A
trigger1 = ifelse(statetype = A, ((var(3) != [1, 2]) || stateno = 5210), 1)
trigger1 = random < (ifelse((p2stateno = [200, 699]), 100, ifelse((p2stateno = [1000, 2999]), 333, 1000)) * (AIlevel ** 2 / 64.0))

[State -1, Zero Counter]
type = changestate
value = 750
trigger1 = AIlevel && numenemy
trigger1 = stateno = 150 || stateno = 152
trigger1 = roundstate = 2 && statetype != A
trigger1 = power >= 1000 && var(20) <= 60
trigger1 = random < (25 * (AIlevel ** 2 / 64.0))
trigger1 = (p2bodydist x = [0, 50]) && (life < 0.5 * lifemax)

[State -1, Power Charge]
type = changestate
value = 730
triggerall = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A
trigger1 = power < const(data.power) && !var(20)
trigger1 = ctrl && power < const(data.power) && power < powermax && !var(20)
trigger1 = !inguarddist && p2bodydist x >= 160 && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Custom Combo]
type = changestate
value = ifelse(statetype = A, 905, 900)
trigger1 = AIlevel && numenemy
trigger1 = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
trigger1 = roundstate = 2 && (statetype != A || vel x > 0)
trigger1 = power >= 2000 && !var(20)
trigger1 = (ctrl || (stateno = [100, 101]))
trigger1 = (enemynear, movetype = A) && (p2bodydist x = [0, 40]) && (p2dist y = [-60, 60]) && (enemynear, vel y >= 0)
trigger1 = (enemynear, stateno = [200, 699]) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Run]
type = changestate
value = 100
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype = S
trigger1 = ctrl && (stateno != [100, 106])
trigger1 = (enemynear, movetype != A) && p2bodydist x >= 160 && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, CHP2]
type = changestate
value = 425
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype != A
triggerall = (var(15) < 1 || var(20))
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [-40, 0]) && p2statetype != A && p2statetype != L
trigger1 = (ctrl || (stateno = [100, 101])) && (p2bodydist x = [40, 50]) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 900 && !animtime && ctrl
trigger3 = var(20) > 30 && ctrl && p2movetype != A
trigger4 = var(20) > 30 && var(4) && movehit = 1

[State -1, Air Throw]
type = changestate
value = 850
trigger1 = AIlevel && numenemy
trigger1 = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
trigger1 = roundstate = 2 && statetype = A
trigger1 = (var(15) < 1 || var(20))
trigger1 = ctrl && p2statetype = A
trigger1 = (p2dist x = [0, 34]) && (p2dist y = [-64, -24]) && random < (200 * (AIlevel ** 2 / 64.0))

[State -1, Throw]
type = changestate
value = 800
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype = S
triggerall = p2statetype != A && p2statetype != L && p2movetype != H
triggerall = (p2dist x = [0, 34]) && p2dist y = 0 
trigger1 = ctrl && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (p2stateno = [120, 140]) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, ScHP]
type = changestate
value = 221
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype != A
triggerall = p2bodydist x = [-14, ceil(const(size.xscale) * 30)]
triggerall = (var(15) < 1 || var(20))
triggerall = (p2bodydist x = [0, 30]) && (p2dist y = [-110, 0]) && p2statetype != C && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 499]) && !animtime && ctrl
trigger2 = movehit && (enemynear, gethitvar(hittime) >= 4) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, ScLP]
type = changestate
value = 201
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype != A
triggerall = p2bodydist x = [-14, ceil(const(size.xscale) * 30)]
triggerall = (var(15) < 1 || var(20))
triggerall = (p2bodydist x = [0, 30]) && (p2dist y = [-62, 0]) && p2statetype != C && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, SfLP]
type = changestate
value = 200
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype != A
triggerall = p2bodydist x > ceil(const(size.xscale) * 30)
triggerall = (var(15) < 1 || var(20))
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [-51, 0]) && p2statetype != C && p2statetype != L
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, CHP]
type = changestate
value = 430
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype != A
triggerall = (var(15) < 1 || var(20))
triggerall = (p2bodydist x = [0, 42]) && (p2dist y = [-100, 0])
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || (stateno = [100, 101])) && random < (ifelse(p2statetype = A, 200, 25) * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 499]) && !animtime && ctrl
trigger2 = movehit && (enemynear, gethitvar(hittime) >= 4) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, CHK]
type = changestate
value = 450
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype != A
triggerall = (var(15) < 1 || var(20))
triggerall = (p2bodydist x = [0, 70]) && (p2dist y = [-38, 0])
triggerall = (p2statetype = S || (p2statetype = C && p2movetype = H))
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 499]) && !animtime && ctrl
trigger2 = movehit && (enemynear, gethitvar(hittime) >= 5) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, CMK]
type = changestate
value = 440
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype != A
triggerall = (var(15) < 1 || var(20))
triggerall = (p2bodydist x = [0, 30]) && (p2dist y = [-50, 0])
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [200, 499]) && !animtime && ctrl
trigger2 = movehit && (enemynear, gethitvar(hittime) >= 5) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, CLK]
type = changestate
value = 430
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype != A
triggerall = (var(15) < 1 || var(20))
triggerall = (p2bodydist x = [0, 30]) && (p2dist y = [-50, 0])
trigger1 = (ctrl || (stateno = [100, 101])) && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, AHP]
type = changestate
value = 620
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype = A
triggerall = (var(15) < 1 || var(20))
triggerall = (p2bodydist x = [0, 44]) && (p2dist y = [-100, 26]) && p2statetype != L
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(4) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = ctrl && vel y <= 0 && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Kamui Fumu Kesupu]
type = changestate
value = 655
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype = A
triggerall = (var(15) < 1 || var(20))
triggerall = (p2bodydist x = [0, 28]) && (p2dist y = [0, 56]) && p2statetype != A && p2statetype != L
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(4) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger3 = vel y > 0 && pos y >= -80

[State -1, AHK]
type = changestate
value = 650
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype = A
triggerall = (var(15) < 1 || var(20))
triggerall = (p2bodydist x = [0, 38]) && (p2dist y = [-20, 70]) && p2statetype != L
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(4) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger3 = vel y > 0 && pos y >= -80

[State -1, AMP]
type = changestate
value = 610
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype = A
triggerall = (var(15) < 1 || var(20))
triggerall = (p2bodydist x = [0, 50]) && (p2dist y = [-52, -20]) && p2statetype != L
trigger1 = ctrl && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = var(4) && movecontact && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = ctrl && vel y <= 0 && random < (25 * (AIlevel ** 2 / 64.0))

[State -1, EX Amube Yatoro]
type = changestate
value = 1300
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
triggerall = (var(15) < 1 || var(20))
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (p2bodydist x = [120, 250]) && p2dist y >= -80 && p2statetype != L
triggerall = numhelper(10000)
triggerall = helper(10000), stateno = 10000 && helper(10000), pos y <= -120
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = (ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])) && random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = enemynear, animtime <= -32

[State -1, EX Kamui Rimse]
type = changestate
value = 1220
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
triggerall = (var(15) < 1 || var(20))
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (p2bodydist x = [20, 75]) && (p2dist y = [-64, 0]) && p2statetype != L && (enemynear, vel y >= 0)
trigger1 = var(6) && movehit && random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = enemynear, gethitvar(hittime) >= 14 && p2bodydist x < 30

[State -1, EX Annu Mutsube]
type = changestate
value = 1020
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000 && var(20) <= 60
triggerall = (var(15) < 1 || var(20))
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (p2bodydist x = [0, 60]) && (enemynear, vel y >= 0) && p2dist y >= -60 && p2statetype != L
trigger1 = var(6) && movehit && random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = enemynear, gethitvar(hittime) >= 6

[State -1, EX Lela Mutsube]
type = changestate
value = 1120
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 500 && var(20) <= 60
triggerall = ((var(14) = 1 && enemynear, hitfall) || var(20))
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = p2statetype = A && (p2stateno != [5100, 5119])
triggerall = ifelse(p2movetype = H, (p2bodydist x = [0, 100]), (p2bodydist x = [0, 32]))
triggerall = ifelse(p2movetype = H, p2dist y < -60, p2dist y >= -60)
trigger1 = (ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])) && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 1020 && movehit
trigger2 = !animtime && random < (666 * (AIlevel ** 2 / 64.0))

[State -1, EX Kamui Mutsube]
type = changestate
value = 1560
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype = A
triggerall = power >= 500 && var(20) <= 60
triggerall = (var(15) < 1 || var(20))
triggerall = p2statetype != A && p2statetype != L
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = C)
trigger1 = stateno = 1510 && random < (333 * (AIlevel ** 2 / 64.0))

[State -1, Annu Mutsube]
type = changestate
value = 1000
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype != A
triggerall = (var(15) < 1 || var(20))
triggerall = (p2bodydist x = [60, 160]) && (enemynear, vel y >= 0) && p2dist y >= -60 && p2statetype != L
trigger1 = (ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])) && random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = !(enemynear, ctrl) && (enemynear, statetype = S) && (enemynear, animtime <= -12)
trigger2 = var(6) && movehit && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (enemynear, gethitvar(hittime) >= 10)

[State -1, Lela Mutsube]
type = changestate
value = 1100
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype != A
triggerall = (var(15) < 1 || var(20))
triggerall = (p2bodydist x = [0, 60]) && (enemynear, vel y >= 0) && p2dist y >= -60 && p2statetype = A
trigger1 = (ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])) && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && movehit && random < (25 * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, gethitvar(hittime) >= 10

[State -1, Kamui Rimse]
type = changestate
value = 1200
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype != A
triggerall = (var(15) < 1 || var(20))
triggerall = (p2bodydist x = [20, 65]) && (p2dist y = [-64, 0]) && p2statetype != L && (enemynear, vel y >= 0)
trigger1 = (ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])) && random < (100 * (AIlevel ** 2 / 64.0))
trigger1 = p2bodydist x >= 50
trigger2 = var(6) && movehit && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, gethitvar(hittime) >= 12 && p2bodydist x < 30

[State -1, Amube Yatoro]
type = changestate
value = 1300
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype != A
triggerall = (var(15) < 1 || var(20))
triggerall = numhelper(10000)
triggerall = helper(10000), stateno = 10000 && helper(10000), pos y <= -120
triggerall = (p2bodydist x = [100, 220]) && p2dist y >= -120
trigger1 = (ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, Amube Yatoro Wakeup]
type = changestate
value = 1300
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype != A
triggerall = numhelper(10000)
triggerall = helper(10000), stateno = 10000 && helper(10000), pos y <= -120
triggerall = (p2bodydist x = [0, 220]) && p2dist y >= -120 && p2statetype != S && p2statetype != C
triggerall = (ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101]))
trigger1 = stateno = 450 && ctrl && !animtime && random < (667 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 810 && ctrl && !animtime && random < (667 * (AIlevel ** 2 / 64.0))
trigger3 = stateno = 0 && time = 1 && ctrl && prevstateno = 822 && random < (667 * (AIlevel ** 2 / 64.0))

[State -1, Mamahaha Ni Tsukamaru]
type = changestate
value = 1500
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype != A
triggerall = (var(15) < 1 || var(20))
triggerall = numhelper(10000)
triggerall = helper(10000), stateno = 10000 && helper(10000), pos y <= -120
triggerall = (p2bodydist x = [0, 102]) && p2dist y >= -60 && p2statetype != L
trigger1 = (ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])) && (p2bodydist x = [0, 120])
trigger1 = !(enemynear, ctrl) && (enemynear, statetype = C) && (enemynear, animtime <= -12) && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = (ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101]))
trigger2 = !inguarddist && p2bodydist x > 120 && random < (50 * (AIlevel ** 2 / 64.0))
trigger3 = var(6) && moveguarded && random < (125 * (AIlevel ** 2 / 64.0))
trigger3 = enemynear, gethitvar(hittime) >= 10 && p2bodydist x < 72

[State -1, Shichikapu Ai]
type = changestate
value = 1530
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype = A
triggerall = (var(15) < 1 || var(20))
trigger1 = stateno = 1510 && p2bodydist x >= 120

[State -1, Kamui Mutsube]
type = changestate
value = 1550
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype = A
triggerall = (var(15) < 1 || var(20))
trigger1 = stateno = 1510

[State -1, Zetsumei Ougi]
type = changestate
value = 4100
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 3000 && !var(20)
triggerall = var(14) < 1
triggerall = !(enemynear, ctrl) && (enemynear, stateno != 40) && (enemynear, movetype != H)
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 499])
triggerall = (p2dist x = [0, 64]) && !(enemynear, pos y) && p2statetype != A && p2statetype != L
trigger1 = (ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101]))
trigger1 = random < (250 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 710 && !animtime
trigger2 = random < (750 * (AIlevel ** 2 / 64.0))

[State -1, Elerush Kamui Rimse]
type = changestate
value = 3000
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 2000 && !var(20)
triggerall = numhelper(10000)
triggerall = helper(10000), stateno = 10000 && helper(10000), pos y <= -120
triggerall = (var(15) < 1 || var(28))
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = C)
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 499])
triggerall = (p2bodydist x = [0, 150]) && !(enemynear, pos y) && p2statetype != A && p2statetype != L
trigger1 = (ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101]))
trigger1 = (enemynear, animtime <= -12) && random < (200 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && stateno != 3020 && movehit && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, gethitvar(hittime) >= 14
trigger3 = stateno = 1200 && movehit = 1 && var(7) && random < (500 * (AIlevel ** 2 / 64.0))
trigger4 = stateno = 3500 && (animelemtime(34) >= 0 && animelemtime(35) < 0) && movehit = 1 && var(7) && random < (500 * (AIlevel ** 2 / 64.0))

[State -1, Irusuka Yatoro Lise]
type = changestate
value = 3300
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 2000 && !var(20)
triggerall = numhelper(10000)
triggerall = helper(10000), stateno = 10000 && helper(10000), pos y <= -120
triggerall = (var(15) < 1 || var(28))
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [600, 699])
triggerall = (p2bodydist x = [100, 200]) && (p2dist y = [-120, 0]) && p2statetype != L
trigger1 = (ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101]))
trigger1 = (enemynear, vel x < 3) && (enemynear, animtime <= -30) && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = (ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101]))
trigger2 = (enemynear, stateno = 5300) && random < (250 * (AIlevel ** 2 / 64.0))

[State -1, Shichikapu Kamui Irushika]
type = changestate
value = 3100
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000 && var(20) <= 60
triggerall = numhelper(10000)
triggerall = helper(10000), stateno = 10000 && helper(10000), pos y <= -120
triggerall = (var(15) = 0 || (var(14) < 2 && enemynear, hitfall) || var(20))
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [600, 699])
triggerall = p2bodydist x >= 0 && (p2dist y = [-120, 0]) && p2statetype != L
trigger1 = (ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])) && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && stateno != 3100 && movehit && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, gethitvar(hittime) >= 16
trigger3 = stateno = 1000 && var(7) && random < (100 * (AIlevel ** 2 / 64.0))
trigger4 = stateno = 3020 && var(7)

[State -1, Ganso Lela Mutsube]
type = changestate
value = 3400
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000 && var(20) <= 60
triggerall = (var(15) = 3 || (var(14) < 2 && enemynear, hitfall) || var(20))
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
triggerall = (p2bodydist x = [0, 120]) && p2statetype != L
triggerall = (p2dist y = [-120, -90]) || (!(enemynear, hitfall) && (p2dist y = [-120, 0]))
trigger1 = (ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])) && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && movehit && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, gethitvar(hittime) >= 8
trigger3 = stateno = 1000 && var(7) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Apefuchi Kamui Rimse]
type = changestate
value = 3500
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 1000 && var(20) <= 60 && stateno != 3500
triggerall = (var(15) < 1 || var(20))
triggerall = !(enemynear, ctrl) && ((enemynear, stateno != [120, 155]) || enemynear, statetype = A)
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 499])
triggerall = (p2bodydist x = [0, 100]) && !(enemynear, pos y) && p2statetype != A && p2statetype != L
trigger1 = (ctrl || stateno = 40 || stateno = 52 || (stateno = [100, 101])) && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = var(7) && stateno != 3500 && movehit && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, gethitvar(hittime) >= 10

[State -1, Shirikoro Kamui Nomi]
type = changestate
value = 3200
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype != A
triggerall = power >= 3000 && !var(20) && life < lifemax
triggerall = life < 500 && enemynear, life > 500
trigger1 = ctrl
trigger1 = p2dist x >= 160 && !(enemynear, ctrl)
trigger1 = (enemynear, movetype = H) && (enemynear, hitfall) && random < (500 * (AIlevel ** 2 / 64.0))

[State -1, Jiketsu]
type = changestate
value = 4000
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = roundstate = 2 && statetype != A
triggerall = life < 100 && enemynear, life > 500 && roundno = 1
trigger1 = ctrl && random < (500 * (AIlevel ** 2 / 64.0))

[State -1, SD Taunt]
type = changestate
value = 197
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = statetype != A && life >= 0.75 * lifemax
triggerall = (enemynear, life) <= 0.25 * (enemynear, lifemax / 2)
trigger1 = ctrl
trigger1 = p2dist x >= 160 && !(enemynear, ctrl)
trigger1 = (enemynear, movetype = H) && (enemynear, hitfall) && random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Taunt]
type = changestate
value = ifelse(random < 667, 195, 196)
triggerall = AIlevel && numenemy
triggerall = ifelse(p2statetype = A && p2movetype = H, (enemynear, hitfall), 1) && (enemynear, stateno != [1115301, 1115309])
triggerall = statetype != A && life >= 0.5 * lifemax
triggerall = (enemynear, life) <= 0.5 * (enemynear, lifemax)
trigger1 = ctrl
trigger1 = p2dist x >= 160 && !(enemynear, ctrl)
trigger1 = (enemynear, movetype = H) && (enemynear, hitfall) && random < (100 * (AIlevel ** 2 / 64.0))
