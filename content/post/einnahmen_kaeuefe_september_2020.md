+++
date = "2020-10-01T5:00:00+02:00"
title = "Einnahmen und Einkäufe September 2020"
titleAddition = "finanzmatze"
d3 = true
featuredImage = "/einnahmen_januar_februar_2020.png"
description = "Welche Einnahmen und Einkäufe habe ich von September 2020 getätigt?"
tags = [
    "einnahmen",
    "einkauf",
]
+++

Ohne viel Schnick-Schnack auf zu den Einnahmen:


## Einnahmen September 2020


**Anleihen**:

- A143JN Vanguard USD Treasury: **1,46 €**
- A143JQ Vanguard USD EM Government: **12,37 €**


**Aktien**:

- Pennon Group: **9,89 €**
- Unilever: **2,44 €**
- Archer Daniels Midland: **2,26 €**
- Exxon Mobile: **3,27 €**
- AGNC Investment: **2,75 €**
- Whitestone Reit: **0,61 €**
- 3M: **2,76 €**
- Prudential Financial: **3,42 €**
- Kellogg: **2,49 €**
- Main Street Capital: **1,28 €**
- Realty Income: **1,04 €**
- Stag Industrial: **0,98 €**
- BHP Group: **6,13 €**
- Blackrock: **2,27 €**
- Interpipeline: **0,18 €**
- The Southern Company: **0,80 €**
- Harley Davidson: **0,17 €**
- Kraft Heinz: **3,03 €**
- Kimco Realty Corp: **0,56 €**
- Bp: **3,21 €**
- Ares Capital: **7,40 €**
- Gladstone Commercial: **1,59 €**
- Armour Residential: **0,95 €**
- New Mountain Finance: **2,49 €**
- Corus Entertain: **0,80 €**
- LTC Properties: **0,60 €**
- Extra Space Storage: **0,58 €**


**Sonstiges**:

- Verkauf Duke Realty: **2,57 €**
- Verkauf Pfizer: **2,27 €**
- Verkauf Hengan International: **6,64 €**
- Verkauf Siemens Healthineers: **5,34 €**
- Cashback Shoop: **24,15 €**
- PET Pfand: **80 €**

**Gesamteinnahmen reine Dividenden**: **77,78 €**

**Gesamteinnahmen plus sonstige**: **198,75 €**

Insgesamt haben x Einzelaktien, 0 Beimschung ETF, 2 Anleihen ETFs und 0 Dividenden ETF ausgeschüttet.


## Einnahmen als Balkendiagramm


<div id="area"></div>

<style>
	.axis {
	  font: 15px sans-serif;
	}

	.axis path,
	.axis line {
	  fill: none;
	  stroke: #000;
	  shape-rendering: crispEdges;
	}

</style>


<script>
var margin = {top: 30, right: 20, bottom: 70, left: 100},
    width = 600 - margin.left - margin.right,
    height = 400 - margin.top - margin.bottom;

// Parse the date / time
var	parseDate = d3.time.format("%Y-%m").parse;

var x = d3.scale.ordinal().rangeRoundBands([0, width], .05);

var y = d3.scale.linear().range([height, 0]);

var xAxis = d3.svg.axis()
    .scale(x)
    .orient("bottom")
    .tickFormat(d3.time.format("%Y-%m"));

var yAxis = d3.svg.axis()
    .scale(y)
    .orient("left")
    .ticks(10);

var svg = d3.select("#area").append("svg")
    .attr("width", width + margin.left + margin.right)
    .attr("height", height + margin.top + margin.bottom)
  .append("g")
    .attr("transform",
          "translate(" + margin.left + "," + margin.top + ")");

d3.csv("/data/dividenden_reports/september_2020.csv", function(error, data) {

    data.forEach(function(d) {
        d.date = parseDate(d.date);
        d.value = +d.value;
    });

  x.domain(data.map(function(d) { return d.date; }));
  y.domain([0, d3.max(data, function(d) { return d.value; })]);

  svg.append("g")
      .attr("class", "x axis")
      .attr("transform", "translate(0," + height + ")")
      .call(xAxis)
    .selectAll("text")
      .style("text-anchor", "end")
      .attr("dx", "-.8em")
      .attr("dy", ".90em")
      .attr("transform", "rotate(-30)" );

  svg.append("g")
      .attr("class", "y axis")
      .call(yAxis)
    .append("text")
      .attr("transform", "rotate(0)")
      .attr("y", "-2em")
      .attr("dy", "1em")
      .style("text-anchor", "end")
      .text("Dividende (€)");

  svg.selectAll("bar")
      .data(data)
    .enter().append("rect")
      .style("fill", "steelblue")
      .attr("x", function(d) { return x(d.date); })
      .attr("width", x.rangeBand())
      .attr("y", function(d) { return y(d.value); })
      .attr("height", function(d) { return height - y(d.value); });

});
</script>


## Käufe

**Dividenden-Aktien:**

- [iShares Emerging Markets Dividend UCITS](https://www.justetf.com/de/etf-profile.html?isin=IE00B652H904 "iShares Emerging Markets Dividend UCITS"):
  - Kauf von **1,7020 Stück** am 02.09.2020
  - Kaufkurs: 14,69 €
- [SPDR S&P Global Dividend Aristocrats UCITS ETF](https://www.justetf.com/de/etf-profile.html?isin=IE00B9CQXS71 "SPDR S&P Global Dividend Aristocrats UCITS ETF")
  - Kauf von **6.5303 Stück** am 07.09.2020
  - Kaufkurs: 22,97 €


**Anleihen:**

- [iShares J.P. Morgan USD Emerging Markets Bond UCITS](https://www.justetf.com/de/etf-profile.html?isin=IE00B2NPKV68 "iShares J.P. Morgan USD Emerging Markets Bond UCITS")
  - Kauf von 0,2597 Stück am 04.09.2020
  - Kaufkurs: 96,24 €


**Beimischung**:

- [iShares MSCI USA ESG Screened UCITS](https://www.justetf.com/de/etf-profile.html?isin=IE00BFNM3H51 "iShares MSCI USA ESG Screened UCITS")
  - Kauf von 4,4547 Stück am 02.09.2020
  - Kaufkurs: 5,61 €
- [iShares Asia Property Yield UCITS](https://www.justetf.com/de/etf-profile.html?query=IE00B1FZS244&groupField=index&from=search&isin=IE00B1FZS244 "iShares Asia Property Yield UCITS")
  - Kauf von 1,2201 Stück am 02.09.2020
  - Kaufkurs: 20,49 €
- [iShares Fallen Angels High Yield Corporate Bond](https://www.justetf.com/de/etf-profile.html?isin=IE00BYM31M36 "iShares Fallen Angels High Yield Corporate Bond")
  - Kauf von 5,0255 Stück am 02.09.2020
  - Kaufkurs: 4,97 €
- [iShares Global Infrastructure UCITS](https://www.justetf.com/de/etf-profile.html?isin=IE00B1FZS467 "iShares Global Infrastructure UCITS")
  - Kauf von **1,0431 Stück** am 02.09.2020
  - Kaufkurs: 23,96 €
- [Lyxor MSCI Greece UCITS](https://www.justetf.com/de/etf-profile.html?isin=FR0010405431 "Lyxor MSCI Greece UCITS")
  - Kauf von 34,823 Stück am 01.09.2020
  - Kaufkurs: 0,7179 €


**Einzelaktien:**

- [Bank of Ozarks](https://www.finanzen.net/aktien/bank_of_the_ozarks_registered-aktie "Bank of Ozarks")
  - Kauf von 5 Stück am 08.09.2020
  - Kaufkurs: 19,40 €


## Fazit

Insgesamt bin ich sehr zufrieden. In diesen Monat habe ich mich auch finanziell mit [Luis Pazos](https://nurbaresistwahres.de/ "Luis Pazos") neuestes
Buch [Geldanlage in BDC](https://nurbaresistwahres.de/geldanlage-in-bdcs/ "Geldanlage in BDC") fortgebildet. Das
vermittelte Wissen aus dem Buch habe ich auch gleich in ein neues kleines Projekt gepackt, welches ich in diesen Monat
noch präsentieren werde.

Wie liefen eure Monate so? Welche Investitionen habt ihr getätigt? Welche Bücher habt ihr gelesen?

