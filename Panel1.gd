extends Panel

var timer = 0
var deleteTime = 5
var shouldIDelete = false

func _ready():
	self.hide()
	print("hi")


func _process(delta):

	if (shouldIDelete):
		timer += delta

		
	if (timer > deleteTime):
		self.hide()


func _on_Box_body_entered(body):
	if body is KinematicBody:
		print("box")
		self.show()
		shouldIDelete = true