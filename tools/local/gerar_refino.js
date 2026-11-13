// gaaRO: gera db/import/refine.yml (sistema de refino SEM quebra e SEM rebaixamento).
// Uso (na pasta server): node tools/local/gerar_refino.js
// - Chances de +1 a +10 reduzidas (tabela abaixo). Acima de +10 mantém a chance original.
// - Quebra e rebaixamento sao zerados no C++ (status.cpp, RefineDatabase): o importador nao aceita 0 em BreakingRate.
//   Falhar so gasta minerio e zeny.
// - Minério Enriquecido: +10 pontos percentuais sobre a chance comum. HD: igual à comum.
// Só os campos alterados são escritos; o rAthena mescla com db/re/refine.yml.
const fs = require('fs');
const path = require('path');
const root = path.resolve(__dirname, '..', '..');

// chance de sucesso (em %) do refino comum para ir de +(n-1) para +n
const TABELA = { 1: 80, 2: 60, 3: 50, 4: 40, 5: 30, 6: 25, 7: 20, 8: 15, 9: 10, 10: 5 };
const BONUS_ENRIQUECIDO = 10; // pontos percentuais

const src = fs.readFileSync(path.join(root, 'db/re/refine.yml'), 'utf8').split(/\r?\n/);
const tree = []; // [{g, levels:[{lv, rls:[{rl, types:[t]}]}]}]
let g = null, lv = null, rl = null;
for (const line of src) {
  let m;
  if ((m = line.match(/^  - Group: (\w+)/))) { g = { name: m[1], levels: [] }; tree.push(g); }
  else if ((m = line.match(/^      - Level: (\d+)/))) { lv = { lv: +m[1], rls: [] }; g.levels.push(lv); }
  else if ((m = line.match(/^          - Level: (\d+)/))) { rl = { rl: +m[1], types: [] }; lv.rls.push(rl); }
  else if ((m = line.match(/^              - Type: (\w+)/))) rl.types.push(m[1]);
}

const out = [
  '# gaaRO: chances de refino (a quebra/rebaixamento e zerada no codigo). ARQUIVO GERADO por tools/local/gerar_refino.js - nao edite a mao.',
  'Header:', '  Type: REFINE_DB', '  Version: 2', '', 'Body:',
];
for (const grp of tree) {
  out.push(`  - Group: ${grp.name}`, '    Levels:');
  for (const L of grp.levels) {
    out.push(`      - Level: ${L.lv}`, '        RefineLevels:');
    for (const R of L.rls) {
      out.push(`          - Level: ${R.rl}`, '            Chances:');
      for (const t of R.types) {
        out.push(`              - Type: ${t}`);
        if (TABELA[R.rl] !== undefined) {
          const base = TABELA[R.rl];
          const pct = t === 'Enriched' ? Math.min(100, base + BONUS_ENRIQUECIDO) : base;
          out.push(`                Rate: ${pct * 100}`);
        }
      }
    }
  }
}
fs.mkdirSync(path.join(root, 'db/import'), { recursive: true });
fs.writeFileSync(path.join(root, 'db/import/refine.yml'), out.join('\n') + '\n', 'utf8');

// resumo
let esp = 0, acc = 1;
for (let n = 1; n <= 10; n++) { esp += 100 / TABELA[n]; acc *= TABELA[n] / 100; }
console.log('Tabela (comum):', Object.entries(TABELA).map(([n, p]) => `+${n}:${p}%`).join(' '));
console.log(`Enriquecido: +${BONUS_ENRIQUECIDO} pontos. Tentativas esperadas do +0 ao +10 (comum): ${esp.toFixed(1)} minérios.`);
console.log(`Chance de chegar ao +10 sem nenhuma falha: ${(acc * 100).toFixed(4)}%`);
console.log(`db/import/refine.yml: ${out.length} linhas`);
