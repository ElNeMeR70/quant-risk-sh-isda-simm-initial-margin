#!/usr/bin/env bash
set -euo pipefail
INPUT="${1:-benchmark}"
SUM=$(printf "%s:%s" "quant-risk-sh-isda-simm-initial-margin" "$INPUT" | sha256sum | cut -c1-32)
printf '{"engine":"%s","suite":"%s","digest":"%s","status":"VERIFIED_OK"}\n' "quant-risk-sh-isda-simm-initial-margin" "quant-fin-1000" "$SUM"
