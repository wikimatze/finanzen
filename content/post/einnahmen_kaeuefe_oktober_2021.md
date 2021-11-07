+++
date = "2021-11-07T5:00:00+02:00"
title = "Einnahmen und Einkäufe Oktober 2021"
titleAddition = "finanzmatze"
d3 = true
featuredImage = "/einnahmen_januar_februar_2020.png"
description = "Welche Einnahmen und Einkäufe sind im Oktober 2021 angefallen?"
tags = [
    "einnahmen",
    "einkauf",
]
+++

## Einnahmen Oktober 2021

**Dividenden-Aktien:**

- VANGUARD S&P 500 UCITS ETF: **15,45 €**
- ISHS-ASIA PACIFIC DIV.U.ETF: **1,40 €**
- ISHSV-EM DIVIDEND UCITS ETF: **151,58 €**
- VANG.FTSE A.-WO.HI.DI.YI.U.ETF: **19,13 €**
- ISH.ST.GL.SEL.DIV.100 U.ETF DE: **43,00 €**


**Anleihen**:

- iShsIIJPM$ EM Bond UETF: **0,99 €**
- ISHSII-JPM DL EM BD DLDIS: **1,62 €**
- VANGUARD-GL.A.B.U.ETF EOH: **0,04 €**
- VANG.USD EM G.BD UETF DLD: **14,25 €**
- VANG.USD TREA.BD UETF DLD: **1,45 €**


**Beimischung**:

- VANGUARD FTSE JAPAN UCITS ETF: **0,87 €**
- iSh.ST.Eu.600 Aut.&Pa.U.: **4,79 €**


**Welt**:

- VANGUARD FTSE EM.MARKETS U.ETF: **54,67 €**
- VANG.FTSE DEVELOP.WORLD U.ETF: **1,67 €**
- VANGUARDFDS-ESG GLALL CAP ETF: **0,23 €**


**Aktien**:

- AGNC Investment Corp.: **2,70 €**
- AT & T Inc.: **7,11 €**
- Algonquin Power&Utilities Corp: **0,31 €**
- Annaly Capital Management Inc.: **8,85 €**
- Apollo Investment Corp: **1,85 €**
- Armour Residential REIT Inc: **0,95 €**
- Cardinal Health Inc: **2,55 €**
- Cisco Systems Inc.: **2,35 €**
- Coca-Cola Co., The: **5,35 €**
- Foot Locker Inc.: **1,92 €**
- Gladstone Capital Corp: **2,76 €**
- Gladstone Commercial Corp.: **2,09 €**
- Gladstone Investment Corp: **2,51 €**
- Gladstone Land Corp.: **0,50 €**
- GlaxoSmithKline: **2,01 €**
- Global Net Lease Inc.: **8,76 €**
- Healthcare Trust of Amer Inc Reg Shares Class A: **0,17 €**
- Hengan Internat. Grp Co. Ltd. Registered Shares HD: **3,31 €**
- Hewlett Packard Enterprise Co: **0,16 €**
- Iron Mountain Inc.: **6,76 €**
- JPMorgan Chase & Co: **0,65 €**
- LTC Properties Inc: **1,10 €**
- Ladder Capital Corp: **0,90 €**
- Macy's, Inc.: **2,59 €**
- Main Street Capital Corp: **3,59 €**
- Medical Properties Trust Inc: **1,98 €**
- New Residential Investm. Corp.: **11,17 €**
- Occidental Petroleum Corp: **0,03 €**
- One Liberty Properties Inc: **4,07 €**
- Orchid Island Capital Inc: **0,95 €**
- Pembina Pipeline Corp: **1,72 €**
- PennantPark Floating Rate Cap: **6,19 €**
- Pennantpark Investment Corp: **1,52 €**
- Ping An Insurance(Grp)CoChina  H YC: **0,62 €**
- Prospect Capital Corp: **3,25 €**
- Realty Income Corp.: **1,04 €**
- STAG Industrial Inc.: **0,99 €**
- Shaw Communications Inc: **0,95 €**
- Sixth Street Speciality Lend: **1,84 €**
- Spirit Realty Capital Inc.: **5,72 €**
- Starwood Property Trust Inc: **4,96 €**
- Store Capital Corporation: **4,71 €**
- TransAlta Renewables Inc: **1,54 €**
- W.P. Carey Inc.: **4,05 €**
- WhiteHorse Finance Inc: **2,74 €**


**Sonstiges**:

- Verkauf Macy: **7,95 €**


**Gesamteinnahmen reine Dividenden**: **450,06 €**

**Gesamteinnahmen plus sonstige**: **458,01 €**

Insgesamt haben 45 Einzelaktien, 3 Welt ETFs, 2 Beimschung ETFs, 5 Anleihen ETFs und 5 Dividenden ETFs ausgeschüttet.


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

- VANGUARD FTSE EM.MARKETS U.ETF
  - Kauf von 2,172 Stück am 05.10.2021
  - Kaufkurs: 57,55 €
- VANGUARDFDS-ESG GLALL CAP ETF
  - Kauf von 10,9349 Stück am 05.10.2021
  - Kaufkurs: 4,5725 €
- VANG.FTSE DEVELOP.WORLD U.ETF
  - Kauf von 1,92 Stück am 05.10.2021
  - Kaufkurs: 75,52 €
- iShsIV-iShs MSCI Wld ESG S.ETF Reg. Shares USD Acc.
  - Kauf von 1,5158 Stück am 04.10.2021
  - Kaufkurs: 6,597 €
- VANGUARDFDS-ESG GLALL CAP ETF
  - Kauf von 30,392 Stück am 20.10.2021
  - Kaufkurs: 4,771 €


**Dividenden-Aktien:**

- iShsV-EM Dividend UCITS ETF Registered Shares USD
  - Kauf von 0,5424 Stück am 04.10.2021
  - Kaufkurs: 18,434 €
- ISHS-ASIA PACIFIC DIV.U.ETF
  - Kauf von 9,7205 Stück am 20.10.2021
  - Kaufkurs: 20,575 €


**Anleihen:**

- VANG.USD EM G.BD UETF DLD
  - Kauf von 0,562 Stück am 01.10.2021
  - Kaufkurs: 43,822 €
- VANG.USD TREA.BD UETF DLD
  - Kauf von 1,109 Stück am 01.10.2021
  - Kaufkurs: 22,196 €
- VANGUARD-GL.A.B.U.ETF EOH
  - Kauf von 1,169 Stück am 01.10.2021
  - Kaufkurs: 25,2716 €
- iShsIV-Fa.An.Hi.Yi.Co.Bd U.ETF Registered Shares USD
  - Kauf von 1,877 Stück am 04.10.2021
  - Kaufkurs: 5,3276 €


**Beimischung**:

- iShsIV-MSCI China UCITS ETF Reg. Shs USD Dis.
  - Kauf von 2,2914 Stück am 04.10.2021
  - Kaufkurs: 4,8005 €
- Lyxor NYSE Arca Gold BUGS ETF Inh.-An. I
  - Kauf von 1,1711 Stück am 04.10.2021
  - Kaufkurs: 19,638 €
- iShsV-Gold Producers.UCITS ETF Registered Shares USD (Acc)
  - Kauf von 0,8967 Stück am 04.10.2021
  - Kaufkurs: 11,152 €
- iShs Global Corp Bd UCITS ETF Registered Shares USD
  - Kauf von 0,1111 Stück am 04.10.2021
  - Kaufkurs: 89,976 €
- iShsIV-MSCI China A UCITS ETF Registered Shares USD (Acc)
  - Kauf von 1,9065 Stück am 04.10.2021
  - Kaufkurs: 5,245 €
- iShsIV-MSCI China UCITS ETF Registered Shares USD (Acc)
  - Kauf von 2,1717 Stück am 04.10.2021
  - Kaufkurs: 5,065 €
- iShsIV-Digital Security UC.ETF Reg. Shs USD Dis.
  - Kauf von 1,355 Stück am 04.10.2021
  - Kaufkurs: 7,38 €
- iShsIV-MSCI USA SRI UCITS ETF Registered Shares USD
  - Kauf von 0,9482 Stück am 04.10.2021
  - Kaufkurs: 10,546 €
- iShares IV-Healthc.Innovation Registered Shares
  - Kauf von 1,1838 Stück am 04.10.2021
  - Kaufkurs: 8,447 €
- VANGUARD FDS-V.GER.ALL CAP U.E
  - Kauf von 1,8332 Stück am 05.10.2021
  - Kaufkurs: 27,275 €


**Einzelaktien:**

- National Grid PLC Reg. Shares LS -,12431289
  - Kauf von 0,9519 Stück am 04.10.2021
  - Kaufkurs: 10,505 €
- Siemens Energy AG Namens-Aktien
  - Kauf von 0,4454 Stück am 04.10.2021
  - Kaufkurs: 22,45 €
- Iberdrola S.A. Acciones Port. EO -,75
  - Kauf von 1,1376 Stück am 04.10.2021
  - Kaufkurs: 8,79 €
- Greencoat U.K. Wind PLC Registered Shares LS -,01
  - Kauf von 6,2893 Stück am 04.10.2021
  - Kaufkurs: 1,59 €
- Nordex SE Inhaber-Aktien
  - Kauf von 0,7283 Stück am 04.10.2021
  - Kaufkurs: 13,73 €
- ENEL S.p.A. Azioni nom. EO 1
  - Kauf von 1,4918 Stück am 04.10.2021
  - Kaufkurs: 6,703 €
- Eyemaxx Real Estate AG Inhaber-Aktien
  - Kauf von 2,7777 Stück am 04.10.2021
  - Kaufkurs: 3,60 €
- Accentro Real Estate AG Inhaber-Aktien
  - Kauf von 1,3888 Stück am 04.10.2021
  - Kaufkurs: 7,20 €
- Consus Real Estate AG Namens-Aktien
  - Kauf von 2,0408 Stück am 04.10.2021
  - Kaufkurs: 4,90 €
- Aurora Solar Technologies Inc. Registered Shares
  - Kauf von 50,2512 Stück am 04.10.2021
  - Kaufkurs: 0,199 €
- Vodafone Group PLC Registered Shares
  - Kauf von 7,4571 Stück am 04.10.2021
  - Kaufkurs: 1,341 €
- Algonquin Power&Utilities Corp Registered Shares
  - Kauf von 0,7843 Stück am 04.10.2021
  - Kaufkurs: 12,75 €
- 7C Solarparken AG Inhaber-Aktien
  - Kauf von 2,6631 Stück am 04.10.2021
  - Kaufkurs: 3,755 €
- DWS Group GmbH & Co. KGaA Inhaber-Aktien
  - Kauf von 0,2733 Stück am 04.10.2021
  - Kaufkurs: 36,58 €
- Healthcare Trust of Amer Inc. Reg. Shares Class A
  - Kauf von 0,3846 Stück am 04.10.2021
  - Kaufkurs: 26,00 €
- Manulife Financial Corp. Registered Shares
  - Kauf von 0,5952 Stück am 04.10.2021
  - Kaufkurs: 16,80 €
- BP PLC Registered Shares
  - Kauf von 2,5214 Stück am 04.10.2021
  - Kaufkurs: 3,966 €
- Owl Rock Capital Corp. Registered Shares
  - Kauf von 0,8156 Stück am 04.10.2021
  - Kaufkurs: 12,26 €
- Wendy's Co., The Reg. Shares Class A
  - Kauf von 0,5209 Stück am 04.10.2021
  - Kaufkurs: 19,195 €
- AEterna Zentaris Inc. Registered Shares
  - Kauf von 16,103 Stück am 04.10.2021
  - Kaufkurs: 0,621 €
- Aurora Cannabis Inc. Registered Shares
  - Kauf von 1,8302 Stück am 04.10.2021
  - Kaufkurs: 6,01 €
- The Green Organic Dutchm.Hlds. Registered Shares
  - Kauf von 78,7401 Stück am 04.10.2021
  - Kaufkurs: 0,127 €
- Pembina Pipeline Corp. Registered Shares
  - Kauf von 0,3582 Stück am 04.10.2021
  - Kaufkurs: 27,91 €
- Sixth Street Speciality Lend. Registered Shares
  - Kauf von 0,5133 Stück am 04.10.2021
  - Kaufkurs: 19,478 €
- Gladstone Capital Corp. Registered Shares
  - Kauf von 1,0148 Stück am 04.10.2021
  - Kaufkurs: 9,854 €
- Gladstone Investment Corp. Registered Shares
  - Kauf von 1,1532 Stück am 04.10.2021
  - Kaufkurs: 12,14 €
- TransAlta Renewables Inc. Registered Shares
  - Kauf von 1,156 Stück am 04.10.2021
  - Kaufkurs: 12,975 €
- Baozun Inc. R.Shs Cl.A(sp.ADRs)/3
  - Kauf von 0,6993 Stück am 04.10.2021
  - Kaufkurs: 14,30 €
- LTC Properties Inc. Registered Shares
  - Kauf von 0,3563 Stück am 04.10.2021
  - Kaufkurs: 28,06 €
- Hewlett Packard Enterprise Co. Registered Shares DL -,01
  - Kauf von 0,7776 Stück am 04.10.2021
  - Kaufkurs: 12,86 €
- Oatly Group AB Namn-Akt.(Spon.ADS)/1
  - Kauf von 0,8264 Stück am 04.10.2021
  - Kaufkurs: 12,10 €
- Main Street Capital Corp. Registered Shares
  - Kauf von 0,2804 Stück am 04.10.2021
  - Kaufkurs: 35,66 €
- National Health Investors Inc. Registered Shares
  - Kauf von 0,2118 Stück am 04.10.2021
  - Kaufkurs: 47,20 €
- PennantPark Floating Rate Cap. Registered Shares
  - Kauf von 0,9786 Stück am 04.10.2021
  - Kaufkurs: 11,24 €
- 2U Inc. Registered Shares
  - Kauf von 0,3424 Stück am 04.10.2021
  - Kaufkurs: 29,20 €
- Prospect Capital Corp. Registered Shares
  - Kauf von 2,2091 Stück am 04.10.2021
  - Kaufkurs: 6,79 €
- V.F. Corp. Registered Shares
  - Kauf von 0,1684 Stück am 04.10.2021
  - Kaufkurs: 59,36 €
- Tupperware Brands Corp. Registered Shares
  - Kauf von 0,5491 Stück am 04.10.2021
  - Kaufkurs: 18,21 €
- Zynga Inc. Registered Shares DL -,01
  - Kauf von 1,5795 Stück am 04.10.2021
  - Kaufkurs: 6,331 €
- Firefinch Ltd.
  - Kauf von 125 Stück am 28.10.2021
  - Kaufkurs: 0,398 €


## Fazit

Im Vergleich zum Vorjahr habe ich 114 € mehr eingenommen, was einen Anstieg von 34% entspricht. Erneut wurde mein finanzielles Ziel erreicht.
