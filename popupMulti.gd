extends Control
#@onready var _yesafterno:=$VBoxContainer/HBoxContainer/yesafterno
@onready var yesafterno = $VBoxContainer/HBoxContainer/yesafterno
@onready var noafteryes = $VBoxContainer/HBoxContainer/noafteryes
@onready var really_yes = $VBoxContainer/HBoxContainer/reallyYes
@onready var really_no = $VBoxContainer/HBoxContainer/reallyNo


#@onready var _reallyyes:= $VBoxContainer/HBoxContainer/reallyYes
#@onready var _reallyno:= $VBoxContainer/HBoxContainer/reallyNo
# Called when the node enters the scene tree for the first time.
func _ready():
	#$VBoxContainer/HBoxContainer/yesafterno.hide()
	#$VBoxContainer/HBoxContainer/noafteryes.hide()
	#$VBoxContainer/HBoxContainer/reallyYes.hide()
	#$VBoxContainer/HBoxContainer/reallyNo.hide()
	#yesafterno.hide()
	#noafteryes.hide()
	#really_yes.hide()
	#really_no.hide()
	pass # Replace with function body.
	




func _on_timer_timeout():
	#queue_free()
	pass
	



func _on_yes_pressed():
	
	pass # Replace with function body.


func _on_no_pressed():
	ComputerScreen.MaxWindows +=1
	
	
	
	queue_free()

	pass # Replace with function body.

