
	switch (argument0){
		case Ragnar:
			s = spr_redthrow;
		break;
		case Lothgar:
			s = spr_bluethrow;
		break;
		case Ghost:
			s = spr_redthrow;
			image_blend=c_aqua;
			image_alpha=0.5;
		break;
		case Wizard:
			s = spr_wizardthrow;
		break
		case Reaper:
			s = spr_reaperthrow;
		break;
		case DeathKnight:
			s = spr_deathknight_throw;
		break;
		case Valkyrie:
			s = spr_valkyrie_throw;
		break;
		case Troll:
			s = spr_trollthrow;
		break;
		case Goblin:
			s = spr_goblinthrow;
		break;
				
		
		default:
			s = spr_roundIcon;
	}
	return s;

