extends CharacterBody2D

func _ready():
	%InputHandler.set_multiplayer_authority(name.to_int())
	$Authority.visible = is_multiplayer_authority()

func _physics_process(delta):
	if not is_multiplayer_authority(): return

	velocity = %InputHandler.vector * 500
	move_and_slide()
	print(%InputHandler.vector)

# Cheat
func _input(event):
	if Input.is_action_just_pressed("ui_accept"):
		position = Vector2.ZERO
