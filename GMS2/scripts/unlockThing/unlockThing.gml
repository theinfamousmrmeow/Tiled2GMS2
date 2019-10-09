//arg0 = section;
//arg1 = key;
ini_open("unlocks.ini");
ini_write_real(argument0,argument1,1);
ini_close();
//saveCurrency();
loadUnlocks();