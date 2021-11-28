-- ============================================================= --
-- Cabin View MOD
-- ============================================================= --
CabViewREGISTER = {};

g_specializationManager:addSpecialization('cabView', 'CabView', Utils.getFilename('CabView.lua', g_currentModDirectory), true);

for vehicleName, vehicleType in pairs(g_vehicleTypeManager.types) do
	if  SpecializationUtil.hasSpecialization(Drivable,  vehicleType.specializations) and
		SpecializationUtil.hasSpecialization(Motorized, vehicleType.specializations) and
		SpecializationUtil.hasSpecialization(Enterable, vehicleType.specializations) and
		not SpecializationUtil.hasSpecialization(ConveyorBelt, vehicleType.specializations) then
			g_vehicleTypeManager:addSpecialization(vehicleName, 'cabView') 
	end
end