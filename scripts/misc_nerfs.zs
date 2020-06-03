//misc_nerfs.zs
//By MCAdventureCity

import crafttweaker.item.IItemStack;

var planks = [
	<minecraft:planks>,
	<minecraft:planks:1>,
	<minecraft:planks:2>,
	<minecraft:planks:3>,
	<minecraft:planks:4>,
	<minecraft:planks:5>
] as IItemStack[];

var logs = [
	<minecraft:log>,
	<minecraft:log:1>,
	<minecraft:log:2>,
	<minecraft:log:3>,
	<minecraft:log2>,
	<minecraft:log2:1>
] as IItemStack[];
for i, log in logs{
	var plank = planks[i];
	recipes.removeShapeless(plank, [log]);
	recipes.removeShaped(plank, [[log]]);
	recipes.addShapeless("plank_nerf_" + i, plank, [log]);
}