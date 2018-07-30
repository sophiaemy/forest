extends Area

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	#$Panel.hide()
	#self.hide()
	pass
	
func _process(delta):
	rotate_x(deg2rad(60 *delta))
	rotate_y(deg2rad(60 *delta))


		