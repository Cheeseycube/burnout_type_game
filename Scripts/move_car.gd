extends RigidBody3D

@export var rotation_speed = 5

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	var steering_input = Input.get_axis("ui_right", "ui_left")
	var torque = Vector3(0, steering_input * rotation_speed, 0)
	print(torque)
	apply_torque(torque)
	
