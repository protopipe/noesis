# External Evidence Context

Protopipe must be able to preserve the context that makes external evidence
usable for strategic learning.

This capability is solution-neutral. It does not prescribe a marketplace,
blockchain, provider network, oracle, storage system, or integration pattern.

## Capability

Protopipe must be able to represent external signals together with the
information needed to interpret, compare, challenge, and reuse them.

External evidence context includes:

- source identity
- collection timestamp
- observation timestamp
- scope and boundaries
- measurement method
- schema or metric definition
- confidence or verification status
- correction history
- dispute status
- relation to a hypothesis, KPI, experiment, or decision record

## Why It Matters

External evidence is valuable because it connects strategy to reality outside
the organization. It is risky because that reality is not directly governed by
the organization.

Without this capability, external data becomes indistinguishable from internal
telemetry once it enters Protopipe. The platform would lose the ability to say
why a signal was trusted, how it was measured, whether it was later corrected,
and how strongly it should influence a decision.

## Boundary

This capability covers the reasoning context around external evidence.

It does not cover:

- selecting external providers
- operating a data marketplace
- deciding pricing or licensing models
- implementing payment, staking, slashing, or tokenization
- asserting that a signal is objectively true

Those are downstream design and implementation decisions derived outside
Noesis.
