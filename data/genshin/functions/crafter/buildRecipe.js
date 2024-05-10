let items = {'_': ['air', 0]};
let str = 'execute ';
const slots = [3, 4, 5, 12, 13, 14, 21, 22, 23];

// Insert recipe here:
items.s = ['minecraft:stick', 1, 'sculkStick'];
items.c = ['minecraft:stick', 1, 'sculkCore'];
items.w = ['deeperdarker:warden_sword', 1];
recipe = ['_ _ c',
          '_ w _',
          's _ _'];
result = `id:"deeperdarker:warden_sword",Count:1,tag:{display:{Name:'{"text":"Guardian Sword","italic":false}',Lore:['[{"text":"❖","color":"blue","italic":false},{"text":" Advanced Crafting","color":"red"}]']},CustomModelData:101,crafter:1,sculkSword:1}`;

// Render the recipe.
let i = 0;
recipe.forEach(s => s.split(' ').forEach(cur => {
  let item = items[cur];
  if (item.length <= 1) console.error(cur, 'had insufficient item data');

  if (item[1]===0) { // No item
    str += `unless data block ~ ~ ~ Items[{Slot:${slots[i++]}b}] `;
  } else if (item.length === 2) { // Standard item
    str += `if data block ~ ~ ~ Items[{Slot:${slots[i++]}b,id:"${item[0]}",Count:${item[1]}b}] `;
  } else { // Special item
    str += `if data block ~ ~ ~ Items[{Slot:${slots[i++]}b,id:"${item[0]}",Count:${item[1]}b,tag:{${item[2]}:1}}] `;
  }
}));
str += 'run tag @s add success\n';
str += 'execute if entity @s[tag=success] run tag @s add craft\n';
str += 'execute if entity @s[tag=success] run data modify block ~ ~ ~ Items append value {Slot:16,'+result+'}\n';
str += 'tag @s remove success';
console.log(str);