![finanzmatze](https://raw.githubusercontent.com/wikimatze/finanzen/master/static/logo.png "finanzmatze")


# Installation

Installiere [hugo](https://gohugo.io/getting-started/installing/ "hugo").


Schnapp dir den Code:


```
$ git clone --recurse-submodules git@github.com:wikimatze/finanzen.git
```


Starte die Anwendung mit


```
$ hugo server
```


Anschließend kann die Seite unter <http://localhost:1313/> betrachtet werden.


# Technologien

- [hugo](https://gohugo.io/ "hugo") für die statische Seite
   - [shortcodes](https://gohugo.io/content-management/shortcodes/#readout "shortcodes")
- [onepress](https://themes.gohugo.io/onepress/ "onepress") Template Vorlage für diesen Blog
- [hashover](https://github.com/jacobwb/hashover "hashover") für die Kommentare
- [matomo](https://matomo.org/ "matomo") fürs tracking
- [inkscape](https://inkscape.org/ "inkscape") wurde zur Erstellung des Logos verwendet
- [gimp](https://www.gimp.org/ "gimp") zum Verkleinern der Bilder
- [google-webmaster](https://www.google.com/webmasters "google-webmaster") fürs Tracking und Seo Optimierung
- [rake](https://rubygems.org/gems/rake "rake") als kleines Build tool zum deployen
- [shariff](https://github.com/heiseonline/shariff "shariff") für die Teilen Links auf facebook und twitter
- [d3]( "d3"): flexible Datenvisualisierung mit JavaScript


# Deployment

Ich benutze Umgebungsvariablen `HUGO_ENV` mit den Wert `production`.
Um das Deployment durchzuführen einfach folgenden Befehl ausführen:


```
export HUGO_ENV='production' && hugo && rake deploy && export HUGO_ENV='staging' && hugo
```


# Deployment mit Zukunfsblogposts

```
export HUGO_ENV='production' && hugo --buildFuture && rake deploy_future && export HUGO_ENV='staging' && hugo
```


# hugo installieren

```
cd /tmp && wget https://github.com/gohugoio/hugo/releases/download/v0.59.0/hugo_0.59.0_Linux-64bit.deb

sudo dpkg -i hugo_0.59.0_Linux-64bit.deb
```

References: https://www.howtoforge.com/tutorial/how-to-install-hugo-site-generator-on-ubuntu/


# Sonstige Vereinbarungen

- Bilder haben eine Größe von 800px x 555px (zum Skalieren hab ich [gimp](https://www.gimp.org/ "gimp") verwendet)
- Bilder müssen als PNG vorliegen, damit es auch mit den twitter sharing klappt

- d3 Beispiel für Einnahmen und Einkäufe Januar 2021
  - Basis-Diagram: https://jsfiddle.net/354zw0d2/9/
  - Legende basteln: https://www.d3-graph-gallery.com/graph/custom_legend.html

