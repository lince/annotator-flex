package XML
{	
	import spark.components.Button;

	[Bindable]
	public class Destaque
	{
		public var nomeDestaque:String;
		public var tInicial:String;
		public var tFinal:String;
		public var botaoEditar:Button;
		public var botaoExcluir:Button;
		
				
		public function Destaque(nomeDestaque:String, tInicial:String, tFinal:String, botaoEditar:Button, botaoExluir:Button)
		{
			this.nomeDestaque = nomeDestaque;
			this.tInicial = tInicial;
			this.tFinal = tFinal;	
			this.botaoEditar = botaoEditar;
			this.botaoExcluir = botaoExluir;
		}
				
		/*public function setNomeDestaque(nomeDestaque:String){
			this.nomeDestaque = nomeDestaque;
		}*/
	}
}