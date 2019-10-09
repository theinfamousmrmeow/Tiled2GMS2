#macro MAXBOUNCEANGLE 70
#macro MINBOUNCEANGLE 30
#macro SHEEP_MAX 12
#macro SIDE_OFFSET 48

#macro FILE_UNLOCKS "unlocks.ini"

#macro VERSION "0.9.3"

#macro TERMINAL_VELOCITY 3

#macro HAND_PRIMARY 0
#macro HAND_OFF 1
#macro BACK 10
#macro EMPTY -1
#macro ACTION_IDLE 0
#macro ACTION_FLAP 1
#macro ACTION_DIVE 2
#macro ACTION_DYING 3
#macro ACTION_ENTER 4

#macro BOUNCE_SPEEDUP 1.05

#macro TICKS_TO_SECONDS 60
#macro CELEBRATE_SECONDS 3

#macro GAMESTATE_PLAYING 0
#macro GAMESTATE_PLAYERDEAD 1
#macro GAMESTATE_PLAYERDYING 2
#macro GAMESTATE_TITLE 3
#macro GAMESTATE_SUDDENDEATH 4

#macro DEPTH_OBSTACLES -9000
#macro DEPTH_ENEMIES -9900

#macro POWERUP_TIMER 500

#macro FOREGROUND_DEPTH -9000

//CONTROLS
#macro CTRL_NONE 0
#macro CTRL_KB 3
#macro CTRL_PLAYER1 1 
#macro CTRL_PLAYER2 2
#macro CTRL_AI 3


////ADVERTISEMENTS
#macro APP_ID "ca-app-pub-3449005372449418~4907277406"
#macro AD_ID_INTERSTITIAL "ca-app-pub-3449005372449418/7126246632"
#macro AD_INTERVAL 60
//FEEDBACK
#macro URL_FEEDBACK "https://docs.google.com/forms/d/e/1FAIpQLSffOu5VhALDFaioTMswxeQ3-xqF3orAeQ2uulKyECSPzuO-3Q/viewform?usp=sf_link"
#macro URL_REVIEW "https://play.google.com/store/apps/details?id=com.wizardsage.flapticore"
#macro URL_DEVELOPER "https://play.google.com/store/apps/details?id=com.wizardsage.flapticore"

#macro	STATUS_NORMAL 0
#macro	STATUS_CURSED 1
//
#macro HIGHSCORE_FILENAME "highscoretable.ini"
#macro SHIELD_SIZE 8
#macro z_terminal_velocity -3


#macro STR_BUILT "_built"
#macro STR_DESTROYED "_destroyed"

//
enum slot {
	primaryHand,
	offHand,
	back,
	belt,
	head,
	body,
	amulet
}

enum statuses {
	normal,
	poison,
	curse
}

enum actions {
	walk,
	throw,
	stand,
	hit,
	flee,
	die,
	walkon,
	enter,
	leave,
	celebrate,
	catch,
	KO,
	held,
	thrown,
	sulk
}

enum factions {
	red,
	blue,
	creeps
}

enum round_outcomes {
	undecided,
	player1win,
	player2win,
	tie
}

enum gameState {
	playing,
	roundOver,
	matchOver,
	suddenDeath,
	suddenDeathOver,
	overWorld,
	menu,
	title,
	paused
}

enum missions {
	title,
	menu,
	suddenDeath,
	duel,
	onslaught,
	flock,
	boss,
	overworld,
	chronicles
}

enum gameMode {
	versus,
	arcade,
	saga,
	chronicles,
	conquest,
	overworld,
	title
}

enum heldItemType {
	weapon,
	shield
}

enum missionResults {
	playerVictory,
	AIVictory,
	player2Victory,
	noneYet,
	victory,
	loss,
	tie
}

enum unlockables {
	reaper,
	valkyrie,
	goblin,
	troll,
	
	
}

enum thoughts {
	defense,
	offense,
	chaos,
	avoid,
	kill
}

enum weaponColumns {
	name,
	damage,
	weight
}

enum shieldColumns{
	name,
	weight,
	soak
}

enum characterColumns {
	name = 0,
	vitality,
	strength,
	agility
}

enum unlocks {
	buildings,
	characters,
	weapons,
	shields
}

enum buildings{
	versus,
	shop,
	arcadeTowerOne,
	arcadeTowerTwo,
	arcadeTowerThree,
	forest,
	longship,
	bridge
}

enum characters {
	Lothgar,
	Ragnar,
	DeathKnight,
	Valkyrie,
	Troll,
	Goblin,
	Wizard,
	Reaper,
	Slime,
	Shade
}

enum damageTypes{
	sharp,
	blunt,
	magic
}