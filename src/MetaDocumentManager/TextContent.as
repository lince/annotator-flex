package MetaDocumentManager
{
	public class TextContent
	{
		private var beginTime:Number;
		private var endTime:Number;
		private var id:String;
		private var source:String;
		private var backgroundColor:String;
		private var posX:Number;
		private var posY:Number;
		private var width:Number;
		private var height:Number;
		private var data:String;
		private var tvType:Boolean;
		private var mobileType:Boolean;
				
		public function TextContent()
		{
		}
		
		public function set textId(id:String):void{
			this.id = id;
		}
		
		public function get textId():String{
			return id;
		}
		
		public function set textBeginTime(beginTime:Number):void{
			this.beginTime = beginTime;
		}
		
		public function get textBeginTime():Number{
			return beginTime;
		}
		
		public function set textEndTime(endTime:Number):void{
			this.endTime = endTime;
		}
		
		public function get textEndTime():Number{
			return endTime;
		}
		
		public function set textSource(source:String):void{
			this.source = source;
		}
		
		public function get textSource():String{
			return source;
		}	
		
		public function set textData(data:String):void{
			this.data = data;
		}
		
		public function get textData():String{
			return data;
		}
		
		public function set textBackgroundColor(backgroundColor:String):void{
			this.backgroundColor = backgroundColor;
		}
		
		public function get textBackgroundColor():String{
			return backgroundColor;
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
		
		public function set textHeight(height:Number):void{
			//seta valor da altura para valor em % para o NCL
			//obs: 340px é a altura do video na ferramenta
			this.height = parseFloat((height/340).toFixed(2))*100;		
		}
		
		public function get textHeight():Number{
			//retorna altura em %
			return height;
		}
		
		public function set textWidth(width:Number):void{
			//seta valor do comprimento para valor em % para o NCL
			//obs: 520px é a comprimento do video na ferramenta	
			this.width = parseFloat((width/520).toFixed(2))*100;
		}
		
		public function get textWidth():Number{
			//retorna comprimento em %
			return width;
		}
		
		public function set textOnTv(tvType:Boolean):void{
			this.tvType = tvType; 
		}
		
		public function get textOnTv():Boolean{
			return tvType;
		}
		
		public function set textOnMobile(mobileType:Boolean):void{
			this.mobileType = mobileType;
		}
		
		public function get textOnMobile():Boolean{
			return mobileType;
		}
	}
}