global.i=true;

with (SelectionToken){
	if (selection=-1) {
		global.i=false;
	}
}

return global.i;