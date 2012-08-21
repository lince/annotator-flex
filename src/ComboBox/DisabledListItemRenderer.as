package ComboBox
{
	import mx.controls.Label;
	
	public class DisabledListItemRenderer extends Label
	{          
		private var _enabled:Boolean = true;
		
		/**
		 *  Constructor.
		 */
		public function DisabledListItemRenderer()
		{
			super();
		}    
		
		/**
		 *  @private
		 */
		override public function set data(value:Object):void
		{
			if (value != null && ((value is XML && value.@enabled == 'false')
				|| value.enabled==false || value.enabled=='false')){
				this._enabled = false;
			}else{
				this._enabled = true;
			}
			super.data = value;
		}    
		
		override protected function updateDisplayList(unscaledWidth:Number,
													  unscaledHeight:Number):void
		{
			super.updateDisplayList(unscaledWidth, unscaledHeight);
			if (!this._enabled) {
				textField.setColor(getStyle("disabledColor"));
			}else{
				textField.setColor(getStyle("color"));
			}
		}                                  
	}
}