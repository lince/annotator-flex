package UsersManager
{
	public class UsersManager
	{
		private var contentUserActive:Boolean = false;
		private var managerUserActive:Boolean = false;
		private var narratorUserActive:Boolean = false;
		
		public function UsersManager()
		{
		}
		
		public function set userName(user:String){
			if(user == "conteudista"){
				contentUserActive = true;
			}
			else{
				if(user == "narrador"){
					narratorUserActive = true;
				}
				else
					if(user == "administrador"){
						managerUserActive = true;
					}
			}
		}
		
		public function get userName():String{
			if(contentUserActive){
				return "conteudista";
			}
			else{
				if(narratorUserActive){
					return "narrador";
				}
				else
					if(managerUserActive){
						return "administrador";
					}
			}
		}
	}
}