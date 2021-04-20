+++
date = "2021-01-03T5:00:00+02:00"
title = "Einnahmen und Einkäufe Dezember 2020"
titleAddition = "finanzmatze"
draft = false
d3 = true
featuredImage = "/einnahmen_januar_februar_2020.png"
description = "Welche Einnahmen und Einkäufe habe ich Dezember 2020 getätigt?"
tags = [
    "einnahmen",
    "einkauf",
]
+++

Ohne viel Schnick-Schnack auf zu den Einnahmen:


## Einnahmen Dezember 2020

**Dividenden-Aktien:**

- A1JNZ9 iShares Emerging Markets Dividend: **29,87 €**
- A1JX53 VANG.S.P.500 Dividende: **12,19 €**
- 622391 iShares S&P 500 UCITS: **1,11 €**
- A1T8FV Vanguard FTSE All-Word High Dividend: **23,61 €**


**Anleihen**:

- A143JN Vanguard USD Treasury: **1,20 €**
- A0NECU iShares J.P. Morgan USD Emerging Markets: **1,78 €**
- A2AFCX iShares Fallen Angels High Yield Corporate Bond: **4,79 €**
- A143JQ Vanguard USD EM Government: **12,95 €**


**Beimischung**:

- A2N6TC iShares MSCI USA ESG Screened: **8,73 €**
- A1T6SY VanEck Vectors Global Real Estate: **2,10 €**
- A1T8FU Vanguard FTSE Japan: **4,20 €**



**Welt**:

- A1JX51 VANG.FTSE.Emerging.Markets Dividende: **10,11 €**



**Aktien**:

- Wells Fargo: **0,31 €**
- PennantPark Floating Rate Capital: **0,73 €**
- Pembina Pipeline: **0,43 €**
- Main Street Capital: **1,78 €**
- Inter Pipeline: **0,17 €**
- Prospect Capital: **0,75 €**
- AGNC Investment: **2,57 €**
- Realty Income: **1,01 €**
- Stag Industrial: **0,95 €**
- Whitestone REIT: **0,57 €**
- Shaw Communications: **0,39 €**
- Armour Resdential REIT: **0,90 €**
- Gladstone Commercial: **1,73 €**
- Gladstone Land: **0,46 €**
- LTC Properties: **0,58 €**
- Gladstone Capital: **0,83 €**
- Gladstone Investment: **0,77 €**
- TransAlta Renewables: **0,40 €**
- Archer Daniels Midland: **2,20 €**
- Exxon Mobil: **3,20 €**
- 3M: **2,70 €**
- Prudential Financial: **3,34 €**
- Harley Davidson: **0,16 €**
- Blackrock: **2,20 €**
- Coca-Cola: **5,00 €**
- Kellog: **2,44 €**
- MSC Industrial Direct: **12,81 €**
- Southern Company: **0,80 €**
- Wallgreens Boots Alliance: **0,59 €**
- BP: **3,31 €**
- Kimco: **0,88 €**
- Ares Capital: **7,76 €**
- Corus Enterntainment: **0,80 €**
- New Mountain: **2,38 €**
- Extra Space Storage: **0,55 €**


**Sonstiges**:

- Zeugenentschädigung: **8,50 €**
- Aktienverkauf Tui: **12,00 €**
- Aktienverkauf Duke Realty: **9,04 €**


**Gesamteinnahmen reine Dividenden**: **178,79 €**

**Gesamteinnahmen plus sonstige**: **208,32 €**

Insgesamt haben 35 Einzelaktien, 3 Beimschung ETFs, 1 Welt ETF, 4 Anleihen ETFs und 4 Dividenden ETFs ausgeschüttet.


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

d3.csv("/data/dividenden_reports/dezember_2020.csv", function(error, data) {

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
  - Kauf von 0 Stück am 02.12.2020
  - Kaufkurs:  €
- [iShares S&P 500 UCITS](https://www.justetf.com/de/etf-profile.html?isin=IE0031442068 "iShares S&P 500 UCITS")
  - Kauf von 0 Stück am 02.12.2020
  - Kaufkurs: 0 €
- [SPDR S&P Global Dividend Aristocrats UCITS ETF](https://www.justetf.com/de/etf-profile.html?isin=IE00B9CQXS71 "SPDR S&P Global Dividend Aristocrats UCITS ETF")
  - Kauf von **11.2157 Stück** am 19.12.2020
  - Kaufkurs: 21,68 €

**Anleihen:**

- [iShares J.P. Morgan USD Emerging Markets Bond UCITS](https://www.justetf.com/de/etf-profile.html?isin=IE00B2NPKV68 "iShares J.P. Morgan USD Emerging Markets Bond UCITS")
  - Kauf von 0.2654 Stück am 02.12.2020
  - Kaufkurs: 94,19 €
- [Vanguard USD EM Government Bond UCITS](https://www.justetf.com/de/etf-profile.html?isin=IE00BZ163L38 "Vanguard USD EM Government Bond UCITS")
  - Kauf von 1.034 Stück am 07.12.2020
  - Kaufkurs: 43,5135 €


**Beimischung**:

- [iShares MSCI USA ESG Screened UCITS](https://www.justetf.com/de/etf-profile.html?isin=IE00BFNM3H51 "iShares MSCI USA ESG Screened UCITS")
  - Kauf von 0. Stück am 02.12.2020
  - Kaufkurs: 5,35 €
- [iShares Asia Property Yield UCITS](https://www.justetf.com/de/etf-profile.html?query=IE00B1FZS244&groupField=index&from=search&isin=IE00B1FZS244 "iShares Asia Property Yield UCITS")
  - Kauf von 0.4731 Stück am 02.12.2020
  - Kaufkurs: 21,14 €
- [iShares Fallen Angels High Yield Corporate Bond](https://www.justetf.com/de/etf-profile.html?isin=IE00BYM31M36 "iShares Fallen Angels High Yield Corporate Bond")
  - Kauf von 1.9588 Stück am 02.12.2020
  - Kaufkurs: 5,10 €
- [iShares Global Infrastructure UCITS](https://www.justetf.com/de/etf-profile.html?isin=IE00B1FZS467 "iShares Global Infrastructure UCITS")
  - Kauf von 1.0177 Stück am 02.12.2020
  - Kaufkurs: 24,56 €
- [Lyxor MSCI Greece UCITS](https://www.justetf.com/de/etf-profile.html?isin=FR0010405431 "Lyxor MSCI Greece UCITS")
  - Kauf von 28.908 Stück am 07.12.2020
  - Kaufkurs: 0,8648 €
- [Xtrackers MSCI Brazil UCITS](https://www.justetf.com/de/etf-profile.html?isin=LU0292109344 "Xtrackers MSCI Brazil UCITS")
  - Kauf von 0.9322 Stück am 01.12.2020
  - Kaufkurs: 34,3250 €


**Welt**:

- [HSBC MSCI World UCITS](https://www.justetf.com/de/etf-profile.html?isin=IE00B4X9L533 "HSBC MSCI World UCITS")
  - Kauf von 7.1925 Stück am 02.11.2020
  - Kaufkurs: 20,855 €


**Einzelaktien:**


- [Siemens Healthineers](https://www.finanzen.net/aktien/siemens_healthineers-aktie "Siemens Healthineers")
  - Kauf von 5 Stück am 02.11.2020
  - Kaufkurs: 36,96 €
- [Bayer](https://www.finanzen.net/aktien/bayer-aktie "Bayer")
  - Kauf von 1.0331 Stück am 02.12.2020
  - Kaufkurs: 47,43 €
- [Fresenius](https://www.finanzen.net/aktien/fresenius-aktie "Fresenius")
  - Kauf von 1.0255 Stück am 02.12.2020
  - Kaufkurs: 38,03 €
- [Hamborner REIT](https://www.finanzen.net/aktien/hamborner_reit-aktie "Hamborner REIT")
  - Kauf von 1.1117 Stück am 02.12.2020
  - Kaufkurs: 9,00 €
- [EasyJet](https://www.finanzen.net/aktien/easyjet-aktie "EasyJet")
  - Kauf von 1.0390 Stück am 02.12.2020
  - Kaufkurs: 9,62 €
- [Glaxo Smith Kline](https://www.finanzen.net/aktien/glaxosmithkline-aktie "Glaxo Smith Kline")
  - Kauf von 1.0331 Stück am 02.12.2020
  - Kaufkurs: 15,49 €
- [Alstria](https://www.finanzen.net/aktien/alstria_office_reit-aktie "Alstria")
  - Kauf von 1.0174 Stück am 02.12.2020
  - Kaufkurs: 13,76 €
- [Medical Properties Trust](https://www.finanzen.net/aktien/Medical_Properties_Trust-Aktie "Medical Properties Trust")
  - Kauf von 1.0391 Stück am 02.12.2020
  - Kaufkurs: 16,36 €
- [Prospect Capital](https://www.finanzen.net/aktien/prospect_capital-aktie "Prospect Capital")
  - Kauf von 11.5202 Stück am 02.12.2020
  - Kaufkurs: 4,43 €
- [Pembina Pipeline](https://www.finanzen.net/aktien/pembina_pipeline-aktie "Pembina Pipeline")
  - Kauf von 2.1403 Stück am 02.12.2020
  - Kaufkurs: 21,02 €
- [Shaw Communications](https://www.finanzen.net/aktien/shaw_communications-aktie "Shaw Communications")
  - Kauf von 3.4991 Stück am 02.12.2020
  - Kaufkurs: 14,58 €
- [TransAlta Renewables](https://www.finanzen.net/aktien/transalta_renewables-aktie "TransAlta Renewables")
  - Kauf von 4.0869 Stück am 02.12.2020
  - Kaufkurs: 11,50 €
- [Gladstone Capital Cooperation](https://www.finanzen.net/aktien/gladstone_capital-aktie "Gladstone Capital Cooperation")
  - Kauf von 7.2156 Stück am 02.12.2020
  - Kaufkurs: 7,07 €
- [Gladstone Investment Cooperation](https://www.finanzen.net/aktien/gladstone_investment-aktie "Gladstone Investment Cooperation")
  - Kauf von 6.0859 Stück am 02.12.2020
  - Kaufkurs: 8,38 €
- [PennantPark Floating Rate Capital](https://www.finanzen.net/aktien/pennantpark_floating_rate_capital-aktie "PennantPark Floating Rate Capital")
  - Kauf von 4.9723 Stück am 02.12.2020
  - Kaufkurs: 9,05 €
- [Oneok](https://www.finanzen.net/aktien/oneok-aktie "Oneok")
  - Kauf von 0.9700 Stück am 02.12.2020
  - Kaufkurs: 30,92 €
- [Unum Group](https://www.finanzen.net/aktien/unum_group-aktie "Unum Group")
  - Kauf von 1.0106 Stück am 02.12.2020
  - Kaufkurs: 18,80 €
- [Occidental Petroleum](https://www.finanzen.net/aktien/occidental_petroleum-aktie "Occidental Petroleum")
  - Kauf von 1.1227 Stück am 16.12.2020
  - Kaufkurs: 16,03 €
- [Metro](https://www.finanzen.net/aktien/metro-aktie "Metro")
  - Kauf von 1.3037 Stück am 02.12.2020
  - Kaufkurs: 7,47 €
  - Kauf von 1.2233 Stück am 16.12.2020
  - Kaufkurs: 8,17 €
- [Tilray](https://www.finanzen.net/aktien/tilray-aktie "Tilray")
  - Kauf von 1.4138 Stück am 02.12.2020
  - Kaufkurs: 7,07 €
- [Taylor Wimpey](https://www.finanzen.net/aktien/taylor_wimpey-aktie "Taylor Wimpey")
  - Kauf von 8.2474 Stück am 02.11.2020
  - Kaufkurs: 1,212 €
- [The GEO Group REIT](https://www.finanzen.net/aktien/the_geo_group_1-aktie "The GEO Group REIT")
  - Kauf von 1.2518 Stück am 02.12.2020
  - Kaufkurs: 7,99 €
- [Ares Capital](https://www.finanzen.net/aktien/ares_capital-aktie "Ares Capital")
  - Kauf von 1.0001 Stück am 02.12.2020
  - Kaufkurs: 14 €
- [Main Street Capital](https://www.finanzen.net/aktien/main_street_capital-aktie "Main Street Capital")
  - Kauf von 1.9876 Stück am 02.12.2020
  - Kaufkurs: 26,66 €
- [Rolls-Royce](https://www.finanzen.net/aktien/rolls-royce-aktie "Rolls-Royce")
  - Kauf von 7.9936 Stück am 02.12.2020
  - Kaufkurs: 1,251 €
- [Apollo Investment Corperation](https://www.finanzen.net/aktien/apollo_investment_2-aktie "Apollo Investment Corperation")
  - Kauf von 1.0992 Stück am 02.12.2020
  - Kaufkurs: 9,10 €
- [Global Net Lease REIT]( https://www.finanzen.net/aktien/global_net_lease_1-aktie"Global Net Lease REIT")
  - Kauf von 0.9992 Stück am 02.12.2020
  - Kaufkurs: 14,01 €
- [One Liberty Properties](https://www.finanzen.net/aktien/one_liberty_properties-aktie "One Liberty Properties")
  - Kauf von 1.0294 Stück am 02.11.2020
  - Kaufkurs: 13,60 €
- [Carnival](https://www.finanzen.net/aktien/carnival-aktie "Carnival")
  - Kauf von 0.6510 Stück am 02.12.2020
  - Kaufkurs: 15,36 €
- [Gladstone Commercial Corp](https://www.finanzen.net/aktien/gladstone_commercial-aktie "Gladstone Commercial Corp")
  - Kauf von 0.9960 Stück am 02.12.2020
  - Kaufkurs: 15,06 €
- [Wallgreens Boots Alliance](https://www.finanzen.net/aktien/walgreens_boots_alliance-aktie "Wallgreens Boots Alliance")
  - Kauf von 0.9739 Stück am 02.12.2020
  - Kaufkurs: 32,86 €
- [TAKKT](https://www.finanzen.net/aktien/takkt-aktie "TAKKT")
  - Kauf von 1.0436 Stück am 02.12.2020
  - Kaufkurs: 10,54 €
- [7C Solarparken](https://www.finanzen.net/aktien/7c_solarparken-aktie "7C Solarparken")
  - Kauf von 2.3255 Stück am 02.12.2020
  - Kaufkurs: 4,30 €
- [TLG Immobilien](https://www.finanzen.net/aktien/tlg_immobilien-aktie "TLG Immobilien")
  - Kauf von 1.0280 Stück am 02.12.2020
  - Kaufkurs: 21,40 €
- [Bp](https://www.finanzen.net/aktien/bp_1-aktie "Bp")
  - Kauf von 3.4989 Stück am 02.12.2020
  - Kaufkurs: 2,86 €
- [Zuora](https://www.finanzen.net/aktien/zuora-aktie "Zuora")
  - Kauf von 1.0500 Stück am 02.12.2020
  - Kaufkurs: 9,52 €
- [Pluralsight](https://www.finanzen.net/aktien/pluralsight_a-aktie "Pluralsight")
  - Kauf von 1.0410 Stück am 02.12.2020
  - Kaufkurs: 14,41 €
- [Baozun](https://www.finanzen.net/aktien/baozu_a-aktie "Baozun")
  - Kauf von 0.9876 Stück am 02.12.2020
  - Kaufkurs: 32,40 €
- [2U](https://www.finanzen.net/aktien/2u-aktie "2U")
  - Kauf von 1.0328 Stück am 02.12.2020
  - Kaufkurs: 27,11 €
- [Omega Healthcare](https://www.finanzen.net/aktien/Omega_Healthcare_Investors-Aktie "Omega Healthcare")
  - Kauf von 1.0273 Stück am 02.12.2020
  - Kaufkurs: 30,18 €
- [Freenet](https://www.finanzen.net/aktien/freenet-Aktie "Freenet")
  - Kauf von 1.0610 Stück am 16.12.2020
  - Kaufkurs: 16,96 €
- [BHP Group](https://www.finanzen.net/aktien/bhp-Aktie "BHP Group")
  - Kauf von 1.0175 Stück am 16.12.2020
  - Kaufkurs: 21,62 €
- [AT & T](https://www.finanzen.net/aktien/AT_T-Aktie "AT & T")
  - Kauf von 1.0462 Stück am 16.12.2020
  - Kaufkurs: 24,85 €
- [Iron Mountain](https://www.finanzen.net/aktien/Iron_Mountain_1-Aktie "Iron Mountain")
  - Kauf von 1.0266 Stück am 16.12.2020
  - Kaufkurs: 24,35 €
- [Intel](https://www.finanzen.net/aktien/intel-aktie "Intel")
  - Kauf von 0.9775 Stück am 02.12.2020
  - Kaufkurs: 40,92 €
- [Corsair](https://www.finanzen.net/aktien/corsair_gaming-aktie "Corsair")
  - Kauf von 3 Stück am 15.12.2020
  - Kaufkurs: 30,00 €
- [Südzucker](https://www.finanzen.net/aktien/suedzucker-aktie "Südzucker")
  - Kauf von 1.0989 Stück am 16.12.2020
  - Kaufkurs: 11,83 €
- [EON](https://www.finanzen.net/aktien/eon-aktie "EON")
  - Kauf von 1.1076 Stück am 16.12.2020
  - Kaufkurs: 9,03 €
- [Enbridge](https://www.finanzen.net/aktien/enbridge-aktie "Enbridge")
  - Kauf von 1.0568 Stück am 16.12.2020
  - Kaufkurs: 29,00 €
- [Cardinal Health](https://www.finanzen.net/aktien/Cardinal_Health-Aktie "Cardinal Health")
  - Kauf von 1.0059 Stück am 16.12.2020
  - Kaufkurs: 44,73 €
- [Mitsubishi](https://www.finanzen.net/aktien/mitsubishi-aktie "Mitsubishi")
  - Kauf von 10 Stück am 18.12.2020
  - Kaufkurs: 20,80 €


## Fazit

Mein kleines Projekt lässt weiter auf sich warten - der Artikel ist fast in der Fertigstellung.

Wie liefen euer Monate? Welche Investitionen habt ihr getätigt? Womit habt ihr Euch beschäftigtt?

