local plant_greed_items_on_level_original = GreedManager.plant_greed_items_on_level
function GreedManager:plant_greed_items_on_level(world_id, ...)
    if Network:is_server() then
        LootFixer:RemoveClosedAreaLoot(self, world_id)
    end
    return plant_greed_items_on_level_original(self, world_id, ...)
end
