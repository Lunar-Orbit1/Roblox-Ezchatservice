--[[
		  _______________________________
	   |                               |
	   |                               |
	   |        EZ CHAT MODULE         |
	   |                               |
	   |_______________________________| 
]]

local m = {}
local cs = game:GetService("Chat")
local csr = require(game:GetService("ServerScriptService"):WaitForChild("ChatServiceRunner").ChatService)

local mv = "V0.5.1"
local lv = "V0.1.1"

--//Setup functions
function m.Setup(location, loaderV)
	script.Parent = location
	wrn("SETUP \nModule version: "..mv.." \nLoader Version: "..lv)
	if lv ~= loaderV then
		wrn("Loader out of date! \nCurrent: "..loaderV.." \nUpdated: "..lv)
	end
end
--//Misc functions
function wrn(text)
	warn("EzChat: "..text)
	return true
end

--//GetSpeaker
function m.GetSpeakerFromPlayer(player)
	local speaker = nil
	while speaker == nil do
		speaker = csr:GetSpeaker(player.Name)
		if speaker ~= nil then break end
		wait(0.01)
	end
	return speaker
end

--//Get speaker from name
function m.GetSpeakerFromName(speakerName)
	local speaker = nil
	while speaker == nil do
		speaker = csr:GetSpeaker(speakerName)
		if speaker ~= nil then break end
		wait(0.01)
	end
	return speaker
end

--//Make tag
function m.MakeTag(text, color)
	if color == nil then
		color = Color3.new(1,1,1)
	end
	if text == nil then
		wrn("No tag text provided!")
	else
		return {
			TagText = text,
			TagColor = color
		}
	end
end

--//Set tags
function m.SetTag(speaker, tagTable)
	if tagTable ~= nil then
		if speaker then
			speaker:SetExtraData("Tags",tagTable)
		else
			wrn("No speaker provided")
		end
	else
		wrn("No tag table provided")
	end
end

--//RemoveTags
function m.RemoveTags(speaker)
	if speaker then
		speaker:SetExtraData("Tags", nil)
	else
		wrn("No speaker provided!")
	end
end


--//Set chat color
function m.SetChatColor(speaker, color)
	if speaker and color then
		speaker:SetExtraData("ChatColor", color)
	else
		wrn("No speaker and or color provided!")
	end
end

--//Reset chat color
function m.ResetChatColor(speaker)
	if speaker then
		speaker:SetExtraData("ChatColor", Color3.new(1,1,1))
	else
		wrn("No speaker provided!")
	end
end

--//Set name color
function m.SetNameColor(speaker, color)
	if speaker and color then
		speaker:SetExtraData("NameColor", color)
	else
		wrn("No speaker and or color provided!")
	end
end

--//Adds a speaker
function m.AddSpeaker(speakerName, channel)
	if speakerName and channel then
		local bot = csr:AddSpeaker(speakerName)
		bot:JoinChannel(channel)
		return bot
	else
		wrn("No speaker and or channel provided!")
	end
end

function m.JoinChannel(speaker, channel)
	if speaker and channel then
		speaker:JoinChannel(channel)
	else
		wrn("No speaker and or channel provided")
	end
end

--//Sends a chat message
function m.SendChatMessage(speaker, channel, text)
	if speaker and channel and text then
		speaker:SayMessage(text, channel)
	else
		wrn("No speaker, channel and or text provided!")
	end
end

--//Chat bubble
function m.ChatBubble(object, text)
	if object and text then
		cs:Chat(object, text)
	else
		wrn("No object and or text provided!")
	end
end
--//Filter
function m.Filter(text, playerFrom)
	if text and playerFrom then
		return cs:FilterStringForBroadcast(text, playerFrom)
	else
		wrn("No text and or player provided!")
	end
end

return m
