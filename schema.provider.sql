CREATE TABLE IF NOT EXISTS referrals (
 id UUID PRIMARY KEY,
 referrer_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
 referee_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
 created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
 UNIQUE(referrer_id, referee_id)
);

ALTER TABLE task_completions ADD COLUMN IF NOT EXISTS reward NUMERIC(12,2) NOT NULL DEFAULT 0;

CREATE TABLE IF NOT EXISTS provider_events (
 id UUID PRIMARY KEY,
 provider VARCHAR(80) NOT NULL,
 provider_event_id VARCHAR(200) UNIQUE NOT NULL,
 event_type VARCHAR(120) NOT NULL,
 payload JSONB NOT NULL,
 created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_provider_events_created_at ON provider_events(created_at DESC);
