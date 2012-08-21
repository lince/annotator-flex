package
{
	import IntervalsSlider.MultiThumbHSlider;
	
	import mx.collections.ArrayCollection;
	
	import spark.components.HSlider;

	public class SilenceSliderInfo
	{
		private var silenceSlider:MultiThumbHSlider = new MultiThumbHSlider();
		private var posY:Number;
		private var boundariesArray:ArrayCollection = new ArrayCollection();
		private var colorsArray:Array = new Array();
		private var arrayDataProvider:ArrayCollection = new ArrayCollection();
		private var tracker:HSlider = new HSlider();
		
		public function SilenceSliderInfo(silenceSlider:MultiThumbHSlider)
		{
			this.silenceSlider = silenceSlider;
		}
		
		public function set yPosition(posY:Number):void{
			this.posY = posY;
		}
		
		public function get yPosition():Number{
			return posY;
		}
		
		public function set boundaries(boundariesArray:ArrayCollection):void{
			for(var i:int; i < boundariesArray.length; i++){
				this.boundariesArray.addItem(boundariesArray.getItemAt(i));
			}
		}
		
		public function get boundaries():ArrayCollection{
			return boundariesArray;
		}
		
		public function set sliderColorsArray(colorsArray:Array):void{
			this.colorsArray = colorsArray;
		}
		
		public function get sliderColorsArray():Array{
			return colorsArray;
		}
		
		public function set sliderDataProviderArray(arrayDataProvider:ArrayCollection):void{
			this.arrayDataProvider = arrayDataProvider;			
		}
		
		public function get sliderDataProviderArra():ArrayCollection{
			return arrayDataProvider;
		}
		
		public function set sliderTracker(tracker:HSlider):void{
			this.tracker = tracker;
		}
		
		public function get sliderTracker():HSlider{
			return tracker;
		}
	}
}