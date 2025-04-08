local library = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Ordyyx/100PMC/refs/heads/main/shadowlibbackup"))()

local Main = library:CreateWindow("Main","Crimson")

local tab = Main:CreateTab("Cheats")

tab:CreateButton("Auto-Farm",function()
while true do
    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("CoinGrab"):FireServer()
    wait()
end
end)

tab:CreateDropdown("Store",{"PlaceableChair","ChairDestroyer","ForceFieldPotion","TeleportGun","FreezeRay"},function(a)
local args = {
    [1] = a
}
game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("PlayerBuysTool"):InvokeServer(unpack(args))
end)

tab:Show()
