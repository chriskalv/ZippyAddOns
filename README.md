# ZippyAddOns

Zippy's addons for **WoW Forever** (Interface 16001), one folder per addon. Each folder is a complete addon: copy it into `Interface\AddOns` (or install the release zip of that addon), the folder name must stay as it is.

| Addon | What it is | Status |
|---|---|---|
| [`ZippyMedia/`](ZippyMedia/README.md) | Textures, fonts and sounds for Zippy's auras and UI, registered with LibSharedMedia-3.0 | released, [v1.0.0](https://github.com/chriskalv/ZippyAddOns/releases/tag/v1.0.0) |
| `SquareMinimapButtons/` | Port of the *Square Minimap Buttons* module of [ProjectAzilroka](https://github.com/Azilroka/ProjectAzilroka) by Azilroka to WoW Forever, with his permission | in preparation |

Releases are published per addon as a zip whose root is the addon folder (for example `ZippyMedia-1.0.0.zip` contains `ZippyMedia/`).

## Other files

- `Profiles/Details.txt`: Zippy's Details! Damage Meter profile string (not an addon). Import in game with `/details options`, tab **Profiles**, **Import Profile**; open the file with the *Raw* button on GitHub to copy it without line breaks.

## Licenses

`LICENSE` (MIT) covers this repository's own files unless a folder says otherwise; third-party resources keep their own licenses, listed in each addon's README. The Square Minimap Buttons port keeps the ProjectAzilroka copyright notice for the parts taken from the original.
