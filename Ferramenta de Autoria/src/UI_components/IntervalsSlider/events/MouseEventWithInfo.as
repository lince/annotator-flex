package UI_components.IntervalsSlider.events
{
	import flash.events.MouseEvent;

	public class MouseEventWithInfo extends MouseEvent
	{
		private var info:String;
		
		public function MouseEventWithInfo(eventName:String)
		{
			super(eventName);
		}
		
		public function setInfo(info:String):void{
			this.info = info;
		}
		
		public function getInfo():String{
			return info;
		}
	}
}