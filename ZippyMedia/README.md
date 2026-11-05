# ZippyMedia

Small addon that includes everything needed for Zippy's UI: the dragon textures of [Zippy's Dragon Overlay](https://github.com/chriskalv/foreverauras/tree/main/auras/zippys-dragon-overlay), the fonts and the sounds used by Zippy's auras. It contains no logic beyond registering the files with LibSharedMedia-3.0 and runs on **WoW Forever** (Interface 16001) and **Retail / Midnight** (120105).

## Install

1. Download `ZippyMedia-<version>.zip` from the [Releases](https://github.com/chriskalv/ZippyMedia/releases) page (current: [ZippyMedia-1.0.0.zip](https://github.com/chriskalv/ZippyMedia/releases/download/v1.0.0/ZippyMedia-1.0.0.zip)).
2. Extract it into the `Interface\AddOns` folder of your WoW installation, so that `Interface\AddOns\ZippyMedia\ZippyMedia.toc` exists.
3. Restart the game (a `/reload` is not enough for new files) and enable **ZippyMedia** in the addon list.

Auras that use these files by path need the folder name exactly as it is: `ZippyMedia`.

## Contents

| Type | Name in LibSharedMedia | File |
|---|---|---|
| Texture | zUI Dragon Boss | `Interface\AddOns\ZippyMedia\Textures\ClassicBoss` |
| Texture | zUI Dragon Elite | `Interface\AddOns\ZippyMedia\Textures\ClassicElite` |
| Texture | zUI Dragon Rare Elite | `Interface\AddOns\ZippyMedia\Textures\ClassicRareElite` |
| Texture | zUI Dragon Rare | `Interface\AddOns\ZippyMedia\Textures\ClassicRare` |
| Font | PT Sans Narrow | `Interface\AddOns\ZippyMedia\Fonts\PTSansNarrow.ttf` (the Bold cut) |
| Font | FORCED SQUARE | `Interface\AddOns\ZippyMedia\Fonts\FORCED_SQUARE.ttf` |
| Font | zUI NiceDamage | `Interface\AddOns\ZippyMedia\Fonts\zUI_nicedamage.ttf` |
| Sound | zUI Hurricane | `Interface\AddOns\ZippyMedia\Sounds\zUI_Hurricane.ogg` (3.6 s) |
| Sound | zUI Lightning | `Interface\AddOns\ZippyMedia\Sounds\zUI_Lightning.ogg` (2.2 s) |

The textures are 128 × 128 BLP files with alpha. The names in the first column are what ForeverAuras, WeakAuras and ElvUI show in their font, sound and background pickers once LibSharedMedia-3.0 is loaded by any addon. Without the library the files still work by path.

## Used by

- **[zDO] • Zippy's Dragon Overlay** (ForeverAuras): the four dragon textures.
- Zippy's other auras reference the fonts *PT Sans Narrow* and *FORCED SQUARE* by name; with this addon installed they no longer depend on the SharedMedia pack or Details!.

## Profiles

| Addon | File | Import |
|---|---|---|
| Details! Damage Meter (Zippy's profile, exported 2026-11-05) | [`Profiles/Details.txt`](Profiles/Details.txt) | In game: `/details options`, tab **Profiles**, button **Import Profile**, paste the whole string from the file (open it with the *Raw* button on GitHub to copy it without line breaks). |

The profile files are kept here so that they have a permanent home; they are not loaded by the addon and are not part of the release zip.

## Credits and licenses

- **Dragon textures** (`Textures/Classic*.blp`): the classic elite dragon from Blizzard's original target frame, cut out and recolored by the contributors of the *Dragon Overlay* module of [ProjectAzilroka](https://github.com/Azilroka/ProjectAzilroka): Codeblake, Kkthnxbye, Narley and Durandil. Redistributed with their knowledge; the underlying artwork is © Blizzard Entertainment. Not for commercial use.
- **PT Sans Narrow** (Bold): © 2009 ParaType Ltd., designed by A. Korolkova, O. Umpeleva and V. Yefimov; licensed under the [SIL Open Font License 1.1](https://scripts.sil.org/OFL). Unmodified; "PT Sans" and "ParaType" are reserved font names.
- **FORCED SQUARE** (Medium): © 2014 Paul IJsendoorn, [Drawperfect](http://www.drawperfect.com/). Redistributed with attribution as a free font; see the author's site for the terms.
- **zUI NiceDamage** (`zUI_nicedamage.ttf`; the font "! PEPSI !", renamed internally to *zUI NiceDamage*): © 2000 Jakub Degórski, made with High-Logic by Erwin Denissen (1999). Freeware font.
- **Sounds** (`zUI_Hurricane.ogg`, `zUI_Lightning.ogg`): Zippy's UI.

The TOC, the Lua file and this documentation are under the MIT license (see `LICENSE`).
