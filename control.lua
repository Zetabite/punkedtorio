--spawn whale around other fishes
local cnt_ent = {}
local rand = math.random
local amount = 0

function SpawnWhale()
	cnt_ent.type="fish"
	local surface = game.surfaces[1]
	local ent_list = surface.find_entities_filtered(cnt_ent)
	local cnt = #ent_list
	if cnt > 0 then
		local fish = ent_list[rand(cnt)]
		local pos = surface.find_non_colliding_position('whale', fish.position, 10, 1)
		if not pos then return end
		--local tile = surface.get_tile(pos.x, pos.y)
		--if tile.name ~= "water" and  tile.name ~= "deep-water" then return end
		surface.create_entity {name = 'whale', position = pos}
	end
end

script.on_nth_tick(1800, function(event)
	amount = rand(10)
	if amount > 0 then
		for i=1,amount,1 do
			SpawnWhale()
		end
	end
end)