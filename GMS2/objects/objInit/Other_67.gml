

var ident = ds_map_find_value(async_load, "id" );

var status = ds_map_find_value(async_load, "status" );


var desc =  ds_map_find_value(async_load, "description" );

var resstring = ds_map_find_value(async_load, "resultString" );


var errorstring = ds_map_find_value(async_load, "errorString" );


show_debug_message("Async cloud event occurred with ident="+string(ident) + " status=" + string(status) + " desc=" + string(desc) + 

" resstring=" + string(resstring)+ " error="+string(errorstring));





