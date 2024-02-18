extends Control
var control = load("res://computer_screen.gd")


func _on_timer_timeout():
	#queue_free()
	pass

func _on_h_slider_value_changed(value):
	if value == 100:
		print("100")
		Globals.MaxWindows +=1
		queue_free()
		
