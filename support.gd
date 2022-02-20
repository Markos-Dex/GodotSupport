extends Node

func getBGMdictionary():
	var path = "res://Assets/bgm"
	var dir = Directory.new()
	var dic = {}
	dir.open(path)
	dir.list_dir_begin()
	while true:
		var file_name = dir.get_next()
		var file_array = file_name.split('.')
		if file_name == "":
			#break the while loop when get_next() returns ""
			break
		elif !file_name.begins_with("."):
			#get_next() returns a string so this can be used to load the images into an array.
			dic[file_array[0]] = path + '/' + file_array[0] + '.' + file_array[1]
	dir.list_dir_end()
	return dic

func getSFXdictionary():
	var path = "res://Assets/sfx"
	var dir = Directory.new()
	var dic = {}
	dir.open(path)
	dir.list_dir_begin()
	while true:
		var file_name = dir.get_next()
		var file_array = file_name.split('.')
		if file_name == "":
			#break the while loop when get_next() returns ""
			break
		elif !file_name.begins_with("."):
			#get_next() returns a string so this can be used to load the images into an array.
			dic[file_array[0]] = path + '/' + file_array[0] + '.' + file_array[1]
	dir.list_dir_end()
	return dic

func _ready():
	pass
