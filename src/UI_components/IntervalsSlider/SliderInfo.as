package UI_components.IntervalsSlider
{
	import mx.collections.ArrayList;

	public class SliderInfo
	{
		private var sliderArray:ArrayList = new ArrayList();
		
		public function SliderInfo()
		{
		}
		
		public function getSliderInfo():ArrayList{
			return sliderArray;
		}
		
		public function setSliderInfo(slider:MultiThumbHSlider):void{
			sliderArray.addItem(slider);
		}
	}
}