//tinkers_ceramics.zs
//By MCAdventureCity

import mods.primaltech.ClayKiln;
import mods.tconstruct.Alloy;

//Porcelain Brick in Kiln
mods.primaltech.ClayKiln.addRecipe(<ceramics:unfired_clay:5>, <ceramics:unfired_clay:4>, 200);

//Porcelain Block in Kiln
mods.primaltech.ClayKiln.addRecipe(<ceramics:porcelain>, <ceramics:clay_soft>, 200);

//Porcelain Faucet in Kiln
mods.primaltech.ClayKiln.addRecipe(<ceramics:faucet>, <ceramics:unfired_clay:6>, 200);

//Porcelain Tank
recipes.remove(<tcomplement:porcelain_tank>);

//Armor Station
mods.jei.JEI.removeAndHide(<conarm:armorstation>);

//Armor Forge
recipes.remove(<conarm:armorforge>);
mods.jei.JEI.hide(<conarm:armorforge>.withTag({textureBlock: {id: "enderio:block_alloy", Count: 1 as byte, Damage: 0 as short}}));
recipes.addShaped("armor_forge", <conarm:armorforge>,
 [[<immersiveengineering:stone_decoration>,<ore:blockFuelCoke>,<immersiveengineering:stone_decoration>],
  [<ore:ingotKnightslime>,<tconstruct:cast>,<ore:ingotKnightslime>],
  [<ore:blockInvar>,null,<ore:blockInvar>]]);
mods.jei.JEI.addItem(<conarm:armorforge>);

//Porcelain Heater
recipes.remove(<tcomplement:porcelain_melter:8>);
recipes.addShaped("porcelain_heater", <tcomplement:porcelain_melter:8>,
 [[<ceramics:clay_hard>,<ceramics:unfired_clay:5>,<ceramics:clay_hard>],
  [<ceramics:unfired_clay:5>,<primal_tech:flint_block>,<ceramics:unfired_clay:5>],
  [<ceramics:unfired_clay:5>,<primal_tech:charcoal_block>,<ceramics:unfired_clay:5>]]);

//Porcelain Melter
recipes.remove(<tcomplement:porcelain_melter>);
recipes.addShaped("porcelain_melter", <tcomplement:porcelain_melter>,
 [[<ceramics:clay_hard>,<ceramics:unfired_clay:5>,<ceramics:clay_hard>],
  [<ceramics:unfired_clay:5>,<tcomplement:porcelain_tank:*>,<ceramics:unfired_clay:5>],
  [<ceramics:clay_hard>,<ceramics:unfired_clay:5>,<ceramics:clay_hard>]]);

//Porcelain Casting Table
recipes.remove(<tcomplement:porcelain_casting>);
recipes.addShaped("porcelain_casting_table", <tcomplement:porcelain_casting>,
 [[<ceramics:clay_hard>,<ceramics:porcelain>,<ceramics:clay_hard>],
  [<ceramics:unfired_clay:5>,<ceramics:clay_hard>,<ceramics:unfired_clay:5>],
  [<ceramics:unfired_clay:5>,null,<ceramics:unfired_clay:5>]]);

//Porcelain Casting Basin
recipes.remove(<tcomplement:porcelain_casting:1>);
recipes.addShaped("porcelain_casting_basin", <tcomplement:porcelain_casting:1>,
 [[<ceramics:unfired_clay:5>,null,<ceramics:unfired_clay:5>],
  [<ceramics:unfired_clay:5>,null,<ceramics:unfired_clay:5>],
  [<ceramics:clay_hard>,<ceramics:unfired_clay:5>,<ceramics:clay_hard>]]);

//Unfired Faucet
recipes.remove(<ceramics:unfired_clay:6>);
recipes.addShaped("unfired_faucet", <ceramics:unfired_clay:6>,
 [[<ceramics:unfired_clay:4>,null,<ceramics:unfired_clay:4>],
  [<ceramics:unfired_clay:4>,<ceramics:unfired_clay:4>,<ceramics:unfired_clay:4>]]);

//Unfired Channel
recipes.remove(<ceramics:unfired_clay:7>);
recipes.addShaped("unfired_channel", <ceramics:unfired_clay:7>,
 [[<ceramics:unfired_clay:4>,null,<ceramics:unfired_clay:4>],
  [<ceramics:unfired_clay:4>,null,<ceramics:unfired_clay:4>],
  [<ceramics:unfired_clay:4>,<ceramics:unfired_clay:4>,<ceramics:unfired_clay:4>]]);

//Knightslime Alloying Requires Silver
mods.tconstruct.Alloy.removeRecipe(<liquid:knightslime>);
mods.tconstruct.Alloy.addRecipe(<liquid:knightslime> * 72, [<liquid:silver> * 72, <liquid:purpleslime> * 125, <liquid:stone> * 144]);