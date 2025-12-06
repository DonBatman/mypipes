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
local	pipecorner_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.5, 0.125, -0.35, 0.5},
			{-0.125, -0.5, -0.35, 0.125, 0.5, -0.5},
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
local	pipeturn2_box = {
		type = "fixed",
		fixed = {
			{-0.25, -0.5, 0.15, 0.25, -0.25, 0.5},
		}
	}
local	largepipet_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.125, 0.125, -0.35, 0.5},
			{-0.5, -0.5, -0.125, 0.5, -0.35, -0.125},
		}
	}


local objects = {
				{"pipe_straight","Pipe","mypipes_grey","pipe_straight",pipe_box},
				{"pipe_corner","Pipe Corner","mypipes_grey","pipe_corner",pipecorner_box},
				{"pipe_corner2","Pipe Corner 2","mypipes_grey","pipe_corner2",pipecorner2_box},
				{"pipe_t","Pipe T","mypipes_grey","pipe_t",pipet_box},
				{"pipe_x","Pipe X","mypipes_grey","pipe_x",pipex_box},
				{"pipe_elbow","Pipe Elbow","mypipes_grey","pipe_elbow",pipeelbow_box},
				{"pipes_turn","Pipes Turn","mypipes_grey","pipes_turn",pipesturn_box},
				{"pipes_turn2","Pipes Turn 2","mypipes_grey","pipes_turn2",pipesturn2_box},
				{"pipes","Pipes","mypipes_pipes","pipes",pipes_box},
				{"pipes_corner","Pipes Corner","mypipes_grey","pipes_corner",pipes_box},
				{"large_pipe_turn","Large Pipe Turn","mypipes_grey","large_pipe_turn",pipecorner_box},
				{"large_pipe_turn2","Large Pipe Turn 2","mypipes_grey","large_pipe_turn2",pipeturn2_box},
				{"large_pipe_elbow","Large Pipe Elbow","mypipes_grey","large_pipe_elbow",pipeelbow_box},
				{"large_pipe","Large Pipe","mypipes_grey","large_pipe",pipe_box},
				{"large_pipe_x","Large Pipe X","mypipes_grey","large_pipe_x",pipex_box},
				{"large_pipe_t","Large Pipe T","mypipes_grey","large_pipe_t",largepipet_box},
				}

for i in ipairs (objects) do
	local nam = objects[i][1]
	local des = objects[i][2]
	local img = objects[i][3]
	local obj = objects[i][4]
	local sel = objects[i][5]

core.register_node("mypipes:"..nam,{
	description = des,
	tiles = {img..".png"},
	drawtype = "mesh",
	mesh = "mypipes_" ..obj..".obj",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {  cracky=1, crumbly = 1, not_in_creative_inventory=0},
	selection_box = sel,
	collision_box = sel,
	on_place = core.rotate_node
})
end
