local frameShown = false;


local function createFrame()
    local AceGUI = LibStub("AceGUI-3.0");
    local frame = AceGUI:Create("Frame");
    frame:SetTitle("Banshee");
    frame:SetStatusText("AceGUI-3.0 Example Container Frame");
    frame:SetCallback("OnClose", function(widget)
        AceGUI:Release(widget)
        frameShown = false
    end
    )
end


function Banshee:ShowFrame()
    if frameShown then
        return
    end

    frameShown = true
    createFrame();
end
