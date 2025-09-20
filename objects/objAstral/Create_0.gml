///@description Define Values
playerStats = 
{
	down: sprAstralWalkDown,
	left: sprAstralWalkLeft,
	right: sprAstralWalkRight,
	up: sprAstralWalkUp,
	downRun: sprAstralRunDown,
	leftRun: sprAstralRunLeft,
	rightRun: sprAstralRunRight,
	upRun: sprAstralRunUp
};

moveStats = 3;
canMove = true;
interaction = false;

stopPlayer = function()
{
	image_index = 0;
	image_speed = 0;
	switch(sprite_index)
	{
		case playerStats.leftRun:
			sprite_index = playerStats.left;
			break;
		case playerStats.rightRun:
			sprite_index = playerStats.right;
			break;
		case playerStats.upRun:
			sprite_index = playerStats.up;
			break;
		case playerStats.downRun:
			sprite_index = playerStats.down;
			break;
	}
}
	