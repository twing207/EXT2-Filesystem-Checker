package
{
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class BottomLayer extends Sprite
	{
		public function BottomLayer()
		{
			super();
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
			
		}
		
		private function onAddedToStage():void {
			trace("starling framework Initialized");
		}
	}
}