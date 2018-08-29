//This is to determine the secret that the object works with.
/*
x = global.playerx;
y = global.playery;

if instance_exists(obj_secret)
{
	set = instance_nearest(x,y,obj_secret.c_set) //c_set is the secret that this object should work with
}
else
{
	set = false;	
}