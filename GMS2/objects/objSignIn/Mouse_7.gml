event_inherited();
show_debug_message("Signing-in to Google Play Services");

if(GooglePlayServices_Status()!= GooglePlayServices_SUCCESS)
   GooglePlayServices_Init(); 

if(GooglePlayServices_Status()= GooglePlayServices_SUCCESS)
    achievement_login();
else
    show_message("Error initialising Google Play Services, status code = "+string(GooglePlayServices_Status()));

