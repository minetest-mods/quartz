--Node Registration

--Quartz Crystal
minetest.register_craftitem("quartz:quartz_crystal", {
	description = "Quartz Crystal",
	inventory_image = "quartz_crystal_full.png",
})
minetest.register_craftitem("quartz:quartz_crystal_piece", {
	description = "Quartz Crystal Piece",
	inventory_image = "quartz_crystal_piece.png",
})

--Ore
minetest.register_node("quartz:quartz_ore", {
         description = "Quartz Ore",
 	 tiles = {"default_stone.png^quartz_ore.png"},
	 groups = {cracky=3, stone=1},
	 drop = 'quartz:quartz_crystal',
         sounds = default.node_sound_stone_defaults(),
})
	 
minetest.register_ore({
    ore_type       = "scatter",
    ore            = "quartz:quartz_ore",
    wherein        = "default:stone",
    clust_scarcity = 10*10*10,
    clust_num_ores = 6,
    clust_size     = 5,
    height_min     = -31000,
    height_max     = -5,
})

--Quartz Block
minetest.register_node("quartz:block", {
	description = "Quartz Block",
	tiles = {"quartz_block.png"},
	groups = {cracky=3, oddly_breakable_by_hand=1},
	sounds = default.node_sound_glass_defaults(),
})

--Chiseled Quartz
minetest.register_node("quartz:chiseled", {
	description = "Chiseled Quartz",
	tiles = {"quartz_chiseled.png"},
	groups = {cracky=3, oddly_breakable_by_hand=1},
	sounds = default.node_sound_glass_defaults(),
})

--Quartz Pillar
minetest.register_node("quartz:pillar", {
	description = "Quartz Pillar",
	tiles = {"quartz_pillar_top.png", "quartz_pillar_top.png", "quartz_pillar_side.png"},
	groups = {cracky=3, oddly_breakable_by_hand=1},
	sounds = default.node_sound_glass_defaults(),
})

--Quartz Pillar (horizontal)
minetest.register_node("quartz:pillar_horizontal", {
        description = "Quartz Pillar Horizontal",
	tiles = {"quartz_pillar_side.png", "quartz_pillar_side.png", "quartz_pillar_side.png^[transformR90",
	"quartz_pillar_side.png^[transformR90", "quartz_pillar_top.png", "quartz_pillar_top.png"},
	paramtype2 = "facedir",
	groups = {cracky=3, oddly_breakable_by_hand=1},
	sounds = default.node_sound_glass_defaults(),
})

--Stairs & Slabs
stairs.register_stair_and_slab("quartzblock", "quartz:block",
		{cracky=3, oddly_breakable_by_hand=1},
		{"quartz_block.png"},
		"Quartz stair",
		"Quartz slab",
		default.node_sound_glass_defaults())

stairs.register_slab("quartzstair", "quartz:pillar",
		{cracky=3, oddly_breakable_by_hand=1},
		{"quartz_pillar_top.png", "quartz_pillar_top.png", "quartz_pillar_side.png"},
		"Quartz Pillar stair",
		"Quartz Pillar slab",
		default.node_sound_glass_defaults())		

		
		
		
		
		
		
--Crafting

--Quartz Crystal Piece
minetest.register_craft({
	output = '"quartz:quartz_crystal_piece" 3',
	recipe = {
		{'quartz:quartz_crystal'}
	}
})

--Quartz Block
minetest.register_craft({
	output = 'quartz:block',
	recipe = {
		{'quartz:quartz_crystal', 'quartz:quartz_crystal', ''},
		{'quartz:quartz_crystal', 'quartz:quartz_crystal', ''},
		{'', '', ''}
	}
})
	
--Chiseled Quartz
minetest.register_craft({
	output = 'quartz:chiseled 2',
	recipe = {
		{'stairs:slab_quartzblock', '', ''},
		{'stairs:slab_quartzblock', '', ''},
		{'', '', ''},
	}
})

--Quartz Pillar
minetest.register_craft({
	output = 'quartz:pillar 2',
	recipe = {
		{'quartz:block', '', ''},
		{'quartz:block', '', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'quartz:pillar 2',
	recipe = {
		{'quartz:pillar_horizontal', '', ''},
		{'quartz:pillar_horizontal', '', ''},
		{'', '', ''},
	}
})

--Quartz Pillar (horizontal)
minetest.register_craft({
	output = 'quartz:pillar_horizontal 2',
	recipe = {
		{'', '', ''},
		{'quartz:block', 'quartz:block', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = 'quartz:pillar_horizontal 2',
	recipe = {
		{'', '', ''},
		{'quartz:pillar', 'quartz:pillar', ''},
		{'', '', ''},
	}
})
