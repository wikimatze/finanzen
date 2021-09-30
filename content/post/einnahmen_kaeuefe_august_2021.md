+++
date = "2021-09-05T5:00:00+02:00"
title = "Einnahmen und Einkäufe August 2021"
titleAddition = "finanzmatze"
draft = false
d3 = true
featuredImage = "/einnahmen_januar_februar_2020.png"
description = "Welche Einnahmen und Einkäufe habe ich im August 2021 getätigt?"
tags = [
    "einnahmen",
    "einkauf",
]
+++

Kurzes Intro, was ich in den letzten Paar Monaten alles so erledigt habe ...


## Einnahmen August 2021

**Dividenden-Aktien:**

- SPDR S&P GLOB.DIV.ARISTOCR.ETF: **31,70 €**


**Anleihen**:

- iShsIIJPM$ EM Bond UETF: **0,91 €**
- ISHSII-JPM DL EM BD DLDIS: **2,09 €**


**Beimischung**:

- iShsIIAsia Property Yld UETF Registered Shs USD (Dist): **1,17 €**
- ISHSII-ASIA PROP.YLD DLD: **2,84 €**
- iShsIIGlInfrastructUETF Registered Shs USD (Dist): **1,60 €**
- ISHSII-DEV.MKT.PR.Y.DLDIS: **2,62 €**


**Welt**:

- HSBC MSCI WORLD UCITS ETF: **68,54 €**


**Aktien**:

- AGNC Investment Corp.: **2,64 €**
- Arbor Realty Trust Inc.: **7,06 €**
- Armour Residential REIT Inc: **0,94 €**
- Colgate-Palmolive Co.: **1,71 €**
- Gladstone Capital Corp: **2,64 €**
- Gladstone Commercial Corp.: **2,08 €**
- Gladstone Investment Corp: **2,22 €**
- Gladstone Land Corp.: **0,49 €**
- Greencoat UK Wind: **0,09 €**
- Hasbro Inc.: **2,15 €**
- Hercules Capital Inc: **4,19 €**
- Inter Pipeline Ltd: **0,17 €**
- LTC Properties Inc: **0,95 €**
- Main Street Capital Corp.: **1,29 €**
- Main Street Capital Corp: **2,08 €**
- National Grid PLC Reg Shares: **1,05 €**
- Nucor Corp.: **1,80 €**
- Omega Healthcare Invest Inc: **5,26 €**
- Oneok Inc (New): **2,33 €**
- Owl Rock Capital Corp: **0,41 €**
- Patterson Companies Inc.: **3,24 €**
- Pembina Pipeline Corp: **1,59 €**
- Prospect Capital Corp: **3,06 €**
- Realty Income Corp.: **1,04 €**
- STAG Industrial Inc.: **0,99 €**
- Sabra Health Care Reit Inc: **1,69 €**
- Shaw Communications Inc: **0,94 €**
- Tanger FactOutlet Centrs Inc: **2,35 €**
- TransAlta Renewables Inc: **1,40 €**
- Unum Group: **0,93 €**
- Vodafone Group: **1,26 €**
- WRKCo Inc.: **1,52 €**
- Welltower Inc.: **3,06 €**
- Whitestone REIT: **0,60 €**


**Sonstiges**:

- Paradox Interactive: 5 €
- Ashford Hospitality:  94 €


**Gesamteinnahmen reine Dividenden**: **176 €**

**Gesamteinnahmen plus sonstige**: **275 €**

Insgesamt haben 34 Einzelaktien, 1 Welt ETF, 4 Beimschung ETF, 2 Anleihen ETFs und 1 Dividenden ETF ausgeschüttet.


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

- iShsV-EM Dividend UCITS ETF Registered Shares USD
  - Kauf von 0,5515 Stück am 02.08.2021
  - Kaufkurs: 18,13 €
- VANGUARD FTSE EM.MARKETS U.ETF
  - Kauf von 2,1269 Stück am 05.08.2021
  - Kaufkurs: 58,77 €
- VANG.FTSE DEVELOP.WORLD U.ETF
  - Kauf von 1,8962 Stück am 05.08.2021
  - Kaufkurs: 76,47 €
- VANGUARDFDS-ESG GLALL CAP ETF
  - Kauf von 10,791 Stück am 05.08.2021
  - Kaufkurs: 4,6335 €
- iShsIV-iShs MSCI Wld ESG S.ETF Reg. Shares USD Acc.
  - Kauf von 1,8042 Stück am 02.08.2021
  - Kaufkurs: 6,651 €



**Dividenden-Aktien:**



**Anleihen:**

- iShsII-J.P.M.$ EM Bond U.ETF Registered Shares
  - Kauf von 0,1059 Stück am 02.08.2021
  - Kaufkurs: 94,40 €
- iShsIV-Fa.An.Hi.Yi.Co.Bd U.ETF Registered Shares USD
  - Kauf von 1,907 Stück am 02.08.2021
  - Kaufkurs: 5,2436 €
- VANG.USD EM G.BD UETF DLD
  - Kauf von 0,566 Stück am 02.08.2021
  - Kaufkurs: 43,478 €
- VANG.USD TREA.BD UETF DLD
  - Kauf von 1,121 Stück am 02.08.2021
  - Kaufkurs: 21,969 €
- VANGUARD-GL.A.B.U.ETF EOH
  - Kauf von 1,154 Stück am 02.08.2021
  - Kaufkurs: 25,61 €


**Beimischung**:

- Lyxor NYSE Arca Gold BUGS ETF Inh.-An. I
  - Kauf von 1,0107 Stück am 02.08.2021
  - Kaufkurs: 22,755 €
- iShsV-Gold Producers.UCITS ETF Registered Shares USD (Acc)
  - Kauf von 0,7724 Stück am 02.08.2021
  - Kaufkurs: 12,946 €
- iShsIV-MSCI China A UCITS ETF Registered Shares USD (Acc)
  - Kauf von 1,8986 Stück am 02.08.2021
  - Kaufkurs: 5,267 €
- iShs IV-iShs MSCI India UC.ETF Registered Shares
  - Kauf von 1,6575 Stück am 02.08.2021
  - Kaufkurs: 6,033 €
- iShares IV-Healthc.Innovation Registered Shares
  - Kauf von 1,1435 Stück am 02.08.2021
  - Kaufkurs: 8,745 €
- VANGUARD FDS-V.GER.ALL CAP U.E
  - Kauf von 1,7516 Stück am 05.08.2021
  - Kaufkurs: 28,545 €
- iShsIV-Digital Security UC.ETF Reg. Shs USD Dis.
  - Kauf von 1,3345 Stück am 16.08.2021
  - Kaufkurs: 7,493 €


**Einzelaktien:**

- Siemens Energy AG Namens-Aktien
  - Kauf von 1,0734 Stück am 02.08.2021
  - Kaufkurs: 23,29 €
- TUI AG Namens-Aktien
  - Kauf von 3,8649 Stück am 02.08.2021
  - Kaufkurs: 3,881 €
- Iberdrola S.A. Acciones Port. EO -,75
  - Kauf von 1,2776 Stück am 02.08.2021
  - Kaufkurs: 10,175 €
- Greencoat U.K. Wind PLC Registered Shares LS -,01
  - Kauf von 6,0606 Stück am 02.08.2021
  - Kaufkurs: 1,65 €
- CureVac N.V. Namensaktien
  - Kauf von 0,2378 Stück am 02.08.2021
  - Kaufkurs: 42,05 €
- Kingfisher PLC Reg. Shares LS -,157142857
  - Kauf von 2,2727 Stück am 02.08.2021
  - Kaufkurs: 4,40 €
- Orange S.A. Actions Port. EO 4
  - Kauf von 1,0647 Stück am 02.08.2021
  - Kaufkurs: 9,392 €
- Valneva SE Actions au Porteur EO -,15
  - Kauf von 1,0109 Stück am 02.08.2021
  - Kaufkurs: 11,87 €
- National Grid PLC Reg. Shares LS -,12431289
  - Kauf von 1,0091 Stück am 02.08.2021
  - Kaufkurs: 10,90 €
- TeamViewer AG Inhaber-Aktien
  - Kauf von 0,351 Stück am 02.08.2021
  - Kaufkurs: 28,49 €
- CECONOMY AG Inhaber-Stammaktien
  - Kauf von 2,4271 Stück am 02.08.2021
  - Kaufkurs: 4,12 €
- Consus Real Estate AG Namens-Aktien
  - Kauf von 1,6977 Stück am 02.08.2021
  - Kaufkurs: 5,89 €
- Accentro Real Estate AG Inhaber-Aktien
  - Kauf von 1,3333 Stück am 02.08.2021
  - Kaufkurs: 7,50 €
- Borussia Dortmund GmbH&Co.KGaA Inhaber-Aktien
  - Kauf von 1,6339 Stück am 02.08.2021
  - Kaufkurs: 6,12 €
- HolidayCheck Group AG Inhaber-Aktien
  - Kauf von 4,0322 Stück am 02.08.2021
  - Kaufkurs: 2,48 €
- Algonquin Power&Utilities Corp Registered Shares
  - Kauf von 0,7446 Stück am 02.08.2021
  - Kaufkurs: 13,43 €
- thyssenkrupp AG Inhaber-Aktien
  - Kauf von 1,1784 Stück am 02.08.2021
  - Kaufkurs: 8,486 €
- Nordex SE Inhaber-Aktien
  - Kauf von 0,6123 Stück am 02.08.2021
  - Kaufkurs: 16,33 €
- 7C Solarparken AG Inhaber-Aktien
  - Kauf von 2,6212 Stück am 02.08.2021
  - Kaufkurs: 3,815 €
- Vodafone Group PLC Registered Shares
  - Kauf von 7,2098 Stück am 02.08.2021
  - Kaufkurs: 1,387 €
- Rolls Royce Holdings PLC Registered Shares LS 0.20
  - Kauf von 8,1672 Stück am 02.08.2021
  - Kaufkurs: 1,2244 €
- Taylor Wimpey PLC Registered Shares LS -,01
  - Kauf von 5,0479 Stück am 02.08.2021
  - Kaufkurs: 1,981 €
- Sunstone Hotel Invest.Inc.(New Registered Shares
  - Kauf von 1,1167 Stück am 02.08.2021
  - Kaufkurs: 9,85 €
- Pilgrim's Pride Corp. Registered Shares
  - Kauf von 0,5263 Stück am 02.08.2021
  - Kaufkurs: 19,00 €
- WhiteHorse Finance Inc. Registered Shares
  - Kauf von 1,0061 Stück am 02.08.2021
  - Kaufkurs: 12,92 €
- Owl Rock Capital Corp. Registered Shares
  - Kauf von 0,8147 Stück am 02.08.2021
  - Kaufkurs: 12,274 €
- Wendy's Co., The Reg. Shares Class A
  - Kauf von 1,016 Stück am 02.08.2021
  - Kaufkurs: 19,685 €
- Sotherly Hotels Inc. Registered Shares
  - Kauf von 5 Stück am 02.08.2021
  - Kaufkurs: 2,00 €
- Pembina Pipeline Corp. Registered Shares
  - Kauf von 0,3556 Stück am 02.08.2021
  - Kaufkurs: 28,12 €
- The Green Organic Dutchm.Hlds. Registered Shares
  - Kauf von 45,6621 Stück am 02.08.2021
  - Kaufkurs: 0,219 €
- Manulife Financial Corp. Registered Shares
  - Kauf von 0,6097 Stück am 02.08.2021
  - Kaufkurs: 16,40 €
- Aurora Cannabis Inc. Registered Shares
  - Kauf von 1,8618 Stück am 02.08.2021
  - Kaufkurs: 5,908 €
- TransAlta Renewables Inc. Registered Shares
  - Kauf von 0,9721 Stück am 02.08.2021
  - Kaufkurs: 15,43 €
- Village Farms Internat. Inc. Registered Shares
  - Kauf von 1,2045 Stück am 02.08.2021
  - Kaufkurs: 8,302 €
- Baozun Inc. R.Shs Cl.A(sp.ADRs)/3
  - Kauf von 0,4784 Stück am 02.08.2021
  - Kaufkurs: 20,90 €
- Gladstone Investment Corp. Registered Shares
  - Kauf von 1,1488 Stück am 02.08.2021
  - Kaufkurs: 12,186 €
- GEO Group Inc., The Registered Shares
  - Kauf von 1,7021 Stück am 02.08.2021
  - Kaufkurs: 5,875 €
- Gladstone Capital Corp. Registered Shares
  - Kauf von 1,0328 Stück am 02.08.2021
  - Kaufkurs: 9,682 €
- Medical Properties Trust Inc. Registered Shares
  - Kauf von 0,5646 Stück am 02.08.2021
  - Kaufkurs: 17,71 €
- Karyopharm Therapeutics Inc. Registered Shares
  - Kauf von 1,4068 Stück am 02.08.2021
  - Kaufkurs: 7,108 €
- LTC Properties Inc. Registered Shares
  - Kauf von 0,3103 Stück am 02.08.2021
  - Kaufkurs: 32,22 €
- Main Street Capital Corp. Registered Shares
  - Kauf von 0,2847 Stück am 02.08.2021
  - Kaufkurs: 35,115 €
- PennantPark Floating Rate Cap. Registered Shares
  - Kauf von 0,9838 Stück am 02.08.2021
  - Kaufkurs: 11,18 €
- Marks & Spencer Group PLC Registered Shares LS -,01
  - Kauf von 6,1406 Stück am 02.08.2021
  - Kaufkurs: 1,6285 €
- Tilray Inc. Reg.Shares CL.2 DL-,0001
  - Kauf von 1,0317 Stück am 02.08.2021
  - Kaufkurs: 12,60 €
- Tupperware Brands Corp. Registered Shares
  - Kauf von 0,5411 Stück am 02.08.2021
  - Kaufkurs: 18,48 €
- Prospect Capital Corp. Registered Shares
  - Kauf von 2,1676 Stück am 02.08.2021
  - Kaufkurs: 6,92 €
- AT & T Inc. Registered Shares DL 1
  - Kauf von 0,4205 Stück am 16.08.2021
  - Kaufkurs: 23,78 €
- AEterna Zentaris Inc. Registered Shares
  - Kauf von 16,5562 Stück am 16.08.2021
  - Kaufkurs: 0,604 €
- Healthcare Trust of Amer Inc. Reg. Shares Class A
  - Kauf von 0,3968 Stück am 16.08.2021
  - Kaufkurs: 25,20 €
- Valneva SE Actions au Porteur EO -,15
  - Kauf von 1,0685 Stück am 16.08.2021
  - Kaufkurs: 11,23 €
- Air France-KLM S.A. Actions Port. EO 1
  - Kauf von 2,529 Stück am 16.08.2021
  - Kaufkurs: 3,954 €
- Sixth Street Speciality Lend. Registered Shares
  - Kauf von 0,9945 Stück am 16.08.2021
  - Kaufkurs: 20,11 €
- Hewlett Packard Enterprise Co. Registered Shares DL -,01
  - Kauf von 1,028 Stück am 16.08.2021
  - Kaufkurs: 12,645 €
- National Health Investors Inc. Registered Shares
  - Kauf von 0,1869 Stück am 16.08.2021
  - Kaufkurs: 53,50 €
- Modern Plant Based Foods Inc. Registered Shares
  - Kauf von 64 Stück am 18.08.2021
  - Kaufkurs: 1,554 €
- Orchid Island Capital Inc. Registered Shares
  - Kauf von 23 Stück am 17.08.2021
  - Kaufkurs: 4,32 €
- China Mobile Ltd. Registered Shares
  - Kauf von 28 Stück am 25.08.2021
  - Kaufkurs: 5,353 €
- Polymetal International PLC Registered Shares
  - Kauf von 6 Stück am 26.08.2021
  - Kaufkurs: 17,41 €
- Ping An Insurance(Grp)Co.China Registered Shares H YC 1
  - Kauf von 7 Stück am 26.08.2021
  - Kaufkurs: 6,923 €


## Fazit

Im Vergleich zum Vorjahr habe ich 27 € mehr eingenommen, was einen Anstieg von 18% entspricht. Wieder einmal mein
finanzielles Ziel erreicht.

