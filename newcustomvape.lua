local lplr = game:GetService("Players").LocalPlayer
local getasset = getsynasset or getcustomasset or function(location) return "rbxasset://"..location end
local playerlist = game:GetService("CoreGui"):FindFirstChild("PlayerList")
if playerlist then
    pcall(function()
        local playerlistplayers = playerlist.PlayerListMaster.OffsetFrame.PlayerScrollList.SizeOffsetFrame.ScrollingFrameContainer.ScrollingFrameClippingFrame.ScollingFrame.OffsetUndoFrame
        local targetedplr = playerlistplayers:FindFirstChild("p_" .. lplr.UserId)
        if targetedplr then
            targetedplr.ChildrenFrame.NameFrame.BGFrame.OverlayFrame.PlayerIcon.Image = getasset("vape/assets/VapeIcon.png")
        end
    end)
end


shared.VapePrivate = true
loadstring(game:HttpGet("https://raw.githubusercontent.com/vodxn/sape/main/Initiate.lua"))()
