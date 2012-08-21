package
{
	public class BackGroundColorUtils
	{		
		private var white:uint = 0xFFFFFF;
		private var black:uint = 0x000000;
		private var silver:uint = 0xC0C0C0;
		private var gray:uint = 0x808080;
		private var red:uint = 0xFF0000;
		private var maroon:uint = 0x800000;
		private var fuchsia:uint = 0xFF00FF;
		private var purple:uint = 0x800080;
		private var lime:uint = 0x00FF00;
		private var green:uint = 0x008000;
		private var yellow:uint = 0xFFFF00;
		private var olive:uint = 0x808000;
		private var blue:uint = 0x0000FF;
		private var navy:uint = 0x000080;
		private var aqua:uint = 0x00FFFF;
		private var teal:uint = 0x008080;
					
		public function BackGroundColorUtils()
		{
		}		
		
		public function get_stringColorName(uintColor:uint):String{
			var stringColor:String;
			if(uintColor == white){
				stringColor = "white";
			}
			else{
				if(uintColor == black){
					stringColor = "black";
				}
				else{
					if(uintColor == silver){
						stringColor = "silver";
					}
					else{
						if(uintColor == gray){
							stringColor = "gray";
						}
						else{
							if(uintColor == red){
								stringColor = "red";
							}
							else{
								if(uintColor == maroon){
									stringColor = "maroon";
								}
								else{
									if(uintColor == fuchsia){
										stringColor = "fuchsia";
									}
									else{
										if(uintColor == purple){
											stringColor = "purple";
										}
										else{
											if(uintColor == lime){
												stringColor = "lime";												
											}
											else{
												if(uintColor == green){
													stringColor = "green";
												}
												else{
													if(uintColor == yellow){
														stringColor = "yellow";														
													}
													else{
														if(uintColor == olive){
															stringColor = "olive";
														}
														else{
															if(uintColor == blue){
																stringColor = "blue";
															}
															else{
																if(uintColor == navy){
																	stringColor = "navy";
																}
																else{
																	if(uintColor == aqua){
																		stringColor = "aqua";
																	}
																	else{
																		if(uintColor == teal){
																			stringColor = "teal";
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
			return stringColor;
		}
		
		public function get_uintColor(stringColor:String):uint{
			var uintColor:uint;
			if(stringColor == "white"){
				uintColor = white;
			}
			else{
				if(stringColor == "black"){
					uintColor = black;
				}
				else{
					if(stringColor == "silver"){
						uintColor = silver;
					}
					else{
						if(stringColor == "gray"){
							uintColor = gray;
						}
						else{
							if(stringColor == "red"){
								uintColor = red;
							}
							else{
								if(stringColor == "maroon"){
									uintColor = maroon;
								}
								else{
									if(stringColor == "fuchsia"){
										uintColor = fuchsia;
									}
									else{
										if(stringColor == "purple"){
											uintColor = purple;
										}
										else{
											if(stringColor == "lime"){
												uintColor = lime;												
											}
											else{
												if(stringColor == "green"){
													uintColor = green;
												}
												else{
													if(stringColor == "yellow"){
														uintColor = yellow;														
													}
													else{
														if(stringColor == "olive"){
															uintColor = olive;
														}
														else{
															if(stringColor == "blue"){
																uintColor = blue;
															}
															else{
																if(stringColor == "navy"){
																	uintColor = navy;
																}
																else{
																	if(stringColor == "aqua"){
																		uintColor = aqua;
																	}
																	else{
																		if(stringColor == "teal"){
																			uintColor = teal;
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
			return uintColor;			
		}
	}
}