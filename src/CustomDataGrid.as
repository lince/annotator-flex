package 
{
	import mx.controls.DataGrid;
	import mx.controls.dataGridClasses.DataGridHeader;

	public class CustomDataGrid extends DataGrid
	{
		public function get listRendererArray():Array
		{			
			return listItems;
		}
		
	}
}