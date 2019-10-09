//arg0 = String matching the object you want to find.
switch (argument0){
	case "Axe":  return Axe; break;
	case "GoldenAxe":  return GoldenAxe; break;
	case "Boulder":  return Boulder; break;
	case "Morningstar": return Morningstar; break;
	case "Hammer": return Hammer; break;
	case "Scythe": return Scythe; break;
	case "Fireball": return Fireball; break;
	case "Beetlerang": return Beetlerang; break;
	case "": return -1; break;
	case "Red Shield": return RedShield; break;
	case "Blue Shield": return BlueShield; break;
	case "Gorgon Shield": return GorgonShield; break;
	case "Wooden Shield": return WoodShield; break;
	case "Carapace Shield": return CarapaceShield; break;
	case "Skull Shield": return SkullShield; break;
	case "Mirror Shield": return MirrorShield; break;
	case "Void Shield": return VoidShield; break;

	default: return Carrot;
}