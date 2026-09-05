# EarnTask Stage 6 — Admin + PostgreSQL API integration

Added/finished:
- PostgreSQL column names aligned with backend (`wallet_balance`)
- Correct daily task-completion schema
- Server-side admin-key checks on admin APIs
- Admin task create/enable/disable UI
- Admin user listing
- Withdrawal approve/reject processing
- Rejected withdrawals return reserved balance to the user
- Admin dashboard stats

Run:
1. Create a PostgreSQL database.
2. Run `schema.postgres.sql`.
3. Set `DATABASE_URL`, `JWT_SECRET`, and `ADMIN_KEY` from `.env.example`.
4. `cd backend && npm install && npm start`
5. Open `/admin.html` and enter the server-side ADMIN_KEY.

Production requirements still remaining: HTTPS, rate limiting, audit logs, proper secret management, account recovery, real verified task/ad callbacks, compliant payout provider, and legal/compliance review.
