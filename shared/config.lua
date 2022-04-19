Config = {}

Config.Debug = false

Config.Control = {
  Key = "e",
  Name = "~INPUT_CONTEXT~"
}

Config.Cutscenes = {
  enabled = true,
  long = false
}

Config.DrawDistance = 20.0

Config.ActivationDistanceScaler = 1.2

Config.Blip = {
  Sprite = 423,
  Color = 21,
  Size = 0.7,
  LosSantosName = "Cayo Perico Airlines",
  IslandName = "Los Santos",
  MinimapOnly = true
}

Config.Marker = {
  Type = 22,
  Color = {
    Red = 255,
    Green = 0,
    Blue = 0,
    Alpha = 255
  },
  Size = 0.5
}

-- An array of locations to teleport to/from the island.
Config.TeleportLocations = {
  --[[{
    LosSantosCoordinate = vector3(3857.16, 4459.48, 0.85),
    LosSantosHeading = 357.31,
    IslandCoordinate = vector3(4929.47, -5174.01, 1.5),
    IslandHeading = 241.13
  },
  {
    LosSantosCoordinate = vector3(-1605.7, 5258.76,1.2),
    LosSantosHeading = 23.88,
    IslandCoordinate = vector3(5094.14,-4655.52, 0.8),
    IslandHeading = 70.03
  },]]
  {
    LosSantosCoordinate = vector3(-1089.09, -2594.19, 20.17),
    LosSantosHeading = 237.69,
    IslandCoordinate = vector3(4425.68,-4487.06, 3.25),
    IslandHeading = 200.56
  }
}