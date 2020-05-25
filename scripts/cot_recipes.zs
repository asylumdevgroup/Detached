//cot_recipes.zs
//By MCAdventureCity

//Ferramic Plate
recipes.addShapeless("ferramic_plate", <materialpart:ferramic:plate>, [<ic2:forge_hammer>, <ore:ingotFerramic>, <ore:ingotFerramic>])

//Ferramic Casing
recipes.addShaped("aa_wood_casing", <contenttweaker:ferramic_casing>,
 [[<ore:ingotFerramic>, <ore:plateFerramic>, <ore:ingotFerramic>], 
 [<ore:plateFerramic>, <actuallyadditions:block_misc:4>, <ore:plateFerramic>],
 [<ore:ingotFerramic>, <ore:plateFerramic>, <ore:ingotFerramic>]]);