extends RayCast2D

var to
var from
var fromlocal
var target

signal target_found

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	to = get_collision_point()
	from = Vector2()
	fromlocal = to_local(to)

	if is_colliding():
		print("found")
		target = to_local(get_collider().position)
		print(get_collider().global_position)
		$Line2D.set_point_position(1, target)
		
		target_found.emit(target)
	else:
		rotation += 1
		print("stopped")
		$Line2D.set_point_position(1, fromlocal)
	$Line2D.set_point_position(0, from)
	
	pass
