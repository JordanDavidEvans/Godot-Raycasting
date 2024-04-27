extends RayCast2D

var to
var from
var fromlocal
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	to = get_collision_point()
	from = Vector2()
	fromlocal = to_local(to)
	
	if is_colliding():
		rotation += 0.01
	else:
		print("stopped")
	
	$Line2D.set_point_position(0, from)
	$Line2D.set_point_position(1, fromlocal)
	pass


func _on_ray_cast_2d_3_target_found(target):
	$Line2D.set_point_position(1, target)
	rotation -= 0.005
	pass # Replace with function body.
