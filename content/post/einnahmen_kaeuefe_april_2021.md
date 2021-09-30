+++
date = "2021-05-01T04:19:00+01:00"
title = "Einnahmen und Einkäufe April 2021"
titleAddition = "finanzmatze"
draft = false
featuredImage = "/einnahmen_januar_februar_2020.png"
description = "Welche Einnahmen und Einkäufe habe ich im April 2021 getätigt?"
tags = [
    "einnahmen",
    "einkauf",
]
+++

Ich werde Euch einen Überblick geben,
welche Dividenden ich eingenommen und welche Posten ich aufgestockt habe.


## Einnahmen


**Dividenden-Aktien:**

- VANG.FTSE A.-WO.HI.DI.YI.U.ETF: **17,17 €**
- ISH.ST.GL.SEL.DIV.100 U.ETF DE: **27,57 €**


**Anleihen**:

- VANG.USD EM G.BD UETF DLD: **35,26 €**
- VANG.USD TREA.BD UETF DLD: **1,88 €**
- ISHSII-JPM DL EM BD DLDIS: **2,86 €**


**Beimischung**:

- VANGUARD FTSE JAPAN UCITS ETF: **1,00 €**
- iSh.ST.Eu.600 Aut.&Pa.U.: **8,78 €**


**Welt**:

- VANGUARD FTSE EM.MARKETS U.ETF: **10,98 €**


**Aktien**:

- AGNC Investment Corp.: **2,62 €**
- Annaly Capital Management Inc.: **8,50 €**
- Apollo Investment Corp: **1,84 €**
- Armour Residential REIT Inc: **0,92 €**
- Bayer AG: **4,63 €**
- Cardinal Health Inc: **1,84 €**
- Cisco Systems Inc.: **2,28 €**
- Coca-Cola Co., The: **5,30 €**
- Deutsche Telekom AG: **3,77 €**
- Foot Locker Inc.: **1,23 €**
- Gladstone Commercial Corp.: **1,54 €**
- Gladstone Land Corp.: **0,47 €**
- GlaxoSmithKline: **1,23 €**
- Global Net Lease Inc.: **9,50 €**
- HSBC Holdings: **3,13 €**
- Inter Pipeline Ltd: **0,17 €**
- Iron Mountain Inc.: **6,66 €**
- Ladder Capital Corp: **0,88 €**
- MSC Industrial Direct Co. Inc. Reg. Shares Class A: **2,77 €**
- Main Street Capital Corp.: **2,79 €**
- Medical Properties Trust Inc: **1,07 €**
- New Residential Investm. Corp.: **8,59 €**
- Occidental Petroleum Corp: **0,03 €**
- One Liberty Properties Inc: **4,02 €**
- Patterson Companies Inc.: **3,20 €**
- Pembina Pipeline Corp: **1,24 €**
- PennantPark Floating Rate Cap: **1,93 €**
- Pennon Group PLC Registered Shares New LS: **2,34 €**
- Prospect Capital Corp: **2,27 €**
- Realty Income Corp.: **1,03 €**
- STAG Industrial Inc.: **0,98 €**
- Shaw Communications Inc: **0,93 €**
- Spirit Realty Capital Inc.: **5,46 €**
- Starwood Property Trust Inc: **4,77 €**
- Store Capital Corporation: **4,27 €**

**Verkauf**:

- Pluralsight Ausbuchung: **10 €**
- Sunrise Communication (Zwangsabfindung): **145 €**


**Gesamteinnahmen**: **206,53 €**

Insgesamt haben 35 Einzelaktien, 1 Welt ETF, 2 Beimschung ETFs, 3 Anleihen ETFs und 2 Dividenden ETF ausgeschüttet.


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
  {
    "model_name":"Februar",
    "field1":50,
    "field2":144
  },
  {
    "model_name":"März",
    "field1":150,
    "field2":188
  },
  {
    "model_name":"April",
    "field1":191,
    "field2":206
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


## Käufe

**Welt:**

- iShsIII-Core MSCI World U.ETF Registered Shs USD (Acc)
  - Kauf von 26,4288 Stück am 06.04.2021
  - Kaufkurs: 66,59 €
- iShsIV-iShs MSCI Wld ESG S.ETF Reg. Shares USD Acc.
  - Kauf von 143,6781 Stück am 16.04.2021
  - Kaufkurs: 6,264 €


**Anleihen:**

- Vanguard USD EM Government Bond UCITS
  - Kauf von 0,577 Stück am 07.04.2021
  - Kaufkurs: 42,667 €
- iShsII-J.P.M.$ EM Bond U.ETF Registered Shares
  - Kauf von 0,2712 Stück am 16.04.2021
  - Kaufkurs: 92,17 €
- iShsIV-Fa.An.Hi.Yi.Co.Bd U.ETF Registered Shares USD
  - Kauf von 1,9336 Stück am 16.04.2021
  - Kaufkurs: 5,1715 €


**Beimischung**:

- iShsIV-MSCI China UCITS ETF Registered Shares USD (Acc)
  - Kauf von 1,5647 Stück am 06.04.2021
  - Kaufkurs: 6,39 €
- iShsIV-MSCI China A UCITS ETF Registered Shares USD (Acc)
  - Kauf von 2,1093 Stück am 06.04.2021
  - Kaufkurs: 5,22 €
- iShares IV-Healthc.Innovation Registered Shares
  - Kauf von 16,2341 Stück am 06.04.2021
  - Kaufkurs: 8,44 €
- iShs IV-iShs MSCI India UC.ETF Registered Shares
  - Kauf von 1,793 Stück am 06.04.2021
  - Kaufkurs: 5,58 €
- iShsII-Gl.Infrastruct.U.ETF Registered Shs USD (Dist)
  - Kauf von 0,9384 Stück am 16.04.2021
  - Kaufkurs: 26,64 €
- iShsV-Gold Producers.UCITS ETF Registered Shares USD (Acc)
  - Kauf von 0,9864 Stück am 16.04.2021
  - Kaufkurs: 13,178 €


**Einzelaktien:**

- TUI AG Namens-Aktien
  - Kauf von 2,1944 Stück am 06.04.2021
  - Kaufkurs: 4,56 €
  - Kauf von 2,2123 Stück am 16.04.2021
  - Kaufkurs: 4,52 €
- Kingfisher PLC Reg. Shares LS -,157142857
  - Kauf von 2,5773 Stück am 06.04.2021
  - Kaufkurs: 3,88 €
- Marks & Spencer Group PLC Registered Shares LS -,25
  - Kauf von 5,5126 Stück am 06.04.2021
  - Kaufkurs: 1,81 €
- HAMBORNER REIT AG Namens-Aktien
  - Kauf von 1,099 Stück am 06.04.2021
  - Kaufkurs: 9,10 €
- CECONOMY AG Inhaber-Stammaktien
  - Kauf von 2,1012 Stück am 06.04.2021
  - Kaufkurs: 5,24 €
- Air France-KLM S.A. Actions Port. EO 1
  - Kauf von 2,173 Stück am 06.04.2021
  - Kaufkurs: 5,06 €
- Deutsche Telekom AG Namens-Aktien
  - Kauf von 1,8665 Stück am 06.04.2021
  - Kaufkurs: 16,61 €
- 7C Solarparken AG Inhaber-Aktien
  - Kauf von 2,4183 Stück am 06.04.2021
  - Kaufkurs: 4,14 €
- GlaxoSmithKline PLC Registered Shares LS -,25
  - Kauf von 1,043 Stück am 06.04.2021
  - Kaufkurs: 15,34 €
- E.ON SE Namens-Aktien
  - Kauf von 1,0117 Stück am 06.04.2021
  - Kaufkurs: 9,88 €
- METRO AG Inhaber-Stammaktien
  - Kauf von 1,0773 Stück am 06.04.2021
  - Kaufkurs: 9,28 €
- Rolls Royce Holdings PLC Registered Shares LS 0.20
  - Kauf von 7,4515 Stück am 06.04.2021
  - Kaufkurs: 1,34 €
- Pembina Pipeline Corp. Registered Shares
  - Kauf von 1,0471 Stück am 06.04.2021
  - Kaufkurs: 24,83 €
- Barrick Gold Corp. Registered Shares
  - Kauf von 0,971 Stück am 06.04.2021
  - Kaufkurs: 17,51 €
- BP PLC Registered Shares
  - Kauf von 2,8344 Stück am 06.04.2021
  - Kaufkurs: 3,53 €
- Gladstone Investment Corp. Registered Shares
  - Kauf von 4,0366 Stück am 06.04.2021
  - Kaufkurs: 10,90 €
- AT & T Inc. Registered Shares DL 1
  - Kauf von 0,9207 Stück am 06.04.2021
  - Kaufkurs: 26,07 €
- Gladstone Capital Corp. Registered Shares
  - Kauf von 4,8275 Stück am 06.04.2021
  - Kaufkurs: 8,70 €
- TransAlta Renewables Inc. Registered Shares
  - Kauf von 4,0992 Stück am 06.04.2021
  - Kaufkurs: 13,91 €
- Main Street Capital Corp. Registered Shares
  - Kauf von 0,9593 Stück am 06.04.2021
  - Kaufkurs: 34,40 €
- PennantPark Floating Rate Cap. Registered Shares
  - Kauf von 4,2389 Stück am 06.04.2021
  - Kaufkurs: 10,38 €
- Medical Properties Trust Inc. Registered Shares
  - Kauf von 1,0226 Stück am 06.04.2021
  - Kaufkurs: 18,58 €
- Tupperware Brands Corp. Registered Shares
  - Kauf von 1,1111 Stück am 06.04.2021
  - Kaufkurs: 22,50 €
- Prospect Capital Corp. Registered Shares
  - Kauf von 10,1568 Stück am 06.04.2021
  - Kaufkurs: 6,70 €
- Air France-KLM S.A. Actions Port. EO 1
  - Kauf von 2,1877 Stück am 16.04.2021
  - Kaufkurs: 5,028 €
- HAMBORNER REIT AG Namens-Aktien
  - Kauf von 1,0634 Stück am 16.04.2021
  - Kaufkurs: 9,403 €
- Marks & Spencer Group PLC Registered Shares LS -,25
  - Kauf von 33,1308 Stück am 16.04.2021
  - Kaufkurs: 1,811 €
- E.ON SE Namens-Aktien
  - Kauf von 1,0143 Stück am 16.04.2021
  - Kaufkurs: 9,859 €
- Consus Real Estate AG Namens-Aktien
  - Kauf von 1,4005 Stück am 16.04.2021
  - Kaufkurs: 7,14 €
- CECONOMY AG Inhaber-Stammaktien
  - Kauf von 2,2812 Stück am 16.04.2021
  - Kaufkurs: 4,822 €
- Accentro Real Estate AG Inhaber-Aktien
  - Kauf von 1,2578 Stück am 16.04.2021
  - Kaufkurs: 7,95 €
- NETCENTS TECHNOLOGY INC. Registered Shares
  - Kauf von 30,8166 Stück am 16.04.2021
  - Kaufkurs: 0,649 €
- GlaxoSmithKline PLC Registered Shares LS -,25
  - Kauf von 1,0165 Stück am 16.04.2021
  - Kaufkurs: 15,74 €
- Vodafone Group PLC Registered Shares
  - Kauf von 12,6662 Stück am 16.04.2021
  - Kaufkurs: 1,579 €
- National Grid PLC Reg. Shares LS -,12431289
  - Kauf von 0,9629 Stück am 16.04.2021
  - Kaufkurs: 10,385 €
- CoreCivic Inc. Registered Shares
  - Kauf von 1,445 Stück am 16.04.2021
  - Kaufkurs: 6,92 €
- GEO Group Inc., The Registered Shares
  - Kauf von 2,0859 Stück am 16.04.2021
  - Kaufkurs: 4,794 €



## Fazit:

Im Vergleich zum Vorjahr habe ich 15 € mehr eingenommen, was einen Anstieg von 7% bedeutet.

Über die Zwangsabfindung sowie Ausbuchung von Sunrise Communication und Pluralsight werde ich separat nochmal schreiben,
was es genau damit auf sich hat.

