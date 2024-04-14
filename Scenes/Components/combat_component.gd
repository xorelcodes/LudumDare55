extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	var test_enemy = Enemies.create_dog()
	print(test_enemy)
	print("Enemy created: " + test_enemy.name_combat + " Health: " + str(test_enemy.health_max))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
