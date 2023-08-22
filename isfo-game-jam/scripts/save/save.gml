// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save(){
	ini_open("highscore.ini");
	ini_write_real("highscore", "score", points);
	ini_close();
	
	highscore = points;
}