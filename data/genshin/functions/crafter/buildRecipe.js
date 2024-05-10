let items = {'_': ['air', 0]};
let str = 'execute ';
const slots = [3, 4, 5, 12, 13, 14, 21, 22, 23];

// Insert recipe here:
items.h = ['deeperdarker:heart_of_the_deep', 1];
items.s = ['minecraft:heart_of_the_sea', 1];
recipe = ['h h h',
          'h s h',
          'h h h'];
result = `id:"stick",Count:1,tag:{display:{Name:'{"text":"Soulstone","italic":false}',Lore:['[{"text":"❖","color":"blue","italic":false},{"text":" Advanced Crafting","color":"red"}]']},CustomModelData:103,crafter:1}`;

// Render the recipe.
let i = 0;
recipe.forEach(s => s.split(' ').forEach(cur => {
  let item = items[cur];
  if (item[1]===0) str += `unless data block ~ ~ ~ Items[{Slot:${slots[i++]}b}] `;
  else str += `if data block ~ ~ ~ Items[{Slot:${slots[i++]}b,id:"${item[0]}",Count:${item[1]}b}] `;
}));
str += 'run tag @s add success\n';
str += 'execute if entity @s[tag=success] run tag @s add craft\n';
str += 'execute if entity @s[tag=success] run data modify block ~ ~ ~ Items append value {Slot:16,'+result+'}\n';
str += 'tag @s remove success';
console.log(str);