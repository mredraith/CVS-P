                            __________________________________
===========================| Dan Hibiki by RagingRowen	      |===========================
                            ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯        [22nd January 2024]

 - Customized version of Capcom's Dan character, for MUGEN 1.0+


=====<Features>=====

 - All the essential stuff
 - Details and moves taken from his various video game appearances
 - Gameplay mixed from several games, including CvS2, KOF, SFA3 and SFIII
 - Special Intros vs Sagat, Yuri, Joe and Ryo.

=====<Movelist>=====

 U - up          x - light punch        a - light kick
 D - down        y - medium punch       b - medium kick
 F - forward     z - heavy punch        c - heavy kick
 B - back        p - any punch          k - any kick
 s - start       2p- two punches        2k- two kicks

 (Air) - Move must be performed in the air.
 (EX)  - Move has an EX version, performed by pressing two punch/kick buttons.
 (MAX) - Use two punch/kick buttons when performing a Super move to power it up.


<NORMAL>
     
.Seoi Nage	         	F/B + 2p			(near opponent)


<SPECIAL>
     
.Gadouken (EX)			D, DF, F, p
.Koryuken (EX)			F, D, DF, p
.Dankuukyaku (EX)		D, DB, B, k			(Air also)	
.Premium Sign			D, DF, F, k
.Danretsuken (EX)		D, DB, B, p


<TAUNT>

.Chouhatsu			s
.Shagami Chouhatsu		s (Crouch)				
.Kuuchuu Chouhatsu		s (Air)
.Zenten Chouhatsu		D, DF, F, s
.Kouten Chouhatsu		D, DB, B, s


<SUPER>
     
.Shinkuu Gadouken (MAX)		D, DF, F, D, DF, F, p		(MAX = Haoh Gadouken, disable in Config.txt)
.Koryurekka (MAX)		D, DF, F, D, DF, F, k
.Hisshou Buraiken (MAX)		D, DB, B, D, DB, B, k
.Chouhatsu Densetsu		D, DF, F, D, DF, F, s


<Lv3 SUPER>

.Shissou Buraiken		D, DB, B, D, DB, B, 2p
.Otoko Michi			z, a, B, x, x


<SYSTEM>

.Forward Dash:                  	F, F
   .Run:                       			hold
.Backward Dash:                 	B, B
.Low Jump:                     		tap U
.High Jump:                     	tap D, U
.Long Low Jump:                 	tap D, tap U            
.Sidestep:                      	a + x
   .Sidestep Attack:            		p / k
.Forward Roll:                  	F + a + x
.Backward Roll:                 	B + a + x
.Parry High:                    	tap F
.Parry Low:                     	tap D
.Air Parry:                     	tap F           	(Air)
.Power Charge:                  	hold b + y
.Zero Counter:                  	B, DB, D, p / k		(during standing or crouching guard)
.Custom Combo:                  	c + z           	(Air also)
.Fall Recovery:                 	2p / a + x      	(while falling and allowed)



=====<Move Details>=====

 - Non-EX Koryuken has a low chance of having startup invincibility, also indicated by a flash.
 - Dankuukyaku flies over low attack or projectiles.
 - EX Danretsuken launches for a juggle reset.
 - Chouhatsu Densetsu will fill your Power to 100% if the animation plays from start to finish.


=====<Gameplay Notes>=====

COMBO SYSTEM:
 - Some Normal attacks can be canceled into Command, Special and Super moves
 - Some Special moves can be canceled into Super moves
 - Some Lv1 Super moves can be canceled into MAX Super moves
 - Cancelling a Special, Super move or Custom Combo into a Super move resets the juggle points
   but also reduces its damage

CUSTOM COMBO:
 - Removes cancellable attack restrictions and gives you a lot of freedom to combo them
 - Juggle limit is lifted
 - You can only use EX Special or Super moves from the point the character starts flashing faster
   and brighter, and doing so ends Custom Combo
 - Gives you a short invulnerability window at the start



=====<Version History>=====

Version 2.0.2 (22nd January 2024)
- Fixed the Vs. Sagat winpose overlapping Otoko Michi's winpose, also made it only play at the end of matches.
- "Yattaze!" removed from Otoko Michi.
- EX Koryuken has extra starting distance via PosAdd instead of Velset.

Version 2.0.1 (January 2024):
- Added the fake liedown state, disabling the mash-to-wakeup mechanic.
- Fixed usage of normal Gadouken FX when Shinkuu Gadouken is destroyed.
- Fixed being able to Fall Recover from Shissou Buraiken.

Version 2.0 (January 2024):
- CS by KOFHERO77 applied.
- A couple of Win Quote changes.
- Minor Frame Data changes.
- Movement velocity adjustments, mainly for the Long Jumps. 
- Various sprites changed those from PotS' version (resized).
- Tweaked Intro 2 so he no longer rolls too far forward before snapping to starting position.
- Standing MK can now special cancel off the 1st hit.
- Slight rework of Gadouken. Secret juggle version omitted, normal version less safe, EX version doesn't knockdown you can link afterwards like in SFV.
- Pose at the end of EX Dankuukyaku changed.
- Danretsuken added.
- LVL1 Shinkuu Gadouken startup increased.
- Some Chouhatsu Densetsu flexes changed.
- New Miss Animation for Shissou Buraiken.
- Otoko Michi damage decreased slightly, also includes an adjusted win pose.
- Some misc. tweaks.

Version 1.1.1 (4th October 2021):
- Fixed Shissou Buraiken not going into the TargetState properly after a Gadouken knockdown cancel..

Version 1.1 (4th October 2021):
- AI finished.
- Removed more Benimaru stuff.
- Added Continue Anim.
- Custom Combo FX aligned.
- Dan now turns to P2 for Rolling Taunts. 
- EX Gadouken's EX Spark is in a more 'balanced' position.
- Koryuken juggling reverted.
- EX Dankuukyaku given Dash Dust.
- Removed Super Cancelling from EX Dankuukyaku's land.
- EX Dankuukyaku can now juggle.
- Fixed missing PlayerPush during Chouhatsu Densetsu's 4th roll.

Version 1.0 (3rd October 2021):
- Added a roll-in variant of the normal intro.
- Added the Special Intro vs Joe Higashi.
- Added the Special Winpose vs Sagat.
- Premium Sign added.
- Otoko Michi added.
- MAX Koryurekka given better invincibility with the air hit y.velocity decreased.
- Super Finish Text added.

Beta 2:
- Hi-Res FX by SkyDragonSliferEX added.
- Removed leftover Benimaru specials.
- Zero Counters done.
- Added forward movement to Stand HK.
- Koryuken velocities changed to be close(r) to CvS2's.
- Koryuken juggles lessened.
- Shinkuu Gadouken's projectile comes out earlier.
- Haoh Gadouken added.
- Shissou Buraiken added.

Beta 1:
- Added some Intros (Turns included) and Win Poses.
- Remaining Taunts done.
- Sidestep and Rolls done.
- Hitpauses tweaked.
- Ground EX Dankuukyaku's 3rd hit jolts forward so it doesn't miss.
- Air Dankuukyaku added.
- Hisshou Buraiken done.

Alpha 3:
- Hit Animations done.
- Parries done.
- Shinkuu Gadouken done.
- Gadouken cancels added.

Alpha 2:
- Cancels improved.
- Taunts started.
- Throw 1 done.
- Dankuukyaku done.
- MAX Koryurekka done.

Alpha 1:
- Basic Movement done.
- Normals done.
- Gadouken and Koryuken done.
- Koryurekka done.

To Do:
- A second throw.
- Proper Danretsuken Sprites.
- Add the lower defense on Chouhatsu Densetsu from SFV.
- More Special Intros (Maybe vs Sakura and Blanka).


=====<Special Thanks>=====

 - Jesuszilla for his CvS2 Data Tool/Table.
 - Jmorphman for code, references and his Benimaru which I used as a template.
 - KarmaCharmeleon for code and providing data and guidance with datamining. 
 - JtheSaltyy and Warusaki3 for sprites, animations, code and such.
 - DeathScythe for Super Projectile code.
 - SkyDragonSliferEX for providing Hi-Res FX.
 - Tay for the Level 3 Portrait.
 - Mysticus and God Ryu for Voice Rips.
 - DauntlessMonk7, PeXXer, Knuckles8864, KOFHERO77, 20S, AlexSin, Dick Stiekem, ZolidSone26, Akito and Project.13 for feedback.
 - KOFHERO77 for the CS.
 - Knuckles8864 for the fixed Otoko Michi win sprite.
 - P.o.t.S. for code, effects, hitsparks, and the style we all know and love.


=====<Disclaimer>=====

 - The Dan character is property of Capcom
 - Street Fighter and Capcom vs SNK are property of Capcom
 - This MUGEN character is a non-profit fan work, it cannot be used for any commercial purposes