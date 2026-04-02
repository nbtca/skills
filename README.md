# Skills Workspace

This repository stores reusable skills for API and engineering workflows.

## Focus

- Primary API workflow: NBTCA repair ticket (event) management
- Production API base: `https://api.nbtca.space`
- Source of truth for endpoints: live OpenAPI (`/openapi.yaml` or `/openapi.json`)

## Available skill

- `skills/nbtca-api/SKILL.md`
  - Skill name: `nbtca-repair-ticket-api`
  - Purpose: create/query/update repair tickets (events), validate lifecycle actions, and troubleshoot auth/request issues

## Authentication (NBTCA)

- Personal access token env var: `NBTCA_PAT`
- PAT exchange script: `skills/nbtca-api/scripts/get_access_token_from_pat.sh`

## Notes

- Do not rely on repo `docs/` for endpoint accuracy.
- Always confirm request/response schema from live OpenAPI before calling protected routes.
