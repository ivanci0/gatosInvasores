package;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.FlxG;

/**
 * ...
 * @author ...
 */
class Personaje extends FlxSprite
{
	private var theX:Int;
	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		
		makeGraphic(5, 5);
		
		theX = 2;
		
	}
	
	override public function update(elapsed:Float):Void
 	{
 		super.update(elapsed);
 		
 		if (FlxG.keys.pressed.RIGHT)
 		{
 		if (x <= 155)
 			x += theX;
 		}
 			
 		if (FlxG.keys.pressed.LEFT)
 		{
 			if(x >= 0)
 			x -= theX;
 		}
 	}
}