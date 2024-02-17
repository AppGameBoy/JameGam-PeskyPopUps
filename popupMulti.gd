extends Control
@onready var _yesafterno:=$VBoxContainer/HBoxContainer/yesafterno
@onready var _noafteryes:=$VBoxContainer/HBoxContainer/noafteryes
@onready var _reallyyes:= $VBoxContainer/HBoxContainer/reallyYes
@onready var _reallyno:= $VBoxContainer/HBoxContainer/reallyNo
# Called when the node enters the scene tree for the first time.
func _ready():
	#$VBoxContainer/HBoxContainer/yesafterno.hide()
	#$VBoxContainer/HBoxContainer/noafteryes.hide()
	#$VBoxContainer/HBoxContainer/reallyYes.hide()
	#$VBoxContainer/HBoxContainer/reallyNo.hide()
	#_yesafterno.hide()
	#_noafteryes.hide()
	#_reallyno.hide()
	#_reallyyes.hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass




func _on_timer_timeout():
	#queue_free()
	pass
	



func _on_yes_pressed():
	
	pass # Replace with function body.


func _on_no_pressed():
	$VBoxContainer/Label.text = "are you sure"
	$VBoxContainer/HBoxContainer/yes.hide()
	$VBoxContainer/HBoxContainer/yesafterno.show()
	pass # Replace with function body.


func _on_yesafterno_pressed():
	$VBoxContainer/Label.text = "But think about the children"
	$VBoxContainer/HBoxContainer/no.hide()
	$VBoxContainer/HBoxContainer/noafteryes.show()
	pass # Replace with function body.


func _on_noafteryes_pressed():
	$VBoxContainer/Label.text = "really?!"
	$VBoxContainer/HBoxContainer/yesafterno.hide()
	$VBoxContainer/HBoxContainer/noafteryes.hide()
	$VBoxContainer/HBoxContainer/reallyYes.show()
	$VBoxContainer/HBoxContainer/reallyNo.show()
	pass # Replace with function body.


func _on_really_yes_pressed():
	
	queue_free()
	pass # Replace with function body.


func _on_really_no_pressed():
	#game over or something 
	pass # Replace with function body.
