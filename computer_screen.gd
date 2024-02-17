extends Control

var MaxWindows : int = 5
var time = 0
var captchaDog 	= preload("res://CaptchaDog.tscn")
var captchaBike = preload("res://CaptchaBike.tscn")
var slider 		= preload("res://popupSlider.tscn")
var donate 		= preload("res://popupMultiClick.tscn")
var popup 		= preload("res://popup.tscn")



# Called when the node enters the scene tree for the first time.
func _ready():
	#$Captcha.show()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	
	pass


func _on_timer_timeout():
	#$Popup.queue_free()
	$ProgressBar.value+=1
	pass # Replace with function body.




func _on_timer_2_timeout():
	randomize()
	var pops = [captchaDog,captchaBike,slider,donate,popup]
	#var pop = pops[randi() % pops.size()]
	var pop = pops.pick_random()
	var object = pop.instantiate()
	object.position = Vector2(100,100)
	add_child(object)
	pass # Replace with function body.
