package
{
	import IntervalsSlider.MultiThumbHSlider;

	public class ContentSlider
	{
		private var mainSlider:MultiThumbHSlider = new MultiThumbHSlider();
		private var imageSlider:MultiThumbHSlider = new MultiThumbHSlider();
		private var textSlider:MultiThumbHSlider = new MultiThumbHSlider();
		private var imageSliderActive:Boolean = false;
		private var textSliderActive:Boolean = false;
		
		public function ContentSlider()
		{
		}
		
		public function set mainContentSlider(slider:MultiThumbHSlider):void{
			this.mainSlider = slider;
		}
		
		public function get mainContentSlider():MultiThumbHSlider{
			return mainSlider;
		}
		
		public function isImageSliderActive():Boolean{
			return imageSliderActive;
		}
		
		public function isTextSliderActive():Boolean{
			return textSliderActive;
		}
		
		public function set imageContentSlider(imageSlider:MultiThumbHSlider):void{
			this.imageSlider = imageSlider;
			imageSliderActive = true;
		}
		
		public function get imageContentSlider():MultiThumbHSlider{
			return imageSlider;
		}
		
		public function set textContentSlider(textSlider:MultiThumbHSlider):void{
			this.textSlider = textSlider;
			textSliderActive = true;
		}
		
		public function get textContentSlider():MultiThumbHSlider{
			return textSlider;
		}		
	}
}