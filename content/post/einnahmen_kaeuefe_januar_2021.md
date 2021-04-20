+++
date = "2021-02-21T04:19:00+01:00"
title = "Einnahmen und Einkäufe Januar 2021"
titleAddition = "finanzmatze"
draft = false
featuredImage = "/einnahmen_januar_februar_2020.png"
description = "Welche Einnahmen und Einkäufe habe ich im Januar 2021 getätigt? Wie ändern sich dadurch meine jährlichen Einnahmen?"
tags = [
    "einnahmen",
    "einkauf",
]
+++


Dies ist mein erster Artikel über meine Einnahmen und Einkäufe in 2021. Ich werde Euch einen Überblick geben,
welche Posten ist aufgestockt und welche Dividenden ich eingenommen habe. Zum ersten Mal kann ich auch ein Vergleich zum
Vorjahr ziehen.

Viel Spaß beim lesen.


## Einnahmen Januar 2021

**Dividenden-Aktien:**

- A0F5UH ISH.ST.GL.SEL.DIV.100 U.ETF DE: **34,19 €**


**Anleihen**:

- A0NECU ISHSII-JPM DL EM BD DLDIS: **2,82 €**


**Beimischung**:

- A0Q4R2 iShares STOXX Europe 600 Auto: **4,45 €**


**Aktien**:

- Pembina Pipeline Corp: **0,63 €**
- GlaxoSmithKline: **0,34 €**
- Medical Properties Trust Inc: **0,48 €**
- Iron Mountain Inc: **0,39 €**
- Aroundtown SA: **0,30 €**
- PennantPark Floating Rate Cap: **1,00 €**
- One Liberty Properties Inc: **3,84 €**
- Inter Pipeline Ltd: **0,17 €**
- Aroundtown SA: **1,67 €**
- Apollo Investment Corp: **1,05 €**
- Cardinal Health Inc: **0,89 €**
- Armour Residential REIT Inc: **0,92 €**
- Gladstone Commercial Corp: **0,29 €**
- TransAlta Renewables Inc: **0,52 €**
- Prospect Capital Corp: **1,19 €**
- Starwood Property Trust Inc: **4,68 €**
- Gladstone Capital Corp: **1,13 €**
- Ladder Capital Corp: **0,85 €**
- Shaw Communications Inc: **0,56 €**
- Global Net Lease Inc: **0,99 €**
- Occidental Petroleum Corp: **0,01 €**
- LTC Properties Inc: **0,58 €**
- Gladstone Investment Corp: **1,04 €**
- Main Street Capital Corp: **0,77 €**
- Red Electrica Corporacion S.A. Acciones Port. EO: **3,84 €**
- Iron Mountain Inc. Registered Shares: **4,85 €**
- AGNC Investment Corp. Registered Shares: **2,54 €**
- Store Capital Corporation: **4,15 €**
- Spirit Realty Capital Inc.: **5,31 €**
- W.P. Carey Inc.: **3,81 €**
- Global Net Lease Inc.: **6,79 €**
- STAG Industrial Inc.: **0,95 €**
- Main Street Capital Corp.: **1,25 €**
- Realty Income Corp.: **1,00 €**
- Annaly Capital Management Inc.: **8,45 €**
- MSC Industrial Direct Co. Inc. Reg. Shares Class A: **2,74 €**
- Cisco Systems Inc.: **2,21 €**
- Whitestone REIT: **0,60 €**


**Sonstige Einnahmen**:

- shoop cashback: **1,64 €**


**Gesamteinnahmen**: **113,47 €**

Insgesamt haben 38 Einzelaktien, 0 Welt ETF, 1 Beimschung ETF, 1 Anleihen ETFs und 1 Dividenden ETF ausgeschüttet. Ein
Vergleich zum Vorjahr habe ich bisher noch nicht, da dies mein erster Bericht ist.


## Einnahmen als Balkendiagramm

<div id="d3id" ></div>
<!-- load the d3.js library -->
<script src="https://d3js.org/d3.v4.min.js"></script>

<script>
var models = [
  {
    "model_name":"Januar",
    "field1":128,
    "field2":113
  },
];
models = models.map(i => {
  i.model_name = i.model_name;
	return i;
});

var container = d3.select('#d3id'),
    width = 500,
    height = 300,
    margin = {top: 30, right: 20, bottom: 30, left: 50},
    barPadding = .2,
    axisTicks = {qty: 5, outerSize: 0, dateFormat: '%m-%d'};

var svg = container
   .append("svg")
   .attr("width", width)
   .attr("height", height)
   .append("g")
   .attr("transform", `translate(${margin.left},${margin.top})`);

var xScale0 = d3.scaleBand().range([0, width - margin.left - margin.right]).padding(barPadding);
var xScale1 = d3.scaleBand();
var yScale = d3.scaleLinear().range([height - margin.top - margin.bottom, 0]);

var xAxis = d3.axisBottom(xScale0).tickSizeOuter(axisTicks.outerSize);
var yAxis = d3.axisLeft(yScale).ticks(axisTicks.qty).tickSizeOuter(axisTicks.outerSize);

xScale0.domain(models.map(d => d.model_name));
xScale1.domain(['field1', 'field2']).range([0, xScale0.bandwidth()]);
yScale.domain([0, d3.max(models, d => d.field1 > d.field2 ? d.field1 : d.field2)]);

var model_name = svg.selectAll(".model_name")
  .data(models)
  .enter().append("g")
  .attr("class", "model_name")
  .attr("transform", d => `translate(${xScale0(d.model_name)},0)`);

/* Add field1 bars */
model_name.selectAll(".bar.field1")
  .data(d => [d])
  .enter()
  .append("rect")
  .attr("class", "bar field1")
.style("fill","#69b3a2")
  .attr("x", d => xScale1('field1'))
  .attr("y", d => yScale(d.field1))
  .attr("width", xScale1.bandwidth())
  .attr("height", d => {
    return height - margin.top - margin.bottom - yScale(d.field1)
  });

/* Add field2 bars */
model_name.selectAll(".bar.field2")
  .data(d => [d])
  .enter()
  .append("rect")
  .attr("class", "bar field2")
.style("fill","#404080")
  .attr("x", d => xScale1('field2'))
  .attr("y", d => yScale(d.field2))
  .attr("width", xScale1.bandwidth())
  .attr("height", d => {
    return height - margin.top - margin.bottom - yScale(d.field2)
  });

// Add the X Axis
svg.append("g")
   .attr("class", "x axis")
   .attr("transform", `translate(0,${height - margin.top - margin.bottom})`)
   .call(xAxis);

// Add the Y Axis
svg.append("g")
   .attr("class", "y axis")
   .call(yAxis);

svg.append("text")
   .attr("transform", "rotate(0)")
   .attr("y", "-2em")
   .attr("dy", "1em")
   .style("text-anchor", "end")
   .text("€");

// Handmade legend
svg.append("circle").attr("cx",15).attr("cy",-10).attr("r", 6).style("fill", "#69b3a2")
svg.append("circle").attr("cx",15).attr("cy",20).attr("r", 6).style("fill", "#404080")
svg.append("text").attr("x", 30).attr("y", -5).text("2020").style("font-size", "15px").attr("alignment-baseline","middle")
svg.append("text").attr("x", 30).attr("y", 25).text("2021").style("font-size", "15px").attr("alignment-baseline","middle")
</script>


## Käufe und jährliche Einnahmensteigerung

**Dividenden-Aktien:**

- iShs Core S&P 500 UC.ETF USDD Registered Shares USD (Dist)
  - Kauf von 4,4044 Stück am 18.01.2021
  - Kaufkurs: 31,10 €


**Anleihen:**

- iShsIV-Fa.An.Hi.Yi.Co.Bd U.ETF Registered Shares USD
  - Kauf von 1,9906 Stück am 04.01.2021
  - Kaufkurs: 5,02 €
- iShsII-J.P.M.$ EM Bond U.ETF Registered Shares
  - Kauf von 0,2652 Stück am 04.01.2021
  - Kaufkurs: 94,24 €
- [Vanguard USD EM Government Bond UCITS](https://www.justetf.com/de/etf-profile.html?isin=IE00BZ163L38 "Vanguard USD EM Government Bond UCITS")
  - Kauf von 1.029 Stück am 07.01.2021
  - Kaufkurs: 43,066 €


**Beimischung**:

- iShsII-Asia Property Yld U.ETF Registered Shs USD (Dist)
  - Kauf von 0,458 Stück am 18.01.2021
  - Kaufkurs: 21,83 €
- iShsIV-MSCI China UCITS ETF Registered Shares USD (Acc)
  - Kauf von 1,6493 Stück am 04.01.2021
  - Kaufkurs: 6,06 €
- iShs IV-iShs MSCI India UC.ETF Registered Shares
  - Kauf von 1,9293 Stück am 04.01.2021
  - Kaufkurs: 5,18 €
- iShsII-Gl.Infrastruct.U.ETF Registered Shs USD (Dist)
  - Kauf von 1,0311 Stück am 04.01.2021
  - Kaufkurs: 24,24 €


**Einzelaktien (Januar):**

- Nucor
  - Kauf von 7 Stück am 08.01.2021
  - Kaufkurs: 46,40 €
- thyssenkrupp AG Inhaber-Aktien
  - Kauf von 1,1767 Stück am 04.01.2021
  - Kaufkurs: 8,50 €
- E.ON SE Namens-Aktien
  - Kauf von 1,1467 Stück am 18.01.2021
  - Kaufkurs: 8,72 €
  - Kauf von 1,0874 Stück am 04.01.2021
  - Kaufkurs: 9,20 €
- HAMBORNER REIT AG Inhaber-Aktien
  - Kauf von 1,1088 Stück am 04.01.2021
  - Kaufkurs: 9,02 €
- METRO AG Inhaber-Stammaktien
  - Kauf von 1,0608 Stück am 04.01.2021
  - Kaufkurs: 9,43 €
- freenet AG Namens-Aktien
  - Kauf von 1,0294 Stück am 04.01.2021
  - Kaufkurs: 17,48 €
- Südzucker AG Inhaber-Aktien
  - Kauf von 1,1054 Stück am 04.01.2021
  - Kaufkurs: 11,76 €
- 7C Solarparken AG Inhaber-Aktien
  - Kauf von 2,1551 Stück am 04.01.2021
  - Kaufkurs: 4,64 €
- HSBC Holdings PLC Registered Shares
  - Kauf von 2,349 Stück am 04.01.2021
  - Kaufkurs: 4,26 €
- TAKKT AG Inhaber-Aktien
  - Kauf von 1,0357 Stück am 04.01.2021
  - Kaufkurs: 10,62 €
- Fresenius SE & Co. KGaA Inhaber-Aktien
  - Kauf von 0,9966 Stück am 04.01.2021
  - Kaufkurs: 39,13 €
- Apollo Investment Corp. Registered Shares
  - Kauf von 1,169 Stück am 04.01.2021
  - Kaufkurs: 8,55 €
- Ares Capital Corp. Registered Shares
  - Kauf von 1,0336 Stück am 04.01.2021
  - Kaufkurs: 13,54 €
- Baozun Inc. R.Shs Cl.A(sp.ADRs)/3
  - Kauf von 1,0357 Stück am 04.01.2021
  - Kaufkurs: 28,00 €
- Carnival PLC Registered Shares
  - Kauf von 0,6432 Stück am 04.01.2021
  - Kaufkurs: 15,54 €
- Shaw Communications Inc. Reg.N-Vtg Part.Shs B
  - Kauf von 4,0502 Stück am 04.01.2021
  - Kaufkurs: 14,32 €
- GlaxoSmithKline PLC Registered Shares LS -,25
  - Kauf von 1,0327 Stück am 04.01.2021
  - Kaufkurs: 15,49 €
- Pembina Pipeline Corp. Registered Shares
  - Kauf von 2,2738 Stück am 04.01.2021
  - Kaufkurs: 19,79 €
- BP PLC Registered Shares
  - Kauf von 3,4482 Stück am 04.01.2021
  - Kaufkurs: 2,90 €
- TransAlta Renewables Inc. Registered Shares
  - Kauf von 3,9339 Stück am 04.01.2021
  - Kaufkurs: 14,24 €
- Rolls Royce Holdings PLC Registered Shares LS 0.20
  - Kauf von 8,1566 Stück am 04.01.2021
  - Kaufkurs: 1,23 €
- AT & T Inc. Registered Shares DL 1
  - Kauf von 1,0521 Stück am 04.01.2021
  - Kaufkurs: 23,76 €
- Macy's, Inc. Registered Shares DL -,01
  - Kauf von 1,0922 Stück am 04.01.2021
  - Kaufkurs: 9,16 €
- Global Net Lease Inc. Registered Shares
  - Kauf von 0,9989 Stück am 04.01.2021
  - Kaufkurs: 14,02 €
- Gladstone Investment Corp. Registered Shares
  - Kauf von 6,1773 Stück am 04.01.2021
  - Kaufkurs: 8,26 €
- GEO Group Inc., The Registered Shares
  - Kauf von 1,3638 Stück am 04.01.2021
  - Kaufkurs: 7,33 €
- Gladstone Commercial Corp. Registered Shares
  - Kauf von 1,0252 Stück am 04.01.2021
  - Kaufkurs: 14,63 €
- Gladstone Capital Corp. Registered Shares
  - Kauf von 6,9901 Stück am 04.01.2021
  - Kaufkurs: 7,30 €
- Medical Properties Trust Inc. Registered Shares
  - Kauf von 1,0953 Stück am 04.01.2021
  - Kaufkurs: 17,35 €
- Iron Mountain Inc. Registered Shares
  - Kauf von 1,0515 Stück am 04.01.2021
  - Kaufkurs: 23,78 €
- Intel Corp. Registered Shares DL -,001
  - Kauf von 0,9402 Stück am 04.01.2021
  - Kaufkurs: 41,48 €
- Occidental Petroleum Corp. Registered Shares DL -,20
  - Kauf von 1,0518 Stück am 04.01.2021
  - Kaufkurs: 14,26 €
- Omega Healthcare Invest. Inc. Registered Shares
  - Kauf von 1,064 Stück am 04.01.2021
  - Kaufkurs: 29,14 €
- Deutsche Telekom AG Namens-Aktien
  - Kauf von 2,1419 Stück am 18.01.2021
  - Kaufkurs: 14,94 €
- Zuora Inc. Reg. Sh. Class A
  - Kauf von 0,9264 Stück am 04.01.2021
  - Kaufkurs: 10,79 €
- Unum Group Registered Shares
  - Kauf von 1,0439 Stück am 04.01.2021
  - Kaufkurs: 18,20 €
- Pluralsight Inc. Reg. Shs Cl. A
  - Kauf von 0,8894 Stück am 04.01.2021
  - Kaufkurs: 16,86 €
- Oneok Inc. (New) Registered Shares DL-,01
  - Kauf von 0,9727 Stück am 04.01.2021
  - Kaufkurs: 30,84 €
- Prospect Capital Corp. Registered Shares
  - Kauf von 11,4017 Stück am 04.01.2021
  - Kaufkurs: 4,47 €
- Walgreens Boots Alliance Inc. Reg. Shares DL -,01
  - Kauf von 0,973 Stück am 04.01.2021
  - Kaufkurs: 32,88 €
- Tilray Inc. Reg.Shares CL.2 DL-,0001
  - Kauf von 1,3766 Stück am 04.01.2021
  - Kaufkurs: 7,26 €
- PennantPark Floating Rate Cap. Registered Shares
  - Kauf von 5,2873 Stück am 04.01.2021
  - Kaufkurs: 8,70 €
- NETCENTS TECHNOLOGY INC. Registered Shares
  - Kauf von 11,8764 Stück am 18.01.2021
  - Kaufkurs: 0,84 €
- Cardinal Health Inc. Registered Shares
  - Kauf von 1,0142 Stück am 18.01.2021
  - Kaufkurs: 46,34 €
- BHP Group PLC Registered Shares
  - Kauf von 1,0568 Stück am 18.01.2021
  - Kaufkurs: 23,66 €
- Enbridge Inc. Registered Shares
  - Kauf von 1,0416 Stück am 18.01.2021
  - Kaufkurs: 28,80 €


## Fazit:

Im Vergleich zum Vorjahr habe ich 15 € weniger eingenommen. Dies liegt unter anderen daran, dass zwei meiner Anleihen
Positionen im Dezember zweimal ausgeschüttet haben - manchmal verschieben sich die Ausschüttungszyklen.

