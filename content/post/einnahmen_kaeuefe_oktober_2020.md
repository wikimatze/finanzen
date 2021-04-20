+++
date = "2020-11-08T5:00:00+02:00"
title = "Einnahmen und Einkäufe Oktober 2020"
titleAddition = "finanzmatze"
d3 = true
featuredImage = "/einnahmen_januar_februar_2020.png"
description = "Welche Einnahmen und Einkäufe habe ich von Oktober 2020 getätigt?"
tags = [
    "einnahmen",
    "einkauf",
]
+++

Ohne viel Schnick-Schnack auf zu den Einnahmen:


## Einnahmen Oktober 2020

**Dividenden-Aktien:**

- A1JNZ9 iShares Emerging Markets Dividend: **121,52 €**
- A0F5UH iShares STOXX Global Select Dividend 100 UCITS: **67,64 €**
- A1JX53 VANG.S.P.500 Dividende: **18,27 €**
- A1T8FV Vanguard FTSE All-Word High Dividend: **37.92 €**


**Anleihen**:

- A143JN Vanguard USD Treasury: **1,76 €**
- A0NECU iShares J.P. Morgan USD Emerging Markets: **2,21 €**
- A143JQ Vanguard USD EM Government: **15,58 €**


**Beimischung**:

- A1T8FU Vanguard FTSE Japan: **1,14 €**
- iShares STOXX Europe 600 Automobiles & Parts: **5,40 €**


**Welt**:

- A1JX51 Vanguard FTSE Emerging Markets: **62,89 €**


**Aktien**:

- Ladder Capital: **0,89 €**
- Coca-Cola: **5,20 €**
- Iron Mountain: **5,06 €**
- Hengan International: **6,51 €**
- AGNC Investment: **2,65 €**
- Cardinal Health: **0,60 €**
- Starwood Property Trust: **4,86 €**
- Inter Pipeline: **0,17 €**
- Bank of Ozarks: **0,88 €**
- Cisco: **2,28 €**
- The GEO Group: **7,46 €**
- Whitestone REIT: **0,59 €**
- Annaly Capital: **8,73 €**
- Foot Locker: **0,94 €**
- Gladstone Commercial: **1,66 €**
- New Resdential: **6,60 €**
- Patterson Company: **3,27 €**
- Armour Residential: **0,95 €**
- AT & T: **4,27 €**
- Shaw Communications: **0,12 €**
- Gladstone Investment Cooperation: **0,25 €**
- TransAlta Renewables: **0,14 €**
- LTC Properties: **0,61 €**
- Gladstone Capital Cooperation: **0,27 €**


**Sonstiges**:

- Aktienverkauf Kingfischer PLC: **8,61 €** (DKB auf Dividenden)
- Aktienverkauf Bank of Ozarks: **2,20 €** (DKB auf Dividenden)

**Gesamteinnahmen reine Dividenden**: **336,39 €**

**Gesamteinnahmen plus sonstige**: **347,2 €**

Insgesamt haben 33 Einzelaktien, 2 Beimschung ETFs, 3 Anleihen ETFs und 4 Dividenden ETFs ausgeschüttet.


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

d3.csv("/data/dividenden_reports/oktober_2020.csv", function(error, data) {

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
  - Kauf von **0,9951 Stück** am 02.10.2020
  - Kaufkurs: 14,07 €
- [iShares S&P 500 UCITS](https://www.justetf.com/de/etf-profile.html?isin=IE0031442068 "iShares S&P 500 UCITS")
  - Kauf von **4,8137 Stück** am 02.10.2020
  - Kaufkurs: 28,46 €


**Anleihen:**

- [iShares J.P. Morgan USD Emerging Markets Bond UCITS](https://www.justetf.com/de/etf-profile.html?isin=IE00B2NPKV68 "iShares J.P. Morgan USD Emerging Markets Bond UCITS")
  - Kauf von 0,2660 Stück am 02.10.2020
  - Kaufkurs: 93,96 €


**Beimischung**:

- [iShares MSCI USA ESG Screened UCITS](https://www.justetf.com/de/etf-profile.html?isin=IE00BFNM3H51 "iShares MSCI USA ESG Screened UCITS")
  - Kauf von 2,0491 Stück am 02.10.2020
  - Kaufkurs: 5,37 €
- [iShares Asia Property Yield UCITS](https://www.justetf.com/de/etf-profile.html?query=IE00B1FZS244&groupField=index&from=search&isin=IE00B1FZS244 "iShares Asia Property Yield UCITS")
  - Kauf von 1,0763 Stück am 02.10.2020
  - Kaufkurs: 20,44 €
- [iShares Fallen Angels High Yield Corporate Bond](https://www.justetf.com/de/etf-profile.html?isin=IE00BYM31M36 "iShares Fallen Angels High Yield Corporate Bond")
  - Kauf von 2.0318 Stück am 02.10.2020
  - Kaufkurs: 4,92 €
- [iShares Global Infrastructure UCITS](https://www.justetf.com/de/etf-profile.html?isin=IE00B1FZS467 "iShares Global Infrastructure UCITS")
  - Kauf von 1,0471 Stück am 02.10.2020
  - Kaufkurs: 23,88 €
- [Lyxor MSCI Greece UCITS](https://www.justetf.com/de/etf-profile.html?isin=FR0010405431 "Lyxor MSCI Greece UCITS")
  - Kauf von 36,231 Stück am 01.10.2020
  - Kaufkurs: 0,69 €


**Einzelaktien:**

- [Bayer](https://www.finanzen.net/aktien/bayer-aktie "Bayer")
  - Kauf von 1,1046 Stück am 02.10.2020
  - Kaufkurs: 45,26 €
- [Fresenius](https://www.finanzen.net/aktien/fresenius-aktie "Fresenius")
  - Kauf von 1,0413 Stück am 02.10.2020
  - Kaufkurs: 38,41 €
- [Hamborner REIT](https://www.finanzen.net/aktien/hamborner_reit-aktie "Hamborner REIT")
  - Kauf von 1,1341 Stück am 02.10.2020
  - Kaufkurs: 8,82 €
- [EasyJet](https://www.finanzen.net/aktien/easyjet-aktie "EasyJet")
  - Kauf von 1,1341 Stück am 02.10.2020
  - Kaufkurs: 5,40 €
- [Glaxo Smith Kline](https://www.finanzen.net/aktien/glaxosmithkline-aktie "Glaxo Smith Kline")
  - Kauf von 1,0667 Stück am 02.10.2020
  - Kaufkurs: 15,94 €
- [Alstria](https://www.finanzen.net/aktien/alstria_office_reit-aktie "Alstria")
  - Kauf von 1,0629 Stück am 02.10.2020
  - Kaufkurs: 12,23 €
- [Medical Properties Trust](https://www.finanzen.net/aktien/Medical_Properties_Trust-Aktie "Medical Properties Trust")
  - Kauf von 0,9638 Stück am 02.10.2020
  - Kaufkurs: 15,56 €
- [Prospect Capital](https://www.finanzen.net/aktien/prospect_capital-aktie "Prospect Capital")
  - Kauf von 10,3734 Stück am 02.10.2020
  - Kaufkurs: 4,34 €
- [Pembina Pipeline](https://www.finanzen.net/aktien/pembina_pipeline-aktie "Pembina Pipeline")
  - Kauf von 2,4911 Stück am 02.10.2020
  - Kaufkurs: 18,06 €
- [Shaw Communications](https://www.finanzen.net/aktien/shaw_communications-aktie "Shaw Communications")
  - Kauf von 2,8726 Stück am 02.10.2020
  - Kaufkurs: 15,66 €
- [TransAlta Renewables](https://www.finanzen.net/aktien/transalta_renewables-aktie "TransAlta Renewables")
  - Kauf von 4,1455 Stück am 02.10.2020
  - Kaufkurs: 10,86 €
- [Gladstone Capital Cooperation](https://www.finanzen.net/aktien/gladstone_capital-aktie "Gladstone Capital Cooperation")
  - Kauf von 6,8891 Stück am 02.10.2020
  - Kaufkurs: 6,53 €
- [Gladstone Investment Cooperation](https://www.finanzen.net/aktien/gladstone_investment-aktie "Gladstone Investment Cooperation")
  - Kauf von 5,7721 Stück am 02.10.2020
  - Kaufkurs: 7,80 €
- [PennantPark Floating Rate Capital](https://www.finanzen.net/aktien/pennantpark_floating_rate_capital-aktie "PennantPark Floating Rate Capital")
  - Kauf von 6,0810 Stück am 02.10.2020
  - Kaufkurs: 7,40 €
- [Oneok](https://www.finanzen.net/aktien/oneok-aktie "Oneok")
  - Kauf von 1,0626 Stück am 02.10.2020
  - Kaufkurs: 21,64 €
- [Kohls](https://www.finanzen.net/aktien/kohls-aktie "Kohls")
  - Kauf von 1,0462 Stück am 02.10.2020
  - Kaufkurs: 16,25 €
- [Unum Group](https://www.finanzen.net/aktien/unum_group-aktie "Unum Group")
  - Kauf von 1,0204 Stück am 02.10.2020
  - Kaufkurs: 14,70 €
- [Occidental Petroleum](https://www.finanzen.net/aktien/occidental_petroleum-aktie "Occidental Petroleum")
  - Kauf von 1,2380  Stück am 02.10.2020
  - Kaufkurs: 8,08 €
- [Metro](https://www.finanzen.net/aktien/metro-aktie "Metro")
  - Kauf von 1,1761  Stück am 02.10.2020
  - Kaufkurs: 8,50 €
- [Tilray](https://www.finanzen.net/aktien/tilray-aktie "Tilray")
  - Kauf von 2,4414  Stück am 02.10.2020
  - Kaufkurs: 4,10 €
- [Taylor Wimpey](https://www.finanzen.net/aktien/taylor_wimpey-aktie "Taylor Wimpey")
  - Kauf von 8,1599  Stück am 02.10.2020
  - Kaufkurs: 1,226 €
- [The GEO Group REIT](https://www.finanzen.net/aktien/the_geo_group_1-aktie "The GEO Group REIT")
  - Kauf von 1.0241 Stück am 02.10.2020
  - Kaufkurs: 9,76 €
- [Ares Capital](https://www.finanzen.net/aktien/ares_capital-aktie "Ares Capital")
  - Kauf von 0.9940 Stück am 02.10.2020
  - Kaufkurs: 12,07 €
- [Main Street Capital](https://www.finanzen.net/aktien/main_street_capital-aktie "Main Street Capital")
  - Kauf von 2.0467 Stück am 02.10.2020
  - Kaufkurs: 25,90 €
- [Rolls-Royce](https://www.finanzen.net/aktien/rolls-royce-aktie "Rolls-Royce")
  - Kauf von 4.1823 Stück am 16.10.2020
  - Kaufkurs: 2,39 €
- [Apollo Investment Corperation](https://www.finanzen.net/aktien/apollo_investment_2-aktie "Apollo Investment Corperation")
  - Kauf von 2.2733 Stück am 16.10.2020
  - Kaufkurs: 7,04 €
- [Global Net Lease REIT]( https://www.finanzen.net/aktien/global_net_lease_1-aktie"Global Net Lease REIT")
  - Kauf von 1.0467 Stück am 16.10.2020
  - Kaufkurs: 13,38 €
- [One Liberty Properties](https://www.finanzen.net/aktien/one_liberty_properties-aktie "One Liberty Properties")
  - Kauf von 1.0563 Stück am 16.10.2020
  - Kaufkurs: 14,20 €
- [Carnival](https://www.finanzen.net/aktien/carnival-aktie "Carnival")
  - Kauf von 1.1828 Stück am 16.10.2020
  - Kaufkurs: 10,14 €
- [Gladstone Commercial Corp](https://www.finanzen.net/aktien/gladstone_commercial-aktie "Gladstone Commercial Corp")
  - Kauf von 1.0854 Stück am 16.10.2020
  - Kaufkurs: 14,74 €
- [Wallgreens Boots Alliance](https://www.finanzen.net/aktien/walgreens_boots_alliance-aktie "Wallgreens Boots Alliance")
  - Kauf von 1.0309 Stück am 16.10.2020
  - Kaufkurs: 32,01 €
- [Embracer Group](https://www.finanzen.net/aktien/embracer_group_registered_b-aktie "Embracer Group")
  - Kauf von 8 Stück am 20.10.2020
  - Kaufkurs: 17,44 €
- [Gladstone Land](https://www.finanzen.net/aktien/gladstone_land-aktie "Gladstone Land")
  - Kauf von 17 Stück am 30.10.2020
  - Kaufkurs: 11,96 €


## Fazit

Insgesamt bin ich sehr zufrieden mit dem Ergebnis - es stellt bisher meine höchsten Einnahmen da.

Wie liefen eure Monate so? Welche Investitionen habt ihr getätigt?

