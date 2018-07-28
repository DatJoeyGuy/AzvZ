/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 771F76A0
/// @DnDArgument : "code" "if room=room3 && spawn=true{$(13_10)	spawn=false$(13_10)	$(13_10)	switch(global.select){$(13_10)		case 0:$(13_10)		//lyn char of choice$(13_10)			instance_create_layer(room_width/3,room_height/3,1,characterlynroom3)$(13_10)			break$(13_10)		case 1:$(13_10)			instance_create_layer(room_width/3,room_height/3,1,obj_testin1)$(13_10)			break$(13_10)	}$(13_10)}"
if room=room3 && spawn=true{
	spawn=false
	
	switch(global.select){
		case 0:
		//lyn char of choice
			instance_create_layer(room_width/3,room_height/3,1,characterlynroom3)
			break
		case 1:
			instance_create_layer(room_width/3,room_height/3,1,obj_testin1)
			break
	}
}