Banshee = LibStub("AceAddon-3.0"):NewAddon("Banshee", "AceConsole-3.0", "AceHook-3.0");

function Banshee:OnInitialize()
    self:Print("Banshee is active");

    self:RegisterChatCommand("banshee", "ShowGUI");
    self:RegisterChatCommand("bs", "ShowGUI");
end

function Banshee:GetNumGuildMembers()
    local numTotal, numOnline, numOnlineAndMobile = GetNumGuildMembers();
    self:Print("Number of online members: " .. numOnline);
end

function Banshee:ShowGUI()
    self:ShowFrame()
end
