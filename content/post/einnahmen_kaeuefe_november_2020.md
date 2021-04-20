+++
date = "2020-12-10T5:00:00+02:00"
title = "Einnahmen und Einkäufe November 2020"
titleAddition = "finanzmatze"
d3 = true
featuredImage = "/einnahmen_januar_februar_2020.png"
description = "Welche Einnahmen und Einkäufe habe ich von November 2020 getätigt?"
tags = [
    "einnahmen",
    "einkauf",
]
+++

Ohne viel Schnick-Schnack auf zu den Einnahmen:


## Einnahmen November 2020

**Dividenden-Aktien:**

- A1T8GD SPDR S&P Global Dividend Aristocrats: **18,73 €**


**Anleihen**:

- A143JN Vanguard USD Treasury: **1,29 €**
- A0NECU iShares J.P. Morgan USD Emerging Markets: **2,02 €**
- A143JQ Vanguard USD EM Government: **12,25 €**


**Beimischung**:

- A0LEQL iShares Asia Property Yield: **2,42 €**
- A0LEW9 iShares Global Infrastructure: **0,30 €**
- A0LEW8 iShares Developed Markets Property Yield: **1,57 €**


**Aktien**:

- One Liberty Properties: **3,63 €**
- Hamborner REIT: **7,28 €**
- Pembina Pipeline: **0,23 €**
- Oneok: **0,63 €**
- Main Street Capital: **1,55 €**
- Omega Healthcare: **2,53 €**
- Hercules Capital: **3,64 €**
- Inter Pipeline: **0,18 €**
- Prospect Capital: **0,39 €**
- Unum Group: **0,18 €**
- AGNC Investment: **2,63 €**
- Realty Income: **1,04 €**
- Colgate-Palmolive: **1,66 €**
- Hasbro: **2,14 €**
- Stag Industrial: **0,99 €**
- Welltower: **3,06 €**
- Whitestone REIT: **0,60 €**
- Shaw Communications: **0,25 €**
- Armour Resdential REIT: **0,94 €**
- Unilever: **2,44 €**
- MSC Industrial Direct: **2,81 €**
- WestRock: **1,25 €**
- Arbor Realty Trust: **6,35 €**
- Gladstone Commercial: **1,71 €**
- Gladstone Land: **0,48 €**
- LTC Properties: **0,60 €**
- Gladstone Capital: **0,54 €**
- Gladstone Investment: **0,52 €**
- TransAlta Renewables: **0,27 €**
- Sabra Healthcare: **1,70 €**
- Duke Realty: **1,75 €**


**Sonstiges**:

- Aktienverkauf Kingfischer PLC: **8,61 €**
- Aktienverkauf Bank of Ozarks: **2,20 €**
- Aktienverkauf Fitbit: **2,49 €**
- Aktienverkauf Portman Ridge: **1,47 €**
- Aktienverkauf von Bezugsrechten Rolls Royce: **3,51 €**

**Gesamteinnahmen reine Dividenden**: **148,21 €**

**Gesamteinnahmen plus sonstige**: **166,48 €**

Insgesamt haben 31 Einzelaktien, 3 Beimschung ETFs, 0 Welt ETF, 3 Anleihen ETFs und 1 Dividenden ETFs ausgeschüttet.


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

d3.csv("/data/dividenden_reports/november_2020.csv", function(error, data) {

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
  - Kauf von 0.9992 Stück am 02.11.2020
  - Kaufkurs: 14,01 €
- [iShares S&P 500 UCITS](https://www.justetf.com/de/etf-profile.html?isin=IE0031442068 "iShares S&P 500 UCITS")
  - Kauf von 4.8437 Stück am 02.11.2020
  - Kaufkurs: 28,28 €


**Anleihen:**

- [iShares J.P. Morgan USD Emerging Markets Bond UCITS](https://www.justetf.com/de/etf-profile.html?isin=IE00B2NPKV68 "iShares J.P. Morgan USD Emerging Markets Bond UCITS")
  - Kauf von 0.2653 Stück am 02.11.2020
  - Kaufkurs: 94,22 €
- [Vanguard USD EM Government Bond UCITS](https://www.justetf.com/de/etf-profile.html?isin=IE00BZ163L38 "Vanguard USD EM Government Bond UCITS")
  - Kauf von 1.022 Stück am 02.11.2020
  - Kaufkurs: 44,02 €


**Beimischung**:

- [iShares MSCI USA ESG Screened UCITS](https://www.justetf.com/de/etf-profile.html?isin=IE00BFNM3H51 "iShares MSCI USA ESG Screened UCITS")
  - Kauf von 2.0564 Stück am 02.11.2020
  - Kaufkurs: 5,35 €
- [iShares Asia Property Yield UCITS](https://www.justetf.com/de/etf-profile.html?query=IE00B1FZS244&groupField=index&from=search&isin=IE00B1FZS244 "iShares Asia Property Yield UCITS")
  - Kauf von 0.5048 Stück am 02.11.2020
  - Kaufkurs: 19,81 €
- [iShares Fallen Angels High Yield Corporate Bond](https://www.justetf.com/de/etf-profile.html?isin=IE00BYM31M36 "iShares Fallen Angels High Yield Corporate Bond")
  - Kauf von 2.0012 Stück am 02.11.2020
  - Kaufkurs: 5,00 €
- [iShares Global Infrastructure UCITS](https://www.justetf.com/de/etf-profile.html?isin=IE00B1FZS467 "iShares Global Infrastructure UCITS")
  - Kauf von 1.0395 Stück am 02.11.2020
  - Kaufkurs: 24,05 €
- [Lyxor MSCI Greece UCITS](https://www.justetf.com/de/etf-profile.html?isin=FR0010405431 "Lyxor MSCI Greece UCITS")
  - Kauf von 39.891 Stück am 02.11.2020
  - Kaufkurs: 0,62 €
- [Xtrackers MSCI Brazil UCITS](https://www.justetf.com/de/etf-profile.html?isin=LU0292109344 "Xtrackers MSCI Brazil UCITS")
  - Kauf von 1.1335 Stück am 02.11.2020
  - Kaufkurs: 28,23 €


**Welt**:

- [HSBC MSCI World UCITS](https://www.justetf.com/de/etf-profile.html?isin=IE00B4X9L533 "HSBC MSCI World UCITS")
  - Kauf von 7.1925 Stück am 02.11.2020
  - Kaufkurs: 20,855 €


**Einzelaktien:**

- [Siemens Healthineers](https://www.finanzen.net/aktien/siemens_healthineers-aktie "Siemens Healthineers")
  - Kauf von 5 Stück am 02.11.2020
  - Kaufkurs: 36,96 €
- [Bayer](https://www.finanzen.net/aktien/bayer-aktie "Bayer")
  - Kauf von 1.0099 Stück am 02.11.2020
  - Kaufkurs: 40,60 €
- [Fresenius](https://www.finanzen.net/aktien/fresenius-aktie "Fresenius")
  - Kauf von 1.0357 Stück am 02.11.2020
  - Kaufkurs: 31,86 €
- [Hamborner REIT](https://www.finanzen.net/aktien/hamborner_reit-aktie "Hamborner REIT")
  - Kauf von 1.2214 Stück am 02.11.2020
  - Kaufkurs: 8,19 €
- [EasyJet](https://www.finanzen.net/aktien/easyjet-aktie "EasyJet")
  - Kauf von 1.9318 Stück am 02.11.2020
  - Kaufkurs: 5,69 €
- [Glaxo Smith Kline](https://www.finanzen.net/aktien/glaxosmithkline-aktie "Glaxo Smith Kline")
  - Kauf von 1.0222 Stück am 02.11.2020
  - Kaufkurs: 14,67 €
- [Alstria](https://www.finanzen.net/aktien/alstria_office_reit-aktie "Alstria")
  - Kauf von 0.9954 Stück am 02.11.2020
  - Kaufkurs: 11,05 €
- [Medical Properties Trust](https://www.finanzen.net/aktien/Medical_Properties_Trust-Aktie "Medical Properties Trust")
  - Kauf von 0.9518 Stück am 02.11.2020
  - Kaufkurs: 15,76 €
- [Prospect Capital](https://www.finanzen.net/aktien/prospect_capital-aktie "Prospect Capital")
  - Kauf von 10.3950 Stück am 02.11.2020
  - Kaufkurs: 4,33 €
- [Pembina Pipeline](https://www.finanzen.net/aktien/pembina_pipeline-aktie "Pembina Pipeline")
  - Kauf von 2.5044 Stück am 02.11.2020
  - Kaufkurs: 17,97 €
- [Shaw Communications](https://www.finanzen.net/aktien/shaw_communications-aktie "Shaw Communications")
  - Kauf von 3.1667 Stück am 02.11.2020
  - Kaufkurs: 14,21 €
- [TransAlta Renewables](https://www.finanzen.net/aktien/transalta_renewables-aktie "TransAlta Renewables")
  - Kauf von 4.0946 Stück am 02.11.2020
  - Kaufkurs: 10,99 €
- [Gladstone Capital Cooperation](https://www.finanzen.net/aktien/gladstone_capital-aktie "Gladstone Capital Cooperation")
  - Kauf von 7.0093 Stück am 02.11.2020
  - Kaufkurs: 6,42 €
- [Gladstone Investment Cooperation](https://www.finanzen.net/aktien/gladstone_investment-aktie "Gladstone Investment Cooperation")
  - Kauf von 6.0402 Stück am 02.11.2020
  - Kaufkurs: 7,45 €
- [PennantPark Floating Rate Capital](https://www.finanzen.net/aktien/pennantpark_floating_rate_capital-aktie "PennantPark Floating Rate Capital")
  - Kauf von 6.3380 Stück am 02.11.2020
  - Kaufkurs: 7,10 €
- [Oneok](https://www.finanzen.net/aktien/oneok-aktie "Oneok")
  - Kauf von 0.9283 Stück am 02.11.2020
  - Kaufkurs: 24,78 €
- [Kohls](https://www.finanzen.net/aktien/kohls-aktie "Kohls")
  - Kauf von 1.0536 Stück am 02.11.2020
  - Kaufkurs: 18,03 €
- [Unum Group](https://www.finanzen.net/aktien/unum_group-aktie "Unum Group")
  - Kauf von 0.9740 Stück am 02.11.2020
  - Kaufkurs: 15,40 €
- [Occidental Petroleum](https://www.finanzen.net/aktien/occidental_petroleum-aktie "Occidental Petroleum")
  - Kauf von 1.2331 Stück am 02.11.2020
  - Kaufkurs: 8,11 €
- [Metro](https://www.finanzen.net/aktien/metro-aktie "Metro")
  - Kauf von 1.1831 Stück am 02.11.2020
  - Kaufkurs: 8,45 €
- [Tilray](https://www.finanzen.net/aktien/tilray-aktie "Tilray")
  - Kauf von 1.8698 Stück am 02.11.2020
  - Kaufkurs: 5,35 €
- [Taylor Wimpey](https://www.finanzen.net/aktien/taylor_wimpey-aktie "Taylor Wimpey")
  - Kauf von 8.2474 Stück am 02.11.2020
  - Kaufkurs: 1,212 €
- [The GEO Group REIT](https://www.finanzen.net/aktien/the_geo_group_1-aktie "The GEO Group REIT")
  - Kauf von 1.2987 Stück am 02.11.2020
  - Kaufkurs: 7,70 €
- [Ares Capital](https://www.finanzen.net/aktien/ares_capital-aktie "Ares Capital")
  - Kauf von 0.9800 Stück am 02.11.2020
  - Kaufkurs: 12,24 €
- [Main Street Capital](https://www.finanzen.net/aktien/main_street_capital-aktie "Main Street Capital")
  - Kauf von 2.1716 Stück am 02.11.2020
  - Kaufkurs: 24,41 €
- [Rolls-Royce](https://www.finanzen.net/aktien/rolls-royce-aktie "Rolls-Royce")
  - Kauf von 12.3762 Stück am 02.11.2020
  - Kaufkurs: 0,808 €
- [Apollo Investment Corperation](https://www.finanzen.net/aktien/apollo_investment_2-aktie "Apollo Investment Corperation")
  - Kauf von 1.4867 Stück am 02.11.2020
  - Kaufkurs: 6,73 €
- [Global Net Lease REIT]( https://www.finanzen.net/aktien/global_net_lease_1-aktie"Global Net Lease REIT")
  - Kauf von 1.0408 Stück am 02.11.2020
  - Kaufkurs: 12,49 €
- [One Liberty Properties](https://www.finanzen.net/aktien/one_liberty_properties-aktie "One Liberty Properties")
  - Kauf von 1.0294 Stück am 02.11.2020
  - Kaufkurs: 13,60 €
- [Carnival](https://www.finanzen.net/aktien/carnival-aktie "Carnival")
  - Kauf von 0.9784 Stück am 02.11.2020
  - Kaufkurs: 10,22 €
- [Gladstone Commercial Corp](https://www.finanzen.net/aktien/gladstone_commercial-aktie "Gladstone Commercial Corp")
  - Kauf von 0.9769 Stück am 02.11.2020
  - Kaufkurs: 14,33 €
- [Wallgreens Boots Alliance](https://www.finanzen.net/aktien/walgreens_boots_alliance-aktie "Wallgreens Boots Alliance")
  - Kauf von 0.9981 Stück am 02.11.2020
  - Kaufkurs: 30,06 €
- [TAKKT](https://www.finanzen.net/aktien/takkt-aktie "TAKKT")
  - Kauf von 1.0893 Stück am 02.11.2020
  - Kaufkurs: 9,18 €
- [7C Solarparken](https://www.finanzen.net/aktien/7c_solarparken-aktie "7C Solarparken")
  - Kauf von 2.6385 Stück am 02.11.2020
  - Kaufkurs: 3,79 €
- [TLG Immobilien](https://www.finanzen.net/aktien/tlg_immobilien-aktie "TLG Immobilien")
  - Kauf von 1.0296 Stück am 02.11.2020
  - Kaufkurs: 15,54 €
- [Bp](https://www.finanzen.net/aktien/bp_1-aktie "Bp")
  - Kauf von 4.4189 Stück am 02.11.2020
  - Kaufkurs: 2,26 €
- [Zuora](https://www.finanzen.net/aktien/zuora-aktie "Zuora")
  - Kauf von 1.2056 Stück am 02.11.2020
  - Kaufkurs: 8,29 €
- [Pluralsight](https://www.finanzen.net/aktien/pluralsight_a-aktie "Pluralsight")
  - Kauf von 1.0849 Stück am 02.11.2020
  - Kaufkurs: 13,83 €
- [Baozun](https://www.finanzen.net/aktien/baozu_a-aktie "Baozun")
  - Kauf von 0.9937 Stück am 02.11.2020
  - Kaufkurs: 32,20 €
- [2U](https://www.finanzen.net/aktien/2u-aktie "2U")
  - Kauf von 0.9908 Stück am 02.11.2020
  - Kaufkurs: 32,30 €
- [Omega Healthcare](https://www.finanzen.net/aktien/Omega_Healthcare_Investors-Aktie "Omega Healthcare")
  - Kauf von 0.9854 Stück am 02.11.2020
  - Kaufkurs: 25,37 €
- [ZhongAn Insurance](https://www.finanzen.net/aktien/zhongan_online_p_c_insurance-aktie "ZhongAn Insurance")
  - Kauf von 22 Stück am 06.11.2020
  - Kaufkurs: 4,54 €
- [Aroundtown](https://www.finanzen.net/aktien/aroundtown-aktie "Aroundtown")
  - Kauf von 19 Stück am 13.11.2020
  - Kaufkurs: 5,17 €
- [Freenet](https://www.finanzen.net/aktien/freenet-Aktie "Freenet")
  - Kauf von 1.0386 Stück am 16.11.2020
  - Kaufkurs: 17,33 €
- [BHP Group](https://www.finanzen.net/aktien/bhp-Aktie "BHP Group")
  - Kauf von 1.0096 Stück am 16.11.2020
  - Kaufkurs: 18,82 €
- [AT & T](https://www.finanzen.net/aktien/AT_T-Aktie "AT & T")
  - Kauf von 1.0206 Stück am 16.11.2020
  - Kaufkurs: 24,50 €
- [Iron Mountain](https://www.finanzen.net/aktien/Iron_Mountain_1-Aktie "Iron Mountain")
  - Kauf von 1.0070 Stück am 16.11.2020
  - Kaufkurs: 21,84 €
- [Hengan International](https://www.finanzen.net/aktien/hengan_international_group_3-aktie "Hengan International")
  - Kauf von 34 Stück am 30.11.2020
  - Kaufkurs: 5,85 €


## Fazit

Mein kleines Projekt lässt weiter auf sich warten - der Artikel ist fast in der Fertigstellung.

Wie liefen euer Monate? Welche Investitionen habt ihr getätigt? Womit habt ihr Euch beschäftigt?

