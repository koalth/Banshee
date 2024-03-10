Banshee = LibStub("AceAddon-3.0"):NewAddon("Banshee", "AceConsole-3.0", "AceHook-3.0");

function Banshee:OnInitialize()
    self:Print("Banshee is active");

    self:RegisterChatCommand("banshee", "ShowMainMenu");
    self:RegisterChatCommand("bs", "ShowMainMenu");
end

function Banshee:ShowMainMenu()
    MainMenu.Show()
end
