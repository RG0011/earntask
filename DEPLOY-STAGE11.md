# EarnTask Stage 11 – GitHub + Render + Neon

## What is ready
- One Render Web Service serves the website and backend.
- PostgreSQL is external (Neon).
- Render only needs the GitHub repository and 3 secret values plus PGSSL=require.

## Render settings
Build Command: `npm install`
Start Command: `npm start`

Environment variables:
- DATABASE_URL = Neon connection string
- JWT_SECRET = a long random secret chosen by the owner
- ADMIN_KEY = a long random admin key chosen by the owner
- PGSSL = require

## Database
Run both SQL files in the Neon SQL Editor, in this order:
1. `schema.postgres.sql`
2. `schema.provider.sql`

## Important
This package is still a staging/prototype deployment. Real ad-provider verification and real payout-provider integration must be completed and tested before accepting real money or promising withdrawals.
