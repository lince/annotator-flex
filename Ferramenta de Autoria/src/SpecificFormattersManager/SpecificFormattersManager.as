package SpecificFormattersManager
{
	public class SpecificFormattersManager
	{
		private var type:String;
		public function SpecificFormattersManager()
		{
		}
		
		public function set outputFileType(type:String):void{
			this.type = type;	
		}
		
		public function get outputFileType():String{
			return type;
		}
	}
}