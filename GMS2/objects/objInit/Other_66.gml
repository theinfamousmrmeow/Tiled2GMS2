/*show_debug_message("IAP event called with async_load " + string(async_load));

if(async_load!=-1)
{
    var ident = ds_map_find_value(async_load, "id" );
    
    if(ident ==-3)
    {
        var receipt = ds_map_find_value(async_load, "iap_receipt" );
        var productid = ds_map_find_value(async_load, "iap_product" );
        var quantity = ds_map_find_value(async_load,"iap_quantity");
        
        show_debug_message("iap receipt received " + string(receipt) + " for product " + string(productid) + " number " + string(quantity));
        exit;
    }
}


{
    var eventQueue;
    eventQueue = iap_event_queue();
    
    show_debug_message("iap event queue about to be dequeued"  );
    
    while (!ds_queue_empty(eventQueue)) {
        mEventData = ds_queue_dequeue(eventQueue);    
        show_debug_message("iap event queue " + string(mEventData) );
    
    }
}
*/

/* */
/*  */
