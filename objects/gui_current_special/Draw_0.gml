draw_set_color(c_white)
draw_set_font(font_2)

if global.special = "none" {
draw_text(x,y+40,"Current Special: None")}

if global.special = "shotgun" {
draw_text(x,y+40,"Current Special: Shotgun")}

if global.special = "jetpack" {
draw_text(x,y+40,"Current Special: Jetpack")}

if global.special = "missile" {
draw_text(x,y+40,"Current Special: Missile")}

if global.special = "flamethrower" {
draw_text(x,y+40,"Current Special: Flamethrower")}

if global.special = "gravity" {
draw_text(x,y+40,"Current Special: Gravity")}

if global.special = "other" {
draw_text(x,y+40,"Current Special: Force Blast")}