--old implemented idea: spawn whale around other fishes, kill if too many
--new idea: natural fish hotspots that regenerate after time, and kill if overpopulated

local cnt_ent = {}
local rand = math.random
local amount, chance = 0, 0

function SpawnFish(fish_type)
	cnt_ent.type="fish"
	local surface = game.surfaces[1]
	local ent_list = surface.find_entities_filtered(cnt_ent)
	local cnt = #ent_list
	if cnt > 0 then
		local fish = ent_list[rand(cnt)]
		local pos = surface.find_non_colliding_position(fish_type, fish.position, 10, 1)
		if not pos then return end
		--local tile = surface.get_tile(pos.x, pos.y)
		--if tile.name ~= "water" and  tile.name ~= "deep-water" then return end
		surface.create_entity {name = fish_type, position = pos}
		if cnt > 2000 then
			for i=1,10,1 do
				ent_list[rand(cnt-i)].destroy()
			end
		end
	end
end

script.on_nth_tick(1800, function(event)
	amount = rand(42)
	for i=1,amount,1 do
		chance = rand(100)
		if chance >= 10 then
			if chance <= 75 then
				SpawnFish("fish")
			end
		else
			SpawnFish("whale")
		end
	end
end)