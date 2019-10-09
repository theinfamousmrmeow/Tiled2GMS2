/// @description Insert description here
// You can write your code in this editor

if (room!=titleScreen && room!=rm_charSelect && room!=rm_victory && room!=rm_arcadeProgress){
		if interstitial_loaded == true
		    {
		    interstitial_loaded = false;
		    GoogleMobileAds_ShowInterstitial();
		    }
}