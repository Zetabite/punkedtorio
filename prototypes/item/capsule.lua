data:extend({
	{
		name = "canned-fish",
		type = "item",
		icon = "__punkedtorio__/graphics/icons/canned-fish.png",
		icon_size = 64,
		stack_size = 50,
	},

	{
		name = "canned-whale-meat",
		type = "capsule",
		icon = "__punkedtorio__/graphics/icons/canned-whale-meat.png",
		icon_size = 64,
		stack_size = 50,
		capsule_action = {
			type = "use-on-self",
			attack_parameters = {
				type = "projectile",
				ammo_category = "capsule",
				cooldown = 60,
				range = 0,
				ammo_type = {
					category = "capsule",
					target_type = "position",
					action = {
						type = "direct",
						action_delivery = {
							type = "instant",
							target_effects = {
								type = "damage",
								damage = {type = "physical", amount = -100}
							}
						}
					}
				}
			}
		}
	},

	{
		name = "whale-meat",
		type = "capsule",
		icon = "__punkedtorio__/graphics/icons/whale-meat.png",
		icon_size = 64,
		stack_size = 100,
		capsule_action = {
			type = "use-on-self",
			attack_parameters = {
				type = "projectile",
				ammo_category = "capsule",
				cooldown = 50,
				range = 0,
				ammo_type = {
					category = "capsule",
					target_type = "position",
					action = {
						type = "direct",
						action_delivery = {
							type = "instant",
							target_effects = {
								type = "damage",
								damage = {type = "physical", amount = -80}
							}
						}
					}
				}
			}
		}
	}
})