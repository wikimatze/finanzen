+++
date = "2020-09-06T5:00:00+02:00"
title = "Einnahmen und Einkäufe xxx-xxx 2020"
titleAddition = "finanzmatze"
draft = true
d3 = true
featuredImage = "/einnahmen_januar_februar_2020.png"
description = "Welche Einnahmen und Einkäufe habe ich von xxx-xxx 2020 getätigt?"
tags = [
    "einnahmen",
    "einkauf",
]
+++

Kurzes Intro, was ich in den letzten Paar Monaten alles so erledigt habe ...


## Einnahmen xxx 2020

**Dividenden-Aktien:**

- WKN Text: **0,00 €**


**Anleihen**:

- WKN Text: **0,00 €**


**Beimischung**:

- WKN Text: **0,00 €**


**Aktien**:

- Text: **0,00 €**


**Sonstiges**:

- Wodurch noch weiteres Geld verdient: **0,00 €**

**Gesamteinnahmen reine Dividenden**: **0,00 €**

**Gesamteinnahmen plus sonstige**: **0,00 €**

Insgesamt haben x Einzelaktien, x Beimschung ETF, x Anleihen ETFs und x Dividenden ETF ausgeschüttet.


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

d3.csv("/data/dividenden_reports/maerz_august_2020.csv", function(error, data) {

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

**Welt**:

- Link mit Namen
  - Kauf von **0,00 Stück** am xx.xx.2020
  - Kaufkurs: 16,248 €


**Dividenden-Aktien:**

- Link mit Namen
  - Kauf von **0,00 Stück** am xx.xx.2020
  - Kaufkurs: 16,248 €


**Anleihen:**

- Link mit Namen
  - Kauf von **0,00 Stück** am xx.xx.2020
  - Kaufkurs: 16,248 €


**Beimischung**:

- Link mit Namen
  - Kauf von **0,00 Stück** am xx.xx.2020
  - Kaufkurs: 16,248 €


**Einzelaktien:**

- Link mit Namen
  - Kauf von **0,00 Stück** am xx.xx.2020
  - Kaufkurs: 16,248 €


## Fazit

Was konnte ich aus den vergangenen Monat alles für mich herausziehen.

Wie liefen eure Monate so? Welche Investitionen habt ihr getätigt?

