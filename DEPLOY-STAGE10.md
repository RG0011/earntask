# EarnTask Stage 10 — Deployment

Recommended first production setup:
- Node.js web service
- Managed PostgreSQL
- HTTPS
- Environment variables stored in the hosting dashboard

Steps:
1. Create a PostgreSQL database with your hosting provider.
2. Create a Node web service and upload/push this project.
3. Set DATABASE_URL, JWT_SECRET and ADMIN_KEY as server environment variables.
4. Run the PostgreSQL schema/migrations.
5. Confirm health/login/task/withdrawal flows in staging.
6. Only after testing, connect a real approved payout provider.
7. Never commit `.env` or API secrets to the project.

The included render.yaml is a deployment template; it does not create accounts or provision services automatically.
