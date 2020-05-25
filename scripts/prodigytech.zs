//prodigytech.zs
//By MCAdventureCity

import mods.artisanworktables.builder.RecipeBuilder;

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

