ini_open("unlocks.ini");

//if (ini_section_exists("characters")) show_message("FOUND CHARACTERS");
//else show_message("DID NOT FIND CHARACTERS");
//if (ds_exists(global.unlocksList,ds_type_list)){ds_list_destroy(global.unlocksList);}
global.unlocksList = ds_list_create();
global.wool = ini_read_real("currency","wool",0);
global.goldenFleece = ini_read_real("currency","fleece",0);
ini_close();
loadUnlocks();