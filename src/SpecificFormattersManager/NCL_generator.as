package SpecificFormattersManager
{
	import flash.events.Event;
	import flash.external.ExternalInterface;
	import flash.filesystem.File;
	import flash.html.HTMLLoader;
	import flash.net.URLRequest;
	
	import mx.controls.*;
	import mx.controls.Alert;

	public class NCL_generator
	{
		private var html:HTMLLoader = new HTMLLoader();
		private var xmlArea:TextArea = new TextArea();
		private var xslArea:TextArea = new TextArea();
		//private var teste:HTML = new HTML();
				
		private var sampleXML:XML =
			<report-types>
			  <report-type>Report 1</report-type>
			  <report-type>Report 2</report-type>
			  <report-type>Report 3</report-type>
			</report-types>;
		
		private var sampleXSL:XML =  
			<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
			  <xsl:template match="/report-types">
				<table>
				  <tr>
					<th>Options</th>
				  </tr>
				  <tr>
					<xsl:for-each select="report-type">
					  <td><xsl:value-of select="."/></td>
					</xsl:for-each>
				  </tr>
				</table>
			  </xsl:template>
			</xsl:stylesheet>;
		
		public function NCL_generator()
		{
		}
						
		public function init():void{
			// Load the HTML page that has the JS that we'll use to
			// do the XSLT.
			//var teste:String = "@Embed(source='SpecificFormattersManager/xslt.html')";
			trace(File.desktopDirectory.resolvePath("xslt.html").nativePath);
			var urlReq:URLRequest = new URLRequest(File.desktopDirectory.resolvePath("xslt.html").nativePath);
			//teste.location = "";
			html.load(urlReq);
			//html.addEventListener(Event.COMPLETE, completeHandler);
			xmlArea.text = sampleXML;
			xslArea.text = sampleXSL;
		}
		
		/*private function completeHandler(event:Event):void{
			trace("carregou");
		}*/
		
		public function process(html:HTMLLoader, xml:XML, xsl:XML):String{
			var doProcess:Boolean = true;
			try
			{
				// Validate the input XML.
				//var xml:XML = new XML(xmlArea.text);
				if (xml == null || xml.toXMLString().length == 0)
				{
					Alert.show("Please enter some XML to transform.");
					doProcess = false;
				}
			}
			catch (e:Error)
			{
				Alert.show("The XML to transform is malformed.");
				doProcess = false;
			}
			if (doProcess)
			{
				try
				{
					// Validate the input XSLT.
					//var xsl:XML = new XML(xslArea.text);	
					if (xsl == null || xsl.toXMLString().length == 0)
					{
						Alert.show("Please enter an XSLT document.");
						doProcess = false;
					}
				}
				catch(e:Error)
				{
					Alert.show("The XSLT document is malformed.");
					doProcess = false;
				}
			}
			var output:String;
			if(doProcess){
				// Call into the JS to do the actual transformation.
				//output = ExternalInterface.call("transformXML()", xml,xsl);
				output = html.window.transformXML(xml,xsl);				
			}
			else{
				output = "";
			}
			return output;
		}
	}
}