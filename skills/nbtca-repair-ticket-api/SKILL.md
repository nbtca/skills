---
name: nbtca-repair-ticket-api
description: Use this skill whenever the user needs repair ticket (event) management on the NBTCA production API at https://api.nbtca.space, including listing/creating/updating events, validating event status/action transitions, handling member/client event queues, and debugging auth or payload issues. Always prefer live OpenAPI from /openapi.yaml or /openapi.json and avoid relying on repository docs folders because they may be outdated.
---

# NBTCA Repair Ticket API skill

Use this skill to safely and quickly work with the NBTCA API.

## What this skill does

- Uses the production API base URL: `https://api.nbtca.space`
- Discovers endpoint details from live OpenAPI:
  - `https://api.nbtca.space/openapi.yaml`
  - `https://api.nbtca.space/openapi.json`
  - docs UI at `https://api.nbtca.space/docs`
- Handles PAT-based Logto authentication and obtains a Bearer token
- Calls protected endpoints with correct headers
- Applies the valid event state/action model in `references/event-lifecycle.md`

## Important context

- Do not trust `docs/` in the repo as source of truth for endpoint definitions.
- Use the live OpenAPI spec to confirm request/response fields before sending calls.
- For PAT auth, read user PAT from env var `NBTCA_PAT`.

## Required env vars

- `NBTCA_PAT`: user PAT from Logto (required)

Optional overrides:

- `NBTCA_LOGTO_ENDPOINT` (default `https://auth.app.nbtca.space`)
- `NBTCA_LOGTO_APP_ID` (default `a3tt7oyxeounfiqqugiah`)

## Auth workflow (PAT -> access token)

1. Read PAT from `NBTCA_PAT`.
2. Exchange PAT at `POST {LOGTO_ENDPOINT}/oidc/token` using token exchange grant.
3. Request OIDC scopes for `/oidc/me` compatibility:
   - `scope=openid profile email roles`
4. Use returned `access_token` in API requests as:
   - `Authorization: Bearer <access_token>`

Use script:

- `scripts/get_access_token_from_pat.sh`

## API request defaults

- Base URL: `https://api.nbtca.space`
- Typical headers:
  - `Accept: application/json, application/problem+json`
  - `Authorization: Bearer <access_token>` for protected routes

## Standard operating flow

1. Resolve exact endpoint/path/params from live OpenAPI.
2. Check auth requirement (`Authorization` header in OpenAPI params).
3. If auth needed, mint token from `NBTCA_PAT`.
4. Execute request with `curl`.
5. If non-2xx, return status code + problem payload and suggest a fix.

## Output style for API tasks

- Report concise request summary:
  - method, URL, key headers (redact secrets), body/query
- Report response summary:
  - status code, key fields, or error details
- When diagnosing failures, include likely cause and next command to run

## Event domain rules

Always use the canonical event status/action model in:

- `references/event-lifecycle.md`
