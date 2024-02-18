extends Control

var MaxWindows =10
var time = 0
var captchaDog 	= preload("res://CaptchaDog.tscn")
var captchaBike = preload("res://CaptchaBike.tscn")
var slider 		= preload("res://popupSlider.tscn")
var donate 		= preload("res://popupMultiClick.tscn")
var popup 		= preload("res://popup.tscn")
@onready var label = $Label
#@onready var progress_bar := $ProgressBar
@export var progress_bar: ProgressBar
var pops 
var pop
var object
# Called when the node enters the scene tree for the first time.
func _ready():
	#$Label.text = "%s" % MaxWindows
	#$Label.text = "%s:" % ComputerScreen.MaxWindows
	print(ComputerScreen.MaxWindows)
	ComputerScreen.MaxWindows = 10
	#$Captcha.show()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ComputerScreen.MaxWindows == 0 :
		get_tree().reload_current_scene()
	if progress_bar.value == 15:
		print("you win")
	



func _on_timer_timeout():
	#$Popup.queue_free()
	$ProgressBar.value+=1
	





func _on_timer_2_timeout():
	randomize()
	pops = [captchaDog,captchaBike,slider,donate,popup]
	#var pop = pops[randi() % pops.size()]
	pop = pops.pick_random()
	object = pop.instantiate()
	object.position = Vector2(randi_range(0,600),randi_range(0,400))
	add_child(object)
	
	ComputerScreen.MaxWindows-=1
	$Label.text = "Max Number of Ads: %s" % ComputerScreen.MaxWindows
	print(ComputerScreen.MaxWindows)
	


func _on_speed_up_timer_timeout():
	$SpawnerTimer.wait_time = 2
	if $ProgressBar.value == 50:
		$SpawnerTimer.wait_time = 1
	

