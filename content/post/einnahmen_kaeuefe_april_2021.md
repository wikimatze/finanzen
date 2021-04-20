+++
date = "2021-04-07T04:19:00+01:00"
title = "Einnahmen und Einkäufe April 2021"
titleAddition = "finanzmatze"
draft = true
featuredImage = "/einnahmen_januar_februar_2020.png"
description = "Welche Einnahmen und Einkäufe habe ich im April 2021 getätigt?"
tags = [
    "einnahmen",
    "einkauf",
]
+++

Einnahmen und Einkäufe im April 2021. Ich werde Euch einen Überblick geben,
welche Dividenden ich eingenommen habe und welche Posten ich aufgestockt habe.


## Einnahmen


**Dividenden-Aktien:**


**Anleihen**:

- VANG.USD EM G.BD UETF DLD: **19,70 EUR €** (com)


**Beimischung**:



**Aktien**:



**Verkauf**:



**Sonstige Einnahmen**:



**Gesamteinnahmen**: **0 €**

Insgesamt haben 0 Einzelaktien, 0 Welt ETF, 0 Beimschung ETF, 0 Anleihen ETF und 0 Dividenden ETF ausgeschüttet.


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



**Anleihen:**

- Vanguard USD EM Government Bond UCITS
  - Kauf von 0,577 Stück am 07.04.2021
  - Kaufkurs: 42,667 €


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


**Einzelaktien:**

- TUI AG Namens-Aktien
  - Kauf von 2,1944 Stück am 06.04.2021
  - Kaufkurs: 4,56 €
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


## Fazit:

Im Vergleich zum Vorjahr habe ich 28 € mehr eingenommen, was einen Anstieg von 25% bedeutet. Auch hat es mich
überrascht, das ich mal wieder ein Exemplar von meinen Ebook verkaufen konnte.

So kann es gerne weitergehen.

