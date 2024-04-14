extends Node


func create_dog() -> Enemy: 
	var test_enemy = Enemy.new()
	test_enemy.setup("Dog", 100, 20, GameData.STATUS_EFFECTS.NONE)
	return test_enemy



