//prodigytech.zs
//By MCAdventureCity

import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;

//To Hide
mods.jei.JEI.hideCategory("ptgrinder");
mods.jei.JEI.hideCategory("ptreassembler");
mods.jei.JEI.hideCategory("ptrefinery");
val removals = [
    <prodigytech:rotary_grinder>,
    <prodigytech:ore_refinery>,
    <prodigytech:magnetic_reassembler>
] as IItemStack[];
for item in removals {
  mods.jei.JEI.removeAndHide(item);
}

//Explosion Furnace
recipes.remove(<prodigytech:explosion_furnace>);
RecipeBuilder.get("basic")
  .setShaped([
    [<woot:stygianironingot>, <environmentalmaterials:hardened_stone>, <woot:stygianironingot>],
    [<environmentalmaterials:hardened_stone>, <natura:flint_and_blaze>, <environmentalmaterials:hardened_stone>],
    [<woot:stygianironingot>, <environmentalmaterials:hardened_stone>, <woot:stygianironingot>]])
  .setSecondaryIngredients([<minecraft:gunpowder> * 4, <minecraft:furnace>, <immersiveengineering:stone_decoration:1> * 3])
  .addTool(<ore:artisansFile>, 10)
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<prodigytech:explosion_furnace>)
  .create();

//Magmatic Aeroheater
recipes.remove(<prodigytech:magmatic_aeroheater>);
recipes.addShaped("magmatic_aeroheater", <prodigytech:magmatic_aeroheater>, 
  [[<ore:plateFerramic>, <quark:blaze_lantern>, <ore:plateFerramic>],
  [<ceramics:clay_hard:5>, <contenttweaker:ferramic_casing>, <ceramics:clay_hard:5>], 
  [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);
