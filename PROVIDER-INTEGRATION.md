# EarnTask Stage 7 — Provider-ready rewards & payouts

Added secure, provider-neutral webhook endpoints:
- `POST /api/provider/task-webhook` — signed task completion callback
- `POST /api/provider/payout-webhook` — signed payout status callback
- HMAC-SHA256 signatures via `X-Provider-Signature`
- Idempotency through `provider_events.provider_event_id`
- Server-side reward crediting and payout failure refund

This is NOT a live payment/ad integration. A real approved provider account and its official API/webhook specification must be configured before real payouts or rewards are enabled.

Never reward users for invalid ad clicks or incentivize clicking your own ads. Use the provider's approved rewarded/task format and terms.
