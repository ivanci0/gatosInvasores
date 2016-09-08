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
	public function new(?X:Float=0, ?Y:Float=0, ?SimpleGraphic:FlxGraphicAsset) 
	{
		super(X, Y, SimpleGraphic);
		makeGraphic(5, 5, 0xFFFF000F);
		thebadguyX = 1;
		thebadguyY = 8;
		thebadguyModifier = true;
	}
	
	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
			if (x < 155 && thebadguyModifier == true)
			{
				x += thebadguyX;
			}
			else if (x == 155 && thebadguyModifier == true)
			{
				y += thebadguyY;
				thebadguyModifier = false;
			}
			if (x > 5 && thebadguyModifier == false)
			{
				x -= thebadguyX;
			}
			else if (x == 5 && thebadguyModifier == false)
			{
				y += thebadguyY;
				thebadguyModifier = true;
			}
	}
}