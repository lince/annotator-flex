package MetaDocumentManager
{
	/**
	 * 
	 * Classe que armazena todas as info de texto. Usada posteriormente para a geração do XML que será utilizado
	 * pelo XSLT para gerar o arquivo NCL
	 * 
	 */
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
		private var isTemplate:Boolean;
				
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
		
		public function set hasTemplate(isTemplate:Boolean):void{
			this.isTemplate = isTemplate;
		}
		
		public function get hasTemplate():Boolean{
			return isTemplate;
		}
		
		/**
		 * 
		 * @param posX
		 * transforma coordenada vista na ferramenta para proporcional em porcentagem em NCL
		 *	obs: 520px é a comprimento do video na ferramenta	
		 * 
		 */		
		public function set positionX(posX:Number):void{					
			this.posX = parseFloat((posX/520).toFixed(2))*100;			
		}
		
		/**
		 * 
		 * @return 
		 * retorna coordenada em %
		 */		
		public function get positionX():Number{			
			return posX;					
		}		
		
		/**
		 * 
		 * @param posY
		 * transforma coordenada vista na ferramenta para proporcional em porcentagem em NCL
		 *	obs: 340px é a altura do video na ferramenta
		 */		
		public function set positionY(posY:Number):void{			
			this.posY = parseFloat((posY/340).toFixed(2))*100; 
		}
		
		/**
		 * 
		 * @return 
		 * retorna coordenada em %
		 */		
		public function get positionY():Number{			
			return posY;			
		}
		
		/**
		 * 
		 * @param height
		 * seta valor da altura para valor em % para o NCL
		 *	obs: 340px é a altura do video na ferramenta
		 * 
		 */		
		public function set textHeight(height:Number):void{			
			this.height = parseFloat((height/340).toFixed(2))*100;		
		}
		
		/**
		 * 
		 * @return 
		 * retorna altura em %
		 * 
		 */		
		public function get textHeight():Number{
			return height;
		}
		
		/**
		 * 
		 * @param width
		 * seta valor do comprimento para valor em % para o NCL
		 *	obs: 520px é a comprimento do video na ferramenta	
		 * 
		 */		
		public function set textWidth(width:Number):void{			
			this.width = parseFloat((width/520).toFixed(2))*100;
		}
		
		/**
		 * 
		 * @return 
		 * retorna comprimento em %
		 */		
		public function get textWidth():Number{			
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