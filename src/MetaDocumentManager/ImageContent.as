package MetaDocumentManager
{
	public class ImageContent
	{
		private var beginTime:Number;
		private var endTime:Number;
		private var source:String;
		private var posX:Number;
		private var posY:Number;
		private var height:Number;
		private var width:Number;
		private var id:String;
		private var path:String;
		private var imageHeight_relative:Number;
		private var imageWidth_relative:Number;
		private var originalHeight:Number;
		private var originalWidth:Number;
		private var mobileType:Boolean;
		private var tvType:Boolean;
				
		public function ImageContent()
		{			
		}
		
		public function set imageId(id:String):void{
			this.id = id;	
		}
		
		public function get imageId():String{
			return id; 
		}
		
		public function set imageBeginTime(beginTime:Number):void{
			this.beginTime = beginTime;
		}
		
		public function get imageBeginTime():Number{
			return beginTime;
		}
		
		public function set imageEndTime(endTime:Number):void{
			this.endTime = endTime;
		}
		
		public function get imageEndTime():Number{
			return endTime;
		}
		
		public function set imagePath(path:String):void{
			this.path = path;
		}
		
		public function get imagePath():String{
			return path;
		}
		
		public function set imageSource(source:String):void{
			this.source = source;
		}
		
		public function get imageSource():String{
			return source;
		}
		
		public function set positionX(posX:Number):void{
			//transforma coordenada vista na ferramenta para proporcional em porcentagem em NCL
			//obs: 520px é a comprimento do video na ferramenta			
			this.posX = parseFloat((posX/520).toFixed(2))*100;			
		}
		
		public function get positionX():Number{
			//retorna coordenada em %	
			return posX;
			//return parseFloat(((posX*520)/100).toFixed(0));			
		}
		
		public function set positionY(posY:Number):void{
			//transforma coordenada vista na ferramenta para proporcional em porcentagem em NCL
			//obs: 340px é a altura do video na ferramenta
			this.posY = parseFloat((posY/340).toFixed(2))*100;		
		}
		
		public function get positionY():Number{
			//retorna coordenada em %
			return posY;
			//return parseFloat(((posY*340)/100).toFixed(0));			
		}
		
		public function set imageHeight(height:Number):void{
			//seta valor da altura para valor em % para o NCL
			imageHeight_relative = height;
			this.height = parseFloat((height/340).toFixed(2))*100;			
		}
		
		public function get imageHeight():Number{
			//retorna altura em %
			return height;
		}
		
		public function set imageWidth(width:Number):void{
			//seta valor do comprimento para valor em % para o NCL
			imageWidth_relative = width;
			this.width = parseFloat((width/520).toFixed(2))*100;
		}
		
		public function get imageWidth():Number{
			//retorna comprimento em %
			return width;
		}
		
		/* -- posições relativas ao tamanho original da imagem para visualização na ferramenta --*/
		//não usado
		public function set height_toolRelative(imageHeight_relative:Number):void{
			//recebe valor em % decimal
			this.imageHeight_relative = imageHeight_relative;			
		}
		
		public function get height_toolRelative():Number{
			//retorna altura em %
			return parseFloat((imageHeight_relative/originalHeight).toFixed(2))*originalHeight;
		}
		
		//não usado
		public function set width_toolRelative(imageWidth_relative:Number):void{
			//recebe valor em % decimal
			this.imageWidth_relative = imageWidth_relative;
		}
		
		public function get width_toolRelative():Number{
			//retorna comprimento em %
			return parseFloat((imageWidth_relative/originalWidth).toFixed(2))*originalWidth;
		}
		
		public function set original_imageWidth(originalWidth:Number):void{
			this.originalWidth = originalWidth;
		}
		
		public function get original_imageWidth():Number{
			return originalWidth;
		}
		
		public function set original_imageHeight(originalHeight:Number):void{
			this.originalHeight = originalHeight;			
		}
		
		public function get original_imageHeight():Number{
			return originalHeight;
		}
		
		public function set imageOnTv(tvType:Boolean):void{
			this.tvType = tvType; 
		}
				
		public function get imageOnTv():Boolean{
			return tvType;
		}
		
		public function set imageOnMobile(mobileType:Boolean):void{
			this.mobileType = mobileType;
		}
		
		public function get imageOnMobile():Boolean{
			return mobileType;
		}
		/* -------------------------------------------------------------------------------------- */		
	}
}