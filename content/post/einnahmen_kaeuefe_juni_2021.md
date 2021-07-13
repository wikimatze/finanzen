+++
date = "2021-07-13T5:00:00+02:00"
title = "Einnahmen und Einkäufe Juni 2021"
titleAddition = "finanzmatze"
d3 = true
featuredImage = "/einnahmen_januar_februar_2020.png"
description = "Welche Einnahmen und Einkäufe habe ich in Juni 2021 getätigt?"
tags = [
    "einnahmen",
    "einkauf",
]
+++

Ich werde Euch einen Überblick geben,
welche Dividenden ich eingenommen und welche Posten ich aufgestockt habe.


## Einnahmen Juni 2021

**Dividenden-Aktien:**

- VA.FTSE A.W.H.D.Y.UETFDLD: **26,74 €**


**Anleihen**:

- VANG.USD EM G.BD UETF DLD: **33,11 €**
- VANG.USD TREA.BD UETF DLD: **4,33 €**
- ISHSII-JPM DL EM BD DLDIS: **1,74 €**
- ISHSIV-FALL.A.H.Y.C.BDDLD: **2,74 €**


**Beimischung**:

- VANECK GL.REAL EST.UC.ETF: **2,68 €**
- VANGUARD FDS-V.GER.ALL CAP: **5,77 €**
- ISHSIV-MSCI USA ESG S.DLD: **10,60 €**
- VANGUARD FTSE JP.UETF DLD: **6,53 €**


**Welt**:

- nichts


**Aktien**:

- 3M Co.: **2,70 €**
- AGNC Investment Corp.: **2,57 €**
- Arbor Realty Trust Inc.: **6,61 €**
- Archer Daniels Midland Co. Registered Shares: **2,25 €**
- Ares Capital Corp.: **8,70 €**
- Armour Residential REIT Inc: **0,94 €**
- BP: **3,80 €**
- Barings BDC Inc.: **4,89 €**
- Barrick Gold Corp: **0,26 €**
- Blackrock Inc. Reg. Shares Class A: **2,58 €**
- CD Projekt SA InhaberAktien C ZY: **3,95 €**
- Corus Entertainment Inc Reg Shs Class B (NonVtg) oN: **0,84 €**
- Deutsche EuroShop AG: **0,23 €**
- Enbridge Inc: **1,49 €**
- Extra Space Storage Inc RegShs of Benef Int: **0,63 €**
- Exxon Mobil Corp. Registered Shares: **3,17 €**
- Gladstone Capital Corp: **2,33 €**
- Gladstone Commercial Corp.: **2,03 €**
- Gladstone Investment Corp: **3,67 €**
- Gladstone Land Corp.: **0,47 €**
- Harley-Davidson Inc.: **1,21 €**
- Hengan Internat. Grp Co. Ltd. Registered Shares HD: **4,09 €**
- Intel Corp: **0,58 €**
- Inter Pipeline Ltd: **0,18 €**
- Iron Mountain Inc.: **16,01 €**
- Kellogg Co.: **2,48 €**
- Kimco Realty Corp: **0,95 €**
- Kohl's Corp: **0,33 €**
- Kraft Heinz Co., The: **2,98 €**
- LTC Properties Inc: **0,83 €**
- Main Street Capital Corp: **2,99 €**
- Mitsubishi Corp. Registered Shares: **3,74 €**
- New Mountain Finance Corp: **2,43 €**
- Pembina Pipeline Corp: **1,42 €**
- PennantPark Floating Rate Cap: **2,33 €**
- Pfizer Inc.: **2,85 €**
- Prospect Capital Corp: **2,74 €**
- Prudential Financial Inc.: **3,52 €**
- Realty Income Corp.: **1,01 €**
- STAG Industrial Inc.: **0,94 €**
- Shaw Communications Inc: **0,94 €**
- Southern Co The: **0,80 €**
- TransAlta Renewables Inc: **2,39 €**
- Unilever PLC Registered Shares LS: **2,54 €**
- Walgreens Boots Alliance Inc Reg Shares: **1,14 €**
- Wells Fargo & Co: **0,31 €**
- freenet AG: **34,92 €**


**Verkäufe**:

- Firefinch: 13.25
- Xiaomi: 6.75
- Tui: 1.46
- Borussia: 4.16
- Bayer: 13.93


**Gesamteinnahmen reine Dividenden**: **245 €**

**Gesamteinnahmen plus sonstige/Verkäufe**: **284,54 €**

Insgesamt haben 47 Einzelaktien, 4 Beimschung ETF, 4 Anleihen ETFs, 0 Welt ETF und 1 Dividenden ETF ausgeschüttet.


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

- iShsV-EM Dividend UCITS ETF Registered Shares USD
  - Kauf von 1,0649 Stück am 16.06.2021
  - Kaufkurs: 18,78 €


**Welt**:

- iShsIV-iShs MSCI Wld ESG S.ETF Reg. Shares USD Acc.
  - Kauf von 35,7257 Stück am 02.06.2021
  - Kaufkurs: 6,242 €


**Anleihen:**

- VANG.USD TREA.BD UETF DLD
  - Kauf von 1,178 Stück am 01.06.2021
  - Kaufkurs: 20,898 €
- VANG.USD EM G.BD UETF DLD
  - Kauf von 0,588 Stück am 01.06.2021
  - Kaufkurs: 41,889 €
- iShsIV-Fa.An.Hi.Yi.Co.Bd U.ETF Registered Shares USD
  - Kauf von 1,9445 Stück am 02.06.2021
  - Kaufkurs: 5,1425 €


**Beimischung**:

- iShsII-Gl.Infrastruct.U.ETF Registered Shs USD (Dist)
  - Kauf von 0,9437 Stück am 02.06.2021
  - Kaufkurs: 26,49 €
- iShsIV-MSCI China UCITS ETF Registered Shares USD (Acc)
  - Kauf von 1,6165 Stück am 02.06.2021
  - Kaufkurs: 6,186 €
- iShsIV-MSCI China A UCITS ETF Registered Shares USD (Acc)
  - Kauf von 2,0254 Stück am 02.06.2021
  - Kaufkurs: 5,431 €
- iShares IV-Healthc.Innovation Registered Shares
  - Kauf von 13,4474 Stück am 02.06.2021
  - Kaufkurs: 8,18 €
- iShs IV-iShs MSCI India UC.ETF Registered Shares
  - Kauf von 1,7111 Stück am 02.06.2021
  - Kaufkurs: 5,844 €
- iShsV-Gold Producers.UCITS ETF Registered Shares USD (Acc)
  - Kauf von 1,1091 Stück am 16.06.2021
  - Kaufkurs: 13,524 €


**Einzelaktien:**

- TUI AG Namens-Aktien
  - Kauf von 2,1568 Stück am 02.06.2021
  - Kaufkurs: 5,10 €
- National Grid PLC Reg. Shares LS -,12431289
  - Kauf von 0,8956 Stück am 02.06.2021
  - Kaufkurs: 11,165 €
- Kingfisher PLC Reg. Shares LS -,157142857
  - Kauf von 2,3923 Stück am 02.06.2021
  - Kaufkurs: 4,18 €
- Air France-KLM S.A. Actions Port. EO 1
  - Kauf von 2,2513 Stück am 02.06.2021
  - Kaufkurs: 4,886 €
- HAMBORNER REIT AG Namens-Aktien
  - Kauf von 1,0814 Stück am 02.06.2021
  - Kaufkurs: 9,247 €
- METRO AG Inhaber-Stammaktien
  - Kauf von 0,9402 Stück am 02.06.2021
  - Kaufkurs: 10,635 €
- Accentro Real Estate AG Inhaber-Aktien
  - Kauf von 1,1695 Stück am 02.06.2021
  - Kaufkurs: 8,55 €
- Deutsche Telekom AG Namens-Aktien
  - Kauf von 1,7941 Stück am 02.06.2021
  - Kaufkurs: 17,278 €
- Consus Real Estate AG Namens-Aktien
  - Kauf von 1,4492 Stück am 02.06.2021
  - Kaufkurs: 6,90 €
- Borussia Dortmund GmbH&Co.KGaA Inhaber-Aktien
  - Kauf von 1,6638 Stück am 02.06.2021
  - Kaufkurs: 6,01 €
- 7C Solarparken AG Inhaber-Aktien
  - Kauf von 2,436 Stück am 02.06.2021
  - Kaufkurs: 4,105 €
- Algonquin Power&Utilities Corp Registered Shares
  - Kauf von 1,0971 Stück am 02.06.2021
  - Kaufkurs: 12,76 €
- CECONOMY AG Inhaber-Stammaktien
  - Kauf von 2,2783 Stück am 02.06.2021
  - Kaufkurs: 4,828 €
- E.ON SE Namens-Aktien
  - Kauf von 1,0021 Stück am 02.06.2021
  - Kaufkurs: 9,979 €
- GlaxoSmithKline PLC Registered Shares LS -,25
  - Kauf von 1,0113 Stück am 02.06.2021
  - Kaufkurs: 15,82 €
- BP PLC Registered Shares
  - Kauf von 2,6968 Stück am 02.06.2021
  - Kaufkurs: 3,708 €
- Rolls Royce Holdings PLC Registered Shares LS 0.20
  - Kauf von 7,6394 Stück am 02.06.2021
  - Kaufkurs: 1,309 €
- Sotherly Hotels Inc. Registered Shares
  - Kauf von 3,0674 Stück am 02.06.2021
  - Kaufkurs: 3,26 €
- Vodafone Group PLC Registered Shares
  - Kauf von 6,6312 Stück am 02.06.2021
  - Kaufkurs: 1,508 €
- Owl Rock Capital Corp. Registered Shares
  - Kauf von 2,1637 Stück am 02.06.2021
  - Kaufkurs: 12,016 €
- Pembina Pipeline Corp. Registered Shares
  - Kauf von 0,9904 Stück am 02.06.2021
  - Kaufkurs: 26,25 €
- WhiteHorse Finance Inc. Registered Shares
  - Kauf von 1,002 Stück am 02.06.2021
  - Kaufkurs: 12,974 €
- AEterna Zentaris Inc. Registered Shares
  - Kauf von 12,7388 Stück am 02.06.2021
  - Kaufkurs: 0,785 €
- Barrick Gold Corp. Registered Shares
  - Kauf von 0,8564 Stück am 02.06.2021
  - Kaufkurs: 19,85 €
- Aurora Cannabis Inc. Registered Shares
  - Kauf von 1,4043 Stück am 02.06.2021
  - Kaufkurs: 7,833 €
- Baozun Inc. R.Shs Cl.A(sp.ADRs)/3
  - Kauf von 0,9933 Stück am 02.06.2021
  - Kaufkurs: 30,20 €
- AT & T Inc. Registered Shares DL 1
  - Kauf von 1,0416 Stück am 02.06.2021
  - Kaufkurs: 24,00 €
- Cardinal Health Inc. Registered Shares
  - Kauf von 1,0246 Stück am 02.06.2021
  - Kaufkurs: 45,87 €
- TransAlta Renewables Inc. Registered Shares
  - Kauf von 4,2473 Stück am 02.06.2021
  - Kaufkurs: 13,42 €
- LTC Properties Inc. Registered Shares
  - Kauf von 0,9963 Stück am 02.06.2021
  - Kaufkurs: 33,12 €
- Gladstone Investment Corp. Registered Shares
  - Kauf von 3,3996 Stück am 02.06.2021
  - Kaufkurs: 11,766 €
- CoreCivic Inc. Registered Shares
  - Kauf von 1,3947 Stück am 02.06.2021
  - Kaufkurs: 7,17 €
- Gladstone Capital Corp. Registered Shares
  - Kauf von 5,8941 Stück am 02.06.2021
  - Kaufkurs: 9,501 €
- GEO Group Inc., The Registered Shares
  - Kauf von 2,2331 Stück am 02.06.2021
  - Kaufkurs: 4,478 €
- Main Street Capital Corp. Registered Shares
  - Kauf von 1,0265 Stück am 02.06.2021
  - Kaufkurs: 34,095 €
- Medical Properties Trust Inc. Registered Shares
  - Kauf von 1,0774 Stück am 02.06.2021
  - Kaufkurs: 17,635 €
- Omega Healthcare Invest. Inc. Registered Shares
  - Kauf von 0,9955 Stück am 02.06.2021
  - Kaufkurs: 31,14 €
- Marks & Spencer Group PLC Registered Shares LS -,25
  - Kauf von 7,8349 Stück am 02.06.2021
  - Kaufkurs: 1,9145 €
- PennantPark Floating Rate Cap. Registered Shares
  - Kauf von 4,1666 Stück am 02.06.2021
  - Kaufkurs: 10,56 €
- 2U Inc. Registered Shares
  - Kauf von 0,9933 Stück am 02.06.2021
  - Kaufkurs: 30,20 €
- Tupperware Brands Corp. Registered Shares
  - Kauf von 1,0367 Stück am 02.06.2021
  - Kaufkurs: 21,22 €
- Prospect Capital Corp. Registered Shares
  - Kauf von 2,9453 Stück am 02.06.2021
  - Kaufkurs: 7,13 €
- Zuora Inc. Reg. Sh. Class A
  - Kauf von 1,05 Stück am 02.06.2021
  - Kaufkurs: 12,38 €
- Vodafone Group PLC Registered Shares
  - Kauf von 6,4516 Stück am 16.06.2021
  - Kaufkurs: 1,55 €
- GEO Group Inc., The Registered Shares
  - Kauf von 1,6406 Stück am 16.06.2021
  - Kaufkurs: 6,095 €
- Taylor Wimpey PLC Registered Shares LS -,01
  - Kauf von 5,039 Stück am 16.06.2021
  - Kaufkurs: 1,9845 €
- Renesas Electronics Corp. Registered Shares
  - Kauf von 11 Stück am 22.06.2021
  - Kaufkurs: 9,00 €
- Capital Southwest Corp. Registered Shares
  - Kauf von 18,000 Stück am 30.06.2021
  - Kaufkurs: 20,2000 €


## Fazit

Im Vergleich zum Vorjahr habe ich 48 € weniger eingenommen, was einen Abstieg von 16% entspricht. Dies liegt unter anderen
darin, dass meine Dividenden-ETFs A1JNZ9, A1JNZ9 und A1T8FV bei meinen Broker DKB dieses Jahr verzögert ausschütten.
Dieses "Defizit" sollte im nächsten Monat für ein dickeres Plus sorgen.

