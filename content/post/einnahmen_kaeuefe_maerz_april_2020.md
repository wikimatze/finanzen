+++
date = "2020-05-10T20:15:45+01:00"
title = "Einnahmen und Einkäufe März/April 2020"
titleAddition = "finanzmatze"
draft = false
d3 = true
featuredImage = "/ishares_stoxx_global_select_dividend_10.png"
description = "Welche Einnahmen und Einkäufe habe ich im März/April 2020 getätigt? Wie ändern sich dadurch meine jährlichen Einnahmen?"
tags = [
    "einnahmen",
    "einkauf",
]
+++

TBD:

- check nochmal Rendite
- another fancy cover image
- Einnahmen als Balkendiagramm

## Einnahmen März 2020

**Dividenden-Aktien:**

- A1JNZ9 iShares Emerging Markets Dividend: **0 €**
- A1JX53 Vanguard S&P 500 UCITS: **0 €**
- A1T8FV Vanguard FTSE All-Word High Dividend: **0 €**


**Anleihen**:

- A143JN Vanguard USD Treasury: **0 €**
- A0NECU iShares J.P. Morgan USD Emerging Markets: **0 €**
- A143JQ Vanguard USD EM Government: **0 €**


**Beimischung**:

- A1T8FU Vanguard FTSE Japan: **0 €**
- A1T6SY VanEck Vectors Global Real Estate: **0 €**


**Welt**:

- A1JX51 Vanguard FTSE Emerging Markets UCITS: **0 €**


**Aktien**:

- 850663 Coca-Cola (Konsum): **0 €**


**Gesamteinnahmen**: **0 €**

Insgesamt haben 1 Einzelaktie, 1 Welt ETF, 2 Beimschung ETFs, 3 Anleihen ETFs und 3 Dividenden ETFs ausgeschüttet.


## Einnahmen April 2020

**Dividenden-Aktien:**

- A0F5UH iShares STOXX Global Select Dividend: **0 €**


**Anleihen**:

- A143JN Vanguard USD Treasury: **0 €**
- A0NECU iShares J.P. Morgan USD Emerging Markets: **0 €**
- A143JQ Vanguard USD EM Government: **0 €**
- DBX0NV Xtrackers Barclays Global Aggregate: **0 €**


**Beimischung**:

- A0Q4R2 iShares STOXX Europe 600 Auto: **0 €**


**Welt**:

- A1C9KL HSBC MSCI World UCITS: **0 €**


**Aktien**:

- A0Q4K4 Activison-Blizzard: **0 €**


**Gesamteinnahmen**: **0 €**

Insgesamt haben 1 Einzelaktie, 1 Welt ETF, 1 Beimschung ETF, 4 Anleihen ETFs und 1 Dividenden ETF ausgeschüttet.


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

- [Vanguard FTSE All-Word High Dividend Yield](https://www.justetf.com/de/etf-profile.html?isin=IE00B8GKDB10 "Vanguard FTSE All-Word High Dividend Yield")
  - Kauf von **0 Stück** am 05.03.2020
  - Kaufkurs: 0 €
  - Rendite: **0 €** pro Ausschüttung, d.h. **0 €** jährlich
- [iShares STOXX Global Select Dividend 100 UCITS](https://www.justetf.com/de/etf-profile.html?isin=DE000A0F5UH1 "iShares STOXX Global Select Dividend 100 UCITS")
  - Kauf von **0 Stück** am 05.03.2020
  - Kaufkurs: 0 €
  - Rendite: **0 €** pro Ausschüttung, d.h. **0 €** jährlich
- [Vanguard FTSE Emerging Markets UCITS](https://www.justetf.com/de/etf-profile.html?query=IE00B3VVMM84&groupField=index&from=search&isin=IE00B3VVMM84"Vanguard FTSE Emerging Markets UCITS")
  - Kauf von **0 Stück** am 05.03.2020
  - Kaufkurs: 0 €
  - Rendite: **0** € pro Ausschüttung, d.h. **0 €** jährlich


**Anleihen:**

- [iShares J.P. Morgan USD Emerging Markets Bond UCITS](https://www.justetf.com/de/etf-profile.html?isin=IE00B2NPKV68 "iShares J.P. Morgan USD Emerging Markets Bond UCITS")
  - Kauf von 0 Stück am 07.03.2020
  - Kaufkurs: 0 €
  - Kauf von 0 Stück am 07.05.2020
  - Kaufkurs: 0 €
  - nochmal checken Rendite: **0,12 €** pro Ausschüttung, d.h. **1,44 €** jährlich
- [Xtrackers Barclays Global Aggregate Bond UCITS](https://www.justetf.com/de/etf-profile.html?isin=LU0942970103 "Xtrackers Barclays Global Aggregate Bond UCITS")
  - Kauf von 0 Stück am 07.03.2020
  - Kaufkurs: 0 €
  - Kauf von 0 Stück am 07.04.2020
  - Kaufkurs: 43,43582 €
  - nochmal checken Rendite: **0,50 € jährlich**
- [iShares Fallen Angels High Yield Corporate Bond](https://www.justetf.com/de/etf-profile.html?query=IE00BYM31M36&groupField=index&from=search&isin=IE00BYM31M36 "iShares Fallen Angels High Yield Corporate Bond")
  - Kauf von 0 Stück am 07.03.2020
  - Kaufkurs: 0 €
  - Kauf von 0 Stück am 07.04.2020
  - Kaufkurs: 0 €
  - nochmal checken Rendite: **1,11 €** pro Ausschüttung, d.h. **2,22 €** jährlich

**Beimischung**:

- [iShares MSCI USA ESG Screened UCITS](https://www.justetf.com/de/etf-profile.html?isin=IE00BFNM3H51 "iShares MSCI USA ESG Screened UCITS")
  - Kauf von 0 Stück am 03.03.2020
  - Kaufkurs: 0 €
  - Kauf von 0 Stück am 03.04.2020
  - Kaufkurs: 0 €
  - nochmal checken Rendite: **0,4 €** pro Ausschüttung, d.h. **0,8 €** jährlich
- [Vanguard FTSE Japan UCITS](https://www.justetf.com/de/etf-profile.html?isin=IE00B95PGT31 "Vanguard FTSE Japan UCITS")
  - Kauf von 0 Stück am 05.03.2020
  - Kaufkurs: 0 €
  - Kauf von 0 Stück am 05.04.2020
  - Kaufkurs: 0 €
  - nochmal checken Rendite: **0,25 €** pro Ausschüttung, d.h. **1 €** jährlich
- [iShares Developed Markets Property Yield](https://www.justetf.com/de/etf-profile.html?query=IE00B1FZS350&groupField=index&from=search&isin=IE00B1FZS350 "iShares Developed Markets Property Yield")
  - Kauf von 0 Stück am 15.03.2020
  - Kaufkurs: 0 €
  - Kauf von 0 Stück am 18.04.2020
  - Kaufkurs: 0 €
  - nochmal checken Rendite: **1,27 €** pro Ausschüttung, d.h. **5,08 €** jährlich
- [iShares Asia Property Yield UCITS](https://www.justetf.com/de/etf-profile.html?query=IE00B1FZS244&groupField=index&from=search&isin=IE00B1FZS244 "iShares Asia Property Yield UCITS")
  - Kauf von 0 Stück am 15.03.2020
  - Kaufkurs: 0 €
  - Kauf von 0 Stück am 18.04.2020
  - Kaufkurs: 0 €
  - nochmal checken Rendite: **1,50 €** pro Ausschüttung, d.h. **6 €** jährlich
- [VanEck Vectors Global Real Estate UCITS](https://www.justetf.com/de/etf-profile.html?query=NL0009690239&groupField=index&from=search&isin=NL0009690239 "VanEck Vectors Global Real Estate UCITS")
  - Kauf von 0 Stück am 15.03.2020
  - Kaufkurs: 0 €
  - Kauf von 2,206 Stück am 18.04.2020
  - Kaufkurs: 0 €
  - nochmal checken Rendite: **1,53 €** pro Ausschüttung, d.h. **6,12 €** jährlich

**Einzelaktien:**

- [Hasbro]( "Hasbro")
  - Kauf von 5 Stück am 03.03.2020
  - Kaufkurs: 70,55 €
  - Rendite: **3,5 €** pro Ausschüttung, d.h. **14 €** jährlich


## Fazit:

Meine jährliche Rendite ist um **0 €** gestiegen, wobei ich dabei keine steuerlichen Abzügen betrachte.


Laut meinen Dividendenkalender werde ich in den kommenden Monaten Mai und Juni ca. 335 € erwirtschaften.

