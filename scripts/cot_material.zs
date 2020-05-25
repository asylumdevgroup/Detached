#loader contenttweaker

import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.MaterialBuilder;
import mods.contenttweaker.Material;
import mods.contenttweaker.Color;

var ferramic = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Ferramic").setColor(Color.fromHex("ffcccc")).build();
var zorrasteel = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Zorrasteel").setColor(Color.fromHex("808080")).build();

var existing = [ferramic, zorrasteel] as Material[];
var parts = ["plate", "rod"] as string[];

for material1 in existing {
    material1.registerParts(parts);
}