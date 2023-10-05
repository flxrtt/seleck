local humanoid = script.Parent:WaitForChild("Humanoid")
local shiftKey = Enum.KeyCode.LeftShift or Enum.KeyCode.RightShift

script.Parent.CharacterAdded:Connect(function()
  humanoid.WalkSpeed = 16
end)

script.Parent.InputBegan:Connect(function(input)
  if input.KeyCode == shiftKey then
    humanoid.WalkSpeed = 32
  end
end)

script.Parent.InputEnded:Connect(function(input)
  if input.KeyCode == shiftKey then
    humanoid.WalkSpeed = 16
  end
end)
