function foodfactorypipepictures()
	return {
		north = {
			filename = "__punkedtorio__/graphics/entity/food-factory/food-factory-pipe-N.png",
			priority = "extra-high",
			width = 35,
			height = 18,
			shift = util.by_pixel(2.5, 14),
			hr_version = {
				filename = "__punkedtorio__/graphics/entity/food-factory/hr-food-factory-pipe-N.png",
				priority = "extra-high",
				width = 71,
				height = 38,
				shift = util.by_pixel(2.25, 13.5),
				scale = 0.5
			}
		},
		east = {
			filename = "__punkedtorio__/graphics/entity/food-factory/food-factory-pipe-E.png",
			priority = "extra-high",
			width = 20,
			height = 38,
			shift = util.by_pixel(-25, 1),
			hr_version = {
				filename = "__punkedtorio__/graphics/entity/food-factory/hr-food-factory-pipe-E.png",
				priority = "extra-high",
				width = 42,
				height = 76,
				shift = util.by_pixel(-24.5, 1),
				scale = 0.5
			}
		},
		south = {
			filename = "__punkedtorio__/graphics/entity/food-factory/food-factory-pipe-S.png",
			priority = "extra-high",
			width = 44,
			height = 31,
			shift = util.by_pixel(0, -31.5),
			hr_version = {
				filename = "__punkedtorio__/graphics/entity/food-factory/hr-food-factory-pipe-S.png",
				priority = "extra-high",
				width = 88,
				height = 61,
				shift = util.by_pixel(0, -31.25),
				scale = 0.5
			}
		},
		west = {
			filename = "__punkedtorio__/graphics/entity/food-factory/food-factory-pipe-W.png",
			priority = "extra-high",
			width = 19,
			height = 37,
			shift = util.by_pixel(25.5, 1.5),
			hr_version = {
				filename = "__punkedtorio__/graphics/entity/food-factory/hr-food-factory-pipe-W.png",
				priority = "extra-high",
				width = 39,
				height = 73,
				shift = util.by_pixel(25.75, 1.25),
				scale = 0.5
			}
		}
	} end

local sounds      = require("__base__/prototypes/entity/demo-sounds")

data:extend({
	{
		name = "food-factory",
		type = "assembling-machine",
		icon = "__punkedtorio__/graphics/icons/food-factory.png",
		icon_size = 64,
		flags = {"placeable-neutral", "player-creation"},
		minable = {mining_time = 1, result = "food-factory"},
		max_health = 350,
		corpse = "assembling-machine-1-remnants",
		collision_box = {{-1.25, -1.25}, {1.25, 1.25}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fluid_boxes = {
			{
				production_type = "input",
				pipe_picture = foodfactorypipepictures(),
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {0, -2} }},
				secondary_draw_orders = { north = -1 }
			},
			{
				production_type = "output",
				pipe_picture = foodfactorypipepictures(),
				pipe_covers = pipecoverspictures(),
				base_area = 10,
				base_level = 1,
				pipe_connections = {{ type="output", position = {0, 2} }},
				secondary_draw_orders = { north = -1 }
			},
			off_when_no_fluid_recipe = true
		},
		animation = {
			layers = {
				{
					filename = "__punkedtorio__/graphics/entity/food-factory/food-factory.png",
					priority = "high",
					width = 108,
					height = 114,
					frame_count = 32,
					line_length = 8,
					shift = util.by_pixel(0, 4),
					hr_version = {
						filename = "__punkedtorio__/graphics/entity/food-factory/hr-food-factory.png",
						priority = "high",
						width = 214,
						height = 226,
						frame_count = 32,
						line_length = 8,
						shift = util.by_pixel(0, 4),
						scale = 0.5
					}
				},
				{
					filename = "__punkedtorio__/graphics/entity/food-factory/food-factory-shadow.png",
					priority = "high",
					width = 98,
					height = 82,
					frame_count = 32,
					line_length = 8,
					draw_as_shadow = true,
					shift = util.by_pixel(12, 5),
					hr_version =
					{
						filename = "__punkedtorio__/graphics/entity/food-factory/hr-food-factory-shadow.png",
						priority = "high",
						width = 196,
						height = 163,
						frame_count = 32,
						line_length = 8,
						draw_as_shadow = true,
						shift = util.by_pixel(12, 4.75),
						scale = 0.5
					}
				}
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
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.75 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		idle_sound = { filename = "__base__/sound/idle1.ogg" },
		vehicle_impact_sound = sounds.generic_impact,
		allowed_effects = {},
		crafting_categories = {"flensing", "canning"},
		crafting_speed = 1,
		energy_source = {
			type = "electric",
			emissions_per_minute = 4,
			usage_priority = "secondary-input"
		},
		energy_usage = "95kW",
	}
})
