package IntervalsSlider.events
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	

	public class TrackHighlightEvent extends Event
	{
		private var info:ArrayCollection = new ArrayCollection();
		
		public function TrackHighlightEvent(eventName:String)
		{
			super(eventName, true);			
		}
		
		public function setInfo(info:ArrayCollection):void{
			this.info = info;
		}
		
		public function getInfo():ArrayCollection{
			return info;
		}		
	}
}