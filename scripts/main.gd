extends Node
var only_once : bool = true
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	if only_once: 
#		only_once = false

	if Input.is_action_pressed("exit"):
		get_tree().quit()
