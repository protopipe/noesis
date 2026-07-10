# External Data Marketplace Whitepaper

Derived from Protopipe Noesis

Status: draft
Date: 2026-07-07

## Executive Summary

Protopipe needs external evidence to connect strategy work to market reality. Internal telemetry can explain what happened inside the organization. It cannot, by itself, explain competitor movement, marketplace pricing, product rankings, customer review dynamics, weather effects, supplier signals, local footfall, industrial sensor states, public events, or regulatory changes.

The problem is not only access. External data is expensive to collect and often harder to verify. A provider may invest in scraping infrastructure, platform access, sensors, normalization, latency management, data cleaning, and domain expertise. A buyer still needs to know whether the data is scoped correctly, measured consistently, attributable, timely, corrected when wrong, and reliable for the specific topic in question.

The marketplace vision is an ecosystem layer around Protopipe. It lets specialized providers publish schema-bound external evidence, sell access to it, build topic-specific reputation, and expose correction and dispute history. Protopipe remains the strategic learning platform. It consumes external evidence context and relates it to hypotheses, KPI trees, experiments, and decision records.

This is not a claim that blockchain turns data into truth. Blockchain or similar verifiable infrastructure can prove integrity, provenance, timestamps, commitments, licensing, payment, and dispute outcomes. Truth remains domain-specific and must be evaluated through validation rules, reference sources, aggregation, corrections, expert review, and governance.

## Noesis Basis

This publication is downstream material. It derives from three Noesis entries:

- `doc/05_problems/external-evidence-is-costly-and-hard-to-verify.md`
- `doc/07_mechanics/no-external-signal-without-provenance.md`
- `doc/08_capabilities/external-evidence-context.md`

The canonical constraint is:

> No external signal should enter strategic reasoning without provenance.

For Protopipe, provenance includes source identity, observation time, collection time, scope, method, schema, confidence, verification status, correction history, dispute status, and relation to the relevant hypothesis, KPI, experiment, or decision record.

## Problem

External evidence has two cost structures.

Collection cost includes access, instrumentation, platform limits, sensor deployment, normalization, coverage, cleaning, latency, and operational continuity.

Verification cost includes provenance, schema clarity, source comparison, historical accuracy, correction handling, bias detection, dispute handling, and domain-specific validation.

These costs are usually hidden once data appears inside a dashboard. A number in a KPI tree can look precise even when the underlying signal is ambiguous. A provider can be reliable in one topic and weak in another. A corrected data point can overwrite the earlier evidence state that shaped a prior decision. A technically valid hash can prove that a dataset did not change, but not that the dataset was true.

## Marketplace Thesis

The marketplace should make collection and verification explicit economic objects.

Providers should be able to monetize costly external evidence. Buyers should be able to compare providers by topic, method, price, SLA, latency, dispute history, and reputation. Protopipe should be able to consume the evidence without absorbing the marketplace into its core.

The marketplace handles:

- provider identity and attestations
- topic definitions and schemas
- data commitments and timestamps
- access control and licensing
- pricing and settlement
- topic-level reputation
- correction events
- dispute history
- optional oracle aggregation

Protopipe handles:

- external evidence context
- KPI relation
- hypothesis relation
- experiment relation
- decision record relation
- confidence-aware strategic reasoning

## Target Architecture

| Layer | Responsibility | Notes |
|---|---|---|
| Provider Layer | Identify and attest data providers | Wallet, public key, organization identity, optional certification |
| Topic Layer | Define exactly what a signal means | Topic ID, schema, unit, market, region, time window, method, validation rules |
| Data Layer | Store and deliver raw data | API, database, object storage, IPFS, Arweave, or other off-chain storage |
| Commitment Layer | Prove integrity and timestamp | Hashes, Merkle roots, provider signatures, storage references |
| Access Layer | Meter and authorize use | API keys, capability tokens, license tokens, data tokens, proxy access |
| Reputation Layer | Track reliability by topic | Accuracy, latency, availability, corrections, disputes, slashing |
| Dispute Layer | Challenge and correct evidence | Evidence submission, arbitration, refunds, penalties, correction events |
| Protopipe Integration Layer | Convert data into decision evidence | External Evidence Context inside Reality Signal Matrix and KPI Tree |

## Marketplace Mechanics

### Topic Contracts

Data must not be sold as vague categories such as "weather", "news", or "market data". Each sellable topic needs an explicit contract.

Example topic fields:

- topic ID
- data type
- unit
- market, venue, geography, asset, or physical location
- observation window
- collection method
- source class
- schema version
- quality flags
- validation rules
- allowed correction process

For Sellytics-like Amazon market data, a topic could describe competitor price for a specific ASIN, marketplace, seller set, currency, availability rule, and observation window.

### Provider Reputation by Topic

Provider reputation must be topic-specific. A provider can be strong for Amazon marketplace data and irrelevant for weather data.

Possible scoring model:

```text
topic_reputation =
  0.30 * historical_accuracy
+ 0.20 * availability_sla
+ 0.15 * latency_sla
+ 0.15 * correction_quality
+ 0.10 * dispute_outcomes
+ 0.10 * source_diversity
- slashing_penalties
```

The score is not a truth score. It is a decision support signal that describes historical provider behavior in a defined topic domain.

### Commitments and Integrity

Raw datasets should normally stay off-chain. The marketplace stores commitments on-chain or in another verifiable ledger:

- provider ID
- topic ID
- schema version
- observation timestamp
- publication timestamp
- dataset hash or Merkle root
- storage reference
- provider signature
- license terms
- price or subscription terms
- dispute window

This proves that a provider committed to a specific dataset at a specific time. It does not prove that the dataset accurately described reality.

### Access and Payment

After payment, the buyer should not receive the provider's private key. The buyer receives a scoped access mechanism:

- dataset-specific decryption key
- temporary API token
- capability token
- license token
- data token
- access through a verifying proxy

Access should be auditable, revocable where possible, and tied to the license terms of the purchased topic or dataset.

### Corrections and Disputes

Corrections must be append-only. Old evidence should not disappear, because prior decisions may have depended on it.

A dispute flow should define:

- who can challenge a dataset
- dispute window
- required evidence
- arbitration path
- automatic checks versus expert review
- rating impact
- refund conditions
- provider penalty or slashing conditions
- correction publication rules

### Oracle Aggregation

Some topics may also expose aggregated values for smart contracts, for example a market price, weather measure, settlement result, or event outcome.

Aggregation options include:

- median
- weighted median
- VWAP
- multi-source consensus
- reputation-weighted calculation
- optimistic assertion with dispute window

Oracle values are downstream products of the marketplace. They should not replace the richer evidence context that Protopipe needs for strategic learning.

## Data Classes

| Data class | Collection difficulty | Verification difficulty | Marketplace emphasis |
|---|---|---|---|
| Marketplace prices | Medium to high | Medium | Time window, seller set, availability, snapshot integrity |
| Product rankings | High | Medium to high | Search context, geography, personalization controls |
| Reviews and ratings | Medium | Medium | Source, time, moderation effects, correction history |
| Weather data | Medium | Low to medium | Station/source identity, local granularity, measurement method |
| News and events | High | High | Source ranking, evidence trail, delayed correction |
| Industrial sensor data | High | High | Sensor identity, calibration, hardware attestation, anomaly checks |
| Footfall and retail behavior | High | Medium | Sensor method, privacy constraints, aggregation quality |
| Financial market prices | Medium to high | Low to medium | Venue set, latency, liquidity, aggregation method |

## Technology Landscape

This section compares current technologies with the Protopipe marketplace vision.

| Technology | Current strength | Gap against the vision | Fit |
|---|---|---|---|
| Sellytics | Amazon market data API for competitor prices, product details, rankings, ratings, and reviews | Provider-specific; does not by itself define a multi-provider reputation, dispute, and evidence market | Strong first provider candidate for commercial marketplace signals |
| Chainlink Data Streams | Low-latency off-chain market data with on-chain verification, pull-based access, report schemas, REST/WebSocket/SDKs | Primarily oracle/data-stream infrastructure; not a Protopipe evidence marketplace or decision context | Strong reference for verifiable data streams and on-chain report verification |
| Pyth Price Feeds | Real-time financial data from many first-party providers, verified on many blockchains, push and pull updates | Focused on financial market data, not arbitrary enterprise evidence topics | Strong reference for publisher networks and low-latency financial feeds |
| Ocean Protocol | Data NFTs and ERC20 datatokens as access mechanisms for data assets | Web3-native data asset model; does not solve Protopipe-specific evidence context by itself | Useful reference for licensing and tokenized access |
| UMA Optimistic Oracle | Optimistic assertion and dispute pattern for subjective or event-based data | Better for challengeable assertions than high-volume raw data marketplaces | Useful reference for dispute windows and arbitration mechanics |
| IPFS | Content-addressed, verifiable data addressing and transfer | Protocol, not a storage provider; does not handle payment, SLA, reputation, or truth | Useful for dataset references and content integrity |
| Lit Protocol | Chain-secured programmable runtime, conditional signing, encrypted secrets, custom oracles | Separate trust and operations model; enterprise governance must be evaluated | Useful for controlled access, scoped keys, and programmable verification |

## Recommended Direction

The first version should not start with a full token economy.

Recommended sequence:

1. Define the Protopipe External Evidence Contract.
2. Integrate one trusted provider such as Sellytics as a curated evidence source.
3. Require source, timestamp, scope, method, schema, confidence, and correction status for every imported external signal.
4. Add signed datasets and hashes before adding payment or staking.
5. Introduce topic-level provider reputation once multiple providers or repeated observations exist.
6. Add dispute and correction workflows before claiming marketplace trust.
7. Consider blockchain commitments, access tokens, or oracle aggregation only where multi-party trust boundaries justify them.

## Example Evidence Contract

```json
{
  "signalId": "external.amazon.de.price.asin.B0EXAMPLE.2026-07-07T10:00Z",
  "providerId": "sellytics",
  "topicId": "amazon.de.price.competitor.asin",
  "schemaVersion": "1.0.0",
  "observedAt": "2026-07-07T10:00:00Z",
  "collectedAt": "2026-07-07T10:01:22Z",
  "scope": {
    "marketplace": "amazon.de",
    "assetType": "asin",
    "assetId": "B0EXAMPLE",
    "currency": "EUR"
  },
  "method": "observed_offer_price_snapshot",
  "confidence": "provider-verified",
  "verificationStatus": "not-disputed",
  "integrity": {
    "hash": "sha256:...",
    "signature": "..."
  },
  "correctionOf": null,
  "kpiRelation": "competitor_price_delta"
}
```

## Critical Boundary

The marketplace can make external evidence more accountable. It cannot remove the need for judgment.

Integrity is not truth. Provenance is not accuracy. Reputation is not certainty. Access control is not compliance. Aggregation is not context.

Protopipe should use the marketplace as an evidence supply layer, not as a substitute for accountable decision-making.

## Sources

- Sellytics: <https://sellytics.com/>
- Chainlink Data Streams: <https://docs.chain.link/data-streams>
- Pyth Price Feeds: <https://docs.pyth.network/price-feeds>
- Ocean Protocol Datatokens: <https://docs.oceanprotocol.com/developers/contracts/datatokens>
- UMA Optimistic Oracle: <https://docs.uma.xyz/developers/optimistic-oracle>
- IPFS Concepts: <https://docs.ipfs.tech/concepts/what-is-ipfs/>
- Lit Protocol: <https://developer.litprotocol.com/>
