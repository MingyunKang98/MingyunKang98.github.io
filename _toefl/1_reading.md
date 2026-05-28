---
layout: page
title: Reading Task 1
description: Complete the Words 형식 지문 빈칸 채우기
img: assets/img/8.jpg
importance: 1
category: practice
---

<link rel="stylesheet" href="{{ '/assets/css/toefl.css' | relative_url }}">

<div class="toefl-container">
  <a href="{{ '/toefl/' | relative_url }}" class="toefl-back">← Back to TOEFL</a>

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

<script src="{{ '/assets/js/toefl-common.js' | relative_url }}"></script>
<script>
let passages = [], currentPassageIdx = 0, timerInterval = null, secondsLeft = 180;

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

fetch('{{ "/assets/json/toefl-passages.json" | relative_url }}')
  .then(r => r.json())
  .then(data => { passages = data; buildChips(); renderPassage(0); })
  .catch(() => { document.getElementById('passage').textContent = 'Failed to load passages.'; });
</script>
