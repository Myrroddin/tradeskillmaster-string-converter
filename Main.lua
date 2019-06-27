local title, addon = ...
local L = addon.L
local gui = LibStub("AceGUI-3.0")

local text_store = "" -- store the edit box text
local isShown = false -- toggle for main_frame

local function ShowFrame()
    if isShown then return end

    isShown = true

    -- create the GUI and make it useful
    local main_frame = gui:Create("Frame")
    main_frame:SetTitle(L["TSM String Converter"])
    main_frame:SetStatusText(L["TradeSkillMaster itemID String Fixer"])
    main_frame:SetCallback("OnClose", function(widget)
        text_store = ""
        isShown = false
        gui:Release(widget)
    end)
    main_frame:SetLayout("Flow")

    local edit_box = gui:Create("MultiLineEditBox")
    edit_box:SetLabel(L["Insert itemIDs"])
    edit_box:SetRelativeWidth(1.0)
    edit_box:SetNumLines(25)
    edit_box:SetMaxLetters(0) -- no limit to the number of characters entered
    edit_box:DisableButton(true) -- disables the "Okay" button
    edit_box:SetCallback("OnTextChanged", function(widget, event, text)
        edit_box:SetLabel(L["Insert itemIDs"])
        text_store = text
    end)
    main_frame:AddChild(edit_box)

    local button = gui:Create("Button")
    button:SetText(CONVERT)
    button:SetRelativeWidth(1.0)
    button:SetCallback("OnClick", function()
        -- strip out all spaces, just in case
        text_store = text_store:trim()
        text_store = string.gsub(text_store, " ", "")

        -- break text_store entirely, and fix it (credit to krowbar71 on the Wowinterface forums)
        text_store = string.gsub(string.gsub(text_store, "[iI]:", ""), "(%d+)", "i:%1")

        print("|cff32cd32TSMSC: |r" .. DONE_EDITING)

        edit_box:SetText(text_store)
        edit_box:HighlightText()
        edit_box:SetFocus()
        edit_box:SetLabel(DONE_EDITING)
    end)
    main_frame:AddChild(button)
end -- end of ShowFrame()

ShowFrame()

-- create and handle slash command
SLASH_TSMSC1 = L["/tsmsc"]
SlashCmdList["TSMSC"] = function(msg, editBox) -- the edit box that originated the command, not the input field for itemIDs
    ShowFrame()
end