/// @description object to create various plants
// You can write your code in this editor
uniTime = shader_get_uniform(sh_wv_effct,"Time");
uniTexel = shader_get_uniform(sh_wv_effct,"Texel");

spr_id = irandom_range(1,20);

if (spr_id == 1)
{
	sprite_index = spr_plant1;
}
else if (spr_id == 2)
{
	sprite_index = spr_plant2;
}
else if (spr_id == 3)
{
	sprite_index = spr_plant3;
}
else if (spr_id == 4)
{
	sprite_index = spr_plant4;
}
else if (spr_id == 5)
{
	sprite_index = spr_plant5;
}
else if (spr_id == 6)
{
	sprite_index = spr_plant6;
}
else if (spr_id == 7)
{
	sprite_index = spr_plant7;
}
else if (spr_id == 8)
{
	sprite_index = spr_plant8;
}
else if (spr_id == 9)
{
	sprite_index = spr_plant9;
}
else if (spr_id == 10)
{
	sprite_index = spr_plant10;
}
else if (spr_id == 11)
{
	sprite_index = spr_plant11;
}
else if (spr_id == 12)
{
	sprite_index = spr_plant12;
}
else if (spr_id == 13)
{
	sprite_index = spr_plant13;
}
else if (spr_id == 14)
{
	sprite_index = spr_plant14;
}
else if (spr_id == 15)
{
	sprite_index = spr_plant15;
}
else if (spr_id == 16)
{
	sprite_index = spr_plant16;
}
else if (spr_id == 17)
{
	sprite_index = spr_plant17;
}
else if (spr_id == 18)
{
	sprite_index = spr_plant18;
}
else if (spr_id == 19)
{
	sprite_index = spr_plant19;
}
else if (spr_id == 20)
{
	sprite_index = spr_plant20;
}