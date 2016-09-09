package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;

class PlayState extends FlxState
{
	private var nave1:Enemigo;
	private var nave2:Enemigo;
	private var nave:Personaje;
	private var balaDePers:Bala;
	override public function create():Void
	{
		super.create();
		
		nave = new Personaje(0, 130);
 		add(nave);
		balaDePers = new Bala();
		add(balaDePers);
		
		nave1 = new Enemigo(40, Reg.superejeY);
		nave2 = new Enemigo(50, Reg.superejeY);
 		
 		add(nave1);
		add(nave2);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		if (nave1.y > FlxG.height-nave1.height)
 		{
 			remove(nave1);
 			nave1.destroy();
 		}
		if (nave2.y > FlxG.height-nave2.height)
 		{
 			remove(nave2);
 			nave2.destroy();
 		}
		if (FlxG.keys.justPressed.SPACE) 
		{
			if (balaDePers.y == 1000 && balaDePers.x == 1000) 
			{
				balaDePers.Disparar(nave);
			}
		}
		if (balaDePers.y < 0) 
		{
			balaDePers.Posicionar();
		}
		nave1.Move();
		nave2.Move();
	}
}
