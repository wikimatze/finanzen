+++
date = "2021-10-01T5:00:00+02:00"
title = "Einnahmen und Einkäufe September 2021"
titleAddition = "finanzmatze"
d3 = true
featuredImage = "/einnahmen_januar_februar_2020.png"
description = "Welche Einnahmen und Einkäufe habe ich im September 2021 getätigt?"
tags = [
    "einnahmen",
    "einkauf",
]
+++


## Einnahmen September 2021

**Dividenden-Aktien:**

- VA.FTSE A.W.H.D.Y.UETFDLD: **18,53 €**


**Anleihen**:

- VANG.USD TREA.BD UETF DLD: **1,42 €**
- ISHSII-JPM DL EM BD DLDIS: **1,44 €**
- VANG.USD TREA.BD UETF DLD: **2,21 €**
- VANG.USD EM G.BD UETF DLD: **34,39 €**
- VANGUARD-GL.A.B.U.ETF EOH: **0,05 €**


**Beimischung**:

- VANECK GL.REAL EST.UC.ETF: **1,54 €**
- VANGUARD FTSE JP.UETF DLD: **0,82 €**
- VANGUARD FDS-V.GER.ALL CAP U.E: **0,62 €**


**Welt**: nix


**Aktien**:

- 3M Co.: **2,78 €**
- AGNC Investment Corp.: **2,64 €**
- Archer Daniels Midland Co. Registered Shares: **2,30 €**
- Ares Capital Corp.: **9,03 €**
- Armour Residential REIT Inc: **0,94 €**
- BHP Group PLC: **27,49 €**
- BP: **4,13 €**
- Barings BDC Inc.: **5,29 €**
- Barrick Gold Corp: **0,38 €**
- Blackrock Inc. Reg. Shares Class A: **2,61 €**
- Capital Southwest Corp.: **6,17 €**
- Corus Entertainment Inc Reg Shs Class B (NonVtg) oN: **0,84 €**
- Enbridge Inc: **1,47 €**
- Extra Space Storage Inc RegShs of Benef Int: **0,80 €**
- Exxon Mobil Corp. Registered Shares: **3,28 €**
- Gladstone Capital Corp: **2,69 €**
- Gladstone Commercial Corp.: **2,07 €**
- Gladstone Investment Corp: **3,21 €**
- Gladstone Land Corp.: **0,96 €**
- HSBC Holdings: **1,51 €**
- Harley-Davidson Inc.: **1,24 €**
- Intel Corp: **0,59 €**
- Inter Pipeline Ltd: **0,17 €**
- Kellogg Co.: **2,56 €**
- Kimco Realty Corp: **0,96 €**
- Kohl's Corp: **0,33 €**
- Kraft Heinz Co., The: **3,04 €**
- LTC Properties Inc: **1,03 €**
- Main Street Capital Corp: **3,38 €**
- Manulife Financial Corp: **0,07 €**
- New Mountain Finance Corp: **2,49 €**
- Orchid Island Capital Inc: **0,95 €**
- Pembina Pipeline Corp: **1,60 €**
- PennantPark Floating Rate Cap: **2,97 €**
- Pennon Group PLC Registered Shares New LS: **4,98 €**
- Pfizer Inc.: **2,92 €**
- Polymetal International: **1,71 €**
- Prospect Capital Corp: **3,15 €**
- Prudential Financial Inc.: **3,61 €**
- Realty Income Corp.: **1,04 €**
- STAG Industrial Inc.: **0,98 €**
- Shaw Communications Inc: **0,93 €**
- Sixth Street Speciality Lend: **0,07 €**
- Southern Co The: **0,83 €**
- TransAlta Renewables Inc: **1,47 €**
- Unilever PLC Registered Shares LS: **2,54 €**
- Walgreens Boots Alliance Inc Reg Shares: **1,19 €**
- Wells Fargo & Co: **0,63 €**
- Wendy's Co The Reg Shares Class A: **0,16 €**


**Sonstiges**:

- easyJet PLC Anrechte: **7,32 €** (trade)


**Gesamteinnahmen reine Dividenden**: **188,94 €**

**Gesamteinnahmen plus sonstige**: **196,26 €**

Insgesamt haben 49 Einzelaktien, 0 Welt ETF, 4 Beimschung ETFs, 7 Anleihen ETFs und 1 Dividenden ETF ausgeschüttet.


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
  - Kauf von 1,7546 Stück am 02.09.2021
  - Kaufkurs: 6,839 €
- VANG.FTSE DEVELOP.WORLD U.ETF
  - Kauf von 1,8495 Stück am 06.09.2021
  - Kaufkurs: 78,40 €
- VANGUARD FTSE EM.MARKETS U.ETF
  - Kauf von 2,062 Stück am 06.09.2021
  - Kaufkurs: 60,62 €
- VANGUARDFDS-ESG GLALL CAP ETF
  - Kauf von 10,4855 Stück am 06.09.2021
  - Kaufkurs: 4,7685 €


**Dividenden-Aktien:**

- iShsV-EM Dividend UCITS ETF Registered Shares USD
  - Kauf von 0,5328 Stück am 02.09.2021
  - Kaufkurs: 18,768 €
- ISHS-ASIA PACIFIC DIV.U.ETF
  - Kauf von 9,5057 Stück am 06.09.2021
  - Kaufkurs: 21,04 €



**Anleihen:**

- VANG.USD TREA.BD UETF DLD
  - Kauf von 1,120 Stück am 02.09.2021
  - Kaufkurs: 21,9879 €
- VANG.USD EM G.BD UETF DLD
  - Kauf von 0,560 Stück am 02.09.2021
  - Kaufkurs: 43,924 €
- VANGUARD-GL.A.B.U.ETF EOH
  - Kauf von 1,157 Stück am 02.09.2021
  - Kaufkurs: 25,537 €
- iShsII-J.P.M.$ EM Bond U.ETF Registered Shares
  - Kauf von 0,105 Stück am 02.09.2021
  - Kaufkurs: 95,174 €
- iShsIV-Fa.An.Hi.Yi.Co.Bd U.ETF Registered Shares USD
  - Kauf von 1,8925 Stück am 02.09.2021
  - Kaufkurs: 5,284 €


**Beimischung**:

- Lyxor NYSE Arca Gold BUGS ETF Inh.-An. I
  - Kauf von 1,0952 Stück am 02.09.2021
  - Kaufkurs: 21,00 €
- iShsV-Gold Producers.UCITS ETF Registered Shares USD (Acc)
  - Kauf von 0,8338 Stück am 02.09.2021
  - Kaufkurs: 11,992 €
- iShsIV-MSCI China UCITS ETF Registered Shares USD (Acc)
  - Kauf von 1,9927 Stück am 02.09.2021
  - Kaufkurs: 5,52 €
- iShsIV-MSCI China A UCITS ETF Registered Shares USD (Acc)
  - Kauf von 1,8878 Stück am 02.09.2021
  - Kaufkurs: 5,297 €
- iShares IV-Healthc.Innovation Registered Shares
  - Kauf von 1,1075 Stück am 02.09.2021
  - Kaufkurs: 9,029 €
- iShsIV-MSCI USA SRI UCITS ETF Registered Shares USD
  - Kauf von 45,9896 Stück am 02.09.2021
  - Kaufkurs: 10,872 €
- iShsIV-Digital Security UC.ETF Reg. Shs USD Dis.
  - Kauf von 1,2763 Stück am 02.09.2021
  - Kaufkurs: 7,835 €
- iShs IV-iShs MSCI India UC.ETF Registered Shares
  - Kauf von 1,4992 Stück am 02.09.2021
  - Kaufkurs: 6,67 €
- VANGUARD FDS-V.GER.ALL CAP U.E
  - Kauf von 1,7331 Stück am 06.09.2021
  - Kaufkurs: 28,85 €
- iShsIV-MSCI China UCITS ETF Reg. Shs USD Dis.
  - Kauf von 2,2471 Stück am 16.09.2021
  - Kaufkurs: 4,895 €


**Einzelaktien:**

- Bayer AG Namens-Aktien
  - Kauf von 0,2097 Stück am 02.09.2021
  - Kaufkurs: 47,68 €
- Iberdrola S.A. Acciones Port. EO -,75
  - Kauf von 1,2241 Stück am 02.09.2021
  - Kaufkurs: 10,62 €
- CureVac N.V. Namensaktien
  - Kauf von 0,1682 Stück am 02.09.2021
  - Kaufkurs: 59,45 €
- Kingfisher PLC Reg. Shares LS -,157142857
  - Kauf von 2,4154 Stück am 02.09.2021
  - Kaufkurs: 4,14 €
- Greencoat U.K. Wind PLC Registered Shares LS -,01
  - Kauf von 6,3291 Stück am 02.09.2021
  - Kaufkurs: 1,58 €
- National Grid PLC Reg. Shares LS -,12431289
  - Kauf von 0,9945 Stück am 02.09.2021
  - Kaufkurs: 11,06 €
- TUI AG Namens-Aktien
  - Kauf von 2,7389 Stück am 02.09.2021
  - Kaufkurs: 3,651 €
- Air France-KLM S.A. Actions Port. EO 1
  - Kauf von 2,5125 Stück am 02.09.2021
  - Kaufkurs: 3,98 €
- Siemens Energy AG Namens-Aktien
  - Kauf von 0,9889 Stück am 02.09.2021
  - Kaufkurs: 25,28 €
- Valneva SE Actions au Porteur EO -,15
  - Kauf von 0,5042 Stück am 02.09.2021
  - Kaufkurs: 19,83 €
- ENEL S.p.A. Azioni nom. EO 1
  - Kauf von 1,2833 Stück am 02.09.2021
  - Kaufkurs: 7,792 €
- Borussia Dortmund GmbH&Co.KGaA Inhaber-Aktien
  - Kauf von 1,5873 Stück am 02.09.2021
  - Kaufkurs: 6,30 €
- EasyJet PLC Registered Shares LS-,27285714
  - Kauf von 1,0588 Stück am 02.09.2021
  - Kaufkurs: 9,444 €
- TeamViewer AG Inhaber-Aktien
  - Kauf von 0,3501 Stück am 02.09.2021
  - Kaufkurs: 28,56 €
- Orange S.A. Actions Port. EO 4
  - Kauf von 1,0399 Stück am 02.09.2021
  - Kaufkurs: 9,616 €
- thyssenkrupp AG Inhaber-Aktien
  - Kauf von 1,0806 Stück am 02.09.2021
  - Kaufkurs: 9,254 €
- HolidayCheck Group AG Inhaber-Aktien
  - Kauf von 4,7619 Stück am 02.09.2021
  - Kaufkurs: 2,10 €
- Nordex SE Inhaber-Aktien
  - Kauf von 0,6119 Stück am 02.09.2021
  - Kaufkurs: 16,34 €
- Accentro Real Estate AG Inhaber-Aktien
  - Kauf von 1,2987 Stück am 02.09.2021
  - Kaufkurs: 7,70 €
- CECONOMY AG Inhaber-Stammaktien
  - Kauf von 2,5342 Stück am 02.09.2021
  - Kaufkurs: 3,946 €
- Sunstone Hotel Invest.Inc.(New Registered Shares
  - Kauf von 1,1111 Stück am 02.09.2021
  - Kaufkurs: 9,90 €
- DWS Group GmbH & Co. KGaA Inhaber-Aktien
  - Kauf von 0,2776 Stück am 02.09.2021
  - Kaufkurs: 36,02 €
- Aurora Solar Technologies Inc. Registered Shares
  - Kauf von 60,2409 Stück am 02.09.2021
  - Kaufkurs: 0,166 €
- 7C Solarparken AG Inhaber-Aktien
  - Kauf von 2,574 Stück am 02.09.2021
  - Kaufkurs: 3,885 €
- Algonquin Power&Utilities Corp Registered Shares
  - Kauf von 0,753 Stück am 02.09.2021
  - Kaufkurs: 13,28 €
- BP PLC Registered Shares
  - Kauf von 2,8818 Stück am 02.09.2021
  - Kaufkurs: 3,47 €
- Pilgrim's Pride Corp. Registered Shares
  - Kauf von 0,4166 Stück am 02.09.2021
  - Kaufkurs: 24,00 €
- Healthcare Trust of Amer Inc. Reg. Shares Class A
  - Kauf von 0,3759 Stück am 02.09.2021
  - Kaufkurs: 26,60 €
- HSBC Holdings PLC Registered Shares
  - Kauf von 2,2396 Stück am 02.09.2021
  - Kaufkurs: 4,465 €
- Vodafone Group PLC Registered Shares
  - Kauf von 6,9589 Stück am 02.09.2021
  - Kaufkurs: 1,437 €
- AEterna Zentaris Inc. Registered Shares
  - Kauf von 15,4798 Stück am 02.09.2021
  - Kaufkurs: 0,646 €
- Manulife Financial Corp. Registered Shares
  - Kauf von 0,6024 Stück am 02.09.2021
  - Kaufkurs: 16,60 €
- Sotherly Hotels Inc. Registered Shares
  - Kauf von 4,8543 Stück am 02.09.2021
  - Kaufkurs: 2,06 €
- Owl Rock Capital Corp. Registered Shares
  - Kauf von 0,7978 Stück am 02.09.2021
  - Kaufkurs: 12,534 €
- Wendy's Co., The Reg. Shares Class A
  - Kauf von 1,0183 Stück am 02.09.2021
  - Kaufkurs: 19,64 €
- Pembina Pipeline Corp. Registered Shares
  - Kauf von 0,3826 Stück am 02.09.2021
  - Kaufkurs: 26,135 €
- Aurora Cannabis Inc. Registered Shares
  - Kauf von 1,7883 Stück am 02.09.2021
  - Kaufkurs: 6,151 €
- AT & T Inc. Registered Shares DL 1
  - Kauf von 0,4356 Stück am 02.09.2021
  - Kaufkurs: 22,955 €
- The Green Organic Dutchm.Hlds. Registered Shares
  - Kauf von 57,1428 Stück am 02.09.2021
  - Kaufkurs: 0,175 €
- CoreCivic Inc. Registered Shares
  - Kauf von 1,2055 Stück am 02.09.2021
  - Kaufkurs: 8,295 €
- Baozun Inc. R.Shs Cl.A(sp.ADRs)/3
  - Kauf von 0,4901 Stück am 02.09.2021
  - Kaufkurs: 20,40 €
- TransAlta Renewables Inc. Registered Shares
  - Kauf von 1,1041 Stück am 02.09.2021
  - Kaufkurs: 13,585 €
- Village Farms Internat. Inc. Registered Shares
  - Kauf von 1,2422 Stück am 02.09.2021
  - Kaufkurs: 8,05 €
- Gladstone Investment Corp. Registered Shares
  - Kauf von 1,0985 Stück am 02.09.2021
  - Kaufkurs: 12,744 €
- Sixth Street Speciality Lend. Registered Shares
  - Kauf von 1,0253 Stück am 02.09.2021
  - Kaufkurs: 19,506 €
- Hewlett Packard Enterprise Co. Registered Shares DL -,01
  - Kauf von 0,9976 Stück am 02.09.2021
  - Kaufkurs: 13,03 €
- GEO Group Inc., The Registered Shares
  - Kauf von 1,4936 Stück am 02.09.2021
  - Kaufkurs: 6,695 €
- Gladstone Capital Corp. Registered Shares
  - Kauf von 1,0062 Stück am 02.09.2021
  - Kaufkurs: 9,938 €
- Main Street Capital Corp. Registered Shares
  - Kauf von 0,2839 Stück am 02.09.2021
  - Kaufkurs: 35,22 €
- LTC Properties Inc. Registered Shares
  - Kauf von 0,3403 Stück am 02.09.2021
  - Kaufkurs: 29,38 €
- Karyopharm Therapeutics Inc. Registered Shares
  - Kauf von 1,9976 Stück am 02.09.2021
  - Kaufkurs: 5,006 €
- Medical Properties Trust Inc. Registered Shares
  - Kauf von 0,5586 Stück am 02.09.2021
  - Kaufkurs: 17,90 €
- National Health Investors Inc. Registered Shares
  - Kauf von 0,1923 Stück am 02.09.2021
  - Kaufkurs: 52,00 €
- Marks & Spencer Group PLC Registered Shares LS -,01
  - Kauf von 4,6168 Stück am 02.09.2021
  - Kaufkurs: 2,166 €
- PennantPark Floating Rate Cap. Registered Shares
  - Kauf von 1,0018 Stück am 02.09.2021
  - Kaufkurs: 10,98 €
- Omega Healthcare Invest. Inc. Registered Shares
  - Kauf von 0,3503 Stück am 02.09.2021
  - Kaufkurs: 28,54 €
- Tilray Inc. Reg.Shares CL.2 DL-,0001
  - Kauf von 1,1144 Stück am 02.09.2021
  - Kaufkurs: 11,665 €
- Zynga Inc. Registered Shares DL -,01
  - Kauf von 1,3338 Stück am 02.09.2021
  - Kaufkurs: 7,497 €
- Prospect Capital Corp. Registered Shares
  - Kauf von 2,2288 Stück am 02.09.2021
  - Kaufkurs: 6,73 €
- 2U Inc. Registered Shares
  - Kauf von 0,3237 Stück am 02.09.2021
  - Kaufkurs: 30,89 €
- China Everbright Envi.Grp.Ltd. Registered Shares
  - Kauf von 165 Stück am 03.09.2021
  - Kaufkurs: 0,604 €
- Hengan Internat. Grp Co. Ltd. Registered Shares HD -,10
  - Kauf von 11 Stück am 10.09.2021
  - Kaufkurs: 4,643 €
- Plant Veda
  - Kauf von 43 Stück am 14.09.2021
  - Kaufkurs: 1,156 €
- Fresenius Medical Care KGaA Inhaber-Aktien
  - Kauf von 0,1658 Stück am 16.09.2021
  - Kaufkurs: 60,28 €
- Fresenius SE & Co. KGaA Inhaber-Aktien
  - Kauf von 0,242 Stück am 16.09.2021
  - Kaufkurs: 41,32 €
- Siemens Energy AG Namens-Aktien
  - Kauf von 0,4426 Stück am 16.09.2021
  - Kaufkurs: 22,59 €
- CureVac N.V. Namensaktien
  - Kauf von 0,2117 Stück am 16.09.2021
  - Kaufkurs: 47,22 €
- LTC Properties Inc. Registered Shares
  - Kauf von 0,3526 Stück am 16.09.2021
  - Kaufkurs: 28,36 €
- Vodafone Group PLC Registered Shares
  - Kauf von 7,2568 Stück am 16.09.2021
  - Kaufkurs: 1,378 €
- Oatly Group AB Namn-Akt.(Spon.ADS)/1
  - Kauf von 0,7142 Stück am 16.09.2021
  - Kaufkurs: 14,00 €
- CoreCivic Inc. Registered Shares
  - Kauf von 1,3123 Stück am 16.09.2021
  - Kaufkurs: 7,62 €
- GEO Group Inc., The Registered Shares
  - Kauf von 1,6597 Stück am 16.09.2021
  - Kaufkurs: 6,025 €
- China Ov.Land & Inv. Ltd. Registered Shares
  - Kauf von 55 Stück am 16.09.2021
  - Kaufkurs: 1,798 €
- Goldman Sachs BDC Inc. Registered Shares
  - Kauf von 6 Stück am 29.09.2021
  - Kaufkurs: 15,984 €
- Vici Properties Inc. Registered Shares
  - Kauf von 7 Stück am 29.09.2021
  - Kaufkurs: 25,06 €


## Fazit

Im Vergleich zum Vorjahr habe ich 103 € mehr eingenommen, was einen Anstieg von 121% entspricht. Wieder einmal mein
finanzielles Ziel erreicht.

