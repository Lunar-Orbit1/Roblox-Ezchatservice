
local chatM = require(game.ServerScriptService:WaitForChild("MainModule"))
local speaker = chatM.AddSpeaker("Testy", "All")
wait(1)--//Need to wait a bit
chatM.SendChatMessage(speaker,"All", "Hi there! Welcome to the Ez chat module!")

local tag1 = chatM.MakeTag("Bot", Color3.fromRGB(255, 78, 81))
local tag2 = chatM.MakeTag("Owner", Color3.fromRGB(32, 0, 38))
chatM.SetTag(speaker, {tag1, tag2})
chatM.SetChatColor(speaker, Color3.fromRGB(255, 204, 49))
chatM.SetNameColor(speaker, Color3.fromRGB(12, 79, 9))

chatM.SendChatMessage(speaker,"All", "Here are some of the tags and chat colors!")

chatM.ResetChatColor(speaker)
chatM.RemoveTags(speaker)

chatM.SendChatMessage(speaker,"All", "Thats not all! There are some other features, like a filter function and a chat bubble function!")
