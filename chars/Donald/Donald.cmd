; ドナルドのコマンド設定
;------------------------------------------------------------------------------
;==============================================================================
; 入力キーの設定パート
;==============================================================================
;------------------------------------------------------------------------------
;■設定はこの形が決まり事です。詳細は以下参照。
;
;[Command]
;name = "***"
;command = ###
;time = &&&
;
;■コマンドの名前：「name = "***"」という風に入れます。***に文字を入れてください。
; 　　　　　　　　アルファベットは大文字と小文字でも区別されます。日本語も可能です。
;
;■指定方法：「command = ###」という風に入れます。
;　　　　　　###に下記のキーを組み合わせ入力するコマンドを設定してください。
;
;　　方向キー：　B, DB, D, DF, F, UF, U, UB　（全て大文字で）
;　　　　　　　　B=Back（後）・D=Down（下）・F=Forward（前）・U=Up（上）になっています。
;
;　　ボタン　：　a, b, c, x, y, z, s 　　　　（全て小文字で）
; 
;　※特殊文字
;
;　　スラッシュ（ / ）：ボタンを押しっぱなしにする場合はこれを入れます。
;　　　　　　　　例：command = /F　　　（前キーを押したままにする）
;　　　　　　　　　　command = /B,y　　（後キーを押したままＹボタンを入力）
;
;　　チルダ　　（ ~ ）：ボタンが離される事を認識させる場合はこれを入れます。
;　　　　　　　　例：command = ~c　　　（Ｃボタンを離す）
;　　　　　　　　　　command = ~DB,DF,x（斜め後下を離して斜め前下=>Ｘボタンの順番に入力）
;
;　　　　　　　　※数値を追加する事で、ボタンを離すまでの時間、いわゆる『溜め』を設定出来ます。
;　　　　　　　　例：command = ~20z　　（Ｚボタンを押したままにし、２０フレーム後に離す）
;　　　　　　　　　　command = ~40B,F,b（後キーを押したままにし、４０フレーム後に離して前キー=>Ｂボタンの順番に入力）
;
;　　ドル　　　（ $ ）：複数の方向キー要素を入力出来るようにする場合はこれを入れます。
;　　　　　　　　例：command = $U　　　（上・斜め前上・斜め後上のどれからで始めても良い）
;　　　　　　　　　　command = $DF 　　（下・斜め前下・前のどれからで始めても良い）
;
;　　プラス　　（ + ）：ボタンを同時押しする場合はこれを入れます。
;　　　　　　　　例：command = a+b 　　（ＡボタンとＢボタンを同時押しします）
;　　　　　　　　　　command = x+y+z 　（ＸボタンとＹボタンとＺボタンを同時押しします）
;　　　　　　　　　　command = F+c 　　（前キーとＣボタンを同時押しします）
;
;　※これらの特殊文字は、組み合わせて使用する事も可能です。
;　　　　　　　　例：command = ~30$D,a+b
;　　　　　　　　　　　　　（下要素を３０フレーム溜めて離した後にＡボタンとＢボタンを同時押しします）
;
;■入力コマンド受付時間：「time = &&&」という風に入れます。オプションなので省略可能。
;　　　　　　　　　　　　&&&にコマンドを入力出来る時間を入れてください。時間はフレーム数です（１フレーム＝1/60秒）。
;　　　　　　　　例：time = 24　（入力受付時間を２４フレーム（0.4秒）に設定）
;
; 後は実際に登録されているものを参照してください。
;==============================================================================
;-| AIセット |-----------------------------------------------------------------

[Command]
name = "AI0"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI1"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI2"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI3"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI4"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI5"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI6"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI7"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name = "AI8"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI9"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI10"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name = "AI11"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI12"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI13"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI14"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI15"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI16"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI17"
command = a,B,c,x,y,z,s,B,D,F,U,a,b,c,x,y,z,s,s
time = 0
[Command]
name = "AI18"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI19"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b
time = 0
[Command]
name = "AI20"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI21"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI22"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI23"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI24"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI25"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F
time = 0
[Command]
name = "AI26"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D
time = 0
[Command]
name = "AI27"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B
time = 0
[Command]
name = "AI28"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U
time = 0
[Command]
name = "AI29"
command = a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a
time = 0
[Command]
name = "AI30"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c
time = 0
[Command]
name = "AI31"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI32"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y
time = 0
[Command]
name = "AI33"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI34"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s
time = 0
[Command]
name = "AI35"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI36"
command = z,z,z,z,z,z,a,a,a,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI37"
command = z,a,a,a,a,a,a,a,a,a,a,a,a,a,a,a,z,z,z
time = 0
[Command]
name = "AI38"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z
time = 0
[Command]
name = "AI39"
command = z,z,z,z,z,a,a,a,z,z,z,z,z,z,a,a,z,z,z
time = 0
[Command]
name = "AI40"
command = z,z,z,z,a,a,a,z,z,z,z,a,z,z,a,a,z,z,z
time = 0
[Command]
name = "AI41"
command = z,z,z,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z,z
time = 0
[Command]
name = "AI42"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI43"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,a,a,z
time = 0
[Command]
name = "AI44"
command = z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,a,a,a,z
time = 0
[Command]
name = "AI45"
command = z,z,z,z,z,z,a,a,z,z,z,z,z,a,a,a,a,z,z
time = 0
[Command]
name = "AI46"
command = z,z,z,z,z,z,z,z,a,a,a,a,a,a,z,z,z,z,z
time = 0
[Command]
name = "AI47"
command = z,z,z,a,a,a,a,z,z,z,z,z,z,z,z,z,z,z,z
time = 0
[Command]
name = "AI48"
command = z,z,z,z,z,a,a,a,z,z,z,a,a,a,z,z,a,z,a
time = 0
[Command]
name = "AI49"
command = z,z,z,z,a,a,a,z,z,z,z,z,a,a,a,z,z,z,z
time = 0
[Command]
name = "AI50"
command = z,z,z,a,a,z,z,z,z,z,z,z,z,z,a,a,z,z,z
time = 0
[Command]
name = "AI51"
command = b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,b,x
time = 0
[Command]
name = "AI52"
command = c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,c,x
time = 0
[Command]
name = "AI53"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x
time = 0
[Command]
name = "AI54"
command = y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,x
time = 0
[Command]
name = "AI55"
command = z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,z,x
time = 0
[Command]
name = "AI56"
command = s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,s,x
time = 0
[Command]
name = "AI57"
command = F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,x
time = 0
[Command]
name = "AI58"
command = D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,D,x
time = 0
[Command]
name = "AI59"
command = B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,B,x
time = 0
[Command]
name = "AI60"
command = U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,U,x
time = 0


;------------------------------------------------------------------------------
;-| 超必殺技 |-----------------------------------------------------------------

[Command]
name = "unhappyset"
command = ~D, DF, F, D, DF, F, b
time = 30

[Command]
name = "unhappyset2"
command = ~D, DF, F, a+b
time = 30

[Command]
name = "korekurai"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "korekurai2"
command = ~D, DF, F, x+y
time = 30

[Command]
name = "dance"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "donaldmagic"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "donaldmagic2"
command = ~D, DF, F, y+a
time = 30

[Command] 
name = "donaldgirlrush"
command = ~D, DB, B, D, DB, B, x
time = 30

[Command] 
name = "donaldgirlrush2"
command = ~D, DB, B, x+y
time = 30

[Command]
name = "hanva-ga-da"
command = ~F, FD, D, DB, B, F, b
time = 50

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------
[Command]
name = "hanva-ga-4kobun_b"
command = ~B, DB, D, DF, F, b

[Command]
name = "GO ACTIVE_y"
command = ~F, DF, D, DB, B, y

[Command]
name = "donasidecutter_a"
command = ~F, D, DF, a

[Command]
name = "poteto_a"
command = ~D, DB, B, a

[Command]
name = "donaldgirl_x"
command = ~D, DB, B, x

[Command]
name = "apple bom_y"
command = ~D, DB, B, y

[Command]
name = "GO ACTIVE_x"
command = ~D, DF, F, x

[Command]
name = "hanva-ga-_a"
command = ~D, DF, F, a

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------
[Command]
name = "FF"     ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = F, F
time = 10

[Command]
name = "BB"     ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = B, B
time = 10

;------------------------------------------------------------------------------

[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = x
time = 1

[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = y
time = 1

[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = z
time = 1

[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = a
time = 1

[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = b
time = 1

[Command]
name = "recovery"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = c
time = 1


;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------
[Command]
name = "F_b"
command = /$F,b
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------
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


;------------------------------------------------------------------------------
;-| 方向キー押しっぱなし |-----------------------------------------------------
[Command]
name = "holdfwd"   ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$F
time = 1

[Command]
name = "holdback"  ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$B
time = 1

[Command]
name = "holdup"    ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$U
time = 1

[Command]
name = "holddown"  ;要求済み (キーの変更は可能ですが名前を変えたり無効にしてはいけません)
command = /$D
time = 1

;------------------------------------------------------------------------------
;-| 空中ジャンプ|-----------------------------------------------------
[Command]
name = "airjumpfwd"
command = UF
time = 1

[Command]
name = "airjump"
command = U
time = 1

[Command]
name = "airjumpback"
command = UB
time = 1

[Command]
name = "aircombofwd"
command = /UF
time = 1

[Command]
name = "aircombo"
command = /U
time = 1

[Command]
name = "aircomboback"
command = /UB
time = 1

[command]
name="fwd"
command=F
time=1
[command]
name="back"
command=B
time=1
[command]
name="up"
command=U
time=1
[command]
name="down"
command=D
time=1

;------------------------------------------------------------------------------
;==============================================================================
; 技を実行するための条件の設定（ステートエントリーパート）
;==============================================================================
;------------------------------------------------------------------------------
; ここから下は「どのコマンドでどの番号のステートをどういう条件で出せるか」を設定する場所です。
;（ステートに関してはCNSファイルを参照）
; 
;■設定は基本的にこの形になります。
;
; [State -1, Label]                  ;「Label」の部分はただのラベルです。何でも良いです。それ以外は変更不可。
; type = ChangeState                 ;「別のステートに変更する」という意味のステートコントローラ
; value = new_state_number           ;出したい技のステート番号を入れます
; trigger1 = command = command_name  ;入力キー設定パートで登録したコマンドの名前をどれか入れます
; . . .  (any additional triggers)   ;trigger（条件を指定するトリガー）を追加出来ます
;
;■triggerに使える基本的な条件（通常は「トリガー」と呼ばれています）
;
;   - StateType    - キャラクターがどの状態の時にそのステートを出せるかどうかを決められます。
;                    S=立った状態・C=座った状態・A=空中にいる状態・L=横に倒れた状態、の４つが決まり事です。
;                    CNSのStatedefの下にある「Type = *」の項目が状態の意味なので、これをこのトリガーで判断します。
;
;   - Ctrl         - コントロールが可能か不可能かどちらかの時にそのステートを出せるかどうかを決められます。
;                    0=コントロール不可能状態・1=コントロール可能状態、ですが通常は Ctrl = 1 ( = 1 省略可能)が基本。
;
;   - StateNo      - 別の番号のステートから出せる事が可能になります。
;                    これを応用してスーパーキャンセルも可能です。
;
;   - MoveContact  - 物理攻撃が相手に当たった時（攻撃がヒットした時、もしくはガードされた時）に、
;                    そのステートを出せるかどうかを決められます。２種類４パターンあります。
;                    MoveContact or MoveContact = 1  （攻撃が当たった時）
;                    !MoveContact or MoveContact = 0 （攻撃が当たってない時）
;                    これを応用してスーパーキャンセルも可能です。
;
;　※上の４つ以外にもありますが、他のトリガーはM.U.G.E.N本体docsフォルダの中の
;　　CNSドキュメンテーションを参照してください。
;
;■ステートエントリーの順序
;
; ChangeStateの登録の順番は重要です。上に来れば来るほどコマンド入力の優先度が高くなります。
;
; 引用になりますが、例えば「波動拳コマンドのChangeState（↓＼→＋パンチ）」を
;「昇龍拳コマンドのChangeState（→↓＼＋パンチ）」よりも上に登録した場合、
; ゲーム中では昇龍拳を出そうとしても波動拳が誤って暴発しやすくなってしまいます。
; 防止するためには、「波動拳のChangeState」を「昇龍拳のChangeState」よりも下に登録しなくてはなりません。
;「レバーを前に入れて出す特殊技」と「投げ技」の関係なども同様です。
;
; 順番をよく考えて登録しましょう。
;
;■[Statedef -1]とは？
;
; この部分はCNSプログラミングの拡張部分の、常時監視ステートになります。
; どのいかなる状態でも設定した記述が常に有効になるステートです（CNSの[Statedef -2]と似たような部分）。
;
; 必要な記述と行なので、絶対に消さないでください。
;
;==============================================================================
;------------------------------------------------------------------------------
; 次の行は絶対に消さないでください。必須の項目です。

[Statedef -1]

;==============================================================================
;------------------------------------------------------------------------------
;犯ヴァーガーだッ!!（ゲージレベル3）
[State -1,]
type = ChangeState
value = 3100
triggerall = Var(59) = 0
triggerall = command = "hanva-ga-da"
triggerall = power >= 3000
triggerall = statetype != A
triggerall = life <= (LifeMax/2)
triggerall = NumHelper(1810) = 0
triggerall = NumHelper(2100) = 0 
triggerall = NumHelper(2200) = 0
triggerall = NumHelper(3500) = 0 
triggerall = NumHelper(2301) = 0 
trigger1 = ctrl

;------------------------------------------------------------------------------
;アンハッピーセット（ゲージレベル3）
[State -1, ]
type = ChangeState
value = 3300
triggerall = Var(59) = 0
triggerall = power >= 3000
triggerall = NumHelper(2100) = 0 
triggerall = NumHelper(2200) = 0
triggerall = NumHelper(3500) = 0 
triggerall = NumHelper(2301) = 0 
triggerall = statetype != A
triggerall = ctrl
trigger1 = command = "unhappyset"
trigger2 = command = "unhappyset2"
;------------------------------------------------------------------------------
;ドナルドガールラッシュ（ゲージレベル2）
[State -1,]
type = ChangeState
value = 3050
triggerall = Var(59) = 0
triggerall = power >= 2000
triggerall = statetype != A
triggerall = NumHelper(2100) = 0 
triggerall = NumHelper(2200) = 0
triggerall = NumHelper(3500) = 0 
triggerall = NumHelper(2301) = 0 
triggerall = ctrl
trigger1 = command = "donaldgirlrush"
trigger2 = command = "donaldgirlrush2"
;------------------------------------------------------------------------------
;ドナルドマジック（ゲージレベル2）
[State -1, ]
type = ChangeState
value = 3200
triggerall = Var(59) = 0
triggerall = command = "donaldmagic"|| command = "donaldmagic2"
triggerall = power >= 2000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050]
trigger2 = movecontact

;===========================================================================
;犯ヴァーガーがぁこれくらい（ゲージレベル１）
[State -1, hanva-ga-]
type = ChangeState
value = 3400
triggerall = Var(59) = 0
triggerall = command = "korekurai" || command = "korekurai2"
triggerall = power >= 1000
triggerall = NumHelper(1200) = 0 ;ＩＤナンバー1200のヘルパーが画面中に１個も出てない時
triggerall = NumProjID(1200) = 0 ;ＩＤナンバー1200の飛び道具が画面中に１個も出てない時
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = [600,699])
trigger2 = movecontact
;------------------------------------------------------------------------------
;ダンスに夢中なんだ（ゲージレベル１）
[State -1, ]
type = ChangeState
value = 3000
triggerall = Var(59) = 0
triggerall = command = "dance" || command = "korekurai2"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050]
trigger2 = movecontact

;===========================================================================
;------------------------------------------------------------------------------
;------------------------------------------------------------------------------

;空中ドナサイドカッター
[State -1,airdonaside cutter]
type = ChangeState
value = 1053
triggerall = Var(59) = 0
triggerall = command = "donasidecutter_a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600,699])
trigger2 = movecontact

;ドナサイドカッター
[State -1,donaside cutter]
type = ChangeState
value = 1050
triggerall = Var(59) = 0
triggerall = command = "donasidecutter_a"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

;------------------------------------------------------------------------------
;ドナルドガール呼び出し
[State -1, ]
type = ChangeState
value = 1060
triggerall = Var(59) = 0
triggerall = command = "donaldgirl_x"
triggerall = NumHelper(1810) = 0
triggerall = NumHelper(2100) = 0 
triggerall = NumHelper(2200) = 0
triggerall = NumHelper(3500) = 0 
triggerall = NumHelper(2301) = 0 
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;GO ACTIVE（強）
[State -1, GO ACTIVE]
type = ChangeState
value = 1020
triggerall = Var(59) = 0
triggerall = command = "GO ACTIVE_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

;GO ACTIVE（弱）
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = Var(59) = 0
triggerall = command = "GO ACTIVE_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

;------------------------------------------------------------------------------
;リンゴ爆弾
[State -1, ]
type = ChangeState
value = 1800
triggerall = Var(59) = 0
triggerall = command = "apple bom_y"
triggerall = NumHelper(1810) = 0 ;ＩＤナンバー1200のヘルパーが画面中に１個も出てない時
triggerall = NumHelper(2100) = 0 
triggerall = NumHelper(2200) = 0
triggerall = NumHelper(3500) = 0 
triggerall = NumHelper(2301) = 0 
triggerall = PalNo != 11
triggerall = !IsHelper
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

;==============================================================================
;------------------------------------------------------------------------------
;ぶちまけポテト
[State -1, hanva-ga-]
type = ChangeState
value = 1600
triggerall = Var(59) = 0
triggerall = command = "poteto_a"
trigger1 = NumHelper(1600) = 0 ;ＩＤナンバー1200のヘルパーが画面中に１個も出てない時
trigger1 = NumProjID(1600) = 0 ;ＩＤナンバー1200の飛び道具が画面中に１個も出てない時
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = NumHelper(1600) = 0 ;ＩＤナンバー1200のヘルパーが画面中に１個も出てない時
trigger2 = NumProjID(1600) = 0 ;ＩＤナンバー1200の飛び道具が画面中に１個も出てない時
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact
trigger3 = PalNo = 12
trigger3 = life <= 500
trigger3 = statetype != A
trigger3 = ctrl = 1
trigger4 = PalNo = 12
trigger4 = life <= 500
trigger4 = (stateno = [200,299]) || (stateno = [400,499])
trigger4 = movecontact
;==============================================================================
;------------------------------------------------------------------------------
;犯ヴァーガー4個分
[State -1, hanva-ga-]
type = ChangeState
value = 1205
triggerall = Var(59) = 0
triggerall = command = "hanva-ga-4kobun_b"
triggerall = NumHelper(1200) = 0 ;ＩＤナンバー1200のヘルパーが画面中に１個も出てない時
triggerall = NumProjID(1200) = 0 ;ＩＤナンバー1200の飛び道具が画面中に１個も出てない時
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

;犯ヴァーガー
[State -1, hanva-ga-]
type = ChangeState
value = 1200
triggerall = Var(59) = 0
triggerall = command = "hanva-ga-_a"
triggerall = NumHelper(1200) = 0 ;ＩＤナンバー1200のヘルパーが画面中に１個も出てない時
triggerall = NumProjID(1200) = 0 ;ＩＤナンバー1200の飛び道具が画面中に１個も出てない時
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = movecontact

;==============================================================================
;------------------------------------------------------------------------------

;空中犯ヴァーガー4個分
[State -1, hanva-ga-]
type = ChangeState
value = 1100
triggerall = Var(59) = 0
triggerall = command = "hanva-ga-4kobun_b"
triggerall = NumHelper(1200) = 0 ;ＩＤナンバー1200のヘルパーが画面中に１個も出てない時
triggerall = NumProjID(1200) = 0 ;ＩＤナンバー1200の飛び道具が画面中に１個も出てない時
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = [600,699])
trigger2 = movecontact


;空中犯ヴァーガー
[State -1, hanva-ga-]
type = ChangeState
value = 1110
triggerall = Var(59) = 0
triggerall = command = "hanva-ga-_a"
triggerall = NumHelper(1200) = 0 ;ＩＤナンバー1200のヘルパーが画面中に１個も出てない時
triggerall = NumProjID(1200) = 0 ;ＩＤナンバー1200の飛び道具が画面中に１個も出てない時
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = [600,699])
trigger2 = movecontact


;==============================================================================
;------------------------------------------------------------------------------
;ダッシュ
[State -1, Dash]
type = ChangeState
value = 100
triggerall = Var(59) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;バックステップ
[State -1, Back Step]
type = ChangeState
value = 105
triggerall = Var(59) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;空中前ジャンプ
[State -1, ]
type = ChangeState
value = 510
TriggerAll=var(59) = 0
triggerall = command = "airjumpfwd"
triggerall = ctrl
triggerall = Pos Y <= -20
triggerall = Vel Y >= -5
triggerall = statetype = A
trigger1 = var(7) <= 0
trigger2 = PalNo = 12
trigger2 = var(7) <= 4

;空中垂直ジャンプ
[State -1, ]
type = ChangeState
value = 515
TriggerAll=var(59) = 0
triggerall = command = "airjump"
triggerall = ctrl
triggerall = Pos Y <= -20
triggerall = Vel Y >= -5
triggerall = statetype = A
trigger1 = var(7) <= 0
trigger2 = PalNo = 12
trigger2 = var(7) <= 4

;空中後ろジャンプ
[State -1, ]
type = ChangeState
value = 520
TriggerAll=var(59) = 0
triggerall = command = "airjumpback"
triggerall = ctrl
triggerall = Pos Y <= -20
triggerall = Vel Y >= -5
triggerall = statetype = A
trigger1 = var(7) <= 0
trigger2 = PalNo = 12
trigger2 = var(7) <= 4

;------------------------------------------------------------------------------
;投げ
[State -1,]
type = ChangeState
value = 800
triggerall = Var(59) = 0
triggerall = command = "b"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;==============================================================================
;------------------------------------------------------------------------------
;空中投げ
[State -1,]
type = ChangeState
value = 850
triggerall = Var(59) = 0
triggerall = command = "b"
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2bodydist Y =[-30,30]
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = A) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = A) || (p2statetype = C)
trigger2 = p2movetype != H

;==============================================================================
;------------------------------------------------------------------------------
;挑発
[State -1,]
type = ChangeState
value = 195
triggerall = Var(59) = 0
triggerall = command = "start"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;------------------------------------------------------------------------------
;立ち弱
[State -1,]
type = ChangeState
value = 200
triggerall = Var(59) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 5


;立ち中
[State -1,]
type = ChangeState
value = 210
triggerall = Var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 400
trigger3 = movecontact

;------------------------------------------------------------------------------
;立ち強1
[State -1,]
type = ChangeState
value = 230
triggerall = Var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
;------------------------------------------------------------------------------
;前強攻撃
[State -1,]
type = ChangeState
value = 250
triggerall = Var(59) = 0
triggerall = command = "F_b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact
trigger8 = stateno = 440
trigger8 = movecontact
trigger9 = stateno = 240
trigger9 = movecontact
;------------------------------------------------------------------------------
;立ち強2
[State -1,]
type = ChangeState
value = 240
triggerall = Var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 210
trigger4 = movecontact
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 410
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact

;------------------------------------------------------------------------------
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = Var(59) = 0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;しゃがみ弱
[State -1,]
type = ChangeState
value = 400
triggerall = Var(59) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = time > 5

;しゃがみ中
[State -1,]
type = ChangeState
value = 410
triggerall = Var(59) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = stateno = 200
trigger3 = movecontact

;------------------------------------------------------------------------------
;しゃがみ強1
[State -1,]
type = ChangeState
value = 430
triggerall = Var(59) = 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = stateno = 410
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact


;しゃがみ強2
[State -1,]
type = ChangeState
value = 440
triggerall = Var(59) = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = stateno = 410
trigger3 = movecontact
trigger4 = stateno = 430
trigger4 = movecontact
trigger5 = stateno = 200
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact
trigger7 = stateno = 230
trigger7 = movecontact

;------------------------------------------------------------------------------
;------------------------------------------------------------------------------
;空中弱
[State -1,]
type = ChangeState
value = 600
triggerall = Var(59) = 0
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 5

;空中中
[State -1,]
type = ChangeState
value = 610
triggerall = Var(59) = 0
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

;------------------------------------------------------------------------------
;空中強1
[State -1,]
type = ChangeState
value = 630
triggerall = Var(59) = 0
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact

;空中強2
[State -1,]
type = ChangeState
value = 640
triggerall = Var(59) = 0
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact

