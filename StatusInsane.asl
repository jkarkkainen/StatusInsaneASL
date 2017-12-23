state("STATUS INSANE") {
	
	int level 	: "mono.dll", 0x00296BC8, 0x20, 0x330, 0xe0;
}

split {
	if (old.level != current.level)
		return true;
}

start {
	return 
		old.level != current.level && 
		old.level == 26 && 
		current.level == 14;
}

reset {
	return current.level == 26;
}