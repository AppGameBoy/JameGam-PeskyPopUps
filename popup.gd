extends Control


# Called when the node enters the scene tree for the first time.
func _ready():

	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Panel/Miliseconds.text = "%s" % $Timer.time_left
	#print_debug($Timer.time_left)
	pass



func _on_button_pressed():
	queue_free()
	pass
	


func _on_timer_timeout():
	Globals.MaxWindows +=1
	queue_free()
	pass # Replace with function body.
