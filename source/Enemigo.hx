package;

import flixel.FlxSprite;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.FlxG;

/**
 * ...
 * @author ...
 */
class Enemigo extends FlxSprite
{
	private var thebadguyX:Int;
  	private var thebadguyY:Int;
  	private var thebadguyModifier:Bool;
 	private var equalizer:Int;
	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		
		makeGraphic(5, 5, 0xFFFF000F);
		//velocity.y = 50;
  		thebadguyY = 8;
 		equalizer = 5;
		
	}
	
	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
	}
	public function Move():Void
 	{
 		if (Reg.movementModifier == true)
 		{
 		    x += 0.5;
 			y = Reg.superejeY;
 		}
 		if (Reg.movementModifier == false)
 		{
 			x -= 0.5;
 			y = Reg.superejeY;
 		}
 		if (x == 155)
 		{
 			Reg.movementModifier = false;
 			Reg.superejeY += thebadguyY;
 		}
 		if (x == equalizer)
 		{
 			Reg.movementModifier = true;
 			Reg.superejeY += thebadguyY;
 		}
  	}
	
}