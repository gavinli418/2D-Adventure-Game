// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Move(){
var dir = argument0;
var components = global.components[dir];
var dx = components[0];
var dy = components[1];
if(state == states.idle){
	x_from = x_pos;
	y_from = y_pos;
	
	x_to = x_pos + dx;
	y_to = y_pos + dy;
	
	x_pos = x_to;
	y_pos = y_to;
	
	state = states.walking;
}
}