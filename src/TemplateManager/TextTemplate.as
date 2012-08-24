package TemplateManager
{
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	
	import mx.controls.TextArea;

	public class TextTemplate extends TemplateManager
	{
		public function TextTemplate()
		{
		}
		
		public function getColor():Object{
			return 0xFFFFFF;
		}
		
		public function getTextStyle(myFormat:TextFormat):TextFormat{
			myFormat.color = 0x000000;
			myFormat.size = 16;
			myFormat.bold = true;
			myFormat.font = "Arial";			
							
			return myFormat;
		}	
	}
}