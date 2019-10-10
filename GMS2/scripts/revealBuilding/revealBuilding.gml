//layer_set_visible(buildingGetLayerBuilt(argument0),true);
//layer_set_visible(buildingGetLayerDestroyed(argument0),false);

//New system
var a = layer_get_all();
for (var i = 0; i < array_length_1d(a); i++;)
   {
	   //
	    layer_name = layer_get_name(i);
		//If it is this building
		if (string_contains(layer_name,argument0)){
				if (string_contains(layer_name,STR_BUILT)){
					layer_set_visible(layer_name,true);
				}
				else if (string_contains(layer_name,STR_DESTROYED)){
					layer_set_visible(layer_name,false);
				}
		};
   }