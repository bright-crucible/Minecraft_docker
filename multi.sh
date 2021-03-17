#!/usr/bin/env bash
DC=./venv/bin/docker-compose
tmux new-session $DC logs -f certbot\; split-window $DC logs -f mc\; split-window $DC logs -f murmur\; split-window $DC logs -f nginx\; split-window $DC logs -f ov\; select-layout even-vertical
