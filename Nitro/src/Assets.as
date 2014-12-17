package
{
	import flash.display.Bitmap;
	import flash.utils.Dictionary;
	
	import starling.textures.Texture;
	import starling.textures.TextureAtlas;

	
	public class Assets
	{
		[Embed(source="../media/graphics/nitroSheet.png")]
		public static const nitroAtlas:Class;
		
		[Embed(source="../media/graphics/nitroSheet.xml", mimeType="application/octet-stream")]
		public static const nitroAtlasXML:Class;
		
		private static var gameTextures:Dictionary = new Dictionary();
		private static var nitroTextureAtlas:TextureAtlas;
		
		public static function getAtlas():TextureAtlas
		{
			if (nitroTextureAtlas == null) 
			{
				var texture:Texture = getTexture("nitroAtlas");
				var xml:XML = XML(new nitroAtlasXML());
				nitroTextureAtlas = new TextureAtlas(texture, xml);
			}
			return nitroTextureAtlas;
		}
		
		public static function getTexture(name:String):Texture
		{
			if (gameTextures[name] == undefined)
			{
				var bitmap:Bitmap = new Assets[name]();
				gameTextures[name] = Texture.fromBitmap(bitmap);
			}
			return gameTextures[name];
			
		}
		
	}
}