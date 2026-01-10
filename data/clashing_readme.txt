                       ____________________________________________________
======================| Universal Clashing System by Phantom.of.the.Server |=======================
                       ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯       [22.02.2025]

 - Contact: potsmugen@gmail.com
 - Website: https://network.mugenguild.com/pots/
 - If you downloaded this file from anywhere else, it's probably outdated
 
 - Custom gameplay module for Ikemen GO February 2025 build and above
 - For older versions for older engines, try searching my Mediafire folder



=========================================< INTRODUCTION >==========================================

 This module will add attack clashing to every character in your roster.

 When two attacks collide in the same frame, the game will pause and neither character will be hit.



=========================================< INSTALLATION >==========================================

 - Move the contents of the archive into Ikemen GO's "data" folder

 - Inside Ikemen's "save" folder, open the "config.ini" file with a text editor

 - In the "[Common]" section, find or make a new "States" line and add "data/clashing.zss" to it. Example:

    [Common]
    States1 = data/clashing.zss

 - You're all set



============================================< F.A.Q. >=============================================

 Q: Are there any configuration options?
 |
 A: Open the "clashing.zss" file, check the "Configuration" section at the top of the file and change the values to your liking.


 Q: Does this work for characters that already have their own clashing mechanics?
 |
 A: In theory the module should have priority over the characters' own systems.


 Q: I have some characters that clash but then still hit the enemy right after. What's wrong?
 |
 A: Due to the way some characters' attacks are coded, their hits reactivate every frame.
 Currently there's no way around this that's not too invasive for the characters.


 If your question isn't answered here, or for general feedback, drop me an email if you want.



=========================================< KNOWN ISSUES >==========================================

 - Collision detection can be a little off when characters are moving fast, due to how their positions are updated



=======================================< VERSION HISTORY >=========================================

<22.02.2025>
 - If both players are invincible to each other's attacks they will now also clash
 - Improved compatibility with more characters
 - Added a few more config options

<30.11.2024>
 - First release



========================================< WHAT'S MISSING >=========================================

 - More testing
 - Perhaps moving the code inside a helper. It's a little more invasive but makes collision detection more accurate
 - Maybe some options to configure what happens after a clash (regain control, back dash, etc)



========================================< SPECIAL THANKS >=========================================

 - Ikemen and Mugen Fighters Guild Discord channels
