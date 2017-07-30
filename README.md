# Hausarbeiten als LaTeX-Quellcode

2017 habe ich zwei Hausarbeiten geschrieben.  Als langjährigen Nutzer
von LilyPond und Ubuntu stand für mich dabei fest, dass ich dabei
XeLaTeX nutzen wollte, und so habe ich mich damit vertraut gemacht
und bin mit den Ergebnissen sehr zufrieden.  Als Hilfe für andere,
die ähnliches unternehmen wollen, und weil ich mein Teil für die
freie Verfügbarkeit der Ergebnisse wissenschaftlicher Tätigkeit an
öffentlichen Universitäten tun möchte, stelle ich nun den Quellcode
der Arbeiten zur Verfügung.

## Erzeugung von pdf-Dateien

Für die Kompilation werden xelatex und biber benötigt; ich habe eine aktuelle Version, Stand Juli 2017, von TeXLive verwendet.  Speziell
erzeugt die Kombination der folgenden Befehle, jeweils im Verzeichnis
einer der Arbeiten ausgeführt, korrekte pdf-Dateien:

```
xelatex master.tex
biber master
xelatex master.tex
xelatex master.tex
```

Für die Beethoven-Arbeit müssen zuvor noch die LilyPond-Beispiele
kompiliert werden:

```
cd nbs
lilypond 1-motivik.ly 2-var-d-moll.ly 3-parallelen-zu-op-61.ly
cd ..
```

## Danksagung

Herzlicher Dank ergeht an alle, die TeXLive und die zugehörige
Dokumentation erstellt haben; insbesondere möchte ich Urs Liska,
für das `lilyglyphs`-Paket, Dominik Wassenhofen für den
`footnote-dw`-Zitierstil und Manfred Dings für das Beispiel der
Verwendung des `float`-Pakets für Notenbeispiele danken.
