extends MeshInstance3D

func _process(delta):
	var dissolve = cos(Time.get_ticks_msec() / 1000.0)
	dissolve = (dissolve + 1) / 2.0
	
	get_active_material(0).set_shader_parameter("dissolve", dissolve)
