//tinyprogressions.zs
//By MCAdventureCity

import mods.immersiveengineering.AlloySmelter;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;

//Quartz Ingot
recipes.remove(<tp:quartz_ingot>);
mods.immersiveengineering.AlloySmelter.addRecipe(<tp:quartz_ingot> * 2, <ore:blockQuartz>, <appliedenergistics2:quartz_block>, 2000);

//Redstone Ingot -> Redquartz Alloy Ingot
<ore:ingotRedstone>.remove(<tp:redstone_ingot>);
<tp:redstone_ingot>.displayName = "Redquartz Alloy Ingot";
recipes.remove(<tp:redstone_ingot>);
mods.immersiveengineering.AlloySmelter.addRecipe(<tp:redstone_ingot>, <tp:quartz_ingot>, <ore:blockRedstone>, 2000);

//Remove and Hide
val removals = [
    <tp:compressed_nether_block>,
    <tp:double_compressed_nether_block>,
    <tp:triple_compressed_nether_block>,
    <tp:quadruple_compressed_nether_block>,
    <tp:quintuple_compressed_nether_block>,
    <tp:sextuple_compressed_nether_block>,
    <tp:septuple_compressed_nether_block>,
    <tp:octuple_compressed_nether_block>
] as IItemStack[];

for item in removals {
  mods.jei.JEI.removeAndHide(item);
}