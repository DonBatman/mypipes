local	pipes_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.35, 0.5},
		}
	}
local	pipesturn_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.35, 0.5, -0.35, 0.5},
		}
	}
local	pipesturn2_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, -0.35, 0.5},
			{-0.5, -0.5, -0.5, 0.5, 0.5, -0.35},
		}
	}
local	pipe_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.5, 0.125, -0.35, 0.5},
		}
	}
local	pipecorner2_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, 0.35, 0.125, -0.35, 0.5},
		}
	}
local	pipex_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.5, 0.125, -0.35, 0.5},
			{-0.5, -0.5, -0.125, 0.5, -0.35, 0.125},
		}
	}
local	pipet_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.5, 0.125, -0.35, 0.5},
			{-0.5, -0.5, -0.125, 0.125, -0.35, 0.125},
		}
	}
local	pipeelbow_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.125, 0.125, -0.35, 0.5},
			{-0.5, -0.5, -0.125, 0.125, -0.35, 0.125},
		}
	}
local	pipeturn_box = {
		type = "fixed",
		fixed = {
			{0.35, -0.5, -0.125, 0.5, -0.35, 0.5},
			{0.35, -0.5, -0.125, 0.5, 0.5, 0.125},
		}
	}

local objects = {
				{"pipe_straight","Pipe","myores_slate","pipe_straight",pipe_box},
				{"pipe_corner","Pipe Corner","myores_slate","pipe_corner",pipe_box},
				{"pipe_corner2","Pipe Corner 2","myores_slate","pipe_corner2",pipecorner2_box},
				{"pipe_t","Pipe T","myores_slate","pipe_t",pipet_box},
				{"pipe_x","Pipe X","myores_slate","pipe_x",pipex_box},
				{"pipe_turn","Pipe Turn","myores_slate","pipe_turn",pipeturn_box},
				{"pipe_elbow","Pipe Elbow","myores_slate","pipe_elbow",pipeelbow_box},
				{"pipes_turn","Pipes Turn","myores_slate","pipes_turn",pipesturn_box},
				{"pipes_turn2","Pipes Turn 2","myores_slate","pipes_turn2",pipesturn2_box},
				{"pipes","Pipes","myores_slate","pipes",pipes_box},
				{"pipes_corner","Pipes Corner","myores_slate","pipes_corner",pipes_box},
				}

for i in ipairs (objects) do
	local nam = objects[i][1]
	local des = objects[i][2]
	local img = objects[i][3]
	local obj = objects[i][4]
	local sel = objects[i][5]

minetest.register_node("mypipes:"..nam,{
	description = des,
	tiles = {img..".png"},
	drawtype = "mesh",
	mesh = obj..".obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {  cracky=1, crumbly = 1, not_in_creative_inventory=0},
	selection_box = sel,
	collision_box = sel,
	on_place = minetest.rotate_node
})
end
