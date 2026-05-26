---
layout: page
title: TOEFL
permalink: /toefl/
description: TOEFL 2026 Reading Task 1 — Complete the Words practice
nav: true
nav_order: 6
---

<style>
.toefl-container {
  max-width: 820px;
  margin: 0 auto;
  font-family: inherit;
}
.toefl-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 1.5rem;
  flex-wrap: wrap;
  gap: 0.75rem;
}
.toefl-badge {
  background: #4a90e2;
  color: white;
  padding: 0.3rem 0.8rem;
  border-radius: 20px;
  font-size: 0.8rem;
  font-weight: 600;
  letter-spacing: 0.5px;
}
.toefl-timer {
  font-size: 1.4rem;
  font-weight: 700;
  color: #333;
  font-variant-numeric: tabular-nums;
}
.toefl-timer.warning { color: #e74c3c; }

.toefl-passage-select {
  display: flex;
  gap: 0.5rem;
  flex-wrap: wrap;
  margin-bottom: 1.25rem;
}
.passage-chip {
  padding: 0.3rem 0.75rem;
  border-radius: 20px;
  border: 2px solid #e0e0e0;
  background: white;
  cursor: pointer;
  font-size: 0.82rem;
  font-weight: 600;
  color: #555;
  transition: all 0.15s;
}
.passage-chip:hover { border-color: #4a90e2; color: #4a90e2; }
.passage-chip.active { background: #4a90e2; border-color: #4a90e2; color: white; }

.toefl-topic {
  font-size: 0.82rem;
  color: #888;
  margin-bottom: 0.85rem;
  font-style: italic;
}

.toefl-controls {
  display: flex;
  gap: 0.75rem;
  flex-wrap: wrap;
  margin-bottom: 1.25rem;
}
.toefl-btn {
  padding: 0.5rem 1.2rem;
  border: none;
  border-radius: 6px;
  font-size: 0.9rem;
  font-weight: 600;
  cursor: pointer;
  transition: opacity 0.15s, transform 0.1s;
}
.toefl-btn:hover { opacity: 0.85; transform: translateY(-1px); }
.toefl-btn:active { transform: translateY(0); }
.btn-primary  { background: #4a90e2; color: white; }
.btn-success  { background: #27ae60; color: white; }
.btn-secondary{ background: #95a5a6; color: white; }
.btn-outline  { background: white; color: #4a90e2; border: 2px solid #4a90e2; }

/* Passage text area */
.toefl-passage {
  background: #f8f9fa;
  border-left: 4px solid #4a90e2;
  border-radius: 6px;
  padding: 1.5rem 1.75rem;
  line-height: 2.6;
  font-size: 1.05rem;
  margin-bottom: 1.5rem;
}

/* Blank group wrapper — sits inline with text */
.toefl-blank {
  display: inline-flex;
  align-items: center;
  gap: 3px;
  vertical-align: middle;
  margin: 0 1px;
}

/* Individual letter box */
.letter-box {
  display: inline-block;
  width: 14px;
  height: 1.15em;
  border: none;
  border-bottom: 1.5px solid #888;
  background: transparent;
  text-align: center;
  font-size: 1rem;
  font-family: inherit;
  font-weight: normal;
  color: #222;
  outline: none;
  padding: 0;
  vertical-align: baseline;
  transition: border-color 0.15s;
  caret-color: transparent;
}
.letter-box:focus {
  border-bottom-color: #4a90e2;
}
.letter-box.correct {
  border-bottom-color: #27ae60;
  color: #222;
  font-weight: normal;
}
.letter-box.incorrect {
  border-bottom-color: #e74c3c;
  color: #222;
}

/* Score box */
.toefl-score {
  background: white;
  border: 2px solid #e0e0e0;
  border-radius: 8px;
  padding: 1.25rem 1.5rem;
  display: none;
  margin-bottom: 1.25rem;
}
.toefl-score.show { display: block; }
.score-row {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 0.5rem;
}
.score-big { font-size: 2.5rem; font-weight: 800; color: #4a90e2; }
.score-label { color: #666; font-size: 0.9rem; }
.score-bar-bg {
  background: #e0e0e0;
  border-radius: 10px;
  height: 10px;
  overflow: hidden;
  margin-top: 0.5rem;
}
.score-bar-fill {
  height: 100%;
  background: linear-gradient(90deg, #4a90e2, #27ae60);
  border-radius: 10px;
  transition: width 0.6s ease;
}
</style>

<div class="toefl-container">
  <div class="toefl-header">
    <div>
      <span class="toefl-badge">TOEFL 2026</span>
      <h4 style="margin: 0.4rem 0 0; font-weight: 700;">Reading Task 1 — Complete the Words</h4>
    </div>
    <div class="toefl-timer" id="timer">03:00</div>
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

  <div class="toefl-score" id="scoreBox">
    <div class="score-row">
      <span class="score-label">Score</span>
      <span class="score-big" id="scoreNum">0/10</span>
    </div>
    <div class="score-bar-bg">
      <div class="score-bar-fill" id="scoreBar" style="width:0%"></div>
    </div>
    <p id="scoreFeedback" style="margin:0.6rem 0 0; font-size:0.9rem; color:#555;"></p>
  </div>
</div>

<script>
let passages = [];
let currentPassageIdx = 0;
let timerInterval = null;
let secondsLeft = 180;

/* ── Parse passage text ── */
function parsePassage(raw) {
  const parts = [];
  const regex = /([^\[]*)\[([^\]]+)\]/g;
  let last = 0, m;
  while ((m = regex.exec(raw)) !== null) {
    if (m.index > last) parts.push({ type: 'text', value: raw.slice(last, m.index) });
    if (m[1]) parts.push({ type: 'text', value: m[1] });
    parts.push({ type: 'blank', hidden: m[2] });
    last = m.index + m[0].length;
  }
  if (last < raw.length) parts.push({ type: 'text', value: raw.slice(last) });
  return parts;
}

/* ── Build HTML with per-letter boxes ── */
function buildPassageHTML(parts) {
  let html = '';
  let blankIdx = 0;
  for (const p of parts) {
    if (p.type === 'text') {
      html += p.value;
    } else {
      const answer = p.hidden.toLowerCase();
      const boxes = answer.split('').map((ch, pos) =>
        `<input class="letter-box"
          data-blank="${blankIdx}"
          data-pos="${pos}"
          data-len="${answer.length}"
          maxlength="1"
          autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false">`
      ).join('');
      html += `<span class="toefl-blank" data-blank="${blankIdx}" data-answer="${answer}">${boxes}</span>`;
      blankIdx++;
    }
  }
  return html;
}

/* ── Attach keyboard events after render ── */
function attachEvents() {
  const boxes = Array.from(document.querySelectorAll('.letter-box'));
  boxes.forEach((box, i) => {
    box.addEventListener('keydown', e => {
      if (e.key === 'Backspace') {
        if (box.value === '' && i > 0) {
          e.preventDefault();
          boxes[i - 1].focus();
          boxes[i - 1].value = '';
        }
      } else if (e.key === 'Tab' || e.key === 'Enter') {
        e.preventDefault();
        // Jump to first box of next blank group
        const curBlank = parseInt(box.dataset.blank);
        const nextFirst = boxes.find(b => parseInt(b.dataset.blank) === curBlank + 1);
        if (nextFirst) nextFirst.focus();
      } else if (e.key === 'ArrowLeft' && i > 0) {
        e.preventDefault(); boxes[i - 1].focus();
      } else if (e.key === 'ArrowRight' && i < boxes.length - 1) {
        e.preventDefault(); boxes[i + 1].focus();
      }
    });

    box.addEventListener('input', () => {
      if (box.value.length === 1 && i < boxes.length - 1) {
        const nextBox = boxes[i + 1];
        // Only auto-advance within same blank group
        if (parseInt(nextBox.dataset.blank) === parseInt(box.dataset.blank)) {
          nextBox.focus();
        }
      }
    });
  });
}

/* ── Render ── */
function renderPassage(idx) {
  resetTimer();
  const p = passages[idx];
  document.getElementById('topicLabel').textContent = 'Topic: ' + p.topic;
  const parts = parsePassage(p.text);
  document.getElementById('passage').innerHTML = buildPassageHTML(parts);
  document.getElementById('scoreBox').classList.remove('show');
  document.querySelectorAll('.passage-chip').forEach((c, i) =>
    c.classList.toggle('active', i === idx));
  attachEvents();
}

function buildChips() {
  document.getElementById('passageSelect').innerHTML = passages.map((p, i) =>
    `<button class="passage-chip ${i===0?'active':''}" onclick="switchPassage(${i})">Passage ${i+1}</button>`
  ).join('');
}

function switchPassage(idx) {
  if (timerInterval) { clearInterval(timerInterval); timerInterval = null; }
  currentPassageIdx = idx;
  renderPassage(idx);
}

/* ── Check / Reveal ── */
function checkAnswers() {
  let correct = 0;
  document.querySelectorAll('.toefl-blank').forEach(span => {
    const answer = span.dataset.answer;
    const boxes = span.querySelectorAll('.letter-box');
    const typed = Array.from(boxes).map(b => b.value.toLowerCase()).join('');
    const isCorrect = typed === answer;
    if (isCorrect) correct++;
    boxes.forEach(b => {
      b.classList.toggle('correct', isCorrect);
      b.classList.toggle('incorrect', !isCorrect);
    });
  });
  const total = document.querySelectorAll('.toefl-blank').length;
  showScore(correct, total);
  if (timerInterval) { clearInterval(timerInterval); timerInterval = null; }
}

function revealAll() {
  document.querySelectorAll('.toefl-blank').forEach(span => {
    const answer = span.dataset.answer;
    span.querySelectorAll('.letter-box').forEach((b, i) => {
      b.value = answer[i] || '';
      b.classList.add('correct');
      b.classList.remove('incorrect');
    });
  });
  const total = document.querySelectorAll('.toefl-blank').length;
  showScore(total, total);
  if (timerInterval) { clearInterval(timerInterval); timerInterval = null; }
}

function showScore(correct, total) {
  const pct = Math.round(correct / total * 100);
  document.getElementById('scoreNum').textContent = correct + '/' + total;
  document.getElementById('scoreBar').style.width = pct + '%';
  const msgs = [
    [100, 'Perfect! Excellent vocabulary and spelling.'],
    [80,  'Great job! Review the missed words.'],
    [60,  'Good effort. Focus on context clues.'],
    [40,  'Keep practicing! Read the passage carefully.'],
    [0,   'Try again — read the whole passage first.']
  ];
  document.getElementById('scoreFeedback').textContent =
    msgs.find(([k]) => pct >= k)[1];
  document.getElementById('scoreBox').classList.add('show');
}

function resetPassage() {
  if (timerInterval) { clearInterval(timerInterval); timerInterval = null; }
  renderPassage(currentPassageIdx);
}

/* ── Timer ── */
function resetTimer() {
  if (timerInterval) { clearInterval(timerInterval); timerInterval = null; }
  secondsLeft = 180;
  updateTimerDisplay();
}

function updateTimerDisplay() {
  const m = Math.floor(secondsLeft / 60).toString().padStart(2, '0');
  const s = (secondsLeft % 60).toString().padStart(2, '0');
  const el = document.getElementById('timer');
  el.textContent = m + ':' + s;
  el.classList.toggle('warning', secondsLeft <= 30);
}

function startTimer() {
  if (timerInterval) return;
  timerInterval = setInterval(() => {
    secondsLeft--;
    updateTimerDisplay();
    if (secondsLeft <= 0) {
      clearInterval(timerInterval);
      timerInterval = null;
      checkAnswers();
    }
  }, 1000);
}

/* ── Load passages ── */
fetch('{{ "/assets/json/toefl-passages.json" | relative_url }}')
  .then(r => r.json())
  .then(data => {
    passages = data;
    buildChips();
    renderPassage(0);
  })
  .catch(() => {
    document.getElementById('passage').textContent =
      'Failed to load passages. Check assets/json/toefl-passages.json';
  });
</script>
