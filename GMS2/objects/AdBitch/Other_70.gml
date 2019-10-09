/// @description Insert description here
// You can write your code in this editor
 var _id = async_load[? "id"];
    if _id == GoogleMobileAds_ASyncEvent
    {
    var ident = async_load[? "type"];
    switch (ident)
        {
        case "interstitial_load":
            if async_load[? "loaded"] == 1
                {
                interstitial_loaded = true;
                }
            break;
		case "interstitial_closed":
		//Do stuff after the ad??
			GoogleMobileAds_LoadInterstitial();
			break;
        }
    }