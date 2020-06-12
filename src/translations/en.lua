local translations, getText = { }
translations.en = {
	-- Main messages
	greeting = "<FC>Welcome to <B>#powers</B>! Press <B>H</B> or type <B>!help</B> to learn more.",
	ownerAnnounce = "<FC><B>[#powers]</B> %s",

	-- Victory
	mentionWinner = "<FC>%s<FC> won the round!",
	noWinner = "<FC>No one won the round. :(",

	-- Lobby
	minPlayers = "At least <B>2</B> players must be in the room for the game to start.",

	-- Powers
	powers = {
		lightSpeed = "Light Speed",
		laserBeam = "Laser Beam",
		wormHole = "Worm Hole",
		doubleJump = "Double Jump",
		helix = "Helix",
		dome = "Dome",
		lightning = "Lightning",
		superNova = "Supernova",
		meteorSmash = "Meteor Smash",
		gravitationalAnomaly = "Gravitational Anomaly",
		deathRay = "Death Ray",
		atomic = "Atomic",
		judgmentDay = "Judgment Day"
	},
	powersDescriptions = {
		lightSpeed = "Moves your mouse in the light speed, pushing all enemies around.",
		laserBeam = "Shoots a laser beam so strong that enemies can feel it.",
		wormHole = "Teleports your mouse ahead through a Worm Hole.",
		doubleJump = "Performs an auxiliar and high double jump.",
		helix = "Speeds up your mouse diagonally with a powerful helix.",
		dome = "Creates a protector dome that pushes all enemies around.",
		lightning = "Summons a potent lightning that electrifies the enemies.",
		superNova = "Starts a supernova that destroys all enemies around.",
		meteorSmash = "Smashes the enemies like a meteor crash.",
		gravitationalAnomaly = "Starts a gravitational anomaly.",
		deathRay = "Toasts the enemies with the powerful and mysterious death ray.",
		atomic = "Randomly changes all players' size.",
		judgmentDay = "Revives all dead enemies, them all linked to each other."
	},

	unlockPower = "<FC>[<VI>•<FC>] You have unlocked the following power(s): %s",

	-- Level names
	levelName = {
		[000] = "Mutant",
		[010] = "Necromancer",
		[020] = "Scientist",
		[030] = "Titan",
		[040] = { "Wizard", "Wizardess" },
		[050] = "Reality Controller",
		[060] = { "Lord of Spells", "Lady of Spells" },
		[070] = "Shamanic Summoner",
		[080] = "The Pestilence Horseman",
		[090] = "The Famine Horseman",
		[100] = "The War Horseman",
		[110] = "The Death Horseman",
		[120] = "The Void"
	},

	newLevel = "<FC>%s<FC> just reached level <VI>%d<FC>!",
	level = "Level %d",

	-- Help
	helpTitles = {
		[1] = "Powers!",
		[2] = "Commands",
		[3] = "Contribute",
		[4] = "What's new?"
	},
	helpContent = {
		[1] = "<FC><p align='center'>#POWERS!</p>\n\n" ..
			"<J>Your goal in this game is to survive from opponents' attacks.\n\n" ..
			"<N>There are a variety of powers <font size='12'>- which are unlocked by reaching " ..
				"higher levels -</font> to attack and defend.\n" ..
			"Type <FC><B>!powers</B><N> to learn more about the powers you have unlocked so far!" ..
				"\n\n" ..
			"%s\n\n" .. -- enableParticles
			"This game has been developed by %s"
		,
		[2] = "<FC><p align='center'>GENERAL COMMAN DS</p><N>\n\n", -- commands
		[3] = "<FC><p align='center'>CONTRIBUTE<N>\n\n" ..
			"We love Open Source <font color='#E91E63'>♥</font>! You can view and modify " ..
				"the source code of this game on <a href='event:print_" ..
				"github.com/a801-luadev/powers'><font color='#087ECC'>Github</font></a>.\n\n" ..
			"Maintaining the game is strictly voluntary, so any help regarding " ..
				"<V>Code<N>, <V>bugfix and reports<N>, <V>suggestions and feature" ..
				" enhancements<N>, <V>map making <N>is welcome and very well appreciated.\n" ..
			"<p align='left'>• You can <FC>report bugs <N>or <FC>suggest <N>on " ..
				"<a href='event:print_discord.gg/quch83R'><font color='#087ECC'>" ..
				"Discord</font></a> and/or on <a href='event:print_" ..
				"github.com/a801-luadev/powers'><font color='#087ECC'>Github</font></a>.\n" ..
			"• You can <FC>submit maps <N>in our <a href='event:print_" ..
				"atelier801.com/topic?f=5&t=918371'><font color='#087ECC'>Map Submissions " ..
				"Thread on Forums</font></a>.\n\n" ..
			"<p align='center'>You can also <FC>donate</FC> any amount <a href='event:print_" ..
				"a801-luadev.github.io/?redirect=powers'><font color='#087ECC'>here</font></a>" ..
				" to help maintaining the game. All funds obtained through the link are going" ..
				" to be invested in constant game updates and general improvements.</p>"
		,
		[4] = "<FC><p align='center'>WHAT'S NEW?</p><N>\n\n" ..
			"• Module ~~became~~ official.\n" ..
			"• Module has been entirely rewritten."
	},

	-- Commands
	commands = {
		help = "Opens this menu.",
		powers = "Opens a menu that lists all powers and their info.",
		profile = "Opens your or someone's profile.",
		leaderboard = "Opens the global leaderboard.",

		map = "Manages the map rotation of the game.",
		msg = "Sends a message to the room",
		ban = "Bans a player from the game.",
		unban = "Unbans a player from the game.",
		permban = "Bans permanently a player from the game."
	},
	commandsParameters = {
		profile = "[player_name]* ",
		map = "[add|rem|ls|save]* [@map ...] ",
		msg = "[message]* ",
		ban = "[player_name]* [ban_time] [reason] ",
		unban = "[player_name]* ",
		permban = "[player_name]* [reason] "
	},

	-- Profile
	profileData = {
		rounds = "Rounds",
		victories = "Victories",
		kills = "Kills",
		xp = "Experience"
	},

	-- Leaderboard
	leaderboard = "Leaderboard",
	leaderboardIsLoading = "<BL>[<VI>•<BL>] The leaderboard is still loading. Try again in " ..
		"a few seconds.",

	-- Map management
	addMap = "<T>[<VI>•<T>] The map <J>@%s</J> was added to the local map queue.",
	remMap = "<T>[<VI>•<T>] The map <J>@%s</J> was removed from the local map queue.",
	listMaps = "<T>[<VI>•<T>] Maps (<J>#%s</J>): %s",

	-- Warning
	enableParticles = "<ROSE>Do NOT forget to ENABLE the special effects/particles in order to " ..
		"see the game properly. (In 'Menu' → 'Options', next to the 'Room List')</ROSE>",

	-- Ban
	ban = "%s <ROSE>has been banned from #powers by %s <ROSE>for %d hours. Reason: %s",
	unban = "<ROSE>You have been unbanned by %s",
	isBanned = "<ROSE>You are banned from #powers until %s (%d hours to go).",
	permBan = "%s <ROSE>has been banned permanently from #powers by %s<ROSE>. Reason: %s",
	cantPermUnban = "<BL>[<VI>•<BL>] You cannot ban a user that is banned permanently."
}