event_inherited();

var status = iap_status();
var iap_list = ds_list_create();
if status == iap_status_available
{
    show_debug_message("Calling to enumerate products");
    iap_enumerate_products(iap_list);
}
else
    show_debug_message("iap status (not available):" + string(status));

