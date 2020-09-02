-- LUALOCALS < ---------------------------------------------------------
local minetest, nodecore
    = minetest, nodecore
-- LUALOCALS > ---------------------------------------------------------
local modname = minetest.get_current_modname()

--------------HERE WE CREATE------------
--Rush--
minetest.register_node(modname .. ":rush", {
	description = ("Rush"),
	drawtype = "plantlike",
	waving = 1,
	tiles = {modname .. "_rush.png"},
	inventory_image = modname .. "_rush.png",
	wield_image = modname .. "_rush.png",
	paramtype = "light",
	paramtype2 = "meshoptions",
	place_param2 = 4,
	sunlight_propagates = true,
	walkable = false,
	buildable_to = true,
--	silktouch = false,
	groups = {snappy = 1, flora = 1, flammable = 3, attached_node = 1, natdecay = 1},
--	drop = modname .. ":plant_fibers",
	sounds = nodecore.sounds("nc_terrain_swishy"),
	selection_box = {
		type = "fixed",
		fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 4 / 16, 6 / 16},
	},
})
--Mushroom--
minetest.register_node(modname .. ":mushroom", {
		description = "Mushroom",
		drawtype = 'plantlike',
		tiles = {modname .. "_mushroom.png"},
		sunlight_propagates = true,
		paramtype = 'light',
		walkable = false,
--		silktouch = false,
		groups = { snappy = 1, fungi = 1, flammable = 1, attached_node = 1, decay = 1},
		sounds = nodecore.sounds("nc_terrain_swishy"),
		buildable_to = true,
--		drop = modname .. ":plant_fibers",
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 4 / 16, 6 / 16},
		},
	})
--Luxaeterna--
minetest.register_node(modname .. ":mushroom_lux", {
		description = "Luxaeterna",
		drawtype = 'plantlike',
		tiles = {modname .. "_mushroom_lux.png"},
		sunlight_propagates = true,
		paramtype = 'light',
		walkable = false,
--		silktouch = false,
		light_source = 4,
		groups = { snappy = 1, fungi = 1, flammable = 1, attached_node = 1, decay = 1},
		sounds = nodecore.sounds("nc_terrain_swishy"),
		buildable_to = true,
--		drop = modname .. ":plant_fibers",
		selection_box = {
			type = "fixed",
			fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 4 / 16, 6 / 16},
		},
	})
------------HERE WE DECORATE------------
--Rushes--
minetest.register_decoration({
		name = {modname .. ":rush"},
		deco_type = "simple",
		place_on = {"group:soil", "nc_terrain:sand"},
		sidelen = 16,
		noise_params = {
			offset = -0.3,
			scale = 0.7,
			spread = {x = 100, y = 100, z = 100},
			seed = 354,
			octaves = 3,
			persist = 0.7
		},
		y_max = 1,
		y_min = 1,
		decoration = {modname .. ":rush"},
--		spawn_by = "nc_terrain:water_source",
--		num_spawn_by = 1,
	})
--Mushrooms--
minetest.register_decoration({
		name = {modname .. ":mushroom"},
		deco_type = "simple",
		place_on = {"group:soil", "group:log"},
		sidelen = 16,
		noise_params = {
			offset = -0.42,
			scale = 0.1,
			spread = {x = 100, y = 100, z = 100},
			seed = 45,
			octaves = 3,
			persist = 0.2
		},
		y_max = 60,
		y_min = -20,
		decoration = {modname .. ":mushroom"},
	})
--Luxaeterna--
minetest.register_decoration({
		name = {modname .. ":luxaeterna"},
		deco_type = "simple",
		place_on = {"group:soil", "group:crumbly", "group:cobble"},
		sidelen = 16,
		noise_params = {
			offset = 0.72,
			scale = 0.05,
			spread = {x = 100, y = 100, z = 100},
			seed = 75,
			octaves = 3,
			persist = 0.2
		},
		y_max = -200,
		y_min = -1000,
		decoration = {modname .. ":mushroom_lux"},
	})
-----------Here we propagate------------

