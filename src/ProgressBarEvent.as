package
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;

	public class ProgressBarEvent extends Event
	{
		private var slidersTotal:int;
		private var progress:int;
		private var info:ArrayCollection = new ArrayCollection();
		
		public function ProgressBarEvent(eventName:String)
		{
			super(eventName, true);	
		}
		
		public function setInfo(progress:int, slidersTotal:int):void{
			this.progress = progress;
			this.slidersTotal = slidersTotal;
			info.addItem(progress);
			info.addItem(slidersTotal);
		}
		
		public function getInfo():ArrayCollection{
			return info;
		}
	}
}