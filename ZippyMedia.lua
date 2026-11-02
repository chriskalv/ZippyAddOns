-- ZippyMedia: registers the bundled textures, fonts and sounds with
-- LibSharedMedia-3.0, so they show up by name in ForeverAuras, WeakAuras,
-- ElvUI and every other addon that uses the library. The files work by
-- path even without the library (see README.md).

local PATH = "Interface\\AddOns\\ZippyMedia\\"

local MEDIA = {
    background = {
        ["zUI Dragon Boss"] = "Textures\\ClassicBoss",
        ["zUI Dragon Elite"] = "Textures\\ClassicElite",
        ["zUI Dragon Rare Elite"] = "Textures\\ClassicRareElite",
        ["zUI Dragon Rare"] = "Textures\\ClassicRare",
    },
    font = {
        ["PT Sans Narrow"] = "Fonts\\PTSansNarrow.ttf",
        ["FORCED SQUARE"] = "Fonts\\FORCED_SQUARE.ttf",
        ["zUI NiceDamage"] = "Fonts\\zUI_nicedamage.ttf",
    },
    sound = {
        ["zUI Hurricane"] = "Sounds\\zUI_Hurricane.ogg",
        ["zUI Lightning"] = "Sounds\\zUI_Lightning.ogg",
    },
}

local registered = false

local function Register()
    if registered then
        return true
    end
    local LSM = LibStub and LibStub("LibSharedMedia-3.0", true)
    if not LSM then
        return false
    end
    -- PT Sans Narrow carries Latin and Cyrillic glyphs; the other fonts Latin only.
    local cyrillic = LSM.LOCALE_BIT_western + LSM.LOCALE_BIT_ruRU
    for mediatype, list in pairs(MEDIA) do
        for name, file in pairs(list) do
            if mediatype == "font" and name == "PT Sans Narrow" then
                LSM:Register(mediatype, name, PATH .. file, cyrillic)
            else
                LSM:Register(mediatype, name, PATH .. file)
            end
        end
    end
    registered = true
    return true
end

-- The library usually comes embedded in another addon. OptionalDeps in the
-- TOC load the common ones first; if it still arrives later, try again once
-- the UI has loaded.
if not Register() then
    local frame = CreateFrame("Frame")
    frame:RegisterEvent("PLAYER_LOGIN")
    frame:SetScript("OnEvent", function(self)
        self:UnregisterAllEvents()
        Register()
    end)
end
