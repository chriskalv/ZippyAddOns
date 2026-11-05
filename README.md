# ZippyAddOns

Zippy's addons for **WoW Forever** (Interface 16001), one folder per addon. Each folder is a complete addon: copy it into `Interface\AddOns` (or install the release zip of that addon), the folder name must stay as it is.

| Addon | What it is | Status |
|---|---|---|
| [`ZippyMedia/`](ZippyMedia/README.md) | Textures, fonts and sounds for Zippy's auras and UI, registered with LibSharedMedia-3.0 | released, [v1.0.0](https://github.com/chriskalv/ZippyAddOns/releases/tag/v1.0.0) |
| `SquareMinimapButtons/` | Port of the *Square Minimap Buttons* module of [ProjectAzilroka](https://github.com/Azilroka/ProjectAzilroka) by Azilroka to WoW Forever, with his permission | in preparation |

Releases are published per addon as a zip whose root is the addon folder (for example `ZippyMedia-1.0.0.zip` contains `ZippyMedia/`).

## Other files

- `Profiles/Details.txt`: Zippy's Details! Damage Meter profile string (not an addon). Import in game with `/details options`, tab **Profiles**, **Import Profile**; open the file with the *Raw* button on GitHub to copy it without line breaks.

## Development

The Lua tests of the addons run without the game client, in [fengari](https://github.com/fengari-lua/fengari) (Lua in JavaScript) with stubs of the WoW API. With Node.js 22 in the repository root:

```
npm install
npm test
```

`npm test` runs `tools/addon_test.mjs`: it resolves the TOC and the XML files of the addon, checks every Lua file with luaparse as Lua 5.1 and runs the tests in `tests/<Addon>/`. Development files stay outside the addon folders and are not part of any release zip.

## Licenses

`LICENSE` (MIT) covers this repository's own files unless a folder says otherwise; third-party resources keep their own licenses, listed in each addon's README. The Square Minimap Buttons port keeps the ProjectAzilroka copyright notice for the parts taken from the original.
