extends RigidBody3D

export var jump_velocity

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var input := Vector3.ZERO
	input.x = Input.get_axis("move_left", "move_right")
	
	apply_central_force(input * 1200.0 * delta)
