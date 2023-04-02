--[[

	    _______________________________
	   |                               |
	   |                               |
	   |            HELLO!     	   |
	   |                               |
	   |_______________________________|
	   
	   This module makes it easier to use the various chat service functions, like adding speakers and chat tags
	   This can not do everything, but it makes the vast majority of things easier.
	   
	   If you want a demo, please look at the 'Demo' script
	   
	   To use the module, you must require it. To do that, follow these steps:
	   	1. Place the folder in ServerScriptService
	   	2. In your script, put the following code in at the top of the script
	   		local chatM = require(game.ServerScriptService:WaitForChild("EzChatService").MainModule)
	   	3. Your good! Now to do something like adding a tag, do the following:
	   		chatM:AddTag(speaker)
	   		
	   	If there are any errors, please contact me! 
		   	Roblox: Claym1x
		   	Disco:  Clayyyy#1366
	   	
	    _______________________________
	   |                               |
	   |                               |
	   |        DOCUMENTATION          |
	   |                               |
	   |_______________________________|
	   
	   GetSpeakerFromPlayer(player: Instance)
	   		Returns a speaker from a player instance
	   		
	   	GetSpeakerFromName(speakerName: String)
	   		Returns the speaker that has the provided name
	   		
	   	MakeTag(text: String, color: Color3)
	   		Retutns a table with formatted data. Can be put into a list for SetTag
	   		
	   	SetTag(speaker: Instance, tagTable: List)
	   		Gives the selected speaker the tags included in the table. View the 'Demo' script
	   		
	   	RemoveTag(speaker: Instance)
	   		Removes all tags from the speaker
	   		
	   	SetChatColor(speaker: Instance, color: Color3)
	   		Sets the message text color for the speaker
	   		
	   	ResetChatColor(speaker: Instance)
	   		Resets the chat color
	   		
	   	SetNameColor(speaker: Instance, color: Color3)
	   		Sets the speaker's name color
	   		
	   	AddSpeaker(speakerName: String, channel: String)
	   		Adds a new speaker with the name to the selected channel and returns the speaker (Default channel is 'All')
	   		
	   	JoinChannel(speaker: Instance, channel: String)
	   		Makes the speaker join the channel (Default channel is 'All')
	   	
	   	SendChatmessage(speaker: Instance, channel: String, text: String)
	   		Makes the speaker send a chat message in the selected channel
	   	
	   	ChatBubble(object: Instance, text: String)
	   		Creates a chat bubble above the selected object in the workspace
	   		
	   	Filter(text: String, playerFrom: Instance)
	   		Returns filtered text
	   	
	    _______________________________
	   |                               |
	   |                               |
	   |         UPDATES/TODO          |
	   |                               |
	   |_______________________________|
	   
	   Updates:
	   		4.2.23 - Release!
	   		
	   	TODO:
	   		Reset Name Color
	   		Better error catching
	   		More functions and features
	   		Local chat editing
	   
	   
]]
