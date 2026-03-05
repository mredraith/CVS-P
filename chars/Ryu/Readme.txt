                                ______________________________
===============================| Ryu by Phantom.of.the.Server |================================
                                ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯           [13.09.2025]

 - Contact: potsmugen@gmail.com
 - Website: https://network.mugenguild.com/pots/
 - If you downloaded this character from anywhere else, it's probably outdated

 - Customized version of Capcom's Ryu character from the Street Fighter series
 - Playable in the Ikemen GO engine, February 2025 build and above
 - For older versions for older engines, try searching my Mediafire folder



==========< FEATURES >==========

 - Three modes: Ryu, Evil Ryu and Master Ryu
 - Custom gameplay inspired by both classic and modern games
 - Details taken from his various video game appearances and storyline
 - Ryu vs Evil Ryu intro
 - Evil Ryu vs my Shin Gouki intro
 - Ryu vs my Sakura intro
 - Special intros vs my Pocket Shin Gouki and Reu's Evil Ken
 - Special intros vs CvS2 Another Kyo and CvS2 Ryo by Byakko
 - Special intros against JMorphman's Ken
 - Special win pose against Ken
 - Custom input parser
 - A.I.



==========< MODE OVERVIEW >==========

This character has access to three different modes:

<Normal Ryu>
 - 1000 life points
 - Base mode

<Evil Ryu>
 - 900 life points
 - Has a different movelist
 - Some shared moves have different properties

<Master Ryu>
 - Just for fun mode
 - 800 life points
 - Cannot use EX specials
 - Can perform Darkstalkers chain combos on the ground
 - Can use almost any move from both Ryu and Evil Ryu


The mode is selected according to the definition file, as explained below.



==========< .DEF OVERVIEW >==========

This character has four different .def files. Here's what each one does:


<ryu_pots.def>
The mode is selected via palette:

A, B, C, X, Y, Z       -> Normal Ryu
Start + A, B, X, Y, Z  -> Evil Ryu
Start + C              -> Master Ryu

To add him to your Mugen, add the following line to your select.def, under [Characters]:
ryu_pots,


<normalryu.def>
Only Normal Ryu mode is available.
To add him to your Mugen, add the following line to your select.def, under [Characters]:
ryu_pots/normalryu.def,


<evilryu.def>
Only Evil Ryu mode is available.
To add him to your Mugen, add the following line to your select.def, under [Characters]:
ryu_pots/evilryu.def,


<masterryu.def>
Only Master Ryu mode is available.
To add him to your Mugen, add the following line to your select.def, under [Characters]:
ryu_pots/masterryu.def,



==========< MOVELIST >==========

NOTE: The movelist can be accessed from the ingame menu.

U - up          x - light punch        a - light kick
D - down        y - medium punch       b - medium kick
F - forward     z - hard punch         c - hard kick
B - back        p - any punch          k - any kick
s - start       pp - two punches       kk - two kicks

(air) - Move must be performed in the air.

(EX) - Move with an EX version. EX moves are performed by pressing two punch/kick buttons.
e.g.: Hadouken - D, DF, F, p
      EX Hadouken - D, DF, F, pp

EX moves are more powerful than regular Special moves, but consume half of a power stock.


                  <<<NORMAL MODE>>>

<THROWS>

.Seoi Nage                         F/B + pp (near opponent)
.Tomoe Nage                        F/B + kk (near opponent)


<UNIQUE ATTACKS>

.Sakotsu Wari                      F + y
.Senpuu Kyaku                      F + b
.Kyuubi Kudaki                     F + z
.Jodan Nirengeki                   (close) y, c


<SPECIAL MOVES>

.Hadou Ken                         D, DF, F, p (EX)
.Shouryuu Ken                      F, D, DF, p (EX)
.Tatsumaki Senpuu Kyaku            D, DB, B, k (EX)
.Kuuchuu Tatsumaki Senpuu Kyaku    D, DB, B, k (air) (EX)
.Joudan Sokutou Geri               D, DF, F, k (EX)
.Denjin Renki                      D, D, p
.Hadou no Kamae                    D, DF, F, s


<LEVEL 1 SUPER COMBOS>

.Shinkuu Hadou Ken                 D, DF, F, D, DF, F, p
.Shinkuu Tatsumaki Senpuu Kyaku    D, DB, B, D, DB, B, k
.Denjin Hadou Ken                  D, DB, B, D, DB, B, p (Hold) (Rotate joystick to charge faster)
.Denjin Rengeki                    D, DF, F, D, DF, F, k


<LEVEL 2 SUPER COMBOS>

.Kaze no Ken                       D, D, D, pp


<LEVEL 3 SUPER COMBOS>

.Shin Shoryuu Ken                  D, DF, F, D, DF, F, kk


                    <<<EVIL MODE>>>

<THROWS>

.Seoi Nage                         F/B + pp (near opponent)
.Tomoe Nage                        F/B + kk (near opponent)


<UNIQUE ATTACKS>

.Sakotsu Wari                      F + y
.Senpuu Kyaku                      F + b
.Seichuu Nidan Tsuki               F + z
.Tenma Kuujin Kyaku                D + b (while jumping forward)
.Kikokuretsuzan                    y, z, c


<SPECIAL MOVES>

.Hadou Ken                         D, DF, F, p (EX)
.Shakunetsu Hadou Ken              F, DF, D, DB, B, p
.Shouryuu Ken                      F, D, DF, p (EX)
.Tatsumaki Senpuu Kyaku            D, DB, B, k (EX)
.Kuuchuu Tatsumaki Senpuu Kyaku    D, DB, B, k (air) (EX)
.Ryusokyaku                        D, DF, F, k (EX)
.Ashura Senkuu Zenpou              F, D, DF, ppp or kkk
.Ashura Senkuu Kouhou              B, D, DB, ppp or kkk


<LEVEL 1 SUPER COMBOS>

.Shinkuu Hadou Ken                 D, DF, F, D, DF, F, p
.Shinkuu Tatsumaki Senpuu Kyaku    D, DB, B, D, DB, B, k
.Messatsu Gou Shouryuu             D, DF, F, D, DF, F, k


<LEVEL 2 SUPER COMBOS>

.Metsu Shoryuu ken                 D, DF, F, D, DF, F, kk


<LEVEL 3 SUPER COMBOS>

.Metsu Hadou Ken                   D, DB, B, D, DB, B, pp (Hold)
    .Ryuu Koku Hadou Ken           Fully charge Metsu Hadou Ken
.Shun Goku Satsu                   x, x, F, a, z


                  <<<MASTER MODE>>>

<THROWS>

.Seoi Nage                         F/B + pp (near opponent)
.Tomoe Nage                        F/B + kk (near opponent)


<UNIQUE ATTACKS>

.Sakotsu Wari                      F + y
.Senpuu Kyaku                      F + b
.Kyuubi Kudaki                     F + z
.Seichuu Nidan Tsuki               B + z
.Tenma Kuujin Kyaku                D + b (while jumping forward)


<SPECIAL MOVES>

.Hadou Ken                         D, DF, F, p
.Shakunetsu Hadou Ken              F, DF, D, DB, B, p
.Shouryuu Ken                      F, D, DF, p
.Tatsumaki Senpuu Kyaku            D, DB, B, k
.Classic Kuuchuu Tatsumaki         D, DB, B, k (air)
.Joudan Sokutou Geri               F, D, DF, k
.Ryusokyaku                        D, DF, F, k
.Denjin Renki                      D, D, p
.Ashura Senkuu Zenpou              F, D, DF, ppp or kkk
.Ashura Senkuu Kouhou              B, D, DB, ppp or kkk
.Hadou no Kamae                    D, DF, F, s


<LEVEL 1 SUPER COMBOS>

.Shinkuu Hadou Ken                 D, DF, F, D, DF, F, p
.Shinkuu Tatsumaki Senpuu Kyaku    D, DB, B, D, DB, B, k
.Denjin Hadou Ken                  D, DB, B, D, DB, B, p (Hold) (Rotate joystick to charge faster)
.Reppuu Jinrai Shou                D, DF, F, D, DF, F, k


<LEVEL 2 SUPER COMBOS>

.Kaze no Ken                       D, D, D, pp
.Metsu Shoryuu ken                 D, DF, F, D, DF, F, pp


<LEVEL 3 SUPER COMBOS>

.Shin Shoryuu Ken                  D, DF, F, D, DF, F, kk
.Metsu Hadou Ken                   D, DB, B, D, DB, B, pp (Hold)
    .Ryuu Koku Hadou Ken           Fully charge Metsu Hadou Ken
.Shun Goku Satsu                   x, x, F, a, z


<SYSTEM>

.Forward Dash                      F, F
.Run                               F, F (hold)
.Back Dash                         B, B
.Sidestep                          a + x
   .Sidestep Attack                p / k
.Forward Roll                      F + a + x
.Back Roll                         B + a + x
.Parry High                        (tap) F
.Parry Low                         (tap) D
.Air Parry                         (tap) F (air)
.Power Charge                      b + y (hold)
.Custom Combo                      c + z (air also) (2 power bars)
.Guard Cancel High                 F + pp (during guard) (1 power bar)
.Guard Cancel Low                  F + kk (during guard) (1 power bar)
.Fall Recovery                     p / k (while falling from a hit)
.Low Jump                          U (tap)
.High Jump                         D, U
.Taunt                             s



==========< MOVE DETAILS >==========

 - Sakotsu Wari is an overhead

 - Senpuu Kyaku can be cancelled into EX Tatsumaki Senpuu Kyaku

 - Tenma Kuujin Kyaku must be performed at the apex of a forward jump

 - EX version of Joudan Sokutou Geri will make the opponent bounce off the wall

 - Master Ryu's strong version of Joudan Sokutou Geri will make the opponent bounce off the wall on a counter hit

 - Denjin Renki powers up the next regular Hadouken or makes Denjin Hadouken start from the second level of charge

 - Denjin Hadouken causes Guard Crush when fully charged

 - Kaze no Ken is a counter attack, unless you cancel into it from another super move, in which case it's a grab



==========< GAMEPLAY NOTES >==========

COMBO SYSTEM
 - Some Normal attacks can be canceled into any Special and Super moves
 - Some Special moves can be canceled into any Super moves
 - Some Super moves can be canceled into different Super moves
 - Cancelling a Special, Super or Custom Combo into a Super move resets the juggle points
 - Master Ryu can chain normal attacks in this order: X, A, Y, B, Z, C


DAMAGE SCALING
 - The damage your attacks inflict goes down with each attack in a combo
 - The first attack deals 100% damage
 - Successive attacks deal 10% less damage
 - Super cancelling a special advances 2 steps in the damage scaling
 - Super cancelling a super advances 3 steps in the damage scaling
 - Super Combo damage will not fall below 30% for Level 1, 40% for Level 2 and 50% for Level 3
 - Damage during Custom Combo scales according to the damage already dealt to the opponent
 - Normal attacks deal more damage on their own than during a Chain Combo
 - The amount of power gained during a combo is also affected by damage scaling


THROWS
 - Throws cannot be blocked but can be jumped out of
 - The opponent can escape a normal throw by inputting a throw of their own just as they are grabbed
 - Normally throws can only be escaped if the opponent was in a position where they could also attempt to throw


COUNTER HITS
 - If the opponent is in the middle of attacking, your attacks deal 20% extra damage
 - Most attacks cause extra hit stun as well, allowing links that are normally not possible
 - You'll know a counter hit happened when a round shockwave effect appears at the point of impact


KNOCKDOWNS
 - This character uses 3 types of knockdowns: Soft, Medium and Hard
 - Soft knockdowns allow the enemy to use fall recovery or fast recovery (mash buttons to get up)
 - Medium knockdowns allow only fast recovery
 - Hard knockdowns allow neither. The enemy will always get up with the same timing
 - Hard knockdowns are signalled by a lifebar message (if the lifebars allow it)


FORWARD DASH
 - Moves you forward faster than walking, but you can't interrupt it
 - Useful for sneaking up on the opponent


RUN
 - Can be interrupted unlike dashes


BACK DASH
 - Creates some space between you and the opponent
 - Considered airborne, so it avoids most throws and standing combos


LOW JUMP
 - Useful for quick jumping attacks that must be blocked high
 - Cannot use special and super moves while low jumping
 - Delay after attacking is longer than other jumps


HIGH JUMP
 - Useful for quickly closing distance
 - If the opponent is in the corner, this allows you to cross them up


LONG LOW JUMP
 - A cross between Low and High jumps


SIDESTEP
 - Avoids all attacks and fireballs
 - Vulnerable to throws
 - Instant recovery


SIDESTEP ATTACK
 - Allows you to counterattack after dodging
 - Between the punch and kick options, one can be cancelled into special and super moves, and the other knocks down


ROLL
 - Avoids all attacks and fireballs while moving
 - Vulnerable to throws
 - Can be hit by anything at the end of the animation
 - Forward version is a bit faster than the back version


PARRY
 - Allows you to bypass block stun, leaving the opponent open for a counterattack
 - To parry high attacks tap forward just before being hit. To parry low attacks tap down. While jumping only forward works


POWER CHARGE
 - Manually charges the power meter
 - Rate of charge is slow at first, but increases the longer you hold it


GUARD CANCEL
 - While guarding, this cancels out of the guarding pose with a counterattack
 - Subtracts 300 points from the guard bar (if guard break is enabled)
 - Cannot be used to finish off the opponent
 - Useful to relieve pressure


CUSTOM COMBO
 - Removes most cancellable attack restrictions and gives you a lot of freedom to perform combos
 - Juggle limits are temporarily disabled
 - You can only use EX Special or Super moves from the point the character starts flashing faster and brighter, and doing so ends Custom Combo
 - Gives you a short invulnerability window at the start


FALL RECOVERY
 - Allows you to land on your feet after being knocked down



==========< OTHER INFO >==========

<Selecting the win pose>
(Speech translations by Kibagami)

Normal/Master Ryu:
X or A -> Ryu raises his arm and says "Ore no kachi da!" ("Victory is mine!").
Y      -> Ryu crosses his arms and asks the opponent if he still feels like standing up.
B      -> Ryu crosses his arms silently as a leaf blows away in the wind
C or Z -> Ryu practices his Hadouken stance one more time.

Evil Ryu:
X, Y or Z -> Ryu turns his back and says "Shin no tsu, tometekureru!" ("I will stop your
heartbeat!").
A, B or C -> Ryu stomps the ground and says "Zetsu!" ("Death!").


<Extra win poses>

Normal Ryu:
Win by Shin Shoryuken -> Ryu turns his back on the opponent.

Evil Ryu:
Win by Ryuu Koku Hadou Ken -> Ryu falls on his knees, exhausted.
Win by Shun Goku Satsu -> Ryu has his back turned, breathing heavily, saying "Ware, Kobushi
kiwame tari..." ("I mastered my fist...") while the Metsu kanji is displayed in the background.

Master mode has all of the above.



==========< MOVE NAME TRANSLATIONS >==========

 - Most of these are by Chris McDonald

Seoi Nage                          Over-the-Shoulder Throw
Tomoe Nage                         Overhead Judo Throw
Sakotsu Wari                       Collarbone Splitter
Kyuubi Kudaki                      Solarplexus Smasher
Seichuu Nidan Tsuki                Mid-Level Two-Part Thrust
Senpuu Kyaku                       Whirlwind Kick
Tenma Kuujin Kyaku                 Demonic Air Blade Kick

Hadou Ken                          Surge Fist
Shakunetsu Hadou Ken               Scorching Heat Surge Fist
Shouryuu Ken                       Rising Dragon Fist
Tatsumaki Senpuu Kyaku             Tornado Whirlwind Kick
Kuuchuu Tatsumaki Senpuu Kyaku     Mid-air Tornado Whirlwind Kick
Joudan Sokutou Geri                Upward Blade Kick
Ashura Senkuu Zenpou               (demonic warrior) Forward Air Flash
Ashura Senkuu Kouhou               (demonic warrior) Backward Air Flash

Shinkuu Hadou Ken                  Vacuum Surge Fist
Denjin Hadou Ken                   Electric Blade Surge Fist
Shinkuu Tatsumaki Senpuu Kyaku     Vacuum Tornado Whirlwind Kick
Nidan Shouryuu Tsuki               Two-Part Rising Dragon Thrust
Messatsu Gou Shouryuu              Great Rising Dragon Deadly Attack
Denjin Rengeki                     Electric Blade Combination Attack

Reppuu Jinrai Shou                 Gale Thunderclap Palm
Metsu Shoryuken                    Rising Dragon Fist of Destruction

Metsu Hadou Ken                    Surge Fist of Destruction
Ryuu Koku Hadou Ken                Dragon Cutting Surge Fist
Shin Shoryuu Ken                   True Rising Dragon Fist
Shun Goku Satsu                    Instant Hell Murder



==========< VERSION HISTORY >==========

<13.09.2025>
 - Ikemen GO compatibility update

<22.02.2025>
 - Minor fixes
 - Compatibility update for latest Ikemen version
 - Changed Evil Ryu's punch Guard Cancel

<23.11.2024>
 - Compatibility update for latest Ikemen version
 - Added a new jumping hard kick animation by Sabockee
 - Completed and added new far standing medium kick animation

<27.09.2024>
 - Minor bug fixes and adjustments for latest Ikemen version
 - Added Metsu kanji on Evil Ryu's back in the Shun Goku Satsu win pose
 - Restored the ability to perform EX and super moves at the the end of Custom Combo
 - Counter hit bonus system is now more accurate, but does not happen when trading hits
 - Implemented "medium" knockdowns where the enemy cannot safe fall but can vary their wakeup timing
 - Replaced Nidan Shoryu Tsuki with Denjin Rengeki
 - Light hits will now also cause the collapse KO animation
 - Removed neutral jumping medium punch

<22.04.2024>
 - Bug fixing
 - Displayed name and portrait now vary according to the selected mode
 - Power Charge now has a significant recovery time
 - Adjusted Power Charge charging rate
 - Adjusted throws so that punch throws the opponent forward and kick throws them back
 - Shinku Tatsumaki no longer varies its range with the button used
 - Counter hit advantage on command normals now applies to both hits
 - Special moves now also give +2 frame advantage on a counter hit
 - Hard knockdowns are now signaled with lifebar messages
 - Added some wind effects to several specials
 - Adjusted punch throw timing and physics
 - Nidan Shoryu Tsuki now does 4 hits instead of 5
 - Adjusted Kyubi Kudaki. Has less pushback but can no longer be cancelled on hit
 - Adjusted Ashura Senku to be more different from Gouki's
 - Changed Ashura Senku visual effects
 - Denjin Renki buff is no longer lost when Ryu is knocked down
 - The AI should now guard more like a human player
 - Hitsparks no longer rely on helpers, for better performance
 - Can now also select "Nakoruru type" hit sparks in the config file

<05.10.2023>
 - Meter gain is now affected by damage scaling
 - The timing to cancel fireballs is now more specific
 - Changed Joudan Sokutou Geri input for Master mode
 - Implemented maximum damage scaling for supers
 - Lowered punch throw frame advantage
 - Evil Ryu's tatsumaki now spins as many times as regular Ryu's
 - The more hits Evil Ryu's tatsumaki does the lower it will launch
 - Redistributed Metsu Hadouken damage and stun
 - Lowered Denjin Hadouken bonus while in Denjin Renki status
 - Adjusted Joudan Sokutou Geri animation timing
 - Increased the chances that an AI enemy will tech out of throws
 - Kaze no Ken's super pause now only triggers upon a successful counter
 - Kaze no Ken now only work if the opponent is in front of Ryu
 - Kaze no Ken damage lowered
 - Crouching friction constant reverted to Mugen standard

<30.07.2023>
 - Bug fixing
 - Minor updates to keep up with the engine
 - Air resets don't hit the opponent as far back as before
 - The opponent must now be standing to be allowed to tech throws
 - The zoom during win poses can be disabled in the configuration file
 - The PalFX now match each palette's effect colors
 - Adjusted diagonal get hit animation
 - Revised super pause times
 - Metsu Hadouken must be blocked before the super pause
 - The first hit of angled jumping medium punch is now cancellable and resets juggling
 - Evil Ryu's target combo can be done from far medium punch
 - Evil Ryu's target combo extended to three hits
 - Lowered Tatsumaki's guard bar damage
 - Changed Custom Combo damage scaling
 - Removed the ability to perform EX and super moves at the end of Custom Combo
 - EX Shakunetsu Hadouken startup reduced
 - Negative edge is now disabled by default

<19.03.2023>
 - Bug fixing
 - Updated some codes with new engine features
 - Increased input leniency for tiger knee motions
 - Updated the parry code so that it can parry fireballs (helper type) without pausing the other players
 - Adjusted stun behavior when the option is disabled in Ikemen's settings
 - Guard Cancel now deducts 300 guard points
 - The AI will now mostly halt if the inputs are disabled by AssertSpecial (Ikemen compatibility update)
 - Rewrote the input parser code in the new ZSS language for improved performance
 - Partner attacks no longer increase your own juggle points, for consistency with other characters
 - Taunting now builds the opponent's meter
 - Increased leniency on double tap inputs, such as dashes
 - Guard cancel pauses the opponent a shorter time, so that it is easier to bait
 - Changed voice acting to Street Fighter 4 (mostly)
 - Recycled a new win pose for Evil Ryu
 - Replaced the energy effect in Kaze no Ken
 - Lowered Messatsu Goshoryu hitpauses
 - Metsu Shoryuken tweaked a little. Now brings the opponent to their knees instead of using the dizzy animation
 - Adjusted Shin Shoryuken target binding so that it consistently hits the stomach and jaw
 - The hurt voices can now play during custom states as well
 - Added Hell Dunk custom animation (not that anyone else uses it)
 - The special win pose against Ken now works against more versions of the character
 - The AI can now adapt to blocking some standing low attacks
 - The character now says something when tagging in
 - Block stun reduced by 2 frames for most attacks
 - Dashes are more accurate to CvS2
 - Slightly adjusted the jump arc
 - Hard knockdowns now force the opponent to stay down for a specific length of time
 - Reppu Jinrai Sho nerfed a little
 - Fixed the diagonal get hit animation so that the going up and coming down parts are separate animations
 - Evil (and Master) Ryu dash velocity increased
 - The hitsound channel is now mostly handled by a new engine feature instead of workarounds
 - Adjusted the kick throw so that P2 no longer uses a weird offset
 - Most intros now respect the lifebar's waiting time
 - Changed the EX Shakunetsu Hadouken explosion graphics
 - Adjusted corner crossups so that they're less ambiguous
 - Jodan Nirengeki now resets the juggle points
 - Missed normal throws have more recovery on hit
<04.11.2022>
 - Bug fixing
 - A.I. adjustments
 - Close normal attacks and neutral jumping attacks now have their own state numbers
 - Added Jodan Nirengeki target combo
 - Removed B, C target combo
 - Victory music can now be switched on or off in the configuration file
 - Restored the ability to walk immediately after crouching
 - Edited a new frame for knockdown get hits
 - Adjusted some dragon punch physics
 - Shoryuken now uses an earlier velocity rather that position increase
 - Reshaded the bag sprites a bit

<11.09.2022>
 - Bug fixing
 - Added Denjin Renki
 - Remade the SF3 taunt animation and repurposed it as Denjin Renki
 - Adjusted distances from which proximity normals are activated
 - Tatsumaki horizontal speed varies with each button
 - Super cancel window shortened for fireballs
 - Added an experimental victory BGM
 - Close hard kick can now be cancelled into special moves
 - New target combo for normal Ryu: close medium kick into hard kick
 - Adjusted super combo startup invulnerability
 - Kikoku Tsuki can be super cancelled
 - Made air Tatsumaki physics more like SFA
 - Master Ryu's classic air Tatsumaki no longer has corner restrictions
 - Custom Combo damage scaling changed so that they do more damage at the beginning and are less likely to do too much
 - The camera now follows the character for the win poses
 - The crossing arms win poses was divided in two: Ryu either taunts the opponent or a leaf passes by, but never both
 - Adjusted Shun Goku Satsu win screen for widescreen
 - Senpukyaku hops lower to the ground, like in SFA
 - Adjusted EX Air Tatsumaki physics
 - Mixed a new fire hit sound
 - Removed Evil Ryu's preload SFF since it causes issues with screenpacks that use character animations
 - Added EX version of Shakunetsu Hadouken
 - The character now flashes white to signal a super cancel
 - Updated Shinkuu Tatsumaki Senpukyaku vacuum code with Ikemen GO features. It now pulls every player towards Ryu
 - Evil and Master Ryu's air Tatsumaki juggle potential increased

<03.07.2022>
 - Bug fixing
 - Joudan Sokutou Geri juggle potential increased
 - Adjusted some air hit velocities to fit better in Ikemen GO

<25.06.2022>
 - Bug fixing
 - Removed minimum damage threshold. Attacks can now do less than 7 points of damage
 - Changed chip damage calculation. It is now 25% of regular damage
 - Reduced the damage supers do to the opponent's guard bar
 - Evil Ryu once again walks faster than Ryu (consequently applies to Master Ryu) 

<12.06.2022>
 - Now exclusively compatible with Ikemen GO
 - Added Ikemen DEF and CNS parameters
 - Replaced the old movelist with Ikemen GO's movelist
 - Removed the custom dizzy system and improved compatibility with Ikemen GO's dizzy system
 - Disabled redizzy combos (until Ikemen fixes this)
 - Adjusted tag in and tag out animations
 - Added a temporary fix to Explod position randomization
 - Hit sparks and super pause effects can be configured separately
 - Several pieces of code adapted to Ikemen's features
 - Disabled stun damage during Custom Combo
 - Added a new, custom input buffer to better accomodate Ikemen's inputs
 - Denjin and Metsu Hadouken will use the common dizzy mechanics if they are enabled
 - Denjin and Metsu Hadouken will still stun if that game option is disabled
 - Denjin Hadouken will use the common guard break mechanics if they are enabled
 - Denjin Hadouken will still guard crush if that game option is disabled
 - Defense code for Evil and Master modes updated with Ikemen features
 - Maximum stun points for Evil and Master Ryu lowered accordingly
 - Ryukoku Hadoken now causes immediate guard break instead of being flat out unblockable
 - Damage scaling is now similar to modern Street Fighter games

<11.06.2022>
 - Bug fixing
 - Target and chain combos can be executed even if the first attack is parried
 - Adjusted throw escape behaviour
 - Reintroduced some input shortcuts

<14.05.2022>
 - Bug fixing
 - EX Ryusokyaku now has improved frame data instead of knocking down
 - Added attack names to the super finish screen
 - Parry window and cooldown increased slightly
 - Consecutive standing parries now move the player slightly back
 - Adjusted the way Parry pauses work
 - Parrying no longer builds extra meter
 - Restored and adjusted the "Shakunetsu!" voice clip
 - Trading fireballs no longer buils meter
 - Updated ground impact effect
 - Maximum damage scaling level corrected to 500. It is also more sensitive to increasing damage
 - Realigned Ryusokyaku sprites
 - Normal Ryu's Hadouken is slightly more damaging than Evil Ryu's
 - Kyuubi Kudaki recovers 1 frame faster

<30.04.2022>
 - Bug fixing
 - Adjusted hurt boxes in air get hit animations
 - Removed dragon punch motion shortcuts for better Ikemen compatibility
 - Retired what was left of the "tick fix" code
 - Evil Ryu's Tatsumaki juggling potential depends on the button used
 - Denjin Hadouken charges and travels slightly faster
 - Detection of double quarter circle motions is more lenient
 - Improved "variable height" code. Crossups should be a bit more consistent
 - Adjusted input for high jumps. Should no longer happen on accident and also work better in Ikemen
 - Removed some input shortcuts for better Ikemen compatibility
 - Removed fireball invulnerability from the jumping part of Shoryuken

<02.04.2022>
 - Bug fixing
 - Can cancel attacks even if they are parried or reversed
 - Air resets changed to modern style in that the opponent becomes immediately invulnerable instead of being jugglable on the way up
 - Adjusted hit envshake effects
 - Tweaked fireball hit sounds
 - Neutral jumping medium punch and hard kick can be cancelled
 - Improved compatibility with Ikemen screenpacks
 - Fake Hadouken has less recovery than the real thing
 - Jumping Clsn2 are a bit thinner
 - Fixed darkest shades in the default Evil Ryu palette
 - No longer uses ryucustom.st
 - Restored a dust effect I had accidentally removed
 - Buffed super damage
 - Added fall recovery effect and sound
 - Fixed Metsu Hadouken beam turning automatically if the opponent jumps over Ryu
 - Added a configuration file
 - Adjusted super pause sounds
 - Fiery hadoukens now trigger the burned special animation on the opponent if he has one
 - Recalculated juggling acceleration
 - Attacks do more damage after a sweep or OTG, in order to bypass Mugen's defense bonus

<05.03.2022>
 - Bug fixing
 - Juggle points are reset after Metsu Shoryuken
 - Changed air reset handling. Should cause less issues now and make meaty attacks more useful
 - Changed normal attack state numbers to Elecbyte's recommendation
 - Stun damage is now set individually for each attack instead of using a formula
 - Roll is more accurate
 - Readded back roll
 - Added electricity particle effects to Denjin Hadouken
 - Fixed Evil and Master Ryu receiving a little damage from parries

<26.02.2022>
 - Shinkuu Tatsumaki does one less hit to match the change to EX Tatsumaki
 - Added high resolution hit sparks
 - Improved Messatsu Gou Shoryuu's hit velocities for juggling
 - Reppu Jinrai Shou moves forward at the start
 - Animated Kaze no Ken a bit more
 - After Kaze no Ken, the opponent stays on the floor for a much shorter time
 - Several frame data adjustments
 - Changed ground bounce constants and lie down time
 - Added an override to Mugen's lie down state. Can no longer mash buttons to wake up faster, but can only be OTG'd once
 - EX Shoryuken only does 2 hits in Normal mode, for consistency with official games
 - Kyuubi Kudaki can be cancelled again
 - Master Ryu can cancel crouching hard kick
 - Lowered walk speed
 - Stun lasts 2 seconds instead of 3
 - Added 5 frames of input buffering
 - Motion inputs are more forgiving
 - Adjusted Shoryuken physics
 - Ryu's Shinkuu Hadouken has the same (better) hit properties as Evil Ryu's

<22.01.2022>
 - EX Tatsumakis now do 5 hits
 - Kaze no Ken no longer counters jumping attacks and is a bit more punishable
 - Tweaked punch throw so the opponent can't recover before Ryu by mashing buttons
 - Fixed the A.I. being able to use moves that were removed from specific modes
 - Fixed Turns intro gaining control sooner than supposed to
 - Fixed cancel timings
 - Lowered the stun damage formula
 - Worsened damage scaling in Master Ryu's chain combos
 - Evil Ryu regained Ryu's jumping medium punch
 - Resized hit sparks to 80%
 - EX Joudan will generally only wall bounce once per combo
 - Can cancel jumping light attacks
 - Tweaked Kyuubi Kudaki so that you can do forward moving kara cancels with it
 - Expanded the tying headband intro as in JMorphman's patch
 - Added (recycled) a new win pose to Normal/Master mode
 - Special inputs are more strict
 - Zero Counter input is more lenient

<15.01.2022>
 - Many gameplay fixes and adjustments
 - Updated some sounds and visual effects
 - Can no longer cancel some normal attacks
 - Changed Custom Combos. They now cost two power levels, last longer and have normal hitpauses
 - Can now crossup in the corner with high jumps and some specific special moves
 - Inputs now reverse when the opponent is behind the player like they're supposed to
 - Changed the damage scaling to be affected by the total damage in a combo rather than number of hits
 - Implemented a true juggle point system
 - Implemented a stun system
 - Added long low jump (hyper hop)
 - Added movelist display. Press Start twice
 - Remade Zero counters
 - Added SFZ3 intro for Ryu vs Evil Ryu
 - Some supers have different range or speed depending on the button used
 - In Master Mode, strong Joudan Sokutou Geri will cause wall bounce on counter hit
 - Special intros also occur with Evil Ryu versus Master Ryu
 - Can now cancel fireball supers into each other
 - Metsu Hadouken's charge time can no longer be sped up
 - Punch throw now always uses the slamming to ground version
 - Metsu Hadouken is no longer unblockable. The beam still is
 - Senpuu Kyaku can be cancelled into EX Tatsumaki Senpuu Kyaku
 - Normal Ryu lost Seichuu Nidan Tsuki
 - Added some special intros and win poses from JMorphman's patch. Mostly against his Ken
 - Shun Goku Satsu does fixed damage and cannot be escaped
 - Replaced Reppu Jinrai Shou with Kaze no Ken for Normal Ryu
 - Reppu Jinrai Shou is now a Level 1 Super and exclusive to Master Ryu
 - Evil Ryu now has Ryusokyaku instead of Joudan
 - Changed a few commands around so they're more consistent between different modes
 - "Classic" air Tatsumaki is now exclusive to Master mode and can hit multiple times
 - Jump arc is lower
 - Evil Ryu can now use EX specials as well
 - Master Ryu still cannot use EX specials, but instead can now use Darkstalkers chain combos
 - Evil Ryu's Shakunetsu Hadouken now works like Gouki's, as in modern games
 - Denjin Hadouken can be blocked, but now causes Guard Crush at maximum charge
 - Remade the color palettes
 - Remade the collision boxes
 - And more

<14.01.2010>
 - For Mugen 1.0 now
 - Cancel timing is more strict
 - Opponent can't normally air recover out of combos
 - Made Shinkuu Hadouken's startup faster and recovery longer. It will now connect from a
  cancelled Shoryuken
 - Fixed an earlier mistake that made Master Ryu's Tatsumaki behave incorrectly
 - Can cancel the sweep again, and Evil/Master modes can juggle a bit from it
 - Revised Shoryuken hit velocities
 - Zero Counters cost two levels of power and are done with a dragon punch motion

<27.03.09>
 - Some fixes

<14.12.08>
 - Some more general system fixes
 - Opponent can now Tech Hit throws
 - Applied SF4's command shortcuts to Shun Goku Satsu

<v.2.7>
 - Master Ryu now also has the special intro with my Shin Gouki

<v.2.6>
 - Normal Ryu's Tatsumaki Senpuu Kyaku can no longer be stopped by several chars with a single
  parry, but rather one per hit
 - Normal Ryu's Tatsumaki Senpuu Kyaku can now hit multiple times during Original Combo
 - Evil Ryu can now juggle after Shinkuu Hadouken in the corner, if you're quick enough
 - Evil Ryu can no longer jump higher, made him too floaty
 - New Metsu Shoryuuken SFX
 - Denjin Hadouken no longer knocks down
 - Cleaned up the Joudan Sokutou Geri sprite edits a bit
 - Denjin Hadouken charges faster for lower levels
 - Improved timing on some of his normal attacks
 - Jumping medium punch now sets the opponent for a juggle, but only Normal and Master Ryu have it
 - Nidan Shouryuu Tsuki -> Shin Shoryuken is now done with the latter's command
 - Walks a bit faster, but as such Evil/Master modes no longer get a speed boost
 - Default palette is now SF2, plus added a SF4 palette
 - Metsu Shoryuuken now does less damage, due to its corner juggle advantages
 - Reppuu Jinrai Shou no longer automatically finishes with a Shoryuken, instead now lets you
  juggle after it
 - Because of the more polished cancelling and juggling, Shin Shoryuken can no longer juggle
  (unless Super Canceled into)
 - Defense levels now work correctly on single hits, or first hit of a combo
 - The half circle version of Kuuchuu Tatsumaki Senpuu Kyaku now behaves like CvS2, sillier
  but more useful

<v.2.5>
 - Can no longer Super Cancel Denjin Hadouken
 - Master mode now has an uber stance
 - Master mode now always uses Boufuu Tatsumaki Senpuu Kyaku
 - Master mode defence decreased
 - Metsu Shoryuken is now a Level 2 Super move
 - Ashura Senkuu now has invulnerable startup

<v.2.4>
 - A lot of tweaking and bug fixes
 - Rearranged the palettes (Master Ryu now uses the SF1 palette \o/)
 - Can't remember the rest =P

<v.2.2>
 - Mostly fixes and tweaked stuff
 - Added super portrait for Lv3 Supers
 - Shun Goku Satsu now deals 55% damage to normal opponents and 75% to evil characters (see
Other Info), no matter how much life and defence they have >=)
 - Shun Goku Satsu can now be canceled from Ashura Senkuu
 - Rugal can no longer evade Shun Goku Satsu, and now takes extra damage from it. God Rugal
remains the same though
 - Added Flattened special anim
 - Added special intro vs Byakko's CvS2 Ryo
 - Added special intro vs my Sakura
 - Hadouken and Shinkuu Hadouken now have high resolution
 - Standing attacks that aim low can no longer be air-blocked 
 - Stricter timing on the Nidan Shoryuu Tsuki to Shin Shoryuu Ken cancel
 - Slightly increased Shouryuu Ken's range, for smoother cancels
 - Shin Shouryuu Ken now hits jumping opponents correctly

<v.2.0>
 - Made the char exclusive to Linux and Windows Mugen
 - Fixed most bugs
 - Either tweaked or remade everything
 - Axis is now the same as in CvS2
 - More differences between each mode
 - Super moves now only have one level of strength but, in exchange for it, better combos are now possible
 - Changed the throw system to SFZ3
 - Normal attacks can now be cancelled into the taunt
 - Shun Goku Satsu now behaves like with my Shin Gouki
 - Added some moves
 - Added Power Charge
 - Implemented a Damage Reduction system
 - Replaced some voice samples with CFE ones
 - Tweaked and added some fx
 - Added CvS2 sparks
 - New flaming Shun Goku Satsu win screen
 - Added intro vs my Shin Gouki
 - Added intro vs Byakko's CvS2 Another Kyo
 - Lots more



==========< WHAT'S MISSING >==========

 - Bug fixing



==========< SPECIAL THANKS >==========

 - VirtuallTek, for the various versions of Fighter Factory
 - JustNoPoint, for always helping me when I needed. Thanks man ;)
 - mwryly, for the Ryusokyaku animation, which I touched up a bit
 - mwryly and Odb718, for the Street Fighter V hard kick animation, which I also touched up just a little
 - VioFitz, for making the Ken interaction animations, and JMorphman for coding them
 - Sabockee, for the diagonal jumping hard kick animation, which I touched up just a little
 - VioFitz, for converting Ken's standing fierce animation for Ryu
 - TMasta, for the "adjusting gloves" animation
 - TMasta, for adding extra animation to the clothes on the "holding bandana" intro and Joudan Sokutou Geri
 - Hoshi, Loverman and JustNoPoint, for CvS2 rips
 - H" and Warusaki3 for some CvS2 effects
 - Mysticus, Zirothos and JacintaB19 for the modern voice rips
 - Byakko, for his tips on how to rip from PSX
 - Ex Inferis, for his tutorial on how to rip from Melty Blood
 - IxnayDK and Synk for their tips when I was just starting
 - Buckethead, for the old MvC palette
 - Winane, for the old A.I. activation code
 - Everyone who supported my work on this character. Receiving such support even though there were already so many Ryu conversions for Mugen was nice
 - You, for downloading my char ;)
 - Everyone who provided feedback:
   - Arthur
   - Bakudan
   - Byakko
   - Cybaster
   - DivineWolf
   - Fuze
   - Garuda
   - jay_ts
   - KOFHERO77
   - Loona
   - Lurker
   - megaman_zer0
   - O Ilusionista
   - Panda
   - RagingRowen
   - Sennou-Room
   - Soliduma
   - Toninho 3rd
   - toukachan6035
   - Trololo
   - TTTTTsd
   - Winane
   - xerf84
   - Zazamyon2


==========< DISCLAIMER >==========

 - Ryu, Evil Ryu, Street Fighter, and so on are property of Capcom
 - This character is a non-profit fan work. It cannot be sold or used for any commercial purposes
 - No part of this work may be used for personal profit, be it commissions, paywalls and the likes of it
