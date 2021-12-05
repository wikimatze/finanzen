+++
date = "2021-12-05T5:00:00+02:00"
title = "Einnahmen und Einkäufe November 2021"
titleAddition = "finanzmatze"
d3 = true
featuredImage = "/einnahmen_januar_februar_2020.png"
description = "Welche Einnahmen und Einkäufe habe im November 2021 getätigt?"
tags = [
    "einnahmen",
    "einkauf",
]
+++

## Einnahmen November 2021

**Dividenden-Aktien:**

- SPDR S&P GLOB.DIV.ARISTOCR.ETF: **19,27 €**


**Anleihen**:

- ISHSII-JPM DL EM BD DLDIS: **2,35 €**


**Beimischung**:

- ISHSII-ASIA PROP.YLD DLD: **3,45 €**
- iShsIIGlInfrastructUETF Registered Shs USD (Dist): **1,03 €**
- ISHSII-DEV.MKT.PR.Y.DLDIS: **1,74 €**


**Welt**:

- HSBC MSCI WORLD UCITS ETF: **49,75 €**


**Aktien**:

- AGNC Investment Corp.: **2,70 €**
- Nucor Corp.: **1,82 €**
- Patterson Companies Inc.: **3,33 €**
- Colgate-Palmolive Co.: **1,76 €**
- STAG Industrial Inc.: **1,00 €**
- Realty Income Corp.: **1,05 €**
- Main Street Capital Corp.: **1,35 €**
- Hasbro Inc.: **2,21 €**
- Pembina Pipeline Corp: **1,76 €**
- Owl Rock Capital Corp: **1,13 €**
- Kingfisher PLC Reg Shares: **0,58 €**
- Tanger FactOutlet Centrs Inc: **2,45 €**
- Unum Group: **0,98 €**
- Prospect Capital Corp: **3,42 €**
- Omega Healthcare Invest Inc: **5,54 €**
- Hercules Capital Inc: **4,42 €**
- Oneok Inc (New): **2,39 €**
- Main Street Capital Corp: **2,28 €**
- National Health Investors Inc: **0,21 €**
- Taylor Wimpey: **4,70 €**
- Orchid Island Capital Inc: **0,99 €**
- Greencoat UK Wind: **0,38 €**
- Armour Residential REIT Inc: **1,00 €**
- Shaw Communications Inc: **0,98 €**
- Welltower Inc.: **3,19 €**
- WRKCo Inc.: **1,63 €**
- MSC Industrial Direct Co. Inc. Reg. Shares Class A: **2,96 €**
- Gladstone Commercial Corp.: **1,65 €**
- Gladstone Land Corp.: **0,49 €**
- Arbor Realty Trust Inc.: **7,59 €**
- Gladstone Investment Corp: **2,64 €**
- Sabra Health Care Reit Inc: **1,77 €**
- LTC Properties Inc: **1,16 €**
- Gladstone Capital Corp: **2,89 €**
- TransAlta Renewables Inc: **1,59 €**


**Sonstiges**:

- Kaufland Erstattung für kaputtes Kinderbett: 10 €
- Pfand: 25 €
- Verkauf HolidayCheck: 2,27
- Verkauf TLG Immobilien: 19,06
- Verkauf Carnival: 19,82
- Verkauf Macy: 10,82
- Verkauf Tui Bezugsrechte: 0,20
- Verkauf Wirecard: 26
- Verkauf iShares MSCI USA SRI UCITS: 51.04
- Verkauf iShares MSCI USA ESG Screened UCITS: 61.94


**Gesamteinnahmen reine Dividenden**: **153,54 €**

**Gesamteinnahmen plus sonstige**: **379,69 €**

Insgesamt haben 34 Einzelaktien, 3 Beimschung ETF, 1 Anleihen ETF, 1 Welt ETF und 1 Dividenden ETF ausgeschüttet.


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
  {
    "model_name":"Juni",
    "field1":293,
    "field2":245
  },
  {
    "model_name":"Juli",
    "field1":171,
    "field2":626,
  },
  {
    "model_name":"August",
    "field1":149,
    "field2":176,
  },
  {
    "model_name":"September",
    "field1":85,
    "field2":188,
  },
  {
    "model_name":"Oktober",
    "field1":336,
    "field2":450,
  },
  {
    "model_name":"November",
    "field1":129,
    "field2":153,
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

- VANGUARDFDS-ESG GLALL CAP ETF
  - Kauf von 33,3434 Stück am 05.11.2021
  - Kaufkurs: 4,9485 €
- VANGUARD FTSE EM.MARKETS U.ETF
  - Kauf von 2,7801 Stück am 05.11.2021
  - Kaufkurs: 59,35 €


**Dividenden-Aktien:**

- iShsV-EM Dividend UCITS ETF Registered Shares USD
  - Kauf von 0,545 Stück am 02.11.2021
  - Kaufkurs: 18,348 €


**Anleihen:**

- VANG.USD TREA.BD UETF DLD
  - Kauf von 1,113 Stück am 01.11.2021
  - Kaufkurs: 22,125 €
- VANGUARD-GL.A.B.U.ETF EOH
  - Kauf von 1,178 Stück am 01.11.2021
  - Kaufkurs: 25,085 €
- VANG.USD EM G.BD UETF DLD
  - Kauf von 0,564 Stück am 01.11.2021
  - Kaufkurs: 43,658 €


**Beimischung**:

- iShsIV-MSCI China UCITS ETF Reg. Shs USD Dis.
  - Kauf von 2,1991 Stück am 02.11.2021
  - Kaufkurs: 5,002 €
- iShsIV-MSCI China UCITS ETF Registered Shares USD (Acc)
  - Kauf von 2,0626 Stück am 02.11.2021
  - Kaufkurs: 5,333 €
- iShares IV-Healthc.Innovation Registered Shares
  - Kauf von 1,1401 Stück am 16.11.2021
  - Kaufkurs: 8,771 €


**Einzelaktien:**

- Accentro Real Estate AG Inhaber-Aktien
  - Kauf von 1,4598 Stück am 02.11.2021
  - Kaufkurs: 6,85 €
- ENEL S.p.A. Azioni nom. EO 1
  - Kauf von 1,3798 Stück am 02.11.2021
  - Kaufkurs: 7,247 €
- National Grid PLC Reg. Shares LS -,12431289
  - Kauf von 0,8936 Stück am 02.11.2021
  - Kaufkurs: 11,19 €
- Greencoat U.K. Wind PLC Registered Shares LS -,01
  - Kauf von 6,1728 Stück am 02.11.2021
  - Kaufkurs: 1,62 €
- DWS Group GmbH & Co. KGaA Inhaber-Aktien
  - Kauf von 0,2676 Stück am 02.11.2021
  - Kaufkurs: 37,36 €
- Nordex SE Inhaber-Aktien
  - Kauf von 0,6447 Stück am 02.11.2021
  - Kaufkurs: 15,51 €
- Healthcare Trust of Amer Inc. Reg. Shares Class A
  - Kauf von 0,3401 Stück am 02.11.2021
  - Kaufkurs: 29,40 €
- Eyemaxx Real Estate AG Inhaber-Aktien
  - Kauf von 9,1324 Stück am 02.11.2021
  - Kaufkurs: 1,095 €
- Aurora Solar Technologies Inc. Registered Shares
  - Kauf von 73,5294 Stück am 02.11.2021
  - Kaufkurs: 3,136 €
- Manulife Financial Corp. Registered Shares
  - Kauf von 0,5882 Stück am 02.11.2021
  - Kaufkurs: 17,00 €
- TransAlta Renewables Inc. Registered Shares
  - Kauf von 0,7794 Stück am 02.11.2021
  - Kaufkurs: 12,83 €
- Wendy's Co., The Reg. Shares Class A
  - Kauf von 0,5068 Stück am 02.11.2021
  - Kaufkurs: 19,73 €
- Owl Rock Capital Corp. Registered Shares
  - Kauf von 0,7902 Stück am 02.11.2021
  - Kaufkurs: 12,654 €
- Pembina Pipeline Corp. Registered Shares
  - Kauf von 0,3454 Stück am 02.11.2021
  - Kaufkurs: 29,95 €
- Gladstone Capital Corp. Registered Shares
  - Kauf von 0,998 Stück am 02.11.2021
  - Kaufkurs: 10,02 €
- Sixth Street Speciality Lend. Registered Shares
  - Kauf von 0,4867 Stück am 02.11.2021
  - Kaufkurs: 20,545 €
- Gladstone Investment Corp. Registered Shares
  - Kauf von 1,0192 Stück am 02.11.2021
  - Kaufkurs: 13,736 €
- Hewlett Packard Enterprise Co. Registered Shares DL -,01
  - Kauf von 0,768 Stück am 02.11.2021
  - Kaufkurs: 13,02 €
- Main Street Capital Corp. Registered Shares
  - Kauf von 0,2656 Stück am 02.11.2021
  - Kaufkurs: 37,65 €
- National Health Investors Inc. Registered Shares
  - Kauf von 0,2136 Stück am 02.11.2021
  - Kaufkurs: 46,80 €
- iShsIV-Digital Security UC.ETF Reg. Shs USD Dis.
  - Kauf von 1,2422 Stück am 02.11.2021
  - Kaufkurs: 8,05 €
- PennantPark Floating Rate Cap. Registered Shares
  - Kauf von 0,9433 Stück am 02.11.2021
  - Kaufkurs: 11,66 €
- Prospect Capital Corp. Registered Shares
  - Kauf von 2,1216 Stück am 02.11.2021
  - Kaufkurs: 7,07 €
- 2U Inc. Registered Shares
  - Kauf von 0,3947 Stück am 02.11.2021
  - Kaufkurs: 25,33 €
- Readly International AB Namn-Aktier
  - Kauf von 18 Stück am 05.11.2021
  - Kaufkurs: 2,762 €
- Nisshin Seifun Group Inc. Registered Shares
  - Kauf von 7 Stück am 05.11.2021
  - Kaufkurs: 13,70 €
- Nikola Corp. Registered Shares
  - Kauf von 4 Stück am 05.11.2021
  - Kaufkurs: 12,724 €
- Mind Medicine (MindMed) Inc. Registered Shares
  - Kauf von 23 Stück am 09.11.2021
  - Kaufkurs: 2,164 €
- New Oriental Educat.&Techn.Grp Registered Shares
  - Kauf von 26 Stück am 09.11.2021
  - Kaufkurs: 1,86 €
- CECONOMY AG Inhaber-Stammaktien
  - Kauf von 2,5342 Stück am 16.11.2021
  - Kaufkurs: 3,946 €
- Borussia Dortmund GmbH&Co.KGaA Inhaber-Aktien
  - Kauf von 2,134 Stück am 16.11.2021
  - Kaufkurs: 4,686 €
- Ubisoft Entertainment S.A. Actions Port. EO 0,0775
  - Kauf von 0,2127 Stück am 16.11.2021
  - Kaufkurs: 47,01 €
- TUI AG Namens-Aktien
  - Kauf von 3,7721 Stück am 16.11.2021
  - Kaufkurs: 2,651 €
- EasyJet PLC Registered Shares LS-,27285714
  - Kauf von 1,4188 Stück am 16.11.2021
  - Kaufkurs: 7,048 €
- Taylor Wimpey PLC Registered Shares LS -,01
  - Kauf von 5,2438 Stück am 16.11.2021
  - Kaufkurs: 1,907 €
- thyssenkrupp AG Inhaber-Aktien
  - Kauf von 1,0281 Stück am 16.11.2021
  - Kaufkurs: 9,726 €
- Sotherly Hotels Inc. Registered Shares
  - Kauf von 4,4642 Stück am 16.11.2021
  - Kaufkurs: 2,24 €
- 7C Solarparken AG Inhaber-Aktien
  - Kauf von 2,3337 Stück am 16.11.2021
  - Kaufkurs: 4,285 €
- Telefónica Deutschland Hldg AG Namens-Aktien
  - Kauf von 3,951 Stück am 16.11.2021
  - Kaufkurs: 2,531 €
- The Green Organic Dutchm.Hlds. Registered Shares
  - Kauf von 80,6451 Stück am 16.11.2021
  - Kaufkurs: 0,124 €
- Inovio Pharmaceuticals Inc. Registered Shares
  - Kauf von 1,5701 Stück am 16.11.2021
  - Kaufkurs: 6,369 €
- Canopy Growth Corp. Registered Shares
  - Kauf von 0,8074 Stück am 16.11.2021
  - Kaufkurs: 12,384 €
- Zillow Group Inc. Reg. Cap. Shares C
  - Kauf von 0,1784 Stück am 16.11.2021
  - Kaufkurs: 56,04 €
- Village Farms Internat. Inc. Registered Shares
  - Kauf von 1,2903 Stück am 16.11.2021
  - Kaufkurs: 7,75 €
- 2U Inc. Registered Shares
  - Kauf von 0,4334 Stück am 16.11.2021
  - Kaufkurs: 23,07 €
- Tupperware Brands Corp. Registered Shares
  - Kauf von 0,6289 Stück am 16.11.2021
  - Kaufkurs: 15,90 €
- Zynga Inc. Registered Shares DL -,01
  - Kauf von 1,5269 Stück am 16.11.2021
  - Kaufkurs: 6,549 €
- CK Hutchison Holdings Ltd. Registered Shares
  - Kauf von 7 Stück am 17.11.2021
  - Kaufkurs: 5,988 €
- Embracer Group AB Namn-Aktier AK Class B
  - Kauf von 12 Stück am 17.11.2021
  - Kaufkurs: 8,212 €
- Stillfront Group AB Namn-Aktier SK-,07
  - Kauf von 9 Stück am 17.11.2021
  - Kaufkurs: 5,08 €
- LTC Properties Inc. Registered Shares
  - Kauf von 0,3322 Stück am 16.11.2021
  - Kaufkurs: 30,10 €
- Hongkong Land Holdings Ltd. Registered Shares
  - Kauf von 10 Stück am 26.11.2021
  - Kaufkurs: 4,814 €
- Xiaomi Corp. Registered Shares Cl.B
  - Kauf von 23 Stück am 26.11.2021
  - Kaufkurs: 2,154 €
- Ganfeng Lithium Co. Ltd. Registered Shares H HD1
  - Kauf von 3 Stück am 26.11.2021
  - Kaufkurs: 16,27 €
- Razer Inc. Registered Shares
  - Kauf von 169 Stück am 26.11.2021
  - Kaufkurs: 0,298 €


## Fazit

Im Vergleich zum Vorjahr habe ich 24 € mehr eingenommen, was einen Anstieg von 18% entspricht. Erneut wurde mein finanzielles Ziel erreicht.
