extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _on_bike_pressed():
	Globals.MaxWindows +=1
	queue_free()
	pass # Replace with function body.
