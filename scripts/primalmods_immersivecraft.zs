//primalmods_immersivecraft.zs
//By MCAdventureCity

import crafttweaker.item.IItemStack;

//Clay Kiln
recipes.remove(<primal_tech:clay_kiln>);
recipes.addShaped("clay_kiln", <primal_tech:clay_kiln>,
 [[<ceramics:unfired_clay:8>,<ceramics:unfired_clay:8>,<ceramics:unfired_clay:8>],
  [<ceramics:unfired_clay:8>,null,<ceramics:unfired_clay:8>],
  [<ceramics:unfired_clay:8>,<ceramics:unfired_clay:8>,<ceramics:unfired_clay:8>]]);

//Whittled Fire Stick
recipes.remove(<primal_tech:fire_sticks>.withTag({}));
recipes.addShapeless("whittled_fire_stick", <primal_tech:fire_sticks>.withTag({}), [<ore:stickWood>, <flintmod:knife_flint>.transformDamage()]);

//Primal Chest
recipes.remove(<primalchests:primal_chest>);
recipes.addShaped("primal_chest", <primalchests:primal_chest>,
 [[<ore:plankWood>,<ore:logWood>,<ore:plankWood>],
  [<ore:logWood>,<immcraft:rock>,<ore:logWood>],
  [<ore:plankWood>,<ore:logWood>,<ore:plankWood>]]);

//Remove and Hide
val removals = [
    <primal_tech:bone_pickaxe>,
    <primal_tech:bone_axe>,
    <primal_tech:bone_shovel>,
    <primal_tech:bone_shears>,
    <primal_tech:bone_sword>,
    <primal_tech:bone_knife>,
    <primal_tech:leaf_bed>,
    <primal_tech:stick_bundle>,
    <primal_tech:fibre_torch>,
    <primal_tech:fibre_torch_lit>,
    <primal_tech:work_stump>,
    <primal_tech:work_stump_upgraded>,
    <immcraft:chisel>,
    <immcraft:saw>,
    <immcraft:dummybook:*>,
    <immcraft:furnace>,
    <immcraft:cupboard>,
    <immcraft:shelf>,
    <immcraft:bookshelf>,
    <immcraft:bundle>,
    <immcraft:workbench>,
    <immcraft:workbench_sec>,
    <immcraft:in_world_placer>,
    <immcraft:in_world_vertical_placer>,
    <immcraft:bookstand>,
    <immcraft:chest>,
    <immcraft:manual>
] as IItemStack[];

for item in removals {
  mods.jei.JEI.removeAndHide(item);
}