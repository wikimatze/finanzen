+++
date = "2021-06-06T5:00:00+02:00"
title = "Einnahmen und Einkäufe Mai 2021"
titleAddition = "finanzmatze"
d3 = true
featuredImage = "/einnahmen_januar_februar_2020.png"
description = "Welche Einnahmen und Einkäufe habe ich im Mai 2021 getätigt?"
tags = [
    "einnahmen",
    "einkauf",
]
+++

Ich werde Euch einen Überblick geben,
welche Dividenden ich eingenommen und welche Posten ich aufgestockt habe.


## Einnahmen Mai 2021

**Dividenden-Aktien:**

- SPDR S&P GLOB.DIV.ARISTOCR.ETF: **24,05 €**


**Anleihen**:

- ISHSII-JPM DL EM BD DLDIS: **1,86 €**
- iShsIIJPM$ EM Bond UETF: **0,66 €**
- XTR.II GBL AGG.BD SWAP 1D: **3,49 €**


**Beimischung**:

- ISHSII-ASIA PROP.YLD DLD: **3,05 €**
- iShsIIAsia Property Yld UETF Registered Shs USD (Dist): **1,25 €**
- ISHSII-DEV.MKT.PR.Y.DLDIS: **3,03 €**
- iShsIIGlInfrastructUETF Registered Shs USD (Dist): **0,81 €**


**Welt**:

- HSBC MSCI WORLD UCITS ETF: **59,18 €**


**Aktien**:

- AGNC Investment Corp.: **2,57 €**
- AT & T Inc.: **6,08 €**
- Activision Blizzard Inc.: **2,90 €**
- Armour Residential REIT Inc: **0,91 €**
- BayWa AG vink: **4,42 €**
- Colgate-Palmolive Co.: **1,65 €**
- EON SE: **3,79 €**
- FRoSTA AG Inhaber-Aktien: **7,07 €**
- Fresenius SE & Co KGaA InhaberAktien: **3,33 €**
- GEO Group Inc The: **0,10 €**
- Gladstone Capital Corp: **1,83 €**
- Gladstone Commercial Corp.: **1,97 €**
- Gladstone Investment Corp: **1,67 €**
- Gladstone Land Corp.: **0,45 €**
- HAMBORNER REIT AG: **9,79 €**
- Hasbro Inc.: **2,09 €**
- Hercules Capital Inc: **4,06 €**
- Inter Pipeline Ltd: **0,16 €**
- JPMorgan Chase & Co: **0,56 €**
- LTC Properties Inc: **0,60 €**
- Main Street Capital Corp.: **2,88 €**
- Nucor Corp.: **1,74 €**
- Omega Healthcare Invest Inc: **4,55 €**
- Oneok Inc (New): **2,26 €**
- Paradox Interactiv: **1,40 €**
- Pembina Pipeline Corp: **1,33 €**
- PennantPark Floating Rate Cap: **2,11 €**
- Prospect Capital Corp: **2,62 €**
- Realty Income Corp.: **1,00 €**
- STAG Industrial Inc.: **0,95 €**
- TAKKT AG InhaberAktien: **4,11 €**
- Tanger FactOutlet Centrs Inc: **2,25 €**
- Taylor Wimpey: **4,14 €**
- TransAlta Renewables Inc: **2,07 €**
- Unum Group: **0,85 €**
- WestRock Co.: **1,46 €**
- Welltower: **2,98 €**
- alstria office REITAG InhaberAktien: **1,63 €**


**Sonstiges**:

**Gesamteinnahmen reine Dividenden**: **190,76 €**

**Gesamteinnahmen plus sonstige**: **190,76 €**

Insgesamt haben 37 Einzelaktien, 4 Beimschung ETF, 3 Anleihen ETFs, 1 Welt ETF und 1 Dividenden ETF ausgeschüttet.


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
  {
    "model_name":"Mai",
    "field1":140,
    "field2":193
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

**Welt**:

- iShsIV-iShs MSCI Wld ESG S.ETF Reg. Shares USD Acc.
  - Kauf von 36,2778 Stück am 17.05.2021
  - Kaufkurs: 6,147 €


**Anleihen:**

- iShsII-J.P.M.$ EM Bond U.ETF Registered Shares
  - Kauf von 0,2749 Stück am 17.05.2021
  - Kaufkurs: 90,94 €
- iShsIV-Fa.An.Hi.Yi.Co.Bd U.ETF Registered Shares USD
  - Kauf von 1,9445 Stück am 17.05.2021
  - Kaufkurs: 5,1425 €
- VANG.USD TREA.BD UETF DLD
  - Kauf von 1,160 Stück am 03.05.2021
  - Kaufkurs: 21,227 €
- VANG.USD EM G.BD UETF DLD
  - Kauf von 0,580 Stück am 03.05.2021
  - Kaufkurs: 42,407 €


**Beimischung**:

- iShares IV-Healthc.Innovation Registered Shares
  - Kauf von 13,7037 Stück am 17.05.2021
  - Kaufkurs: 8,027 €
- iShsII-Gl.Infrastruct.U.ETF Registered Shs USD (Dist)
  - Kauf von 0,9442 Stück am 17.05.2021
  - Kaufkurs: 26,475 €
- iShsIV-MSCI China UCITS ETF Registered Shares USD (Acc)
  - Kauf von 1,6212 Stück am 03.05.2021
  - Kaufkurs: 6,168 €
- iShs IV-iShs MSCI India UC.ETF Registered Shares
  - Kauf von 1,8409 Stück am 03.05.2021
  - Kaufkurs: 5,432 €
- iShsIV-MSCI China A UCITS ETF Registered Shares USD (Acc)
  - Kauf von 2,1268 Stück am 03.05.2021
  - Kaufkurs: 5,172 €
- VANGUARD FDS-V.GER.ALL CAP U.E
  - Kauf von 1,8073 Stück am 05.05.2021
  - Kaufkurs: 27,665 €


**Einzelaktien:**

- Borussia Dortmund GmbH&Co.KGaA Inhaber-Aktien
  - Kauf von 1,8851 Stück am 03.05.2021
  - Kaufkurs: 5,835 €
- Kingfisher PLC Reg. Shares LS -,157142857
  - Kauf von 2,3923 Stück am 03.05.2021
  - Kaufkurs: 4,18 €
- HAMBORNER REIT AG Namens-Aktien
  - Kauf von 1,0918 Stück am 03.05.2021
  - Kaufkurs: 9,159 €
- Deutsche Telekom AG Namens-Aktien
  - Kauf von 1,929 Stück am 03.05.2021
  - Kaufkurs: 16,07 €
- TUI AG Namens-Aktien
  - Kauf von 2,1425 Stück am 03.05.2021
  - Kaufkurs: 5,134 €
- METRO AG Inhaber-Stammaktien
  - Kauf von 1,1027 Stück am 03.05.2021
  - Kaufkurs: 9,068 €
- Consus Real Estate AG Namens-Aktien
  - Kauf von 1,4347 Stück am 03.05.2021
  - Kaufkurs: 6,97 €
- Rolls Royce Holdings PLC Registered Shares LS 0.20
  - Kauf von 8,2236 Stück am 03.05.2021
  - Kaufkurs: 1,216 €
- E.ON SE Namens-Aktien
  - Kauf von 0,9897 Stück am 03.05.2021
  - Kaufkurs: 10,104 €
- 7C Solarparken AG Inhaber-Aktien
  - Kauf von 2,3612 Stück am 03.05.2021
  - Kaufkurs: 4,235 €
- BP PLC Registered Shares
  - Kauf von 2,8506 Stück am 03.05.2021
  - Kaufkurs: 3,508 €
- Barrick Gold Corp. Registered Shares
  - Kauf von 0,948 Stück am 03.05.2021
  - Kaufkurs: 17,932 €
- TransAlta Renewables Inc. Registered Shares
  - Kauf von 4,31 Stück am 03.05.2021
  - Kaufkurs: 13,225 €
- Pembina Pipeline Corp. Registered Shares
  - Kauf von 1,0034 Stück am 03.05.2021
  - Kaufkurs: 25,91 €
- AEterna Zentaris Inc. Registered Shares
  - Kauf von 11,3122 Stück am 03.05.2021
  - Kaufkurs: 0,884 €
- CoreCivic Inc. Registered Shares
  - Kauf von 1,5094 Stück am 03.05.2021
  - Kaufkurs: 6,625 €
- Gladstone Capital Corp. Registered Shares
  - Kauf von 6,0902 Stück am 03.05.2021
  - Kaufkurs: 9,195 €
- Gladstone Investment Corp. Registered Shares
  - Kauf von 3,4147 Stück am 03.05.2021
  - Kaufkurs: 11,714 €
- Main Street Capital Corp. Registered Shares
  - Kauf von 0,992 Stück am 03.05.2021
  - Kaufkurs: 35,28 €
- Medical Properties Trust Inc. Registered Shares
  - Kauf von 1,05 Stück am 03.05.2021
  - Kaufkurs: 18,095 €
- Prospect Capital Corp. Registered Shares
  - Kauf von 3,1157 Stück am 03.05.2021
  - Kaufkurs: 6,74 €
- PennantPark Floating Rate Cap. Registered Shares
  - Kauf von 4,1509 Stück am 03.05.2021
  - Kaufkurs: 10,60 €
- Firefinch
  - Kauf von 400 Stück am 11.05.2021
  - Kaufkurs: 0,245 €
- Accentro Real Estate AG Inhaber-Aktien
  - Kauf von 1,156 Stück am 17.05.2021
  - Kaufkurs: 8,65 €
- CECONOMY AG Inhaber-Stammaktien
  - Kauf von 2,4663 Stück am 17.05.2021
  - Kaufkurs: 4,46 €
- Air France-KLM S.A. Actions Port. EO 1
  - Kauf von 2,4043 Stück am 17.05.2021
  - Kaufkurs: 4,575 €
- HAMBORNER REIT AG Namens-Aktien
  - Kauf von 1,0976 Stück am 17.05.2021
  - Kaufkurs: 9,11 €
- National Grid PLC Reg. Shares LS -,12431289
  - Kauf von 0,9233 Stück am 17.05.2021
  - Kaufkurs: 10,83 €
- Aurora Cannabis Inc. Registered Shares
  - Kauf von 1,983 Stück am 17.05.2021
  - Kaufkurs: 5,547 €
- AEterna Zentaris Inc. Registered Shares
  - Kauf von 13,2275 Stück am 17.05.2021
  - Kaufkurs: 0,756 €
- Vodafone Group PLC Registered Shares
  - Kauf von 12,1212 Stück am 17.05.2021
  - Kaufkurs: 1,65 €
- GlaxoSmithKline PLC Registered Shares LS -,25
  - Kauf von 0,9962 Stück am 17.05.2021
  - Kaufkurs: 16,06 €
- CoreCivic Inc. Registered Shares
  - Kauf von 1,5515 Stück am 17.05.2021
  - Kaufkurs: 6,445 €
- Cardinal Health Inc. Registered Shares
  - Kauf von 1,0181 Stück am 17.05.2021
  - Kaufkurs: 46,16 €
- GEO Group Inc., The Registered Shares
  - Kauf von 1,9212 Stück am 17.05.2021
  - Kaufkurs: 5,205 €
- LTC Properties Inc. Registered Shares
  - Kauf von 0,9773 Stück am 17.05.2021
  - Kaufkurs: 32,74 €
- Marks & Spencer Group PLC Registered Shares LS -,25
  - Kauf von 32,5998 Stück am 17.05.2021
  - Kaufkurs: 1,8405 €


## Fazit

Im Vergleich zum Vorjahr habe ich 53 € mehr eingenommen, was einen Anstieg von 27% entspricht.

