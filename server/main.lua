local function VerifyConfig()
  local invalid = false

  if not Config then
    print("^1Impossible de trouver le fichier shared/config.lua !^7")
    invalid = true
  end

  if Config.Debug == nil or not Config.Marker or not Config.DrawDistance or not Config.ActivationDistanceScaler then
    print("^1Valeurs par défaut manquantes Debug, Marker, DrawDistance ou ActivationDistanceScaler^7")
    invalid = true
  end

  -- Check Config.Control
  if not Config.Control.Key or not Config.Control.Name then
    print("^1Paramètre de contrôle non valide^7")
    invalid = true
  end

  -- Check Config.TeleportLocations
  if not Config.TeleportLocations then
    print("^1Impossible de trouver les emplacements de téléportation^7")
    invalid = true
  else
    for index, location in ipairs(Config.TeleportLocations) do
      if not location.LosSantosCoordinate or not location.IslandCoordinate then
        print("^1Impossible de trouver les marqueurs, les coordonnées de Los Santos ou les coordonnées de l'île dans l'emplacement de téléportation " ..index.. "^7")
        invalid = true
        break
      end

      if type(location.LosSantosCoordinate) ~= "vector3" or type(location.IslandCoordinate) ~= "vector3" then
        print("^1Type invalide pour LosSantos Coordinate ou Islands Coordinate dans l\'emplacement de téléportation ".. index.. ". Le type doit être vector3^7")
        invalid = true
        break
      end

      if not location.LosSantosHeading or not location.IslandHeading then
        print("^1Impossible de trouver le heading^7")
        invalid = true
      end
    end
  end

  if invalid then
    local resource = GetCurrentResourceName()
    print("^1Vous avez une ou plusieurs erreurs dans votre fichier de configuration. Veuillez vérifier Config.lua^7")
    print("^3Vous ne pouvez pas résoudre ce problème vous-même ? Consultez le sujet du forum " ..ressource.. " sur le forum Cfx.re^7")
    print("^1Arrêt de " .. ressource .. " ...^7")
    StopResource(GetCurrentResourceName())
  end
end

Citizen.CreateThread(
  function()
    VerifyConfig()
  end
)
