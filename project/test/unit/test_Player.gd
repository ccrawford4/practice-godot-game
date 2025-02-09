extends 'res://addons/gut/test.gd'

var Player = load("res://player.gd")

func test_start():
	var player = autofree(Player.new()) # Create the player
	var collisionShape = autofree(CollisionShape2D.new()) # Create the collision shape
	collisionShape.name = "CollisionShape2D"
	player.add_child(collisionShape) # Ensure player has this child
	
	add_child(player) # Ensure player is on the scene
	
	var pos = Vector2(0, 0)
	player.start(pos)
	assert_eq(player.position, pos)
	assert_eq(player.rotation, 0)
	assert_true(player.visible)
	assert_false(collisionShape.disabled)

func test_return_apples():
	var player = autofree(Player.new())
	var result = player.return_apples();
	
	assert_eq(result, "Apple")
	
