extends KinematicBody

var enemy_speed = 20
var facing_speed = 180

func _ready():
pass

func _physics_process(delta):
var enemy_body = $enemy_area.get_overlapping_bodies()
var enemy_velocity = Vector3()
if enemy_body.size() != 0:
	  for b in enemy_body:
			var pos = global_transform.basis.xform(Vector3(0,0,-1) * facing_speed)
			var plbody_pos = b.global_transform.origin
			 if b.is_in_group("player"):
				   enemy_velocity = plbody_pos - pos
				   move_and_collide(enemy_velocity.normalized())
