# Contributing to brainrot-docs_ethics

So you want to fix the brainrot ethics? Bold move. Here's how to not mess it up.

## Quick Start

1. **Fork** this repo
2. **Branch off** `main` with a descriptive name:
   ```bash
   git checkout -b ethics/fix-ai-guidelines
   ```
3. **Make your changes** (see what's broken below)
4. **Test locally** (yes, we have tests now)
5. **PR** with title `[ETHICS] your-fix-here`
6. **Wait for review** from R2 or maintainers

## What We're Looking For

### ✅ Good Contributions
- Fixing outdated ethics guidelines
- Adding new brainrot phenomena to the glossary
- Reporting ethical dilemmas in the Hall of Shame
- Improving clarity without corporate speak
- Adding real-world case studies

### ❌ Instant Closes
- Removing ethics for "meme freedom"
- Corporate lobbying language
- Uncredited stolen content
- Ragebait disguised as documentation
- AI-generated slop without disclosure

## PR Requirements

### Title Format
```
[ETHICS] <brief description>
```
Examples:
- `[ETHICS] Add TikTok algorithm disclosure requirement`
- `[ETHICS] Fix consent guidelines for deepfakes`
- `[ETHICS] Add Skibidi Toilet to glossary`

### Description Template
```markdown
## What changed
<one-liner>

## Why it matters
<ethical impact statement>

## Sources (if applicable)
<links, receipts, tea>

## Self-check
- [ ] I labeled any AI-generated content
- [ ] I credited all sources
- [ ] I didn't make anyone dumber
- [ ] I touched grass while writing this
```

## Running Tests

```bash
# Lint ethics documentation
./scripts/validate-ethics.sh

# Check for required keywords in PRs
./scripts/validate-ethics.sh --check-consent
```

## Code of Conduct

Be excellent to each other. The internet is already toxic enough.
See [`CODE_OF_CONDUCT.md`](./CODE_OF_CONDUCT.md) for the full vibe check.

## Questions?

Open an issue with `[QUESTION]` prefix. We'll beep-boop back at you.

---

**Last Updated:** 2026-04-01  
**Status:** Accepting contributions (ethics-approved)
