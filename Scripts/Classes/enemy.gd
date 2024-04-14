class_name Enemy

var name_combat: String
var health_max: int

# will become a list or array of attacks the enemy can do
var attacks: String

# will become a list or array of loot the player receives when defeating the enemy
var loot: String
var speed_default: int
var health_current: int
var speed_current: int
var status_effects_default: int
var status_effects_current: int

func setup(e_name: String, e_health: int, e_speed: int, e_status: int):
	name_combat = e_name
	health_max = e_health
	health_current = health_max
	speed_default = e_speed
	speed_current = speed_default
	status_effects_default = e_status
	status_effects_current = status_effects_default