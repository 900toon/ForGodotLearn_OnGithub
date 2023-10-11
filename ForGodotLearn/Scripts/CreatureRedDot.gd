extends CharacterBody2D

const speed : float = 90.0;

var random = RandomNumberGenerator.new();
func Movement():
	var moveDir = Vector2 (random.randf_range(-1, 1), random.randf_range(-1, 1));
	velocity = moveDir * speed;
	move_and_slide();
	

func _process(_delta):
	Movement();
