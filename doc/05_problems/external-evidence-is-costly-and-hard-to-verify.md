# External Evidence Is Costly and Hard to Verify

## The Problem

Protopipe needs external reality signals to reason about strategy, markets,
competition, customers, supply chains, and operational environments.

Many of these signals are expensive to collect and even harder to verify.
They often originate outside the organization, outside the product system,
and outside the governance structures that normally make internal data
auditable.

Examples include competitor prices, marketplace rankings, product reviews,
weather data, local footfall, industrial sensor readings, news events,
commodity prices, supplier signals, and regulatory updates.

The organization may be able to buy or retrieve such data, but it often
cannot easily know whether the data is complete, timely, correctly scoped,
methodologically sound, or still trustworthy after corrections emerge.

---

## Why This Happens

External evidence has two separate cost structures.

Collection cost comes from access, instrumentation, normalization, latency,
coverage, data cleaning, and ongoing operation. A provider may need platform
access, scraping infrastructure, sensors, data partnerships, domain expertise,
or continuous monitoring to produce the signal at all.

Verification cost comes from provenance, schema clarity, source comparison,
historical accuracy, correction handling, bias detection, dispute handling,
and domain-specific validation. The more consequential a decision becomes,
the more important this second cost becomes.

The difficulty is amplified because external data is often contextual.
A price depends on market, region, time, seller set, availability, campaign
state, and measurement method. A sensor value depends on calibration,
placement, hardware integrity, and local conditions. A news signal may only
become clearly true or false after later evidence appears.

---

## Observable Symptoms

- Teams use external data without knowing how it was collected.
- Metrics with similar names are treated as comparable even when their
  measurement methods differ.
- Decisions cite external signals without preserving source, timestamp,
  schema, or confidence.
- Providers are trusted globally although their reliability is topic-specific.
- Corrections overwrite earlier assumptions instead of becoming visible in
  the decision history.
- Data purchases are evaluated by availability and price, but not by
  verifiability or dispute history.
- Expensive external evidence becomes a one-off artifact instead of a reusable
  signal with an accountable lifecycle.

---

## Why This Blocks Fast Delivery and Learning

Fast learning depends on feedback that can be trusted enough to act on and
challenged enough to improve.

When external evidence is opaque, teams either overtrust it or ignore it.
Both outcomes slow learning. Overtrust creates false certainty and can push
strategy in the wrong direction. Undertrust forces teams to repeat collection
work, delay decisions, or fall back to internal data that cannot explain the
external reality the strategy depends on.

Without provenance, schema discipline, correction history, and confidence
context, Protopipe cannot reliably connect external evidence to hypotheses,
experiments, KPI trees, and decision records.

---

## Why This Is a Systemic Problem

The problem recurs whenever strategic learning crosses organizational
boundaries.

Internal systems can be instrumented and governed directly. External reality
cannot. The organization must rely on providers, markets, platforms, sensors,
or public sources whose incentives, methods, and failure modes differ from
its own.

This makes external evidence structurally fragile. The issue is not a missing
integration or a single unreliable provider. The issue is that valuable
external data requires both collection and verification, and those two forms
of work are usually hidden from the decision context.
