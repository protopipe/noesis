# UI Principles

Diese Datei definiert die UI-Grundsätze von **Protopipe**. Sie dienen als verbindliche Leitplanken für alle UI/UX-Entscheidungen in Landingpages, Dashboards, Demos und interaktiven Tools.

---

## 🎯 Zielbild

Protopipe steht für **Transparenz**, **Kontrolle** und **Geschwindigkeit** – sowohl für Developer als auch C-Level. Die UI bringt diese Werte auf allen Ebenen visuell zum Ausdruck.

---

## 🧱 Designprinzipien

| Prinzip                  | Beschreibung |
|--------------------------|--------------|
| **Visualisierte Verantwortung** | Swimlane-Design als Grundstruktur. Prozesse werden nicht linear, sondern **domänengetrennt** und **rollenbasiert** dargestellt. |
| **Fokus auf Wirkung statt Aktivität** | Inhalte werden nach Relevanz, nicht nach Fülle priorisiert. Beispiele: KPI-Tree, Hypothesenraster, Feature-Deltas statt Backlogs. |
| **Klares visuelles Vokabular** | Atomic Design mit klar definierten Atomen (Buttons, Labels), Molekülen (Kacheln, Charts) und Organismen (Hero-Sections, Cockpit-Panels). |
| **Contrast by Intent** | Dunkle Hintergründe signalisieren Kontext oder Macht (z. B. KPI-Cockpit), helle Flächen stehen für Interaktion, Fokus und Lesbarkeit. |
| **Emotionalität für Entscheider** | High-End-Wertigkeit durch Lichtführung, gezielte Schatten, markante Typografie und eine Farbkombination aus Tiefschwarz und Signalrot. |
| **Konsequent responsive** | Mobile Design nicht als Ableitung, sondern gleichwertig. Touchflächen, vereinfachte Swimlane-Navigation, fokussierte KPIs. |
| **Sofortiges Feedback** | Toolzustände, A/B-Auswertungen und Review-Status sind visuell nachvollziehbar. Jeder Klick hat eine direkte Auswirkung. |

---

## 🖼 Visuelle Metaphern

- Swimlane = Domänengrenze + Verantwortung
- Farbverlauf #de083d → #f7436e = Bewegung, Spannung, Übergang
- Schwarz (#081a17) = Kontrolle, Tiefe, Fokus
- Typografie = Polentical Neon Bold (Brand), Helvetica Neue (Lesbarkeit)

---

## 💡 Leitsatz

> _„Das Swimlane-Konzept ist die beste visuelle Repräsentation für das, was Protopipe leistet: Verantwortung sichtbar machen, Domänengrenzen erkennen, Prozesse entwirren.“_

---

## 🛠 Komponentenbibliothek

Alle UI-Komponenten orientieren sich an:

- [ ] Wiederverwendbarkeit (Atomic Design)
- [ ] Testbarkeit (z. B. mit Storybook)
- [ ] Sichtbarkeit in Swimlane-Kontexten
- [ ] Verfügbarkeit als Design Tokens (Farbe, Typo, Spacing)

---

## 📁 Weiterführend

Siehe auch:

- [`08_design/brand/brand-foundation.md`](../brand/brand-foundation.md)
- [`08_design/guidelines/swimlane-visual-grammar.md`](../guidelines/swimlane-visual-grammar.md)

