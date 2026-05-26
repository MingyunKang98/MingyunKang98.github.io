---
layout: page
title: TOEFL
permalink: /toefl/
description: TOEFL 2026 Reading Task 1 & 짝표현 practice
nav: true
nav_order: 6
---

<style>
/* ── Shared ── */
.toefl-container { max-width: 820px; margin: 0 auto; font-family: inherit; }

/* Tab bar */
.toefl-tabs {
  display: flex;
  gap: 0;
  border-bottom: 2px solid #e0e0e0;
  margin-bottom: 1.75rem;
}
.toefl-tab {
  padding: 0.55rem 1.3rem;
  font-size: 0.92rem;
  font-weight: 600;
  color: #888;
  cursor: pointer;
  border-bottom: 3px solid transparent;
  margin-bottom: -2px;
  background: none;
  border-top: none;
  border-left: none;
  border-right: none;
  transition: color 0.15s, border-color 0.15s;
}
.toefl-tab:hover { color: #4a90e2; }
.toefl-tab.active { color: #4a90e2; border-bottom-color: #4a90e2; }

.toefl-section { display: none; }
.toefl-section.active { display: block; }

/* Header row */
.toefl-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 1.5rem;
  flex-wrap: wrap;
  gap: 0.75rem;
}
.toefl-badge {
  background: #4a90e2; color: white;
  padding: 0.3rem 0.8rem; border-radius: 20px;
  font-size: 0.8rem; font-weight: 600; letter-spacing: 0.5px;
}
.toefl-timer {
  font-size: 1.4rem; font-weight: 700; color: #333;
  font-variant-numeric: tabular-nums;
}
.toefl-timer.warning { color: #e74c3c; }

/* Passage chips */
.toefl-passage-select { display: flex; gap: 0.5rem; flex-wrap: wrap; margin-bottom: 1.25rem; }
.passage-chip {
  padding: 0.3rem 0.75rem; border-radius: 20px;
  border: 2px solid #e0e0e0; background: white;
  cursor: pointer; font-size: 0.82rem; font-weight: 600; color: #555;
  transition: all 0.15s;
}
.passage-chip:hover { border-color: #4a90e2; color: #4a90e2; }
.passage-chip.active { background: #4a90e2; border-color: #4a90e2; color: white; }

.toefl-topic { font-size: 0.82rem; color: #888; margin-bottom: 0.85rem; font-style: italic; }

/* Controls */
.toefl-controls { display: flex; gap: 0.75rem; flex-wrap: wrap; margin-bottom: 1.25rem; }
.toefl-btn {
  padding: 0.5rem 1.2rem; border: none; border-radius: 6px;
  font-size: 0.9rem; font-weight: 600; cursor: pointer;
  transition: opacity 0.15s, transform 0.1s;
}
.toefl-btn:hover { opacity: 0.85; transform: translateY(-1px); }
.toefl-btn:active { transform: translateY(0); }
.btn-primary   { background: #4a90e2; color: white; }
.btn-success   { background: #27ae60; color: white; }
.btn-secondary { background: #95a5a6; color: white; }
.btn-outline   { background: white; color: #4a90e2; border: 2px solid #4a90e2; }

/* Reading passage */
.toefl-passage {
  background: #f8f9fa; border-left: 4px solid #4a90e2;
  border-radius: 6px; padding: 1.5rem 1.75rem;
  line-height: 2.6; font-size: 1.05rem; margin-bottom: 1.5rem;
}

/* Letter boxes (shared) */
.toefl-blank {
  display: inline-flex; align-items: center; gap: 3px;
  vertical-align: middle; margin: 0 1px;
}
.letter-box {
  display: inline-block; width: 14px; height: 1.15em;
  border: none; border-bottom: 1.5px solid #888;
  background: transparent; text-align: center;
  font-size: 1rem; font-family: inherit; font-weight: normal; color: #222;
  outline: none; padding: 0; vertical-align: baseline;
  transition: border-color 0.15s; caret-color: transparent;
}
.letter-box:focus { border-bottom-color: #4a90e2; }
.letter-box.correct  { border-bottom-color: #27ae60; color: #222; font-weight: normal; }
.letter-box.incorrect{ border-bottom-color: #e74c3c; color: #222; }

/* Score box */
.toefl-score {
  background: white; border: 2px solid #e0e0e0; border-radius: 8px;
  padding: 1.25rem 1.5rem; display: none; margin-bottom: 1.25rem;
}
.toefl-score.show { display: block; }
.score-row { display: flex; justify-content: space-between; align-items: center; margin-bottom: 0.5rem; }
.score-big { font-size: 2.5rem; font-weight: 800; color: #4a90e2; }
.score-label { color: #666; font-size: 0.9rem; }
.score-bar-bg { background: #e0e0e0; border-radius: 10px; height: 10px; overflow: hidden; margin-top: 0.5rem; }
.score-bar-fill {
  height: 100%; background: linear-gradient(90deg, #4a90e2, #27ae60);
  border-radius: 10px; transition: width 0.6s ease;
}

/* ── Pair Expression styles ── */
.pe-grid {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 0.6rem 1.5rem;
  margin-bottom: 1.5rem;
}
@media (max-width: 600px) { .pe-grid { grid-template-columns: 1fr; } }

.pe-item {
  padding: 0.55rem 0.75rem;
  border-radius: 6px;
  background: #f8f9fa;
  border-left: 3px solid #e0e0e0;
  transition: border-color 0.15s;
}
.pe-item.correct-item  { border-left-color: #27ae60; background: #f2fbf5; }
.pe-item.incorrect-item{ border-left-color: #e74c3c; background: #fdf5f5; }

.pe-korean {
  font-size: 0.78rem;
  color: #888;
  margin-bottom: 0.25rem;
  font-style: italic;
}
.pe-expression {
  font-size: 1rem;
  line-height: 1.8;
}

/* Pagination */
.pe-pagination {
  display: flex; align-items: center; gap: 0.5rem;
  margin-bottom: 1.25rem; flex-wrap: wrap;
}
.pe-page-btn {
  padding: 0.3rem 0.7rem; border-radius: 6px;
  border: 1.5px solid #e0e0e0; background: white;
  cursor: pointer; font-size: 0.82rem; font-weight: 600; color: #555;
  transition: all 0.15s;
}
.pe-page-btn:hover { border-color: #4a90e2; color: #4a90e2; }
.pe-page-btn.active { background: #4a90e2; border-color: #4a90e2; color: white; }
.pe-page-info { font-size: 0.82rem; color: #aaa; margin-left: 0.25rem; }
</style>

<div class="toefl-container">

  <!-- Tab bar -->
  <div class="toefl-tabs">
    <button class="toefl-tab active" onclick="switchTab('reading')">Reading Task 1</button>
    <button class="toefl-tab"        onclick="switchTab('pair')">짝 표현</button>
  </div>

  <!-- ══════════ Reading Task 1 ══════════ -->
  <div class="toefl-section active" id="section-reading">
    <div class="toefl-header">
      <div>
        <span class="toefl-badge">TOEFL 2026</span>
        <h4 style="margin:0.4rem 0 0; font-weight:700;">Reading Task 1 — Complete the Words</h4>
      </div>
      <div class="toefl-timer" id="r-timer">03:00</div>
    </div>

    <div class="toefl-passage-select" id="passageSelect"></div>
    <div class="toefl-topic" id="topicLabel"></div>

    <div class="toefl-controls">
      <button class="toefl-btn btn-primary"   onclick="startTimer()">▶ Start Timer</button>
      <button class="toefl-btn btn-success"   onclick="checkAnswers()">✓ Check Answers</button>
      <button class="toefl-btn btn-outline"   onclick="revealAll()">Show Answers</button>
      <button class="toefl-btn btn-secondary" onclick="resetPassage()">↺ Reset</button>
    </div>

    <div class="toefl-passage" id="passage"></div>

    <div class="toefl-score" id="r-scoreBox">
      <div class="score-row">
        <span class="score-label">Score</span>
        <span class="score-big" id="r-scoreNum">0/10</span>
      </div>
      <div class="score-bar-bg"><div class="score-bar-fill" id="r-scoreBar" style="width:0%"></div></div>
      <p id="r-scoreFeedback" style="margin:0.6rem 0 0; font-size:0.9rem; color:#555;"></p>
    </div>
  </div>

  <!-- ══════════ 짝 표현 ══════════ -->
  <div class="toefl-section" id="section-pair">
    <div class="toefl-header">
      <div>
        <span class="toefl-badge" style="background:#7c5cbf;">짝 표현</span>
        <h4 style="margin:0.4rem 0 0; font-weight:700;">빈칸에 알맞은 단어를 입력하세요</h4>
      </div>
      <div class="pe-page-info" id="pe-progress"></div>
    </div>

    <div class="pe-pagination" id="pe-pagination"></div>

    <div class="toefl-controls">
      <button class="toefl-btn btn-success"   onclick="peCheck()">✓ Check Answers</button>
      <button class="toefl-btn btn-outline"   onclick="peReveal()">Show Answers</button>
      <button class="toefl-btn btn-secondary" onclick="peReset()">↺ Reset</button>
    </div>

    <div class="pe-grid" id="pe-grid"></div>

    <div class="toefl-score" id="pe-scoreBox">
      <div class="score-row">
        <span class="score-label">Score</span>
        <span class="score-big" id="pe-scoreNum">0/10</span>
      </div>
      <div class="score-bar-bg"><div class="score-bar-fill" id="pe-scoreBar" style="width:0%"></div></div>
      <p id="pe-scoreFeedback" style="margin:0.6rem 0 0; font-size:0.9rem; color:#555;"></p>
    </div>
  </div>

</div><!-- end toefl-container -->

<script>
/* ══════════════════════════════
   Tab switcher
══════════════════════════════ */
function switchTab(id) {
  document.querySelectorAll('.toefl-tab').forEach((t, i) =>
    t.classList.toggle('active', ['reading','pair'][i] === id));
  document.querySelectorAll('.toefl-section').forEach(s =>
    s.classList.toggle('active', s.id === 'section-' + id));
}

/* ══════════════════════════════
   Shared: letter-box builder
══════════════════════════════ */
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
      } else if ((e.key === 'Tab' || e.key === 'Enter')) {
        e.preventDefault();
        const cur = box.dataset.blank;
        const next = boxes.find(b => b !== box && b.dataset.blank !== cur);
        if (next) next.focus();
      } else if (e.key === 'ArrowLeft'  && i > 0)              { e.preventDefault(); boxes[i-1].focus(); }
        else if (e.key === 'ArrowRight' && i < boxes.length-1) { e.preventDefault(); boxes[i+1].focus(); }
    });
    box.addEventListener('input', () => {
      if (box.value.length === 1 && i < boxes.length-1 &&
          boxes[i+1].dataset.blank === box.dataset.blank) {
        boxes[i+1].focus();
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

/* ══════════════════════════════
   Reading Task 1
══════════════════════════════ */
let passages = [], currentPassageIdx = 0, timerInterval = null, secondsLeft = 180;

function buildPassageHTML(parts) { return buildLetterBoxes(parts, 'r'); }

function renderPassage(idx) {
  resetTimer();
  const p = passages[idx];
  document.getElementById('topicLabel').textContent = 'Topic: ' + p.topic;
  document.getElementById('passage').innerHTML = buildLetterBoxes(parseText(p.text), 'r');
  document.getElementById('r-scoreBox').classList.remove('show');
  document.querySelectorAll('.passage-chip').forEach((c,i) => c.classList.toggle('active', i===idx));
  attachBoxEvents(document.getElementById('passage'));
}

function buildChips() {
  document.getElementById('passageSelect').innerHTML = passages.map((p,i) =>
    `<button class="passage-chip ${i===0?'active':''}" onclick="switchPassage(${i})">Passage ${i+1}</button>`
  ).join('');
}

function switchPassage(idx) {
  if (timerInterval) { clearInterval(timerInterval); timerInterval = null; }
  currentPassageIdx = idx; renderPassage(idx);
}

function checkAnswers() {
  let correct = 0;
  const spans = document.querySelectorAll('#passage .toefl-blank');
  spans.forEach(span => {
    const answer = span.dataset.answer;
    const typed = Array.from(span.querySelectorAll('.letter-box')).map(b=>b.value.toLowerCase()).join('');
    const ok = typed === answer;
    if (ok) correct++;
    span.querySelectorAll('.letter-box').forEach(b => {
      b.classList.toggle('correct', ok); b.classList.toggle('incorrect', !ok);
    });
  });
  const total = spans.length;
  const pct = Math.round(correct/total*100);
  document.getElementById('r-scoreNum').textContent = correct+'/'+total;
  document.getElementById('r-scoreBar').style.width = pct+'%';
  document.getElementById('r-scoreFeedback').textContent = scoreMsg(pct);
  document.getElementById('r-scoreBox').classList.add('show');
  if (timerInterval) { clearInterval(timerInterval); timerInterval = null; }
}

function revealAll() {
  document.querySelectorAll('#passage .toefl-blank').forEach(span => {
    const answer = span.dataset.answer;
    span.querySelectorAll('.letter-box').forEach((b,i) => {
      b.value = answer[i]||''; b.classList.add('correct'); b.classList.remove('incorrect');
    });
  });
  checkAnswers();
}

function resetPassage() {
  if (timerInterval) { clearInterval(timerInterval); timerInterval = null; }
  renderPassage(currentPassageIdx);
}

function resetTimer() {
  if (timerInterval) { clearInterval(timerInterval); timerInterval = null; }
  secondsLeft = 180; updateTimerDisplay();
}
function updateTimerDisplay() {
  const m = Math.floor(secondsLeft/60).toString().padStart(2,'0');
  const s = (secondsLeft%60).toString().padStart(2,'0');
  const el = document.getElementById('r-timer');
  el.textContent = m+':'+s;
  el.classList.toggle('warning', secondsLeft<=30);
}
function startTimer() {
  if (timerInterval) return;
  timerInterval = setInterval(()=>{
    secondsLeft--; updateTimerDisplay();
    if (secondsLeft<=0) { clearInterval(timerInterval); timerInterval=null; checkAnswers(); }
  }, 1000);
}

/* ══════════════════════════════
   짝 표현
══════════════════════════════ */
const PE_PAGE_SIZE = 10;
let peData = [], pePage = 0;

function renderPePage(page) {
  pePage = page;
  const start = page * PE_PAGE_SIZE;
  const items = peData.slice(start, start + PE_PAGE_SIZE);
  const grid = document.getElementById('pe-grid');

  grid.innerHTML = items.map((item, localIdx) => {
    const globalIdx = start + localIdx;
    const parts = parseText(item.text);
    const inner = buildLetterBoxes(parts, 'pe' + globalIdx);
    return `<div class="pe-item" id="pe-item-${globalIdx}">
      <div class="pe-korean">${item.korean}</div>
      <div class="pe-expression">${inner}</div>
    </div>`;
  }).join('');

  document.getElementById('pe-scoreBox').classList.remove('show');
  attachBoxEvents(grid);

  // pagination buttons
  const totalPages = Math.ceil(peData.length / PE_PAGE_SIZE);
  document.getElementById('pe-pagination').innerHTML =
    Array.from({length: totalPages}, (_,i) =>
      `<button class="pe-page-btn ${i===page?'active':''}" onclick="renderPePage(${i})">${i+1}</button>`
    ).join('') +
    `<span class="pe-page-info">${start+1}–${Math.min(start+PE_PAGE_SIZE, peData.length)} / ${peData.length}</span>`;

  document.getElementById('pe-progress').textContent =
    `Page ${page+1} / ${totalPages}`;
}

function peCheck() {
  const start = pePage * PE_PAGE_SIZE;
  let correct = 0, total = 0;
  peData.slice(start, start + PE_PAGE_SIZE).forEach((item, localIdx) => {
    const globalIdx = start + localIdx;
    const itemEl = document.getElementById('pe-item-' + globalIdx);
    const spans = itemEl.querySelectorAll('.toefl-blank');
    let itemCorrect = true;
    spans.forEach(span => {
      total++;
      const answer = span.dataset.answer;
      const typed = Array.from(span.querySelectorAll('.letter-box')).map(b=>b.value.toLowerCase()).join('');
      const ok = typed === answer;
      if (ok) correct++; else itemCorrect = false;
      span.querySelectorAll('.letter-box').forEach(b => {
        b.classList.toggle('correct', ok); b.classList.toggle('incorrect', !ok);
      });
    });
    itemEl.classList.toggle('correct-item', itemCorrect);
    itemEl.classList.toggle('incorrect-item', !itemCorrect);
  });
  const pct = Math.round(correct/total*100);
  document.getElementById('pe-scoreNum').textContent = correct+'/'+total;
  document.getElementById('pe-scoreBar').style.width = pct+'%';
  document.getElementById('pe-scoreFeedback').textContent = scoreMsg(pct);
  document.getElementById('pe-scoreBox').classList.add('show');
}

function peReveal() {
  const start = pePage * PE_PAGE_SIZE;
  peData.slice(start, start + PE_PAGE_SIZE).forEach((item, localIdx) => {
    const globalIdx = start + localIdx;
    const itemEl = document.getElementById('pe-item-' + globalIdx);
    itemEl.querySelectorAll('.toefl-blank').forEach(span => {
      const answer = span.dataset.answer;
      span.querySelectorAll('.letter-box').forEach((b,i) => {
        b.value = answer[i]||''; b.classList.add('correct'); b.classList.remove('incorrect');
      });
      span.closest('.pe-item').classList.add('correct-item');
      span.closest('.pe-item').classList.remove('incorrect-item');
    });
  });
  peCheck();
}

function peReset() { renderPePage(pePage); }

/* ══════════════════════════════
   Load data
══════════════════════════════ */
fetch('{{ "/assets/json/toefl-passages.json" | relative_url }}')
  .then(r => r.json())
  .then(data => { passages = data; buildChips(); renderPassage(0); })
  .catch(() => { document.getElementById('passage').textContent = 'Failed to load passages.'; });

fetch('{{ "/assets/json/pair-expressions.json" | relative_url }}')
  .then(r => r.json())
  .then(data => { peData = data; renderPePage(0); })
  .catch(() => { document.getElementById('pe-grid').textContent = 'Failed to load pair expressions.'; });
</script>
