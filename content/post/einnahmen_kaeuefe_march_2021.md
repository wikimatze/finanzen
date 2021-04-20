+++
date = "2021-04-07T04:19:00+01:00"
title = "Einnahmen und Einkäufe März 2021"
titleAddition = "finanzmatze"
draft = false
featuredImage = "/einnahmen_januar_februar_2020.png"
description = "Welche Einnahmen und Einkäufe habe ich im März 2021 getätigt?"
tags = [
    "einnahmen",
    "einkauf",
]
+++

Einnahmen und Einkäufe im März 2021. Ich werde Euch einen Überblick geben,
welche Dividenden ich eingenommen habe und welche Posten ich aufgestockt habe.


## Einnahmen


**Dividenden-Aktien:**

- ISHSV-EM DIVIDEND UCITS ETF: **30,96 €**
- iShs Core S&P  UCETF USD (Dist)oN: **1,54 €**
- VA.FTSE A.W.H.D.Y.U ETF: **16,78 €**


**Anleihen**:

- A143JN Vanguard USD Treasury: **1,88 €**
- A0NECU iShares J.P. Morgan USD Emerging Markets: **2,65 €**
- A143JQ Vanguard USD EM Government: **16,61 €**


**Beimischung**:

- VANGUARD FTSE JP.UETF DLD: **0,94 €**
- VANECK VE.GL REAL ESTATE: **1,39 €**
- VANGUARD FDS-V.GER.ALL CAP U.E: **0,42 €**


**Aktien**:

- Archer Daniels Midland Co. Registered Shares: **2,26 €**
- Unilever PLC Registered Shares LS: **2,58 €**
- AGNC Investment Corp.: **2,61 €**
- 3M Co.: **2,77 €**
- Prudential Financial Inc.: **3,59 €**
- Exxon Mobil Corp. Registered Shares: **3,25 €**
- Main Street Capital Corp.: **1,27 €**
- Kellogg Co.: **2,47 €**
- Realty Income Corp.: **1,00 €**
- STAG Industrial Inc.: **0,98 €**
- Harley-Davidson Inc.: **1,21 €**
- Arbor Realty Trust Inc.: **6,60 €**
- Blackrock Inc. Reg. Shares Class A: **2,57 €**
- BHP Group PLC: **11,18 €**
- Kraft Heinz Co., The: **3,01 €**
- Gladstone Commercial Corp.: **1,57 €**
- Ares Capital Corp.: **8,81 €**
- Gladstone Land Corp.: **0,49 €**
- Walgreens Boots Alliance Inc Reg Shares: **1,16 €**
- Pembina Pipeline Corp: **1,02 €**
- Southern Co The: **0,79 €**
- Inter Pipeline Ltd: **0,18 €**
- Wells Fargo & Co: **0,31 €**
- Main Street Capital Corp: **1,30 €**
- Hercules Capital Inc: **3,91 €**
- Intel Corp: **0,58 €**
- Enbridge Inc: **1,09 €**
- PennantPark Floating Rate Cap: **1,59 €**
- BHP Group: **2,59 €**
- Kimco Realty Corp: **0,95 €**
- Prospect Capital Corp: **2,00 €**
- Shaw Communications Inc: **0,93 €**
- Armour Residential REIT Inc: **0,94 €**
- Gladstone Investment Corp: **1,54 €**
- Corus Entertainment Inc Reg Shs Class B (NonVtg) oN: **0,84 €**
- PennantPark Floating Rate Cap: **1,93 €**
- Kohl's Corp: **0,33 €**
- Extra Space Storage Inc RegShs of Benef Int: **0,63 €**
- New Mountain Finance Corp: **2,47 €**
- TransAlta Renewables Inc: **0,82 €**
- LTC Properties Inc: **0,60 €**
- Gladstone Capital Corp: **1,68 €**
- BP: **3,65 €**
- Whitestone REIT: **0,59 €**


**Verkauf**:

- Tui: **13,40 €**
- iShsIII-Core MSCI World: **25,50 €**


**Sonstige Einnahmen**:

- payback: **19,70 €**
- Geldgeschenke + Pfand: **100 €**
- Buch Verkauf (Padrinobook): **25,60 €**


**Gesamteinnahmen**: **188,14 €**

Insgesamt haben 44 Einzelaktien, 0 Welt ETF, 3 Beimschung ETF, 3 Anleihen ETF und 3 Dividenden ETF ausgeschüttet.


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

**Anleihen:**

- iShsIV-Fa.An.Hi.Yi.Co.Bd U.ETF Registered Shares USD
  - Kauf von 1,9491 Stück am 02.03.2021
  - Kaufkurs: 5,13 €
- iShsII-J.P.M.$ EM Bond U.ETF Registered Shares
  - Kauf von 0,2738 Stück am 02.03.2021
  - Kaufkurs: 91,28 €
- Vanguard USD EM Government Bond UCITS
  - Kauf von 0,581 Stück am 08.03.2021
  - Kaufkurs: 42,355 €


**Beimischung**:

- iShsII-Asia Property Yld U.ETF Registered Shs USD (Dist)
  - Kauf von 0,4311 Stück am 16.03.2021
  - Kaufkurs: 23,20 €
- iShsIV-MSCI China UCITS ETF Registered Shares USD (Acc)
  - Kauf von 1,4981 Stück am 02.03.2021
  - Kaufkurs: 6,68 €
- iShs IV-iShs MSCI India UC.ETF Registered Shares
  - Kauf von 1,8096 Stück am 02.03.2021
  - Kaufkurs: 5,53 €
- iShsII-Gl.Infrastruct.U.ETF Registered Shs USD (Dist)
  - Kauf von 1,0273 Stück am 02.03.2021
  - Kaufkurs: 24,34 €
- iShares IV-Healthc.Innovation Registered Shares
  - Kauf von 15,9748 Stück am 02.03.2021
  - Kaufkurs: 8,58 €


**Einzelaktien:**

- Südzucker AG Inhaber-Aktien
  - Kauf von 0,9826 Stück am 02.03.2021
  - Kaufkurs: 13,23 €
- TAKKT AG Inhaber-Aktien
  - Kauf von 0,8702 Stück am 02.03.2021
  - Kaufkurs: 12,64 €
- 7C Solarparken AG Inhaber-Aktien
  - Kauf von 2,3809 Stück am 02.03.2021
  - Kaufkurs: 4,20 €
- Deutsche Telekom AG Namens-Aktien
  - Kauf von 2,0652 Stück am 02.03.2021
  - Kaufkurs: 15,01 €
- Kingfisher PLC Reg. Shares
  - Kauf von 3,1847 Stück am 02.03.2021
  - Kaufkurs: 3,14 €
- E.ON SE Namens-Aktien
  - Kauf von 1,1715 Stück am 02.03.2021
  - Kaufkurs: 8,54 €
  - Kauf von 1,1332 Stück am 16.03.2021
  - Kaufkurs: 8,82 €
- METRO AG Inhaber-Stammaktien
  - Kauf von 1,153 Stück am 02.03.2021
  - Kaufkurs: 9,54 €
- Rolls Royce Holdings PLC Registered Shares LS 0.20
  - Kauf von 7,6628 Stück am 02.03.2021
  - Kaufkurs: 1,30 €
- GlaxoSmithKline PLC Registered Shares LS -,25
  - Kauf von 1,0521 Stück am 02.03.2021
  - Kaufkurs: 14,26 €
  - Kauf von 0,9957 Stück am 16.03.2021
  - Kaufkurs: 15,06 €
- HSBC Holdings PLC Registered Shares
  - Kauf von 2,0325 Stück am 02.03.2021
  - Kaufkurs: 4,92 €
- Enbridge Inc. Registered Shares
  - Kauf von 0,9613 Stück am 02.03.2021
  - Kaufkurs: 29,12 €
- AT & T Inc. Registered Shares DL 1
  - Kauf von 1,0221 Stück am 02.03.2021
  - Kaufkurs: 23,48 €
- Shaw Communications Inc. Reg.N-Vtg Part.Shs B
  - Kauf von 3,9242 Stück am 02.03.2021
  - Kaufkurs: 14,78 €
- Pembina Pipeline Corp. Registered Shares
  - Kauf von 2,0675 Stück am 02.03.2021
  - Kaufkurs: 21,76 €
- NETCENTS TECHNOLOGY INC. Registered Shares
  - Kauf von 14,97 Stück am 02.03.2021
  - Kaufkurs: 0,67 €
- Ares Capital Corp. Registered Shares
  - Kauf von 0,9674 Stück am 02.03.2021
  - Kaufkurs: 15,50 €
- Cardinal Health Inc. Registered Shares
  - Kauf von 1,0162 Stück am 02.03.2021
  - Kaufkurs: 44,28 €
- GEO Group Inc., The Registered Shares
  - Kauf von 1,5994 Stück am 02.03.2021
  - Kaufkurs: 6,25 €
  - Kauf von 1,4421 Stück am 16.03.2021
  - Kaufkurs: 6,93 €
- Apollo Investment Corp. Registered Shares
  - Kauf von 0,9326 Stück am 02.03.2021
  - Kaufkurs: 11,79 €
- TransAlta Renewables Inc. Registered Shares
  - Kauf von 4,1651 Stück am 02.03.2021
  - Kaufkurs: 13,44 €
- Main Street Capital Corp. Registered Shares
  - Kauf von 1,7394 Stück am 02.03.2021
  - Kaufkurs: 30,47 €
- Global Net Lease Inc. Registered Shares
  - Kauf von 0,9453 Stück am 02.03.2021
  - Kaufkurs: 14,81 €
- Gladstone Capital Corp. Registered Shares
  - Kauf von 6,149 Stück am 02.03.2021
  - Kaufkurs: 8,29 €
- Gladstone Commercial Corp. Registered Shares
  - Kauf von 0,9499 Stück am 02.03.2021
  - Kaufkurs: 15,79 €
- Gladstone Investment Corp. Registered Shares
  - Kauf von 5,0665 Stück am 02.03.2021
  - Kaufkurs: 10,07 €
- Medical Properties Trust Inc. Registered Shares
  - Kauf von 1,067 Stück am 02.03.2021
  - Kaufkurs: 17,81 €
- Prospect Capital Corp. Registered Shares
  - Kauf von 8,3143 Stück am 02.03.2021
  - Kaufkurs: 6,13 €
- PennantPark Floating Rate Cap. Registered Shares
  - Kauf von 4,5098 Stück am 02.03.2021
  - Kaufkurs: 10,20 €
- Pluralsight Inc. Reg. Shs Cl. A
  - Kauf von 0,9131 Stück am 02.03.2021
  - Kaufkurs: 17,52 €
- Omega Healthcare Invest. Inc. Registered Shares
  - Kauf von 1,0042 Stück am 02.03.2021
  - Kaufkurs: 30,87 €
- Zuora Inc. Reg. Sh. Class A
  - Kauf von 0,9185 Stück am 02.03.2021
  - Kaufkurs: 13,06 €
- National Grid PLC Reg. Shares LS -,12431289
  - Kauf von 1,004 Stück am 16.03.2021
  - Kaufkurs: 9,96 €
- HAMBORNER REIT AG Namens-Aktien
  - Kauf von 1,0968 Stück am 16.03.2021
  - Kaufkurs: 9,12 €
- Accentro Real Estate AG Inhaber-Aktien
  - Kauf von 1,2578 Stück am 16.03.2021
  - Kaufkurs: 7,95 €
- Xiaomi Corp. Registered Shares Cl.B
  - Kauf von 36 Stück am 15.03.2021
  - Kaufkurs: 2,78 €
- Razer Inc. Registered Shares
  - Kauf von 400 Stück am 10.03.2021
  - Kaufkurs: 0,25 €
- Pennantpark Investment Corp. Registered Shares
  - Kauf von 20 Stück am 17.03.2021
  - Kaufkurs: 4,99 €
- Corestate Capital Holding S.A Actions au Porteur
  - Kauf von 7 Stück am 24.03.2021
  - Kaufkurs: 13,87 €
- TUI AG Namens-Aktien
  - Kauf von 22 Stück am 24.03.2021
  - Kaufkurs: 4,45 €
- WhiteHorse Finance Inc. Registered Shares
  - Kauf von 8 Stück am 25.03.2021
  - Kaufkurs: 12,98 €
- China Ov.Land & Inv. Ltd. Registered Shares
  - Kauf von 42 Stück am 30.03.2021
  - Kaufkurs: 2,34 €
- Cathay Pacific Airways Ltd. Registered Shares
  - Kauf von 121 Stück am 30.03.2021
  - Kaufkurs: 0,82 €


## Fazit:

Im Vergleich zum Vorjahr habe ich 28 € mehr eingenommen, was einen Anstieg von 25% bedeutet. Auch hat es mich
überrascht, das ich mal wieder ein Exemplar von meinen Ebook verkaufen konnte.

So kann es gerne weitergehen.

