function HealthBar(){
	var x_margin = 20;
	var y_margin = 20;
	var sp_width = sprite_get_width(spr_healthBar);
	var sp_height = sprite_get_height(spr_healthBar);
	var scale = 6;
	var sp2_width = browser_width; // view_wport[0] will be better if ever we switch to viewports for scrolling rooms
	
	// Player 1 health bar
	draw_sprite_ext(spr_healthBar,		0, x_margin, y_margin, scale, scale, 0, c_white,	1); // primary image
	draw_sprite_part_ext(spr_healthBar, 1, 0, 0, sp_width * p1.hp / MAX_HP, sp_height, x_margin, y_margin, scale, scale, c_green, 1); // sub image - health bar color
	
	// Player 2 health bar
	draw_sprite_ext(spr_healthBar,		0, sp2_width - x_margin, y_margin, -scale, scale, 0, c_white, 1); // primary image
	draw_sprite_part_ext(spr_healthBar, 1, 0, 0, sp_width * p2.hp / MAX_HP, sp_height, sp2_width - x_margin, y_margin, -scale, scale, c_red, 1); // green for good, red for bad
	
}