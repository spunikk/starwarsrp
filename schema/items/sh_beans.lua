ITEM.name = "Beans"
ITEM.desc = "A can of cooked beans."
ITEM.price = 6
ITEM.model = "models/props_junk/garbage_metalcan001a.mdl"
ITEM.healthRestore = 30
ITEM.category = "consumables"
ITEM.restore = 33
ITEM.functions.Eat = {
	icon = "icon16/cup.png",
	sound = "items/battery_pickup.wav",
	onRun = function(item)
		item.player:SetHealth(math.min(item.player:Health() + item.restore, 100))
		item.player:setLocalVar("stm", math.min(item.player:getLocalVar("stm", 100) + item.restore, 100))
	end
}
ITEM.permit = "food"