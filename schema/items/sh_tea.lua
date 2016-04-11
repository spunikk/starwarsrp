ITEM.name = "Tea"
ITEM.desc = "A cup of hot tea."
ITEM.price = 6
ITEM.model = "models/props_junk/garbage_coffeemug001a.mdl"
ITEM.healthRestore = 12
ITEM.category = "consumables"
ITEM.restore = 33
ITEM.functions.Drink = {
	icon = "icon16/cup.png",
	sound = "items/battery_pickup.wav",
	onRun = function(item)
		item.player:SetHealth(math.min(item.player:Health() + item.restore, 100))
		item.player:setLocalVar("stm", math.min(item.player:getLocalVar("stm", 100) + item.restore, 100))
	end
}
ITEM.permit = "food"