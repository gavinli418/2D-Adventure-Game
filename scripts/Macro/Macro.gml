// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Macro(){
gml_pragma("global", "Macro()");
#macro tile_width 32
#macro tile_height 32
enum directions {
	right,
	up,
	left,
	down
	
}
global.components = [];
global.components[directions.right] = [1,0];
global.components[directions.up] = [0,-1];
global.components[directions.left] = [-1,0];
global.components[directions.down] = [0,1];
}