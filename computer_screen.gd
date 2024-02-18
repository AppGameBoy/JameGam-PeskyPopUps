extends Control

#var MaxWindows =10
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
	print(Globals.MaxWindows)
	Globals.MaxWindows = 10
	$YouWin.hide()
	$SpeedUp.hide()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Globals.MaxWindows == 0 :
		get_tree().reload_current_scene()
	if progress_bar.value == 100:
		print("you win")
		$YouWin.show()
		$SpawnerTimer.stop()
	
	



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
	
	Globals.MaxWindows-=1
	$Label.text = "Max Number of Ads: %s" % Globals.MaxWindows
	print(Globals.MaxWindows)
	


func _on_speed_up_timer_timeout():
	$SpeedUp.show()
	$SpawnerTimer.wait_time = 1.5
	print($SpawnerTimer.wait_time)
	$LabelTimer.start(1)
	





func _on_label_timer_timeout():
	$SpeedUp.hide()

