extends Spatial

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var counter = 0
var counterThreshold = 5
var startCounter = false

func _ready():
	pass
	
func _process(delta):
	if (startCounter == true):
		counter = counter + delta

	if (counter > counterThreshold):
		$Panel.hide()
		startCounter = false
		counter = 0

func _on_Box_body_entered(body):
	if body is KinematicBody:
		print ("a")
		$Panel.show()
		startCounter = true
