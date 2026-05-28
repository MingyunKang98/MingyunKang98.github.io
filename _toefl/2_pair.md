---
layout: page
title: 짝 표현
description: TOEFL 빈출 collocation 50개 (Complete the Words 형식)
img: assets/img/10.jpg
importance: 2
category: practice
---

<link rel="stylesheet" href="{{ '/assets/css/toefl.css' | relative_url }}">

<div class="toefl-container">
  <a href="{{ '/toefl/' | relative_url }}" class="toefl-back">← Back to TOEFL</a>

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

<script src="{{ '/assets/js/toefl-common.js' | relative_url }}"></script>
<script>
const PE_PAGE_SIZE = 10;
let peData = [], pePage = 0;

function renderPePage(page) {
  pePage = page;
  const start = page * PE_PAGE_SIZE;
  const items = peData.slice(start, start + PE_PAGE_SIZE);
  const grid = document.getElementById('pe-grid');

  grid.innerHTML = items.map((item, localIdx) => {
    const globalIdx = start + localIdx;
    return `<div class="pe-item" id="pe-item-${globalIdx}">
      <div class="pe-korean">${item.korean}</div>
      <div class="pe-expression">${buildLetterBoxes(parseText(item.text), 'pe' + globalIdx)}</div>
    </div>`;
  }).join('');

  document.getElementById('pe-scoreBox').classList.remove('show');
  attachBoxEvents(grid);

  const totalPages = Math.ceil(peData.length / PE_PAGE_SIZE);
  document.getElementById('pe-pagination').innerHTML =
    Array.from({length: totalPages}, (_,i) =>
      `<button class="pe-page-btn ${i===page?'active':''}" onclick="renderPePage(${i})">${i+1}</button>`
    ).join('') +
    `<span class="pe-page-info">${start+1}–${Math.min(start+PE_PAGE_SIZE, peData.length)} / ${peData.length}</span>`;

  document.getElementById('pe-progress').textContent = `Page ${page+1} / ${totalPages}`;
}

function peCheck() {
  const start = pePage * PE_PAGE_SIZE;
  let correct = 0, total = 0;
  peData.slice(start, start + PE_PAGE_SIZE).forEach((item, localIdx) => {
    const itemEl = document.getElementById('pe-item-' + (start + localIdx));
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
    const itemEl = document.getElementById('pe-item-' + (start + localIdx));
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

fetch('{{ "/assets/json/pair-expressions.json" | relative_url }}')
  .then(r => r.json())
  .then(data => { peData = data; renderPePage(0); })
  .catch(() => { document.getElementById('pe-grid').textContent = 'Failed to load pair expressions.'; });
</script>
