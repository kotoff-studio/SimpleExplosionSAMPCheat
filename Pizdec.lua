require "lib.moonloader"

function main()
  if not isSampfuncsLoaded() or not isSampLoaded() then return end
  while not isSampAvailable() do wait(100) end
  while true do
  wait(0)
    if isKeyJustPressed(VK_P) then
      	printStringNow("~r~[Blower] ~g~Projectile ~b~released!", 2000)
      	positionX, positionY, positionZ = getCharCoordinates(PLAYER_PED)
        addExplosion(positionX, positionY, positionZ, 10)
    end
  end
  end