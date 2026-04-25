# Post Authoring Checklist

Use this checklist for every new article to keep formatting and presentation consistent.

## Front Matter
- `title`: clear, publication-ready title
- `date`: explicit RFC3339 timestamp with timezone
- `draft`: `false` when ready to publish
- `hideSignature`: leave as `false` unless intentionally hiding the global signature

## Content Rules
- Do not add manual signature blocks at the bottom of posts.
- Keep article structure consistent (headings, sections, spacing).
- Use plain hyphens (`-`) rather than em/en dashes if following repository linting rules.

## Styling and Signature Source of Truth
- Site-wide typography/layout tweaks: `assets/css/extended/soft-reading.css`
- Global signature markup: `layouts/partials/article_signature.html`
- Global signature text: `hugo.toml` under `params.articleSignature`

## Local Preview
- `hugo server -D --baseURL "http://localhost:1313/articles/"`

## Pre-commit Enforcement
The repository hook validates staged post files and blocks commits when:
- manual signature text is present in article markdown
- front matter is missing `title`, `date`, or `draft`
- `date` is not RFC3339 with timezone
- em-dash/en-dash characters are present
