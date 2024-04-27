extends RayCast2D

var distance = Vector2(1,1)
var origin = position
var resistance
var middle

signal splash

# Called when the node enters the scene tree for the first time.
func _ready():
	resistance = 1
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	if is_colliding():
		distance = to_local(get_collision_point())
		get_parent().get_parent().apply_impulse(Vector2(0, -distance.y), origin)
		middle = to_local(get_collision_point()) / 2
		splash.emit()
		#$wheel/wheel.shape.set_radius(distance.y)
	if is_colliding() == false:
		middle = target_position
	pass
	queue_redraw()
	
	
func _draw():
	
	
	var white : Color = Color.WHITE
	draw_circle(middle, distance.y, white)
