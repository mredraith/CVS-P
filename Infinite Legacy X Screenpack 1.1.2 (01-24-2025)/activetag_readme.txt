                               _____________________________________
==============================| Active Tag by Phantom.of.the.Server |==============================
                               ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯          [06.12.2024]

 - Contact: potsmugen@gmail.com
 - Website: https://network.mugenguild.com/pots/
 - If you downloaded this file from anywhere else, it's probably outdated
 
 - Custom tag system for Ikemen GO November 2024 build and above
 - For older versions for older engines, try searching my Mediafire folder



=========================================< INSTALLATION >==========================================

 - Copy the "activetag.zss" file to Ikemen GO's "data" folder
 - Inside Ikemen's "save" folder, open the "config.json" file with a text editor
 - Find this line:
	"data/tag.zss",
 - Change it to:
	"data/activetag.zss",
 - You're all set



=========================================< INTRODUCTION >==========================================

This tag system is meant to expand the possibilities of the default tag code while being just as simple to use.

The main inspiration for the mechanics was Marvel vs. Capcom: Infinite, but it is not necessarily a Marvel style system.
I tried to make every character benefit from it, even if they don't have air combos or dashing or whatnot.

The reason I looked at that game was because I thought it would be a fun way to implement tagging that would not require editing the immense catalog of Mugen characters,
as in this type of system the whole characters themselves function as assists.

In short, it's meant to be fun. Try it out for yourself.



=======================================< LIST OF CHANGES >=========================================

The main differences when compared to the default tag system are the following:

 - In addition to the normal tag, the players can now also use Active Tag and Counter Tag (see below)
 - Each tag team now utilizes a new "Tag" gauge for some forms of tagging
 - The rounds always start with Player 1 fighting Player 2, instead of with the previously active players
 - When a character is defeated, the next one comes in after a fixed time instead of when the first one hits the ground
 - Characters are invincible while they're jumping in after a partner is defeated
 - Tagging in a character during a combo increases damage scaling
 - The A.I. will now switch to characters that have more remaining health instead of doing it at random
 - The A.I. will also follow some basic rules to use Active Tag and Counter Tag somewhat effectively
 - Some cosmetic changes to intros and win poses so the screen gets less cluttered
 - Red life is useless for the last player in each team, so it is now automatically converted to extra power for them


ACTIVE TAG:

 - Performed by pressing a tag button (D or W) at any time while the character is attacking or idle, but has no control
 - Use it to create your own assists by tagging out while the character performs an attack with a long duration
 - Active Tag adds extra recovery frames to attacks
 - Active Tag is free as long as you only tag in one character that is available for it


COUNTER TAG:

 - Performed by pressing a tag button while being hit to bring in a partner to help
 - The character that tags out may continue being hit, so it's up to the partner to interrupt the combo
 - Cannot be used while the character is being hit by a super
 - The partner entering the screen will have an invincibility bonus
 - Counter Tag consumes the Tag gauge and all recoverable life accumulated by the character that tags out


TAG GAUGE:
 - The Tag gauge fills up as the active player takes damage
 - A character that is hit while tagging out builds no gauge
 - The gauge is full when the team as a whole has received damage equivalent to one character's maximum health
 - Only one gauge level can be stocked at any given time
 - Training mode gives you infinite gauge to practice


OTHER RULES:
 - You can't tag in another character while the previous one is still on screen
 - A character that is tagged out must wait for the current combo to end before tagging back in
 - You can break the previous two rules by spending the Tag gauge, which makes the character flash green


SUMMARY:
 - Press a tag button to tag at virtually any time
 - Under normal circumstances doing so is free
 - If being hit or breaking the combo rules, it costs you the Tag gauge



============================================< F.A.Q. >=============================================

Q: Are there any configuration options?
|
A: Yes, there are. Open the "activetag.zss" file. You will find the "Configuration" section near the the top of the file.



Q: Can flying characters work correctly with this code?
|
A: Yes. Previously it was configurable, but in the current version of the code such characters should be detected automatically.



Q: The Tag gauge is on top of my lifebars. How do I reposition it?
|
A: Check the "Configuration" section at the top of the file. There are several options related to the way the text is displayed.



Q: I don't like the Tag gauge font. How do I change it?
|
A: The Tag gauges use the debug font by default, so that they are compatible with any lifebars from the getgo.
The font can be changed in the "Configureation" section to use other fonts from your lifebars.



Q: In your videos the characters who can't be tagged in have their portraits darkened. How can I add that?
|
A: You have to make the portraits share the characters' palette effects.
I don't have room here for a full explanation, but in Ikemen GO that's achieved with the "pX.face.palfxshare" parameter in the lifebars.



Q: My character looks funny when it's running in and out of the screen. How do I change the animation?
|
A: Open the character's "constants" file, where you can change its life, power, etc, and add this block of text:

[Constants]
AnimTagEnteringScreen = 20
AnimTagLeavingScreen = 20

This makes it use the walking animation instead, which should look acceptable for most characters.
You can also make your own animations for these.



Q: My character can't tag in or out properly. How do I fix it?
|
A: The vast majority of Mugen characters were developped before Ikemen's tag mode existed, so some may not have accounted for some scenarios in their code.
Unfortunately, you would have to manually fix each of these characters.



Q: The character can't always juggle the opponent after tagging in. How come?
|
A: Some characters may still respect their juggle limits even while they are standing by outside the screen. I accept this as normal behavior.



Q: How could the enemy use Counter Tag when I hit him with a super?
|
A: The character author possibly forgot to flag the attack type as a super.



Q: Why doesn't this work exactly like Marvel vs. Capcom: Infinite?
|
A: Because that wasn't really my goal. Accuracy would require every existing character to be edited, which is the opposite of what I wanted.



If your question isn't answered here, or for general feedback, drop me an email if you want.



=========================================< KNOWN ISSUES >==========================================

 - Older AI characters that tag out may continue a scripted combo before finally tagging out, which a human player can't do.
  This is because of the way AI's used to be coded before Mugen 1.0. Some measures were taken to prevent this, but they are not perfect.



=======================================< VERSION HISTORY >=========================================

<06.12.2024>
 - Fixed a bug that could allow partners to move around instead of performing their win poses

<22.11.2024>
 - Replaced deprecated code for the sake of Ikemen GO 1.0 compatibility

<05.10.2024>
 - Updated for Ikemen GO nighly build
 - Adjusted how the camera acts when a point character is defeated
 - Added a config option to make KO characters bounce away outside the screen

<22.09.2024>
 - Minor adjustments
 - A couple more config options
 - Flying characters are now detected automatically. No need for extra configuration steps

<29.06.2024>
 - Bug fixing
 - The one tag per combo limits can now reset even if the partners are not already waiting outside the screen
 - Added a new config parameter regarding which way partners should face when tagging in

<06.06.2024>
 - Minor compatibility improvements
 - Common state and animation numbers are now explicit instead of drawing from Ikemen's common constant file numbers
 - Characters with alternate stances will now use the alternate stance when waiting to tag out

<02.06.2024>
 - The camera is now forced to ignore characters in standby as well as their helpers. Improves compatibility
 - Added a few more config options
 - Added support for flying characters (see F.A.Q.)

<20.04.2024>
 - Bug fixing
 - Partners no longer jump in when a round ends by time over
 - Added a short lag before a character starts recovering red life
 - Added a couple more safeguards

<23.03.2024>
 - Some code optimization
 - Added a few more configuration options, including how fast the Tag gauge fills up
 - The Tag Gauge now hides automatically when the lifebars are hidden
 - Improved the timing for the partners to enter the screen and do their win poses
 - Can now use Counter Tag while guarding a super move

<29.07.2023>
 - Some bug fixing
 - Updated to Ikemen GO 0.99 beta
 - Adjusted tag damage scaling to account for an engine bug that was fixed
 - Added more failsafes for improved compatibility with more characters
 - Tag state numbers now use the same values as the default Ikemen GO configuration
 - Most AI's are now correctly disabled while the character is active switching, thanks to a new engine feature
 - Several adjustments to the directions in which characters tag in and out, to make it less confusing
 - The lifebar messages now mention which type of tag was used
 - The last remaining character on each team now receives extra meter in exchange of red life
 - The camera now stops following the enemy after KO even if they are not using Tag mode
 - Fixed an issue that prevented tagging during hitpauses
 - Characters now have extra throw invincibility when jumping in after losing a partner
 - That same jump in now varies a little in timing

<14.01.2023>
 - Added a failsafe so that characters may still tag out even if they lack the required running/dashing animation

<20.12.2022>
 - Some small adjustments so that characters using Shiyo Kakuge's Mugen tag system will behave properly

<11.12.2022>
 - Improved compatibility for characters that have helpers following them around, such as Nakoruru
 - A character who is knocked back to the ground while tagging out will stand up immediately

<02.12.2022>
 - First release



========================================< WHAT'S MISSING >=========================================

 - Nothing at the moment



========================================< SPECIAL THANKS >=========================================

 - K4thos, for the original Ikemen GO tag code on which I based this one
 - Frank_W, .JSON, Pedro Andrade, SlopeKing and xerf84, for feedback and bug reports
 - The Ikemen GO developers in general, for giving us new toys to play with
 - The Mugen Fighters Guild Discord for random feedback
