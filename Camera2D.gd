extends Camera2D

var xx
var yy
var totaldeltas
var totalxx
var totalyy
# Called when the node enters the scene tree for the first time.
func _ready():
	totaldeltas = 1
	totalxx = 1
	totalyy = 1
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	totaldeltas += 1

	xx = 1 - abs(get_parent().linear_velocity.normalized().x)
	yy = 1 - abs(get_parent().linear_velocity.normalized().y)
	totalxx += xx
	totalyy += yy
	zoom.x = xx / totaldeltas
	zoom.y = xx / totaldeltas
	pass
