---@type string
local addonName = ...
---@class ns
local ns = select(2, ...)

local AceAddon = LibStub("AceAddon-3.0")
--local AceDB = LibStub("AceDB-3.0")

---@class Banshee : AceConsole3.0, AceEvent-3.0, AceAddon
local Core = AceAddon:NewAddon(addonName, "AceConsole-3.0", "AceEvent-3.0")

function Core:OnInitialize()
    self:RegisterMessage("Banshee_ToggleUI", "ToggleUI")
end

function Core:ToggleUI()
    if ns.MainUI:IsVisible() then
        ns.MainUI:Hide()
    else
        self:ShowGuildMenu()
    end
end

function Core:ShowGuildMenu()
    ns.MainUI:Show({
        guildies = function()
            return self:GuildiesTable()
        end
    })
end

local guildField = { "name", "rank" }

-- Banshee = LibStub("AceAddon-3.0"):NewAddon("Banshee", "AceConsole-3.0", "AceHook-3.0");

-- function Banshee:OnInitialize()
--     self:Print("Banshee is active");

--     self:RegisterChatCommand("banshee", "ShowMainMenu");
--     self:RegisterChatCommand("bs", "ShowMainMenu");
-- end

-- function Banshee:ShowMainMenu()
--     MainMenu.Show()
-- end
