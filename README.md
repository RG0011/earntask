# EarnTask – Stage 11

This build is prepared for **GitHub → Render Web Service → Neon PostgreSQL** deployment.

### Render
- Build: `npm install`
- Start: `npm start`
- Environment: `DATABASE_URL`, `JWT_SECRET`, `ADMIN_KEY`, `PGSSL=require`

See `DEPLOY-STAGE11.md` for the simple deployment steps.

> Staging note: real ad verification and real payout-provider integration are not yet enabled. Do not treat demo/staging rewards as real money.

# EarnTask — Connected Stage 2

This package connects the EarnTask website to a server-side Node.js API.

## Run locally
1. Install Node.js 18+.
2. Open a terminal in `backend/`.
3. Run `npm install` (there are no external runtime dependencies).
4. Optional: set `ADMIN_KEY` to a strong secret.
5. Run `node index.js`.
6. Open `http://localhost:3000`.

The backend stores development data in `backend/data.json`.

## Included
- Server-side registration/login
- Password hashing with Node scrypt
- Token-based login session
- Server-side task completion and daily duplicate protection
- Server-side wallet ledger
- Withdrawal requests with UPI validation
- Referral-code capture on registration
- Protected admin stats/task endpoints using `ADMIN_KEY`
- Website served by the same Node server

## Before real-money public launch
Replace the JSON file with PostgreSQL/MySQL, add HTTPS, stronger session/auth controls, rate limiting, audit logs, fraud prevention, proper admin roles, verified task/ad-provider callbacks, and an approved payout provider. Never put provider secrets in browser JavaScript. Do not reward invalid ad clicks or manipulate ad traffic.
