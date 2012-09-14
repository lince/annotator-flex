package
{
	//import UIComponent.*;
	
	import mx.core.UIComponent;
	
	/**
	 * 
	 * Classe usada para simular uma thread para poder desenhar as barras com intervalos de interesse 
	 * com feedback de progresso para o usuário
	 * 
	 */	
	public final class UIUtilities
	{
		/**
		 * Executes a for loop that pauses once in a while to let the UI update itself. The parameters of this method
		 * are derived from a normal 
		 * for(var i :int =0; i <10;i++) {
		 * }
		 * loop.
		 * @param fromInclusive The 0 in the loop above.
		 * @param toExclusive The 10 in the loop above.
		 * @param loopBodyFunction The loop body, everything between {} in the loop above. This function must accept an int,
		 * which represents the current iteration.
		 * @param updateProgressFunction The method that needs to be called to update the UI, for example a progressbar.
		 * this method must accept two ints, The first is the number of iterations processed, the other is the total number of
		 * of iterations that need to be processed.
		 * @param componentInDisplayList Any component that is connected to the displaylist. This method makes use
		 * of the callLater() method which is available on any UIComponent. The root Application is an easy choice.
		 * @param numberOfPauses The number of times this method pauses to let the UI update itself.
		 * The correct amount is hardware dependent, 8 pauses doesn't mean you'll see 8 UI updates. Experiment
		 * to find the number that suits you best. A higher number means less performance, but more ui updates and
		 * visual feedback. 
		 **/
		
		public static function pausingFor(fromInclusive:int, toExclusive :int,loopBodyFunction : Function,updateProgressFunction : Function,componentInDisplayList:UIComponent,
										  numberOfPauses : int = 8) : void {
			executeLoop(fromInclusive,toExclusive, toExclusive / numberOfPauses, loopBodyFunction,updateProgressFunction, componentInDisplayList);
		}
		
		
		private static function executeLoop(fromInclusive:int, toExclusive :int,numberOfIterationsBeforePause : int, loopBodyFunction : Function,
											updateProgressFunction : Function,componentInDisplayList : UIComponent) : void {
			var i : int = fromInclusive;
			for(i; i < toExclusive;i++) {
				//determine the rest of the number of iterations processed and the numberOfIterationsBeforePause
				//This is needed to determine whether a pause should occur. 
				var rest : Number = i % numberOfIterationsBeforePause;
				
				//If the rest is 0 and i not is 0, a pause must occur to let the ui update itself
				if(rest == 0 && i != 0) {
					
					//use callLater to pause and let the UI update.....
					componentInDisplayList.callLater(
						//Supply anonymous function to the callLater method, which can be called after the pause...
						function(index:int) : void {
							//after pauzing, resume work...
							loopBodyFunction(index);
							//We need to continue with the callFunction method. The current index has already
							//been processed so continue this method with the next index
							executeLoop(index + 1,toExclusive,numberOfIterationsBeforePause,loopBodyFunction,updateProgressFunction,componentInDisplayList);
						},[i]);
					//When using callLater to let the UI update, my own code must be finished. So break out of the loop 
					break;
				} else {
					//No time for a pause
					loopBodyFunction(i);
					//Just before a pause occurs, report progress so that a user can set progress values
					if(rest == numberOfIterationsBeforePause - 1) {
						updateProgressFunction(i + 1, toExclusive);
					}
				}
			}
			//Final progress update
			updateProgressFunction(i + 1, toExclusive);
		} 		
	}
}