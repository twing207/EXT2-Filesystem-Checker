package
{
	import GameObjects.NitroPlayer;
	
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
			var nitro:NitroPlayer = new NitroPlayer();
		    nitro.x = stage.stageWidth / 2;
			nitro.y = stage.stageHeight / 2;
			trace("stageWidth = " + stage.stageWidth);
			this.addChild(nitro);
		}
	}
}