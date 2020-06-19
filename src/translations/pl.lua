--Translated by Coffe_bear#5753 & Godzi#0941 
translations.pl = {
	greeting = "<FC>Witaj w <B>#powers</B>!\n" ..
		"\t• Naciśnij <B>H</B> albo napisz <B>!help</B> by dowiedzieć się więcej o module.\n" ..
		"\t• Naciśnij <B>O</B> albo napisz <B>!powers</B> by dowiedzieć się więcej o mocach.n",

	mentionWinner = "<FC>%s<FC> wygrał/a rundę!",
	noWinner = "<FC>Nikt nie wygrał rundy. :(",

	minPlayers = "Co najmniej <B>2</B> graczy musi być w pokoju żeby gra się rozpoczęła.",

	powers = {
		lightSpeed = "Prędkość Światła",
		laserBeam = "Wiązka Laseru",
		wormHole = "Tunel Czasoprzestrzenny",
		doubleJump = "Podwójny skok",
		helix = "Spirala",
		dome = "Kopuła",
		lightning = "Błyskawica",
		superNova = "Supernova",
		meteorSmash = "Miażdzący Meteor",
		gravitationalAnomaly = "Anomalie Grawitacyjne",
		deathRay = "Promienie Śmierci",
		atomic = "Atomowy",
		dayOfJudgement = "Dzień Sądu"
	},
	powersDescriptions = {
    lightSpeed = "Przenosi twoją myszkę w prędkość światła, spychając wszystkich wrogów dookoła.",
		laserBeam = "Wystrzeliwuje potężną wiązke laserową.",
		wormHole = "Teleportuje twoją myszkę przez tunel czasoprzestrzenny.",
		doubleJump = "Wykonuje drugi pomocniczy skok.",
		helix = "Przyśpiesza twoją myszkę po przekątnej z potężną spiralą.",
		dome = "Tworzy ochronną kopułe która odpycha wszystkich przeciwników dookoła.",
		lightning = "Przywołuje silną błyskawice która elektryzuje wszystkich przeciwników dookoła.",
		superNova = "Rozpoczyna Supernove która niszczy wszystkich przeciwników dookoła.",
		meteorSmash = "Miażdży przeciwników meteorytem.",
		gravitationalAnomaly = "Zaczyna anomalie grawitacyjną.",
		deathRay = "Smaży przeciwników potężnym i tajemniczym promieniem śmierci.",
		atomic = "Zmienia losowo rozmiar wszystkich graczy.",
		dayOfJudgement = "Ożywia wszystkich martwych wrogów, wszyscy są że sobą połączeni."
	
	},
	powerType = {
		atk = "ATK (%d)",
		def = "OBR",
		divine = "DVN"
	},

	unlockPower = "<FC>[<J>•<FC>] Odblokowałeś/aś następującą(e) moc(e): %s",

	levelName = {
		[000] = "Mutant",
		[010] = { "Nekromanta", "Nekromantka" }, 
		[020] = "Naukowiec",
		[030] = "Tytan",
		[040] = { "Czarodziej", "Czarodziejka" },
		[050] = { "Kontroler Rzeczywistości", " Kontrolerka Rzeczywistości" },
		[060] = { "Pan Zaklęć", "Pani Zaklęć" },
		[070] = { "Szamański Przywoływacz", "Szamańska Przywoływawczyni" },
		[080] = "Jeździec Zarazy",
		[090] = "Jeździec Głodu",
		[100] = "Jeździec Wojny",
		[110] = "Jeździec Śmierci",
		[120] = "Pustka"
	},

	newLevel = "<FC>%s<FC> uzyskał(a) kolejny poziom <B>%d</B>!",
	level = "Poziom %d",

	helpTitles = {
		[1] = "Moce!",
		[2] = "Komendy",
		[3] = "Przyczyń się",
		[4] = "Co Nowego?"
	},
	helpContent = {
		[1] = "<FC><p align='center'>#POWERS!</p>\n\n" ..
			"<J>Twoim celem w tym module jest przetrwanie przed atakami przeciwników.\n\n" ..
			"<N>Istnieje wiele mocy <font size='12'>- które są odblokowywane poprzez osiąganie " ..
				"wyższych poziomów -</font> by atakować i bronić się.\n" ..
			"Napisz <FC><B>!powers</B><N> aby dowiedzieć się więcej o odblokowanych do tej pory mocach!" ..
				      "\n\n" ..
			"%s\n\n" .. 
			"Ten moduł został opracowany przez %s"
		,
		[2] = "<FC><p align='center'>GENERAL COMMANDS</p><N>\n\n<font size='12'>", -- commands
		[3] = "<FC><p align='center'>CONTRIBUTE<N>\n\n" ..
			"Uwielbiamy otwarte źródła <font color='#E91E63'>♥</font>! możesz zobaczeć i zmodyfikować  " ..
				"kod źródłowy tego modułu na <a href='event:print_" ..
				"github.com/a801-luadev/powers'><font color='#087ECC'>Github</font></a>.\n\n" ..
			"Utrzymanie tego modułu jest ściśle dobrowolne oraz wszelka pomoc dotycząca " ..
				"<V>Kodu<N>, <V>Naprawy błędów oraz sugestie<N>, <V>Funkcje raportów" ..
				" Ulepszeń<N>, <V>tworzenia map <N>Jest mile widziana oraz bardzo doceniana.\n" ..
			"<p align='left'>• Możesz  <FC>zgłaszać błedy <N>albo <FC>sugestie <N>na " ..
				"<a href='event:print_discord.gg/quch83R'><font color='#087ECC'>" ..
				"Discord</font></a> i/oraz na <a href='event:print_" ..
				"github.com/a801-luadev/powers'><font color='#087ECC'>Github</font></a>.\n" ..
			"• Możesz <FC>przesłać mapy <N>na naszym <a href='event:print_" ..
				"atelier801.com/topic?f=6&t=888677'><font color='#087ECC'>Mapy zgłoszeniowe " ..
				"Wątek na forum</font></a>.\n\n" ..
			"<p align='center'>Możesz także <FC>przekazać</FC> dowolną kwotę darowizny <a href='event:print_" ..
				"a801-luadev.github.io/?redirect=powers'><font color='#087ECC'>here</font></a>" ..
				" aby pomóc w utrzymaniu modułu. Wszystkie fundusze uzyskane za pośrednictwem linku idą " ..
				" do zainwestowania w ciągłe aktualizacje modułu i ogólne ulepszenia.\n\n" ..
			"<a href='event:print_atelier801.com/topic?f=6&t=888676'>" ..
				"<font size='18' color='#087ECC'>Wątek na Forum</font></a></p>"
		,
		[4] = "<FC><p align='center'>Co Nowego?</p><N>\n\n" ..
			"• Moduł ~~stał się~~ oficjalny.\n" ..
			"• Moduł został całkowicie przepisany na nowo.
			"• Możesz teraz dowiedzieć się więcej o mocach.
	},

	commandDescriptions = {
		help = "Otwiera to menu.",
		powers = "Otwiera menu z listą wszystkich mocy i ich informacji.",
		profile = "Otwiera twój lub kogoś profil.",
		leaderboard = "Otwiera globalną tablicę wyników.",

		pw = "Chroni pokój hasłem. Wyślij puste, aby je usunąć.",

		mapEditQueue = "Zarządza obrotem mapy w grze.",
		mapSaveQueue = "Zapisuje obrót mapy w grze.",
		review = "Włącza tryb przeglądania.",
		np = "Ładuje nową mapę.",
		npp = "Planuje załadowanie następnej mapy.",

		msg = "Wysyła wiadomośc do pokoju.",
		ban = "Banuje gracza z gry.",
		unban = "Odbanowywuje gracza z gry.",
		permban = "Pernamentnie banuje gracza z gry.",

		promote = "Promuje gracza do określonej roli lub daje mu określone uprawnienia.",
		demote = "Obniża gracza o określonej randze lub odbiera określone uprawnienia."
	},
	commandsParameters = {
		profile = "[gracz] ",

		pw = "[hasło] ",

		mapEditQueue = "[dodaj|usuń]<R>*</R> [@mapa ...]<R>*</R> ",
		mapSaveQueue = "[zapisz]<R>*</R> ",
		np = "[@mapa]<R>*</R> ",
		npp = "[@mapa]<R>*</R> ",

		msg = "[wiadomość]<R>*</R> ",
		ban = "[gracz]<R>*</R> [Czas] [powód] ",
		unban = "[gracz]<R>*</R> ",

		permban = "[gracz]<R>*</R> [powód] ",
		promote = "[gracz]<R>*</R> [permisja|ranga ...]<R>*</R> ",
		demote = "[gracz]<R>*</R> [permisja|ranga ...]<R>*</R> "
	},
	["or"] = "albo",

	profileData = {
		rounds = "Rundy",
		victories = "Wygrane",
		kills = "Zabójstwa",
		xp = "Doświadczenie",
		badges = "Odznaki"
	},

	leaderboard = "Ranking",
	leaderboardIsLoading = "<BL>[<VI>•<BL>] Ranking wciąż się ładuje.Spróbuj ponownie za " ..
		"za kilka sekund.",

	addMap = "<BV>[<FC>•<BV>] Mapa <J>@%s</J> Została dodana do kolejki.",
	remMap = "<BV>[<FC>•<BV>] Mapa <J>@%s</J> Została usunięta z kolejki.",
	listMaps = "<BV>[<FC>•<BV>] Mapy (<J>#%d</J>): %s",

	enableParticles = "<ROSE>
NIE zapomnij WŁĄCZYĆ efektów specjalnych / cząstek,aby " ..
		"poprawnie zobaczyć moduł. (W 'Menu' → 'Opcje', obok 'List Pokoi')</ROSE>",

	ban = "%s <ROSE>Został zbanowany z #powers przez %s <ROSE>na %d godzin. Powód: %s",
	unban = "<ROSE>Zostałeś/aś odbanowany przez %s",
	isBanned = "<ROSE> Zostałeś zablokowany z #powers aż do GMT+2 %s (%d godzin do końca).",
	permBan = "%s <ROSE>Został zablokowany pernamentnie z #powers przez %s<ROSE>. Powód: %s",
	cantPermUnban = "<BL>[<VI>•<BL>] Nie możesz odblokować osoby która jest już pernamentnie zablokowana.",

	playerGetPermissions = "<BL>[<VI>•<BL>] %s <BL>ma teraz następujące uprawnienia: <B>%s</B>",
	playerLosePermissions = "<BL>[<VI>•<BL>] %s <BL>usunięto następujące uprawniena: " ..
		"<B>%s</B>",
	playerGetRole = "<FC>%s <FC>Został awansowany do <font color='#%x'>%s</font>!",
	playerLoseRole = "<FC>%s <FC>Nie jest już <font color='#%x'>%s</font> więcej.",

	enableReviewMode = "<BV>[<FC>•<BV>]  <FC>Tryb Przeglądania Mapy<BV> jest włączony. Następne rundy " ..
		"nie<B>będą</B> zliczały statystyk a pojawiające się mapy są testowane pod kątem rotacji map " ..
		"modułu. Wszystkie moce zostały włączone i boskie moce są bardziej prawdopobdne do wydarzenia się!",
	disableReviewMode = "<BV>[<FC>•<BV>] The <FC>Tryb Przeglądania Mapy<BV> został wyłączony oraz " ..
		"wszystko wraca do normy w następnej rundzie!",

	getBadge = "<FC>%s<FC> właśnie odblokował/a #powers odznakę!",

	setPassword = "<BL>[<VI>•<BL>] %s <BL>ustawił hasło na %q.",
	removePassword = "<BL>[<VI>•<BL>] %s <BL>usunął/ęła hasło z pokoju."
}
