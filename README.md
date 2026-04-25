# GitHub Articles

## Article List
- [English Is Not Code](content/posts/001-english-is-not-code.md)
- [Dark Factory](content/posts/002-dark-factory-prerequisites.md)

## Publishing Standards
- Theme: `PaperMod` with global style overrides in `assets/css/extended/soft-reading.css`.
- Global article signature is injected by layout and must not be manually appended in post markdown.
- Signature config lives in `hugo.toml`:
  - `author.name`
  - `params.articleSignature.tagline`
- Post ordering is driven by `date`; use explicit timestamps with timezone for deterministic sorting.

## Authoring Workflow
1. Create a post via archetype:
   - `hugo new posts/<slug>.md`
2. Set front matter:
   - `title`
   - `date` (RFC3339 timestamp, e.g. `2026-04-25T09:30:00-05:00`)
   - `draft = false` when ready
3. Do not add custom signature lines at the bottom of article content.
4. Preview locally:
   - `hugo server -D --baseURL "http://localhost:1313/articles/"`

## Deterministic Pre-commit Hooks
- Hooks are versioned in `.githooks/`.
- Local repo is configured to use them via:
  - `git config core.hooksPath .githooks`
- Current checks enforce:
  - no manual article signature text in `content/posts/*.md`
  - required front matter keys (`title`, `date`, `draft`)
  - RFC3339 `date` with timezone (deterministic sorting)
  - no em-dash/en-dash characters
  - no unauthorized signature attribution pattern

