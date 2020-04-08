//immersive_engineering.zs
//By MCAdventureCity

//Coke Bricks
recipes.remove(<immersiveengineering:stone_decoration>);
recipes.addShaped("coke_brick", <immersiveengineering:stone_decoration> * 3,
 [[<tconstruct:seared>,<ceramics:unfired_clay:8>,<tconstruct:seared>],
  [<ceramics:unfired_clay:8>,<ceramics:clay_hard:5>,<ceramics:unfired_clay:8>],
  [<tconstruct:seared>,<ceramics:unfired_clay:8>,<tconstruct:seared>]]);