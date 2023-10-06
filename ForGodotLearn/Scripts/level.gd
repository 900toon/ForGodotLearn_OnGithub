extends Node2D


var SnotBall_Scene : PackedScene = preload("res://Scenes/Character/SnotBall.tscn")

func _on_safe_zone_player_enter_safe_zone(body):
	print(body); # Replace with function body.



func _on_player_snot_ball(snotBallPosition, direction):
	
	
	var snotBall = SnotBall_Scene.instantiate();
	snotBall.position = snotBallPosition;
	snotBall.rotation = direction.angle();
	
	snotBall.SetMoveDirection(direction);
	$SnotBallHolder.add_child(snotBall);
	pass # Replace with function body.

#var Test_Scene : PackedScene = preload("res://test/test_collision_rigidbody.tscn");
#func _on_player_test_signal(testObjectPosition, direction):
#	print("emit")
#	var testObject = Test_Scene.instantiate();
#	add_child(testObject);
#	testObject.position = testObjectPosition;
#	testObject.linear_velocity = direction;
	
