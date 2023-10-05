local runService = game:GetService("RunService")

runService.RenderStepped:Connect(function()
  -- Reduce the number of objects in the game by unloading any objects that are not currently visible.
  for i, object in pairs(workspace:GetChildren()) do
    if not object:IsVisible() then
      object:Unload()
    end
  end
end)
