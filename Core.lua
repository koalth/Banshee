Banshee = LibStub("AceAddon-3.0"):NewAddon("Banshee", "AceConsole-3.0");

function Banshee:OnInitialize()
    self:Print("Banshee is active");
    self:RegisterChatCommand("banshee", "ChatCommand")
end

function Banshee:ChatCommand()
    self:ShowFrame()
end
