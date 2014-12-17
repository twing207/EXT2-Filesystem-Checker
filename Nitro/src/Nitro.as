package
{
	import flash.display.Sprite;
	
	import starling.core.Starling;

	import flash.display.StageDisplayState;
	import flash.geom.Rectangle;
	import flash.system.Capabilities;
	import starling.events.ResizeEvent;
	import starling.utils.RectangleUtil;
	import starling.utils.ScaleMode;
	
	[SWF(frameRate="60", width="640", height="1136", backgroundColor="0x333333")]
	public class Nitro extends Sprite
	{
		private var myStarling:Starling;
	
		public const defaultScreenWidth:Number = new Number(640);
		public const defaultScreenHeight:Number = new Number (1136);
		public const ScaleWidth:Number = new Number(Capabilities.screenResolutionX / defaultScreenWidth);
		public const ScaleHeight:Number = new Number(Capabilities.screenResolutionY / defaultScreenHeight);
		
		public function Nitro()
		{
			
			var screenWidth:int=stage.fullScreenWidth;
			var screenHeight:int=stage.fullScreenHeight;
			//var viewPort:Rectangle=new Rectangle(0,0,screenWidth,screenHeight);
			var viewPort:Rectangle = RectangleUtil.fit(
				new Rectangle(0, 0, stage.stageWidth, stage.stageHeight), 
				new Rectangle(0, 0, stage.fullScreenWidth, stage.fullScreenHeight), 
				ScaleMode.SHOW_ALL);
			//myStarling=new Starling(Game,stage,viewPort);
			//myStarling.stage.stageWidth=640;
			//myStarling.stage.stageHeight=1136;
			
			
			trace("screen res: X: "+ Capabilities.screenResolutionX + "Y: " + Capabilities.screenResolutionY);
			//myStarling = new Starling(Game, stage, viewPort);
			myStarling = new Starling(BottomLayer, stage, viewPort);
			myStarling.antiAliasing = 1;
			
			myStarling.start();
		}
	}
}