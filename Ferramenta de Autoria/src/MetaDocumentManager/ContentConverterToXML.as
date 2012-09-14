package MetaDocumentManager
{
	import flash.xml.XMLDocument;
	import flash.xml.XMLNode;
	
	import mx.rpc.xml.SimpleXMLDecoder;
	import mx.rpc.xml.SimpleXMLEncoder;
	import mx.utils.ObjectUtil;
	
	/**
	 * 
	 * Classe utilizada no processo de conversão dos objetos com conteúdos complementares
	 *	para XML para ser utilizada no processo de geração do NCL 
	 * 
	 */	
	public class ContentConverterToXML
	{
		public function ContentConverterToXML()
		{
		}
		
		/**
		 * 
		 * @param contentSlider
		 * @return 
		 * retorna objeto formatado em XML
		 */		
		public function objectToXML(contentSlider:Object):XML{
			var qName:QName = new QName("form");
			var xmlDocument:XMLDocument = new XMLDocument();
			var simpleXMLEncoder:SimpleXMLEncoder = new SimpleXMLEncoder(xmlDocument);	
			var xmlNode:XMLNode = simpleXMLEncoder.encodeValue(contentSlider, qName, xmlDocument);
			var xml:XML = new XML(xmlDocument.toString());			
			return xml;
		}
	}
}