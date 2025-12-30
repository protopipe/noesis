# The First Protopipe Experiment in an Enterprise Context

In enterprise environments, Protopipe does not start with a big transformation.
It starts with a **deliberate, low-risk intervention**.

The goal of the first phase is not scale.
The goal is **validated impact under real conditions**.

---

## Why Start at the Frontend

Protopipe typically recommends starting with a **complex, business-critical frontend component**.

Reasons:
- The frontend is usually upstream.
- UX and behavior are immediately visible.
- Conversion, adoption, and engagement KPIs are affected here.
- Feedback cycles are shortest where users interact with the system.

If key KPIs are influenced, learning is fast.
If learning is fast, credibility follows.

---

## Step 1: Make the Golden Circle Explicit (Company-Wide)

Before any technical migration starts, Protopipe makes the **Golden Circle explicit for the entire organization**:

- Why does the company exist?
- What problems does it solve?
- What outcomes truly matter?

If a Golden Circle already exists, it is validated and sharpened.
If it does not, this step alone creates alignment that was previously implicit.

This is a **prerequisite**, not an experiment artifact.

---

## Step 2: Identify and Prioritize KPIs

Next, KPIs are identified **on a company level**.

Not all KPIs are equal.
For the first experiment, Protopipe focuses on:

- KPIs that are closest to real business impact
- KPIs that can be influenced by a single component
- KPIs that can be measured continuously

From this set, a **small number of high-leverage KPIs** is selected for the first experiment.

KPIs are treated as hypotheses, not truths.

---

## Step 3: Define the Strategic Experiment

With Golden Circle and KPIs in place, strategy becomes operational.

The organization formulates a clear experiment statement:

> If we migrate component X to Protopipe,  
> and measure KPI Y with Protopipe mechanisms,  
> we expect time to market to improve  
> from *N weeks or months* to *M weeks*  
> without negative impact on other critical KPIs.

This aligns:
- management intent
- product direction
- technical execution

Strategy is no longer communicated via slides,
but via a **measurable commitment**.

---

## Step 4: Migrate the Component and Run the Experiment

The experiment is designed to be:
- isolated
- reversible
- observable
- safe to run on production

Typical migration and validation techniques include:

- **Edge-Side Excludes**  
  Existing HTML is loaded from the original origin,  
  specific parts are removed, and replaced with Protopipe-managed content.  
  This allows incremental frontend migration without a full rewrite.

- One or more dedicated Protopipe-managed pages

- Click-dummy visualizations to align stakeholders early

- Consumer Driven Contract Tests (CDCT) to stabilize backend interaction

- A **Production Review Environment**  
  The experiment runs on **real production systems**,  
  controlled via **dedicated test groups** (developers and stakeholders).  
  No separate “production-like” environment is required.

- A/B testing on production to:
  - validate positive impact
  - exclude negative effects
  - preserve operational safety

---

## Step 5: Make Progress Visible

Progress is communicated explicitly:

- learnings and measurements are shared continuously
- results are discussed in dailies across roles
- decisions are explained through data, not opinion

The first visible result is not speed.
It is **shared understanding and trust in the data**.

---

## Step 6: Expand Through New Experiments

Once the first experiment is completed:

- results are communicated across the organization
- new experiments are formulated
- additional components are migrated incrementally

Protopipe scales through **evidence**, not mandate.

Transformation is not rolled out.
It **emerges through validated experiments**.

---

## What Changes After the First Experiment

After the first successful Protopipe experiment, organizations typically observe:

- clearer communication between management, product, and engineering
- faster alignment without additional coordination layers
- reduced fear of change due to reversibility
- confidence built on evidence, not promises

At this point, Protopipe stops being a pilot
and starts becoming a **decision system**.

