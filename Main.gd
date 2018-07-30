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
		$Panel2.hide()
		$Panel3.hide()
		$Panel4.hide()
		startCounter = false
		counter = 0

func _on_Box_body_entered(body):
	if body is KinematicBody:
		print ("a")
		$Panel.show()
		startCounter = true


func _on_FlowerKey_body_entered(body):
	if body is KinematicBody:
		$Panel2.show()
		startCounter = true


func _on_Campfire_body_entered(body):
	if body is KinematicBody:
		$Panel3.show()
		startCounter = true


func _on_Box2_body_entered(body):
	if body is KinematicBody:
		$Panel4.show()
		startCounter = true


func _on_Area_body_entered(body):
	if body is KinematicBody:
		get_tree().change_scene("World2.tscn")
		print("Ok")
