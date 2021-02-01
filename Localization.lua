local _, addon = ...

local L = setmetatable({}, {__index = function(t, k)
    local v = tostring(k)
    rawset(t, k, v)
    return v
end})

addon.L = L

local LOCALE = GetLocale()

if LOCALE == "enUS" then
L["/tsmsc"] = "/tsmsc"
L["/tsmsc slash commands:"] = "/tsmsc slash commands:"
L["?"] = "?"
L["Any other entry toggles the frame"] = "Any other entry toggles the frame"
L["Example: /tsmsc login"] = "Example: /tsmsc login"
L["Insert itemIDs"] = "Insert itemIDs"
L["login"] = "login"
L["login toggles showing the frame when you first log into WoW."] = "login toggles showing the frame when you first log into WoW."
L["message"] = "message"
L["message toggles displaying this message when you log into WoW."] = "message toggles displaying this message when you log into WoW."
L["or ? prints this menu."] = "or ? prints this menu."
L["reload"] = "reload"
L["reload toggles showing the frame when you reload your UI."] = "reload toggles showing the frame when you reload your UI."
L["TradeSkillMaster itemID String Fixer"] = "TradeSkillMaster itemID String Fixer"
L["TSM String Converter"] = "TSM String Converter"
L["TSMSC: no help menu during log in."] = "TSMSC: no help menu during log in."
L["TSMSC: showing help menu during log in."] = "TSMSC: showing help menu during log in."
L["TSMSC: will show the frame during log in."] = "TSMSC: will show the frame during log in."
L["TSMSC: will show the frame when you relod your UI."] = "TSMSC: will show the frame when you relod your UI."
L["TSMSC: won't show the frame during log in."] = "TSMSC: won't show the frame during log in."
L["TSMSC: won't show the frame when you reload your UI."] = "TSMSC: won't show the frame when you reload your UI."
return end

if LOCALE == "deDE" then
--@localization(locale="deDE", format="lua_additive_table")@
return end

if LOCALE == "frFR" then
--@localization(locale="frFR", format="lua_additive_table")@
return end

if LOCALE == "esES" or LOCALE == "esMX" then
--@localization(locale="esES", format="lua_additive_table")@
return end

if LOCALE == "ptBR" then
--@localization(locale="ptBR", format="lua_additive_table")@
return end

if LOCALE == "ruRU" then
--@localization(locale="ruRU", format="lua_additive_table")@
return end

if LOCALE == "koKR" then
--@localization(locale="koKR", format="lua_additive_table")@
return end

if LOCALE == "zhTW" then
--@localization(locale="zhTW", format="lua_additive_table")@
return end

if LOCALE == "zhCN" then
--@localization(locale="zhCN", format="lua_additive_table")@
return end

if LOCALE == "itIT" then
--@localization(locale="itIT", format="lua_additive_table")@
return end