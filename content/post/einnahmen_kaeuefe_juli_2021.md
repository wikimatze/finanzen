+++
date = "2021-08-02T5:00:00+02:00"
title = "Einnahmen und Einkäufe Juli 2021"
titleAddition = "finanzmatze"
d3 = true
featuredImage = "/einnahmen_januar_februar_2020.png"
description = "Welche Einnahmen und Einkäufe habe ich im Juli 2021 getätigt?"
tags = [
    "einnahmen",
    "einkauf",
]
+++

Ich werde Euch einen Überblick geben, welche Dividenden ich eingenommen und welche Posten ich aufgestockt habe.


## Einnahmen  2021

**Dividenden-Aktien:**

- VANGUARD S&P 500 UCITS ETF: **16,33 €**
- ISHSV-EM DIVIDEND UCITS ETF: **156,09 €**
- VANG.FTSE A.-WO.HI.DI.YI.U.ETF: **27,33 €**
- iShs Core S&P  UCETF USDD  USD (Dist)oN: **1,55 €**
- iShsVEM Dividend UCITS ETF  USD: **2,23 €**
- iShSTGlSelDiv UETF DE InhaberAnteile: **0,69 €**
- ISH.ST.GL.SEL.DIV.100 U.ETF DE: **66,11 €**



**Anleihen**:

- iShsIIJPM$ EM Bond UETF: **3,63 €**
- iShsIVFaAnHiYiCoBd UETF  USD: **3,36 €**
- VANG.USD TREA.BD UETF DLD: **1,98 €**
- VANG.USD EM G.BD UETF DLD: **18,32 €**


**Beimischung**:

- VANGUARD FTSE JAPAN UCITS ETF: **6,91 €**
- iShs IViShs MSCI USA ESG ETF Reg Shares USD Dis: **0,80 €**
- iSh.ST.Eu.600 Aut.&Pa.U.: **15,24 €**
- LYX.MSCI GREECE U.E.D: **6,34 €**


**Welt**:

- VANGUARD FTSE EM.MARKETS U.ETF: **39,20 €**
- VANG.FTSE DEVELOP.WORLD U.ETF: **0,75 €**


**Aktien**:

- AGNC Investment Corp.: **2,64 €**
- AT & T Inc: **6,88 €**
- Algonquin Power&Utilities Corp: **0,11 €**
- Annaly Capital Management Inc.: **8,71 €**
- Apollo Investment Corp: **1,81 €**
- Armour Residential REIT Inc: **0,95 €**
- Aroundtown SA Dividende Cash Line: **3,11 €**
- C Solarparken AG InhaberAktien: **2,14 €**
- Cardinal Health Inc: **2,50 €**
- China OvLand & Inv Ltd: **2,45 €**
- Cisco Systems Inc.: **2,33 €**
- Coca-Cola Co., The: **5,22 €**
- Foot Locker Inc.: **1,25 €**
- Gladstone Capital Corp: **2,58 €**
- Gladstone Commercial Corp.: **2,05 €**
- Gladstone Investment Corp: **2,15 €**
- Gladstone Land Corp.: **0,49 €**
- GlaxoSmithKline: **1,84 €**
- Global Net Lease Inc.: **8,52 €**
- Inter Pipeline Ltd: **0,18 €**
- Iron Mountain Inc.: **6,64 €**
- JPMorgan Chase & Co: **0,57 €**
- Kingfisher PLC Reg Shares: **0,75 €**
- LTC Properties Inc: **0,91 €**
- Ladder Capital Corp: **0,87 €**
- MSC Industrial Direct Co. Inc. Reg. Shares Class A: **2,83 €**
- Main Street Capital Corp.: **3,20 €**
- Medical Properties Trust Inc: **1,63 €**
- New Residential Investm. Corp.: **8,79 €**
- Occidental Petroleum Corp: **0,03 €**
- One Liberty Properties Inc: **3,98 €**
- Pembina Pipeline Corp: **1,50 €**
- PennantPark Floating Rate Cap: **5,53 €**
- Pennantpark Investment Corp: **1,50 €**
- Pennon Group PLC Registered Shares New LS: **122,45 €**
- Prospect Capital Corp: **2,94 €**
- Realty Income Corp.: **2,80 €**
- Red Electrica Corporacion S.A. Acciones Port. EO: **10,25 €**
- STAG Industrial Inc.: **0,99 €**
- Shaw Communications Inc: **0,93 €**
- Spirit Realty Capital Inc.: **5,47 €**
- Starwood Property Trust Inc: **4,82 €**
- Store Capital Corporation: **4,27 €**
- Südzucker AG InhaberAktien: **0,63 €**
- TransAlta Renewables Inc: **1,39 €**
- W.P. Carey Inc.: **3,93 €**
- WhiteHorse Finance Inc: **2,00 €**


**Sonstiges**:

- Pennon Group Verkauf: 9,09


**Gesamteinnahmen reine Dividenden**: **0,00 €**

**Gesamteinnahmen plus sonstige**: **0,00 €**

Insgesamt haben x Einzelaktien, x Beimschung ETF, x Anleihen ETFs und x Dividenden ETF ausgeschüttet.


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

- iShsV-Gold Producers.UCITS ETF Registered Shares USD (Acc)
  - Kauf von 1,032 Stück am 02.07.2021
  - Kaufkurs: 12,596 €
- iShares IV-Healthc.Innovation Registered Shares
  - Kauf von 12,2877 Stück am 02.07.2021
  - Kaufkurs: 8,952 €
- iShares IV-Healthc.Innovation Registered Shares
  - Kauf von 1,1547 Stück am 16.07.2021
  - Kaufkurs: 8,66 €
- iShs IV-iShs MSCI India UC.ETF Registered Shares
  - Kauf von 1,6846 Stück am 02.07.2021
  - Kaufkurs: 5,936 €
- iShsIV-MSCI China A UCITS ETF Registered Shares USD (Acc)
  - Kauf von 1,8566 Stück am 02.07.2021
  - Kaufkurs: 5,386 €
- iShsII-Gl.Infrastruct.U.ETF Registered Shs USD (Dist)
  - Kauf von 0,3693 Stück am 02.07.2021
  - Kaufkurs: 27,075 €
- Lyxor NYSE Arca Gold BUGS ETF Inhaber-Anteile I
  - Kauf von 1,0076 Stück am 16.07.2021
  - Kaufkurs: 22,825 €
- VANGUARD FDS-V.GER.ALL CAP U.E
  - Kauf von 1,7646 Stück am 05.07.2021
  - Kaufkurs: 28,335 €


**Dividenden-Aktien:**

- iShsV-EM Dividend UCITS ETF Registered Shares USD
  - Kauf von 0,5509 Stück am 02.07.2021
  - Kaufkurs: 18,152 €


**Anleihen:**

- iShsIV-Fa.An.Hi.Yi.Co.Bd U.ETF Registered Shares USD
  - Kauf von 1,9109 Stück am 02.07.2021
  - Kaufkurs: 5,233 €
- iShsII-J.P.M.$ EM Bond U.ETF Registered Shares
  - Kauf von 0,1059 Stück am 02.07.2021
  - Kaufkurs: 94,38 €
- VANG.USD EM G.BD UETF DLD
  - Kauf von 0,567 Stück am 01.07.2021
  - Kaufkurs: 43,3739 €
- VANG.USD TREA.BD UETF DLD
  - Kauf von 1,135 Stück am 01.07.2021
  - Kaufkurs: 21,699 €


**Beimischung**:

- iShsV-Gold Producers.UCITS ETF Registered Shares USD (Acc)
  - Kauf von 1,032 Stück am 02.07.2021
  - Kaufkurs: 12,596 €
- iShares IV-Healthc.Innovation Registered Shares
  - Kauf von 12,2877 Stück am 02.07.2021
  - Kaufkurs: 8,952 €
- iShares IV-Healthc.Innovation Registered Shares
  - Kauf von 1,1547 Stück am 16.07.2021
  - Kaufkurs: 8,66 €
- iShs IV-iShs MSCI India UC.ETF Registered Shares
  - Kauf von 1,6846 Stück am 02.07.2021
  - Kaufkurs: 5,936 €
- iShsIV-MSCI China A UCITS ETF Registered Shares USD (Acc)
  - Kauf von 1,8566 Stück am 02.07.2021
  - Kaufkurs: 5,386 €
- iShsII-Gl.Infrastruct.U.ETF Registered Shs USD (Dist)
  - Kauf von 0,3693 Stück am 02.07.2021
  - Kaufkurs: 27,075 €
- Lyxor NYSE Arca Gold BUGS ETF Inhaber-Anteile I
  - Kauf von 1,0076 Stück am 16.07.2021
  - Kaufkurs: 22,825 €
- VANGUARD FDS-V.GER.ALL CAP U.E
  - Kauf von 1,7646 Stück am 05.07.2021
  - Kaufkurs: 28,335 €


**Einzelaktien:**

- Air France-KLM S.A. Actions Port. EO 1
  - Kauf von 2,4248 Stück am 02.07.2021
  - Kaufkurs: 4,124 €
- National Grid PLC Reg. Shares LS -,12431289
  - Kauf von 1,0133 Stück am 02.07.2021
  - Kaufkurs: 10,855 €
- HAMBORNER REIT AG Namens-Aktien
  - Kauf von 1,1016 Stück am 02.07.2021
  - Kaufkurs: 9,077 €
- Consus Real Estate AG Namens-Aktien
  - Kauf von 1,5408 Stück am 02.07.2021
  - Kaufkurs: 6,49 €
- EasyJet PLC Registered Shares LS-,27285714
  - Kauf von 1,0087 Stück am 02.07.2021
  - Kaufkurs: 10,905 €
- Kingfisher PLC Reg. Shares LS -,157142857
  - Kauf von 2,3148 Stück am 02.07.2021
  - Kaufkurs: 4,32 €
- CureVac N.V. Namensaktien
  - Kauf von 0,1813 Stück am 02.07.2021
  - Kaufkurs: 55,13 €
- Deutsche Telekom AG Namens-Aktien
  - Kauf von 0,5597 Stück am 02.07.2021
  - Kaufkurs: 17,864 €
- Accentro Real Estate AG Inhaber-Aktien
  - Kauf von 1,2658 Stück am 02.07.2021
  - Kaufkurs: 7,90 €
- 7C Solarparken AG Inhaber-Aktien
  - Kauf von 2,5062 Stück am 02.07.2021
  - Kaufkurs: 3,99 €
- freenet AG Namens-Aktien
  - Kauf von 0,5036 Stück am 02.07.2021
  - Kaufkurs: 19,855 €
- Nordex SE Inhaber-Aktien
  - Kauf von 1,15 Stück am 02.07.2021
  - Kaufkurs: 17,39 €
- Taylor Wimpey PLC Registered Shares LS -,01
  - Kauf von 5,0735 Stück am 02.07.2021
  - Kaufkurs: 1,971 €
- Algonquin Power&Utilities Corp Registered Shares
  - Kauf von 0,7785 Stück am 02.07.2021
  - Kaufkurs: 12,845 €
- CECONOMY AG Inhaber-Stammaktien
  - Kauf von 2,382 Stück am 02.07.2021
  - Kaufkurs: 4,198 €
- thyssenkrupp AG Inhaber-Aktien
  - Kauf von 1,1027 Stück am 02.07.2021
  - Kaufkurs: 9,068 €
- E.ON SE Namens-Aktien
  - Kauf von 1,0155 Stück am 02.07.2021
  - Kaufkurs: 9,847 €
- Sunstone Hotel Invest.Inc.(New Registered Shares
  - Kauf von 1,028 Stück am 02.07.2021
  - Kaufkurs: 10,70 €
- WhiteHorse Finance Inc. Registered Shares
  - Kauf von 1,0236 Stück am 02.07.2021
  - Kaufkurs: 12,70 €
- Sotherly Hotels Inc. Registered Shares
  - Kauf von 3,8461 Stück am 02.07.2021
  - Kaufkurs: 2,60 €
- Owl Rock Capital Corp. Registered Shares
  - Kauf von 1,0581 Stück am 02.07.2021
  - Kaufkurs: 12,286 €
- Pembina Pipeline Corp. Registered Shares
  - Kauf von 0,9645 Stück am 02.07.2021
  - Kaufkurs: 26,955 €
- AEterna Zentaris Inc. Registered Shares
  - Kauf von 13,2802 Stück am 02.07.2021
  - Kaufkurs: 0,753 €
- Rolls Royce Holdings PLC Registered Shares LS 0.20
  - Kauf von 8,2345 Stück am 02.07.2021
  - Kaufkurs: 1,2144 €
- Vodafone Group PLC Registered Shares
  - Kauf von 6,9348 Stück am 02.07.2021
  - Kaufkurs: 1,442 €
- Aurora Cannabis Inc. Registered Shares
  - Kauf von 1,4664 Stück am 02.07.2021
  - Kaufkurs: 7,501 €
- The Green Organic Dutchm.Hlds. Registered Shares
  - Kauf von 40,3225 Stück am 02.07.2021
  - Kaufkurs: 0,248 €
- LTC Properties Inc. Registered Shares
  - Kauf von 0,3059 Stück am 02.07.2021
  - Kaufkurs: 32,68 €
- Karyopharm Therapeutics Inc. Registered Shares
  - Kauf von 1,1317 Stück am 02.07.2021
  - Kaufkurs: 8,836 €
- Marks & Spencer Group PLC Registered Shares LS -,25
  - Kauf von 11,1451 Stück am 02.07.2021
  - Kaufkurs: 1,7945 €
- Main Street Capital Corp. Registered Shares
  - Kauf von 0,9946 Stück am 02.07.2021
  - Kaufkurs: 35,19 €
- Gladstone Investment Corp. Registered Shares
  - Kauf von 3,2462 Stück am 02.07.2021
  - Kaufkurs: 12,322 €
- Medical Properties Trust Inc. Registered Shares
  - Kauf von 0,5745 Stück am 02.07.2021
  - Kaufkurs: 17,405 €
- Tupperware Brands Corp. Registered Shares
  - Kauf von 1,0579 Stück am 02.07.2021
  - Kaufkurs: 19,85 €
- Prospect Capital Corp. Registered Shares
  - Kauf von 2,9515 Stück am 02.07.2021
  - Kaufkurs: 7,115 €
- 2U Inc. Registered Shares
  - Kauf von 0,2827 Stück am 02.07.2021
  - Kaufkurs: 35,37 €
- Omega Healthcare Invest. Inc. Registered Shares
  - Kauf von 0,3232 Stück am 02.07.2021
  - Kaufkurs: 30,94 €
- PennantPark Floating Rate Cap. Registered Shares
  - Kauf von 3,9927 Stück am 02.07.2021
  - Kaufkurs: 11,02 €
- Zuora Inc. Reg. Sh. Class A
  - Kauf von 0,8825 Stück am 02.07.2021
  - Kaufkurs: 14,73 €
- Baozun Inc. R.Shs Cl.A(sp.ADRs)/3
  - Kauf von 0,3412 Stück am 02.07.2021
  - Kaufkurs: 29,30 €
- Village Farms Internat. Inc. Registered Shares
  - Kauf von 1,0924 Stück am 02.07.2021
  - Kaufkurs: 9,154 €
- Gladstone Capital Corp. Registered Shares
  - Kauf von 5,7406 Stück am 02.07.2021
  - Kaufkurs: 9,755 €
- AT & T Inc. Registered Shares DL 1
  - Kauf von 0,4058 Stück am 02.07.2021
  - Kaufkurs: 24,64 €
- TransAlta Renewables Inc. Registered Shares
  - Kauf von 3,826 Stück am 02.07.2021
  - Kaufkurs: 14,375 €
- CoreCivic Inc. Registered Shares
  - Kauf von 1,1337 Stück am 02.07.2021
  - Kaufkurs: 8,82 €
- GEO Group Inc., The Registered Shares
  - Kauf von 1,6611 Stück am 02.07.2021
  - Kaufkurs: 6,02 €
- TeamViewer AG Inhaber-Aktien
  - Kauf von 0,34 Stück am 16.07.2021
  - Kaufkurs: 29,41 €
- Valneva SE Actions au Porteur EO -,15
  - Kauf von 1,107 Stück am 16.07.2021
  - Kaufkurs: 10,84 €
- Siemens Energy AG Namens-Aktien
  - Kauf von 1,0897 Stück am 16.07.2021
  - Kaufkurs: 22,94 €
- Orange S.A. Actions Port. EO 4
  - Kauf von 1,0406 Stück am 16.07.2021
  - Kaufkurs: 9,609 €
- Sixth Street Speciality Lend. Registered Shares
  - Kauf von 5 Stück am 15.07.2021
  - Kaufkurs: 19,968 €
- TUI AG Namens-Aktien
  - Kauf von 3,9525 Stück am 16.07.2021
  - Kaufkurs: 3,795 €
- Siemens Energy AG Namens-Aktien
  - Kauf von 1,0897 Stück am 16.07.2021
  - Kaufkurs: 22,94 €
- HolidayCheck Group AG Inhaber-Aktien
  - Kauf von 3,9215 Stück am 16.07.2021
  - Kaufkurs: 2,55 €
- Pilgrim's Pride Corp. Registered Shares
  - Kauf von 0,5376 Stück am 16.07.2021
  - Kaufkurs: 18,60 €
- AEterna Zentaris Inc. Registered Shares
  - Kauf von 15,552 Stück am 16.07.2021
  - Kaufkurs: 0,643 €
- WhiteHorse Finance Inc. Registered Shares
  - Kauf von 1,0003 Stück am 16.07.2021
  - Kaufkurs: 12,996 €
- Karyopharm Therapeutics Inc. Registered Shares
  - Kauf von 1,2781 Stück am 16.07.2021
  - Kaufkurs: 7,824 €
- LTC Properties Inc. Registered Shares
  - Kauf von 0,2992 Stück am 16.07.2021
  - Kaufkurs: 33,42 €
- Owl Rock Capital Corp. Registered Shares
  - Kauf von 0,8108 Stück am 16.07.2021
  - Kaufkurs: 12,332 €
- Wendy's Co., The Reg. Shares Class A
  - Kauf von 1,0534 Stück am 16.07.2021
  - Kaufkurs: 18,985 €
- Marks & Spencer Group PLC Registered Shares LS -,01
  - Kauf von 6,0698 Stück am 16.07.2021
  - Kaufkurs: 1,6475 €
- Tilray Inc. Reg.Shares CL.2 DL-,0001
  - Kauf von 1,0938 Stück am 16.07.2021
  - Kaufkurs: 11,885 €
- Razer
  - Kauf von 798 Stück am 26.07.2021
  - Kaufkurs: 0.188 €


## Fazit

Im Vergleich zum Vorjahr habe ich 455 € mehr eingenommen, was einen Abstieg von 266% entspricht. Dies liegt unter anderen
darin, dass meine Dividenden-ETFs A0F5UH, A1JNZ9 und A1T8FV nun ausgeschüttet haben.

Außerdemn hat Pennon Group mit **122 €** eine Sonderdividende ausgeschüttet. Die Gründe dafür hat [Ben vom divantis blog](https://www.divantis.de/das-ist-der-wasser-knaller/ "Ben vom divantis blog") beschrieben.

