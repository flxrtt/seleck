local players = game.Players:GetChildren()

for i, player in pairs(players) do
  local highlight = Instance.new("Highlight")
  highlight.Adornee = player.Character
  highlight.Parent = player.Character

  highlight.OutlineColor = Color3.new(0, 1, 0)
  highlight.Transparency = 0.5
end
