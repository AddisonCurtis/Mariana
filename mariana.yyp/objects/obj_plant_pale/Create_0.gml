/// @description Object to create pale plants
// You can write your code in this editor
uniTime = shader_get_uniform(sh_wv_effct,"Time");
uniTexel = shader_get_uniform(sh_wv_effct,"Texel");

spr_id = irandom_range(21,25);

if (spr_id == 21)
{
	sprite_index = spr_plant20;
}
else if (spr_id == 22)
{
	sprite_index = spr_plant22;
}
else if (spr_id == 23)
{
	sprite_index = spr_plant23;
}
else if (spr_id == 24)
{
	sprite_index = spr_plant24;
}
else if (spr_id == 25)
{
	sprite_index = spr_plant25;
}