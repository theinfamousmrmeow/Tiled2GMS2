//Checks to see if player can do input right now
switch (action){
	case actions.KO:	
	case actions.hit:
	case actions.celebrate:
	case actions.walkon:
	case actions.die:
	case actions.flee:
	case actions.sulk:
		return true;
		break;
	default:
		return false;
		break;
	
}