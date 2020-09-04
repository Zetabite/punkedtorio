data:extend({
	{
		type = "recipe",
		name = "canned-whale-meat",
		category = "canning",
		icon = "__punkedtorio__/graphics/icons/canned-whale-meat.png",
		icon_size = 64,
		subgroup = "intermediate-product",
		ingredients = {
			{ type = "item", name = "whale-meat", amount = 6 },
			{ type = "fluid", name = "fish-oil", amount = 2 },
			{ type = "item", name = "iron-plate", amount = 3 },
		},
		results = {
			{ type = "item", name = "canned-whale-meat", amount = 3 }
		}
	},

	{
		type = "recipe",
		name = "canned-fish",
		category = "canning",
		icon = "__punkedtorio__/graphics/icons/canned-fish.png",
		icon_size = 64,
		subgroup = "intermediate-product",
		ingredients = {
			{ type = "item", name = "raw-fish", amount = 6 },
			{ type = "fluid", name = "fish-oil", amount = 2 },
			{ type = "item", name = "iron-plate", amount = 3 },
		},
		results = {
			{ type = "item", name = "canned-fish", amount = 3 }
		}
	}
})