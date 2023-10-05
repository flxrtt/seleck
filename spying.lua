local runService = game:GetService("RunService")
local camera = workspace.CurrentCamera
local player = game.Players.LocalPlayer
local character = player.Character

local targetPlayer = nil
local cameraVelocity = Vector3.new()

runService.RenderStepped:Connect(function()
  if game.Players.LocalPlayer:IsKeyDown(Enum.KeyCode.C) then
    local ray = Ray.new(character.HumanoidRootPart.Position, camera.CFrame.LookVector)
    local hitInfo = workspace:FindPartOnRay(ray)

    if hitInfo then
      local hitPlayer = hitInfo.Part.Parent
      if hitPlayer and hitPlayer.Character then
        targetPlayer = hitPlayer
      end
    end
  end

  if targetPlayer then
    cameraVelocity = cameraVelocity + (targetPlayer.Character.HumanoidRootPart.Position - camera.CFrame.Position) * 0.1
    camera.CFrame = CFrame.lookAt(camera.CFrame.Position + cameraVelocity, targetPlayer.Character.HumanoidRootPart.Position)
  end
end)
