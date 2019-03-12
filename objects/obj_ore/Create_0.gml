randomize();
oreNum = irandom_range(1, 10);


if (oreNum = 1 || oreNum = 2 || oreNum = 3 || oreNum = 4) {
	instance_change(obj_ore_coal, true);
} 
if (oreNum = 5 || oreNum = 6) {
	instance_change(obj_ore_copper, true);
} 
if (oreNum = 7 || oreNum = 8) {
	instance_change(obj_ore_iron, true);
} 
if (oreNum = 9) {
	instance_change(obj_ore_gold, true);
} 
if (oreNum = 10) {
	instance_change(obj_ore_diamond, true);
}