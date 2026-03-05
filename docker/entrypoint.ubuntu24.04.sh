#!/bin/bash
export VIRTUAL_ENV_DISABLE_PROMPT=1

. "$HOME/.cargo/env"

exec "$@"
