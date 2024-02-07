depth=-9000;

if(instance_exists(char_player)){
	_top=(char_player.y-camera.y>130+char_player.sprite_height);
	char_player._moveable_menu=false;
}else{
	_top=false;
}
_offset=-100
Anim_Create(id,"_offset",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,_offset,-_offset,20)
_menu=0;
_choice_soul=0;
_choice=0;
_choice_item=0;
_choice_item_soul=0;
_choice_item_operate=0;
_choice_item_operate_soul=11.5;
_choice_phone=0;
_choice_phone_soul=0;

_prefix="{font 1}{shadow true}{color `white`}{instant true}{depth "+string(-9999)+"}";
_inst_name=noone;
_inst_menu=noone;
_inst_item=noone;
_inst_item_use=noone;
_inst_item_info=noone;
_inst_item_drop=noone;
_inst_stat_0=noone;
_inst_stat_1=noone;
_inst_phone=noone;
_surface=surface_create(room_width*2,room_height*2);
_show_width=array_create(3,0)
_inst_name=instance_create_depth(23+_offset,(52+6+(_top ? 270 : 0)+2)/2,0,text_typer);
_inst_name.text=_prefix+Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.NAME);
_destroy_time=array_create(3,0)
_inst_menu=instance_create_depth(_offset+(32+6+46)/2,(168+6+14)/2,0,text_typer);
_inst_menu.text=_prefix+"{space_y 1}"+(Item_GetNumber()<=0 ? "{color_text `gray`}" : "")+"ITEM"+(Item_GetNumber()<=0 ? "{color_text `white`}" : "")+"&"+"STAT"+(Phone_GetNumber()>0 ? "&"+"CELL" : "");
audio_play_sound(snd_menu_switch,0,false);