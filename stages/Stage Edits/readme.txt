

What is this?
=============

This is a Mugen stage edit that converts it to a wide-screen aspect.
The edit itself is made by Kasasagi (⁂ https://tilde.town/~kasasagi/).

Check the .def files for the original creator and the original stage info.

Other such edits and updated versions of this edit can be downloaded
from here: ⁂ https://drive.proton.me/urls/PDERG8YN00#RwM3MVN730fv


What engines is this edit intended for?
---------------------------------------

The edited stages are made for Mugen 1.1 and/or Ikemen Go engines.

The required Mugen version is **strictly** Mugen 1.1, because the
stage edits use zoom to implement the wide-screen conversion.

The required Ikemen Go version is **newer** than 0.99, e.g. Nightly,
because Ikemen Go 0.99 and older is highly incompatible with Mugen,
when it comes to low and high camera bounds of the stages.

To download Ikemen Go Nightly, go here:
⁂ https://github.com/ikemen-engine/Ikemen-GO/releases/tag/nightly

Some (but **not all**) of these edits are available for Ikemen Go 0.99
and possibly older Ikemen versions, if you really need them:
⁂ https://drive.proton.me/urls/5WFX1RTQVM#8txeFDYlJxkG

Some of the 4:3 stage variants may also work well in Mugen 1.0 as
they do not use zoom. You may want to use them for the additional,
not wide-screen related edits. That said, any compatibility with
Mugen 1.0 is accidental and neither actively supported nor tested,
so there are no guarantees whatsoever regarding this use case.



What kind of edit is this?
==========================

This edit converts the original stage from the original 4:3 or other
game-specific aspect ratio, to a 16:9 wide-screen (e.g. 1080p/FHD or 4K)
aspect, for full display with 16:9 screen packs and/or wide-screen monitors.

This makes the stage playable in generic wide-screen Mugen installations.

Some additional changes and edits might have also been applied to the stage.
If so, they will be listed in a separate section at the bottom of this file.


Why are there several *.def files included?
-------------------------------------------

Several stage variants can be included in the release in different
'*.def' files, for example:

1) '*-wide.def', the main 16:9 wide-screen variant;

2) '*-zoom.def', a 16:9 wide-screen variant, but with a zooming camera;
   this variant is **optional**, i.e. some of the edits are released with
   the zooming camera variant and some are released without it,

3) '*-4_by_3.def', a 4:3 aspect-ratio variant; this is usually the
   base stage; it can also have some additional edits applied,

4) '*-cps.def', a CPS aspect-corrected variant;
   these variants are aspect-corrected for the resolution and
   screen/pixel shape of the original CPS arcade hardware, i.e.
   224p, 7:9 non-square pixels; these variants are **optional**.


Per-engine variants can also be included in the rare cases that the
current Ikemen Go is incompatible with Mugen 1.1 or if the stage uses
some new Ikemen features that happen to be inherently incompatible
with Mugen 1.1. These variant will be named:

1) '*-mugen.def', the Mugen 1.1 specific variant,

2) '*-ikemen.def', the Ikemen Go specific variant.



What else is available?
=======================

All of the stage edits should also contain multiple stage portraits for the
Ikemen Go engine. Please note however, that these will **only** be visible
in screenpacks that were made with Ikemen Go in mind and explicitly support
stage portraits. For more information see the Ikemen Go's wiki page:

⁂ https://github.com/ikemen-engine/Ikemen-GO/wiki/Stage-features#stage-portraits


The portraits are meant to contain the whole/full view of the stage, or
close to it, depending on the portrait variant/size. There are 3 sizes
of portraits available:

1) 480x200 - double size, sprite: 9000, 1,

2) 512x240 - custom size, sprite: 9001, 1,

3) 240x100 - standard size (small), not embedded in the *.sff file.

The default portrait is the 480x200 (double) size one.


The stage names have also been revised to be more fitting for stage select.



Where is the music?
===================

The music is not included in this edit release. You need to download
the original release, if the music was included with it or download
the music separately from elsewhere.



What is this about the aspect-corrected variants?
=================================================

Traditional Mugen conversions of classic arcade stages generally
use the 320x240 resolution and assume a 4:3 screen aspect, which
results in 1:1 square pixels. Then the stage is simply converted
from the arcade version in a pixel-for-pixel manner, disregarding
any differences in both the pixel shape and the vertical resolution.

The above approach is a trade-off. The main advantage is that it allows
for a pixel-perfect display (with no scaling artifacts or blur) in
low-to-mid, 4:3 screen resolutions, such as 320x240 or 640x480, which
were the PC standard at the time that Mugen was created.

The main disadvantage of this approach is that the actual image of
the stage can be severely stretched or squashed, in comparison to the
original arcade hardware, which often uses resolutions that are not 4:3,
resulting in non-square pixels.

This problem of the lack of aspect-correction and the resulting
stretching/squashing of the stage image is especially egregious in
the case of the CPS-series arcade hardware (e.g. all of the classic
Street Fighter series games, Darkstalkers series etc), as the original
arcade screen pixels in this case have a severely non-square aspect
of 7:9, i.e. they are tall rectangles.

The optionally included 'cps' stage variants aim to solve this problem.

You can see several examples of the aspect-correction in action here:
⁂ https://images2.imgbox.com/38/9c/GBmOx3L3_o.png


Do non-CPS arcade conversions need aspect-correction too? 
---------------------------------------------------------

It depends on the specific hardware.

At least in the case of the Neo Geo arcades (e.g. game series such as
Fatal Fury, King of Fighters, The Last Blade, Samurai Showdown etc),
the need for aspect-correction is much less pressing, as the pixels
of these machines are almost square (off by 5%). However, it would
still make sense to convert these stages to the original 224p
vertical resolution, if it makes the difference between a working
vertical scrolling/deltas and a total lack thereof.


What is the disadvantage of aspect-correction?
----------------------------------------------

The problem with aspect-correction is that displaying non-square
pixels on a low-to-mid resolution PC screen (which has square pixels),
will introduce either scaling artifacts, scaling blur or both,
depending on the applied scaling method. In other words, the image
displayed on the screen will not be pixel-perfect.

This problem is actually not even limited only to aspect-correction,
as just using a modern 16:9 wide-screen resolution, already results
in non-integer scaling of the old 4:3 PC resolutions (at least in
the vertical dimension) so some scaling artifacts will already
have been introduced in this case.

Moreover, Mugen 1.1 allows for sub-pixel positioning of sprites
and this will also introduce drawing artifacts all by itself.

The above mentioned problems can be mitigated in several ways.

Arcade emulators for example usually have a variety of options that
allow to fine-tune the scaling method and the resulting image quality,
using different filters and shaders. They usually even allow to apply
strict integer scaling, at the cost of displaying a smaller image at
the center of the screen. Such options can be used to find a sweet-spot
between blurriness and drawing/scaling artifacts. Mugen and Ikemen
however currently lack such sophisticated scaling solutions.

Nevertheless, there is also a brute-force approach to reduce scaling
artifacts, and it is to go as high as possible with the screen
resolution, preferably up to 4K for example.



Additional edits
================

Except for the 16:9 conversion, the following additional edits
have been applied to this stage (including the 4:3 variant):

- Exchanged the sky/castle background with the sprite from the
  first Darkstalkers. This means that is is effectively a hybrid
  stage of Darkstalkers 1 and 2 now.

- Slowed down and tweaked the light and candles animations
  to make them less flickery.
  
- Tweaked some of the stage's original parallax inconsistencies,
  e.g. with the stones standing on the parallaxed floor. These
  should a lot less jarring now.
  
- Made some sprite-separations and some sprite tweaks.

- Extended the stage's height a little and added vertical delats.

- Tweaked some other deltas.
