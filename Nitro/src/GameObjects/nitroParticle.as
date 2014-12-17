package GameObjects
{
	import starling.display.MovieClip;
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class nitroParticle extends Sprite
	{
		private var art:MovieClip;
		private var offsetX:Number;
		private var offsetY:Number;
		private var gotoPositionX:Number;
		private var gotoPositionY:Number;
		
		public function nitroParticle()
		{
			super();
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage():void
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			DrawParticle();
		}
		
		private function DrawParticle():void {
			art = new MovieClip(Assets.getAtlas().getTextures("NitroPart1_"), 20);
			this.addChild(art);
		}
		
		//accessor functions for updating position etc
		
		public function updatePosition(x:Number, y:Number):void {
			
			
		}
		
		public function setOffsetFromPlayerCenter(x:Number, y:Number):void {
			offsetX = x;
			offsetY = y;
		}
		
		
	}
}