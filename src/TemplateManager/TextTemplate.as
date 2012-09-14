package TemplateManager
{
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	
	import mx.controls.TextArea;

	/**
	 * 
	 * classe de template de apresentação de texto
	 * 
	 */	
	public class TextTemplate extends TemplateManager
	{
		public function TextTemplate()
		{
		}
		
		public function getColor():Object{
			return 0xFFFFFF;
		}
		
		/**
		 * 
		 * @param myFormat
		 * @return 
		 * retorna texto recebido como parametro formatado de acordo com as definições de template
		 * 
		 */		
		public function getTextStyle(myFormat:TextFormat):TextFormat{
			myFormat.color = 0x000000;
			myFormat.size = 16;
			myFormat.bold = true;
			myFormat.font = "Arial";			
							
			return myFormat;
		}	
	}
}