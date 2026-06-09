
_Protopipe nutzt Swimlanes nicht als Deko, sondern als strategisches Visualisierungsprinzip._

Diese Datei beschreibt die visuelle Grammatik der Swimlanes in Protopipe. Ziel ist es, Konsistenz, Wiedererkennbarkeit und Funktionalität zu gewährleisten – unabhängig von Anwendungsbereich oder UI-Komponente.

---

## 🎯 Bedeutung der Swimlanes

| Element              | Bedeutung                                                                 |
|----------------------|---------------------------------------------------------------------------|
| **Lane**             | Eine Domäne (z. B. Team, Verantwortungsbereich, Abteilung)                |
| **Token/Step**       | Ein Objekt (Hypothese, Feature Step, Decision), das sich in der Lane bewegt |
| **Übergang**         | Repräsentiert einen Kontroll- oder Verantwortungshandover                 |
| **Grenze**           | Harte Domänengrenze → keine implizite Kopplung, nur explizite Schnittstellen |

---

## 🧱 Visuelle Konventionen

| Aspekt         | Konvention                                                   |
|----------------|--------------------------------------------------------------|
| **Ausrichtung**| Vertikal bevorzugt für Klarheit bei Entscheidungen im Zeitverlauf |
| **Farben**     | Lane-Grenzen bleiben neutral. Probleme, Experimente und aktive Veränderung sind Pink (`#f7436e`). Learning, Evidenz und validierte Wirkung sind Gold (`#f6c56f`). |
| **Typografie** | Helvetica für Labels, Polentical für aktive Elemente oder States |
| **Icons**      | Minimalistisch, Fokus auf Bedeutung (z. B. „?“, „✔“, „↻“)     |

---

## 🔁 Anwendungskontexte

- Landingpage Hero-Sektion (als Metapher)
- KPI-Tree oder Impact-Mapping Visualisierung
- Hypothesen-Grid mit Lane-Struktur
- Review-Dashboard mit Swimlane-Übersicht
- Interaktive Prozessdarstellung

Farben beschreiben die Bedeutung eines Tokens, nicht seine bloße Aktivität:

- Ein aktives Experiment bleibt pink.
- Das daraus gewonnene Learning wird golden.
- Unbewertete Prozessschritte und Entscheidungen bleiben neutral.

---

## 📐 Designvorgaben (Sketch)

```
╔════════════════════════════════════════════╗
║           Domäne A (Frontend)             ║
╠═══╤════════════════════╤═══════════════════╣
║ # │ Hypothese          │ Status           ║
╟───┼────────────────────┼──────────────────╢
║ 1 │ Button Redesign    │ ✅ deployed      ║
║ 2 │ Inline Feedbackbox │ 🧪 A/B Test      ║
╚═══╧════════════════════╧═══════════════════╝
```

---

## 💡 Gestaltungsleitsatz

> _„Swimlanes visualisieren Verantwortung. Sie zeigen nicht nur, **was** passiert, sondern **wo** und **wer** betroffen ist.“_

---

## 📁 Weiterführend

Siehe auch:
- [`ui-principles.md`](../ui/ui-principles.md)
- [`brand-foundation.md`](../brand/brand-foundation.md)
