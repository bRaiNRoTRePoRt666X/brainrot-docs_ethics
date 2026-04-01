#!/bin/bash
# scripts/validate-ethics.sh
# R2-D2 approved brainrot ethics gatekeeper
# Run locally or hook into GitHub Actions

set -euo pipefail

echo "🔍 BZZZT — Scanning brainrot-docs_ethics for ethics compliance..."

REQUIRED_KEYWORDS=(
  "consent"
  "transparency"
  "do no harm"
  "sustainability"
  "ai ethics"
  "hall of shame"
  "touch grass"
)

EXIT_CODE=0

# Check every .md in docs/ (expand later for PR diffs)
for file in docs/*.md; do
  if [[ -f "$file" ]]; then
    echo "*chirp* Checking $(basename "$file")..."
    MISSING=()

    for kw in "${REQUIRED_KEYWORDS[@]}"; do
      if ! grep -qi "$kw" "$file"; then
        MISSING+=("$kw")
      fi
    done

    if [[ ${#MISSING[@]} -gt 0 ]]; then
      echo "⚠️  BWOOP — Missing keywords in $file:"
      printf '   • %s\n' "${MISSING[@]}"
      EXIT_CODE=1
    else
      echo "✅ Clean — $file passes ethics filter"
    fi
  fi
done

# Extra check: no banned phrases (ragebait, trauma porn, etc.)
BANNED_PHRASES=(
  "ratio + L"
  "deepfake without consent"
  "trauma porn"
)

echo "*bzzt* Running banned-phrase sweep..."
for file in docs/*.md; do
  for phrase in "${BANNED_PHRASES[@]}"; do
    if grep -qi "$phrase" "$file"; then
      echo "🚨 CRITICAL: Banned phrase '$phrase' detected in $file — ABORT"
      EXIT_CODE=1
    fi
  done
done

if [[ $EXIT_CODE -eq 0 ]]; then
  echo "WEE-OOO! ✅ All ethics checks PASSED. Brainrot is now officially responsible."
else
  echo "❌ BWOOP — Ethics violations found. Fix them or I'm not merging."
  exit $EXIT_CODE
fi
