package 
{
	import mx.controls.DataGrid;
	import mx.controls.dataGridClasses.DataGridHeader;

	/**
	 * 
	 * @author Suets
	 * Classe que estende o componente Datagrid para uso na ferramenta
	 * 
	 */	
	public class CustomDataGrid extends DataGrid
	{
		/**
		 * 
		 * @return 
		 * retorna o array com itens do datagrid
		 * 
		 */		
		public function get listRendererArray():Array
		{			
			return listItems;
		}
		
	}
}