---
layout: page
title: 접두사
description: 빈출 접두사 22종 · 200문장 (해커스 박보라 응용문제)
img: assets/img/11.jpg
importance: 3
category: practice
---

<link rel="stylesheet" href="{{ '/assets/css/toefl.css' | relative_url }}">

<div class="toefl-container">
  <a href="{{ '/toefl/' | relative_url }}" class="toefl-back">← Back to TOEFL</a>

  <div class="toefl-header">
    <div>
      <span class="toefl-badge" style="background:#e07b39;">접두사</span>
      <h4 style="margin:0.4rem 0 0; font-weight:700;">빈출 접두사 — Complete the Words</h4>
    </div>
    <div class="pe-page-info" id="px-progress"></div>
  </div>

  <div class="px-select" id="px-select"></div>
  <div class="toefl-topic" id="px-meaning"></div>

  <div class="toefl-controls">
    <button class="toefl-btn btn-success"   onclick="pxCheck()">✓ Check Answers</button>
    <button class="toefl-btn btn-outline"   onclick="pxReveal()">Show Answers</button>
    <button class="toefl-btn btn-secondary" onclick="pxReset()">↺ Reset</button>
  </div>

  <div class="toefl-passage" id="px-list"></div>

  <div class="toefl-score" id="px-scoreBox">
    <div class="score-row">
      <span class="score-label">Score</span>
      <span class="score-big" id="px-scoreNum">0/10</span>
    </div>
    <div class="score-bar-bg"><div class="score-bar-fill" id="px-scoreBar" style="width:0%"></div></div>
    <p id="px-scoreFeedback" style="margin:0.6rem 0 0; font-size:0.9rem; color:#555;"></p>
  </div>
</div>

<script src="{{ '/assets/js/toefl-common.js' | relative_url }}"></script>
<script>
let pxData = [], pxIdx = 0;

function renderPrefix(idx) {
  pxIdx = idx;
  const group = pxData[idx];
  document.getElementById('px-meaning').textContent = group.prefix + '  =  ' + group.meaning;
  const list = document.getElementById('px-list');
  list.innerHTML = group.items.map((item, i) =>
    `<div class="px-item" id="px-item-${i}">
       <span class="px-num">${i+1}.</span>
       <span class="px-sentence">${buildLetterBoxes(parseText(item.text), 'px' + i)}</span>
     </div>`
  ).join('');
  document.getElementById('px-scoreBox').classList.remove('show');
  document.querySelectorAll('.px-chip').forEach((c,i) => c.classList.toggle('active', i===idx));
  document.getElementById('px-progress').textContent = `${group.items.length} sentences`;
  attachBoxEvents(list);
}

function buildPrefixChips() {
  document.getElementById('px-select').innerHTML = pxData.map((g,i) =>
    `<button class="px-chip ${i===0?'active':''}" onclick="renderPrefix(${i})">${g.prefix}</button>`
  ).join('');
}

function pxCheck() {
  let correct = 0, total = 0;
  document.querySelectorAll('#px-list .toefl-blank').forEach(span => {
    total++;
    const answer = span.dataset.answer;
    const typed = Array.from(span.querySelectorAll('.letter-box')).map(b=>b.value.toLowerCase()).join('');
    const ok = typed === answer;
    if (ok) correct++;
    span.querySelectorAll('.letter-box').forEach(b => {
      b.classList.toggle('correct', ok); b.classList.toggle('incorrect', !ok);
    });
  });
  const pct = Math.round(correct/total*100);
  document.getElementById('px-scoreNum').textContent = correct+'/'+total;
  document.getElementById('px-scoreBar').style.width = pct+'%';
  document.getElementById('px-scoreFeedback').textContent = scoreMsg(pct);
  document.getElementById('px-scoreBox').classList.add('show');
}

function pxReveal() {
  document.querySelectorAll('#px-list .toefl-blank').forEach(span => {
    const answer = span.dataset.answer;
    span.querySelectorAll('.letter-box').forEach((b,i) => {
      b.value = answer[i]||''; b.classList.add('correct'); b.classList.remove('incorrect');
    });
  });
  pxCheck();
}

function pxReset() { renderPrefix(pxIdx); }

fetch('{{ "/assets/json/prefixes.json" | relative_url }}')
  .then(r => r.json())
  .then(data => { pxData = data; buildPrefixChips(); renderPrefix(0); })
  .catch(() => { document.getElementById('px-list').textContent = 'Failed to load prefixes.'; });
</script>
