/* Shared TOEFL practice utilities */

function parseText(raw) {
  const parts = [];
  const re = /([^\[]*)\[([^\]]+)\]/g;
  let last = 0, m;
  while ((m = re.exec(raw)) !== null) {
    if (m.index > last) parts.push({ type: 'text', value: raw.slice(last, m.index) });
    if (m[1]) parts.push({ type: 'text', value: m[1] });
    parts.push({ type: 'blank', hidden: m[2] });
    last = m.index + m[0].length;
  }
  if (last < raw.length) parts.push({ type: 'text', value: raw.slice(last) });
  return parts;
}

function buildLetterBoxes(parts, prefix) {
  let html = '';
  let bIdx = 0;
  for (const p of parts) {
    if (p.type === 'text') {
      html += p.value;
    } else {
      const answer = p.hidden.toLowerCase();
      const boxes = answer.split('').map((_, pos) =>
        `<input class="letter-box" data-blank="${prefix}-${bIdx}" data-pos="${pos}" maxlength="1"
          autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false">`
      ).join('');
      html += `<span class="toefl-blank" data-blank="${prefix}-${bIdx}" data-answer="${answer}">${boxes}</span>`;
      bIdx++;
    }
  }
  return html;
}

function attachBoxEvents(container) {
  const boxes = Array.from(container.querySelectorAll('.letter-box'));
  boxes.forEach((box, i) => {
    box.addEventListener('keydown', e => {
      if (e.key === 'Backspace' && box.value === '' && i > 0) {
        e.preventDefault(); boxes[i-1].focus(); boxes[i-1].value = '';
      } else if (e.key === 'Tab' || e.key === 'Enter') {
        e.preventDefault();
        const cur = box.dataset.blank;
        const next = boxes.find(b => b !== box && b.dataset.blank !== cur);
        if (next) next.focus();
      } else if (e.key === 'ArrowLeft'  && i > 0)              { e.preventDefault(); boxes[i-1].focus(); }
        else if (e.key === 'ArrowRight' && i < boxes.length-1) { e.preventDefault(); boxes[i+1].focus(); }
    });
    box.addEventListener('input', () => {
      if (box.value.length === 1 && i < boxes.length - 1) {
        boxes[i + 1].focus();
      }
    });
  });
}

function scoreMsg(pct) {
  return [[100,'Perfect! Excellent vocabulary and spelling.'],
          [80, 'Great job! Review the missed words.'],
          [60, 'Good effort. Focus on context clues.'],
          [40, 'Keep practicing! Read the passage carefully.'],
          [0,  'Try again — read the whole passage first.']]
    .find(([k]) => pct >= k)[1];
}
