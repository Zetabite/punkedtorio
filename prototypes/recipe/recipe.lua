data:extend({
	{
		type = "recipe",
		name = "try-pot",
		category = "crafting",
		icon = "__punkedtorio__/graphics/icons/try-pot.png",
		icon_size = 64,
		subgroup = "smelting-machine",
		ingredients = {
			{ type = "item", name = "stone-furnace", amount = 1 },
			{ type = "item", name = "iron-plate", amount = 10 }
		},
		results = {
			{ type = "item", name = "try-pot", amount = 1 },
		}
	},

	{
		type = "recipe",
		name = "food-factory",
		category = "crafting",
		icon = "__punkedtorio__/graphics/icons/food-factory.png",
		icon_size = 64,
		subgroup = "production-machine",
		ingredients = {
			{ type = "item", name = "iron-gear-wheel", amount = 5 },
			{ type = "item", name = "iron-plate", amount = 9 },
			{ type = "item", name = "copper-plate", amount = 2 }
		},
		results = {
			{ type = "item", name = "food-factory", amount = 1 },
		}
	},

	{
		type = "recipe",
		name = "whale-carcass",
		category = "flensing",
		icon = "__punkedtorio__/graphics/icons/whale.png",
		icon_size = 64,
		subgroup = "intermediate-product",
		ingredients = {
			{ type = "item", name = "whale-carcass", amount = 1 }
		},
		results = {
			{ type = "item", name = "whale-meat", amount = 4 },
			{ type = "item", name = "blubber", amount = 12 }
		}
	},
})