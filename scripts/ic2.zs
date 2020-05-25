//ic2.zs
//By MCAdventureCity

//Forge Hammer
recipes.remove(<ic2:forge_hammer>);
recipes.addShaped("forge_hammer1", <ic2:forge_hammer>, 
    [[<ore:ingotSteel>, <ore:ingotFerramic>, null], 
    [<ore:ingotFerramic>, <immersiveengineering:material>, <immersiveengineering:material>], 
    [<ore:ingotSteel>, <ore:ingotFerramic>, null]]);
recipes.addShaped("forge_hammer2", <ic2:forge_hammer>, 
    [[null, <ore:ingotFerramic>, <ore:ingotSteel>], 
    [<immersiveengineering:material>, <immersiveengineering:material>, <ore:ingotFerramic>], 
    [null, <ore:ingotFerramic>, <ore:ingotSteel>]]);
