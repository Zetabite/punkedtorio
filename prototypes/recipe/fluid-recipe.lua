data:extend({
	{
		type = "recipe",
		name = "whale-oil",
		category = "trying-out",
		icon = "__punkedtorio__/graphics/icons/fluid/whale-oil.png",
		icon_size = 64,
		subgroup = "fluid-recipes",
		ingredients = {
			{ type = "item", name = "blubber", amount = 15 }
		},
		results =
		{
			{ type = "fluid", name = "whale-oil", amount = 10 }
		}
	},

	{
		type = "recipe",
		name = "fish-oil",
		category = "trying-out",
		icon = "__punkedtorio__/graphics/icons/fluid/fish-oil.png",
		icon_size = 64,
		subgroup = "fluid-recipes",
		ingredients = {
			{ type = "item", name = "raw-fish", amount = 15 }
		},
		results = {
			{ type = "fluid", name = "fish-oil", amount = 10 }
		}
    },
    
    {
		type = "recipe",
		name = "refined-whale-oil",
		category = "oil-processing",
		icon = "__punkedtorio__/graphics/icons/fluid/refined-whale-oil.png",
		icon_size = 64,
		subgroup = "fluid-recipes",
		ingredients = {
            { type = "fluid", name = "whale-oil", amount = 20 },
            { type = "fluid", name = "water", amount = 10 },
		},
		results = {
			{ type = "fluid", name = "refined-whale-oil", amount = 20 }
		}
	},
})