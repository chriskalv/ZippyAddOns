# ZippyAddOns

Zippy's addons for **WoW Forever** (Interface 16001), one folder per addon. Each folder is a complete addon: copy it into `Interface\AddOns` (or install the release zip of that addon), the folder name must stay as it is.

| Addon | What it is | Status |
|---|---|---|
| [`ZippyMedia/`](ZippyMedia/README.md) | Textures, fonts and sounds for Zippy's auras and UI, registered with LibSharedMedia-3.0 | released, [v1.0.0](https://github.com/chriskalv/ZippyAddOns/releases/tag/v1.0.0) |
| [`SquareMinimapButtons/`](SquareMinimapButtons/README.md) | Port of the *Square Minimap Buttons* module of [ProjectAzilroka](https://github.com/Azilroka/ProjectAzilroka) by Azilroka to WoW Forever, with Azilroka's permission | 1.0.0, testing in the WoW Forever client; release zips appear under [Releases](https://github.com/chriskalv/ZippyAddOns/releases) |

Releases are published per addon as a zip whose root is the addon folder (for example `ZippyMedia-1.0.0.zip` contains `ZippyMedia/`).

## Other files

- `Profiles/Details.txt`: Zippy's Details! Damage Meter profile string (not an addon). Import in game with `/details options`, tab **Profiles**, **Import Profile**; open the file with the *Raw* button on GitHub to copy it without line breaks.

## Development

The Lua tests of the addons run without the game client, in [fengari](https://github.com/fengari-lua/fengari) (Lua in JavaScript) with stubs of the WoW API. With Node.js 22 in the repository root:

```
npm install
npm test
```

`npm test` runs the Lua tests of the addon with `tools/addon_test.mjs` (TOC and XML files resolved, every Lua file checked as Lua 5.1, then the tests in `tests/<Addon>/`) and the tests of the release script in `tests/release.test.mjs`. `npm run release:smb` writes `dist/SquareMinimapButtons-<version>.zip` with `tools/release.mjs`, with the version from the TOC, the addon folder as the only root and no development files, which stay outside the addon folders.

## Licenses

`LICENSE` (MIT) covers this repository's own files unless a folder says otherwise; third-party resources keep their own licenses, listed in each addon's README. The Square Minimap Buttons port keeps the ProjectAzilroka copyright notice for the parts taken from the original.
