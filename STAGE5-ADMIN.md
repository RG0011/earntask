# EarnTask Stage 5 — Admin UI

Added:
- admin-login.html
- admin.html
- responsive dashboard
- user/task/withdrawal statistics
- withdrawal approve/reject controls
- token-based access in the UI

Important:
The frontend cannot make the backend secure by itself. The server must enforce admin role checks on every `/api/admin/*` endpoint. Do not expose admin secrets in browser code.
