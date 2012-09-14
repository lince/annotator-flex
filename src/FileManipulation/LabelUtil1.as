package FileManipulation
{
	import flash.text.AntiAliasType;
	import flash.text.Font;
	import flash.text.GridFitType;
	import flash.text.TextLineMetrics;
	
	import mx.controls.Label;
	import mx.core.Application;
	import mx.core.FlexGlobals;
	import mx.core.UITextFormat;
	import mx.styles.CSSStyleDeclaration;
	import mx.styles.IStyleManager2;
	import mx.styles.StyleManager;
	
	/**
	 * 
	 * Classe útil na representação de valores no label de forma que estes caibam no tamanho definido para o label
	 * 
	 */	
	public class LabelUtil1
	{
		public function LabelUtil1()
		{
		}
		
		/**
		 * 
		 * @param label
		 * @param htmlText
		 * procedimento para comprimir tamanho da fonte para que texto caiba no label
		 */		
		public function constrainTextToWidth( label : Label, htmlText : String ) : void
		{
			var style: CSSStyleDeclaration = FlexGlobals.topLevelApplication.styleManager.getStyleDeclaration("." + label.styleName);			
			//var  style : CSSStyleDeclaration = StyleManager.getStyleDeclaration("." + label.styleName);			
			var fontSize : Number = style.getStyle( "fontSize" ) as Number;
			label.setStyle( "fontSize", fontSize );
			label.htmlText = htmlText;
			label.invalidateSize();
			label.validateNow();
			
			
			while ( getTextWidth( label.text, fontSize, style ) > label.width )
			{
				fontSize = fontSize - 0.5;
				label.setStyle( "fontSize", fontSize );
			}
		}
		
		/**
		 * 
		 * @param text
		 * @param fontSize
		 * @param style
		 * @return 
		 * retorna tamanho do texto
		 * 
		 */		
		static public function getTextWidth( text : String, fontSize : Number, style : CSSStyleDeclaration ) : Number
		{
			var textFormat : UITextFormat =
				new UITextFormat(
					FlexGlobals.topLevelApplication.systemManager,
					//Application.application.systemManager,
					style.getStyle( "fontFamily" ),
					fontSize,
					null,
					style.getStyle( "fontWeight" ) == "bold",
					style.getStyle( "fontStyle" ) == "italic",
					null,
					null,
					null,
					null,
					style.getStyle( "paddingLeft" ),
					style.getStyle( "paddingRight" ),
					style.getStyle( "textIndent" ) );
			textFormat.antiAliasType = flash.text.AntiAliasType.ADVANCED;
			textFormat.gridFitType = flash.text.GridFitType.PIXEL;
			var textMetrics : TextLineMetrics = textFormat.measureText( text );
			return textMetrics.width;                    
		}
	}
}