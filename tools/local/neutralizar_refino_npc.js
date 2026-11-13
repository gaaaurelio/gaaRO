// gaaRO: neutraliza avisos de "pode quebrar" e a checagem do "limite seguro" nos refinadores. node tools/local/neutralizar_refino_npc.js
const fs = require('fs');
const files = ['npc/re/merchants/refine.txt', 'npc/merchants/refine.txt', 'npc/re/merchants/hd_refiner.txt',
  'npc/re/merchants/advanced_refiner.txt', 'npc/merchants/advanced_refiner.txt', 'npc/re/merchants/shadow_refiner.txt'];
const warn = /if\s*\(\s*getequippercentrefinery\([^)]*\)\s*<\s*100\s*\)\s*\{/g;      // bloco de aviso de risco
const safe = /\(\.@menu2 == 1 && getequippercentrefinery\(\.@part\) < 100\)/g;          // acusacao de troca de item
for (const f of files) {
  let s = fs.readFileSync(f, 'latin1');
  let a = 0, b = 0;
  s = s.replace(warn, () => { a++; return 'if (0) {	// gaaRO: refino sem quebra, sem aviso de risco'; });
  s = s.replace(safe, () => { b++; return '0'; });
  fs.writeFileSync(f, s, 'latin1');
  console.log(f + ': avisos desativados=' + a + ', checagens de limite seguro removidas=' + b);
}
