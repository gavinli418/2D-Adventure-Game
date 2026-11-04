/// @description Insert description here
// You can write your code in this editor
life -= 1;
if (life < 30) // start fading out in last 30 frames
{
    alpha = life / 30;
}

if (life <= 0)
{
    instance_destroy();
}
