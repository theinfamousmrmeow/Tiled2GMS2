//For each building in buildings CSV

//TODO:  Make this reference the BUILDINGS csv
buildingStack =ds_stack_create();
ds_stack_push(buildingStack,"Tower1","Tower2","shop");

while (!ds_stack_empty(buildingStack)){
	var b = ds_stack_pop(buildingStack);
	if (buildingIsUnlocked(b)){
		revealBuilding(b);	
	}
}
ds_stack_destroy(buildingStack);
//if (buildingIsUnlocked())
	//revealBuilding()
