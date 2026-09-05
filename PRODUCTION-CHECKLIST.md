# EarnTask Production Stage 4

The backend now uses PostgreSQL instead of the development `data.json` store.

## Deploy
1. Create a PostgreSQL database.
2. Run `schema.postgres.sql` against it.
3. Set `DATABASE_URL`, `JWT_SECRET`, and `ADMIN_KEY`.
4. Run `npm install` inside `backend/`.
5. Start with `npm start`.
6. Check `/api/health`; it should report `database: postgresql`.
7. Use HTTPS in production and set `FRONTEND_ORIGIN` to the exact site origin.

## Still required before real-money launch
- Approved rewarded-task/ad provider and verified server callbacks.
- Approved payout provider and server-side webhook verification.
- Strong admin authentication/roles rather than a shared admin key.
- Rate limits, fraud detection, audit logs, account recovery and backups.
- Accurate Terms, Privacy Policy and payout/refund rules.
- Staging tests for duplicate rewards, concurrent withdrawals and recovery.
- Never put database/payment/ad secrets in frontend code.
