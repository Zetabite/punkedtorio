local sounds = require("__base__/prototypes/entity/demo-sounds")

data:extend({
	{
		name = "try-pot",
		type = "assembling-machine",
		icon = "__punkedtorio__/graphics/icons/try-pot.png",
		icon_size = 64,
		flags = {"placeable-neutral", "player-creation"},
		minable = {mining_time = 1, result = "try-pot"},
		max_health = 350,
		corpse = "assembling-machine-1-remnants",
		collision_box = {{-0.75, -0.75}, {0.75, 0.75}},
		selection_box = {{-1, -1}, {1, 1}},
		animation = {
			layers = {
				{
					filename = "__punkedtorio__/graphics/entity/try-pot/try-pot.png",
					priority = "high",
					width = 75,
					height = 82,
					frame_count = 1,
					repeat_count = 32,
					animation_speed = 0.25,
					shift = util.by_pixel(0, 0),
					hr_version = {
						filename = "__punkedtorio__/graphics/entity/try-pot/hr-try-pot.png",
						priority = "high",
						width = 150,
						height = 163,
						frame_count = 1,
						repeat_count = 32,
						animation_speed = 0.25,
						shift = util.by_pixel(-0.5, 3.5),
						scale = 0.5
					}
				}
			}
		},
		fluid_boxes = {
			{
				production_type = "output",
				pipe_covers = pipecoverspictures(),
				base_level = 1,
				pipe_connections = {{ type="output", position = {-0.5, 1.5} }},
			}
		},
		working_sound = {
			sound = {
				{ filename = "__base__/sound/assembling-machine-t1-1.ogg", volume = 0.6 },
				{ filename = "__base__/sound/assembling-machine-t1-2.ogg", volume = 0.6 }
			},
			fade_in_ticks = 4,
			fade_out_ticks = 20
		},
		idle_sound = { filename = "__base__/sound/idle1.ogg" },
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		vehicle_impact_sound = sounds.generic_impact,
		allowed_effects = {},
		crafting_categories = {"trying-out"},
		crafting_speed = 1,
		energy_source = {
			type = "burner",
			fuel_category = "chemical",
			effectivity = 1,
			fuel_inventory_size = 1,
			emissions_per_minute = 12,
			smoke = {
				{
					name = "smoke",
					deviation = {0.1, 0.1},
					frequency = 3
				}
			}
		},
		energy_usage = "95kW",
	}
})
