/// @description READ ME

/*

 If you have build errors about missing Google Play Services libraries, please make sure Android Studio
 is up-to-date and you have actually installed the API version you're targetting in Game Options.
 
 */


///Create our variables
// global.surf = -1;
global.Score = 0;
global.OurName = "";
global.OurId = "";
global.numfriends = 0;
global.numentries = 0;

//instance_create(70,305,objBuyConsumable);
instance_create_layer(500,500,"Compatibility_Instances_Depth_0",oIndicator);

//achievement_send_challenge("G:1234",global.Score,"leaderboard1id",1); //1=score
//achievement_show_challenge_notifications(true,true,true);


/*
global.purchaseList=ds_list_create();

var purchase1;
purchase1 = ds_map_create();

ds_map_add(purchase1, "id", "com.yoyogames.gctestapp.consumable1");
ds_map_add(purchase1, "title", "GC_Consumable1");
ds_map_add(purchase1, "description", "GC_Consumable description");
ds_map_add(purchase1, "price", "$0.99 price");
ds_map_add(purchase1, "content_url", "");
ds_map_add(purchase1, "local_path", "");
ds_list_add(global.purchaseList, purchase1);


var purchase2;
purchase2 = ds_map_create();

ds_map_add(purchase2, "id", "com.yoyogames.gctestapp.nonconsumable1");
ds_map_add(purchase2, "title", "GC_NonConsumable1");
ds_map_add(purchase2, "description", "GC_NonConsumable description");
ds_map_add(purchase2, "price", "$0.99 price");
ds_map_add(purchase2, "content_url", "");
ds_map_add(purchase2, "local_path", "");
ds_list_add(global.purchaseList, purchase2);

iap_activate(global.purchaseList);

*/