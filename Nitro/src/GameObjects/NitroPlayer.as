package GameObjects
{
	import starling.display.MovieClip;
	import starling.display.Sprite;
	import starling.events.Event;

	public class NitroPlayer extends Sprite
	{
		private var bodyArt:MovieClip;
		private var partsArray:Array;
		
		public function NitroPlayer()
		{
			super();
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
			
		}
		
		//wait for this object to be added to the display list
		private function onAddedToStage():void
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			createNitroArt();
		}		
		
		//create the textures for diplay of body
		private function createNitroArt():void {
			bodyArt = new MovieClip(Assets.getAtlas().getTextures("NitroBody"), 20);
			bodyArt.x = Math.ceil(-bodyArt.width/2);
			bodyArt.y = Math.ceil(-bodyArt.height/2);
			this.addChild(bodyArt);
			
			//create an array for the body parts. 
			partsArray = new Array();
			partsArray.push(new nitroParticle());
			
		}
		
		
		
	}
}