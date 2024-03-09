local frameShown = false;





local function createFrame()
    local AceGUI = LibStub("AceGUI-3.0");
    local frame = AceGUI:Create("Frame");
    frame:SetTitle("Banshee");
    frame:SetStatusText("The Revenants");
    frame:SetLayout("Flow");
    frame:SetCallback("OnClose", function(widget)
        AceGUI:Release(widget)
        frameShown = false
    end
    )

    local numTotal, numOnline, numOnlineAndMobile = GetNumGuildMembers();

    local numOnlineLabel = AceGUI:Create("Label");
    numOnlineLabel:SetText("Online Members: ")
    numOnlineLabel:SetWidth(100)

    local numOnlineValue = AceGUI:Create("Label");
    numOnlineValue:SetText(numOnline)

    frame:AddChild(numOnlineLabel);
    frame:AddChild(numOnlineValue);
end


function Banshee:ShowFrame()
    if frameShown then
        return
    end

    frameShown = true
    createFrame();
end
