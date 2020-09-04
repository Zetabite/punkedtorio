data:extend({
	{
		type = "fish",
		name = "whale",
		icon = "__punkedtorio__/graphics/icons/whale.png",
		icon_size = 64,
		flags = {"placeable-neutral", "not-on-map"},
		minable = {mining_time = 1.25, result = "whale-carcass", count = 1},
		max_health = 80,
		subgroup = "creatures",
		order = "b-a",
		collision_box = {{-2, -2.5}, {2, 2.5}},
		selection_box = {{-1.75, -1.55}, {1.75, 1.55}},
		pictures = {
			{
				filename = "__punkedtorio__/graphics/entity/whale/whale-1.png",
				priority = "extra-high",
				width = 96,
				height = 188
			},
			{
				filename = "__punkedtorio__/graphics/entity/whale/whale-2.png",
				priority = "extra-high",
				width = 96,
				height = 216
			}
		},
		autoplace = {
			influence = 0.01
		}
	}
})