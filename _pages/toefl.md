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
  max-width: 800px;
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
.toefl-passage {
  background: #f8f9fa;
  border-left: 4px solid #4a90e2;
  border-radius: 6px;
  padding: 1.5rem 1.75rem;
  line-height: 2.2;
  font-size: 1.05rem;
  margin-bottom: 1.5rem;
}
.toefl-blank {
  display: inline-block;
  position: relative;
}
.toefl-blank input {
  border: none;
  border-bottom: 2px solid #4a90e2;
  background: transparent;
  font-size: 1.05rem;
  font-family: inherit;
  padding: 0 2px;
  outline: none;
  text-align: center;
  transition: border-color 0.2s;
  min-width: 20px;
}
.toefl-blank input:focus {
  border-bottom-color: #2563eb;
}
.toefl-blank input.correct {
  border-bottom-color: #27ae60;
  color: #27ae60;
  font-weight: 600;
}
.toefl-blank input.incorrect {
  border-bottom-color: #e74c3c;
  color: #e74c3c;
}
.toefl-blank .hint-label {
  font-size: 0.75rem;
  color: #888;
  position: absolute;
  top: -1.1rem;
  left: 50%;
  transform: translateX(-50%);
  white-space: nowrap;
  pointer-events: none;
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
.btn-primary { background: #4a90e2; color: white; }
.btn-success { background: #27ae60; color: white; }
.btn-secondary { background: #95a5a6; color: white; }
.btn-outline { background: white; color: #4a90e2; border: 2px solid #4a90e2; }
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
.score-big {
  font-size: 2.5rem;
  font-weight: 800;
  color: #4a90e2;
}
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
  font-size: 0.8rem;
  color: #888;
  margin-bottom: 0.75rem;
  font-style: italic;
}
.answer-reveal {
  font-size: 0.82rem;
  color: #e74c3c;
  font-weight: 600;
  display: none;
  margin-top: 0.2rem;
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
    <button class="toefl-btn btn-primary" onclick="startTimer()">▶ Start Timer</button>
    <button class="toefl-btn btn-success" onclick="checkAnswers()">✓ Check Answers</button>
    <button class="toefl-btn btn-outline" onclick="revealAll()">Show Answers</button>
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
    <p id="scoreFeedback" style="margin: 0.6rem 0 0; font-size: 0.9rem; color: #555;"></p>
  </div>
</div>

<script>
let passages = [];
let currentPassageIdx = 0;
let timerInterval = null;
let secondsLeft = 180;
let submitted = false;

function parsePassage(raw) {
  const parts = [];
  const regex = /([^\[]*)\[([^\]]+)\]/g;
  let last = 0, match;
  while ((match = regex.exec(raw)) !== null) {
    if (match.index > last) parts.push({ type: 'text', value: raw.slice(last, match.index) });
    const before = match[1];
    const hidden = match[2];
    if (before) parts.push({ type: 'text', value: before });
    parts.push({ type: 'blank', visible: '', hidden });
    last = match.index + match[0].length;
  }
  if (last < raw.length) parts.push({ type: 'text', value: raw.slice(last) });
  return parts;
}

function buildPassageHTML(parts) {
  let html = '';
  let idx = 0;
  for (const p of parts) {
    if (p.type === 'text') {
      html += p.value;
    } else {
      const len = p.hidden.length;
      const width = Math.max(len * 11 + 8, 30);
      html += `<span class="toefl-blank">
        <input type="text" id="blank-${idx}" data-answer="${p.hidden.toLowerCase()}"
          style="width:${width}px"
          placeholder="${'_'.repeat(len)}"
          maxlength="${len + 2}"
          oninput="autoSize(this)"
          onkeydown="handleKey(event, ${idx})"
          autocomplete="off" autocorrect="off" autocapitalize="off" spellcheck="false">
      </span>`;
      idx++;
    }
  }
  return html;
}

function countBlanks() {
  return document.querySelectorAll('.toefl-blank input').length;
}

function renderPassage(idx) {
  submitted = false;
  resetTimer();
  const p = passages[idx];
  document.getElementById('topicLabel').textContent = 'Topic: ' + p.topic;
  const parts = parsePassage(p.text);
  document.getElementById('passage').innerHTML = buildPassageHTML(parts);
  document.getElementById('scoreBox').classList.remove('show');
  clearInputStates();
  document.querySelectorAll('.passage-chip').forEach((c, i) => {
    c.classList.toggle('active', i === idx);
  });
}

function buildChips() {
  const sel = document.getElementById('passageSelect');
  sel.innerHTML = passages.map((p, i) =>
    `<button class="passage-chip ${i===0?'active':''}" onclick="switchPassage(${i})">Passage ${i+1}</button>`
  ).join('');
}

function switchPassage(idx) {
  if (timerInterval) { clearInterval(timerInterval); timerInterval = null; }
  currentPassageIdx = idx;
  renderPassage(idx);
}

function autoSize(input) {
  const len = Math.max(input.dataset.answer.length, input.value.length);
  input.style.width = Math.max(len * 11 + 8, 30) + 'px';
}

function handleKey(e, idx) {
  if (e.key === 'Enter' || e.key === 'Tab') {
    e.preventDefault();
    const next = document.getElementById('blank-' + (idx + 1));
    if (next) next.focus();
  }
}

function clearInputStates() {
  document.querySelectorAll('.toefl-blank input').forEach(inp => {
    inp.classList.remove('correct', 'incorrect');
  });
}

function checkAnswers() {
  submitted = true;
  let correct = 0;
  const inputs = document.querySelectorAll('.toefl-blank input');
  inputs.forEach(inp => {
    const answer = inp.dataset.answer;
    const userVal = inp.value.trim().toLowerCase();
    if (userVal === answer) {
      inp.classList.add('correct');
      inp.classList.remove('incorrect');
      correct++;
    } else {
      inp.classList.add('incorrect');
      inp.classList.remove('correct');
    }
  });
  showScore(correct, inputs.length);
  if (timerInterval) { clearInterval(timerInterval); timerInterval = null; }
}

function revealAll() {
  document.querySelectorAll('.toefl-blank input').forEach(inp => {
    inp.value = inp.dataset.answer;
    inp.classList.add('correct');
    inp.classList.remove('incorrect');
  });
  checkAnswers();
}

function showScore(correct, total) {
  const pct = Math.round(correct / total * 100);
  document.getElementById('scoreNum').textContent = correct + '/' + total;
  document.getElementById('scoreBar').style.width = pct + '%';
  const msgs = {
    100: 'Perfect! Excellent vocabulary and spelling.',
    80: 'Great job! Review the missed words.',
    60: 'Good effort. Focus on context clues.',
    40: 'Keep practicing! Read the passage carefully.',
    0: 'Try again — read the whole passage first.'
  };
  const key = [100, 80, 60, 40, 0].find(k => pct >= k);
  document.getElementById('scoreFeedback').textContent = msgs[key];
  document.getElementById('scoreBox').classList.add('show');
}

function resetPassage() {
  if (timerInterval) { clearInterval(timerInterval); timerInterval = null; }
  renderPassage(currentPassageIdx);
}

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

fetch('{{ "/assets/json/toefl-passages.json" | relative_url }}')
  .then(r => r.json())
  .then(data => {
    passages = data;
    buildChips();
    renderPassage(0);
  })
  .catch(() => {
    document.getElementById('passage').textContent = 'Failed to load passages. Check assets/json/toefl-passages.json';
  });
</script>
