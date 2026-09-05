# Stage 9 — Provider-neutral payout adapter

The backend now has one payout interface: `createPayout({amount, upiId, reference})`.

Set `PAYOUT_PROVIDER=mock` only for staging. For production, choose a compliant payout provider and implement its official API/SDK inside `backend/providers.js`. Keep API credentials in `.env`/secret storage; never expose them to the browser.

Before enabling real payouts, complete provider KYC/business verification, webhook signature verification, idempotency, reconciliation, limits, and failure/refund handling.
