	interstitial_loaded = false;

if os_type == os_android
    {

	GoogleMobileAds_Init(AD_ID_INTERSTITIAL, APP_ID);
	GoogleMobileAds_LoadInterstitial();

	GoogleMobileAds_UseTestAds(true, "E3DAE5ACB5072BA36197B94E287927C9");
	}