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
L["Insert itemIDs"] = "Insert itemIDs"
L["TradeSkillMaster itemID String Fixer"] = "TradeSkillMaster itemID String Fixer"
L["TSM String Converter"] = "TSM String Converter"
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