![Finanzmatze](https://raw.githubusercontent.com/wikimatze/finanzen/master/static/logo.png "Finanzmatze")


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
- [onepress](https://themes.gohugo.io/onepress/ "onepress") Template Vorlage für diesen Blog
- [hashover](https://github.com/jacobwb/hashover "hashover") für die Kommentare
- [matomo](https://matomo.org/ "matomo") fürs tracking
- [inkscape](https://inkscape.org/ "inkscape") wurde zur Erstellung des Logos verwendet
- [gimp](https://www.gimp.org/ "gimp") zum Verkleinern der Bilder
- [google-webmaster](https://www.google.com/webmasters "google-webmaster") fürs Tracking und Seo Optimierung
- [rake](https://rubygems.org/gems/rake "rake") als kleines Build tool zum deployen
- [shariff](https://github.com/heiseonline/shariff "shariff") für die Teilen Links auf facebook und twitter


# Deployment

Ich benutze Umgebungsvariablen `HUGO_ENV` mit den Wert `production`.
Um das Deployment durchzuführen einfach folgenden Befehl ausführen:


```
export HUGO_ENV='production' && rake deploy && export HUGO_ENV='staging'
```


# Sonstige Vereinbarungen

- Bilder haben eine Größe von 800px x 555px (zum Skalieren hab ich [gimp](https://www.gimp.org/ "gimp") verwendet)
