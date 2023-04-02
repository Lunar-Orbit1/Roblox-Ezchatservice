local moduleId = 12922567411 --//The module id. If its a object in your game you can delete this script safely 
local currentV = "V0.1.1" --//The loader version
script.Parent = game.ServerScriptService --//Set this folder's parent to serverscriptservice

local m = require(moduleId)
m.Setup(game.ServerScriptService, currentV)
