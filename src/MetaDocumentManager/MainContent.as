package MetaDocumentManager
{
	/**
	 * 
	 * Classe que armazena todas as info da mídia principal. Usada posteriormente para a geração do XML que será utilizado
	 * pelo XSLT para gerar o arquivo NCL
	 * 
	 */
	public class MainContent
	{
		private var project_name:String; 
		private var main_videoSource:String;
		
		public function MainContent(){
		}
		
		public function set projectName(project_name:String):void{
			this.project_name = project_name;			
		}
		
		public function get projectName():String{
			return project_name;
		}
		
		public function set mainVideoSource(main_videoSource:String):void{
			this.main_videoSource = main_videoSource;
		}
		
		public function get mainVideoSource():String{
			return main_videoSource;
		}
	}
}