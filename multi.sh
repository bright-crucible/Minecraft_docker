#!/usr/bin/env bash
tmux new-session docker compose logs -f certbot\; split-window docker compose logs -f mc\; split-window docker compose logs -f murmur\; split-window docker compose logs -f nginx\; split-window docker compose logs -f ov\; select-layout even-vertical
