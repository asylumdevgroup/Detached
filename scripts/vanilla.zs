//vanilla.zs
//By MCAdventureCity

import mods.primaltech.ClayKiln;

//Glass in Clay Kiln
mods.primaltech.ClayKiln.addRecipe(<minecraft:glass>, <ore:sand>, 200);

//Furnace
recipes.remove(<minecraft:furnace>);
recipes.addShaped("vanilla_furnace", <minecraft:furnace>,
 [[<ore:compressed1xCobblestone>,<tconstruct:dried_clay:1>,<ore:compressed1xCobblestone>],
  [<tconstruct:dried_clay:1>,<appliedenergistics2:material>,<tconstruct:dried_clay:1>],
  [<ore:compressed1xCobblestone>,<tconstruct:dried_clay:1>,<ore:compressed1xCobblestone>]]);

//Chest
recipes.remove(<minecraft:chest>);
recipes.addShaped("vanilla_chest", <minecraft:chest>,
  [[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
   [<ore:nuggetCopper>, <primalchests:primal_chest_advanced>, <ore:nuggetCopper>],
   [<tconstruct:seared>, <tconstruct:seared>, <tconstruct:seared>]]);


//Flint and Steel Requires Steel
recipes.remove(<minecraft:flint_and_steel>);
recipes.addShapeless("flint_and_steel", <minecraft:flint_and_steel>, [<ore:flint>, <ore:ingotSteel>]);