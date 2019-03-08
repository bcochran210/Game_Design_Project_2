randomize();
oreNum = irandom_range(1,30);
oreType = "";


if(oreNum > 0 && oreNum < 11){
	oreType = "coal";
} else if (oreNum > 11 && oreNum < 19){
	oreType = "copper";
} else if (oreNum > 19 && oreNum < 25){
	oreType = "iron";
} else if (oreNum > 25 && oreNum < 29){
	oreType = "gold";
} else {
	oreType = "diamond";
}