local vehicle = addVehicleDebug("Base.fr_to_corolla_90_hatch", getPlayer():getDir(), 0, getCell():getGridSquare(getPlayer():getX(), getPlayer():getY(), getPlayer():getZ()));
getPlayer():getInventory():AddItem(vehicle:createVehicleKey());
vehicle:setRust(1)
vehicle:repair()

local parts = {true, true, false, false, true, true, false, false, false, false, false, true, true, true, true, true, false, false, true, true, true, false, true, true, true, true, true, true, true, true, false, false, false, false, true, true, true, true, true, false, false, false, false, false, false, false, false, false, true, false, true, true}
for i = 1, 52 do
    if parts[i] then
        vehicle:getPartByIndex(i):setCondition(0);
    else
        vehicle:getPartByIndex(i):setCondition(ZombRand(30, 80));
    end
end