extends Sprite

var color_speed = 0.001
var value_speed = -0.005
var value_limit = [0.7,1.0]

func _ready():
	modulate.h = 0
	modulate.s = 0.25
	

func _physics_process(delta):
	modulate.h = wrapf(modulate.h + color_speed,0,1)
	modulate.v = modulate.v + value_speed
	if (modulate.v <= value_limit[0] and value_speed < 0) or (modulate.v >= value_limit[1] and value_speed > 0):
		value_speed *= -1
