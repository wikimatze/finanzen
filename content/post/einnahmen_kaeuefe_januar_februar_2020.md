+++
date = "2020-04-07T04:19:00+01:00"
title = "Einnahmen und Einkäufe Januar/Februar 2020"
titleAddition = "finanzmatze"
draft = false
d3 = true
featuredImage = "/einnahmen_januar_februar_2020.png"
description = "Welche Einnahmen und Einkäufe habe ich im Januar/Februar 2020 getätigt? Wie ändern sich dadurch meine jährlichen Einnahmen?"
tags = [
    "einnahmen",
    "einkauf",
]
+++


Dies ist mein erster Artikel über meine Einnahmen und Einkäufe für Januar/Februar 2020. Ich werde Euch einen Überblick geben,
welche Posten ist aufgestockt und welche Dividenden ich eingenommen habe. Zusätzlich gebe ich bei jedem Einkauf an, welche
Mehreinnahmen dadurch jährlich entstehen.


Ich planne zunächst alle zwei Monate diesen Report zu posten.


Auf gehts!


## Einnahmen Januar 2020

**Dividenden-Aktien:**

- A0F5UH iShares STOXX Global Select Dividend: **20,59 €**


**Anleihen**:

- A143JN Vanguard USD Treasury: **5,18 €**
- A0NECU iShares J.P. Morgan USD Emerging Markets: **2,13 €**
- A143JQ Vanguard USD EM Government: **27,48 €**


**Beimischung**:

- A0Q4R2 iShares STOXX Europe 600 Auto: **0,55 €**


**Welt**:

- A1C9KL HSBC MSCI World UCITS: **46,87 €**


**Aktien**:

- 358051 Ashford Hospitality trust: **3,48 €**
- A2ANA3 Red Electrica: **3,86 €**
- A0B6VB Patterson Companies: **3,47 €**
- A0MS7Y Macys: **6,51 €**
- 534418 Marks & Spencers: **5,73 €**
- 877539 Foot Looker: **2,56 €**


**Gesamteinnahmen**: **128,31 €**

Insgesamt haben 6 Einzelaktien, 1 Welt ETF, 1 Beimschung ETF, 3 Anleihen ETFs und 1 Dividenden ETF ausgeschüttet. Ein
Vergleich zum Vorjahr habe ich bisher noch nicht, da dies mein erster Bericht ist.


## Einnahmen Februar 2020

**Dividenden-Aktien:**

- A1T8GD SPDR S&P Global Dividend Aristocrats (Dividende): **8,61 €**


**Anleihen**:

- A143JN Vanguard USD Treasury: **5,18 €**
- A0NECU iShares J.P. Morgan USD Emerging Markets: **2,49 €**
- A143JQ Vanguard USD EM Government: **27,48 €**


**Beimischung**:

- A0LEW8 iShares Developed Markets Property (Beimischung): **0,66 €**
- A0LEQL iShares Asia Property Yield (Beimischung): **0,84 €**


**Aktien**:

- Colgate: **1,75 €**
- WestRock: **3,19 €**


**Gesamteinnahmen**: **50,02 €**

Insgesamt haben 2 Einzelaktien, 2 Beimschung ETF, 3 Anleihen ETF und 1 Dividenden ETF ausgeschüttet. Genau wie im Januar
hab ich bisher keinen Vergleich zum vorherigen Monat, da dies mein erster Bericht ist.


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
    height = 300 - margin.top - margin.bottom;

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

d3.csv("/data/dividenden_reports/jan_feb_2020.csv", function(error, data) {

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


## Käufe und jährliche Einnahmensteigerung

**Dividenden-Aktien:**

- [SPDR S&P Global Dividend Aristocrats UCITS](https://www.justetf.com/de/etf-profile.html?isin=IE00B9CQXS71 "SPDR S&P Global Dividend Aristocrats UCITS")
  - Kauf von **12,1043 Stück** am 05.02.2020
  - Kaufkurs: 32,22 €
  - Rendite: **3 €** pro Ausschüttung, d.h. **12 €** jährlich
- [iShares Emerging Markets Dividend UCITS](https://www.justetf.com/de/etf-profile.html?isin=IE00B652H904 "iShares Emerging Markets Dividend UCITS")
  - Kauf von **84,4434 Stück** am 05.02.2020
  - Kaufkurs: 19,548 €
  - Rendite: **21 €** pro Ausschüttung, d.h. **84 €** jährlich
- [Vanguard FTSE All-Word High Dividend Yield](https://www.justetf.com/de/etf-profile.html?isin=IE00B8GKDB10 "Vanguard FTSE All-Word High Dividend Yield")
  - Kauf von **0,469 Stück** am 15.01.2020
  - Kaufkurs: 52,44  €
  - Kauf von 3,7729 Stück am 20.02.2020
  - Kaufkurs: 53,01 €
  - Rendite: **1,68** € pro Ausschüttung, d.h. **6,27 €** jährlich
- [iShares STOXX Global Select Dividend 100](https://www.justetf.com/de/etf-profile.html?isin=DE000A0F5UH1 "iShares STOXX Global Select Dividend 100")
  - Kauf von **41,9111 Stück** am 20.02.2020
  - Kaufkurs: 29,825 €
  - Rendite: **12,29 €** pro Ausschüttung, d.h. **49,16 €** jährlich


**Anleihen:**

- [iShares J.P. Morgan USD Emerging Markets Bond UCITS](https://www.justetf.com/de/etf-profile.html?isin=IE00B2NPKV68 "iShares J.P. Morgan USD Emerging Markets Bond UCITS")
  - Kauf von 0,24 Stück am 07.01.2020
  - Kaufkurs: 105,38 €
  - Kauf von 0,233 Stück am 07.02.2020
  - Kaufkurs: 105,38 €
  - Rendite: **0,12 €** pro Ausschüttung, d.h. **1,44 €** jährlich
- [Xtrackers Barclays Global Aggregate Bond UCITS](https://www.justetf.com/de/etf-profile.html?isin=LU0942970103 "Xtrackers Barclays Global Aggregate Bond UCITS")
  - Kauf von 0,579 Stück am 01.01.2020
  - Kaufkurs: 42,51136 €
  - Kauf von 0,567 Stück am 07.02.2020
  - Kaufkurs: 43,43582 €
  - Rendite: **0,50 € jährlich**
- [iShares Fallen Angels High Yield Corporate Bond](https://www.justetf.com/de/etf-profile.html?query=IE00BYM31M36&groupField=index&from=search&isin=IE00BYM31M36 "iShares Fallen Angels High Yield Corporate Bond")
  - Kauf von 5,024 Stück am 07.01.2020
  - Kaufkurs: 4,9026 €
  - Kauf von 5,0164 Stück am 07.02.2020
  - Kaufkurs: 5,0164 €
  - Rendite: **1,11 €** pro Ausschüttung, d.h. **2,22 €** jährlich

**Beimischung**:

- [iShares MSCI USA ESG Screened UCITS](https://www.justetf.com/de/etf-profile.html?isin=IE00BFNM3H51 "iShares MSCI USA ESG Screened UCITS")
  - Kauf von 4,654 Stück am 03.01.2020
  - Kaufkurs: 5,292 €
  - Kauf von 4,591 Stück am 03.02.2020
  - Kaufkurs: 5,364 €
  - Rendite: **0,4 €** pro Ausschüttung, d.h. **0,8 €** jährlich
- [Vanguard FTSE Japan UCITS](https://www.justetf.com/de/etf-profile.html?isin=IE00B95PGT31 "Vanguard FTSE Japan UCITS")
  - Kauf von 1,732 Stück am 03.01.2020
  - Kaufkurs: 28,43 €
  - Kauf von 1.767 Stück am 03.02.2020
  - Kaufkurs: 27,875 €
  - Rendite: **0,25 €** pro Ausschüttung, d.h. **1 €** jährlich
- [iShares Developed Markets Property Yield](https://www.justetf.com/de/etf-profile.html?query=IE00B1FZS350&groupField=index&from=search&isin=IE00B1FZS350 "iShares Developed Markets Property Yield")
  - Kauf von 3,868 Stück am 15.01.2020
  - Kaufkurs: 25,46756 €
  - Kauf von 3,66 Stück am 18.01.2020
  - Kaufkurs: 26,915 €
  - Rendite: **1,27 €** pro Ausschüttung, d.h. **5,08 €** jährlich
- [iShares Asia Property Yield UCITS](https://www.justetf.com/de/etf-profile.html?query=IE00B1FZS244&groupField=index&from=search&isin=IE00B1FZS244 "iShares Asia Property Yield UCITS")
  - Kauf von 3,639 Stück am 15.01.2020
  - Kaufkurs: 27,07 €
  - Kauf von 3,582 Stück am 18.02.2020
  - Kaufkurs: 27,505 €
  - Rendite: **1,50 €** pro Ausschüttung, d.h. **6 €** jährlich
- [VanEck Vectors Global Real Estate UCITS](https://www.justetf.com/de/etf-profile.html?query=NL0009690239&groupField=index&from=search&isin=NL0009690239 "VanEck Vectors Global Real Estate UCITS")
  - Kauf von 2,358 Stück am 15.01.2020
  - Kaufkurs: 42,395 €
  - Kauf von 2,206 Stück am 18.02.2020
  - Kaufkurs: 45,31688 €
  - Rendite: **1,53 €** pro Ausschüttung, d.h. **6,12 €** jährlich

**Einzelaktien:**

- [Foot Locker](https://www.finanzen.net/aktien/foot_locker-aktie "Foot Locker")
  - Kauf von 10 Stück am 02.01.2020
  - Kaufkurs: 35,10 €
  - Rendite: **3,5 €** pro Ausschüttung, d.h. **14 €** jährlich
- [Lufthansa](https://www.finanzen.net/aktien/lufthansa-aktie "Lufthansa")
  - Kauf von 22 Stück am 08.01.2020
  - Kaufkurs: 15,535 €
  - Rendite: **5,06** € pro Ausschüttung, d.h. **20,24 €** jährlich
- [Exxon Mobil](https://www.finanzen.net/aktien/exxonmobil-aktie "Exxon Mobil")
  - Kauf von 6 Stück am 07.02.2020
  - Kaufkurs: 56,30 €
  - Rendite: **5,04 €** pro Ausschüttung, d.h. **20,16 €** jährlich
- [WestRock](https://www.finanzen.net/aktien/westrock-aktie "WestRock")
  - Kauf von 10 Stück am 07.02.2020
  - Kaufkurs: 37,60 €
  - Rendite: **4,20 €** pro Ausschüttung, d.h. **16,8 €** jährlich


## Fazit:

Durch die Zukäufe konnte ich meine jährliche Rendite um **245,79 €** erhöhen ohne Angaben von steuerlichen Abzügen.

Laut meinen Dividendenkalender werde ich in den
kommenden Monaten März und April ca. 400 € erwirtschaften.
