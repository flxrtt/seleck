-- Get the service for name tags
local NameTagService = game:GetService("NameTagService")

-- Get all the name tags in the game
local NameTags = NameTagService:GetAllNameTags()

-- Loop through all the name tags
for i, NameTag in pairs(NameTags) do
  -- Get the player associated with the name tag
  local Player = NameTag:GetPlayer()

  -- Highlight the player
  Player.Character.HumanoidRootPart.Highlight = true
end
