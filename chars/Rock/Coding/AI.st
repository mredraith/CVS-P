
[Statedef 10004]
type     = S
movetype = I
physics  = S
juggle  =0
poweradd = 0
ctrl     = 0
anim     = 1
sprpriority = 1
velset = 0,0
[State 0, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
facing = 1
pos = 0,0
ignorehitpause = 1
;persistent = 
[State 0, Turn]
type = Turn
trigger1 = facing!=root,facing



[State 001, Null]
type = Null
;detect posadd movement
trigger1 = 1|(time%2 &&(fvar(0):=enemynear,pos x))
;p2dx
trigger1 = 1||(fvar(1):=root,p2bodydist x*root,const(size.xscale))
;p2dy
trigger1 = 1||(fvar(2):=root,p2bodydist y)
;rootstate
trigger1 = 1||(var(9):=root,stateno)
;opponent is on the ground
trigger1 = 1||(var(14):= (enemynear,statetype=S||enemynear,statetype=C))
;all confirmable lights
trigger1 = 1||(var(10):= (var(9) = 200 || var(9) = 201  || var(9) = 230 || var(9) = 231 || var(9) = 400 || var(9)=430))
;all confirmable mediums
trigger1 = 1||(var(11):=(var(9) = 210 || var(9) = 211 ||var(9) = 241  || var(9) = 410|| var(9)=440||var(9)=610||var(9)=640))
;all confirmable heavies
trigger1 = 1||(var(12):=(var(9) = 221 ||(var(9) = 251 && (!var(14)||fvar(1)>25)) || var(9) = 252 ))
;hittime for special/super cancels
trigger1 = 1||(var(13):= Cond(root,NumTarget, Cond(!enemynear,HitFall, cond(enemynear,gethitvar(ctrltime)>enemynear,GetHitVar(hittime),enemynear,gethitvar(ctrltime),enemynear,GetHitVar(hittime)), 0),0))

;dive kick angle detection
trigger1=1||(fvar(4):=cond((root,pos y!=0||enemynear,pos y!=0)&&!var(8)&&fvar(2)!=0,(fvar(1) / fvar(2)),0))

;true velocity calculation
trigger1= 1||(fvar(3):=cond((abs(fvar(0))-abs(enemynear,pos x))=0,enemynear,vel x,(abs(fvar(0))-abs(enemynear,pos x))))
;jump in advantage
trigger1= 1||(var(2):=enemynear,gethitvar(hittime) *(root,ctrl && !enemynear,ctrl ))
;the opponent cannot be juggled
trigger1 =1||( var(3):=(enemynear,anim=5120 && enemynear,animtime<-7||enemynear,stateno=5040||enemynear,statetype=A&&!enemynear,hitfall&&enemynear,gethitvar(hitshaketime)&&enemynear,gethitvar(guarded)=0||enemynear,stateno=52 && enemynear,time<3&&enemynear,prevstateno=5040||enemynear,statetype=L))
;juggle points
trigger1= 1||(var(4):=root,var(11))
;the opponent can be juggled for combos
trigger1=1||(var(5):=(!var(8)&&!root,var(16) && root,var(15) < 1&&enemynear,hitfall||enemynear,stateno=1391))
;opponent wake up
trigger1=1||(var(6):=enemynear,anim=5120||(enemynear,stateno=[5110,5119]))
;self explainatory
trigger1=1||var(59):=root,AIlevel
;cross up
trigger1 =1||(var(7):= (fvar(1) =[-65,40])*root,pos y<0);
;how long has the opponent been blocking
trigger1 =1||(var(21):= cond((enemynear,stateno=[150,155]),var(21)+1,0));

;supercancel
[State 0, VarSet]
type = Varset
trigger1= !root,hitpausetime && !enemynear,gethitvar(hitshaketime) 
var(1)=0
[State 0, VarSet]
type = Varset
triggerall =!root,var(4) && !root,var(16) && root,var(15) < 5
trigger1 = (var(9)=[1000,1001]) && (root,animelemtime(6)>0 && root,animelemtime(8)<0)
trigger2 = var(9)=1002 && (root,animelemtime(11)>0 && root,animelemtime(13)<0)
trigger3 = var(9)=1030 && (root,animelemtime(11)>0 && root,animelemtime(13)<0)
trigger4= (var(9)=1100 && (animelemtime(7)>=0 && animelemtime(10)<0)||var(9)=1110 && (animelemtime(8)>=0 && animelemtime(11)<0)||var(9)=1120 && (animelemtime(9)>=0 && animelemtime(12)<0))&& root,movecontact 
trigger5= ((var(9)=1121||var(9)=1131) &&(root,animelemtime(3)<0 || root,movecontact=[1,10])||var(9)=1131 && root,animelemtime(8)>0 &&  root,animelemtime(12)<0)&& root,movecontact 
trigger6= var(9)=1231 && root,animelemtime(8)>0 && root,animelemtime(12)<0
trigger7= var(9)=1300 && root,animelemtime(1)>0
trigger8= var(9)=1305 && root,animelemtime(1)>0
trigger9= var(9)=1310 && root,animelemtime(1)>0
trigger10= var(9)=1320 && root,animelemtime(3)>0
trigger11= var(9)=1400 && root,movecontact && root,animelemtime(6)<0
trigger12= var(9)=1405 && root,animelemtime(2)<2
trigger13= (var(9)=[1410,1430]) && root,movecontact && root,animelemtime(6)<0
trigger14= var(9)=1130 && root,movecontact && root,animelemtime(5)>=0
var(1)=1
;AI charge behavior
[State 0, VarSet]
type = Varadd
;triggerall = var(17)=0
trigger1 = (root,statetype=C||root,statetype=A||root,movecontact||(root,movetype=A&& ((var(9)=[400,3250])||root,prevstateno=[400,499]))||root,statetype=L||(root,movetype=H&&root,stateno!=130&&root,stateno!=[150,151])||root,stateno=105||stateno=[5600,5611])&&var(59)>0
v = 37    ;fv = 10
value = 1
ignorehitpause = 1
[State 0, VarSet]
type = VarSet
trigger1 =  var(37)=1 
v = 36   ;fv = 10
value = 0
ignorehitpause =1 
[State 0, VarSet]
type = VarSet
trigger1=var(37)>=32   
v = 38    ;fv = 10
value =8
ignorehitpause =1 


[State 0, VarSet]
type = Varadd
trigger1 =var(38)>0 &&(root,statetype=S&&(root,movetype=I||root,time<5)||var(9)=[1400,1430])
v = 38    ;fv = 10
value = -1

[State 0, VarSet]
type = VarSet
trigger1 =var(37)>=32 ||(root,statetype=S&&(root,movetype=I||root,time<5)||var(9)=[1400,1430]) 
v = 37    ;fv = 10
value = 0
[State 0, VarRandom]
type = VarRandom
trigger1 = 1
v = 45
range = 0,999

[State 0, VarSet]
type = VarSet
trigger1 = enemynear,gethitvar(isbound)
v = 8
value = 1
[State 0, VarSet]
type = VarSet
trigger1 = enemynear,movetype!=H ||( root,prevstateno=[1501,1529])||( root,prevstateno=1531)
v = 8
value = 0

;get up timer
[State 0, Null]
type = Null
trigger1 = (root,anim=5120|| roundstate!=2)
trigger1=  1||(var(0):=10)



;counter
[State 333, Null]
type = Null
triggerall = (root,anim=5120 && root,animtime=0||(root,ctrl || var(9)=20 || (var(9)=[100,101])||var(9)=140|| root,gethitvar(guarded)=1&& root,gethitvar(hittime)=0))
triggerall =((fvar(1)=[-9,65+floor(fvar(3)*.4)*10])&&enemynear,movetype=A&&!enemynear,numproj&&fvar(2)=[-70,0]) && (root,facing!=enemynear,facing||enemynear,statetype=A) && random <= (434  * (var(59) ** 2 / 64.0))
trigger1= (power>750|| root,var(20)>400)&& random%3=0
trigger1=1||var(18):=1230
trigger1 = var(20):=1
trigger2=!var(18)
trigger2=1||var(18):=1200
trigger2=1||var(15):=cond(!var(14)||enemynear,hitdefattr=SCA,SA,HA,0,cond(enemynear,hitdefattr=S,NA,1,cond(enemynear,hitdefattr=C,NA,1,-1)))
trigger2 = var(20):=1

;reversals
[State 111, Null]
type = Null 
triggerall =  var(18)=0  && (root,anim=5120 && root,animtime=0||(root,ctrl || var(9)=20 || (var(9)=[100,101])||var(9)=140|| root,gethitvar(guarded)=1&& root,gethitvar(hittime)=0)||var(9)=242&& root,animelemtime(7)<0&&root,animelemtime(1)>0) && enemynear,movetype=A && (!var(5) && !var(3)||var(14)) && enemynear,time>0
;supers
trigger1=  (root,power>=cond(root,var(20),1000,3000)) 
trigger1=  (fvar(1) =[-8,80+(floor(fvar(3)*.4)*5)])  && (var(14)||fvar(2) =[-50+(floor(enemynear,Vel Y*.4)*-5), -5]) && !var(3)&& var(4)=0 && random <= (150  * (var(59) ** 2 / 64.0))
trigger1 = 1||(var(18):=3200)
trigger1 = var(20):=1
trigger2=  (root,power>=cond(root,var(20),0,1000)) 
trigger2=  (fvar(1) =[-8,50+(floor(fvar(3)*.4)*5)])  && (var(14)||fvar(2) =[-80+(floor(enemynear,Vel Y*.4)*-5), -5]) && !var(3)&& var(4)=0 && random <= (350  * (var(59) ** 2 / 64.0)) 
trigger2 = 1||(var(18):=3100+(root,power>=cond(root,var(20),1000,2000))*50)
trigger2 = var(20):=1

trigger3= (root,power>=cond(root,var(20),0,1000)) 
trigger3=  (fvar(1) =[-40,40+(floor(fvar(3)*.4)*5)])  && (var(14)||fvar(2) =[-80+(floor(enemynear,Vel Y*.4)*-5), -5]) && !var(3)&& var(4)=0 && random <= (100  * (var(59) ** 2 / 64.0)) 
trigger3 = 1||(var(18):=3000+(root,power>=cond(root,var(20),1000,2000))*50)
trigger3 = var(20):=1
;specials
trigger4=  (fvar(1) =[-15,60+(floor(fvar(3)*.4)*5)])  && (var(14)||fvar(2) =[-70+(floor(enemynear,Vel Y*.4)*-5), -15]) && !var(3)&& var(4)=0 && random <= (cond(root,var(20),333,100)  * (var(59) ** 2 / 64.0)) &&(root,power>750||root,var(20)) &&var(38)
trigger4 = 1||(var(18):=1430)
trigger4 = var(20):=1
trigger5=  (fvar(1) =[-15,40+(floor(fvar(3)*.4)*5)])  && (var(14)||fvar(2) =[-70+(floor(enemynear,Vel Y*.4)*-5), -15]) && !var(3)&& var(4)=0 && random <= (200  * (var(59) ** 2 / 64.0)) 
trigger5 = 1||(var(18):=1320)
trigger5 = var(20):=1
trigger6=  (fvar(1) =[-15,40+(floor(fvar(3)*.4)*5)])  && (var(14)||fvar(2) =[-70+(floor(enemynear,Vel Y*.4)*-5), -15]) && !var(3)&& var(4)=0 && random <= (cond(root,var(20),333,100)  * (var(59) ** 2 / 64.0)) &&var(38)
trigger6 = 1||(var(18):=1400+(random%3)*10)
trigger6 = var(20):=1
trigger7=  var(9)!=242 &&random < (700 * (var(59) ** 2 / 64.0)) && !var(3)&& var(4)=0&&var(14)&& fvar(1) =[0,25+(floor(fvar(3)*.4)*5)+(floor(fvar(3)*.4)*5)]
trigger7= 1||var(18):=800

[State 55, Null]
type = Null
triggerall =(root,Ctrl || var(9)= 20|| var(9) = [100,101] ) &&root,statetype!=A&& roundstate=2&& enemynear,movetype!=H 
triggerall = enemynear,movetype!=H &&enemynear,hitdefattr!=SCA,AT && !var(18)
triggerall =(enemynear, movetype = A||enemynear,NumProj >= 1) && (fvar(1)=[0,45+(enemynear,numproj>0)*220+(var(9)=100)*25])&&random <= (280 * (var(59) ** 2 / 64.0))
trigger1= enemynear,movetype!=I
trigger1= var(18):=700
trigger1 = var(20):=1
trigger2=frontEdgeBodyDist > 100 && (fvar(1) >120 && enemynear,numproj||fvar(1)= [45,95])&&random <= (280 * (var(59) ** 2 / 64.0))
trigger2= var(18):=710
trigger2 = var(20):=1
trigger3=backEdgeBodyDist > 100 && (fvar(1) =[0,35+(stateno=100)*25])&&random <= (280 * (var(59) ** 2 / 64.0))
trigger3= var(18):=715
trigger3 = var(20):=1
;--juggles
[State 55, Null]
type = Null
triggerall = (root,ctrl || var(9)=20||var(9)=[100,101] )&&enemynear,statetype!=L&& var(18)=0  && var(5)
;specials
trigger1 = !var(18)  &&fvar(1)<80&& random < (cond(root,var(20),350,150) * (var(59) ** 2 / 64.0)) && (fvar(2)=[-(95+floor(enemynear,vel y*.4)*5),cond(enemynear,stateno=1391,10,-65)] ) &&(power>750|| root,var(20)>400)
trigger1 = var(18):=1330
trigger2 =!var(8)&& enemynear,hitfall&&var(38)&& fvar(2)=[-(75+floor(enemynear,vel y*.4)*5),10] 
trigger2=(fvar(1)=[-8,30])&& random < (700 * (var(59) ** 2 / 64.0))
trigger2 = var(18):=1420
trigger3 =!var(8)&& enemynear,hitfall&& (enemynear,vel y >0 || enemynear,stateno=1391)&& fvar(2)=[-(125+floor(enemynear,vel y*.4)*5),cond(enemynear,stateno=1391,10,-55)] 
trigger3=(fvar(1)=[-22,170])&& random < (700 * (var(59) ** 2 / 64.0))
trigger3 = var(18):=cond(fvar(1)>50,cond(fvar(2)<-60||fvar(1)>90,1120,1100),cond(fvar(1)>40,1110,1120))






[State 333, Null]
type = Null
trigger1 =var(15)=-1&& var(18)=[1200,1230]
trigger1 = 1||var(18):=0;

;evasive options
[State 25, Null]
type = Null
triggerall = root,stateno=700&& var(45) < (333 * (var(59) ** 2 / 64.0))
trigger1=(var(14)||fvar(2) =[-75+(floor(enemynear,Vel Y * .4) * 5)*5,-15]) && fvar(1)=[-5,25]
trigger1 = var(18):=251
trigger2= (var(14)||fvar(2) =[-25+(floor(enemynear,Vel Y * .4) * 5)*5,-15]) && fvar(1)=[5,80+(floor(fvar(3)*.4)*5)]
trigger2 = var(18):=222

;anti airs
[State 0, Null]
type = Null
triggerall = var(18)=0  && root,statetype!=A&&  !var(3)&& var(4)=0&&!var(5)
triggerall = (root,ctrl || var(9)=20 || (var(9)=[100,101]))&& enemynear,statetype=A && !enemynear,hitfall && enemynear,stateno!=5040
;AA specials
trigger1=  (fvar(1) =[-35,30+(floor(fvar(3)*.4)*5)])  && (var(14)||fvar(2) =[cond(enemynear,movetype=A,-80,-40)+(floor(enemynear,Vel Y*.4)*-5), -15]) && !var(3)&& var(4)=0 && random <= (cond(root,var(20),333,100)  * (var(59) ** 2 / 64.0)) &&var(38)
trigger1 = 1||(var(18):=1400+(random%3)*10)
;;AA normals
trigger2= (fvar(1) =[55,80+(floor(fvar(3)*.4)*5)])  && (fvar(2) =[-75+(floor(enemynear,Vel Y*.4)*-5), -25]) && (fvar(4)=[-1.4,-.7])  && !var(3)&& var(4)=0&& random <= (450  * (var(59) ** 2 / 64.0)) 
trigger2 = 1||(var(18):=250)
trigger3= (fvar(1) =[20,53+(floor(fvar(3)*.4)*5)])  && (fvar(2) =[-55+(floor(enemynear,Vel Y*.4)*-5), -25]) && (fvar(4)=[-1.2,-.4])  && !var(3)&& var(4)=0&& random <= (450  * (var(59) ** 2 / 64.0)) 
trigger3 = 1||(var(18):=420)
trigger4= (fvar(1) =[-20,20+(floor(fvar(3)*.4)*5)])  && (fvar(2) =[-85+(floor(enemynear,Vel Y*.4)*-5), -5])  && !var(3)&& var(4)=0&& random <= (650  * (var(59) ** 2 / 64.0)) 
trigger4 = 1||(var(18):=410)
trigger5= (fvar(1) =[15,50+(floor(fvar(3)*.4)*5)])  && (fvar(2) =[-45+(floor(enemynear,Vel Y*.4)*-5), -5])  && !var(3)&& var(4)=0&& random <= (650  * (var(59) ** 2 / 64.0)) 
trigger5 = 1||(var(18):=200)


;max
[State 0, Null]
type = Null											;max formula no more than 10
Triggerall =   random <= (149* (var(59) ** 2 / 64.0)) && !var(5)
triggerall = (root,ctrl || var(9)=20||var(9)=[100,101] )
triggerall = root,var(20) <= 0 && Power >= 1000
trigger1 = (enemynear,statetype=L) ||enemynear,hitfall
trigger1=var(18):=770





;lights
[State 20, Null]
type = Null
triggerall = root,statetype!=A&& var(14)
triggerall = (root,ctrl || var(9)=20 || (var(9)=[100,101]))&& random < (500 * (var(59) ** 2 / 64.0))
triggerall = fvar(1) < 65 + (floor(fvar(3) * .4) * 5) && !var(2) && !var(3) && (!var(0) || fvar(1) > 10)
triggerall = var(18)=0
trigger1 = (fvar(1) > 55 || random <= (125 * (var(59) ** 2 / 64.0))) && var(14) && var(18)=0
trigger1= 1|| (var(18):=230)	
trigger2=(var(14) ) && fvar(1) < 55
trigger2= 1|| (var(18):=Cond((fvar(2) < -20 || enemynear,StateType = C)&&fvar(1) < 45 + (floor(fvar(3) * .4) * 5), 400, 200))

;cmd grab
[State 333, Null]
type = Null
triggerall = root,statetype!=A && enemynear,numproj=0 && enemynear,stateno!=1190
triggerall = (root,ctrl || var(9)=20 || (var(9)=[100,101])||var(9)=140|| root,gethitvar(guarded)=1&& root,gethitvar(hittime)=0||var(9) = 242 && root,animelemtime(1)>0 && root,animelemtime(7)<0) && var(14)
trigger1= ((enemynear,stateno=[120,131]) || var(2)<5 ||enemynear,movetype!=H) &&(power>750|| root,var(20)>400)&& random < (cond(root,var(20),500,250) * (var(59) ** 2 / 64.0)) && fvar(1) =[15,55+(floor(fvar(3)*.4)*5)+(floor(fvar(3)*.4)*5)]
trigger1= 1||var(18):=1530
trigger2= ((enemynear,stateno=[120,131]) || var(2)<5 ||enemynear,movetype!=H) && random < (500 * (var(59) ** 2 / 64.0))&& fvar(1) =[15,50+(floor(fvar(3)*.4)*5)+(floor(fvar(3)*.4)*5)]
trigger2= 1||var(18):=1500
trigger2= 1||var(15):=(random%3)
trigger3= var(9)!=242&& ((enemynear,stateno=[120,131]) || var(2)<2 ||enemynear,movetype!=H)&& random < (700 * (var(59) ** 2 / 64.0)) && fvar(1) =[-28,25+(floor(fvar(3)*.4)*5)+(floor(fvar(3)*.4)*5)]
trigger3= 1||var(18):=800
;mediums
[State 21, Null]
type = Null
triggerall = root,statetype!=A && enemynear,statetype!=L && var(14)
triggerall = (root,ctrl || var(9)=20 || (var(9)=[100,101]))&& var(45) < (500 * (var(59) ** 2 / 64.0))			
triggerall = !var(2) && (!var(3) || fvar(2) >-10)&& (!var(0) || fvar(1) >35)
trigger1= (fvar(1)=[35,65+(floor(fvar(3)*.4)*5)]) && (var(14))  
trigger1= 1||(var(18):=210)
trigger2 =(fvar(1) =[35,(75+floor(fvar(3)*.4)*5)]) 
trigger2 =  1||(var(18):=240)

;heavies
[State 22, Null]
type = Null
triggerall = root,statetype!=A && var(14)
triggerall = var(18)=0
triggerall = (root,ctrl || var(9)=20 || (var(9)=[100,101]))&& random < (125 * (var(59) ** 2 / 64.0))			
triggerall =   !var(2) && (!var(3))&& (!var(0) || fvar(1) >10)
trigger1 =(fvar(1) =[40,(65+floor(fvar(3)*.4)*10)]) 
trigger1 =  1||(var(18):=220)
trigger2 =(fvar(1) =[40,(55+floor(fvar(3)*.4)*10)])
trigger2 =  1||(var(18):=420)


;jump in/links
[State 23, Null]
type = Null
triggerall = root,statetype!=A&& (root,ctrl ||  var(9)=20 || var(9)=[100,101])
triggerall = var(14) && var(21)<65
;enough to link heavies
trigger1 =  var(2)>3&& fvar(1) <18&& random < (250 * (var(59) ** 2 / 64.0))
trigger1= 1||var(18):=cond(random%2,250,220)
;enough to link lights
trigger2= var(2)>4 && fvar(1) <=50 && !var(18)&& random < (100 * (var(59) ** 2 / 64.0))
trigger2= 1||var(18):=230


trigger3= var(2)>3 && fvar(1) <=50 && !var(18)
trigger3= 1||var(18):=cond(fvar(1)<30,cond(enemynear,statetype=C||fvar(1)>10,cond(random%2,400,430),410),cond(fvar(1)<40&&enemynear,statetype=S,200,440))


;links
[State 24, Null]
type = Null
triggerall = root,statetype!=A
triggerall = var(14) &&(root,ctrl ||  var(9)=20 || var(9)=100)
trigger1 =  var(13)>3 && fvar(1) <60
trigger1= 1||var(18):=440


;pokes
[State 25, Null]
type = Null
triggerall = !var(18) && (root,ctrl || var(9)=20 || var(9)=100) && var(14) 
trigger1=(fvar(1)=[55,75+(floor(fvar(3)*.4)*5)]) &&  (enemynear,movetype=I||enemynear,statetype=S)  && random < (90 * (var(59) ** 2 / 64.0)) 
trigger1= 1||var(18):=450
trigger2=(fvar(1)=[35,70+(floor(fvar(3)*.4)*5)]) &&  (enemynear,movetype=I||enemynear,statetype=S)  && random < (120 * (var(59) ** 2 / 64.0)) 
trigger2= 1||var(18):=440
trigger3=(fvar(1)=[25,53+(floor(fvar(3)*.4)*5)]) &&  (enemynear,movetype=I||enemynear,statetype=S)  && random < (160 * (var(59) ** 2 / 64.0)) 
trigger3= 1||var(18):=430


;projectile
[State 0, Null]
type = Null											;max formula no more than 10

triggerall = !var(0) 
triggerall = var(18)=0 && (var(14)||enemynear,statetype=L) && (enemynear,movetype!=A || enemynear,statetype!=A)
triggerall= (fvar(1) =[90,300 + (floor(fvar(3)*.4)*5)]) && (root,ctrl || var(9)=20 || (var(9)=[100,101]))
;specials
trigger1=( var(14)||((enemynear,stateno=[5100,5119])||enemynear,stateno=5120))  
trigger1=random >= (cond(root,var(20),924,964)* (var(59) ** 2 / 64.0))&&!root,numhelper(1010)  &&!var(3)&&(power>750|| root,var(20)>400)
trigger1 =  1||(var(18):=1030)
trigger2 =( var(14)||((enemynear,stateno=[5100,5119])||enemynear,stateno=5120))  
trigger2=random >= (962* (var(59) ** 2 / 64.0))&&!root,numhelper(1010) && !var(3)
trigger2 =  1||(var(18):=1000+cond(fvar(1)>80&&enemynear,movetype!=A,2,cond(fvar(1)>100,1,0)))


;cross up
;[State 19, Null]
;type = Null
;triggerall = root,statetype=A&& (root,ctrl||var(9)=140)
;triggerall = fvar(1)>-35
;triggerall=  !var(19) && var(14)&&var(7)
;triggerall =enemynear,HitDefAttr != SCA,SA ||  var(59)<6
;trigger1=  fvar(2) =[-25,60+((enemynear,statetype=S||enemynear,anim=5120)*35)+((enemynear,statetype=C)*15)] 
;trigger1= (root,vel y >-1 || enemynear,statetype=A&& !var(3))&& !var(2)&& random < (500 * (var(59) ** 2 / 64.0))
;trigger1= 1||var(19):=640

;jump attacks
[State 19, Null]
type = Null
triggerall = root,statetype=A&& (root,ctrl||var(9)=140)
triggerall = fvar(1)>-9
triggerall=  !var(19) && (!var(5)||enemynear,statetype=A)
triggerall =enemynear,HitDefAttr != SCA,SA ||  var(59)<6

trigger1= (pos y <-55||vel y >0)&& (root,frontedgebodydist <40||fvar(1) =[-9,( cond(root,var(3),60,45) + (floor(fvar(3)*.4)*5)+(floor(root,vel x*.4)*5))]) &&(fvar(2)>50||fvar(2)<0)&& fvar(2) =[-15,55+((enemynear,statetype=S||enemynear,anim=5120)*40)+((enemynear,statetype=C)*25)] 
trigger1= (root,vel y >-1 || enemynear,statetype=A&& !var(3))&& !var(2) && random < (350 * (var(59) ** 2 / 64.0))
trigger1= 1||var(19):=620

trigger2= (pos y <-55||vel y >0)&&(root,frontedgebodydist <40||fvar(1) =[-9,( cond(root,var(3),68,58) + (floor(fvar(3)*.4)*5)+(floor(root,vel x*.4)*5))]) &&(fvar(2)>50||fvar(2)<0)&& fvar(2) =[-30,50+((enemynear,statetype=S||enemynear,anim=5120)*40)+((enemynear,statetype=C)*25)] 
trigger2= (root,vel y >-1 || enemynear,statetype=A&& !var(3))&& !var(2)&& random < (350 * (var(59) ** 2 / 64.0))
trigger2= 1||var(19):=650

trigger3= (pos y <-45||vel y >0)&&(root,frontedgebodydist <40||fvar(1) =[-9,( cond(root,var(3),80,75) + (floor(fvar(3)*.4)*5)+(floor(root,vel x*.4)*5))]) && fvar(2) =[-25,30+((enemynear,statetype=S||enemynear,anim=5120)*40)+((enemynear,statetype=C)*25)] 
trigger3= (root,vel y >-1 || enemynear,statetype=A&& !var(3))&& !var(2)&& random < (500 * (var(59) ** 2 / 64.0))
trigger3= 1||var(19):=640

trigger4= (pos y <-45||vel y >0)&&(root,frontedgebodydist <40||fvar(1) =[-11,( cond(root,var(3),60,45) + (floor(fvar(3)*.4)*5)+(floor(root,vel x*.4)*5))]) && fvar(2) =[-10,30+((enemynear,statetype=S||enemynear,anim=5120)*40)+((enemynear,statetype=C)*25)] 
trigger4= (root,vel y >-1 || enemynear,statetype=A&& !var(3))&& !var(2)&& random < (500 * (var(59) ** 2 / 64.0))
trigger4= 1||var(19):=610

trigger5= (pos y <-35||vel y >0)&&(root,frontedgebodydist <40||fvar(1) =[-11,( cond(root,var(3),40,25) + (floor(fvar(3)*.4)*5)+(floor(root,vel x*.4)*5))]) && fvar(2) =[-10,25+((enemynear,statetype=S||enemynear,anim=5120)*40)+((enemynear,statetype=C)*25)] 
trigger5= (root,vel y >-1 || enemynear,statetype=A&& !var(3))&& !var(2) && random < (650 * (var(59) ** 2 / 64.0))
trigger5= 1||var(19):=600
trigger6=(pos y <-35||vel y >0)&&( root,frontedgebodydist <40||fvar(1) =[-11,( cond(root,var(3),70,60) + (floor(fvar(3)*.4)*5)+(floor(root,vel x*.4)*5))]) && fvar(2) =[-30,35+((enemynear,statetype=S||enemynear,anim=5120)*40)+((enemynear,statetype=C)*25)] 
trigger6= (root,vel y >-1 || enemynear,statetype=A&& !var(3))&& !var(2)&& random < (650 * (var(59) ** 2 / 64.0))
trigger6= 1||var(19):=630

;projectile

;----------things to do when opponent is basically on the ground.


;[State 0, VarSet]
;type = VarSet
;trigger1 = var(18)=[300,330]
;trigger1 = fvar(1)<0 && !enemynear,hitfall
;
;v = 18   ;fv = 10
;value = 0
;
;[State 12121, Null]
;type = Null
;triggerall = root,statetype!=A
;triggerall = (root,ctrl || root,stateno=20 )&& random < (400 * (var(59) ** 2 / 64.0))
;;specific for stopping crouch attacks
;trigger1= (fvar(1) = [45, 65+(floor(fvar(3)*.4)*5)]) && enemynear,StateType = C && enemynear,MoveType = A
;trigger1= 1||var(18):=240
;trigger2= (fvar(1) = [40, 75+(floor(fvar(3)*.4)*5)]) && enemynear,StateType = C && enemynear,MoveType = A
;trigger2= 1||var(18):=220

[State 12121, Null]
type = Null
triggerall = root,statetype!=A
triggerall = (root,ctrl ||  var(9)=20 || var(9)=100)&&(enemynear,statetype=C || enemynear,anim=5120 )
;specific for stopping crouch attacks
trigger1= (fvar(1) =[90*(enemynear,statetype=C),(120+floor(fvar(3)*.4)*10)]) && (enemynear,animtime>-20|| enemynear,statetype=C)&& random < (50 * (var(59) ** 2 / 64.0))&&(power>750|| root,var(20)>400)
trigger1= 1||var(18):=1330
trigger2= (fvar(1) =[90*(enemynear,statetype=C),(120+floor(fvar(3)*.4)*10)]) && (enemynear,animtime>-20|| enemynear,statetype=C)&& random < (100 * (var(59) ** 2 / 64.0))
trigger2= 1||var(18):=1300
trigger2= 1||var(15):=0
trigger3= (fvar(1) =[40*(enemynear,statetype=C),(70+floor(fvar(3)*.4)*10)]) && (enemynear,animtime>-12|| enemynear,statetype=C)&& random < (150 * (var(59) ** 2 / 64.0))
trigger3= 1||var(18):=242







;-------------------movecontact section----------








[State 0, sc]
type = Null
triggerall =  root,statetype!=A &&(var(12)|| var(11)||var(10)&&fvar(1)>30)&& root,movecontact=[1,3]
trigger1 = !var(18) && !var(19) &&(var(14)) &&fvar(1)<35&& root,movehit&& random < (150 * (var(59) ** 2 / 64.0)) && var(13)>4&&(power>750|| root,var(20)>400)&& var(38)
trigger1 = var(18):=1430


trigger2 =!var(18) && !var(19) && (random < (200* (var(59) ** 2 / 64.0)))&&fvar(1)<95&& var(13)>7&&(power>750|| root,var(20)>400)
trigger2 = var(18):=1030
trigger3 = !var(18) && !var(19) &&(var(14)) &&fvar(1)<90&& root,movehit&& random < (cond(root,var(20),650,250) * (var(59) ** 2 / 64.0)) && var(13)>10&&(power>750|| root,var(20)>400)
trigger3 = var(18):=1130


trigger4 = !var(18) && !var(19) &&(var(14)) &&fvar(1)<25&& root,movehit&& random < (400 * (var(59) ** 2 / 64.0)) && var(13)>5&& var(38)
trigger4 = var(18):=1400+(random%3)*10

trigger5 = !var(18) && var(14) &&fvar(1)<90&& root,movehit&& random < (600 * (var(59) ** 2 / 64.0)) && var(13)>11
trigger5 = var(18):=1100+(cond(var(13)<12,0,2)*10)
trigger6 = !var(18)&(var(14)||fvar(2)>-45) &&  random < (150 * (var(59) ** 2 / 64.0))&& root,moveguarded && enemynear,statetype=C && (enemynear,AIlevel=0||enemynear,AIlevel<4)
trigger6= var(18):=1300
trigger6 = 1||var(15):=0
trigger7 = !var(18)&&(var(14)||fvar(2)>-75) &&  random < (150 * (var(59) ** 2 / 64.0))&& var(13)>10
trigger7 = var(18):=cond(var(13)<11,1000,cond(var(13)<12,1001,1002))

;-supers
[State 26, supc]
type = Null
triggerall = !var(18) || enemynear,life<300
triggerall = root,statetype!=A&& (root,power>=1000 ||root,var(20)) && (var(1)||(var(12)||var(11))&&root,movecontact=[1,5]) && (var(5)||var(14) ||root,var(15)<5&&!root,var(16)) && !var(3)
trigger1=  random < (650 * (var(59) ** 2 / 64.0))&& root,statetype!=A&&(root,movehit||var(1)&&(enemynear,movetype=H||enemynear,movetype=A))&&  root,power=(3000+ (root,var(20))*-2000) 
trigger1 = fvar(1)<90 && fvar(2)>-35 
trigger1= var(18):=3200
trigger2=  random < (250 * (var(59) ** 2 / 64.0))&& root,statetype!=A&&(root,movehit||var(1)&&(enemynear,movetype=H||enemynear,movetype=A))&&  root,power>=(1000+ (root,var(20))*-1000) 
trigger2 =  (fvar(1)=[-8,85])&& fvar(2)>-65 
trigger2= var(18):=cond(power>=(2000+ (root,var(20))*-1000)&&random%2,3150,3100)
trigger3=random < (350 * (var(59) ** 2 / 64.0)) && (root,movehit||var(1)&&(enemynear,movetype=H||enemynear,movetype=A))&& root,statetype!=A  && var(13)>7 &&  root,power>=(1000+ (root,var(20))*-1000) 
trigger3 = (fvar(1)=[-20,35]) && fvar(2)>-75 
trigger3 = var(18):=cond(power>=(2000+ (root,var(20))*-1000)&&random%2,3050,3000)




[State 0, groundedheavies]
type = Null
triggerall = (var(9)=251) && !var(18)&& random < (500 * (var(59) ** 2 / 64.0))
trigger1 =  var(14)&&  fvar(1)<=40&& root,movecontact=[1,3] 
trigger1 = var(18):=252

[State 0, Null]
type = Null
trigger1= var(0)>0
trigger1= var(0):=var(0)-1


;------------|walking|------------------
[State 0, Null]
type = Null 
trigger1 = var(24):=(((enemynear,movetype !=A)|| fvar(1) >140||fvar(2)>20&&var(5))|| (enemynear,statetype=L  && fvar(1)>60) ||var(2)>0)
trigger2 = var(24):= ((backedgebodydist >40 && (enemynear,movetype =A ||enemynear,statetype!=L  && fvar(1) <10||fvar(10)<25+(enemynear,statetype=L)*20))*-1)


;-----------|Jump|-----------------
[State 2, Null]
type = varset
trigger1 =1
var(30)=0
[State 1, Null]
type = varset
triggerall = !var(18) &&  (cond(var(59),var(45) <ceil(((fvar(6)*499)*(var(59) ** 2 / 64.0))),0)||enemynear,hitdefattr=SC,AT) 
triggerall =statetype != A &&  (!var(0) )  && stateno!=40 && statetype!=A
triggerall= (fvar(1)>45+((enemynear,movetype!=A&&var(14))*45) || frontedgebodydist <50||var(6)||enemynear,stateno=5040&& fvar(2) >-40)|| enemynear,hitdefattr=SC,AT&&random<(455 * (var(59) ** 2 / 64.0))
trigger1 =enemynear,hitdefattr=SC,AT 
trigger2 =((fvar(1)  =[95,160+(enemynear,numproj>0)*95])||frontedgedist <30) &&(enemynear,movetype!=H||enemynear,stateno=5110) &&!var(30)
trigger3 =var(6) && ((fvar(1) =[70,140])  ||frontedgedist <60 )  &&enemynear,movetype!=H&&!var(30)
trigger4 = fvar(1)>130 && enemynear,numproj || fvar(1)>160 && enemynear,movetype=A
trigger5 = var(19) 
var(30)=1



[State 0, ParentVarSet]
type = ParentVarSet
triggerall = root,prevstateno!=100
trigger1 =root,time=2&& root,stateno=40&& (enemynear,anim=5120 && abs(enemynear,animtime) < 5|| enemynear,movetype!=A) && fvar(1) =[20,60]
v =  3
value = 1

[State 0, ParentVarSet]
type = ParentVarSet
triggerall = !root,var(3)
trigger1 =root,time=2&& root,stateno=40&& (enemynear,anim=5120 && abs(enemynear,animtime) < 5|| enemynear,movetype!=A&& random%4) && fvar(1) =[60,110]
v =  3
value = 2

[State 0, ParentVarSet]
type = ParentVarSet
triggerall = !root,var(3) 
trigger1 =root,time=2&& root,stateno=40&& (enemynear,anim=5120 && abs(enemynear,animtime) < 5|| enemynear,movetype!=A&& random%3) && fvar(1) =[165,220]
v =  3
value = 3


[State 3, jump type]
type = Null
trigger1= var(9)= 40 && root,time=1
trigger1 = 1||var(31):=0
trigger2= var(9)= 40 && root,time=2
trigger2 = fvar(1) >=cond(root,var(3),40,90)|| (enemynear,stateno=5120||enemynear,movetype=H )&&fvar(1) >=30 || enemynear,statetype=A && fvar(1) >=30 || root,var(3)=3
trigger2 = var(31):=1
trigger3= var(9)= 40 && root,time=2
trigger3 = fvar(1)< 15 && enemynear,movetype =A && (backedgebodydist >30 && frontedgebodydist >60)
trigger3 = var(31):=-1




[State 0, VarSet]
type = Varset;how often should I jump?
trigger1 = time=0
fv = 6   ;fv = 10
value = .65

;I was hit out of the air by a normal attack
[State 0, VarSet]
type = Varset
triggerall = var(39)
triggerall=enemynear,stateno=[200,499]
trigger1 = root,movetype=H && root,statetype=A && var(9)!=[120,155]
trigger1 = root,gethitvar(hitshaketime)=1
fv = 6   ;fv = 10
value = fvar(6)*.65

;I was hit out of the air by a special attack
;Note that ikemen go lets you literally check the attr of attack that hit you making this
;more accurate in that engine.
[State 0, VarSet]
type = Varset
triggerall = var(39)
triggerall=enemy,stateno=[1000,3999]
trigger1 = root,movetype=H && root,statetype=A && var(9)!=[120,155]
trigger1 = root,gethitvar(hitshaketime)=1
fv = 6   ;fv = 10
value = fvar(6)*.40

;Slowly recover the idea of jumping
[State 0, VarAdd]
type = VarAdd
trigger1 = fvar(6)<.65 && time%240=0
fv = 6    ;fv = 
value = .125*fvar(6)
;ignorehitpause = 
;persistent = 


[State 0, VarSet]
type = Varset
trigger1 =root,statetype=A&& root,movetype!=H
v = 39   ;fv = 10
value = 1
ignorehitpause = 1
[State 0, VarSet]
type = Varset
trigger1 =root,statetype=A&&root,movetype=H
v =39   ;fv = 10
value = 2
ignorehitpause = 1
[State 0, VarSet]
type = Varset
trigger1 =root,statetype!=A
v = 39  ;fv = 10
value = 0
ignorehitpause = 1


[State 0, VarSet]
type = VarSet
trigger1 = var(18)=200||var(18)=210||var(18)=220||var(18)=230||var(18)=240||var(18)=250
;prevent the impossible
v = 18 
value = var(18)+(Abs(root,P2BodyDist X) <= 18)

[State 0, VarSet]
type = VarSet
trigger1 = var(9)=var(18)|| root,statetype=A && var(18) || root,movetype=H&&root,anim!=5120
;prevent the impossible
v = 18 
value = 0

[State 0, VarSet]
type = VarSet
trigger1 = var(9)=var(19)||(root,statetype!=A && var(19)&&var(19)!=[600,655])|| root,movetype=H
v = 19
value = 0

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = root,stateno!=[800,3999]
v = 10
value = var(15)

 

[State 0, DisplayToClipboard];Attack 
type = DisplayToClipboard
trigger1 = 1
text = "%f %d %d %f %d "
params= fvar(4), fvar(2),fvar(6),fvar(1),var(30)