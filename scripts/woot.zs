//woot.zs
//By MCAdventureCity

//Ya Hammer
recipes.remove(<woot:yahhammer>);
recipes.addShaped("ya_hammer", <woot:yahhammer>,
 [[null,<tp:quartz_ingot>,<tp:redstone_ingot>],
  [<immersiveengineering:material:5>,<tp:quartz_ingot>,<tp:quartz_ingot>],
  [<tp:quartz_ingot>,<immersiveengineering:material:5>,null]]);

//Stygian Iron Ore
recipes.remove(<woot:stygianironore>);
recipes.addShapeless("stygian_iron_ore", <woot:stygianironore>,
 [<woot:yahhammer>,<ore:ingotSteel>,<ore:ingotSteel>, <extrautils2:compressednetherrack>,<mysticalagriculture:soulstone>]);