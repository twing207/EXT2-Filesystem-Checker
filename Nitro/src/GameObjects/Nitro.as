package GameObjects
{
	import starling.display.Sprite;
	import starling.events.Event;

	public class Nitro extends Sprite
	{
		public function Nitro()
		{
			super();
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage():void
		{
			
		}		
		
	}
}