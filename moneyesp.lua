local players = game.Players:GetChildren()

for i, player in pairs(players) do
  local highlight = Instance.new("Highlight")
  highlight.Adornee = player.Character
  highlight.Parent = player.Character

  highlight.OutlineColor = Color3.new(0, 255, 0)
  highlight.Transparency = 0.5
end

wait(15)
local players = game.Players:GetChildren()

for i, player in pairs(players) do
  local highlight = Instance.new("Highlight")
  highlight.Adornee = player.Character
  highlight.Parent = player.Character

  highlight.OutlineColor = Color3.new(0, 1, 0)

  local nametag = Instance.new("BillboardGui")
  nametag.Name = "Nametag"
  nametag.Size = UDim2.new(4, 0, 1, 0)
  nametag.StudsOffset = Vector3.new(0, 3.5, 0)

  local textLabel = Instance.new("TextLabel")
  textLabel.Text = player.Name
  textLabel.FontSize = 16
  textLabel.Font = Enum.Font.SourceSansProBold
  textLabel.TextColor3 = Color3.new(1, 1, 1)

  local teamFrame = Instance.new("Frame")
  teamFrame.Size = UDim2.new(1, 0, 0.2, 0)
  teamFrame.BackgroundColor3 = player.Team.Color
  teamFrame.Parent = nametag

  nametag.TextLabel = textLabel
  nametag.Parent = player.Character
end
