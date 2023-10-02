extends Area2D


@export var speed : float = 200;
var moveDir = Vector2.ZERO;

func Move():
	position += moveDir * get_process_delta_time() * speed;

func SetMoveDirection(direction):
	moveDir = direction;

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	Move();
