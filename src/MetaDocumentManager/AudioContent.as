package MetaDocumentManager
{
	public class AudioContent
	{
		private var source:String;
		private var beginTime:Number;
		private var endTime:Number;
		private var id:String;
		private var comment:String;
		private var data:String;
		private var status:Boolean = false;
		private var path:String;
				
		public function AudioContent()
		{
			path = "";
		}
		
		public function set audioId(id:String):void{
			this.id = id;	
		}
		
		public function get audioId():String{
			return id; 
		}
		
		public function set audioBeginTime(beginTime:Number):void{
			this.beginTime = beginTime;
		}
		
		public function get audioBeginTime():Number{
			return beginTime;
		}
		
		public function set audioEndTime(endTime:Number):void{
			this.endTime = endTime;
		}
		
		public function get audioEndTime():Number{
			return endTime;
		}
		
		public function set audioSource(source:String):void{
			this.source = source;
		}
		
		public function get audioSource():String{
			return source;
		}
		
		public function set audioComment(comment:String):void{
			this.comment = comment;
		}
		
		public function get audioComment():String{
			return comment;
		}
		
		public function set audioData(data:String):void{
			this.data = data;
		}
		
		public function get audioData():String{
			return data;
		}
		
		public function set audioStatus(status:Boolean):void{
			this.status = status;
		}
		
		public function get audioStatus():Boolean{
			return status;
		}
		
		public function set audioPath(path:String):void{
			this.path = path;
		}
		
		public function get audioPath():String{
			return path;
		}
	}	
}