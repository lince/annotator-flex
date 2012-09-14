package
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
    
	/**
	 * 
	 * classe usada para enviar eventos com informações das diferentes interfaces
	 * extende a classe Event
	 * 
	 */	
	public class EventWithInfo extends Event
	{
		private var info:ArrayCollection = new ArrayCollection();
		
		/**
		 * 
		 * @param eventName
		 * construtor da classe recebe o nome do evento para cadastrá-lo
		 * 
		 */		
		public function EventWithInfo(eventName:String)
		{
			super(eventName, true, true);	
		}	
		
		/**
		 * 
		 * @param info
		 * recebe como parametro um arrayCollection para setar como informação 
		 * 
		 */		
		public function setInfo(info:ArrayCollection):void{
			this.info = info;
		}
		
		/**
		 * 
		 * @return 
		 * retorna o arrayCollection que foi setado junto com a definição do evento
		 * 
		 */		
		public function getInfo():ArrayCollection{
			return info;
		}
	}
}