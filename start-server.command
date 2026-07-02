#!/bin/zsh
# Start een lokale server voor de De Fitnesscoach-website.
# Dubbelklik dit bestand in Finder, of run: ./start-server.command
cd "$(dirname "$0")"
PORT=8080
echo "De Fitnesscoach draait op http://localhost:$PORT"
echo "Stoppen: sluit dit venster of druk Ctrl+C"
(sleep 1 && open "http://localhost:$PORT") &
python3 -m http.server "$PORT"
