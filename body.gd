extends RigidBody2D





func  _integrate_forces(state):

	if Input.is_action_pressed("space"):
		apply_impulse($RayCast2D.to * 0.01 )
	

		
	
