task.spawn(function()
	_G.Objects = {}
	
	Get = function(obj)
		if _G.Objects[obj] then
			return _G.Objects[obj]
		else
			_G.Objects[obj] = obj
			obj:AddTag(`GetObject`)
			return obj
		end
	end

	PRINT_OUTPUT = function(...)
		if _G.Output then
			print(`KRYPTON OUTPUT: ` .. tostring(...))
		else
		end
	end

	WARN_OUTPUT = function(...)
		if _G.Output then
			warn(`KRYPTON OUTPUT: ` .. tostring(...))
		else
		end
	end
	
	local GetSettings = Get(_G.Settings)
	local GetQE = Get(game.ReplicatedStorage:FindFirstChild(`KryptonQE`))
	
	loadstring(game:HttpGet(`https://raw.githubusercontent.com/BoxExeGames/RBLX-Krypton-API/refs/heads/main/Main.lua`))()
end)
