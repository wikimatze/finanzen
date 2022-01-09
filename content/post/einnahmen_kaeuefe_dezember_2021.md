+++
date = "2022-01-09T5:00:00+02:00"
title = "Einnahmen und Einkäufe Dezember 2021"
titleAddition = "finanzmatze"
d3 = true
featuredImage = "/einnahmen_januar_februar_2020.png"
description = "Welche Einnahmen und Einkäufe habe ich von Dezember 2021 getätigt?"
tags = [
    "einnahmen",
    "einkauf",
]
+++

## Einnahmen Dezember 2021

**Dividenden-Aktien:**

- VANG.FTSE A.-WO.HI.DI.YI.U.ETF: **19,31 €**
- VA.FTSE A.W.H.D.Y.UETFDLD: **18,96 €**
- VANGUARD S&P 500 UCITS ETF: **14,66 €**


**Anleihen**:

- VANG.USD TREA.BD UETF DLD: **3,42 €**
- VANGUARD-GL.A.B.U.ETF EOH: **0,13 €**
- VANG.USD EM G.BD UETF DLD: **30,77 €**
- ISHSIV-FALL.A.H.Y.C.BDDLD: **1,88 €**
- ISHSII-JPM DL EM BD DLDIS: **1,55 €**


**Beimischung**:

- VANGUARD FTSE JAPAN UCITS ETF: **10,18 €**
- VANECK GL.REAL EST.UC.ETF: **1,62 €**
- ISHSIV-MSCI USA ESG S.DLD: **9,47 €**


**Welt**:

- VANGUARD FTSE EM.MARKETS U.ETF: **34,97 €**
- VANG.FTSE DEVELOP.WORLD U.ETF: **2,43 €**
- VANGUARDFDS-ESG GLALL CAP ETF: **1,22 €**


**Aktien**:

- 3M Co.: **2,90 €**
- AGNC Investment Corp.: **2,75 €**
- Archer Daniels Midland Co. Registered Shares: **2,44 €**
- Ares Capital Corp.: **9,41 €**
- Armour Residential REIT Inc: **0,98 €**
- BP: **4,52 €**
- Barings BDC Inc.: **5,78 €**
- Barrick Gold Corp: **0,42 €**
- Blackrock Inc. Reg. Shares Class A: **2,71 €**
- Brookfield Infrastructure Corp RegExchSubordVotShsA: **0,58 €**
- Capital Southwest Corp.: **11,45 €**
- Coca-Cola Co., The: **5,52 €**
- Corus Entertainment Inc Reg Shs Class B (NonVtg) oN: **0,85 €**
- Enbridge Inc: **1,50 €**
- Extra Space Storage Inc RegShs of Benef Int: **0,83 €**
- Exxon Mobil Corp. Registered Shares: **3,48 €**
- Gladstone Capital Corp: **2,91 €**
- Gladstone Commercial Corp.: **2,13 €**
- Gladstone Investment Corp: **5,91 €**
- Gladstone Land Corp.: **0,50 €**
- Harley-Davidson Inc.: **1,28 €**
- Intel Corp: **0,63 €**
- Kellogg Co.: **2,66 €**
- Kimco Realty Corp: **1,00 €**
- Kohl's Corp: **0,33 €**
- Kraft Heinz Co., The: **3,16 €**
- LTC Properties Inc: **1,21 €**
- Main Street Capital Corp.: **5,52 €**
- Manulife Financial Corp: **0,35 €**
- Mitsubishi Corp. Registered Shares: **4,12 €**
- New Mountain Finance Corp: **2,57 €**
- Orange SA Actions Port: **0,56 €**
- Orchid Island Capital Inc: **0,99 €**
- Pembina Pipeline Corp: **1,79 €**
- PennantPark Floating Rate Cap: **3,30 €**
- Pfizer Inc.: **3,07 €**
- Prospect Capital Corp: **3,53 €**
- Prudential Financial Inc.: **3,78 €**
- Realty Income Corp.: **1,13 €**
- STAG Industrial Inc.: **1,02 €**
- Shaw Communications Inc: **0,95 €**
- Sixth Street Speciality Lend: **3,14 €**
- Southern Co The: **0,87 €**
- TransAlta Renewables Inc: **1,58 €**
- Unilever PLC Registered Shares LS: **2,51 €**
- VF Corp: **0,05 €**
- Walgreens Boots Alliance Inc Reg Shares: **1,25 €**
- Wells Fargo & Co: **0,65 €**
- Wendy's Co The Reg Shares Class A: **0,31 €**
- WhiteHorse Finance Inc: **1,06 €**


**Sonstiges**:

- Verkauf Eyemaxx: **12,88 €**
- Verkauf Alstria Office Reit: **13,64 €**


**Gesamteinnahmen reine Dividenden**: **272,00 €**

**Gesamteinnahmen plus sonstige**: **297 €**

Insgesamt haben 50 Einzelaktien, 3 Beimschung ETF, 5 Anleihen ETFs, 3 Welt ETFs und 3 Dividenden ETF ausgeschüttet.


## Einnahmen als Balkendiagramm

<div id="d3id" ></div>
<!-- load the d3.js library -->
<script src="https://d3js.org/d3.v4.min.js"></script>

<script>
var models = [
  {
    "model_name":"Jan",
    "field1":128,
    "field2":113
  },
  {
    "model_name":"Feb",
    "field1":50,
    "field2":144
  },
  {
    "model_name":"Mär",
    "field1":150,
    "field2":188
  },
  {
    "model_name":"Apr",
    "field1":191,
    "field2":206
  },
  {
    "model_name":"Mai",
    "field1":140,
    "field2":193
  },
  {
    "model_name":"Jun",
    "field1":293,
    "field2":245
  },
  {
    "model_name":"Jul",
    "field1":171,
    "field2":626,
  },
  {
    "model_name":"Aug",
    "field1":149,
    "field2":176,
  },
  {
    "model_name":"Sep",
    "field1":85,
    "field2":188,
  },
  {
    "model_name":"Okt",
    "field1":336,
    "field2":450,
  },
  {
    "model_name":"Nov",
    "field1":129,
    "field2":153,
  },
  {
    "model_name":"Dez",
    "field1":178,
    "field2":272,
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


**Dividenden-Aktien:**

- iShsV-EM Dividend UCITS ETF Registered Shares USD
  - Kauf von 0,5464 Stück am 02.12.2021
  - Kaufkurs: 18,30 €



**Anleihen:** nichts


**Beimischung**:

- iShsIV-MSCI China UCITS ETF Reg. Shs USD Dis.
  - Kauf von 2,2416 Stück am 02.12.2021
  - Kaufkurs: 4,907 €
- iShsIV-MSCI China UCITS ETF Registered Shares USD (Acc)
  - Kauf von 2,1024 Stück am 02.12.2021
  - Kaufkurs: 5,232 €
- iShares IV-Healthc.Innovation Registered Shares
  - Kauf von 1,2283 Stück am 02.12.2021
  - Kaufkurs: 8,141 €
- iShsIV-Digital Security UC.ETF Reg. Shs USD Dis.
  - Kauf von 1,2805 Stück am 02.12.2021
  - Kaufkurs: 7,809 €
- iShares IV-Electr.Veh.+Dr.Tech Registered Shares USD Acc.
  - Kauf von 1,3795 Stück am 02.12.2021
  - Kaufkurs: 7,249 €



**Einzelaktien:**

- Air France-KLM S.A. Actions Port. EO 1
  - Kauf von 2,6504 Stück am 02.12.2021
  - Kaufkurs: 3,773 €
- TUI AG Namens-Aktien
  - Kauf von 4,1562 Stück am 02.12.2021
  - Kaufkurs: 2,406 €
- Kingfisher PLC Reg. Shares LS -,157142857
  - Kauf von 2,6041 Stück am 02.12.2021
  - Kaufkurs: 3,84 €
- thyssenkrupp AG Inhaber-Aktien
  - Kauf von 1,0273 Stück am 02.12.2021
  - Kaufkurs: 9,734 €
- Borussia Dortmund GmbH&Co.KGaA Inhaber-Aktien
  - Kauf von 2,3629 Stück am 02.12.2021
  - Kaufkurs: 4,232 €
- Deutsche Telekom AG Namens-Aktien
  - Kauf von 0,6374 Stück am 02.12.2021
  - Kaufkurs: 15,688 €
- EasyJet PLC Registered Shares LS-,27285714
  - Kauf von 1,5678 Stück am 02.12.2021
  - Kaufkurs: 6,378 €
- 7C Solarparken AG Inhaber-Aktien
  - Kauf von 2,3752 Stück am 02.12.2021
  - Kaufkurs: 4,21 €
- Sunstone Hotel Invest.Inc.(New Registered Shares
  - Kauf von 1,0695 Stück am 02.12.2021
  - Kaufkurs: 9,35 €
- Nordex SE Inhaber-Aktien
  - Kauf von 0,6578 Stück am 02.12.2021
  - Kaufkurs: 15,20 €
- Eyemaxx Real Estate AG Inhaber-Aktien
  - Kauf von 34,2465 Stück am 02.12.2021
  - Kaufkurs: 0,292 €
- Taylor Wimpey PLC Registered Shares LS -,01
  - Kauf von 5,2137 Stück am 02.12.2021
  - Kaufkurs: 1,918 €
- Rolls Royce Holdings PLC Registered Shares LS 0.20
  - Kauf von 6,7285 Stück am 02.12.2021
  - Kaufkurs: 1,4862 €
- Wendy's Co., The Reg. Shares Class A
  - Kauf von 0,548 Stück am 02.12.2021
  - Kaufkurs: 18,245 €
- Sotherly Hotels Inc. Registered Shares
  - Kauf von 4,9019 Stück am 02.12.2021
  - Kaufkurs: 2,04 €
- Pembina Pipeline Corp. Registered Shares
  - Kauf von 0,3851 Stück am 02.12.2021
  - Kaufkurs: 25,965 €
- TransAlta Renewables Inc. Registered Shares
  - Kauf von 0,7779 Stück am 02.12.2021
  - Kaufkurs: 12,855 €
- Zillow Group Inc. Reg. Cap. Shares C
  - Kauf von 0,2131 Stück am 02.12.2021
  - Kaufkurs: 46,915 €
- Canopy Growth Corp. Registered Shares
  - Kauf von 1,1273 Stück am 02.12.2021
  - Kaufkurs: 8,87 €
- Gladstone Capital Corp. Registered Shares
  - Kauf von 0,9752 Stück am 02.12.2021
  - Kaufkurs: 10,254 €
- Sixth Street Speciality Lend. Registered Shares
  - Kauf von 0,4706 Stück am 02.12.2021
  - Kaufkurs: 21,245 €
- Baozun Inc. R.Shs Cl.A(sp.ADRs)/3
  - Kauf von 0,7968 Stück am 02.12.2021
  - Kaufkurs: 12,55 €
- CoreCivic Inc. Registered Shares
  - Kauf von 1,0976 Stück am 02.12.2021
  - Kaufkurs: 9,11 €
- Karyopharm Therapeutics Inc. Registered Shares
  - Kauf von 1,6761 Stück am 02.12.2021
  - Kaufkurs: 5,966 €
- Intel Corp. Registered Shares DL -,001
  - Kauf von 0,2316 Stück am 02.12.2021
  - Kaufkurs: 43,17 €
- Gladstone Investment Corp. Registered Shares
  - Kauf von 0,9464 Stück am 02.12.2021
  - Kaufkurs: 14,792 €
- LTC Properties Inc. Registered Shares
  - Kauf von 0,3533 Stück am 02.12.2021
  - Kaufkurs: 28,30 €
- Main Street Capital Corp. Registered Shares
  - Kauf von 0,2543 Stück am 02.12.2021
  - Kaufkurs: 39,32 €
- Oatly Group AB Namn-Akt.(Spon.ADS)/1
  - Kauf von 1,3559 Stück am 02.12.2021
  - Kaufkurs: 7,375 €
- PennantPark Floating Rate Cap. Registered Shares
  - Kauf von 0,9581 Stück am 02.12.2021
  - Kaufkurs: 11,48 €
- Prospect Capital Corp. Registered Shares
  - Kauf von 2,004 Stück am 02.12.2021
  - Kaufkurs: 7,485 €
- Tupperware Brands Corp. Registered Shares
  - Kauf von 0,7168 Stück am 02.12.2021
  - Kaufkurs: 13,95 €
- Sumitomo Corp. Registered Shares
  - Kauf von 8 Stück am 02.12.2021
  - Kaufkurs: 12,345 €
- Fresenius SE & Co. KGaA Inhaber-Aktien
  - Kauf von 0,291 Stück am 16.12.2021
  - Kaufkurs: 34,36 €
- Siemens Energy AG Namens-Aktien
  - Kauf von 0,4474 Stück am 16.12.2021
  - Kaufkurs: 22,35 €
- CureVac N.V. Namensaktien
  - Kauf von 0,284 Stück am 16.12.2021
  - Kaufkurs: 35,20 €
- Bayer AG Namens-Aktien
  - Kauf von 0,2128 Stück am 16.12.2021
  - Kaufkurs: 46,985 €
- ENEL S.p.A. Azioni nom. EO 1
  - Kauf von 1,5017 Stück am 16.12.2021
  - Kaufkurs: 6,659 €
- Fresenius Medical Care KGaA Inhaber-Aktien
  - Kauf von 0,1856 Stück am 16.12.2021
  - Kaufkurs: 53,86 €
- CECONOMY AG Inhaber-Stammaktien
  - Kauf von 2,7188 Stück am 16.12.2021
  - Kaufkurs: 3,678 €
- Vodafone Group PLC Registered Shares
  - Kauf von 7,5471 Stück am 16.12.2021
  - Kaufkurs: 1,325 €
- Village Farms Internat. Inc. Registered Shares
  - Kauf von 1,8663 Stück am 16.12.2021
  - Kaufkurs: 5,358 €
- AT & T Inc. Registered Shares DL 1
  - Kauf von 0,485 Stück am 16.12.2021
  - Kaufkurs: 20,615 €
- AEterna Zentaris Inc. Registered Shares
  - Kauf von 26,8096 Stück am 16.12.2021
  - Kaufkurs: 0,373 €
- The Green Organic Dutchm.Hlds. Registered Shares
  - Kauf von 126,5822 Stück am 16.12.2021
  - Kaufkurs: 0,079 €
- National Health Investors Inc. Registered Shares
  - Kauf von 0,2032 Stück am 16.12.2021
  - Kaufkurs: 49,20 €
- GEO Group Inc., The Registered Shares
  - Kauf von 1,5797 Stück am 16.12.2021
  - Kaufkurs: 6,33 €
- Global Net Lease Inc. Registered Shares
  - Kauf von 0,7575 Stück am 16.12.2021
  - Kaufkurs: 13,20 €
- Cardinal Health Inc. Registered Shares
  - Kauf von 0,2281 Stück am 16.12.2021
  - Kaufkurs: 43,84 €
- Tilray Inc. Reg.Shares CL.2 DL-,0001
  - Kauf von 1,4112 Stück am 16.12.2021
  - Kaufkurs: 7,086 €
- 2U Inc. Registered Shares
  - Kauf von 0,554 Stück am 16.12.2021
  - Kaufkurs: 18,05 €
- Zynga Inc. Registered Shares DL -,01
  - Kauf von 1,7522 Stück am 16.12.2021
  - Kaufkurs: 5,707 €
- Omega Healthcare Invest. Inc. Registered Shares
  - Kauf von 0,4032 Stück am 16.12.2021
  - Kaufkurs: 24,80 €
- PayPal Holdings Inc. Reg. Shares DL -,0001
  - Kauf von 0,0585 Stück am 16.12.2021
  - Kaufkurs: 170,88 €


## Fazit

Im Vergleich zum Vorjahr habe ich 94 € mehr eingenommen, was einen Anstieg von 53% entspricht. Erneut wurde mein finanzielles Ziel erreicht.

