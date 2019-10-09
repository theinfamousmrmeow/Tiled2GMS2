var type = ds_map_find_value(async_load, "type");
var status = ds_map_find_value(async_load, "status");
show_debug_message("Push notification received by game with type=" + string(type) + ", status=" + string(status));

if (status == 0) // error of some kind
{
    var error = ds_map_find_value(async_load, "error");
    show_debug_message("error=" + string(error));
}
else if (type == "register")
{
    var reg_id = ds_map_find_value(async_load, "reg_id");
    show_debug_message("Found reg_id="+ string(reg_id));
	
    // post reg_id to your server
}   
else
{
   var data = ds_map_find_value(async_load, "data");
   show_debug_message("Push notification received with payload:"+ string(data));   
}