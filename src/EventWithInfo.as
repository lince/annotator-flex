package
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
    
	//classe usada para enviar eventos com informações das diferentes interfaces
	public class EventWithInfo extends Event
	{
		private var info:ArrayCollection = new ArrayCollection();
		
		public function EventWithInfo(eventName:String)
		{
			super(eventName, true, true);	
		}	
		
		public function setInfo(info:ArrayCollection):void{
			this.info = info;
		}
		
		public function getInfo():ArrayCollection{
			return info;
		}
	}
}