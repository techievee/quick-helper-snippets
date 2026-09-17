#!/usr/bin/env bash
# Point Claude Code at a local/self-hosted Anthropic-compatible LLM endpoint.
#
# Usage:
#   source claude-local-llm.sh        # uses the default key below
#   LLM_API_KEY=sk-xxxx source claude-local-llm.sh   # override the key
#
# The API key and auth token are abstracted into a single LLM_API_KEY
# variable — set it once, it feeds both ANTHROPIC_API_KEY and
# ANTHROPIC_AUTH_TOKEN.

# ---- Key / token (abstracted) -------------------------------------------
export LLM_API_KEY="${LLM_API_KEY:-sk-key}"

# ---- Endpoint -----------------------------------------------------------
export ANTHROPIC_BASE_URL="https://url"
export ANTHROPIC_API_KEY="$LLM_API_KEY"
export ANTHROPIC_AUTH_TOKEN="$LLM_API_KEY"

# ---- Models -------------------------------------------------------------
export ANTHROPIC_DEFAULT_SONNET_MODEL="Qwen/Qwen3.8-27B"
export ANTHROPIC_DEFAULT_HAIKU_MODEL="Qwen/Qwen3.8-27B"

# ---- Misc / traffic controls ---------------------------------------------
export CLAUDE_CODE_ATTRIBUTION_HEADER=0
export CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC=1
export CLAUDE_CODE_AUTO_COMPACT_WINDOW=450000
export CLAUDE_CODE_ENABLE_TELEMETRY=0
