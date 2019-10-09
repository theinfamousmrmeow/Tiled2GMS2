switch (argument0){
	case actions.walk:
		return true;
		break;
	case actions.catch:
		return true;
		break;
	case actions.stand:
		return true;
		break;
	default:
		return false;
		break;
}