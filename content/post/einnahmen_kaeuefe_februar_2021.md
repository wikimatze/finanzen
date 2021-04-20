+++
date = "2021-03-03T04:19:00+01:00"
title = "Einnahmen und Einkäufe Februar 2021"
titleAddition = "finanzmatze"
featuredImage = "/einnahmen_januar_februar_2020.png"
description = "Welche Einnahmen und Einkäufe habe ich im Februar 2021 getätigt?"
tags = [
    "einnahmen",
    "einkauf",
]
+++


Einnahmen und Einkäufe im Februar 2021. Ich werde Euch einen Überblick geben,
welche Posten ist aufgestockt und welche Dividenden ich eingenommen habe.


Auf gehts!


## Einnahmen

**Dividenden-Aktien:**

- A1T8GD SPDR S&P Global Dividend Aristocrats (Dividende): **21,18 €**


**Anleihen**:

- A143JN Vanguard USD Treasury: **2,13 €**
- A0NECU iShares J.P. Morgan USD Emerging Markets: **1,73 + 0.51 (trade)€**
- A143JQ Vanguard USD EM Government: **21,17 €**


**Beimischung**:

- A0LEW8 iShares Developed Markets Property (Beimischung): **2,17 €**
- A0LEQL iShares Asia Property Yield (Beimischung): **2,81 + 1.04 (trade)€**
- iShsIIGlInfrastructUETF Registered Shs USD (Dist): **0,62 €**



**Welt**:

- A1C9KK HSBC MSCI World UCITS: **39,80 €**


**Aktien**:

- AT & T Inc.: **4,15 €**
- Main Street Capital Corp.: **1,25 €**
- AGNC Investment Corp.: **2,60 €**
- Hasbro Inc.: **2,09 €**
- Colgate-Palmolive Co.: **1,61 €**
- Realty Income Corp.: **1,00 €**
- STAG Industrial Inc.: **0,94 €**
- Westrock: **1,23 €**
- Gladstone Land Corp.: **0,45 €**
- Gladstone Commercial Corp.: **1,53 €**
- Welltower Inc.: **2,98 €**
- PennantPark Floating Rate Cap: **1,34 €**
- GEO Group Inc The: **0,75 €**
- JPMorgan Chase & Co: **0,54 €**
- AT & T Inc: **1,00 €**
- Tanger FactOutlet Centrs Inc: **2,27 €**
- Pembina Pipeline Corp: **0,83 €**
- Oneok Inc (New): **2,25 €**
- Main Street Capital Corp: **1,04 €**
- Omega Healthcare Invest Inc: **4,16 €**
- Inter Pipeline Ltd: **0,17 €**
- Siemens Healthineers AG: **2,95 €**
- Prospect Capital Corp: **1,60 €**
- Unum Group: **0,71 €**
- METRO AG InhaberStammaktien: **3,65 €**
- Shaw Communications Inc: **0,72 €**
- Armour Residential REIT Inc: **0,92 €**
- Gladstone Investment Corp: **1,28 €**
- Sabra Health Care Reit Inc: **1,63 €**
- Gladstone Capital Corp: **1,37 €**
- TransAlta Renewables Inc: **0,67 €**
- LTC Properties Inc: **0,58 €**
- Gladstone Commercial Corp: **0,40 €**
- Whitestone REIT: **0,58 €** done

**Verkauf**:

- Tilray: 213,99 €
- Hamborner REIT: 5,30 € (Kapitalerhöhung, geschenkten Anteile wurden verkauft)


**Gesamteinnahmen**: **144,40 €**

Insgesamt haben 34 Einzelaktien, 1 Welt ETF, 3 Beimschung ETF, 3 Anleihen ETF und 1 Dividenden ETF ausgeschüttet.


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
  }
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

**Dividenden-Aktien:**


**Anleihen:**

- iShsIV-Fa.An.Hi.Yi.Co.Bd U.ETF Registered Shares USD
  - Kauf von 1,955 Stück am 02.02.2021
  - Kaufkurs: 5,12 €
- iShsII-J.P.M.$ EM Bond U.ETF Registered Shares
  - Kauf von 0,2649 Stück am 02.02.2021
  - Kaufkurs: 94,36 €
- [Vanguard USD EM Government Bond UCITS](https://www.justetf.com/de/etf-profile.html?isin=IE00BZ163L38 "Vanguard USD EM Government Bond UCITS")
  - Kauf von 1.017 Stück am 08.02.2021
  - Kaufkurs: 43,569 €


**Beimischung**:

- iShsII-Asia Property Yld U.ETF Registered Shs USD (Dist)
- iShsIV-MSCI China UCITS ETF Registered Shares USD (Acc)
  - Kauf von 1,4613 Stück am 02.02.2021
  - Kaufkurs: 6,84 €
- iShs IV-iShs MSCI India UC.ETF Registered Shares
  - Kauf von 1,846 Stück am 02.02.2021
  - Kaufkurs: 5,42 €
- iShsII-Gl.Infrastruct.U.ETF Registered Shs USD (Dist)
  - Kauf von 1,0048 Stück am 02.02.2021
  - Kaufkurs: 24,88 €
- iShares IV-Healthc.Innovation Registered Shares
  - Kauf von 14,8172 Stück am 16.02.2021
  - Kaufkurs: 9,25 €


**Einzelaktien (Februar):**

- HSBC Holdings PLC Registered Shares
  - Kauf von 2,2883 Stück am 02.02.2021
  - Kaufkurs: 4,37 €
- Enbridge Inc. Registered Shares
  - Kauf von 0,9781 Stück am 02.02.2021
  - Kaufkurs: 28,62 €
- NETCENTS TECHNOLOGY INC. Registered Shares
  - Kauf von 12,7226 Stück am 02.02.2021
  - Kaufkurs: 0,79 €
- Shaw Communications Inc. Reg.N-Vtg Part.Shs B
  - Kauf von 4,018 Stück am 02.02.2021
  - Kaufkurs: 14,44 €
- BHP Group PLC Registered Shares
  - Kauf von 1,0331 Stück am 02.02.2021
  - Kaufkurs: 23,23 €
- AT & T Inc. Registered Shares DL 1
  - Kauf von 1,0141 Stück am 02.02.2021
  - Kaufkurs: 23,66 €
- GlaxoSmithKline PLC Registered Shares LS -,25
  - Kauf von 1,0228 Stück am 02.02.2021
  - Kaufkurs: 15,64 €
- Carnival PLC Registered Shares
  - Kauf von 0,7142 Stück am 02.02.2021
  - Kaufkurs: 14,00 €
- BP PLC Registered Shares
  - Kauf von 3,3766 Stück am 02.02.2021
  - Kaufkurs: 2,96 €
- Rolls Royce Holdings PLC Registered Shares LS 0.20
  - Kauf von 9,0497 Stück am 02.02.2021
  - Kaufkurs: 1,10 €
- Pembina Pipeline Corp. Registered Shares
  - Kauf von 2,0371 Stück am 02.02.2021
  - Kaufkurs: 22,09 €
- Apollo Investment Corp. Registered Shares
  - Kauf von 1,0585 Stück am 02.02.2021
  - Kaufkurs: 10,39 €
- Ares Capital Corp. Registered Shares
  - Kauf von 1,0172 Stück am 02.02.2021
  - Kaufkurs: 14,75 €
- Global Net Lease Inc. Registered Shares
  - Kauf von 1,0248 Stück am 02.02.2021
  - Kaufkurs: 13,66 €
- Gladstone Commercial Corp. Registered Shares
  - Kauf von 1,004 Stück am 02.02.2021
  - Kaufkurs: 14,94 €
- GEO Group Inc., The Registered Shares
  - Kauf von 1,3687 Stück am 02.02.2021
  - Kaufkurs: 7,31 €
- TransAlta Renewables Inc. Registered Shares
  - Kauf von 3,9133 Stück am 02.02.2021
  - Kaufkurs: 14,31 €
- Gladstone Investment Corp. Registered Shares
  - Kauf von 5,713 Stück am 02.02.2021
  - Kaufkurs: 8,93 €
- Gladstone Capital Corp. Registered Shares
  - Kauf von 6,5009 Stück am 02.02.2021
  - Kaufkurs: 7,84 €
- Cardinal Health Inc. Registered Shares
  - Kauf von 1,0152 Stück am 02.02.2021
  - Kaufkurs: 46,30 €
- Intel Corp. Registered Shares DL -,001
  - Kauf von 0,8148 Stück am 02.02.2021
  - Kaufkurs: 47,86 €
- Omega Healthcare Invest. Inc. Registered Shares
  - Kauf von 0,9971 Stück am 02.02.2021
  - Kaufkurs: 31,09 €
- PennantPark Floating Rate Cap. Registered Shares
  - Kauf von 4,8936 Stück am 02.02.2021
  - Kaufkurs: 9,40 €
- Main Street Capital Corp. Registered Shares
  - Kauf von 1,9593 Stück am 02.02.2021
  - Kaufkurs: 27,05 €
- Medical Properties Trust Inc. Registered Shares
  - Kauf von 0,987 Stück am 02.02.2021
  - Kaufkurs: 18,24 €
- Iron Mountain Inc. Registered Shares
  - Kauf von 1,018 Stück am 02.02.2021
  - Kaufkurs: 26,52 €
- Prospect Capital Corp. Registered Shares
  - Kauf von 9,5613 Stück am 02.02.2021
  - Kaufkurs: 5,33 €
- Pluralsight Inc. Reg. Shs Cl. A
  - Kauf von 0,8613 Stück am 02.02.2021
  - Kaufkurs: 17,41 €
- Deutsche Telekom AG Namens-Aktien
  - Kauf von 2,077 Stück am 02.02.2021
  - Kaufkurs: 14,92 €
- Unum Group Registered Shares
  - Kauf von 0,891 Stück am 02.02.2021
  - Kaufkurs: 20,20 €
- freenet AG Namens-Aktien
  - Kauf von 1,0353 Stück am 02.02.2021
  - Kaufkurs: 17,38 €
- METRO AG Inhaber-Stammaktien
  - Kauf von 1,1458 Stück am 02.02.2021
  - Kaufkurs: 9,60 €
- HAMBORNER REIT AG Inhaber-Aktien
  - Kauf von 1,121 Stück am 02.02.2021
  - Kaufkurs: 8,92 €
- Tilray Inc. Reg.Shares CL.2 DL-,0001
  - Kauf von 0,5766 Stück am 02.02.2021
  - Kaufkurs: 17,34 €
- thyssenkrupp AG Inhaber-Aktien
  - Kauf von 1,0197 Stück am 02.02.2021
  - Kaufkurs: 9,81 €
- TAKKT AG Inhaber-Aktien
  - Kauf von 1,0377 Stück am 02.02.2021
  - Kaufkurs: 10,60 €
- Fresenius SE & Co. KGaA Inhaber-Aktien
  - Kauf von 1,0535 Stück am 02.02.2021
  - Kaufkurs: 34,17 €
- Zuora Inc. Reg. Sh. Class A
  - Kauf von 0,9933 Stück am 02.02.2021
  - Kaufkurs: 12,08 €
- Südzucker AG Inhaber-Aktien
  - Kauf von 1,0655 Stück am 02.02.2021
  - Kaufkurs: 12,20 €
- E.ON SE Namens-Aktien
  - Kauf von 1,1296 Stück am 02.02.2021
  - Kaufkurs: 8,85 €
  - Kauf von 1,1381 Stück am 16.02.2021
  - Kaufkurs: 8,79 €
- 7C Solarparken AG Inhaber-Aktien
  - Kauf von 2,2026 Stück am 02.02.2021
  - Kaufkurs: 4,54 €
- Pfizer
  - Kauf von 12 Stück am 24.02.2021
  - Kaufkurs: 27,87 €


## Fazit:

Im Vergleich zum Vorjahr habe ich 94 € mehr eingenommen, was einer Steigerung von 188% entspricht.

Über den Verkauf von Tilray folgt ein Extra Artikel - der Erlös geht nicht in meine Berechnung mit ein.

