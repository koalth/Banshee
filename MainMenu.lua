MainMenu = {
    show = false,
    title = "Banshee",
    statusText = "The Revenants Guild Addon v0.1",
    frame = nil
}

local AceGUI = LibStub("AceGUI-3.0");

function MainMenu.InitMainMenu()
    local frame = AceGUI:Create("Frame");
    frame:SetTitle(MainMenu.title);
    frame:SetStatusText(MainMenu.statusText);
    frame:SetLayout("Flow");
    frame:SetCallback("OnClose", function(widget)
        AceGUI:Release(widget)
        MainMenu.show = false
    end
    )

    MainMenu.frame = frame;
end

function MainMenu.Show()
    if MainMenu.show then
        return
    end

    MainMenu.show = true
    MainMenu.InitMainMenu()
end
