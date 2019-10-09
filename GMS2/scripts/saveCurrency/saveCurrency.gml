ini_open("unlocks.ini");

//if (ini_section_exists("characters")) show_message("FOUND CHARACTERS");
//else show_message("DID NOT FIND CHARACTERS");
ini_write_real("currency","wool",global.wool);
ini_write_real("currency","fleece",global.goldenFleece);

ini_close();